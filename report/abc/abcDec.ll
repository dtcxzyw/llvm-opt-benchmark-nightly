Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDec?download=true
inline.NumInlined: 71
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Abc_TruthDecPerform:bb.a
  %i.fq = trunc nuw nsw i64 %indvars.iv177 to i32
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.fq) ; 0 uses
  %i.fs = load ptr, ptr %i.az, align 8, !tbaa !24
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv177
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !26
  call void @Dau_DecTrySets(ptr noundef %i.fu, i32 noundef %.0.lcssa.i, i32 noundef %2) #22
  %putchar114 = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.ai

.critedge118:                                     ; preds = %Abc_TtSupportSize.exit
  call void @Dau_DecTrySets(ptr noundef %i.dl, i32 noundef %.0.lcssa.i, i32 noundef 0) #22
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge118, %bb.ah
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.fv = load i32, ptr %i.aw, align 8, !tbaa !23
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next178, %i.fw
  br i1 %i.fx, label %bb.ac, label %.loopexit, !llvm.loop !66

bb.aj:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.fy = load i32, ptr %0, align 8, !tbaa !21
  %i.fz = call ptr @Dsc_alloc_pool(i32 noundef %i.fy) #22 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !23
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aj
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not112, label %.critedge120.us, label %.lr.ph.split

.critedge120.us:                                  ; preds = %.lr.ph, %.critedge120.us
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %.critedge120.us ], [ 0, %.lr.ph ] ; 2 uses
  %.4134.us = phi i32 [ %i.gk, %.critedge120.us ], [ 0, %.lr.ph ]
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !24
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv174
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !26
  %i.gh = load i32, ptr %0, align 8, !tbaa !21
  %i.gi = call i32 @Dsc_Decompose(ptr noundef %i.gg, i32 noundef %i.gh, ptr noundef nonnull %i.b, ptr noundef %i.fz) #22 ; 0 uses
  %i.gj = call i32 @Dsc_CountAnds(ptr noundef nonnull %i.b) #22
  %i.gk = add nsw i32 %i.gj, %.4134.us            ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.gl = load i32, ptr %i.ga, align 8, !tbaa !23
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next175, %i.gm
  br i1 %i.gn, label %.critedge120.us, label %._crit_edge, !llvm.loop !67

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %.4134 = phi i32 [ %i.gy, %.lr.ph.split ], [ 0, %.lr.ph ]
  %i.go = trunc nuw nsw i64 %indvars.iv to i32
  %i.gp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.go) ; 0 uses
  %i.gq = load ptr, ptr %i.gd, align 8, !tbaa !24
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !26
  %i.gt = load i32, ptr %0, align 8, !tbaa !21
  %i.gu = call i32 @Dsc_Decompose(ptr noundef %i.gs, i32 noundef %i.gt, ptr noundef nonnull %i.b, ptr noundef %i.fz) #22 ; 0 uses
  %i.gv = load i8, ptr %i.b, align 16, !tbaa !13
  %.not113 = icmp eq i8 %i.gv, 0
  %i.gw = select i1 %.not113, ptr @.str.24, ptr %i.b
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.gw) ; 0 uses
  %i.gx = call i32 @Dsc_CountAnds(ptr noundef nonnull %i.b) #22
  %i.gy = add nsw i32 %i.gx, %.4134               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = load i32, ptr %i.ga, align 8, !tbaa !23
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp slt i64 %indvars.iv.next, %i.ha
  br i1 %i.hb, label %.lr.ph.split, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph.split, %.critedge120.us, %bb.aj
  %.4.lcssa = phi i32 [ 0, %bb.aj ], [ %i.gk, %.critedge120.us ], [ %i.gy, %.lr.ph.split ]
  call void @Dsc_free_pool(ptr noundef %i.fz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %bb.aa, %.preheader131, %.preheader, %bb.p, %._crit_edge152, %._crit_edge141, %._crit_edge, %Vec_StrFree.exit
  %.5 = phi i32 [ %.0103.lcssa, %Vec_StrFree.exit ], [ %.1.lcssa, %._crit_edge152 ], [ 0, %bb.p ], [ %.3.lcssa, %._crit_edge141 ], [ 0, %.preheader131 ], [ %.4.lcssa, %._crit_edge ], [ 0, %.preheader ], [ %i.cf, %bb.aa ], [ 0, %bb.ai ]
  %i.hc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %.5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.hd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #22
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %Abc_Clock.exit125, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %i.hf = load i64, ptr %3, align 8, !tbaa !69
  %i.hg = mul nsw i64 %i.hf, 1000000
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !70
  %i.hj = sdiv i64 %i.hi, 1000
  %i.hk = add nsw i64 %i.hj, %i.hg
  br label %Abc_Clock.exit125

Abc_Clock.exit125:                                ; preds = %.loopexit, %bb.ak
  %.0.i124 = phi i64 [ %i.hk, %bb.ak ], [ -1, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.hl = add i64 %.0.i124, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26)
  %i.hm = sitofp i64 %i.hl to double
  %i.hn = fdiv double %i.hm, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.34, double noundef %i.hn)
  ret void
}

declare ptr @Kit_PlaFromTruthNew(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @Dec_Factor(ptr noundef) local_unnamed_addr #10

declare void @Dec_GraphPrint(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @Bdc_ManAlloc(ptr noundef) local_unnamed_addr #10

declare i32 @Bdc_ManDecompose(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Bdc_ManAndNum(ptr noundef) local_unnamed_addr #10

declare void @Bdc_ManDecPrint(ptr noundef) local_unnamed_addr #10

declare void @Bdc_ManFree(ptr noundef) local_unnamed_addr #10

declare ptr @Kit_DsdDecomposeMux(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Kit_DsdPrintExpanded(ptr noundef) local_unnamed_addr #10

declare i32 @Kit_DsdCountAigNodes(ptr noundef) local_unnamed_addr #10

declare void @Kit_DsdNtkFree(ptr noundef) local_unnamed_addr #10

declare i32 @Dau_DsdCountAnds(ptr noundef) local_unnamed_addr #10

declare void @Dau_DecTrySets(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Dsc_alloc_pool(i32 noundef) local_unnamed_addr #10

declare i32 @Dsc_Decompose(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @Dsc_CountAnds(ptr noundef) local_unnamed_addr #10

declare void @Dsc_free_pool(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @Abc_TruthDecTest(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @Abc_TtStoreLoad(ptr noundef %0, i32 noundef %2) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Abc_TruthDecPerform(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %3)
  %i.c = icmp sgt i32 %2, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #22
  br label %.thread.i

bb.e:                                             ; preds = %bb.b
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %Abc_TtStoreFree.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  tail call void @free(ptr noundef nonnull %i.e) #22
  br label %Abc_TtStoreFree.exit

Abc_TtStoreFree.exit:                             ; preds = %bb.e, %.thread.i
  tail call void @free(ptr noundef nonnull %i.a) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %Abc_TtStoreFree.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_TruthDecRead(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 6) ; 2 uses
  %i.a = tail call ptr @Abc_TtStoreLoad(ptr noundef %0, i32 noundef %spec.store.select) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 7
  %i.d = add nsw i32 %spec.store.select, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 2 uses
  %i.g = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #25 ; 12 uses
  store i32 %i.f, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store i32 12, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 4 uses
  store i32 4095, ptr %i.i, align 4, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 3 uses
  store i32 -1, ptr %i.j, align 4, !tbaa !93
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.backedge, %bb.b
  %.012.i.i.i = phi i32 [ 9999, %bb.b ], [ %i.k, %.critedge.i.i.i.backedge ] ; 3 uses
  %i.k = add i32 %.012.i.i.i, 1                   ; 7 uses
  %i.l = and i32 %.012.i.i.i, 1
  %.not.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.not.i.i.i, label %.preheader.i.i.i, label %.critedge.i.i.i.backedge

.critedge.i.i.i.backedge:                         ; preds = %.lr.ph.i.i.i, %.critedge.i.i.i
  br label %.critedge.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i.i
  %.not15.i.i.i = icmp ult i32 %i.k, 9
  br i1 %.not15.i.i.i, label %Abc_PrimeCudd.exit.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = add nuw nsw i32 %.01116.i.i.i, 2         ; 3 uses
  %i.n = mul nuw nsw i32 %i.m, %i.m
  %.not.i.i.i = icmp ugt i32 %i.n, %i.k
  br i1 %.not.i.i.i, label %Abc_PrimeCudd.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !84

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.01116.i.i.i = phi i32 [ %i.m, %bb.c ], [ 3, %.preheader.i.i.i ] ; 2 uses
  %i.o = urem i32 %i.k, %.01116.i.i.i
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge.i.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i.i:                           ; preds = %.preheader.i.i.i, %bb.c
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 6 uses
  %or.cond.i.i.i.i = icmp samesign ult i32 %.012.i.i.i, 15
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 16, i32 %i.k ; 2 uses
  store i32 %spec.store.select.i.i.i.i, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 5 uses
  %i.s = zext nneg i32 %spec.store.select.i.i.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #23 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !42
  store i32 %i.k, ptr %i.r, align 4, !tbaa !40
  %.not.i3.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i3.i.i, label %Vec_MemAllocForTTSimple.exit, label %bb.d

bb.d:                                             ; preds = %Abc_PrimeCudd.exit.i.i
  %i.w = zext nneg i32 %i.k to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 -1, i64 %i.x, i1 false)
  br label %Vec_MemAllocForTTSimple.exit

Vec_MemAllocForTTSimple.exit:                     ; preds = %Abc_PrimeCudd.exit.i.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.q, ptr %i.y, align 8, !tbaa !94
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 8 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 8 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !40
  store i32 10000, ptr %i.z, align 8, !tbaa !41
  %i.ab = tail call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 11 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !23
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_MemAllocForTTSimple.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %Vec_MemHashInsert.exit
  %i.am = phi ptr [ null, %.lr.ph ], [ %i.jy, %Vec_MemHashInsert.exit ] ; 4 uses
  %i.an = phi ptr [ null, %.lr.ph ], [ %i.jz, %Vec_MemHashInsert.exit ] ; 10 uses
  %i.ao = phi i32 [ %i.f, %.lr.ph ], [ %i.ff, %Vec_MemHashInsert.exit ]
  %i.ap = phi i32 [ 0, %.lr.ph ], [ %i.ka, %Vec_MemHashInsert.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_MemHashInsert.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26 ; 10 uses
  %.val15.i = load i32, ptr %i.r, align 4, !tbaa !40 ; 2 uses
  %i.as = icmp sgt i32 %i.ap, %.val15.i
  br i1 %i.as, label %bb.f, label %Vec_MemHashResize.exit.i

bb.f:                                             ; preds = %bb.e
  %i.at = shl nsw i32 %.val15.i, 1
  %i.au = add i32 %i.at, -1
  br label %.critedge.i.i.i18

.critedge.i.i.i18:                                ; preds = %.critedge.i.i.i18.backedge, %bb.f
  %.012.i.i.i16 = phi i32 [ %i.au, %bb.f ], [ %i.av, %.critedge.i.i.i18.backedge ] ; 2 uses
  %i.av = add i32 %.012.i.i.i16, 1                ; 9 uses
  %i.aw = and i32 %.012.i.i.i16, 1
  %.not.not.i.i.i17 = icmp eq i32 %i.aw, 0
  br i1 %.not.not.i.i.i17, label %.preheader.i.i.i19, label %.critedge.i.i.i18.backedge

.critedge.i.i.i18.backedge:                       ; preds = %.lr.ph.i.i.i21, %.critedge.i.i.i18
  br label %.critedge.i.i.i18

.preheader.i.i.i19:                               ; preds = %.critedge.i.i.i18
  %.not15.i.i.i20 = icmp ult i32 %i.av, 9
  br i1 %.not15.i.i.i20, label %Abc_PrimeCudd.exit.i.i24, label %.lr.ph.i.i.i21

bb.g:                                             ; preds = %.lr.ph.i.i.i21
  %i.ax = add nuw nsw i32 %.01116.i.i.i22, 2      ; 3 uses
  %i.ay = mul nuw nsw i32 %i.ax, %i.ax
  %.not.i.i.i23 = icmp ugt i32 %i.ay, %i.av
  br i1 %.not.i.i.i23, label %Abc_PrimeCudd.exit.i.i24, label %.lr.ph.i.i.i21, !llvm.loop !84

.lr.ph.i.i.i21:                                   ; preds = %.preheader.i.i.i19, %bb.g
  %.01116.i.i.i22 = phi i32 [ %i.ax, %bb.g ], [ 3, %.preheader.i.i.i19 ] ; 2 uses
  %i.az = urem i32 %i.av, %.01116.i.i.i22
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.critedge.i.i.i18.backedge, label %bb.g

Abc_PrimeCudd.exit.i.i24:                         ; preds = %.preheader.i.i.i19, %bb.g
  %i.bb = load i32, ptr %i.q, align 8, !tbaa !41
  %.not.i.i.i.i = icmp slt i32 %i.bb, %i.av
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !42  ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.h, label %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i.i

Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i.i:      ; preds = %Abc_PrimeCudd.exit.i.i24
  %.pre40.i.i = zext nneg i32 %i.av to i64
  %.pre41.i.i = shl nuw nsw i64 %.pre40.i.i, 2
  br label %.lr.ph.i15.i.i

bb.h:                                             ; preds = %Abc_PrimeCudd.exit.i.i24
  %.not9.i.i.i.i = icmp eq ptr %i.bc, null
  %i.bd = zext nneg i32 %i.av to i64
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 3 uses
  br i1 %.not9.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = tail call ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef %i.be) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.be) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = phi ptr [ %i.bf, %bb.i ], [ %i.bg, %bb.j ] ; 2 uses
  store ptr %i.bh, ptr %i.v, align 8, !tbaa !42
  store i32 %i.av, ptr %i.q, align 8, !tbaa !41
  br label %.lr.ph.i15.i.i

.lr.ph.i15.i.i:                                   ; preds = %bb.k, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i.i
  %.pre-phi42.i.i = phi i64 [ %.pre41.i.i, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i.i ], [ %i.be, %bb.k ]
  %i.bi = phi ptr [ %i.bc, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i.i ], [ %i.bh, %bb.k ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 -1, i64 %.pre-phi42.i.i, i1 false), !tbaa !28
  store i32 %i.av, ptr %i.r, align 4, !tbaa !40
  store i32 0, ptr %i.aa, align 4, !tbaa !40
  %.val28.i.i = load i32, ptr %i.aj, align 4, !tbaa !33 ; 4 uses
  %i.bj = icmp sgt i32 %.val28.i.i, 0
  %.pre58 = load i32, ptr %i.g, align 8, !tbaa !37 ; 7 uses
  br i1 %i.bj, label %.lr.ph30.i.i.preheader, label %Vec_MemHashResize.exit.i

.lr.ph30.i.i.preheader:                           ; preds = %.lr.ph.i15.i.i
  %i.bk = load i32, ptr %i.h, align 8, !tbaa !35  ; 3 uses
  %i.bl = load i32, ptr %i.i, align 4, !tbaa !36  ; 3 uses
  %i.bm = icmp sgt i32 %.pre58, 0
  %i.bn = shl i32 %.pre58, 1                      ; 3 uses
  %smax.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax.i.i.i.i to i64 ; 2 uses
  %i.bo = sext i32 %.pre58 to i64
  %i.bp = shl nsw i64 %i.bo, 3                    ; 2 uses
  %.not = icmp eq i32 %i.bn, 8
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bq = icmp slt i32 %i.bn, 4
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod155 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.preheader, %Vec_IntPush.exit.i.i
  %.029.i.i = phi i32 [ %i.fe, %Vec_IntPush.exit.i.i ], [ 0, %.lr.ph30.i.i.preheader ] ; 3 uses
  %i.br = lshr i32 %.029.i.i, %i.bk
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !26 ; 2 uses
  %i.bv = and i32 %i.bl, %.029.i.i
  %i.bw = mul nsw i32 %i.bv, %.pre58
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bx ; 9 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %Vec_MemHashResize.exit.i.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph30.i.i
  br i1 %i.bm, label %.lr.ph.i.i.i.i.preheader, label %Vec_MemHashKey.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.l
  br i1 %.not, label %vector.body120, label %.lr.ph.i.i.i.i.preheader136

.lr.ph.i.i.i.i.preheader136:                      ; preds = %.lr.ph.i.i.i.i.preheader
  br i1 %i.bq, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i

vector.body120:                                   ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load124 = load <4 x i32>, ptr %i.by, align 4, !tbaa !28
  %wide.load125 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !28
  %i.ca = mul <4 x i32> %wide.load124, <i32 1699, i32 4177, i32 5147, i32 5647>
  %i.cb = mul <4 x i32> %wide.load125, <i32 6343, i32 7103, i32 7873, i32 8147>
  %i.cc = add <4 x i32> %i.cb, %i.ca
  %2 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cc)
  br label %Vec_MemHashKey.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader136, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader136 ] ; 6 uses
  %.012.i.i.i.i = phi i32 [ %i.de, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader136 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader136 ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.i.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !28
  %i.cf = and i64 %indvars.iv.i.i.i.i, 4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 16, !tbaa !28
  %i.ci = mul i32 %i.ch, %i.ce
  %i.cj = add i32 %i.ci, %.012.i.i.i.i
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !28
  %i.cm = and i64 %indvars.iv.next.i.i.i.i, 5
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !28
  %i.cp = mul i32 %i.co, %i.cl
  %i.cq = add i32 %i.cp, %i.cj
  %indvars.iv.next.i.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i.1
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !28
  %i.ct = and i64 %indvars.iv.next.i.i.i.i.1, 6
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !28
  %i.cw = mul i32 %i.cv, %i.cs
  %i.cx = add i32 %i.cw, %i.cq
  %indvars.iv.next.i.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i.2
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !28
  %i.da = and i64 %indvars.iv.next.i.i.i.i.2, 7
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !28
  %i.dd = mul i32 %i.dc, %i.cz
  %i.de = add i32 %i.dd, %i.cx                    ; 3 uses
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Vec_MemHashKey.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !85

Vec_MemHashKey.exit.i.i.i.loopexit.unr-lcssa:     ; preds = %.lr.ph.i.i.i.i
  br i1 %lcmp.mod.not, label %Vec_MemHashKey.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %Vec_MemHashKey.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader136
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader136 ], [ %indvars.iv.next.i.i.i.i.3, %Vec_MemHashKey.exit.i.i.i.loopexit.unr-lcssa ]
  %.012.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader136 ], [ %i.de, %Vec_MemHashKey.exit.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ], [ %indvars.iv.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %.012.i.i.i.i.epil = phi i32 [ %i.dl, %.lr.ph.i.i.i.i.epil ], [ %.012.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.i.i.i.epil
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !28
  %i.dh = and i64 %indvars.iv.i.i.i.i.epil, 7
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !28
  %i.dk = mul i32 %i.dj, %i.dg
  %i.dl = add i32 %i.dk, %.012.i.i.i.i.epil       ; 2 uses
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Vec_MemHashKey.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !86

Vec_MemHashKey.exit.i.i.i:                        ; preds = %Vec_MemHashKey.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %vector.body120, %bb.l
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.l ], [ %2, %vector.body120 ], [ %i.de, %Vec_MemHashKey.exit.i.i.i.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph.i.i.i.i.epil ]
  %.val.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !40
  %i.dm = urem i32 %.0.lcssa.i.i.i.i, %.val.i.i.i.i
  %.val16.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %.val16.i.i.i, i64 %i.dn ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !28 ; 4 uses
  %.not17.i.i.i = icmp eq i32 %i.dp, -1
  br i1 %.not17.i.i.i, label %Vec_MemHashLookup.exit.i.i, label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %Vec_MemHashKey.exit.i.i.i
  %i.dq = ashr i32 %i.dp, %i.bk
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !26
  %i.du = and i32 %i.dp, %i.bl
  %i.dv = mul nsw i32 %i.du, %.pre58
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dw
  %bcmp.i24.i.i = tail call i32 @bcmp(ptr %i.dx, ptr nonnull readonly %i.by, i64 %i.bp)
  %.not15.i1725.i.i = icmp eq i32 %bcmp.i24.i.i, 0
  br i1 %.not15.i1725.i.i, label %Vec_MemHashLookup.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i16.i.i
  %.val.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.dy = ashr i32 %i.ej, %i.bk
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !26
  %i.ec = and i32 %i.ej, %i.bl
  %i.ed = mul nsw i32 %i.ec, %.pre58
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ee
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ef, ptr nonnull readonly %i.by, i64 %i.bp)
  %.not15.i17.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not15.i17.i.i, label %Vec_MemHashLookup.exit.i.i.loopexit, label %bb.n, !llvm.loop !87

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.eg = phi i32 [ %i.dp, %.lr.ph.i.i ], [ %i.ej, %bb.m ]
  %i.eh = sext i32 %i.eg to i64                   ; 3 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !28 ; 4 uses
  %.not.i18.i.i = icmp eq i32 %i.ej, -1
  br i1 %.not.i18.i.i, label %.Vec_MemHashLookup.exit.loopexit_crit_edge.i.i, label %bb.m, !llvm.loop !87

.Vec_MemHashLookup.exit.loopexit_crit_edge.i.i:   ; preds = %bb.n
  %i.ek = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.eh
  br label %Vec_MemHashLookup.exit.i.i, !llvm.loop !87

Vec_MemHashLookup.exit.i.i.loopexit:              ; preds = %bb.m
  %i.el = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.eh
  br label %Vec_MemHashLookup.exit.i.i

Vec_MemHashLookup.exit.i.i:                       ; preds = %Vec_MemHashLookup.exit.i.i.loopexit, %Vec_MemHashKey.exit.i.i.i, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i.i, %.lr.ph.i16.i.i
  %.0.lcssa.i.i.i = phi ptr [ %i.do, %Vec_MemHashKey.exit.i.i.i ], [ %i.do, %.lr.ph.i16.i.i ], [ %i.ek, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i.i ], [ %i.el, %Vec_MemHashLookup.exit.i.i.loopexit ]
  %.val13.i.i = load i32, ptr %i.aa, align 4, !tbaa !40 ; 8 uses
  store i32 %.val13.i.i, ptr %.0.lcssa.i.i.i, align 4, !tbaa !28
  %i.em = load i32, ptr %i.z, align 8, !tbaa !41
  %i.en = icmp eq i32 %.val13.i.i, %i.em
  br i1 %i.en, label %bb.o, label %Vec_MemHashLookup.exit.i.i.Vec_IntPush.exit.i.i_crit_edge

Vec_MemHashLookup.exit.i.i.Vec_IntPush.exit.i.i_crit_edge: ; preds = %Vec_MemHashLookup.exit.i.i
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !42
  br label %Vec_IntPush.exit.i.i

bb.o:                                             ; preds = %Vec_MemHashLookup.exit.i.i
  %i.eo = icmp slt i32 %.val13.i.i, 16
  br i1 %i.eo, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ep = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i19.i.i = icmp eq ptr %i.ep, null
  br i1 %.not9.i.i19.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ep, i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.er = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.es = icmp samesign ult i32 %.val13.i.i, 1073741823
  %i.et = shl nuw nsw i32 %.val13.i.i, 1
  %spec.select.i.i.i = select i1 %i.es, i32 %i.et, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %.val13.i.i, %spec.select.i.i.i
  %.pre56 = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.t, label %Vec_IntPush.exit.i.i

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i.i.i = icmp eq ptr %.pre56, null
  %i.eu = zext nneg i32 %spec.select.i.i.i to i64
  %i.ev = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = tail call ptr @realloc(ptr noundef nonnull %.pre56, i64 noundef %i.ev) #26
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ex = tail call noalias ptr @malloc(i64 noundef %i.ev) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.u, %bb.v, %bb.q, %bb.r
  %i.ey = phi ptr [ %i.er, %bb.r ], [ %i.eq, %bb.q ], [ %i.ew, %bb.u ], [ %i.ex, %bb.v ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i.i.i, %bb.u ], [ %spec.select.i.i.i, %bb.v ]
  store ptr %i.ey, ptr %i.ac, align 8, !tbaa !42
  store i32 %spec.select.sink.i.i.i, ptr %i.z, align 8, !tbaa !41
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !40
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_MemHashLookup.exit.i.i.Vec_IntPush.exit.i.i_crit_edge, %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.s
  %i.ez = phi ptr [ %.pre, %Vec_MemHashLookup.exit.i.i.Vec_IntPush.exit.i.i_crit_edge ], [ %.pre56, %bb.s ], [ %i.ey, %Vec_IntGrow.exit11.sink.split.i.i.i ]
  %i.fa = phi i32 [ %.val13.i.i, %Vec_MemHashLookup.exit.i.i.Vec_IntPush.exit.i.i_crit_edge ], [ %.val13.i.i, %bb.s ], [ %.pre39.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.aa, align 4, !tbaa !40
  %i.fc = sext i32 %i.fa to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fc
  store i32 -1, ptr %i.fd, align 4, !tbaa !28
  %i.fe = add nuw nsw i32 %.029.i.i, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %.val28.i.i
  br i1 %exitcond.not, label %Vec_MemHashResize.exit.i.loopexit, label %.lr.ph30.i.i, !llvm.loop !88

Vec_MemHashResize.exit.i.loopexit:                ; preds = %.lr.ph30.i.i, %Vec_IntPush.exit.i.i
  %.pre57 = load i32, ptr %i.g, align 8, !tbaa !37
  br label %Vec_MemHashResize.exit.i

Vec_MemHashResize.exit.i:                         ; preds = %Vec_MemHashResize.exit.i.loopexit, %.lr.ph.i15.i.i, %bb.e
  %i.ff = phi i32 [ %.pre57, %Vec_MemHashResize.exit.i.loopexit ], [ %.pre58, %.lr.ph.i15.i.i ], [ %i.ao, %bb.e ] ; 10 uses
  %i.fg = phi i32 [ %.val28.i.i, %Vec_MemHashResize.exit.i.loopexit ], [ %.val28.i.i, %.lr.ph.i15.i.i ], [ %i.ap, %bb.e ] ; 2 uses
  %i.fh = icmp sgt i32 %i.ff, 0
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i, label %Vec_MemHashKey.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %Vec_MemHashResize.exit.i
  %i.fi = shl nuw i32 %i.ff, 1                    ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.fi, i32 1)
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64 ; 2 uses
  %.not134 = icmp eq i32 %i.ff, 4
  br i1 %.not134, label %vector.body, label %.lr.ph.i.i21.i.preheader

.lr.ph.i.i21.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i
  %xtraiter156 = and i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.fj = icmp slt i32 %i.fi, 4
  br i1 %i.fj, label %.lr.ph.i.i21.i.epil.preheader, label %.lr.ph.i.i21.i.preheader.new

.lr.ph.i.i21.i.preheader.new:                     ; preds = %.lr.ph.i.i21.i.preheader
  %unroll_iter161 = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %.lr.ph.i.i21.i

vector.body:                                      ; preds = %.lr.ph.preheader.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !28
  %wide.load112 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !28
  %i.fl = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %i.fm = mul <4 x i32> %wide.load112, <i32 6343, i32 7103, i32 7873, i32 8147>
  %bin.rdx = add <4 x i32> %i.fm, %i.fl
  %i.fn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %Vec_MemHashKey.exit.i.i

.lr.ph.i.i21.i:                                   ; preds = %.lr.ph.i.i21.i, %.lr.ph.i.i21.i.preheader.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i21.i.preheader.new ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i21.i ] ; 6 uses
  %.012.i.i22.i = phi i32 [ 0, %.lr.ph.i.i21.i.preheader.new ], [ %i.gp, %.lr.ph.i.i21.i ]
  %niter162 = phi i64 [ 0, %.lr.ph.i.i21.i.preheader.new ], [ %niter162.next.3, %.lr.ph.i.i21.i ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !28
  %i.fq = and i64 %indvars.iv.i.i.i, 4
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 16, !tbaa !28
  %i.ft = mul i32 %i.fs, %i.fp
  %i.fu = add i32 %i.ft, %.012.i.i22.i
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %i.fx = and i64 %indvars.iv.next.i.i.i, 5
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !28
  %i.ga = mul i32 %i.fz, %i.fw
  %i.gb = add i32 %i.ga, %i.fu
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i.i.1
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !28
  %i.ge = and i64 %indvars.iv.next.i.i.i.1, 6
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !28
  %i.gh = mul i32 %i.gg, %i.gd
  %i.gi = add i32 %i.gh, %i.gb
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i.i.2
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !28
  %i.gl = and i64 %indvars.iv.next.i.i.i.2, 7
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !28
  %i.go = mul i32 %i.gn, %i.gk
  %i.gp = add i32 %i.go, %i.gi                    ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter162.next.3 = add i64 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i64 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i21.i, !llvm.loop !89

Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.i21.i
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i21.i.epil.preheader

.lr.ph.i.i21.i.epil.preheader:                    ; preds = %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i21.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i21.i.preheader ], [ %indvars.iv.next.i.i.i.3, %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa ]
  %.012.i.i22.i.epil.init = phi i32 [ 0, %.lr.ph.i.i21.i.preheader ], [ %i.gp, %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i.i21.i.epil

.lr.ph.i.i21.i.epil:                              ; preds = %.lr.ph.i.i21.i.epil, %.lr.ph.i.i21.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i21.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i.i21.i.epil.preheader ] ; 3 uses
  %.012.i.i22.i.epil = phi i32 [ %i.gw, %.lr.ph.i.i21.i.epil ], [ %.012.i.i22.i.epil.init, %.lr.ph.i.i21.i.epil.preheader ]
  %epil.iter157 = phi i64 [ %epil.iter157.next, %.lr.ph.i.i21.i.epil ], [ 0, %.lr.ph.i.i21.i.epil.preheader ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i.epil
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !28
  %i.gs = and i64 %indvars.iv.i.i.i.epil, 7
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !28
  %i.gv = mul i32 %i.gu, %i.gr
  %i.gw = add i32 %i.gv, %.012.i.i22.i.epil       ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter157.next = add i64 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i64 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i21.i.epil, !llvm.loop !90

Vec_MemHashKey.exit.i.i:                          ; preds = %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i21.i.epil, %vector.body, %Vec_MemHashResize.exit.i
  %.0.lcssa.i.i16.i = phi i32 [ 0, %Vec_MemHashResize.exit.i ], [ %i.fn, %vector.body ], [ %i.gp, %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa ], [ %i.gw, %.lr.ph.i.i21.i.epil ]
  %.val.i.i17.i = load i32, ptr %i.r, align 4, !tbaa !40
  %i.gx = urem i32 %.0.lcssa.i.i16.i, %.val.i.i17.i
  %.val16.i.i = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.val16.i.i, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !28 ; 4 uses
  %.not17.i.i = icmp eq i32 %i.ha, -1
  br i1 %.not17.i.i, label %Vec_MemHashLookup.exit.thread.i, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %Vec_MemHashKey.exit.i.i
  %i.hb = load i32, ptr %i.h, align 8, !tbaa !35  ; 2 uses
  %i.hc = load i32, ptr %i.i, align 4, !tbaa !36  ; 2 uses
  %i.hd = sext i32 %i.ff to i64
  %i.he = shl nsw i64 %i.hd, 3                    ; 2 uses
  %i.hf = ashr i32 %i.ha, %i.hb
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !26
  %i.hj = and i32 %i.hc, %i.ha
  %i.hk = mul nsw i32 %i.hj, %i.ff
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hl
  %bcmp.i41.i = tail call i32 @bcmp(ptr %i.hm, ptr readonly %i.ar, i64 %i.he)
  %.not15.i42.i = icmp eq i32 %bcmp.i41.i, 0
  br i1 %.not15.i42.i, label %Vec_MemHashInsert.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i18.i
  %.val.i19.i = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.hn = ashr i32 %i.hy, %i.hb
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !26
  %i.hr = and i32 %i.hy, %i.hc
  %i.hs = mul nsw i32 %i.hr, %i.ff
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.ht
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.hu, ptr readonly %i.ar, i64 %i.he)
  %.not15.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not15.i.i, label %Vec_MemHashInsert.exit, label %bb.x, !llvm.loop !87

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %i.hv = phi i32 [ %i.ha, %.lr.ph.i ], [ %i.hy, %bb.w ]
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %.val.i19.i, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !28 ; 4 uses
  %.not.i20.i = icmp eq i32 %i.hy, -1
  br i1 %.not.i20.i, label %Vec_MemHashLookup.exit.thread.i.loopexit, label %bb.w, !llvm.loop !87

Vec_MemHashLookup.exit.thread.i.loopexit:         ; preds = %bb.x
  %i.hz = getelementptr inbounds [4 x i8], ptr %.val.i19.i, i64 %i.hw
  br label %Vec_MemHashLookup.exit.thread.i

Vec_MemHashLookup.exit.thread.i:                  ; preds = %Vec_MemHashLookup.exit.thread.i.loopexit, %Vec_MemHashKey.exit.i.i
  %.0.lcssa.i30.i = phi ptr [ %i.gz, %Vec_MemHashKey.exit.i.i ], [ %i.hz, %Vec_MemHashLookup.exit.thread.i.loopexit ]
  %.val14.i = load i32, ptr %i.aa, align 4, !tbaa !40 ; 8 uses
  store i32 %.val14.i, ptr %.0.lcssa.i30.i, align 4, !tbaa !28
  %i.ia = load i32, ptr %i.z, align 8, !tbaa !41
  %i.ib = icmp eq i32 %.val14.i, %i.ia
  br i1 %i.ib, label %bb.y, label %Vec_MemHashLookup.exit.thread.i.Vec_IntPush.exit.i_crit_edge

Vec_MemHashLookup.exit.thread.i.Vec_IntPush.exit.i_crit_edge: ; preds = %Vec_MemHashLookup.exit.thread.i
  %.pre59 = load ptr, ptr %i.ac, align 8, !tbaa !42
  br label %Vec_IntPush.exit.i

bb.y:                                             ; preds = %Vec_MemHashLookup.exit.thread.i
  %i.ic = icmp slt i32 %.val14.i, 16
  br i1 %i.ic, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.id = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not9.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ie = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.id, i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ab:                                            ; preds = %bb.z
  %i.if = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ac:                                            ; preds = %bb.y
  %i.ig = icmp samesign ult i32 %.val14.i, 1073741823
  %i.ih = shl nuw nsw i32 %.val14.i, 1
  %spec.select.i.i = select i1 %i.ig, i32 %i.ih, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val14.i, %spec.select.i.i
  %.pre60 = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.ad, label %Vec_IntPush.exit.i

bb.ad:                                            ; preds = %bb.ac
  %.not9.i10.i.i = icmp eq ptr %.pre60, null
  %i.ii = zext nneg i32 %spec.select.i.i to i64
  %i.ij = shl nuw nsw i64 %i.ii, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ik = tail call ptr @realloc(ptr noundef nonnull %.pre60, i64 noundef %i.ij) #26
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.af:                                            ; preds = %bb.ad
  %i.il = tail call noalias ptr @malloc(i64 noundef %i.ij) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ae, %bb.af, %bb.aa, %bb.ab
  %storemerge = phi ptr [ %i.if, %bb.ab ], [ %i.ie, %bb.aa ], [ %i.ik, %bb.ae ], [ %i.il, %bb.af ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.ab ], [ 16, %bb.aa ], [ %spec.select.i.i, %bb.ae ], [ %spec.select.i.i, %bb.af ]
  store ptr %storemerge, ptr %i.ac, align 8, !tbaa !42
  store i32 %spec.select.sink.i.i, ptr %i.z, align 8, !tbaa !41
  %.pre.i = load i32, ptr %i.aa, align 4, !tbaa !40
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_MemHashLookup.exit.thread.i.Vec_IntPush.exit.i_crit_edge, %Vec_IntGrow.exit11.sink.split.i.i, %bb.ac
  %i.im = phi ptr [ %.pre59, %Vec_MemHashLookup.exit.thread.i.Vec_IntPush.exit.i_crit_edge ], [ %.pre60, %bb.ac ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.in = phi i32 [ %.val14.i, %Vec_MemHashLookup.exit.thread.i.Vec_IntPush.exit.i_crit_edge ], [ %.val14.i, %bb.ac ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.io = add nsw i32 %i.in, 1
  store i32 %i.io, ptr %i.aa, align 4, !tbaa !40
  %i.ip = sext i32 %i.in to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.ip
  store i32 -1, ptr %i.iq, align 4, !tbaa !28
  %i.ir = load i32, ptr %i.aj, align 4, !tbaa !33 ; 3 uses
  %i.is = load i32, ptr %i.h, align 8, !tbaa !35  ; 2 uses
  %i.it = ashr i32 %i.ir, %i.is                   ; 6 uses
  %i.iu = load i32, ptr %i.j, align 4, !tbaa !93  ; 2 uses
  %i.iv = icmp slt i32 %i.iu, %i.it
  br i1 %i.iv, label %bb.ag, label %Vec_IntPush.exit.i.Vec_MemPush.exit.i_crit_edge

Vec_IntPush.exit.i.Vec_MemPush.exit.i_crit_edge:  ; preds = %Vec_IntPush.exit.i
  %.pre61 = sext i32 %i.it to i64
  br label %Vec_MemPush.exit.i

bb.ag:                                            ; preds = %Vec_IntPush.exit.i
  %i.iw = load i32, ptr %i.al, align 8, !tbaa !97 ; 3 uses
  %.not36.i.i.i = icmp slt i32 %i.it, %i.iw
  br i1 %.not36.i.i.i, label %.lr.ph.i.i23.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not37.i.i.i = icmp eq ptr %i.an, null
  %.not38.i.i.i = icmp eq i32 %i.iw, 0
  %i.ix = shl nsw i32 %i.iw, 1
  %i.iy = add nsw i32 %i.it, 32
  %i.iz = select i1 %.not38.i.i.i, i32 %i.iy, i32 %i.ix ; 2 uses
  store i32 %i.iz, ptr %i.al, align 8, !tbaa !97
  %i.ja = sext i32 %i.iz to i64
  %i.jb = shl nsw i64 %i.ja, 3                    ; 2 uses
  br i1 %.not37.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jc = tail call ptr @realloc(ptr noundef nonnull %i.an, i64 noundef %i.jb) #26
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jd = tail call noalias ptr @malloc(i64 noundef %i.jb) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.je = phi ptr [ %i.jc, %bb.ai ], [ %i.jd, %bb.aj ] ; 3 uses
  store ptr %i.je, ptr %i.ak, align 8, !tbaa !34
  br label %.lr.ph.i.i23.i

.lr.ph.i.i23.i:                                   ; preds = %bb.ag, %bb.ak
  %i.jf = phi ptr [ %i.am, %bb.ag ], [ %i.je, %bb.ak ]
  %i.jg = phi ptr [ %i.an, %bb.ag ], [ %i.je, %bb.ak ]
  %i.jh = shl i32 %i.ff, %i.is
  %i.ji = sext i32 %i.jh to i64
  %i.jj = shl nsw i64 %i.ji, 3
  %i.jk = sext i32 %i.iu to i64
  %wide.trip.count.i.i24.i = sext i32 %i.it to i64 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i23.i
  %indvars.iv.i.i25.i = phi i64 [ %i.jk, %.lr.ph.i.i23.i ], [ %indvars.iv.next.i.i26.i, %bb.al ]
  %indvars.iv.next.i.i26.i = add nsw i64 %indvars.iv.i.i25.i, 1 ; 3 uses
  %i.jl = tail call noalias ptr @malloc(i64 noundef %i.jj) #23
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %indvars.iv.next.i.i26.i
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !26
  %exitcond.not.i.i27.i = icmp eq i64 %indvars.iv.next.i.i26.i, %wide.trip.count.i.i24.i
  br i1 %exitcond.not.i.i27.i, label %._crit_edge.i.i.i, label %bb.al, !llvm.loop !91

._crit_edge.i.i.i:                                ; preds = %bb.al
  store i32 %i.it, ptr %i.j, align 4, !tbaa !93
  br label %Vec_MemPush.exit.i

Vec_MemPush.exit.i:                               ; preds = %Vec_IntPush.exit.i.Vec_MemPush.exit.i_crit_edge, %._crit_edge.i.i.i
  %.pre-phi = phi i64 [ %.pre61, %Vec_IntPush.exit.i.Vec_MemPush.exit.i_crit_edge ], [ %wide.trip.count.i.i24.i, %._crit_edge.i.i.i ]
  %i.jn = phi ptr [ %i.am, %Vec_IntPush.exit.i.Vec_MemPush.exit.i_crit_edge ], [ %i.jf, %._crit_edge.i.i.i ] ; 3 uses
  %i.jo = add nsw i32 %i.ir, 1                    ; 2 uses
  store i32 %i.jo, ptr %i.aj, align 4, !tbaa !33
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %.pre-phi
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !26
  %i.jr = load i32, ptr %i.i, align 4, !tbaa !36
  %i.js = and i32 %i.jr, %i.ir
  %i.jt = mul nsw i32 %i.js, %i.ff
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.ju
  %i.jw = sext i32 %i.ff to i64
  %i.jx = shl nsw i64 %i.jw, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jv, ptr readonly align 8 %i.ar, i64 %i.jx, i1 false)
  br label %Vec_MemHashInsert.exit

Vec_MemHashInsert.exit:                           ; preds = %bb.w, %.lr.ph.i18.i, %Vec_MemPush.exit.i
  %i.jy = phi ptr [ %i.jn, %Vec_MemPush.exit.i ], [ %i.am, %.lr.ph.i18.i ], [ %i.am, %bb.w ]
  %i.jz = phi ptr [ %i.jn, %Vec_MemPush.exit.i ], [ %i.an, %.lr.ph.i18.i ], [ %i.an, %bb.w ]
  %i.ka = phi i32 [ %i.jo, %Vec_MemPush.exit.i ], [ %i.fg, %.lr.ph.i18.i ], [ %i.fg, %bb.w ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kb = load i32, ptr %i.ae, align 8, !tbaa !23
  %i.kc = sext i32 %i.kb to i64
  %i.kd = icmp slt i64 %indvars.iv.next, %i.kc
  br i1 %i.kd, label %bb.e, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %Vec_MemHashInsert.exit, %Vec_MemAllocForTTSimple.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !24 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %i.kg, null
  br i1 %.not.i, label %Abc_TtStoreFree.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.kg) #22
  br label %Abc_TtStoreFree.exit

Abc_TtStoreFree.exit:                             ; preds = %._crit_edge, %bb.am
  tail call void @free(ptr noundef nonnull %i.kf) #22
  tail call void @free(ptr noundef nonnull %i.a) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %Abc_TtStoreFree.exit
  %.014 = phi ptr [ %i.g, %Abc_TtStoreFree.exit ], [ null, %bb.a ]
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define noundef i32 @Abc_DecTest(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.e, label %Abc_TtStoreTest.exit

bb.e:                                             ; preds = %bb.d
  %i.d = tail call ptr @Abc_TtStoreLoad(ptr noundef %0, i32 noundef -1) ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Abc_TtStoreTest.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @Abc_TtStoreWrite(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.d, i32 noundef 0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i, label %Abc_TtStoreFree.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.g) #22
  br label %Abc_TtStoreFree.exit.i

Abc_TtStoreFree.exit.i:                           ; preds = %.thread.i.i, %bb.f
  tail call void @free(ptr noundef nonnull %i.d) #22
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %0, ptr noundef nonnull @.str.11) ; 0 uses
  br label %Abc_TtStoreTest.exit

bb.g:                                             ; preds = %bb.c
  %or.cond = icmp ult i32 %1, 7
  br i1 %or.cond, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.i = tail call ptr @Abc_TtStoreLoad(ptr noundef %0, i32 noundef %2) ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Abc_TtStoreTest.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @Abc_TruthDecPerform(ptr noundef nonnull %i.i, i32 noundef %1, i32 noundef %3)
  %i.k = icmp sgt i32 %2, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 3 uses
  br i1 %i.k, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.thread.i.i13, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.n) #22
  br label %.thread.i.i13

bb.l:                                             ; preds = %bb.i
  %.not10.i.i12 = icmp eq ptr %i.m, null
  br i1 %.not10.i.i12, label %Abc_TtStoreFree.exit.i14, label %.thread.i.i13

.thread.i.i13:                                    ; preds = %bb.l, %bb.k, %bb.j
  tail call void @free(ptr noundef nonnull %i.m) #22
  br label %Abc_TtStoreFree.exit.i14

Abc_TtStoreFree.exit.i14:                         ; preds = %.thread.i.i13, %bb.l
  tail call void @free(ptr noundef nonnull %i.i) #22
  br label %Abc_TtStoreTest.exit

bb.m:                                             ; preds = %bb.g
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %1) ; 0 uses
  br label %Abc_TtStoreTest.exit

Abc_TtStoreTest.exit:                             ; preds = %Abc_TtStoreFree.exit.i14, %bb.h, %Abc_TtStoreFree.exit.i, %bb.e, %bb.m, %bb.d
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !30
  %i.q = tail call i32 @fflush(ptr noundef %i.p)  ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #10

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #14

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #14

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind allocsize(1) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!"long", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"any p2 pointer", !17, i64 0}
!19 = !{!"p2 long", !18, i64 0}
!20 = !{!"Abc_TtStore_t_", !10, i64 0, !10, i64 4, !10, i64 8, !19, i64 16}
!21 = !{!20, !10, i64 0}
!22 = !{!20, !10, i64 4}
!23 = !{!20, !10, i64 8}
!24 = !{!20, !19, i64 16}
!25 = !{!"p1 long", !17, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!10, !10, i64 0}
!29 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTS10Vec_Int_t_", !17, i64 0}
!32 = !{!"Vec_Mem_t_", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !19, i64 24, !31, i64 32, !31, i64 40}
!33 = !{!32, !10, i64 4}
!34 = !{!32, !19, i64 24}
!35 = !{!32, !10, i64 8}
!36 = !{!32, !10, i64 12}
!37 = !{!32, !10, i64 0}
!38 = !{!"p1 int", !17, i64 0}
!39 = !{!"Vec_Int_t_", !10, i64 0, !10, i64 4, !38, i64 8}
!40 = !{!39, !10, i64 4}
!41 = !{!39, !10, i64 0}
!42 = !{!39, !38, i64 8}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, i1 true, !"vprintf"}
!52 = distinct !{!52, !51, !"vprintf: argument 0"}
!53 = distinct !{null}
!54 = !{!52}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = !{!"timespec", !14, i64 0, !14, i64 8}
!69 = !{!68, !14, i64 0}
!70 = !{!68, !14, i64 8}
!71 = !{!"p1 omnipotent char", !17, i64 0}
!72 = !{!"Vec_Str_t_", !10, i64 0, !10, i64 4, !71, i64 8}
!73 = !{!72, !10, i64 4}
!74 = !{!72, !10, i64 0}
!75 = !{!72, !71, i64 8}
!76 = !{!"p1 _ZTS11Dec_Node_t_", !17, i64 0}
!77 = !{!"Dec_Edge_t_", !10, i64 0, !10, i64 0}
!78 = !{!"Dec_Graph_t_", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !76, i64 16, !77, i64 24}
!79 = !{!78, !10, i64 4}
!80 = !{!78, !10, i64 8}
!81 = !{!78, !76, i64 16}
!82 = !{!"Bdc_Par_t_", !10, i64 0, !10, i64 4, !10, i64 8}
!83 = !{!82, !10, i64 0}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16, !96}
!86 = distinct !{!86, !27}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16, !96}
!90 = distinct !{!90, !27}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16}
!93 = !{!32, !10, i64 20}
!94 = !{!32, !31, i64 32}
!95 = !{!32, !31, i64 40}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!32, !10, i64 16}
end_hunk_0
