Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/internal?download=true
inline.NumInlined: 2017
inline.NumDeleted: 1076
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7CaDiCaL8Internal12local_searchEv:bb.a
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.g = load i32, ptr %i.f, align 8
  %.not10 = icmp eq i32 %i.g, 0
  %or.cond16 = select i1 %or.cond, i1 true, i1 %.not10
  br i1 %or.cond16, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !225
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !183
  %.not11 = icmp eq ptr %i.j, %i.k
  br i1 %.not11, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3888
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %_ZN7CaDiCaL8Internal18local_search_roundEi.exit
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %_ZN7CaDiCaL8Internal18local_search_roundEi.exit ] ; 5 uses
  %.08 = phi i32 [ 0, %.preheader ], [ %.0.i, %_ZN7CaDiCaL8Internal18local_search_roundEi.exit ] ; 2 uses
  switch i32 %.08, label %.critedge [
    i32 0, label %bb.d
    i32 10, label %bb.g
    i32 20, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.l, align 8, !tbaa !285
  %.not13 = icmp slt i64 %i.o, %indvars.iv
  br i1 %.not13, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load i32, ptr %i.d, align 8
  %.not.i = icmp eq i32 %i.r, 0
  %or.cond.i = select i1 %i.q, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZN7CaDiCaL8Internal18local_search_roundEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %0, align 8, !tbaa !163
  %i.t = or i32 %i.s, 16384
  store i32 %i.t, ptr %0, align 8, !tbaa !163
  store i8 1, ptr %i.m, align 2, !tbaa !306
  %i.u = load i32, ptr %i.n, align 8, !tbaa !307
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %indvars.iv, %i.v            ; 2 uses
  %i.x = udiv i64 9223372036854775807, %indvars.iv
  %i.y = icmp sgt i64 %i.x, %i.w
  %i.z = mul nsw i64 %i.w, %indvars.iv
  %.09.i = select i1 %i.y, i64 %i.z, i64 9223372036854775807
  %i.aa = tail call noundef i32 @_ZN7CaDiCaL8Internal10walk_roundElb(ptr noundef nonnull align 8 dereferenceable(5704) %0, i64 noundef %.09.i, i1 noundef zeroext true)
  store i8 0, ptr %i.m, align 2, !tbaa !306
  %i.ab = load i32, ptr %0, align 8, !tbaa !163
  %i.ac = and i32 %i.ab, -16385
  store i32 %i.ac, ptr %0, align 8, !tbaa !163
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 76, i32 noundef 0)
  br label %_ZN7CaDiCaL8Internal18local_search_roundEi.exit

_ZN7CaDiCaL8Internal18local_search_roundEi.exit:  ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ 0, %bb.e ], [ %i.aa, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !402

bb.g:                                             ; preds = %bb.c
  %i.ad = tail call noundef i32 @_ZN7CaDiCaL8Internal38try_to_satisfy_formula_by_saved_phasesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph2.i

.lr.ph2.i:                                        ; preds = %bb.h, %.critedge.i
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.ag = tail call noundef i32 @_ZN7CaDiCaL8Internal6decideEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %.not.i17 = icmp eq i32 %i.ag, 0
  br i1 %.not.i17, label %.preheader.i, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit

.preheader.i:                                     ; preds = %.lr.ph2.i
  %i.ah = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %i.aj = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.aj, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_ZN7CaDiCaL8Internal7analyzeEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.ak = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph.i, !llvm.loop !7

.critedge.i:                                      ; preds = %.lr.ph.i
  %.pre.pre.i = load i8, ptr %i.a, align 4, !tbaa !251, !range !220
  %i.am = trunc nuw i8 %.pre.pre.i to i1
  br i1 %i.am, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph2.i, !llvm.loop !8

_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit: ; preds = %.lr.ph2.i, %.preheader.i, %.critedge.i, %bb.i, %bb.h
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.g, %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, %bb.b, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ %i.ad, %bb.g ], [ 0, %bb.b ], [ 20, %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit ], [ 0, %bb.d ], [ %.08, %bb.c ]
  ret i32 %.09
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal5solveEb(ptr noundef nonnull align 8 dereferenceable(5704) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL5Proof11solve_queryEv(ptr noundef nonnull align 8 dereferenceable(128) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3524 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !272
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3528
  %i.f = load i32, ptr %i.e, align 8, !tbaa !273
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7CaDiCaL8Internal26sort_and_reuse_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5408 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.i = load i32, ptr %i.h, align 4, !tbaa !274  ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = load <2 x i64>, ptr %i.g, align 8, !tbaa !222
  %i.m = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.k, i64 1
  %i.n = add nsw <2 x i64> %i.l, %i.m
  store <2 x i64> %i.n, ptr %i.g, align 8, !tbaa !222
  %i.o = sext i32 %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5424 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !275
  %i.r = add nsw i64 %i.q, %i.o
  store i64 %i.r, ptr %i.p, align 8, !tbaa !275
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %i.t = load i64, ptr %i.s, align 8, !tbaa !276
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !279
  %i.y = sext i32 %i.x to i64
  %i.z = sub i64 %i.t, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5432 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !280
  %i.ac = add i64 %i.z, %i.ab
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !280
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !170
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !403
  %.not22 = icmp eq ptr %i.ag, null
  br i1 %.not22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN7CaDiCaL8Internal24renotify_trail_after_ilbEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 0, ptr %i.ah, align 1, !tbaa !281
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2896
  store i64 0, ptr %i.ai, align 8, !tbaa !282
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !251, !range !220, !noundef !221
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.an = load i8, ptr %i.am, align 8, !range !220
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond7.i = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond7.i, label %.thread49.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 8 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !274 ; 2 uses
  %.not.i = icmp ne i32 %i.aq, 0
  %i.ar = load i32, ptr %i.c, align 4
  %.not3.i = icmp eq i32 %i.ar, 0
  %or.cond9.i = select i1 %.not.i, i1 %.not3.i, i1 false
  br i1 %or.cond9.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !274
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = phi i32 [ %.pre.i, %bb.l ], [ %i.aq, %bb.k ]
  %.not4.i = icmp eq i32 %i.as, 0
  br i1 %.not4.i, label %bb.n, label %_ZN7CaDiCaL8Internal14already_solvedEv.exit

bb.n:                                             ; preds = %bb.m
  %i.at = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.at, label %_ZN7CaDiCaL8Internal14already_solvedEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %_ZN7CaDiCaL8Internal14already_solvedEv.exit

_ZN7CaDiCaL8Internal14already_solvedEv.exit:      ; preds = %bb.m, %bb.n, %bb.o
  %i.au = phi i1 [ true, %bb.m ], [ true, %bb.n ], [ false, %bb.o ]
  %.0.i = phi i32 [ 0, %bb.m ], [ 0, %bb.n ], [ 20, %bb.o ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !168
  %i.ax = icmp eq i32 %i.aw, 0
  %or.cond.i = and i1 %i.au, %i.ax
  %spec.store.select.i = select i1 %or.cond.i, i32 10, i32 %.0.i ; 2 uses
  %i.ay = icmp eq i32 %spec.store.select.i, 0     ; 2 uses
  %or.cond = and i1 %1, %i.ay
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7CaDiCaL8Internal14already_solvedEv.exit
  %i.az = load i32, ptr %i.ap, align 4, !tbaa !274
  %.not23 = icmp eq i32 %i.az, 0
  br i1 %.not23, label %.thread, label %.split

.split:                                           ; preds = %bb.p
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %.thread

bb.q:                                             ; preds = %_ZN7CaDiCaL8Internal14already_solvedEv.exit
  br i1 %i.ay, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.p, %.split, %bb.q
  %i.ba = tail call noundef i32 @_ZN7CaDiCaL8Internal15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %.0 = phi i32 [ %spec.store.select.i, %bb.q ], [ %i.ba, %.thread ] ; 2 uses
  %.not25 = icmp eq i32 %.0, 0
  br i1 %.not25, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !283, !range !220, !noundef !221
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.critedge9.thread.i, label %bb.t

.critedge9.thread.i:                              ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !288
  br label %_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3920 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !284
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !289
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = tail call noundef double @_ZNK7CaDiCaL8Internal5scaleEd(ptr noundef nonnull align 8 dereferenceable(5704) %0, double noundef %i.bl)
  %i.bn = fadd double %i.bm, %i.bi
  %i.bo = fptosi double %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !290
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3000
  store i64 -1, ptr %i.bq, align 8, !tbaa !291
  %i.br = load i64, ptr %i.bg, align 8, !tbaa !284
  %i.bs = sitofp i64 %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !292
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = tail call noundef double @_ZNK7CaDiCaL8Internal5scaleEd(ptr noundef nonnull align 8 dereferenceable(5704) %0, double noundef %i.bv)
  %i.bx = fadd double %i.bw, %i.bs
  %i.by = fptosi double %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2856
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !293
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !288
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3040
  store i64 -1, ptr %i.cc, align 8, !tbaa !294
  %i.cd = load i64, ptr %i.bg, align 8, !tbaa !284 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3300
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !295
  %i.cg = sext i32 %i.cf to i64
  %i.ch = add nsw i64 %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !296
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3588
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !297
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add nsw i64 %i.cd, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2872
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !298
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3316
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !299
  %i.cq = sext i32 %i.cp to i64
  %i.cr = add nsw i64 %i.cd, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2848
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !300
  br label %_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit

_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit: ; preds = %.critedge9.thread.i, %bb.t
  %.sink.in.i = phi i32 [ %i.bf, %.critedge9.thread.i ], [ %i.cb, %bb.t ]
  %.sink.i = sext i32 %.sink.in.i to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2952
  store i64 %.sink.i, ptr %i.ct, align 8, !tbaa !301
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !302
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.cv, i64 0) ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 3 uses
  store i64 %spec.select.i, ptr %i.cw, align 8, !tbaa !303
  br i1 %1, label %bb.u, label %.thread70

bb.u:                                             ; preds = %_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit
  %i.cx = load i32, ptr %i.ap, align 4, !tbaa !274
  %.not26 = icmp eq i32 %i.cx, 0
  br i1 %.not26, label %bb.v, label %.thread49.thread

.thread70:                                        ; preds = %_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit
  tail call void @_ZN7CaDiCaL8Internal18init_search_limitsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.cy = load i32, ptr %i.ap, align 4, !tbaa !274
  %.not2671 = icmp eq i32 %i.cy, 0
  br i1 %.not2671, label %thread-pre-split72, label %.thread55

thread-pre-split72:                               ; preds = %.thread70
  %.pr73 = load i64, ptr %i.cw, align 8, !tbaa !303
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split72, %bb.u
  %i.cz = phi i64 [ %.pr73, %thread-pre-split72 ], [ %spec.select.i, %bb.u ]
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i, label %_ZN7CaDiCaL8Internal10preprocessEv.exit

bb.w:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.db = load i64, ptr %i.cw, align 8, !tbaa !303
  %i.dc = icmp sgt i64 %i.db, %indvars.iv.next.i
  br i1 %i.dc, label %.lr.ph.i, label %_ZN7CaDiCaL8Internal10preprocessEv.exit, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.v, %bb.w
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.w ], [ 0, %bb.v ]
  %i.dd = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal16preprocess_roundEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 poison)
  br i1 %i.dd, label %bb.w, label %_ZN7CaDiCaL8Internal10preprocessEv.exit

_ZN7CaDiCaL8Internal10preprocessEv.exit:          ; preds = %bb.w, %.lr.ph.i, %bb.v
  %i.de = load i8, ptr %i.aj, align 4, !tbaa !251, !range !220, !noundef !221
  %i.df = trunc nuw i8 %i.de to i1
  %..i = select i1 %i.df, i32 20, i32 0
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %_ZN7CaDiCaL8Internal10preprocessEv.exit
  %.1 = phi i32 [ %.0, %bb.r ], [ %..i, %_ZN7CaDiCaL8Internal10preprocessEv.exit ] ; 3 uses
  br i1 %1, label %.thread49.thread, label %bb.x

bb.x:                                             ; preds = %.critedge
  %.not27 = icmp eq i32 %.1, 0
  br i1 %.not27, label %bb.y, label %.thread49

bb.y:                                             ; preds = %bb.x
  %.pr = load i32, ptr %i.ap, align 4, !tbaa !274
  %.not28 = icmp eq i32 %.pr, 0
  br i1 %.not28, label %bb.z, label %.thread55

bb.z:                                             ; preds = %bb.y
  %i.dg = tail call noundef i32 @_ZN7CaDiCaL8Internal12local_searchEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 2 uses
  %.not29 = icmp eq i32 %i.dg, 0
  br i1 %.not29, label %.thread52, label %.thread49

.thread52:                                        ; preds = %bb.z
  %.pre = load i32, ptr %i.ap, align 4, !tbaa !274
  %i.dh = icmp eq i32 %.pre, 0
  br i1 %i.dh, label %bb.aa, label %.thread55

bb.aa:                                            ; preds = %.thread52
  %i.di = tail call noundef i32 @_ZN7CaDiCaL8Internal12lucky_phasesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %.thread49

.thread49:                                        ; preds = %bb.x, %bb.aa, %bb.z
  %.3 = phi i32 [ %i.dg, %bb.z ], [ %i.di, %bb.aa ], [ %.1, %bb.x ] ; 2 uses
  switch i32 %.3, label %.thread49.thread [
    i32 10, label %bb.ab
    i32 0, label %.thread55
  ]

bb.ab:                                            ; preds = %.thread49
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !304, !range !220, !noundef !221
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.ac, label %.thread49.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dm = load i32, ptr %i.ap, align 4, !tbaa !274
  %.not32 = icmp eq i32 %i.dm, 0
  br i1 %.not32, label %.thread55, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %.thread55

.thread55:                                        ; preds = %.thread70, %bb.y, %.thread52, %.thread49, %bb.ad, %bb.ac
  %i.dn = tail call noundef i32 @_ZN7CaDiCaL8Internal27cdcl_loop_with_inprocessingEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %.thread49.thread

.thread49.thread:                                 ; preds = %bb.u, %bb.j, %.thread49, %bb.ab, %.thread55, %.critedge
  %.4 = phi i32 [ %.1, %.critedge ], [ %i.dn, %.thread55 ], [ 10, %bb.ab ], [ %.3, %.thread49 ], [ 20, %bb.j ], [ 0, %bb.u ] ; 4 uses
  tail call void @_ZN7CaDiCaL8Internal8finalizeEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %.4)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.dp = load volatile i8, ptr %i.do, align 8, !tbaa !171, !range !220, !noundef !221
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ae, label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit

bb.ae:                                            ; preds = %.thread49.thread
  store volatile i8 0, ptr %i.do, align 8, !tbaa !171
  br label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit

_ZN7CaDiCaL8Internal13reset_solvingEv.exit:       ; preds = %.thread49.thread, %bb.ae
  %switch.selectcmp.i = icmp eq i32 %.4, 20
  %switch.select.i = select i1 %switch.selectcmp.i, i8 48, i8 63
  %switch.selectcmp2.i = icmp eq i32 %.4, 10
  %switch.select3.i = select i1 %switch.selectcmp2.i, i8 49, i8 %switch.select.i
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext %switch.select3.i, i32 noundef 0)
  ret i32 %.4
}

declare void @_ZN7CaDiCaL8Internal24renotify_trail_after_ilbEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare noundef i32 @_ZN7CaDiCaL8Internal12lucky_phasesEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZN7CaDiCaL8Internal9lookaheadEv(ptr noundef nonnull align 8 dereferenceable(5704) initializes((7, 8)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !404
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2, !tbaa !304, !range !220, !noundef !221
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.f = load i32, ptr %i.e, align 4, !tbaa !274
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.g, align 2, !tbaa !305
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !251, !range !220, !noundef !221
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.l = load i8, ptr %i.k, align 8, !range !220
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond7.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond7.i, label %.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !274  ; 2 uses
  %.not.i = icmp ne i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.q = load i32, ptr %i.p, align 4
  %.not3.i = icmp eq i32 %i.q, 0
  %or.cond9.i = select i1 %.not.i, i1 %.not3.i, i1 false
  br i1 %or.cond9.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !274
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi i32 [ %.pre.i, %bb.g ], [ %i.o, %bb.f ]
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.s, label %bb.j, label %_ZN7CaDiCaL8Internal14already_solvedEv.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load i32, ptr %i.t, align 8, !tbaa !168
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.split, label %bb.k

_ZN7CaDiCaL8Internal14already_solvedEv.exit:      ; preds = %bb.i
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %.split

bb.k:                                             ; preds = %bb.j
  %i.w = tail call noundef i32 @_ZN7CaDiCaL8Internal15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 2 uses
  %.not11 = icmp eq i32 %i.w, 0
  br i1 %.not11, label %.split8, label %.split

.split:                                           ; preds = %_ZN7CaDiCaL8Internal14already_solvedEv.exit, %bb.j, %bb.e, %bb.k
  %.0517 = phi i32 [ %i.w, %bb.k ], [ 20, %_ZN7CaDiCaL8Internal14already_solvedEv.exit ], [ 20, %bb.e ], [ 10, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.y = load volatile i8, ptr %i.x, align 8, !tbaa !171, !range !220, !noundef !221
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.l, label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit

bb.l:                                             ; preds = %.split
  store volatile i8 0, ptr %i.x, align 8, !tbaa !171
  br label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit

_ZN7CaDiCaL8Internal13reset_solvingEv.exit:       ; preds = %.split, %bb.l
  %switch.selectcmp.i = icmp eq i32 %.0517, 20
  %switch.select.i = select i1 %switch.selectcmp.i, i8 48, i8 63
  %switch.selectcmp2.i = icmp eq i32 %.0517, 10
  %switch.select3.i = select i1 %switch.selectcmp2.i, i8 49, i8 %switch.select.i
  br label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12

.split8:                                          ; preds = %bb.k
  %i.aa = tail call noundef i32 @_ZN7CaDiCaL8Internal17lookahead_probingEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -2147483648
  %spec.store.select9 = select i1 %i.ab, i32 0, i32 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.ad = load volatile i8, ptr %i.ac, align 8, !tbaa !171, !range !220, !noundef !221
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.m, label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12

bb.m:                                             ; preds = %.split8
  store volatile i8 0, ptr %i.ac, align 8, !tbaa !171
  br label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12

_ZN7CaDiCaL8Internal13reset_solvingEv.exit12:     ; preds = %bb.m, %.split8, %_ZN7CaDiCaL8Internal13reset_solvingEv.exit
  %switch.select3.i.sink = phi i8 [ %switch.select3.i, %_ZN7CaDiCaL8Internal13reset_solvingEv.exit ], [ 63, %.split8 ], [ 63, %bb.m ]
  %i.af = phi i32 [ 0, %_ZN7CaDiCaL8Internal13reset_solvingEv.exit ], [ %spec.store.select9, %.split8 ], [ %spec.store.select9, %bb.m ]
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext %switch.select3.i.sink, i32 noundef 0)
  store i8 0, ptr %i.a, align 1, !tbaa !404
  %i.ag = load i8, ptr %i.b, align 2, !tbaa !304, !range !220, !noundef !221
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.ai, align 2, !tbaa !305
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12
  ret i32 %i.af
}

declare noundef i32 @_ZN7CaDiCaL8Internal17lookahead_probingEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof22finalize_external_unitEmi(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

declare void @_ZN7CaDiCaL5Proof13finalize_unitEmi(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof15finalize_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof15finalize_clauseEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof13report_statusEim(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External12conclude_satEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal14conclude_unsatEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External16conclude_unknownEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal16print_statisticsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3904
  tail call void @_ZN7CaDiCaL5Stats5printEPNS_8InternalE(ptr noundef nonnull align 8 dereferenceable(1648) %i.a, ptr noundef nonnull %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !215  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !215  ; 2 uses
  %.not7 = icmp eq ptr %i.c, %i.e
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.j, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.04.08, align 8, !tbaa !218 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !214
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN7CaDiCaL5Stats5printEPNS_8InternalE(ptr noundef nonnull align 8 dereferenceable(1648), ptr noundef) local_unnamed_addr #2
end_hunk_0
