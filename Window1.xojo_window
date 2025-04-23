#tag DesktopWindow
Begin DesktopWindow Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   HasTitleBar     =   True
   Height          =   544
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   2124566527
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "VDS Circular Gauge"
   Type            =   0
   Visible         =   True
   Width           =   664
   Begin VDSCircularGauge VDSCircularGauge1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   5
      Enabled         =   True
      Form            =   0
      GaugeColor      =   &c63AAFE00
      GaugeSize       =   20
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   200
      Index           =   -2147483648
      InnerColor      =   &c00000000
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   62
      Transparent     =   True
      Visible         =   True
      Width           =   200
   End
   Begin DesktopSlider Slider1
      AllowAutoDeactivate=   True
      AllowLiveScrolling=   True
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      Left            =   20
      LineStep        =   1
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumValue    =   100
      MinimumValue    =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TickMarkStyle   =   0
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Value           =   30
      Visible         =   True
      Width           =   243
   End
   Begin VDSCircularGauge VDSCircularGauge2
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   10
      Enabled         =   True
      Form            =   1
      GaugeColor      =   &cFF6E6E00
      GaugeSize       =   20
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   200
      Index           =   -2147483648
      InnerColor      =   &cC0C0FF00
      Left            =   232
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   62
      Transparent     =   True
      Visible         =   True
      Width           =   200
   End
   Begin VDSCircularGauge VDSCircularGauge3
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   10
      Enabled         =   True
      Form            =   2
      GaugeColor      =   &cFF6E6E00
      GaugeSize       =   20
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   200
      Index           =   -2147483648
      InnerColor      =   &cC0C0FF00
      Left            =   444
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   62
      Transparent     =   True
      Visible         =   True
      Width           =   200
   End
   Begin VDSCircularGauge VDSCircularGauge100
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   10
      Enabled         =   True
      Form            =   0
      GaugeColor      =   &cFF6E6E00
      GaugeSize       =   20
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   200
      Index           =   -2147483648
      InnerColor      =   &cC0C0FF00
      Left            =   444
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   274
      Transparent     =   True
      Visible         =   True
      Width           =   200
   End
   Begin Timer Timer1
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   1000
      RunMode         =   2
      Scope           =   2
      TabPanelIndex   =   0
   End
   Begin VDSCircularGauge VDSCircularGauge4
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   3
      Enabled         =   True
      Form            =   0
      GaugeColor      =   &cFF6E6E00
      GaugeSize       =   6
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   100
      Index           =   -2147483648
      InnerColor      =   &cC0C0FF00
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   274
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin VDSCircularGauge VDSCircularGauge5
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   3
      Enabled         =   True
      Form            =   1
      GaugeColor      =   &cFF6E6E00
      GaugeSize       =   6
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   100
      Index           =   -2147483648
      InnerColor      =   &cC0C0FF00
      Left            =   132
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   274
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin VDSCircularGauge VDSCircularGauge6
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   3
      Enabled         =   True
      Form            =   2
      GaugeColor      =   &cFF6E6E00
      GaugeSize       =   6
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   100
      Index           =   -2147483648
      InnerColor      =   &cC0C0FF00
      Left            =   244
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   274
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin VDSCircularGauge VDSCircularGauge7
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   3
      Enabled         =   True
      Form            =   0
      GaugeColor      =   &cFF6E6E00
      GaugeSize       =   6
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   50
      Index           =   -2147483648
      InnerColor      =   &cC0C0FF00
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   386
      Transparent     =   True
      Visible         =   True
      Width           =   50
   End
   Begin VDSCircularGauge VDSCircularGauge8
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   3
      Enabled         =   True
      Form            =   1
      GaugeColor      =   &cFF6E6E00
      GaugeSize       =   6
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   50
      Index           =   -2147483648
      InnerColor      =   &cC0C0FF00
      Left            =   82
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   386
      Transparent     =   True
      Visible         =   True
      Width           =   50
   End
   Begin VDSCircularGauge VDSCircularGauge9
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      CircleColor     =   &cC0C0C000
      CircleSize      =   3
      Enabled         =   True
      Form            =   2
      GaugeColor      =   &cFF6E6E00
      GaugeSize       =   6
      GaugeValue      =   0
      HasBackground   =   True
      Height          =   50
      Index           =   -2147483648
      InnerColor      =   &cC0C0FF00
      Left            =   144
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c6E6E6E00
      Tooltip         =   ""
      Top             =   386
      Transparent     =   True
      Visible         =   True
      Width           =   50
   End
   Begin Label lblAuthor
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   10.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   244
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Created by Valdemar De SOUSA"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   492
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   176
   End
   Begin DesktopLabel lblWebsite
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   10.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      Italic          =   False
      Left            =   244
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "www.vdsc.eu"
      TextAlignment   =   2
      TextColor       =   cLink
      Tooltip         =   ""
      Top             =   508
      Transparent     =   False
      Underline       =   True
      Visible         =   True
      Width           =   176
   End
End
#tag EndDesktopWindow

#tag WindowCode
#tag EndWindowCode

#tag Events Slider1
	#tag Event
		Sub ValueChanged()
		  Self.Refresh
		  
		  VDSCircularGauge1.GaugeValue = me.Value
		  VDSCircularGauge2.GaugeValue = me.Value
		  VDSCircularGauge3.GaugeValue = me.Value
		  VDSCircularGauge4.GaugeValue = me.Value
		  VDSCircularGauge5.GaugeValue = me.Value
		  VDSCircularGauge6.GaugeValue = me.Value
		  VDSCircularGauge7.GaugeValue = me.Value
		  VDSCircularGauge8.GaugeValue = me.Value
		  VDSCircularGauge9.GaugeValue = me.Value
		  // VDSCircularGauge100.GaugeValue = me.Value
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Value = 30
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  if VDSCircularGauge100.GaugeValue>60 then 
		    VDSCircularGauge100.GaugeValue = 0
		  Else
		    VDSCircularGauge100.GaugeValue = VDSCircularGauge100.GaugeValue+1
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblWebsite
	#tag Event
		Sub MouseEnter()
		  me.MouseCursor = System.Cursors.FingerPointer
		  me.TextColor = cLinkActive
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  me.TextColor = cLink
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #pragma unused x
		  #pragma unused y
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  if x > 0 and x < me.Width and y > 0 and y < me.Height then
		    System.GotoURL("https://www.vdsc.eu")
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="HasTitleBar"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
