Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/internal?download=true
inline.NumInlined: 2057
inline.NumDeleted: 1077
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7CaDiCaL8Internal12local_searchEv:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.g = load i32, ptr %i.f, align 8
  %.not10 = icmp eq i32 %i.g, 0
  %or.cond16 = select i1 %or.cond, i1 true, i1 %.not10
  br i1 %or.cond16, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !235
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !184
  %.not11 = icmp eq ptr %i.j, %i.k
  br i1 %.not11, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2832
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.08 = phi i32 [ 0, %.preheader ], [ %i.o, %bb.e ] ; 2 uses
  switch i32 %.08, label %.critedge [
    i32 0, label %bb.d
    i32 10, label %bb.f
    i32 20, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !tbaa !296
  %.not13 = icmp slt i64 %i.m, %indvars.iv
  br i1 %.not13, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = tail call noundef i32 @_ZN7CaDiCaL8Internal18local_search_roundEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.n)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !470

bb.f:                                             ; preds = %bb.c
  %i.p = tail call noundef i32 @_ZN7CaDiCaL8Internal38try_to_satisfy_formula_by_saved_phasesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %.critedge

bb.g:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.a, align 4, !tbaa !261, !range !212, !noundef !213
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph2.i

.lr.ph2.i:                                        ; preds = %bb.g, %.critedge.i
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.s = tail call noundef i32 @_ZN7CaDiCaL8Internal6decideEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %.preheader.i, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit

.preheader.i:                                     ; preds = %.lr.ph2.i
  %i.t = load i8, ptr %i.a, align 4, !tbaa !261, !range !212, !noundef !213
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %i.v = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.v, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  tail call void @_ZN7CaDiCaL8Internal7analyzeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.w = load i8, ptr %i.a, align 4, !tbaa !261, !range !212, !noundef !213
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph.i, !llvm.loop !6

.critedge.i:                                      ; preds = %.lr.ph.i
  %.pre.pre.i = load i8, ptr %i.a, align 4, !tbaa !261, !range !212
  %i.y = trunc nuw i8 %.pre.pre.i to i1
  br i1 %i.y, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph2.i, !llvm.loop !7

_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit: ; preds = %.lr.ph2.i, %.preheader.i, %.critedge.i, %bb.h, %bb.g
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.f, %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, %bb.b, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.f ], [ 0, %bb.b ], [ 20, %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit ], [ 0, %bb.d ], [ %.08, %bb.c ]
  ret i32 %.09
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal5solveEb(ptr noundef nonnull align 8 dereferenceable(7288) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6760
  %i.d = load i32, ptr %i.c, align 8, !tbaa !217
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !211
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6728
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !214
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.l = phi double [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.g, double noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !223  ; 2 uses
  %.not19 = icmp eq ptr %i.n, null
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL5Proof11solve_queryEv(ptr noundef nonnull align 8 dereferenceable(128) %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3524 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !471
  %.not20 = icmp eq i32 %i.p, 0
  br i1 %.not20, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3528
  %i.r = load i32, ptr %i.q, align 8, !tbaa !472
  %.not21 = icmp eq i32 %i.r, 0
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN7CaDiCaL8Internal26sort_and_reuse_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5416 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.u = load i32, ptr %i.t, align 4, !tbaa !299  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = zext i1 %i.v to i64
  %i.x = load <2 x i64>, ptr %i.s, align 8, !tbaa !232
  %i.y = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.w, i64 1
  %i.z = add nsw <2 x i64> %i.x, %i.y
  store <2 x i64> %i.z, ptr %i.s, align 8, !tbaa !232
  %i.aa = sext i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5432 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !473
  %i.ad = add nsw i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !473
  %.not22 = icmp eq i32 %i.u, 0
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !474
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !175
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !477
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub i64 %i.af, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5440 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !478
  %i.ao = add i64 %i.al, %i.an
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !478
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !171
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !479
  %.not23 = icmp eq ptr %i.as, null
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN7CaDiCaL8Internal24renotify_trail_after_ilbEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 0, ptr %i.at, align 1, !tbaa !276
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2896
  store i64 0, ptr %i.au, align 8, !tbaa !277
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !261, !range !212, !noundef !213
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.az = load i8, ptr %i.ay, align 8, !range !212
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond7.i = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond7.i, label %.thread54.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 8 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !299 ; 2 uses
  %.not.i35 = icmp ne i32 %i.bc, 0
  %i.bd = load i32, ptr %i.o, align 4
  %.not3.i = icmp eq i32 %i.bd, 0
  %or.cond9.i = select i1 %.not.i35, i1 %.not3.i, i1 false
  br i1 %or.cond9.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %.pre.i = load i32, ptr %i.bb, align 4, !tbaa !299
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.be = phi i32 [ %.pre.i, %bb.p ], [ %i.bc, %bb.o ]
  %.not4.i = icmp eq i32 %i.be, 0
  br i1 %.not4.i, label %bb.r, label %_ZN7CaDiCaL8Internal14already_solvedEv.exit

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.bf, label %_ZN7CaDiCaL8Internal14already_solvedEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal14already_solvedEv.exit

_ZN7CaDiCaL8Internal14already_solvedEv.exit:      ; preds = %bb.q, %bb.r, %bb.s
  %i.bg = phi i1 [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.s ]
  %.0.i = phi i32 [ 0, %bb.q ], [ 0, %bb.r ], [ 20, %bb.s ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !169
  %i.bj = icmp eq i32 %i.bi, 0
  %or.cond.i = and i1 %i.bg, %i.bj
  %spec.store.select.i = select i1 %or.cond.i, i32 10, i32 %.0.i ; 2 uses
  %i.bk = icmp eq i32 %spec.store.select.i, 0     ; 2 uses
  %or.cond = and i1 %1, %i.bk
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN7CaDiCaL8Internal14already_solvedEv.exit
  %i.bl = load i32, ptr %i.bb, align 4, !tbaa !299
  %.not24 = icmp eq i32 %i.bl, 0
  br i1 %.not24, label %.thread, label %.split

.split:                                           ; preds = %bb.t
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  br label %.thread

bb.u:                                             ; preds = %_ZN7CaDiCaL8Internal14already_solvedEv.exit
  br i1 %i.bk, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.t, %.split, %bb.u
  %i.bm = tail call noundef i32 @_ZN7CaDiCaL8Internal15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %.0 = phi i32 [ %spec.store.select.i, %bb.u ], [ %i.bm, %.thread ] ; 2 uses
  %.not26 = icmp eq i32 %.0, 0
  br i1 %.not26, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !278, !range !212, !noundef !213
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.critedge9.thread.i, label %bb.x

.critedge9.thread.i:                              ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !279
  br label %_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3928 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !280
  %i.bu = sitofp i64 %i.bt to double
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !281
  %i.bx = sitofp i32 %i.bw to double
  %i.by = tail call noundef double @_ZNK7CaDiCaL8Internal5scaleEd(ptr noundef nonnull align 8 dereferenceable(7288) %0, double noundef %i.bx)
  %i.bz = fadd double %i.by, %i.bu
  %i.ca = fptosi double %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !282
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3000
  store i64 -1, ptr %i.cc, align 8, !tbaa !283
  %i.cd = load i64, ptr %i.bs, align 8, !tbaa !280
  %i.ce = sitofp i64 %i.cd to double
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !284
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = tail call noundef double @_ZNK7CaDiCaL8Internal5scaleEd(ptr noundef nonnull align 8 dereferenceable(7288) %0, double noundef %i.ch)
  %i.cj = fadd double %i.ci, %i.ce
  %i.ck = fptosi double %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2856
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !285
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !279
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3040
  store i64 -1, ptr %i.co, align 8, !tbaa !286
  %i.cp = load i64, ptr %i.bs, align 8, !tbaa !280 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 3300
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !287
  %i.cs = sext i32 %i.cr to i64
  %i.ct = add nsw i64 %i.cp, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !288
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3588
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !289
  %i.cx = sext i32 %i.cw to i64
  %i.cy = add nsw i64 %i.cp, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2872
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !290
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3316
  %i.db = load i32, ptr %i.da, align 4, !tbaa !291
  %i.dc = sext i32 %i.db to i64
  %i.dd = add nsw i64 %i.cp, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2848
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !292
  br label %_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit

_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit: ; preds = %.critedge9.thread.i, %bb.x
  %.sink.in.i = phi i32 [ %i.br, %.critedge9.thread.i ], [ %i.cn, %bb.x ]
  %.sink.i = sext i32 %.sink.in.i to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2952
  store i64 %.sink.i, ptr %i.df, align 8, !tbaa !293
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !294
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.dh, i64 0) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 3 uses
  store i64 %spec.select.i, ptr %i.di, align 8, !tbaa !295
  br i1 %1, label %bb.y, label %.thread75

bb.y:                                             ; preds = %_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit
  %i.dj = load i32, ptr %i.bb, align 4, !tbaa !299
  %.not27 = icmp eq i32 %i.dj, 0
  br i1 %.not27, label %bb.z, label %.thread54.thread

.thread75:                                        ; preds = %_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit
  tail call void @_ZN7CaDiCaL8Internal18init_search_limitsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.dk = load i32, ptr %i.bb, align 4, !tbaa !299
  %.not2776 = icmp eq i32 %i.dk, 0
  br i1 %.not2776, label %thread-pre-split77, label %.thread60

thread-pre-split77:                               ; preds = %.thread75
  %.pr78 = load i64, ptr %i.di, align 8, !tbaa !295
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split77, %bb.y
  %i.dl = phi i64 [ %.pr78, %thread-pre-split77 ], [ %spec.select.i, %bb.y ]
  %i.dm = icmp sgt i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i, label %_ZN7CaDiCaL8Internal10preprocessEv.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dn = load i64, ptr %i.di, align 8, !tbaa !295
  %i.do = icmp sgt i64 %i.dn, %indvars.iv.next.i
  br i1 %i.do, label %.lr.ph.i, label %_ZN7CaDiCaL8Internal10preprocessEv.exit, !llvm.loop !5

.lr.ph.i:                                         ; preds = %bb.z, %bb.aa
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dq = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal16preprocess_roundEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.dp)
  br i1 %i.dq, label %bb.aa, label %_ZN7CaDiCaL8Internal10preprocessEv.exit

_ZN7CaDiCaL8Internal10preprocessEv.exit:          ; preds = %bb.aa, %.lr.ph.i, %bb.z
  %i.dr = load i8, ptr %i.av, align 4, !tbaa !261, !range !212, !noundef !213
  %i.ds = trunc nuw i8 %i.dr to i1
  %..i = select i1 %i.ds, i32 20, i32 0
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %_ZN7CaDiCaL8Internal10preprocessEv.exit
  %.1 = phi i32 [ %.0, %bb.v ], [ %..i, %_ZN7CaDiCaL8Internal10preprocessEv.exit ] ; 3 uses
  br i1 %1, label %.thread54.thread, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %.not28 = icmp eq i32 %.1, 0
  br i1 %.not28, label %bb.ac, label %.thread54

bb.ac:                                            ; preds = %bb.ab
  %.pr = load i32, ptr %i.bb, align 4, !tbaa !299
  %.not29 = icmp eq i32 %.pr, 0
  br i1 %.not29, label %bb.ad, label %.thread60

bb.ad:                                            ; preds = %bb.ac
  %i.dt = tail call noundef i32 @_ZN7CaDiCaL8Internal12local_searchEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 2 uses
  %.not30 = icmp eq i32 %i.dt, 0
  br i1 %.not30, label %.thread57, label %.thread54

.thread57:                                        ; preds = %bb.ad
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !299
  %i.du = icmp eq i32 %.pre, 0
  br i1 %i.du, label %bb.ae, label %.thread60

bb.ae:                                            ; preds = %.thread57
  %i.dv = tail call noundef i32 @_ZN7CaDiCaL8Internal12lucky_phasesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %.thread54

.thread54:                                        ; preds = %bb.ab, %bb.ae, %bb.ad
  %.3 = phi i32 [ %i.dt, %bb.ad ], [ %i.dv, %bb.ae ], [ %.1, %bb.ab ] ; 2 uses
  switch i32 %.3, label %.thread54.thread [
    i32 10, label %bb.af
    i32 0, label %.thread60
  ]

bb.af:                                            ; preds = %.thread54
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !297, !range !212, !noundef !213
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ag, label %.thread54.thread

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i32, ptr %i.bb, align 4, !tbaa !299
  %.not33 = icmp eq i32 %i.dz, 0
  br i1 %.not33, label %.thread60, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  br label %.thread60

.thread60:                                        ; preds = %.thread75, %bb.ac, %.thread57, %.thread54, %bb.ah, %bb.ag
  %i.ea = tail call noundef i32 @_ZN7CaDiCaL8Internal27cdcl_loop_with_inprocessingEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %.thread54.thread

.thread54.thread:                                 ; preds = %bb.y, %bb.n, %.thread54, %bb.af, %.thread60, %.critedge
  %.4 = phi i32 [ %.1, %.critedge ], [ %i.ea, %.thread60 ], [ 10, %bb.af ], [ %.3, %.thread54 ], [ 20, %bb.n ], [ 0, %bb.y ] ; 4 uses
  tail call void @_ZN7CaDiCaL8Internal8finalizeEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.4)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.ec = load volatile i8, ptr %i.eb, align 8, !tbaa !172, !range !212, !noundef !213
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.ai, label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit

bb.ai:                                            ; preds = %.thread54.thread
  store volatile i8 0, ptr %i.eb, align 8, !tbaa !172
  br label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit

_ZN7CaDiCaL8Internal13reset_solvingEv.exit:       ; preds = %.thread54.thread, %bb.ai
  %switch.selectcmp.i = icmp eq i32 %.4, 20
  %switch.select.i = select i1 %switch.selectcmp.i, i8 48, i8 63
  %switch.selectcmp2.i = icmp eq i32 %.4, 10
  %switch.select3.i = select i1 %switch.selectcmp2.i, i8 49, i8 %switch.select.i
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext %switch.select3.i, i32 noundef 0)
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !170 ; 7 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 6760
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !217
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 3608
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !211
  %.not34 = icmp sgt i32 %i.eg, %i.ei
  br i1 %.not34, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %_ZN7CaDiCaL8Internal13reset_solvingEv.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 6728
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 3620
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !214
  %.not.i36 = icmp eq i32 %i.el, 0
  br i1 %.not.i36, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.em = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.ee)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit37

bb.al:                                            ; preds = %bb.aj
  %i.en = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.ee)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit37

_ZN7CaDiCaL8Internal4timeEv.exit37:               ; preds = %bb.ak, %bb.al
  %i.eo = phi double [ %i.em, %bb.ak ], [ %i.en, %bb.al ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ee, ptr noundef nonnull align 8 dereferenceable(36) %i.ej, double noundef %i.eo)
  br label %bb.am

bb.am:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit37, %_ZN7CaDiCaL8Internal13reset_solvingEv.exit
  ret i32 %.4
}

declare void @_ZN7CaDiCaL5Proof11solve_queryEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal26sort_and_reuse_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal24renotify_trail_after_ilbEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal14already_solvedEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !261, !range !212, !noundef !213
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.e = load i8, ptr %i.d, align 8, !range !212
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond7 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond7, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !299  ; 2 uses
  %.not = icmp ne i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.j = load i32, ptr %i.i, align 4
  %.not3 = icmp eq i32 %i.j, 0
  %or.cond9 = select i1 %.not, i1 %.not3, i1 false
  br i1 %or.cond9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %.pre = load i32, ptr %i.g, align 4, !tbaa !299
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.m = phi i1 [ true, %bb.d ], [ true, %bb.e ], [ false, %bb.f ]
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 20, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !169
  %i.p = icmp eq i32 %i.o, 0
  %or.cond = and i1 %i.m, %i.p
  %spec.store.select = select i1 %or.cond, i32 10, i32 %.0
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i32 [ %spec.store.select, %bb.g ], [ 20, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %i.b = load i32, ptr %i.a, align 8, !tbaa !480
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !171  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !481
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !481
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.k = load i32, ptr %i.j, align 8, !tbaa !482
  %i.l = icmp eq ptr %i.g, %i.i
  %i.m = icmp eq i32 %i.k, 0
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 42, i32 noundef 0)
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 43, i32 noundef 0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !171
  tail call void @_ZN7CaDiCaL8External15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(568) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %i.r, i8 noundef signext 114, i32 noundef 0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !261, !range !212, !noundef !213
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.w = load i32, ptr %i.v, align 4, !tbaa !299
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 20, %bb.g ]
  ret i32 %.0
}

declare noundef i32 @_ZN7CaDiCaL8Internal12lucky_phasesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal8finalizeEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.20", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3104 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.d = load i8, ptr %i.c, align 1, !tbaa !483, !range !212, !noundef !213
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300, !nonnull !213, !align !301
  %i.j = load i32, ptr %i.i, align 4, !tbaa !174  ; 2 uses
  %.not7174 = icmp eq i32 %i.j, 0
  br i1 %.not7174, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !484, !nonnull !213, !align !301
  %i.m = load i32, ptr %i.l, align 4, !tbaa !174  ; 2 uses
  %i.n = xor i32 %i.m, -1
  %i.o = lshr i32 %i.m, 31
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
end_hunk_0
