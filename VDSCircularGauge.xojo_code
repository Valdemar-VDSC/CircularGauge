#tag Class
Protected Class VDSCircularGauge
Inherits DesktopCanvas
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  Var x,y,size As Double
		  Const Pi=3.14159265358979323846264338327950
		  
		  // Find the center of the graphic and the maximum square size
		  size=Min(g.Width,g.Height)
		  x=g.Width/2
		  y=g.Height/2
		  
		  
		  // Draw the gauge
		  
		  var rotation As Double = 270*Pi/180
		  Var arcAngle As Double = Min(GaugeValue*3.6*Pi/180,2*Pi-.0000001)
		  Select case Form
		    
		  case GaugeForm.Inside
		    // Draw Circle
		    g.DrawingColor= CircleColor
		    g.PenSize = CircleSize
		    var diametre As Integer = size '- (GaugeSize) - (CircleSize) - if(GaugeSize>CircleSize, GaugeSize-CircleSize, -(CircleSize-GaugeSize))
		    g.DrawOval(x -(diametre/2), y-(diametre/2), diametre, diametre)
		    
		    // Draw Inner Circle
		    if HasBackground then
		      // Sets the color of the inner circle
		      g.DrawingColor= InnerColor
		      // Draw the Inner Circle
		      g.FillOval(x -(diametre/2)+CircleSize, y-(diametre/2)+CircleSize, diametre-CircleSize*2, diametre-CircleSize*2)
		    end if
		    
		    // Draw the Gauge
		    g.PenSize = 1
		    var center As Double 
		    // Sets the color of the gauge
		    g.DrawingColor=GaugeColor
		    
		    for i As double = 1 to GaugeSize*2 Step 1
		      Var arc As New GraphicsPath
		      center = Min(size/2, x)-(i/2)-CircleSize
		      arc.AddArc (x,y, center, rotation, arcAngle+rotation, False)
		      g.DrawPath(arc)
		    next
		  Case GaugeForm.Outside
		    g.PenSize = 1
		    var center As Double 
		    
		    // Sets the color of the gauge
		    g.DrawingColor=GaugeColor
		    
		    for i As double = 1 to GaugeSize*2 Step 1
		      Var arc As New GraphicsPath
		      center = Min(size/2, x)-(i/2)
		      arc.AddArc (x,y, center, rotation, arcAngle+rotation, False)
		      g.DrawPath(arc)
		    next
		    // Draw Circle
		    g.DrawingColor= CircleColor
		    g.PenSize = CircleSize
		    var diametre As Integer = size - (GaugeSize) - (CircleSize) - if(GaugeSize>CircleSize, GaugeSize-CircleSize, -(CircleSize-GaugeSize))
		    g.DrawOval(x -(diametre/2), y-(diametre/2), diametre, diametre)
		    
		    // Draw Inner Circle
		    if HasBackground then
		      // Sets the color of the inner circle
		      g.DrawingColor= InnerColor
		      // Draw the Inner Circle
		      g.FillOval(x -(diametre/2)+CircleSize, y-(diametre/2)+CircleSize, diametre-CircleSize*2, diametre-CircleSize*2)
		    end if
		    
		  Case GaugeForm.OnCircle
		    g.PenSize = 1
		    var center As Double 
		    for i As double = 1 to GaugeSize*2 Step 1
		      
		      Var arc As New GraphicsPath
		      center = Min(size/2, x)-(i/2)
		      g.DrawingColor=GaugeColor
		      arc.AddArc (x,y, center, rotation, arcAngle+rotation, False)
		      
		      g.DrawPath(arc)
		      
		    next
		    if GaugeValue<>100 then
		      for i As double = 1 to GaugeSize*2 Step 1
		        
		        Var arc As New GraphicsPath
		        center = Min(size/2, x)-(i/2)
		        
		        g.DrawingColor= CircleColor
		        arc.AddArc (x,y, center, rotation, arcAngle+rotation, True)
		        
		        g.DrawPath(arc)
		        
		      next
		    end if
		    // Draw Inner Circle
		    var diametre As Integer = size - GaugeSize
		    if HasBackground then
		      // Sets the color of the inner circle
		      g.DrawingColor= InnerColor
		      // Draw the Inner Circle
		      g.FillOval(x -(diametre/2)+CircleSize, y-(diametre/2)+CircleSize, diametre-CircleSize*2, diametre-CircleSize*2)
		    end if
		  End Select
		  
		  
		  // Finding the maximum displayable size for 100%
		  g.Bold=True
		  g.FontSize=150
		  Var w As Double
		  Do
		    g.FontSize=g.FontSize-1
		    w=g.TextWidth("100%")
		  Loop Until w<size-3*(CircleSize+GaugeSize) Or g.FontSize<8
		  
		  // Sets text color
		  g.DrawingColor= TextColor 'Color.RGB(102,102,102)
		  
		  // Set text position
		  Var s As String = GaugeValue.ToString+"%"
		  w=g.TextWidth(s)
		  x=(g.Width-w)/2
		  y=g.Height/2+g.FontAscent/3
		  g.DrawText(s,x,y)
		  
		End Sub
	#tag EndEvent


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mCircleColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCircleColor = value
			  
			  Refresh
			End Set
		#tag EndSetter
		CircleColor As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		CircleSize As Integer = 3
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mForm
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mForm = value
			  
			  Refresh
			End Set
		#tag EndSetter
		Form As GaugeForm
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mGaugeColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mGaugeColor = value
			  
			  Refresh
			End Set
		#tag EndSetter
		GaugeColor As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		GaugeSize As Integer = 5
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mGaugeValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mGaugeValue = value
			  
			  Self.Refresh
			End Set
		#tag EndSetter
		GaugeValue As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		HasBackground As Boolean = True
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mInnerColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInnerColor = value
			  
			  Refresh
			End Set
		#tag EndSetter
		InnerColor As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mCircleColor As Color = &cFFAAAA10
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mForm As GaugeForm
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mGaugeColor As Color = &cFFAAAA10
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mGaugeValue As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInnerColor As Color = &cFFAAAA10
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextColor As Color = &c6E6E6E
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mTextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTextColor = value
			  
			  Refresh
			End Set
		#tag EndSetter
		TextColor As Color
	#tag EndComputedProperty


	#tag Enum, Name = GaugeForm, Flags = &h0
		Inside
		  Outside
		OnCircle
	#tag EndEnum

	#tag Enum, Name = GaugeType, Type = Integer, Flags = &h0
		Text
		  Percent
		Time
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GaugeValue"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GaugeColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cFF6E6E"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CircleColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cC0C0C0"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InnerColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cC0C0FF"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GaugeSize"
			Visible=true
			Group="Behavior"
			InitialValue="6"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CircleSize"
			Visible=true
			Group="Behavior"
			InitialValue="3"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c6E6E6E"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Form"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="GaugeForm"
			EditorType="Enum"
			#tag EnumValues
				"0 - Inside"
				"1 - Outside"
				"2 - OnCircle"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
