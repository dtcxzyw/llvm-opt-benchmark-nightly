Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrLoweringX64?download=true
inline.NumInlined: 3349
inline.NumDeleted: 241
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau7CodeGen3X6413IrLoweringX6428jumpOrAbortOnUndefNoFinalizeENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockERNS0_5LabelE:bb.a
  %i.at = icmp eq i32 %i.a, 1
  br i1 %i.at, label %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26, label %bb.al

_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26: ; preds = %bb.a, %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit
  %.1.i28 = phi ptr [ %.1.i, %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit ], [ %5, %bb.a ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !75, !nonnull !76, !align !77 ; 2 uses
  switch i8 %1, label %bb.ak [
    i8 26, label %bb.k
    i8 0, label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
    i8 5, label %bb.p
    i8 6, label %bb.q
    i8 7, label %bb.r
    i8 8, label %bb.s
    i8 9, label %bb.t
    i8 10, label %bb.u
    i8 11, label %bb.v
    i8 12, label %bb.w
    i8 13, label %bb.x
    i8 14, label %bb.y
    i8 15, label %bb.z
    i8 16, label %bb.aa
    i8 17, label %bb.ab
    i8 18, label %bb.ac
    i8 19, label %bb.ad
    i8 20, label %bb.ae
    i8 21, label %bb.af
    i8 22, label %bb.ag
    i8 23, label %bb.ah
    i8 24, label %bb.ai
    i8 25, label %bb.aj
  ]

bb.k:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643ud2Ev(ptr noundef nonnull align 8 dereferenceable(268) %i.av)
  br label %bb.ap

bb.l:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.m:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.n:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.o:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.p:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.q:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.r:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.s:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.t:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.u:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.v:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.w:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.x:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.y:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.z:                                             ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.aa:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.ab:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.ac:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.ad:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.ae:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.af:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.ag:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.ah:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.ai:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.aj:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

bb.ak:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26
  br label %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit

_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit: ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %.0.i = phi i8 [ 26, %bb.ak ], [ 24, %bb.aj ], [ 0, %bb.l ], [ 3, %bb.m ], [ 2, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 4, %bb.x ], [ 5, %bb.y ], [ 6, %bb.z ], [ 7, %bb.aa ], [ 8, %bb.ab ], [ 9, %bb.ac ], [ 10, %bb.ad ], [ 11, %bb.ae ], [ 12, %bb.af ], [ 23, %bb.ag ], [ 22, %bb.ah ], [ 25, %bb.ai ], [ 1, %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit.thread26 ]
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %i.av, i8 noundef zeroext %.0.i, ptr noundef nonnull align 4 dereferenceable(8) %.1.i28)
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !75, !nonnull !76, !align !77
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643ud2Ev(ptr noundef nonnull align 8 dereferenceable(268) %i.aw)
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !75, !nonnull !76, !align !77
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %i.ax, ptr noundef nonnull align 4 dereferenceable(8) %.1.i28)
  br label %bb.ap

bb.al:                                            ; preds = %_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE.exit
  %i.ay = icmp eq i8 %1, 26
  br i1 %i.ay, label %bb.am, label %bb.ao

.thread29:                                        ; preds = %bb.f, %bb.e
  %i.az = icmp eq i8 %1, 26
  br i1 %i.az, label %.thread33, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ba = icmp eq i32 %i.a, 9
  br i1 %i.ba, label %.thread33, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.bd = lshr i32 %2, 4
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !114
  %i.bg = getelementptr inbounds nuw [36 x i8], ptr %i.bf, i64 %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !117
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !117
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.ap, label %.thread33

.thread33:                                        ; preds = %.thread29, %bb.an, %bb.am
  %.1.i253235 = phi ptr [ %.1.i, %bb.am ], [ %.1.i, %bb.an ], [ %5, %.thread29 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !75, !nonnull !76, !align !77
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %i.bn, ptr noundef nonnull align 4 dereferenceable(8) %.1.i253235)
  br label %bb.ap

bb.ao:                                            ; preds = %.thread29, %bb.al
  %.1.i2531 = phi ptr [ %5, %.thread29 ], [ %.1.i, %bb.al ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !75, !nonnull !76, !align !77
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %i.bp, i8 noundef zeroext %1, ptr noundef nonnull align 4 dereferenceable(8) %.1.i2531)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread33, %bb.an, %bb.k, %_ZN4Luau7CodeGen19getNegatedConditionENS0_12ConditionX64E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6413IrLoweringX6419finalizeTargetLabelENS0_4IrOpEjRNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %1, 15
  switch i32 %i.a, label %_ZNSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE9push_backEOS4_.exit [
    i32 5, label %bb.b
    i32 9, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78, !nonnull !76, !align !77 ; 4 uses
  %i.d = lshr i32 %1, 4                           ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw [36 x i8], ptr %i.f, i64 %i.e
  %i.h = load i8, ptr %i.g, align 4, !tbaa !198
  %i.i = icmp eq i8 %i.h, 4
  br i1 %i.i, label %bb.c, label %_ZNSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.l = load i32, ptr %i.k, align 8, !tbaa !125
  %i.m = icmp ne i32 %2, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.o = load i64, ptr %i.n, align 8, !tbaa !254
  %i.p = add i64 %i.o, -1                         ; 2 uses
  %i.q = zext i32 %2 to i64
  %i.r = and i64 %i.p, %i.q                       ; 2 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !255  ; 2 uses
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !125
  %i.v = icmp eq i32 %i.u, %2
  br i1 %i.v, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01927.i.i33 = phi i64 [ %i.y, %.lr.ph ], [ %i.r, %bb.c ]
  %.01828.i.i32 = phi i64 [ %i.w, %.lr.ph ], [ 0, %bb.c ]
  %i.w = add i64 %.01828.i.i32, 1                 ; 2 uses
  %i.x = add i64 %i.w, %.01927.i.i33
  %i.y = and i64 %i.x, %i.p                       ; 2 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !125
  %i.ab = icmp eq i32 %i.aa, %2
  br i1 %i.ab, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, label %.lr.ph

_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit: ; preds = %.lr.ph, %bb.c
  %.lcssa = phi ptr [ %i.t, %bb.c ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !257 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !258 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.idx = shl nuw nsw i64 %i.ag, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %.not2034 = icmp eq i32 %i.af, 0
  br i1 %.not2034, label %_ZNSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE9push_backEOS4_.exit, label %.lr.ph36

.lr.ph36:                                         ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph36, %bb.d
  %.035 = phi ptr [ %i.ad, %.lr.ph36 ], [ %i.ap, %bb.d ] ; 2 uses
  %.sroa.03.0.copyload = load i32, ptr %.035, align 4, !tbaa !72
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = lshr i32 %.sroa.03.0.copyload, 4
  %i.am = zext nneg i32 %i.al to i64
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %i.am
  tail call void @_ZN4Luau7CodeGen3X6413IrRegAllocX6420recordAndFreeLastUseEjRNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(332) %i.ai, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(59) %i.ao, i32 noundef %2)
  %i.ap = getelementptr inbounds nuw i8, ptr %.035, i64 4 ; 2 uses
  %.not20 = icmp eq ptr %i.ap, %i.ah
  br i1 %.not20, label %_ZNSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE9push_backEOS4_.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  %i.aq = load i32, ptr %3, align 4, !tbaa !83
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %_ZNSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE9push_backEOS4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !259
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !58
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 12
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 3 uses
  %i.bb = lshr i32 %1, 4                          ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2528 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !199 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2520 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !200 ; 4 uses
  %i.bg = mul i64 %i.bf, 3
  %i.bh = lshr i64 %i.bg, 2
  %.not.i.i21 = icmp ult i64 %i.bd, %i.bh
  br i1 %.not.i.i21, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = icmp eq i64 %i.bd, 0
  br i1 %i.bi, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !125 ; 2 uses
  %i.bl = icmp eq i32 %i.bb, %i.bk
  br i1 %i.bl, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = add i64 %i.bf, -1                       ; 3 uses
  %i.bn = zext nneg i32 %i.bb to i64
  %i.bo = and i64 %i.bm, %i.bn
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.01832.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bu, %bb.l ]
  %.01931.i.i.i = phi i64 [ %i.bo, %bb.i ], [ %i.bw, %bb.l ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.01931.i.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !125 ; 2 uses
  %i.bs = icmp eq i32 %i.br, %i.bb
  br i1 %i.bs, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = icmp eq i32 %i.br, %i.bk
  br i1 %i.bt, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = add i64 %.01832.i.i.i, 1                ; 3 uses
  %i.bv = add i64 %i.bu, %.01931.i.i.i
  %i.bw = and i64 %i.bv, %i.bm
  %.not.i.i.i = icmp ugt i64 %i.bu, %i.bm
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.j, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.l, %bb.k, %bb.h, %bb.g
  tail call void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
  %.pre.i = load i64, ptr %i.be, align 8, !tbaa !200
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.j, %.loopexit.i.i, %bb.f
  %i.bx = phi i64 [ %.pre.i, %.loopexit.i.i ], [ %i.bf, %bb.f ], [ %i.bf, %bb.j ]
  %i.by = add i64 %i.bx, -1                       ; 3 uses
  %i.bz = zext nneg i32 %i.bb to i64
  %i.ca = and i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !57 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !125 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !125 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, %i.cd
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.m, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i
  %.02134.i.lcssa5.i = phi i64 [ %i.ca, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ], [ %i.co, %bb.m ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.02134.i.lcssa5.i
  store i32 %i.bb, ptr %i.ch, align 4, !tbaa !202
  %i.ci = load i64, ptr %i.bc, align 8, !tbaa !199
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.bc, align 8, !tbaa !199
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, %bb.m
  %i.ck = phi i32 [ %i.cq, %bb.m ], [ %i.cf, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %.02134.i7.i = phi i64 [ %i.co, %bb.m ], [ %i.ca, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ] ; 2 uses
  %.02035.i6.i = phi i64 [ %i.cm, %bb.m ], [ 0, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %i.cl = icmp eq i32 %i.ck, %i.bb
  br i1 %i.cl, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.cm = add i64 %.02035.i6.i, 1                 ; 3 uses
  %i.cn = add i64 %i.cm, %.02134.i7.i
  %i.co = and i64 %i.cn, %i.by                    ; 3 uses
  %.not.i3.i = icmp ule i64 %i.cm, %i.by
  tail call void @llvm.assume(i1 %.not.i3.i)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !125 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, %i.cd
  br i1 %i.cr, label %._crit_edge.i, label %.lr.ph.i

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit: ; preds = %.lr.ph.i, %._crit_edge.i
  %i.cs = phi i64 [ %.02134.i.lcssa5.i, %._crit_edge.i ], [ %.02134.i7.i, %.lr.ph.i ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.az, ptr %i.cu, align 4, !tbaa !125
  %i.cv = load i64, ptr %3, align 4, !tbaa !125   ; 2 uses
  %i.cw = load ptr, ptr %i.as, align 8, !tbaa !259 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !59
  %.not.i.i22 = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i.i22, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit
  store i64 %i.cv, ptr %i.cw, align 4, !tbaa !125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %i.bb, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !125
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store ptr %i.cz, ptr %i.as, align 8, !tbaa !259
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE9push_backEOS4_.exit

bb.o:                                             ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit
  %i.da = load ptr, ptr %i.ar, align 8, !tbaa !58 ; 5 uses
  %i.db = ptrtoint ptr %i.cw to i64
  %i.dc = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.p, label %_ZNKSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.df = sdiv exact i64 %i.dd, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 768614336404564650)
  %i.dj = select i1 %i.dh, i64 768614336404564650, i64 %i.di ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dk = mul nuw nsw i64 %i.dj, 12
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #19 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd ; 2 uses
  store i64 %i.cv, ptr %i.dm, align 4, !tbaa !125
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 %i.bb, ptr %.sroa.5.0..sroa_idx24, align 4, !tbaa !125
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.da, %i.cw
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %i.dl, %_ZNKSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i ], [ %i.da, %_ZNKSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !260, !alias.scope !261
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dn, %i.cw
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6413IrLoweringX6411ExitHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !253
end_hunk_0
