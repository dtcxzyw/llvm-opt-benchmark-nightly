Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet_format_group_box?download=true
inline.NumInlined: 264
inline.NumDeleted: 76
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.QtPrivate::QVersionTag" = type { ptr, i64 }
%struct.QMetaObject = type { %"struct.QMetaObject::Data" }
%"struct.QMetaObject::Data" = type { %"struct.QMetaObject::SuperData", ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.QMetaObject::SuperData" = type { ptr }
%class.QString = type { %struct.QArrayDataPointer }
%struct.QArrayDataPointer = type { ptr, ptr, i64 }
%class.QStyleOption = type { i32, i32, %class.QFlags.1, i32, %class.QRect, %class.QFontMetrics, %class.QPalette, ptr }
%class.QFlags.1 = type { i32 }
%class.QRect = type { i32, i32, i32, i32 }
%class.QFontMetrics = type { %class.QExplicitlySharedDataPointer }
%class.QExplicitlySharedDataPointer = type { ptr }
%class.QPalette = type <{ ptr, i32, [4 x i8] }>
%class.QSize = type { i32, i32 }
%"class.QMetaObject::Connection" = type { ptr }

$_ZN27Ui_PacketFormatTextGroupBox7setupUiEP9QGroupBox = comdat any

$_ZN27Ui_PacketFormatJSONGroupBox7setupUiEP9QGroupBox = comdat any

$_ZN27Ui_PacketFormatTextGroupBox13retranslateUiEP9QGroupBox = comdat any

$_ZN27Ui_PacketFormatJSONGroupBox13retranslateUiEP9QGroupBox = comdat any

$_ZN9QtPrivate11QSlotObjectIM20PacketFormatGroupBoxFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$qt_version_tag_use = comdat any

@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@.str = private unnamed_addr constant [14 x i8] c"Packet Format\00", align 1
@_ZTV20PacketFormatGroupBox = external constant { [57 x ptr], [10 x ptr] }, align 8
@_ZTV25PacketFormatBlankGroupBox = external constant { [57 x ptr], [10 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"The selected format has no options\00", align 1
@_ZTV24PacketFormatTextGroupBox = external constant { [57 x ptr], [10 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [34 x i16] [i16 81, i16 67, i16 104, i16 101, i16 99, i16 107, i16 66, i16 111, i16 120, i16 32, i16 123, i16 32, i16 32, i16 112, i16 97, i16 100, i16 100, i16 105, i16 110, i16 103, i16 45, i16 108, i16 101, i16 102, i16 116, i16 58, i16 32, i16 37, i16 49, i16 112, i16 120, i16 59, i16 125, i16 0], align 2
@.str.3 = private unnamed_addr constant [37 x i16] [i16 81, i16 82, i16 97, i16 100, i16 105, i16 111, i16 66, i16 117, i16 116, i16 116, i16 111, i16 110, i16 32, i16 123, i16 32, i16 32, i16 112, i16 97, i16 100, i16 100, i16 105, i16 110, i16 103, i16 45, i16 108, i16 101, i16 102, i16 116, i16 58, i16 32, i16 37, i16 49, i16 112, i16 120, i16 59, i16 125, i16 0], align 2
@_ZTV24PacketFormatJSONGroupBox = external constant { [57 x ptr], [10 x ptr] }, align 8
@_ZN25PacketFormatBlankGroupBox16staticMetaObjectE = external global %struct.QMetaObject, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"PacketFormatTextGroupBox\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"verticalLayout\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"summaryCheckBox\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"includeColumnHeadingsCheckBox\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"detailsCheckBox\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"allCollapsedButton\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"asDisplayedButton\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"allExpandedButton\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"bytesCheckBox\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"includeDataSourcesCheckBox\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"timestampCheckBox\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"GroupBox\00", align 1
@.str.16 = private unnamed_addr constant [88 x i8] c"<html><head/><body><p>Packet summary lines similar to the packet list</p></body></html>\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Summary line\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Include column headings\00", align 1
@.str.19 = private unnamed_addr constant [84 x i8] c"<html><head/><body><p>Packet details similar to the protocol tree</p></body></html>\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Details:\00", align 1
@.str.21 = private unnamed_addr constant [82 x i8] c"<html><head/><body><p>Export only top-level packet detail items</p></body></html>\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"All co&llapsed\00", align 1
@.str.23 = private unnamed_addr constant [108 x i8] c"<html><head/><body><p>Expand and collapse packet details as they are currently displayed.</p></body></html>\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"As displa&yed\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"<html><head/><body><p>Export all packet detail items</p></body></html>\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"All e&xpanded\00", align 1
@.str.27 = private unnamed_addr constant [109 x i8] c"<html><head/><body><p>Export a hexdump of the packet data similar to the packet bytes view</p></body></html>\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Bytes\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Include secondary data sources\00", align 1
@.str.30 = private unnamed_addr constant [148 x i8] c"<html><head/><body><p>Generate hexdumps for secondary data sources like reassembled or decrypted buffers in addition to the frame</p></body></html>\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Include timestamp preamble\00", align 1
@.str.32 = private unnamed_addr constant [141 x i8] c"<html><head/><body><p>Include each frame timestamp immediately before its hex dump, using the current time display format.</p></body></html>\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"PacketFormatJSONGroupBox\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"dupKeysCheckBox\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"valuesCheckBox\00", align 1
@_ZTV11QSpacerItem = external constant { [19 x ptr] }, align 8
@.str.36 = private unnamed_addr constant [126 x i8] c"<html><head/><body><p>Avoid duplicate keys in the JSON by using a list for sibling fields with the same key</p></body></html>\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"No duplicate keys\00", align 1
@.str.38 = private unnamed_addr constant [101 x i8] c"<html><head/><body><p>Export a name/value pair for each field with the field value</p></body></html>\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"Values\00", align 1
@.str.40 = private unnamed_addr constant [118 x i8] c"<html><head/><body><p>Export a name/value pair for each field with the hex bytes of its packet data</p></body></html>\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Raw Bytes\00", align 1
@_ZN15QAbstractButton16staticMetaObjectE = external global %struct.QMetaObject, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN25PacketFormatBlankGroupBoxC1EP7QWidget = unnamed_addr alias void (ptr, ptr), ptr @_ZN25PacketFormatBlankGroupBoxC2EP7QWidget
@_ZN24PacketFormatTextGroupBoxC1EP7QWidget = unnamed_addr alias void (ptr, ptr), ptr @_ZN24PacketFormatTextGroupBoxC2EP7QWidget
@_ZN24PacketFormatTextGroupBoxD1Ev = unnamed_addr alias void (ptr), ptr @_ZN24PacketFormatTextGroupBoxD2Ev
@_ZN24PacketFormatJSONGroupBoxC1EP7QWidget = unnamed_addr alias void (ptr, ptr), ptr @_ZN24PacketFormatJSONGroupBoxC2EP7QWidget
@_ZN24PacketFormatJSONGroupBoxD1Ev = unnamed_addr alias void (ptr), ptr @_ZN24PacketFormatJSONGroupBoxD2Ev

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN20PacketFormatGroupBoxC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 16            ; 5 uses
  %3 = alloca %class.QString, align 16            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 13, ptr nonnull @.str)
  %i.a = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.a, ptr %3, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 16
  store i64 %i.d, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  invoke void @_ZN9QGroupBoxC2ERK7QStringP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 16               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.f, 1
  br i1 %.not.i.i, label %bb.c, label %_ZN7QStringD2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.g = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.g, i64 noundef 2, i64 noundef 8) #9
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.b, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  store ptr getelementptr inbounds nuw inrange(-16, 440) (i8, ptr @_ZTV20PacketFormatGroupBox, i64 16), ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV20PacketFormatGroupBox, i64 472), ptr %i.h, align 8
  invoke void @_ZN9QGroupBox7setFlatEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN7QStringD2Ev.exit
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 16               ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i5, label %_ZN7QStringD2Ev.exit8, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6:     ; preds = %bb.e
  %i.k = atomicrmw sub ptr %i.j, i32 1 acq_rel, align 4
  %.not.i.i7 = icmp eq i32 %i.k, 1
  br i1 %.not.i.i7, label %bb.f, label %_ZN7QStringD2Ev.exit8

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6
  %i.l = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 2, i64 noundef 8) #9
  br label %_ZN7QStringD2Ev.exit8

_ZN7QStringD2Ev.exit8:                            ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.h

bb.g:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9QGroupBoxD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40) %0) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7QStringD2Ev.exit8
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.i, %_ZN7QStringD2Ev.exit8 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QGroupBoxC2ERK7QStringP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QGroupBox7setFlatEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK20PacketFormatGroupBox7isValidEv(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(40) %0) unnamed_addr #3 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN25PacketFormatBlankGroupBoxC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  tail call void @_ZN20PacketFormatGroupBoxC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 440) (i8, ptr @_ZTV25PacketFormatBlankGroupBox, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV25PacketFormatBlankGroupBox, i64 472), ptr %i.a, align 8
  %i.b = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #10
          to label %bb.b unwind label %bb.l       ; 5 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN11QVBoxLayoutC1Ev(ptr noundef align 8 dereferenceable_or_null(28) %i.b)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #10
          to label %bb.d unwind label %bb.l       ; 4 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN25PacketFormatBlankGroupBox16staticMetaObjectE, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef -1)
          to label %_ZN25PacketFormatBlankGroupBox2trEPKcS1_i.exit unwind label %bb.m

_ZN25PacketFormatBlankGroupBox2trEPKcS1_i.exit:   ; preds = %bb.d
  invoke void @_ZN6QLabelC1ERK7QStringP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef null, i32 0)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZN25PacketFormatBlankGroupBox2trEPKcS1_i.exit
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.e
  %i.e = atomicrmw sub ptr %i.d, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN7QStringD2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.f = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.f, i64 noundef 2, i64 noundef 8) #9
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  invoke void @_ZN6QLabel11setWordWrapEb(ptr noundef align 8 dereferenceable_or_null(40) %i.c, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZN7QStringD2Ev.exit
  invoke void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28) %i.b, ptr noundef %i.c, i32 noundef 0, i32 0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN10QBoxLayout10addStretchEi(ptr noundef align 8 dereferenceable_or_null(28) %i.b, i32 noundef 1)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7QWidget9setLayoutEP7QLayout(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %i.b)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  ret void

bb.k:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef 32) #11
  br label %bb.p

bb.l:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %_ZN7QStringD2Ev.exit, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit19

bb.n:                                             ; preds = %_ZN25PacketFormatBlankGroupBox2trEPKcS1_i.exit
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i16, label %_ZN7QStringD2Ev.exit19, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i17

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i17:    ; preds = %bb.n
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %.not.i.i18 = icmp eq i32 %i.l, 1
  br i1 %.not.i.i18, label %bb.o, label %_ZN7QStringD2Ev.exit19

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i17
  %i.m = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.m, i64 noundef 2, i64 noundef 8) #9
  br label %_ZN7QStringD2Ev.exit19

_ZN7QStringD2Ev.exit19:                           ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i17, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.i, %bb.m ], [ %i.j, %bb.n ], [ %i.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i17 ], [ %i.j, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef 40) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %_ZN7QStringD2Ev.exit19, %bb.k
  %.pn13.pn = phi { ptr, i32 } [ %.pn, %_ZN7QStringD2Ev.exit19 ], [ %i.g, %bb.k ], [ %i.h, %bb.l ]
  call void @_ZN9QGroupBoxD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40) %0) #9
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: nobuiltin null_pointer_is_valid allocsize(0)
declare noundef ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QVBoxLayoutC1Ev(ptr noundef align 8 dereferenceable_or_null(28)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QLabelC1ERK7QStringP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24), ptr noundef, i32) unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QLabel11setWordWrapEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28), ptr noundef, i32 noundef, i32) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QBoxLayout10addStretchEi(ptr noundef align 8 dereferenceable_or_null(28), i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget9setLayoutEP7QLayout(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN9QGroupBoxD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40)) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define void @_ZN25PacketFormatBlankGroupBox15updatePrintArgsER12print_args_t(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(40) %0, ptr nofree noundef readnone align 8 captures(none) dereferenceable(288) %1) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN24PacketFormatTextGroupBoxC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QStyleOption, align 8        ; 7 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 8             ; 11 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QString, align 8             ; 11 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  %8 = alloca %class.QString, align 8             ; 11 uses
  %9 = alloca %class.QString, align 8             ; 9 uses
  %10 = alloca %class.QString, align 8            ; 11 uses
  %11 = alloca %class.QString, align 8            ; 9 uses
  %12 = alloca %class.QString, align 8            ; 11 uses
  %13 = alloca %class.QString, align 8            ; 9 uses
  %14 = alloca %class.QString, align 8            ; 11 uses
  tail call void @_ZN20PacketFormatGroupBoxC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 440) (i8, ptr @_ZTV24PacketFormatTextGroupBox, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV24PacketFormatTextGroupBox, i64 472), ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 40         ; 8 uses
  %i.c = invoke noalias noundef dereferenceable_or_null(80) ptr @_Znwm(i64 noundef 80) #10
          to label %bb.b unwind label %bb.y       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.b, align 8
  invoke void @_ZN27Ui_PacketFormatTextGroupBox7setupUiEP9QGroupBox(ptr noundef align 8 dereferenceable_or_null(80) %i.c, ptr noundef %0)
          to label %bb.c unwind label %bb.y

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  invoke void @_ZN12QStyleOptionC1Eii(ptr noundef nonnull align 8 dereferenceable_or_null(64) %2, i32 noundef 1, i32 noundef 0)
          to label %bb.d unwind label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef ptr @_ZNK7QWidget5styleEv(ptr noundef align 8 dereferenceable_or_null(40) %i.f)
          to label %bb.e unwind label %bb.aa      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke { i64, i64 } %i.j(ptr noundef align 8 dereferenceable_or_null(16) %i.g, i32 noundef 3, ptr noundef nonnull %2, ptr noundef null)
          to label %bb.f unwind label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr null, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 33, ptr %i.q, align 8
  %i.r = shl i64 %i.l, 32
  %i.s = ashr exact i64 %i.r, 32                  ; 6 uses
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, i64 noundef %i.s, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argEiii5QChar.exit unwind label %bb.ab

_ZNK7QString3argEiii5QChar.exit:                  ; preds = %bb.f
  invoke void @_ZN7QWidget13setStyleSheetERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.g unwind label %bb.ac

bb.g:                                             ; preds = %_ZNK7QString3argEiii5QChar.exit
  %i.t = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.g
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.u, 1
  br i1 %.not.i.i, label %bb.h, label %_ZN7QStringD2Ev.exit

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.v = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.v, i64 noundef 2, i64 noundef 8) #9
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.h
  %i.w = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i32, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i33

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i33:    ; preds = %_ZN7QStringD2Ev.exit
  %i.x = atomicrmw sub ptr %i.w, i32 1 acq_rel, align 4
  %.not.i.i34 = icmp eq i32 %i.x, 1
  br i1 %.not.i.i34, label %bb.i, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i33
  %i.y = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.y, i64 noundef 2, i64 noundef 8) #9
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i33, %_ZN7QStringD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr null, ptr %6, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.3, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 36, ptr %i.ad, align 8
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i64 noundef %i.s, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argEiii5QChar.exit37 unwind label %bb.af

_ZNK7QString3argEiii5QChar.exit37:                ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit
  invoke void @_ZN7QWidget13setStyleSheetERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %_ZNK7QString3argEiii5QChar.exit37
  %i.ae = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i38, label %_ZN7QStringD2Ev.exit41, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39:    ; preds = %bb.j
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %.not.i.i40 = icmp eq i32 %i.af, 1
  br i1 %.not.i.i40, label %bb.k, label %_ZN7QStringD2Ev.exit41

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39
  %i.ag = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ag, i64 noundef 2, i64 noundef 8) #9
  br label %_ZN7QStringD2Ev.exit41

_ZN7QStringD2Ev.exit41:                           ; preds = %bb.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39, %bb.k
  %i.ah = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i42, label %_ZN17QArrayDataPointerIDsED2Ev.exit49, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43:    ; preds = %_ZN7QStringD2Ev.exit41
  %i.ai = atomicrmw sub ptr %i.ah, i32 1 acq_rel, align 4
  %.not.i.i44 = icmp eq i32 %i.ai, 1
  br i1 %.not.i.i44, label %bb.l, label %_ZN17QArrayDataPointerIDsED2Ev.exit49

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43
  %i.aj = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aj, i64 noundef 2, i64 noundef 8) #9
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit49

_ZN17QArrayDataPointerIDsED2Ev.exit49:            ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43, %_ZN7QStringD2Ev.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store ptr null, ptr %8, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.3, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 36, ptr %i.ao, align 8
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i64 noundef %i.s, i32 noundef 0, i32 noundef 10, i16 32)
end_hunk_0
