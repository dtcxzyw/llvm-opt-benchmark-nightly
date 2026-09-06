Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ShuffleDecode?download=true
inline.NumInlined: 131
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm21DecodeZeroMoveLowMaskEjRNS_15SmallVectorImplIiEE
define dso_local void @_ZN4llvm21DecodeZeroMoveLowMaskEjRNS_15SmallVectorImplIiEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %1, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  store i32 0, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !10
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = add i32 %0, -1                           ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = zext i32 %i.j to i64
  %i.n = add nuw nsw i64 %i.m, %i.l               ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !11
  %i.p = zext i32 %i.o to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.n, %i.p
  br i1 %.not.i.i.i, label %bb.d, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, !prof !18

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.q, i64 noundef %i.n, i64 noundef 4) #5
  %.pre4.pre.i = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i: ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.pre4.i = phi i32 [ %i.j, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ %.pre4.pre.i, %bb.d ] ; 2 uses
  %i.r = icmp eq i32 %i.k, 0
  br i1 %i.r, label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !13
  %i.t = zext i32 %.pre4.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 4 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.l, 2       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i.i
  %i.w = add nsw i64 %.idx.i.i.i.i.i, -4          ; 2 uses
  %i.x = lshr exact i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2), ptr %next.gep, align 4, !tbaa !14
  store <4 x i32> splat (i32 -2), ptr %i.ac, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.e, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %bb.e ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 -2, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !69

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit

_ZN4llvm15SmallVectorImplIiE6appendEmi.exit:      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i
  %i.af = phi i32 [ %.pre.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i ], [ %.pre4.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i ]
  %i.ag = add i32 %i.af, %i.k
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20DecodeScalarMoveMaskEjbRNS_15SmallVectorImplIiEE(i32 noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %0)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %2, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  store i32 %0, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !10
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.b, %bb.c
  %i.j = icmp ugt i32 %0, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8.us
  %.09.us = phi i32 [ %i.r, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8.us ], [ 1, %.lr.ph ]
  %i.k = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i7.us = icmp ult i32 %i.k, %i.l
  br i1 %.not.i7.us, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %.lr.ph.split.us
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef -2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8.us

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.m = zext i32 %i.k to i64
  %i.n = load ptr, ptr %2, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 -2, ptr %i.o, align 1
  %i.p = load i32, ptr %i.a, align 8, !tbaa !10
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8.us

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8.us: ; preds = %bb.e, %bb.d
  %i.r = add nuw i32 %.09.us, 1                   ; 2 uses
  %exitcond11.not = icmp eq i32 %i.r, %0
  br i1 %exitcond11.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !70

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8.us, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8
  %.09 = phi i32 [ %i.z, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8 ], [ 1, %.lr.ph ] ; 3 uses
  %i.s = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i7 = icmp ult i32 %i.s, %i.t
  br i1 %.not.i7, label %bb.g, label %bb.f, !prof !12

bb.f:                                             ; preds = %.lr.ph.split
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.09)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8

bb.g:                                             ; preds = %.lr.ph.split
  %i.u = zext i32 %i.s to i64
  %i.v = load ptr, ptr %2, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u
  store i32 %.09, ptr %i.w, align 1
  %i.x = load i32, ptr %i.a, align 8, !tbaa !10
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit8: ; preds = %bb.f, %bb.g
  %i.z = add nuw i32 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !70
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16DecodeEXTRQIMaskEjjiiRNS_15SmallVectorImplIiEE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 1                           ; 3 uses
  %i.b = and i32 %2, 63                           ; 3 uses
  %i.c = and i32 %3, 63                           ; 3 uses
  %i.d = urem i32 %i.b, %1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = urem i32 %i.c, %1
  %i.f = udiv i32 %i.c, %1
  %.not35 = icmp eq i32 %i.e, 0
  br i1 %.not35, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.b, 0
  %spec.store.select = select i1 %i.g, i32 64, i32 %i.b ; 3 uses
  %i.h = add nuw nsw i32 %spec.store.select, %i.c
  %i.i = icmp samesign ugt i32 %i.h, 64
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %0 to i64                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, %i.j               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %i.q = zext i32 %i.p to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.n, %i.q
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.r, i64 noundef %i.n, i64 noundef 4) #5
  %.pre4.pre.i = load i32, ptr %i.k, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i: ; preds = %bb.e, %bb.d
  %.pre4.i = phi i32 [ %i.l, %bb.d ], [ %.pre4.pre.i, %bb.e ] ; 2 uses
  %i.s = icmp eq i32 %0, 0
  br i1 %i.s, label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i
  %i.t = load ptr, ptr %4, align 8, !tbaa !13
  %i.u = zext i32 %.pre4.i to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 -1, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !14
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !10
  br label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit

_ZN4llvm15SmallVectorImplIiE6appendEmi.exit:      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i
  %i.w = phi i32 [ %.pre.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i ], [ %.pre4.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i ]
  %i.x = add i32 %i.w, %0
  store i32 %i.x, ptr %i.k, align 8, !tbaa !10
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.y = udiv i32 %spec.store.select, %1          ; 3 uses
  %.not3644 = icmp ugt i32 %1, %spec.store.select
  br i1 %.not3644, label %.preheader43, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.g

.preheader43:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %bb.f
  %.not3746 = icmp eq i32 %i.y, %i.a
  br i1 %.not3746, label %.preheader, label %.lr.ph48

.lr.ph48:                                         ; preds = %.preheader43
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.03245 = phi i32 [ 0, %.lr.ph ], [ %i.al, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 2 uses
  %i.ad = add nuw nsw i32 %.03245, %i.f           ; 2 uses
  %i.ae = load i32, ptr %i.z, align 8, !tbaa !10  ; 2 uses
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.ad)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = zext i32 %i.ae to i64
  %i.ah = load ptr, ptr %4, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ag
  store i32 %i.ad, ptr %i.ai, align 1
  %i.aj = load i32, ptr %i.z, align 8, !tbaa !10
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.z, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.h, %bb.i
  %i.al = add nuw nsw i32 %.03245, 1              ; 2 uses
  %.not36 = icmp eq i32 %i.al, %i.y
  br i1 %.not36, label %.preheader43, label %bb.g, !llvm.loop !71

.preheader:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit40, %.preheader43
  %.not3849 = icmp eq i32 %0, 0
  br i1 %.not3849, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph48, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit40
  %.03147 = phi i32 [ %i.y, %.lr.ph48 ], [ %i.av, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit40 ]
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !11
  %.not.i39 = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i39, label %bb.l, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef -2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit40

bb.l:                                             ; preds = %bb.j
  %i.aq = zext i32 %i.ao to i64
  %i.ar = load ptr, ptr %4, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq
  store i32 -2, ptr %i.as, align 1
  %i.at = load i32, ptr %i.ab, align 8, !tbaa !10
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.ab, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit40

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit40: ; preds = %bb.k, %bb.l
  %i.av = add nuw nsw i32 %.03147, 1              ; 2 uses
  %.not37 = icmp eq i32 %i.av, %i.a
  br i1 %.not37, label %.preheader, label %bb.j, !llvm.loop !72

bb.m:                                             ; preds = %.lr.ph51, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit42
  %.050 = phi i32 [ %i.a, %.lr.ph51 ], [ %i.bd, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit42 ]
  %i.aw = load i32, ptr %i.am, align 8, !tbaa !10 ; 2 uses
  %i.ax = load i32, ptr %i.an, align 4, !tbaa !11
  %.not.i41 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i41, label %bb.o, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef -1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit42

bb.o:                                             ; preds = %bb.m
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %4, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ay
  store i32 -1, ptr %i.ba, align 1
  %i.bb = load i32, ptr %i.am, align 8, !tbaa !10
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.am, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit42

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit42: ; preds = %bb.n, %bb.o
  %i.bd = add nuw nsw i32 %.050, 1                ; 2 uses
  %.not38 = icmp eq i32 %i.bd, %0
  br i1 %.not38, label %.loopexit, label %bb.m, !llvm.loop !73

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit42, %.preheader, %bb.a, %bb.b, %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18DecodeINSERTQIMaskEjjiiRNS_15SmallVectorImplIiEE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 1                           ; 3 uses
  %i.b = and i32 %2, 63                           ; 3 uses
  %i.c = and i32 %3, 63                           ; 4 uses
  %i.d = urem i32 %i.b, %1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = urem i32 %i.c, %1
  %i.f = udiv i32 %i.c, %1                        ; 2 uses
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.b, 0
  %spec.store.select = select i1 %i.g, i32 64, i32 %i.b ; 3 uses
  %i.h = add nuw nsw i32 %spec.store.select, %i.c
  %i.i = icmp samesign ugt i32 %i.h, 64
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %0 to i64                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, %i.j               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %i.q = zext i32 %i.p to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.n, %i.q
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.r, i64 noundef %i.n, i64 noundef 4) #5
  %.pre4.pre.i = load i32, ptr %i.k, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i: ; preds = %bb.e, %bb.d
  %.pre4.i = phi i32 [ %i.l, %bb.d ], [ %.pre4.pre.i, %bb.e ] ; 2 uses
  %i.s = icmp eq i32 %0, 0
  br i1 %i.s, label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i
  %i.t = load ptr, ptr %4, align 8, !tbaa !13
  %i.u = zext i32 %.pre4.i to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 -1, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !14
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !10
  br label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit

_ZN4llvm15SmallVectorImplIiE6appendEmi.exit:      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i
  %i.w = phi i32 [ %.pre.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i ], [ %.pre4.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i ]
  %i.x = add i32 %i.w, %0
  store i32 %i.x, ptr %i.k, align 8, !tbaa !10
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.y = udiv i32 %spec.store.select, %1          ; 2 uses
  %.not4556 = icmp ugt i32 %1, %i.c
  br i1 %.not4556, label %.preheader55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.g

.preheader55:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %bb.f
  %.not4658 = icmp ugt i32 %1, %spec.store.select
  br i1 %.not4658, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader55
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.04057 = phi i32 [ 0, %.lr.ph ], [ %i.ak, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 3 uses
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !10  ; 2 uses
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %.04057)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.i:                                             ; preds = %bb.g
  %i.af = zext i32 %i.ad to i64
  %i.ag = load ptr, ptr %4, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  store i32 %.04057, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !10
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.z, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.h, %bb.i
  %i.ak = add nuw nsw i32 %.04057, 1              ; 2 uses
  %.not45 = icmp eq i32 %i.ak, %i.f
  br i1 %.not45, label %.preheader55, label %bb.g, !llvm.loop !74

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit50, %.preheader55
  %i.al = add nuw nsw i32 %i.f, %i.y              ; 2 uses
  %.not4761 = icmp eq i32 %i.al, %i.a
  br i1 %.not4761, label %.preheader, label %.lr.ph64

.lr.ph64:                                         ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph60, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit50
  %.03959 = phi i32 [ 0, %.lr.ph60 ], [ %i.aw, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit50 ] ; 2 uses
  %i.ao = add i32 %.03959, %0                     ; 2 uses
  %i.ap = load i32, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %i.aq = load i32, ptr %i.ac, align 4, !tbaa !11
  %.not.i49 = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i49, label %bb.l, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.ao)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit50

bb.l:                                             ; preds = %bb.j
  %i.ar = zext i32 %i.ap to i64
  %i.as = load ptr, ptr %4, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.ao, ptr %i.at, align 1
  %i.au = load i32, ptr %i.ab, align 8, !tbaa !10
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.ab, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit50

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit50: ; preds = %bb.k, %bb.l
  %i.aw = add nuw nsw i32 %.03959, 1              ; 2 uses
  %.not46 = icmp eq i32 %i.aw, %i.y
  br i1 %.not46, label %._crit_edge, label %bb.j, !llvm.loop !75

.preheader:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit52, %._crit_edge
  %.not4865 = icmp eq i32 %0, 0
  br i1 %.not4865, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph64, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit52
  %.03862 = phi i32 [ %i.al, %.lr.ph64 ], [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit52 ] ; 3 uses
  %i.az = load i32, ptr %i.am, align 8, !tbaa !10 ; 2 uses
  %i.ba = load i32, ptr %i.an, align 4, !tbaa !11
  %.not.i51 = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i51, label %bb.o, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %.03862)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit52

bb.o:                                             ; preds = %bb.m
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %4, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  store i32 %.03862, ptr %i.bd, align 1
  %i.be = load i32, ptr %i.am, align 8, !tbaa !10
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.am, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit52

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit52: ; preds = %bb.n, %bb.o
  %i.bg = add nuw nsw i32 %.03862, 1              ; 2 uses
  %.not47 = icmp eq i32 %i.bg, %i.a
  br i1 %.not47, label %.preheader, label %bb.m, !llvm.loop !76

bb.p:                                             ; preds = %.lr.ph67, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit54
  %.066 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.bo, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit54 ]
  %i.bh = load i32, ptr %i.ax, align 8, !tbaa !10 ; 2 uses
  %i.bi = load i32, ptr %i.ay, align 4, !tbaa !11
  %.not.i53 = icmp ult i32 %i.bh, %i.bi
  br i1 %.not.i53, label %bb.r, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef -1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit54

bb.r:                                             ; preds = %bb.p
  %i.bj = zext i32 %i.bh to i64
  %i.bk = load ptr, ptr %4, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  store i32 -1, ptr %i.bl, align 1
  %i.bm = load i32, ptr %i.ax, align 8, !tbaa !10
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.ax, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit54

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit54: ; preds = %bb.q, %bb.r
  %i.bo = add nuw nsw i32 %.066, 1                ; 2 uses
  %.not48 = icmp eq i32 %i.bo, %0
  br i1 %.not48, label %.loopexit, label %bb.p, !llvm.loop !77

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit54, %.preheader, %bb.a, %bb.b, %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18DecodeVPERMILPMaskEjjNS_8ArrayRefImEERKNS_5APIntERNS_15SmallVectorImplIiEE(i32 noundef %0, i32 noundef %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %3, 4294967295
  %.not22 = icmp eq i64 %i.a, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = mul i32 %1, %0
  %i.c = lshr i32 %i.b, 7
  %i.d = udiv i32 %0, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.h = icmp eq i32 %1, 64
  %i.i = sub i32 0, %i.d
  %wide.trip.count = and i64 %3, 4294967295
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 5 uses
  %i.j = and i64 %indvars.iv, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = load i32, ptr %i.e, align 8, !tbaa !22
  %i.m = icmp ult i32 %i.l, 65
  %i.n = load ptr, ptr %4, align 8
  %i.o = lshr i64 %indvars.iv, 6
  %i.p = and i64 %i.o, 67108863
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %.in.i.i = select i1 %i.m, ptr %4, ptr %i.q
  %i.r = load i64, ptr %.in.i.i, align 8, !tbaa !23
  %i.s = and i64 %i.r, %i.k
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.u = load i32, ptr %i.g, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.t, %i.u
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef -1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.e:                                             ; preds = %bb.c
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %5, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  store i32 -1, ptr %i.x, align 1
  %i.y = load i32, ptr %i.f, align 8, !tbaa !10
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.f, align 8, !tbaa !10
end_hunk_0
