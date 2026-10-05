Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_message_reflection?download=true
inline.NumInlined: 8094
inline.NumDeleted: 3434
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10Reflection9SwapFieldEPNS0_7MessageES3_PKNS0_15FieldDescriptorE:bb.a

bb.dj:                                            ; preds = %bb.di, %bb.dh
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

bb.dk:                                            ; preds = %bb.a
  switch i32 %i.i, label %bb.dr [
    i32 10, label %bb.dl
    i32 9, label %bb.dq
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !44 ; 3 uses
  %i.we = trunc i64 %i.wd to i1
  br i1 %i.we, label %bb.dm, label %bb.dn, !prof !45

bb.dm:                                            ; preds = %bb.dl
  %i.wf = add nsw i64 %i.wd, -1
  %i.wg = inttoptr i64 %i.wf to ptr
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.dn:                                            ; preds = %bb.dl
  %i.wi = inttoptr i64 %i.wd to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i = phi ptr [ %i.wh, %bb.dm ], [ %i.wi, %bb.dn ]
  %i.wj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !44 ; 3 uses
  %i.wl = trunc i64 %i.wk to i1
  br i1 %i.wl, label %bb.do, label %bb.dp, !prof !45

bb.do:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.wm = add nsw i64 %i.wk, -1
  %i.wn = inttoptr i64 %i.wm to ptr
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !48
  br label %_ZN6google8protobuf8internal15SwapFieldHelper16SwapMessageFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE.exit

bb.dp:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.wp = inttoptr i64 %i.wk to ptr
  br label %_ZN6google8protobuf8internal15SwapFieldHelper16SwapMessageFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE.exit

_ZN6google8protobuf8internal15SwapFieldHelper16SwapMessageFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE.exit: ; preds = %bb.do, %bb.dp
  %.0.i.i6.i = phi ptr [ %i.wo, %bb.do ], [ %i.wp, %bb.dp ]
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper11SwapMessageEPKNS0_10ReflectionEPNS0_7MessageEPNS0_5ArenaES7_S9_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %.0.i.i.i, ptr noundef nonnull %2, ptr noundef %.0.i.i6.i, ptr noundef nonnull %3)
  br label %bb.ds

bb.dq:                                            ; preds = %bb.dk
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper15SwapStringFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dk
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper28SwapNonMessageNonStringFieldEPKNS0_10ReflectionEPNS0_7MessageES7_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN6google8protobuf8internal15SwapFieldHelper16SwapMessageFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE.exit, %bb.dq, %bb.dr, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit77, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit127, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit177, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit227, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit277, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit327, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit377, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit429, %bb.dc, %bb.dd
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6google8protobuf8internal40InitializeFileDescriptorDefaultInstancesEv() local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf8internal26InitializeLazyExtensionSetEv() local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal14ParseNamedEnumEPKNS0_14EnumDescriptorESt17basic_string_viewIcSt11char_traitsIcEEPi(ptr noundef nonnull %0, i64 %1, ptr %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf14EnumDescriptor15FindValueByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 %1, ptr %2) ; 2 uses
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !103
  store i32 %i.d, ptr %3, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

declare noundef ptr @_ZNK6google8protobuf14EnumDescriptor15FindValueByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88), i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf8internal10NameOfEnumB5cxx11EPKNS0_14EnumDescriptorEi(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZN6google8protobuf8internal28init_protobuf_defaults_stateE acquire, align 1, !range !73, !noundef !57
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv()
  br label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104
  br label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit

_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.g = phi ptr [ %i.f, %bb.d ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.b ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.c ]
  ret ptr %i.g
}

declare noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 3 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp slt i32 %i.a, -1
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = select i1 %i.d, i64 -1, i64 %i.e         ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #38 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !109  ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv.epil.init ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !103
  %i.q = sub nsw i32 %i.p, %1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !111
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.epil.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104
  store ptr %i.w, ptr %i.s, align 8, !tbaa !111
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %.not26 = icmp slt i32 %i.a, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %.preheader
  %i.x = add i32 %2, 1
  %i.y = sub i32 %i.x, %1                         ; 2 uses
  %wide.trip.count33 = zext i32 %i.y to i64       ; 3 uses
  %min.iters.check = icmp ult i32 %i.y, 4
  br i1 %min.iters.check, label %.lr.ph28.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph28.preheader
  %n.vec = and i64 %wide.trip.count33, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %wide.load35 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !111 ; 2 uses
  %i.ab = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.ac = icmp eq <2 x ptr> %wide.load35, splat (ptr null)
  %i.ad = select <2 x i1> %i.ab, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load
  %i.ae = select <2 x i1> %i.ac, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load35
  store <2 x ptr> %i.ad, ptr %i.z, align 8, !tbaa !111
  store <2 x ptr> %i.ae, ptr %i.aa, align 8, !tbaa !111
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count33
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph28.preheader36

.lr.ph28.preheader36:                             ; preds = %.lr.ph28.preheader, %middle.block
  %indvars.iv30.ph = phi i64 [ 0, %.lr.ph28.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph28

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !103
  %i.aj = sub nsw i32 %i.ai, %1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !104
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !103
  %i.at = sub nsw i32 %i.as, %1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !104
  store ptr %i.az, ptr %i.av, align 8, !tbaa !111
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph28, %middle.block, %.preheader
  ret ptr %i.g

.lr.ph28:                                         ; preds = %.lr.ph28.preheader36, %.lr.ph28
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph28 ], [ %indvars.iv30.ph, %.lr.ph28.preheader36 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv30 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !111 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  %spec.store.select = select i1 %i.bc, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.bb
  store ptr %spec.store.select, ptr %i.ba, align 8, !tbaa !111
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge, label %.lr.ph28, !llvm.loop !505
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf8internal19NameOfDenseEnumSlowB5cxx11EiPNS1_18DenseEnumCacheInfoE(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !511
  %i.c = icmp slt i32 %0, %i.b
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !512
  %i.f = icmp sgt i32 %0, %i.e
  br i1 %i.f, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !513
  %i.i = tail call noundef ptr %i.h()             ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !511  ; 4 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !512
  %i.l = sub i32 %i.k, %i.j                       ; 3 uses
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = icmp slt i32 %i.l, -1
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = select i1 %i.o, i64 -1, i64 %i.p         ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #38 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.q, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !109  ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.t to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.x = icmp eq i32 %i.t, 1
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.e

.preheader.i.loopexit.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !103
  %i.ab = sub nsw i32 %i.aa, %i.j
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !111
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %.epil.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !111
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %bb.d, %.epil.preheader, %bb.c
  %.not26.i = icmp slt i32 %i.l, 0
  br i1 %.not26.i, label %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i
  %min.iters.check = icmp ult i32 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph28.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph28.i.preheader
  %n.vec = and i64 %i.n, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !111 ; 2 uses
  %wide.load26 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !111 ; 2 uses
  %i.ak = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.al = icmp eq <2 x ptr> %wide.load26, splat (ptr null)
  %i.am = select <2 x i1> %i.ak, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load
  %i.an = select <2 x i1> %i.al, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load26
  store <2 x ptr> %i.am, ptr %i.ai, align 8, !tbaa !111
  store <2 x ptr> %i.an, ptr %i.aj, align 8, !tbaa !111
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !506

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, label %.lr.ph28.i.preheader27

.lr.ph28.i.preheader27:                           ; preds = %.lr.ph28.i.preheader, %middle.block
  %indvars.iv30.i.ph = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph28.i

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.i ]
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !103
  %i.as = sub nsw i32 %i.ar, %i.j
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !111
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !104
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !111
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !103
  %i.bc = sub nsw i32 %i.bb, %i.j
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !111
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !104
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !111
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader27, %.lr.ph28.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph28.i ], [ %indvars.iv30.i.ph, %.lr.ph28.i.preheader27 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv30.i ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !111 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  %spec.store.select.i = select i1 %i.bl, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.bk
  store ptr %spec.store.select.i, ptr %i.bj, align 8, !tbaa !111
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %i.n
  br i1 %exitcond34.not.i, label %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, label %.lr.ph28.i, !llvm.loop !507

_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit: ; preds = %.lr.ph28.i, %middle.block, %.preheader.i
  %i.bm = cmpxchg ptr %1, ptr null, ptr %i.r release acquire, align 8 ; 2 uses
  %i.bn = extractvalue { ptr, i1 } %i.bm, 1
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit
  %i.bo = extractvalue { ptr, i1 } %i.bm, 0
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #39
  br label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, %bb.j
  %.sink = phi ptr [ %i.bo, %bb.j ], [ %i.r, %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit ]
  %i.bp = load i32, ptr %i.a, align 8, !tbaa !511
  %i.bq = sub nsw i32 %0, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.br
  %.0 = load ptr, ptr %i.bs, align 8, !tbaa !111
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.k
  %.1 = phi ptr [ %.0, %bb.k ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.b ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal15IsMatchingCTypeEPKNS0_15FieldDescriptorEi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = icmp eq i8 %i.c, 2
  %.0.v = zext i1 %i.d to i32
  %.0 = icmp eq i32 %1, %.0.v
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10ReflectionC2EPKNS0_10DescriptorERKNS0_8internal16ReflectionSchemaEPKNS0_14DescriptorPoolEPNS0_14MessageFactoryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  store i32 -1, ptr %0, align 8, !tbaa !115
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !514
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.c, align 8, !tbaa !95
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv()
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %.pre, %bb.b ], [ %1, %bb.a ]
  %i.g = phi ptr [ %i.e, %bb.b ], [ %3, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !515
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.j, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !119
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %0, align 8, !tbaa !115
  ret void
}

declare noundef ptr @_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf10ReflectionD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(96) dereferenceable(96) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  tail call void @_ZdlPv(ptr noundef %i.b) #35
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Reflection20MutableUnknownFieldsEPNS0_7MessageE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection15IsLazyExtensionERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56
  %i.j = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7HasLazyEi(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection15GetExtensionSetERKNS0_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  ret ptr %i.d
}

declare noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7HasLazyEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection25IsLazilyVerifiedLazyFieldEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection26IsEagerlyVerifiedLazyFieldEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i16 @_ZNK6google8protobuf10Reflection12GetLazyStyleEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf10Reflection13SpaceUsedLongERKNS0_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !120
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit, !prof !45

bb.b:                                             ; preds = %bb.a
end_hunk_0
