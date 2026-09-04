Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeConstProp?download=true
inline.NumInlined: 3084
inline.NumDeleted: 856
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4Luau7CodeGen14ConstPropState23forwardVmRegStoreToLoadERNS0_6IrInstENS0_5IrCmdE:bb.a

_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE14rehash_if_fullERS6_.exit.i: ; preds = %bb.g, %.noexc, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit10
  %i.av = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE13insert_unsafeERS6_(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(59) %3)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE14rehash_if_fullERS6_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = lshr i32 %i.w, 4
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !167
  %.promoted.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !131
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  store i32 0, ptr %i.ah, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.h
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !133 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.ay, %i.aj
  br i1 %.not.i.i13, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ay) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit
  ret void

bb.k:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE14rehash_if_fullERS6_.exit.i, %bb.g, %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i.i14 = load i32, ptr %i.ah, align 8, !tbaa !131
  %.not1.i.i.i15 = icmp eq i32 %.promoted.i.i.i14, 0
  br i1 %.not1.i.i.i15, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i17, label %.lr.ph.preheader.i.i.i16

.lr.ph.preheader.i.i.i16:                         ; preds = %bb.k
  store i32 0, ptr %i.ah, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i17

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i17: ; preds = %.lr.ph.preheader.i.i.i16, %bb.k
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !133 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ba, %i.aj
  br i1 %.not.i.i18, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit19, label %bb.l

bb.l:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i17
  call void @_ZdlPv(ptr noundef %i.ba) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit19

_ZN4Luau7CodeGen6IrInstD2Ev.exit19:               ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i17, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState9saveValueENS0_4IrOpES2_(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 15
  switch i32 %i.a, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread [
    i32 6, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !136
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.d)
  store i32 %spec.select.i, ptr %i.c, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.f
  br label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.i = lshr i32 %1, 4                           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !187
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.n = load i32, ptr %i.m, align 8, !tbaa !167  ; 2 uses
  %i.o = icmp eq i32 %i.i, %i.n
  br i1 %i.o, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !188
  %i.r = add i64 %i.q, -1                         ; 3 uses
  %i.s = zext nneg i32 %i.i to i64
  %i.t = and i64 %i.r, %i.s
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !150
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.01828.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.z, %bb.h ]
  %.01927.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.ab, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.01927.i.i.i.i ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !167  ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.i
  br i1 %i.x, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %i.w, %i.n
  br i1 %i.y, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add i64 %.01828.i.i.i.i, 1               ; 3 uses
  %i.aa = add i64 %i.z, %.01927.i.i.i.i
  %i.ab = and i64 %i.aa, %i.r
  %.not.i.i.i.i = icmp ugt i64 %i.z, %i.r
  br i1 %.not.i.i.i.i, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.f, !llvm.loop !4

_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !268
  %i.af = load i8, ptr %i.ac, align 4, !tbaa !269 ; 2 uses
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !143
  %i.ak = icmp ult i32 %i.ae, %i.aj
  br i1 %i.ak, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i
  %i.al = zext i8 %i.af to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !136
  %..i = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.al)
  store i32 %..i, ptr %i.am, align 8, !tbaa !136
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %i.ag
  br label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit

_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit: ; preds = %bb.i, %bb.b
  %.1.i = phi ptr [ %i.g, %bb.b ], [ %i.ap, %bb.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %.not = icmp eq i32 %i.ar, %2
  br i1 %.not, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit
  store i32 %2, ptr %i.aq, align 4, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !143
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !143
  br label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread

_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread: ; preds = %bb.h, %bb.g, %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i, %bb.c, %bb.d, %bb.a, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit, %bb.j
  ret void
}

declare void @_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 4 dereferenceable(4), i32) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6bitsetILm256EE4testEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 255
  br i1 %i.a, label %bb.b, label %_ZNKSt6bitsetILm256EE8_M_checkEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i64 noundef %1, i64 noundef 256) #24
  unreachable

_ZNKSt6bitsetILm256EE8_M_checkEmPKc.exit:         ; preds = %bb.a
  %i.b = lshr i64 %1, 6
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !181
  %i.e = and i64 %1, 63
  %i.f = shl nuw i64 1, %i.e
  %i.g = and i64 %i.d, %i.f
  %i.h = icmp ne i64 %i.g, 0
  ret i1 %i.h
}

declare i16 @_ZN4Luau7CodeGen16tryGetOperandTagERNS0_10IrFunctionENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928), i32) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState28invalidateTableStoreLocationENS0_6IrInstENS0_4IrOpEh(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef align 8 %1, i32 %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !130
  switch i8 %i.a, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit [
    i8 10, label %bb.b
    i8 9, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3336 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !201  ; 4 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.g = load i32, ptr %i.f, align 8, !tbaa !167
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.k, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04.i.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !167
  %i.j = icmp eq i32 %i.i, %i.g
  br i1 %i.j, label %bb.d, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5beginEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge, label %bb.c, !llvm.loop !469

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5beginEv.exit: ; preds = %bb.c
  %.not5862 = icmp eq i64 %.04.i.i, %i.d
  br i1 %.not5862, label %._crit_edge, label %.lr.ph64

.lr.ph64:                                         ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5beginEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3352
  br label %bb.e

._crit_edge:                                      ; preds = %bb.d, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit, %bb.b, %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5beginEv.exit
  %i.p = add i8 %3, 1
  %or.cond = icmp ult i8 %i.p, 2
  br i1 %or.cond, label %bb.k, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit

bb.e:                                             ; preds = %.lr.ph64, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit
  %.sroa.6.063 = phi i64 [ %.04.i.i, %.lr.ph64 ], [ %.lcssa.i, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit ] ; 4 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.6.063 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.r, align 4, !tbaa !167
  %i.w = zext i32 %i.v to i64
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !129
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !131
  %.not.i31 = icmp ugt i32 %i.ab, 2
  br i1 %.not.i31, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, label %bb.f, !prof !171

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit:       ; preds = %bb.e, %bb.f
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.n, align 8, !tbaa !131
  %.not.i32 = icmp ugt i32 %i.ae, 2
  br i1 %.not.i32, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit33, label %bb.g, !prof !171

bb.g:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit33

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit33:     ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, %bb.g
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ad, align 4
  %i.ai = load i32, ptr %i.ag, align 4
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit33
  store i32 -1, ptr %i.s, align 4, !tbaa !167
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit33
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !201
  %i.al = add i64 %.sroa.6.063, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.al) ; 3 uses
  %i.am = add i64 %umax.i, -1                     ; 2 uses
  %exitcond.not88 = icmp eq i64 %.sroa.6.063, %i.am
  br i1 %exitcond.not88, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %bb.i
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.ao = load i32, ptr %i.o, align 8, !tbaa !167
  br label %.lr.ph90

bb.j:                                             ; preds = %.lr.ph90
  %exitcond.not = icmp eq i64 %i.aq, %i.am
  br i1 %exitcond.not, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit, label %.lr.ph90, !llvm.loop !470

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.j
  %i.ap = phi i64 [ %i.aq, %bb.j ], [ %.sroa.6.063, %.lr.ph90.preheader ]
  %i.aq = add i64 %i.ap, 1                        ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !167
  %i.at = icmp eq i32 %i.as, %i.ao
  br i1 %i.at, label %bb.j, label %._ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit_crit_edge91, !llvm.loop !470

._ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit_crit_edge91: ; preds = %.lr.ph90
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit, !llvm.loop !470

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit: ; preds = %bb.j, %._ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit_crit_edge91, %bb.i
  %.lcssa.i = phi i64 [ %umax.i, %bb.i ], [ %i.aq, %._ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE8iteratorppEv.exit_crit_edge91 ], [ %umax.i, %bb.j ] ; 2 uses
  %.not58 = icmp eq i64 %.lcssa.i, %i.d
  br i1 %.not58, label %._crit_edge, label %bb.e

bb.k:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !302 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !302 ; 2 uses
  %.not5965 = icmp eq ptr %i.av, %i.ax
  br i1 %.not5965, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph68, %bb.q
  %.sroa.043.066 = phi ptr [ %i.av, %.lr.ph68 ], [ %i.cb, %bb.q ] ; 3 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bd = load i32, ptr %.sroa.043.066, align 4, !tbaa !304
  %i.be = zext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !129 ; 2 uses
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.bf, i64 %i.be ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !131
  %.not.i34.not = icmp eq i32 %i.bj, 0
  br i1 %.not.i34.not, label %bb.m, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit35, !prof !132

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i32 noundef 1)
  %.pre71 = load ptr, ptr %i.bc, align 8, !tbaa !129
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit35

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit35:     ; preds = %bb.l, %bb.m
  %i.bk = phi ptr [ %i.bf, %bb.l ], [ %.pre71, %bb.m ]
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !133
  %.sroa.010.0.copyload = load i32, ptr %i.bl, align 4, !tbaa !52
  %i.bm = lshr i32 %.sroa.010.0.copyload, 4
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.bk, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !131
  %.not.i36 = icmp ugt i32 %i.br, 2
  br i1 %.not.i36, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit37, label %bb.n, !prof !171

bb.n:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit35
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit37

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit37:     ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit35, %bb.n
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !133
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.ba, align 8, !tbaa !131
  %.not.i38 = icmp ugt i32 %i.bu, 2
  br i1 %.not.i38, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit39, label %bb.o, !prof !171

bb.o:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit37
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit39

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit39:     ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit37, %bb.o
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bt, align 4
  %i.by = load i32, ptr %i.bw, align 4
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit39
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.043.066, i64 4
  store i8 0, ptr %i.ca, align 4, !tbaa !305
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit39
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.043.066, i64 8 ; 2 uses
  %.not59 = icmp eq ptr %i.cb, %i.ax
  br i1 %.not59, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, label %bb.l

bb.r:                                             ; preds = %bb.a
  %i.cc = tail call i32 @_ZN4Luau7CodeGen14ConstPropState28getCombinedArrayLoadOffsetOpERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %1, i32 %2) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = and i32 %i.cc, 15
  %.not.i40 = icmp eq i32 %i.ce, 2
  br i1 %.not.i40, label %bb.s, label %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = lshr i32 %i.cc, 4
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !276
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !279
  %.not5.i = icmp eq i8 %i.cl, 0
  br i1 %.not5.i, label %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit, label %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit.thread

_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit: ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !167
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !202 ; 2 uses
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !161 ; 2 uses
  %.not69 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not69, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, label %.lr.ph

_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit.thread: ; preds = %bb.s, %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !161 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !202
  %.not.i.i41 = icmp eq ptr %i.cv, %i.ct
  br i1 %.not.i.i41, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit.thread
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit

.lr.ph:                                           ; preds = %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit, %bb.w
  %i.cw = phi ptr [ %i.dp, %bb.w ], [ %i.cr, %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit ] ; 2 uses
  %i.cx = phi ptr [ %i.dq, %bb.w ], [ %i.cq, %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit ] ; 2 uses
  %.061 = phi i64 [ %.1, %bb.w ], [ 0, %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.cw, i64 %.061 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
end_hunk_0
