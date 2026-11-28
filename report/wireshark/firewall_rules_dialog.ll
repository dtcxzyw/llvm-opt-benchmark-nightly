Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/firewall_rules_dialog?download=true
inline.NumInlined: 314
inline.NumDeleted: 129
begin_hunk_0_@_ZN7QStringD2Ev:bb.a
bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.c, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK16QDialogButtonBox6buttonENS_14StandardButtonE(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractButton7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11CaptureFile8fileNameEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(48)) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN11CaptureFile10packetInfoEv(ptr noundef align 8 dereferenceable_or_null(48)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @firewall_product_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @firewall_product_name(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32)) unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QComboBox15setCurrentIndexEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QPushButton10setDefaultEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN15WiresharkDialogD2Ev(ptr noundef align 8 dead_on_return(141) dereferenceable_or_null(141) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 504) (i8, ptr @_ZTV15WiresharkDialog, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV15WiresharkDialog, i64 536), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5QListIPvED2Ev.exit, label %_ZN17QArrayDataPointerIPvE5derefEv.exit.i.i

_ZN17QArrayDataPointerIPvE5derefEv.exit.i.i:      ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.d, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN5QListIPvED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIPvE5derefEv.exit.i.i
  %i.e = load ptr, ptr %i.b, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.e, i64 noundef 8, i64 noundef 8) #14
  br label %_ZN5QListIPvED2Ev.exit

_ZN5QListIPvED2Ev.exit:                           ; preds = %bb.a, %_ZN17QArrayDataPointerIPvE5derefEv.exit.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i1, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZN5QListIPvED2Ev.exit
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %.not.i.i2 = icmp eq i32 %i.h, 1
  br i1 %.not.i.i2, label %bb.c, label %_ZN7QStringD2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.i = load ptr, ptr %i.f, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %_ZN5QListIPvED2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.c
  tail call void @_ZN19GeometryStateDialogD2Ev(ptr noundef align 8 dead_on_return(72) dereferenceable_or_null(72) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN19FirewallRulesDialogD2Ev(ptr noundef align 8 dead_on_return(300) dereferenceable_or_null(300) initializes((0, 8), (16, 24)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 504) (i8, ptr @_ZTV19FirewallRulesDialog, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV19FirewallRulesDialog, i64 536), ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 80) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.h = load ptr, ptr %i.e, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.h, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 504) (i8, ptr @_ZTV15WiresharkDialog, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV15WiresharkDialog, i64 536), ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN5QListIPvED2Ev.exit.i, label %_ZN17QArrayDataPointerIPvE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIPvE5derefEv.exit.i.i.i:    ; preds = %_ZN7QStringD2Ev.exit
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4
  %.not.i.i.i1 = icmp eq i32 %i.k, 1
  br i1 %.not.i.i.i1, label %bb.e, label %_ZN5QListIPvED2Ev.exit.i

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIPvE5derefEv.exit.i.i.i
  %i.l = load ptr, ptr %i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 8, i64 noundef 8) #14
  br label %_ZN5QListIPvED2Ev.exit.i

_ZN5QListIPvED2Ev.exit.i:                         ; preds = %bb.e, %_ZN17QArrayDataPointerIPvE5derefEv.exit.i.i.i, %_ZN7QStringD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i, label %_ZN15WiresharkDialogD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %_ZN5QListIPvED2Ev.exit.i
  %i.o = atomicrmw add ptr %i.n, i32 -1 acq_rel, align 4
  %.not.i.i2.i = icmp eq i32 %i.o, 1
  br i1 %.not.i.i2.i, label %bb.f, label %_ZN15WiresharkDialogD2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.p = load ptr, ptr %i.m, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN15WiresharkDialogD2Ev.exit

_ZN15WiresharkDialogD2Ev.exit:                    ; preds = %_ZN5QListIPvED2Ev.exit.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.f
  tail call void @_ZN19GeometryStateDialogD2Ev(ptr noundef align 8 dead_on_return(72) dereferenceable_or_null(141) %0) #14
  ret void
}

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn16_N19FirewallRulesDialogD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN19FirewallRulesDialogD1Ev(ptr noundef align 8 dead_on_return(300) dereferenceable_or_null(300) %i.a) #14
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN19FirewallRulesDialogD0Ev(ptr noundef align 8 dereferenceable_or_null(300) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN19FirewallRulesDialogD1Ev(ptr noundef align 8 dead_on_return(300) dereferenceable_or_null(300) %0) #14
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 304) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn16_N19FirewallRulesDialogD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN19FirewallRulesDialogD1Ev(ptr noundef align 8 dead_on_return(300) dereferenceable_or_null(300) %i.a) #14
  tail call void @_ZdlPvm(ptr noundef align 8 dereferenceable_or_null(300) %i.a, i64 noundef 304) #16
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19FirewallRulesDialog13updateWidgetsEv(ptr noundef align 8 dereferenceable_or_null(300) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 16            ; 5 uses
  %2 = alloca %class.QString, align 16            ; 5 uses
  %3 = alloca %class.QString, align 16            ; 5 uses
  %4 = alloca %class.QString, align 16            ; 10 uses
  %5 = alloca %class.QString, align 16            ; 10 uses
  %6 = alloca %class.QString, align 16            ; 14 uses
  %7 = alloca %class.QString, align 16            ; 8 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 8             ; 9 uses
  %10 = alloca %class.QString, align 8            ; 9 uses
  %11 = alloca %class.QString, align 8            ; 11 uses
  %12 = alloca %class.QString, align 16           ; 10 uses
  %13 = alloca %class.QString, align 8            ; 12 uses
  %14 = alloca %class.QString, align 8            ; 6 uses
  %15 = alloca %class.QString, align 8            ; 6 uses
  %16 = alloca %class.QString, align 8            ; 6 uses
  %17 = alloca %class.QString, align 8            ; 6 uses
  %18 = alloca %class.QString, align 8            ; 6 uses
  %19 = alloca %class.QString, align 8            ; 6 uses
  %20 = alloca %class.QString, align 8            ; 6 uses
  %21 = alloca %class.QString, align 8            ; 6 uses
  tail call void @_ZN15WiresharkDialog13updateWidgetsEv(ptr noundef align 8 dereferenceable_or_null(141) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr i8, ptr %0, i64 184        ; 8 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call ptr @firewall_product_comment_prefix(i64 noundef %i.b) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7QStringC2EPKc.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #14
  br label %_ZN7QStringC2EPKc.exit

_ZN7QStringC2EPKc.exit:                           ; preds = %bb.a, %.split.i.i
  %.sink5.i.i = phi i64 [ %i.d, %.split.i.i ], [ 0, %bb.a ]
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 %.sink5.i.i, ptr %i.c)
  %i.e = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.e, ptr %4, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i64, ptr %i.g, align 16
  store i64 %i.h, ptr %i.f, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.i = load i64, ptr %i.a, align 8
  %i.j = invoke ptr @firewall_product_rule_hint(i64 noundef %i.i)
          to label %bb.b unwind label %bb.r       ; 3 uses

bb.b:                                             ; preds = %_ZN7QStringC2EPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.not.i.i49 = icmp eq ptr %i.j, null
  br i1 %.not.i.i49, label %_ZN7QStringD2Ev.exit.i, label %.split.i.i50

.split.i.i50:                                     ; preds = %bb.b
  %i.k = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.j) #14
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %.split.i.i50, %bb.b
  %.sink5.i.i51 = phi i64 [ %i.k, %.split.i.i50 ], [ 0, %bb.b ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 %.sink5.i.i51, ptr %i.j)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.l = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.l, ptr %5, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 16
  store i64 %i.o, ptr %i.m, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr null, ptr %11, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.3, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 30, ptr %i.q, align 8
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %10, ptr noundef nonnull align 8 dereferenceable_or_null(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0, i16 32)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.r = load i64, ptr %i.a, align 8
  %i.s = invoke ptr @firewall_product_name(i64 noundef %i.r)
          to label %bb.e unwind label %bb.t       ; 3 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %.not.i.i53 = icmp eq ptr %i.s, null
  br i1 %.not.i.i53, label %_ZN7QStringD2Ev.exit.i55, label %.split.i.i54

.split.i.i54:                                     ; preds = %bb.e
  %i.t = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.s) #14
  br label %_ZN7QStringD2Ev.exit.i55

_ZN7QStringD2Ev.exit.i55:                         ; preds = %.split.i.i54, %bb.e
  %.sink5.i.i56 = phi i64 [ %i.t, %.split.i.i54 ], [ 0, %bb.e ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, i64 %.sink5.i.i56, ptr %i.s)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %_ZN7QStringD2Ev.exit.i55
  %i.u = load <2 x ptr>, ptr %1, align 16
  store <2 x ptr> %i.u, ptr %12, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 16
  store i64 %i.x, ptr %i.v, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 0, i16 32)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 152
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, ptr noundef align 8 dereferenceable(24) %i.y, i32 noundef 0, i16 32)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %0, i64 176
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sext i32 %i.aa to i64
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i64 noundef %i.ab, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argEiii5QChar.exit unwind label %bb.w

_ZNK7QString3argEiii5QChar.exit:                  ; preds = %bb.h
  %i.ac = load <2 x ptr>, ptr %7, align 16
  %i.ad = load <2 x ptr>, ptr %6, align 16
  %i.ae = load ptr, ptr %6, align 16              ; 2 uses
  store <2 x ptr> %i.ac, ptr %6, align 16
  store <2 x ptr> %i.ad, ptr %7, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 16
  %i.ai = load i64, ptr %i.ag, align 16
  store i64 %i.ai, ptr %i.af, align 16
  store i64 %i.ah, ptr %i.ag, align 16
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZNK7QString3argEiii5QChar.exit
  %i.aj = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %.not.i.i58 = icmp eq i32 %i.aj, 1
  br i1 %.not.i.i58, label %bb.i, label %_ZN7QStringD2Ev.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.ak = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ak, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %_ZNK7QString3argEiii5QChar.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.i
  %i.al = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i59, label %_ZN7QStringD2Ev.exit62, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60:    ; preds = %_ZN7QStringD2Ev.exit
  %i.am = atomicrmw add ptr %i.al, i32 -1 acq_rel, align 4
  %.not.i.i61 = icmp eq i32 %i.am, 1
  br i1 %.not.i.i61, label %bb.j, label %_ZN7QStringD2Ev.exit62

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60
  %i.an = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.an, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit62

_ZN7QStringD2Ev.exit62:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60, %bb.j
  %i.ao = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i63, label %_ZN7QStringD2Ev.exit66, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i64

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i64:    ; preds = %_ZN7QStringD2Ev.exit62
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %.not.i.i65 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i65, label %bb.k, label %_ZN7QStringD2Ev.exit66

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i64
  %i.aq = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aq, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit66

_ZN7QStringD2Ev.exit66:                           ; preds = %_ZN7QStringD2Ev.exit62, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i64, %bb.k
  %i.ar = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i67, label %_ZN7QStringD2Ev.exit70, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68:    ; preds = %_ZN7QStringD2Ev.exit66
  %i.as = atomicrmw add ptr %i.ar, i32 -1 acq_rel, align 4
  %.not.i.i69 = icmp eq i32 %i.as, 1
  br i1 %.not.i.i69, label %bb.l, label %_ZN7QStringD2Ev.exit70

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68
  %i.at = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.at, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit70

_ZN7QStringD2Ev.exit70:                           ; preds = %_ZN7QStringD2Ev.exit66, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.au = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i71, label %_ZN7QStringD2Ev.exit74, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72:    ; preds = %_ZN7QStringD2Ev.exit70
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4
  %.not.i.i73 = icmp eq i32 %i.av, 1
  br i1 %.not.i.i73, label %bb.m, label %_ZN7QStringD2Ev.exit74

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72
  %i.aw = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aw, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit74

_ZN7QStringD2Ev.exit74:                           ; preds = %_ZN7QStringD2Ev.exit70, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72, %bb.m
  %i.ax = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i75, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76:    ; preds = %_ZN7QStringD2Ev.exit74
  %i.ay = atomicrmw add ptr %i.ax, i32 -1 acq_rel, align 4
  %.not.i.i77 = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i77, label %bb.n, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76
  %i.az = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76, %_ZN7QStringD2Ev.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ba = load i64, ptr %i.m, align 16
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.af, label %bb.o

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %13, i64 1, ptr @.str.4)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.o
  %i.bc = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZplPKcRK7QString.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %.noexc
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.be = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i218, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219:   ; preds = %bb.p
  %i.bf = atomicrmw add ptr %i.be, i32 -1 acq_rel, align 4
  %.not.i.i220 = icmp eq i32 %i.bf, 1
  br i1 %.not.i.i220, label %22, label %.body

22:                                               ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219
  %23 = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %23, i64 noundef 2, i64 noundef 8) #14
  br label %.body

_ZplPKcRK7QString.exit:                           ; preds = %.noexc
  %i.bg = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZN7QStringpLERKS_.exit unwind label %bb.ad ; 0 uses

_ZN7QStringpLERKS_.exit:                          ; preds = %_ZplPKcRK7QString.exit
  %i.bh = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i83, label %_ZN7QStringD2Ev.exit86, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84:    ; preds = %_ZN7QStringpLERKS_.exit
  %i.bi = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %.not.i.i85 = icmp eq i32 %i.bi, 1
  br i1 %.not.i.i85, label %bb.q, label %_ZN7QStringD2Ev.exit86

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84
  %i.bj = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bj, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit86

_ZN7QStringD2Ev.exit86:                           ; preds = %_ZN7QStringpLERKS_.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.af

bb.r:                                             ; preds = %_ZN7QStringD2Ev.exit.i, %_ZN7QStringC2EPKc.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit213

bb.s:                                             ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit102

bb.t:                                             ; preds = %_ZN7QStringD2Ev.exit.i55, %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit98

bb.u:                                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit94

bb.v:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit90

bb.w:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bq = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i87, label %_ZN7QStringD2Ev.exit90, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88:    ; preds = %bb.w
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4
  %.not.i.i89 = icmp eq i32 %i.br, 1
  br i1 %.not.i.i89, label %bb.x, label %_ZN7QStringD2Ev.exit90

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88
  %i.bs = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bs, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit90

_ZN7QStringD2Ev.exit90:                           ; preds = %bb.x, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88, %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.v ], [ %i.bp, %bb.w ], [ %i.bp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88 ], [ %i.bp, %bb.x ] ; 3 uses
  %i.bt = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i91, label %_ZN7QStringD2Ev.exit94, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92:    ; preds = %_ZN7QStringD2Ev.exit90
  %i.bu = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4
  %.not.i.i93 = icmp eq i32 %i.bu, 1
  br i1 %.not.i.i93, label %bb.y, label %_ZN7QStringD2Ev.exit94

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92
  %i.bv = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bv, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit94

_ZN7QStringD2Ev.exit94:                           ; preds = %bb.y, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92, %_ZN7QStringD2Ev.exit90, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.u ], [ %.pn, %_ZN7QStringD2Ev.exit90 ], [ %.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92 ], [ %.pn, %bb.y ] ; 3 uses
  %i.bw = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i95, label %_ZN7QStringD2Ev.exit98, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96:    ; preds = %_ZN7QStringD2Ev.exit94
  %i.bx = atomicrmw add ptr %i.bw, i32 -1 acq_rel, align 4
  %.not.i.i97 = icmp eq i32 %i.bx, 1
  br i1 %.not.i.i97, label %bb.z, label %_ZN7QStringD2Ev.exit98

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96
  %i.by = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.by, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit98

_ZN7QStringD2Ev.exit98:                           ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96, %_ZN7QStringD2Ev.exit94, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.t ], [ %.pn.pn, %_ZN7QStringD2Ev.exit94 ], [ %.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96 ], [ %.pn.pn, %bb.z ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.bz = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i99, label %_ZN7QStringD2Ev.exit102, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100:   ; preds = %_ZN7QStringD2Ev.exit98
  %i.ca = atomicrmw add ptr %i.bz, i32 -1 acq_rel, align 4
  %.not.i.i101 = icmp eq i32 %i.ca, 1
  br i1 %.not.i.i101, label %bb.aa, label %_ZN7QStringD2Ev.exit102

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100
  %i.cb = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cb, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit102

_ZN7QStringD2Ev.exit102:                          ; preds = %bb.aa, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100, %_ZN7QStringD2Ev.exit98, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %.pn.pn.pn, %_ZN7QStringD2Ev.exit98 ], [ %.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100 ], [ %.pn.pn.pn, %bb.aa ]
  %i.cc = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i103, label %_ZN17QArrayDataPointerIDsED2Ev.exit110, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i104

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i104:   ; preds = %_ZN7QStringD2Ev.exit102
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %.not.i.i105 = icmp eq i32 %i.cd, 1
  br i1 %.not.i.i105, label %bb.ab, label %_ZN17QArrayDataPointerIDsED2Ev.exit110

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i104
  %i.ce = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ce, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit110

_ZN17QArrayDataPointerIDsED2Ev.exit110:           ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i104, %_ZN7QStringD2Ev.exit102
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %_ZN7QStringD2Ev.exit129

bb.ac:                                            ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZplPKcRK7QString.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ch = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i111, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i112

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i112:   ; preds = %bb.ad
  %i.ci = atomicrmw add ptr %i.ch, i32 -1 acq_rel, align 4
  %.not.i.i113 = icmp eq i32 %i.ci, 1
  br i1 %.not.i.i113, label %bb.ae, label %.body

bb.ae:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i112
  %i.cj = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cj, i64 noundef 2, i64 noundef 8) #14
  br label %.body

.body:                                            ; preds = %bb.ae, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i112, %bb.ad, %bb.ac, %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219, %22
  %.pn35 = phi { ptr, i32 } [ %i.bd, %22 ], [ %i.cf, %bb.ac ], [ %i.bd, %bb.p ], [ %i.bd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219 ], [ %i.cg, %bb.ad ], [ %i.cg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i112 ], [ %i.cg, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %_ZN7QStringD2Ev.exit129

bb.af:                                            ; preds = %_ZN7QStringD2Ev.exit86, %_ZN17QArrayDataPointerIDsED2Ev.exit
  %i.ck = getelementptr i8, ptr %0, i64 144       ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void @_ZN9QTextEdit5clearEv(ptr noundef align 8 dereferenceable_or_null(40) %i.cn)
          to label %bb.ag unwind label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.co = load ptr, ptr %i.ck, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void @_ZN9QTextEdit6appendERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.cr = load i64, ptr %i.a, align 8
  %i.cs = invoke ptr @firewall_product_ipv4_func(i64 noundef %i.cr)
          to label %bb.ai unwind label %bb.as     ; 3 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ct = load i64, ptr %i.a, align 8
  %i.cu = invoke ptr @firewall_product_port_func(i64 noundef %i.ct)
          to label %bb.aj unwind label %bb.as     ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cv = load i64, ptr %i.a, align 8
  %i.cw = invoke ptr @firewall_product_ipv4_port_func(i64 noundef %i.cv)
          to label %bb.ak unwind label %bb.as     ; 3 uses

bb.ak:                                            ; preds = %bb.aj
  %i.cx = load i64, ptr %i.a, align 8
  %i.cy = invoke ptr @firewall_product_mac_func(i64 noundef %i.cx)
          to label %bb.al unwind label %bb.as     ; 3 uses

bb.al:                                            ; preds = %bb.ak
  %.not = icmp eq ptr %i.cs, null
  br i1 %.not, label %_ZN7QStringD2Ev.exit125, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cz = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = icmp eq i32 %i.da, 2
  br i1 %i.db, label %bb.an, label %_ZN7QStringD2Ev.exit125

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %14, ptr noundef align 8 dereferenceable_or_null(56) @_ZN19FirewallRulesDialog16staticMetaObjectE, ptr noundef @.str.5, ptr noundef null, i32 noundef -1)
          to label %_ZN19FirewallRulesDialog2trEPKcS1_i.exit unwind label %bb.as

_ZN19FirewallRulesDialog2trEPKcS1_i.exit:         ; preds = %bb.an
  %i.dc = getelementptr i8, ptr %0, i64 292
  %i.dd = load i32, ptr %i.dc, align 4
  invoke void @_ZN19FirewallRulesDialog7addRuleE7QStringPFvP8_GStringPcj9port_typebbEP8_addressj(ptr noundef align 8 dereferenceable_or_null(300) %0, ptr noundef nonnull align 8 %14, ptr noundef nonnull %i.cs, ptr noundef %i.cz, i32 noundef %i.dd)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %_ZN19FirewallRulesDialog2trEPKcS1_i.exit
  %i.de = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i116, label %_ZN7QStringD2Ev.exit119, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i117

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i117:   ; preds = %bb.ao
  %i.df = atomicrmw add ptr %i.de, i32 -1 acq_rel, align 4
  %.not.i.i118 = icmp eq i32 %i.df, 1
  br i1 %.not.i.i118, label %bb.ap, label %_ZN7QStringD2Ev.exit119

bb.ap:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i117
  %i.dg = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dg, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit119

_ZN7QStringD2Ev.exit119:                          ; preds = %bb.ao, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i117, %bb.ap
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, ptr noundef align 8 dereferenceable_or_null(56) @_ZN19FirewallRulesDialog16staticMetaObjectE, ptr noundef @.str.6, ptr noundef null, i32 noundef -1)
          to label %_ZN19FirewallRulesDialog2trEPKcS1_i.exit121 unwind label %bb.as

_ZN19FirewallRulesDialog2trEPKcS1_i.exit121:      ; preds = %_ZN7QStringD2Ev.exit119
  %i.dh = getelementptr i8, ptr %0, i64 264
  %i.di = getelementptr i8, ptr %0, i64 296
  %i.dj = load i32, ptr %i.di, align 8
  invoke void @_ZN19FirewallRulesDialog7addRuleE7QStringPFvP8_GStringPcj9port_typebbEP8_addressj(ptr noundef align 8 dereferenceable_or_null(300) %0, ptr noundef nonnull align 8 %15, ptr noundef nonnull %i.cs, ptr noundef %i.dh, i32 noundef %i.dj)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %_ZN19FirewallRulesDialog2trEPKcS1_i.exit121
  %i.dk = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i122, label %_ZN7QStringD2Ev.exit125, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i123

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i123:   ; preds = %bb.aq
  %i.dl = atomicrmw add ptr %i.dk, i32 -1 acq_rel, align 4
  %.not.i.i124 = icmp eq i32 %i.dl, 1
  br i1 %.not.i.i124, label %bb.ar, label %_ZN7QStringD2Ev.exit125

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i123
  %i.dm = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dm, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit125

bb.as:                                            ; preds = %_ZN7QStringD2Ev.exit179, %bb.bt, %_ZN7QStringD2Ev.exit159, %bb.bj, %_ZN7QStringD2Ev.exit139, %bb.ay, %_ZN7QStringD2Ev.exit119, %bb.an, %bb.aj, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.cd, %bb.cc, %_ZN7QStringD2Ev.exit185, %bb.ak
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit129

bb.at:                                            ; preds = %_ZN19FirewallRulesDialog2trEPKcS1_i.exit
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dp = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i126 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i126, label %_ZN7QStringD2Ev.exit129, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i127

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i127:   ; preds = %bb.at
  %i.dq = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %.not.i.i128 = icmp eq i32 %i.dq, 1
  br i1 %.not.i.i128, label %bb.au, label %_ZN7QStringD2Ev.exit129

bb.au:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i127
  %i.dr = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dr, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit129

bb.av:                                            ; preds = %_ZN19FirewallRulesDialog2trEPKcS1_i.exit121
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dt = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i130, label %_ZN7QStringD2Ev.exit129, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i131

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i131:   ; preds = %bb.av
  %i.du = atomicrmw add ptr %i.dt, i32 -1 acq_rel, align 4
  %.not.i.i132 = icmp eq i32 %i.du, 1
  br i1 %.not.i.i132, label %bb.aw, label %_ZN7QStringD2Ev.exit129

bb.aw:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i131
  %i.dv = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dv, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit129

_ZN7QStringD2Ev.exit125:                          ; preds = %bb.ar, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i123, %bb.aq, %bb.am, %bb.al
  %.not37 = icmp eq ptr %i.cu, null
  br i1 %.not37, label %_ZN7QStringD2Ev.exit145, label %bb.ax

bb.ax:                                            ; preds = %_ZN7QStringD2Ev.exit125
  %i.dw = getelementptr i8, ptr %0, i64 288
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = and i32 %i.dx, -2
  %switch = icmp eq i32 %i.dy, 2
  br i1 %switch, label %bb.ay, label %_ZN7QStringD2Ev.exit145

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %16, ptr noundef align 8 dereferenceable_or_null(56) @_ZN19FirewallRulesDialog16staticMetaObjectE, ptr noundef @.str.7, ptr noundef null, i32 noundef -1)
          to label %_ZN19FirewallRulesDialog2trEPKcS1_i.exit135 unwind label %bb.as

_ZN19FirewallRulesDialog2trEPKcS1_i.exit135:      ; preds = %bb.ay
  %i.dz = getelementptr i8, ptr %0, i64 240
  %i.ea = getelementptr i8, ptr %0, i64 292
  %i.eb = load i32, ptr %i.ea, align 4
  invoke void @_ZN19FirewallRulesDialog7addRuleE7QStringPFvP8_GStringPcj9port_typebbEP8_addressj(ptr noundef align 8 dereferenceable_or_null(300) %0, ptr noundef nonnull align 8 %16, ptr noundef nonnull %i.cu, ptr noundef %i.dz, i32 noundef %i.eb)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %_ZN19FirewallRulesDialog2trEPKcS1_i.exit135
  %i.ec = load ptr, ptr %16, align 8              ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i136, label %_ZN7QStringD2Ev.exit139, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i137

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i137:   ; preds = %bb.az
  %i.ed = atomicrmw add ptr %i.ec, i32 -1 acq_rel, align 4
  %.not.i.i138 = icmp eq i32 %i.ed, 1
  br i1 %.not.i.i138, label %bb.ba, label %_ZN7QStringD2Ev.exit139

bb.ba:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i137
  %i.ee = load ptr, ptr %16, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ee, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit139

_ZN7QStringD2Ev.exit139:                          ; preds = %bb.az, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i137, %bb.ba
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %17, ptr noundef align 8 dereferenceable_or_null(56) @_ZN19FirewallRulesDialog16staticMetaObjectE, ptr noundef @.str.8, ptr noundef null, i32 noundef -1)
          to label %_ZN19FirewallRulesDialog2trEPKcS1_i.exit141 unwind label %bb.as

_ZN19FirewallRulesDialog2trEPKcS1_i.exit141:      ; preds = %_ZN7QStringD2Ev.exit139
  %i.ef = getelementptr i8, ptr %0, i64 264
  %i.eg = getelementptr i8, ptr %0, i64 296
  %i.eh = load i32, ptr %i.eg, align 8
  invoke void @_ZN19FirewallRulesDialog7addRuleE7QStringPFvP8_GStringPcj9port_typebbEP8_addressj(ptr noundef align 8 dereferenceable_or_null(300) %0, ptr noundef nonnull align 8 %17, ptr noundef nonnull %i.cu, ptr noundef %i.ef, i32 noundef %i.eh)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %_ZN19FirewallRulesDialog2trEPKcS1_i.exit141
  %i.ei = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i142, label %_ZN7QStringD2Ev.exit145, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i143

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i143:   ; preds = %bb.bb
  %i.ej = atomicrmw add ptr %i.ei, i32 -1 acq_rel, align 4
  %.not.i.i144 = icmp eq i32 %i.ej, 1
  br i1 %.not.i.i144, label %bb.bc, label %_ZN7QStringD2Ev.exit145

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i143
  %i.ek = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ek, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit145
end_hunk_0
