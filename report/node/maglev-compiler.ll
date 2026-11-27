Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-compiler?download=true
inline.NumInlined: 45856
inline.NumDeleted: 12056
loop-unroll.NumCompletelyUnrolled: 429
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 519
begin_hunk_0_@_ZN2v88internal6maglev25LoopOptimizationProcessor7ProcessEPNS1_36LoadTaggedFieldForContextSlotNoCellsERKNS1_15ProcessingStateE:bb.a
  %i.aq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %.not.i4 = icmp eq i32 %i.aw, 2
  br i1 %.not.i4, label %bb.f, label %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread

bb.f:                                             ; preds = %_ZNKSt3setISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4lessIS6_ENS2_13ZoneAllocatorIS6_EEE5countERKS6_.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK2v88internal6maglev10BasicBlock10successorsEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::base::SmallVector.3599") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %3, align 8
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %.not6.i = icmp eq i64 %i.bf, 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.not6.i, label %bb.g, label %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = trunc i64 %i.bh to i16
  %i.bj = add i16 %i.bi, -220
  %i.bk = icmp ult i16 %i.bj, 9
  br i1 %i.bk, label %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit.thread, label %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit

_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit: ; preds = %bb.g
  %i.bl = load ptr, ptr %i.aq, align 8
  %i.bm = load ptr, ptr %i.ar, align 8
  %.not = icmp eq ptr %i.bl, %i.bm
  br i1 %.not, label %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread, label %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit.thread

_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread: ; preds = %bb.f, %_ZNKSt3setISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4lessIS6_ENS2_13ZoneAllocatorIS6_EEE5countERKS6_.exit.thread, %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit, %_ZNKSt3setISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4lessIS6_ENS2_13ZoneAllocatorIS6_EEE5countERKS6_.exit, %bb.d, %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit
  br label %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit.thread

_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit.thread: ; preds = %bb.g, %bb.c, %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread, %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread ], [ 2, %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit ], [ 2, %bb.g ]
  ret i32 %.1
}

declare noundef zeroext i1 @_ZNK2v88internal6maglev3Phi11is_loop_phiEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal6maglev10BasicBlock10successorsEv(ptr dead_on_unwind noalias writable sret(%"class.v8::base::SmallVector.3599") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat align 2 !guid !3636 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i16                    ; 2 uses
  %i.f = add i16 %i.e, -320
  %i.g = icmp ult i16 %i.f, -3
  %.not42 = icmp eq ptr %i.b, null                ; 3 uses
  %.not = or i1 %.not42, %i.g
  br i1 %.not, label %bb.b, label %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.l, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.k, align 8
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = add i16 %i.e, -317
  %i.p = icmp ult i16 %i.o, -15
  %.not22 = or i1 %.not42, %i.p
  br i1 %.not22, label %bb.c, label %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit26

_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit26: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load <2 x ptr>, ptr %i.q, align 8
  store ptr %i.r, ptr %0, align 8
  store ptr %i.u, ptr %i.t, align 8
  store <2 x ptr> %i.v, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.w, ptr %i.s, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.x = and i64 %i.d, 65535
  %i.y = icmp ne i64 %i.x, 301
  %.not23 = or i1 %.not42, %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not23, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.z, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !range !360, !noundef !361
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit, label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit ] ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ao = load ptr, ptr %i.ab, align 8
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit, !prof !359

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit: ; preds = %bb.e, %bb.f
  %i.aq = phi ptr [ %.pre.i.i, %bb.f ], [ %i.an, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.aa, align 8
  store ptr %i.am, ptr %i.aq, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.ad, align 8
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.e, label %._crit_edge, !llvm.loop !3635

_ZNK2v88internal6maglev6Switch11fallthroughEv.exit: ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ab, align 8
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.g, label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29, !prof !359

bb.g:                                             ; preds = %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i.i28 = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29

_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29: ; preds = %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit, %bb.g
  %i.ba = phi ptr [ %.pre.i.i28, %bb.g ], [ %i.ax, %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.aa, align 8
  store ptr %i.aw, ptr %i.ba, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.bc, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bf, ptr %i.be, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit26, %._crit_edge, %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29, %bb.h, %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 !guid !3637 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !359

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 5 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.f, label %bb.g, !prof !364

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.p, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 !guid !3638 {
_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #28
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 !guid !3639 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

declare void @_ZN2v88internal6maglev9DeoptInfoC2EPNS0_4ZoneEPNS1_10DeoptFrameENS0_8compiler14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef, ptr, i32) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal6maglev25LoopOptimizationProcessor16ProcessNamedLoadEPNS1_4NodeEPNS1_9ValueNodeENS1_16KnownNodeAspects20LoadedPropertyMapKeyE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2, i64 %3) local_unnamed_addr #0 comdat align 2 !guid !3642 {
bb.a:
  %4 = alloca %"class.v8::base::SmallVector.3599", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 65535
  %i.f = icmp ne i64 %i.e, 142
  %.not8.i = icmp eq ptr %2, null
  %.not.i = or i1 %.not8.i, %i.f
  br i1 %.not.i, label %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZNK2v88internal6maglev3Phi11is_loop_phiEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #25
  br i1 %i.g, label %bb.d, label %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.i, %i.m
  br i1 %i.n, label %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit.thread, label %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit

_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.o = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.q = load i8, ptr %i.p, align 8, !range !360, !noundef !361
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6maglev25LoopOptimizationProcessor9IsLoopPhiEPNS1_4NodeE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.t, %bb.e ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.u, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp ult i64 %i.w, %3                    ; 2 uses
  %.19.i.i.i = select i1 %i.x, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.x, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3640

_ZNKSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = icmp eq ptr %.19.i.i.i, %i.u
  br i1 %i.y, label %_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread, label %_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit

_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit: ; preds = %_ZNKSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aa = load i64, ptr %i.z, align 8
  %.not23 = icmp ult i64 %3, %i.aa
  br i1 %.not23, label %_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread, label %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread

_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i, %bb.e, %_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %.not10.i.i.i4 = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i4, label %_ZNKSt3setIPN2v88internal6maglev9ValueNodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread, %.lr.ph.i.i.i5
  %.012.i.i.i6 = phi ptr [ %.1.i.i.i11, %.lr.ph.i.i.i5 ], [ %i.ac, %_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread ] ; 3 uses
  %.0811.i.i.i7 = phi ptr [ %.19.i.i.i8, %.lr.ph.i.i.i5 ], [ %i.ad, %_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i6, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp ult ptr %i.af, %2                  ; 2 uses
  %.19.i.i.i8 = select i1 %i.ag, ptr %.0811.i.i.i7, ptr %.012.i.i.i6 ; 3 uses
  %.1.in.v.i.i.i9 = select i1 %i.ag, i64 24, i64 16
  %.1.in.i.i.i10 = getelementptr inbounds nuw i8, ptr %.012.i.i.i6, i64 %.1.in.v.i.i.i9
  %.1.i.i.i11 = load ptr, ptr %.1.in.i.i.i10, align 8 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %.1.i.i.i11, null
  br i1 %.not.i.i.i12, label %_ZNKSt8_Rb_treeIPN2v88internal6maglev9ValueNodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i, label %.lr.ph.i.i.i5, !llvm.loop !3641

_ZNKSt8_Rb_treeIPN2v88internal6maglev9ValueNodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i: ; preds = %.lr.ph.i.i.i5
  %i.ah = icmp eq ptr %.19.i.i.i8, %i.ad
  br i1 %i.ah, label %_ZNKSt3setIPN2v88internal6maglev9ValueNodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread, label %_ZNKSt3setIPN2v88internal6maglev9ValueNodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit

_ZNKSt3setIPN2v88internal6maglev9ValueNodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal6maglev9ValueNodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i8, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not24 = icmp ult ptr %2, %i.aj
  br i1 %.not24, label %_ZNKSt3setIPN2v88internal6maglev9ValueNodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread, label %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread

_ZNKSt3setIPN2v88internal6maglev9ValueNodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal6maglev9ValueNodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i, %_ZNKSt3setIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit.thread, %_ZNKSt3setIPN2v88internal6maglev9ValueNodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE5countERKS4_.exit
  %i.ak = getelementptr inbounds i8, ptr %1, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i14 = icmp eq i32 %i.ar, 2
  br i1 %.not.i14, label %bb.f, label %_ZN2v88internal6maglev25LoopOptimizationProcessor8CanHoistEPNS1_4NodeE.exit.thread
end_hunk_0
