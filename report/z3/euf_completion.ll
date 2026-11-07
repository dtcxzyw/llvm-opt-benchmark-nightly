Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_completion?download=true
inline.NumInlined: 2934
inline.NumDeleted: 1158
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3euf10completion6reduceEv:.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK3euf10completion14is_congruencesEP4expr.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !333
  call void @_ZN3euf10completion14map_congruenceEP4expr(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.ay)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK3euf10completion14is_congruencesEP4expr.exit.i, %_ZNK3euf10completion14is_congruencesEP4expr.exit.thread.i
  %i.az = add nuw i32 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.az, %i.y
  br i1 %exitcond.not.i, label %_ZN3euf10completion15map_congruencesEv.exit, label %.lr.ph.i, !llvm.loop !8

_ZN3euf10completion15map_congruencesEv.exit:      ; preds = %bb.f, %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !218 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %._crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %_ZN3euf10completion15map_congruencesEv.exit
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !314 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %.not20 = icmp eq i32 %i.be, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph22

bb.g:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit
  %i.bi = load i32, ptr %i.e, align 8, !tbaa !235
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.e, align 8, !tbaa !235
  store i8 0, ptr %i.a, align 8, !tbaa !375
  tail call void @_ZN3euf10completion10add_egraphEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  tail call void @_ZN3euf10completion13map_canonicalEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  tail call void @_ZN3euf10completion11read_egraphEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  %i.bk = tail call noundef i32 @_Z19get_verbosity_levelv()
  %.not13 = icmp eq i32 %i.bk, 0
  br i1 %.not13, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.bl, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  tail call void @_Z12verbose_lockv()
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str, i64 noundef 24) ; 0 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %indvars.iv) ; 2 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.1, i64 noundef 12) ; 0 uses
  %i.bq = load i32, ptr %i.f, align 4, !tbaa !393
  %i.br = zext i32 %i.bq to i64
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i64 noundef %i.br) ; 2 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.2, i64 noundef 7) ; 0 uses
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.bv = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.bu)
  br i1 %i.bv, label %bb.j, label %_ZN3euf10completion11should_stopEv.exit14

bb.j:                                             ; preds = %bb.i
  %i.bw = load i8, ptr %i.c, align 4, !tbaa !352, !range !353, !noundef !238
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN3euf10completion11should_stopEv.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(152) %i.by), !inline_history !376
  br i1 %i.cc, label %_ZN3euf10completion11should_stopEv.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = load ptr, ptr %0, align 8, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br label %_ZN3euf10completion11should_stopEv.exit14

_ZN3euf10completion11should_stopEv.exit14:        ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.ch = phi i1 [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ %i.cg, %bb.l ]
  %i.ci = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i1 noundef zeroext %i.ch)
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str, i64 noundef 24) ; 0 uses
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i64 noundef %indvars.iv) ; 2 uses
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.1, i64 noundef 12) ; 0 uses
  %i.co = load i32, ptr %i.f, align 4, !tbaa !393
  %i.cp = zext i32 %i.co to i64
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i64 noundef %i.cp) ; 2 uses
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.2, i64 noundef 7) ; 0 uses
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.ct = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.cs)
  br i1 %i.ct, label %bb.n, label %_ZN3euf10completion11should_stopEv.exit15

bb.n:                                             ; preds = %bb.m
  %i.cu = load i8, ptr %i.c, align 4, !tbaa !352, !range !353, !noundef !238
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZN3euf10completion11should_stopEv.exit15, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(152) %i.cw), !inline_history !376
  br i1 %i.da, label %_ZN3euf10completion11should_stopEv.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = load ptr, ptr %0, align 8, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 120
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br label %_ZN3euf10completion11should_stopEv.exit15

_ZN3euf10completion11should_stopEv.exit15:        ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %i.df = phi i1 [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ %i.de, %bb.p ]
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i1 noundef zeroext %i.df)
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %_ZN3euf10completion11should_stopEv.exit15, %_ZN3euf10completion11should_stopEv.exit14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.di = load i8, ptr %i.a, align 8, !tbaa !375, !range !353, !noundef !238
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = icmp samesign ult i64 %indvars.iv, 3
  %or.cond = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond, label %bb.a, label %.critedge, !llvm.loop !621

._crit_edge:                                      ; preds = %.lr.ph22, %_ZN3euf10completion15map_congruencesEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  ret void

.lr.ph22:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %.lr.ph22
  %.01221 = phi ptr [ %i.dm, %.lr.ph22 ], [ %i.bb, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %i.dl = load ptr, ptr %.01221, align 8, !tbaa !333
  call void @_ZN3euf10completion15add_consequenceEP4expr(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %.01221, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dm, %i.bh
  br i1 %.not, label %._crit_edge, label %.lr.ph22
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion10add_egraphEv(ptr noundef nonnull align 8 dereferenceable(2144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !314
  br label %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit

_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit:      ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(152) %i.e), !inline_history !9 ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !386  ; 2 uses
  %i.m = icmp ult i32 %i.l, %i.i
  br i1 %i.m, label %.lr.ph, label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph, %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2081 ; 4 uses
  store i8 1, ptr %i.n, align 1, !tbaa !394
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  br label %bb.c

.lr.ph:                                           ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit, %.lr.ph
  %.09 = phi i32 [ %i.af, %.lr.ph ], [ %i.l, %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit ] ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(152) %i.u, i32 noundef %.09) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !343, !noalias !629
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !345, !noalias !629
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !333, !noalias !629
  tail call void @_ZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.ae, ptr noundef %i.ad, ptr noundef %i.ac)
  %i.af = add i32 %.09, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %i.i
  br i1 %exitcond.not, label %.lr.ph11, label %.lr.ph, !llvm.loop !626

bb.c:                                             ; preds = %.critedge14.backedge, %.lr.ph11
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.ah = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.ag)
  br i1 %i.ah, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ai = load i8, ptr %i.p, align 4, !tbaa !352, !range !353, !noundef !238
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(152) %i.ak), !inline_history !376
  br i1 %i.ao, label %.critedge, label %_ZN3euf10completion11should_stopEv.exit

_ZN3euf10completion11should_stopEv.exit:          ; preds = %bb.e
  %i.ap = load ptr, ptr %0, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br i1 %i.as, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit
  store i8 0, ptr %i.n, align 1, !tbaa !394
  %i.at = tail call noundef zeroext i1 @_ZN3euf6egraph9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %i.q) ; 0 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !217 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  tail call void @_ZN3euf10completion19flush_binding_queueEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !325 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i

_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i: ; preds = %bb.f, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %i.ba = phi ptr [ %i.dh, %bb.j ], [ %i.ay, %bb.f ]
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !314
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.i, %i.bd
  br i1 %i.be, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.bg = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.bf)
  br i1 %i.bg, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.bh = load i8, ptr %i.p, align 4, !tbaa !352, !range !353, !noundef !238
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(152) %i.bj), !inline_history !630
  br i1 %i.bn, label %.critedge.i, label %_ZN3euf10completion11should_stopEv.exit.i

_ZN3euf10completion11should_stopEv.exit.i:        ; preds = %bb.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !630
  br i1 %i.br, label %.critedge.i, label %bb.j

.critedge.i:                                      ; preds = %_ZN3euf10completion11should_stopEv.exit.i, %bb.i, %bb.h, %bb.g, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i
  %.pre.pr.i = load ptr, ptr %i.s, align 8, !tbaa !325 ; 5 uses
  %i.bs = icmp eq ptr %.pre.pr.i, null
  br i1 %i.bs, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i: ; preds = %.critedge.i
  %i.bt = getelementptr inbounds i8, ptr %.pre.pr.i, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !314 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.pr.i, i64 %i.bw
  %.not8.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not8.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i
  %i.by = add nsw i64 %i.bw, -8                   ; 2 uses
  %i.bz = lshr exact i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1
  %xtraiter = and i64 %i.ca, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i.i.prol ], [ %.pre.pr.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cb = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !356
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 53
  store i8 0, ptr %i.cc, align 1, !tbaa !359
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !627

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %.pre.pr.i, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %i.ce = icmp ult i64 %i.by, 56
  br i1 %i.ce, label %.loopexit.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i
  store i32 0, ptr %i.bt, align 4, !tbaa !314
  br label %_ZN3euf10completion15propagate_rulesEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.cf = load ptr, ptr %.09.i.i, align 8, !tbaa !356
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 53
  store i8 0, ptr %i.cg, align 1, !tbaa !359
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !356
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 53
  store i8 0, ptr %i.cj, align 1, !tbaa !359
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !356
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 53
  store i8 0, ptr %i.cm, align 1, !tbaa !359
  %i.cn = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !356
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 53
  store i8 0, ptr %i.cp, align 1, !tbaa !359
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !356
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 53
  store i8 0, ptr %i.cs, align 1, !tbaa !359
  %i.ct = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !356
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 53
  store i8 0, ptr %i.cv, align 1, !tbaa !359
  %i.cw = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !356
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 53
  store i8 0, ptr %i.cy, align 1, !tbaa !359
  %i.cz = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !356
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 53
  store i8 0, ptr %i.db, align 1, !tbaa !359
  %i.dc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.dc, %i.bx
  br i1 %.not.i.i.7, label %.loopexit.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit.i
  %i.dd = load ptr, ptr %i.s, align 8, !tbaa !325
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !356 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 53
  store i8 0, ptr %i.dg, align 1, !tbaa !359
  tail call void @_ZN3euf10completion14propagate_ruleERNS0_16conditional_ruleE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef nonnull align 8 dereferenceable(54) %i.df)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.dh = load ptr, ptr %i.s, align 8, !tbaa !325 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i, !llvm.loop !10

_ZN3euf10completion15propagate_rulesEv.exit:      ; preds = %bb.j, %bb.f, %.critedge.i, %.loopexit.i.i
  tail call void @_ZN3euf10completion18propagate_closuresEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  %i.dj = tail call noundef i32 @_Z19get_verbosity_levelv()
  %i.dk = icmp ugt i32 %i.dj, 10
  br i1 %i.dk, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN3euf10completion15propagate_rulesEv.exit
  %i.dl = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.dl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_Z12verbose_lockv()
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.dn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.6, i64 noundef 10) ; 0 uses
  %i.do = load i32, ptr %i.t, align 4, !tbaa !393
  %i.dp = zext i32 %i.do to i64
  %i.dq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, i64 noundef %i.dp)
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull @.str.6, i64 noundef 10) ; 0 uses
  %i.du = load i32, ptr %i.t, align 4, !tbaa !393
  %i.dv = zext i32 %i.du to i64
  %i.dw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i64 noundef %i.dv)
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %_ZN3euf10completion15propagate_rulesEv.exit
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.dz = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.dy)
  br i1 %i.dz, label %bb.o, label %_ZN3euf10completion11should_stopEv.exit7.thread

bb.o:                                             ; preds = %bb.n
  %i.ea = load i8, ptr %i.p, align 4, !tbaa !352, !range !353, !noundef !238
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN3euf10completion11should_stopEv.exit7.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !36
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = tail call noundef zeroext i1 %i.ef(ptr noundef nonnull align 8 dereferenceable(152) %i.ec), !inline_history !376
  br i1 %i.eg, label %_ZN3euf10completion11should_stopEv.exit7.thread, label %_ZN3euf10completion11should_stopEv.exit7

_ZN3euf10completion11should_stopEv.exit7:         ; preds = %bb.p
  %i.eh = load ptr, ptr %0, align 8, !tbaa !36
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 120
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = tail call noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br i1 %i.ek, label %_ZN3euf10completion11should_stopEv.exit7.thread, label %bb.q

bb.q:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit7
  tail call void @_ZN3euf10completion20propagate_arithmeticEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  br label %_ZN3euf10completion11should_stopEv.exit7.thread

_ZN3euf10completion11should_stopEv.exit7.thread:  ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %_ZN3euf10completion11should_stopEv.exit7
  %i.el = load i8, ptr %i.n, align 1, !tbaa !394
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.critedge14.backedge, label %bb.r

bb.r:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit7.thread
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.eo = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.en)
  br i1 %i.eo, label %bb.s, label %_ZN3euf10completion11should_stopEv.exit8.thread

bb.s:                                             ; preds = %bb.r
  %i.ep = load i8, ptr %i.p, align 4, !tbaa !352, !range !353, !noundef !238
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %_ZN3euf10completion11should_stopEv.exit8.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !36
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(152) %i.er), !inline_history !376
  br i1 %i.ev, label %_ZN3euf10completion11should_stopEv.exit8.thread, label %_ZN3euf10completion11should_stopEv.exit8

_ZN3euf10completion11should_stopEv.exit8:         ; preds = %bb.t
  %i.ew = load ptr, ptr %0, align 8, !tbaa !36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 120
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef zeroext i1 %i.ey(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br i1 %i.ez, label %_ZN3euf10completion11should_stopEv.exit8.thread, label %bb.u

bb.u:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit8
  tail call void @_ZN3euf10completion19propagate_all_rulesEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  br label %_ZN3euf10completion11should_stopEv.exit8.thread

_ZN3euf10completion11should_stopEv.exit8.thread:  ; preds = %_ZN3euf10completion11should_stopEv.exit8, %bb.u, %bb.t, %bb.s, %bb.r
  %i.fa = load i8, ptr %i.n, align 1, !tbaa !394
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %.critedge14.backedge, label %.critedge

.critedge14.backedge:                             ; preds = %_ZN3euf10completion11should_stopEv.exit8.thread, %_ZN3euf10completion11should_stopEv.exit7.thread
  br label %bb.c, !llvm.loop !628

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.e, %_ZN3euf10completion11should_stopEv.exit8.thread, %_ZN3euf10completion11should_stopEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion13map_canonicalEv(ptr noundef nonnull align 8 dereferenceable(2144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %class.ptr_vector.7, align 8        ; 10 uses
  %6 = alloca %class.obj_ref, align 8             ; 11 uses
  %7 = alloca %class.ref_vector, align 8          ; 8 uses
  %8 = alloca %class.obj_ref.164, align 8         ; 10 uses
  %9 = alloca %class.obj_ref, align 8             ; 5 uses
  %10 = alloca %class.symbol, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !314
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !347
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !347  ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6vectorIPN3euf5enodeELb0EjED2Ev.exit, label %_ZNK6vectorIPN3euf5enodeELb0EjE5emptyEv.exit

_ZNK6vectorIPN3euf5enodeELb0EjE5emptyEv.exit:     ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !314
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6vectorIPN3euf5enodeELb0EjED2Ev.exit, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph: ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE5emptyEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 3 uses
  br label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit:      ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph, %.loopexit321
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %.loopexit321 ] ; 3 uses
  %i.l = phi ptr [ %i.e, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph ], [ %i.gg, %.loopexit321 ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !314
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv, %i.o
  br i1 %i.p, label %bb.c, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit, %.loopexit321
  %.pre = load ptr, ptr %5, align 8, !tbaa !347   ; 8 uses
  %i.q = icmp eq ptr %.pre, null
  br i1 %i.q, label %._crit_edge348, label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit

_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit:        ; preds = %.critedge
  %i.r = getelementptr inbounds i8, ptr %.pre, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.u
  %.not341 = icmp eq i32 %i.s, 0
  br i1 %.not341, label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit141, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit
  %i.w = add nsw i64 %i.u, -8                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph343.prol.loopexit, label %.lr.ph343.prol

.lr.ph343.prol:                                   ; preds = %.lr.ph343.preheader, %.lr.ph343.prol
  %.079342.prol = phi ptr [ %i.ab, %.lr.ph343.prol ], [ %.pre, %.lr.ph343.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph343.prol ], [ 0, %.lr.ph343.preheader ]
  %i.z = load ptr, ptr %.079342.prol, align 8, !tbaa !395
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 0, ptr %i.aa, align 8, !tbaa !635
  %i.ab = getelementptr inbounds nuw i8, ptr %.079342.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph343.prol.loopexit, label %.lr.ph343.prol, !llvm.loop !631

.lr.ph343.prol.loopexit:                          ; preds = %.lr.ph343.prol, %.lr.ph343.preheader
  %.079342.unr = phi ptr [ %.pre, %.lr.ph343.preheader ], [ %i.ab, %.lr.ph343.prol ]
  %i.ac = icmp ult i64 %i.w, 56
  br i1 %i.ac, label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit141, label %.lr.ph343

bb.c:                                             ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !395
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !396 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !635, !range !353, !noundef !238
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.loopexit321, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.ah, align 8, !tbaa !635
  %i.ak = load ptr, ptr %5, align 8, !tbaa !347   ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !314 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !314
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN6vectorIPN3euf5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %.loopexit.split-lp317.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !347 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !314
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e, %.noexc
  %i.ar = phi i32 [ %.pre2.i, %.noexc ], [ %i.an, %bb.e ] ; 2 uses
  %i.as = phi ptr [ %.pre.i, %.noexc ], [ %i.ak, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !395
  %i.aw = add i32 %i.ar, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !314
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3euf11enode_class8iteratorppEv.exit
  %.sroa.0275.0335 = phi ptr [ %i.be, %_ZN3euf11enode_class8iteratorppEv.exit ], [ %i.ag, %.lr.ph.preheader ] ; 5 uses
  %.sroa.8.0334 = phi ptr [ %spec.select, %_ZN3euf11enode_class8iteratorppEv.exit ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.0289333 = phi ptr [ %.1290, %_ZN3euf11enode_class8iteratorppEv.exit ], [ null, %.lr.ph.preheader ] ; 3 uses
  %.not116 = icmp eq ptr %.0289333, null
  br i1 %.not116, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.ay = load ptr, ptr %.sroa.0275.0335, align 8, !tbaa !368
  %i.az = invoke noundef zeroext i1 @_ZNK11ast_manager8is_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ax, ptr noundef %i.ay)
          to label %bb.h unwind label %.loopexit.split-lp317.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  br i1 %i.az, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %.0289333, align 8, !tbaa !368
  %i.bb = load ptr, ptr %.sroa.0275.0335, align 8, !tbaa !368
  %i.bc = invoke noundef zeroext i1 @_ZNK3euf10completion5is_gtEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.ba, ptr noundef %i.bb)
          to label %bb.j unwind label %.loopexit.split-lp317.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.bc, label %bb.k, label %_ZN3euf11enode_class8iteratorppEv.exit

bb.k:                                             ; preds = %bb.j, %bb.h, %.lr.ph
  br label %_ZN3euf11enode_class8iteratorppEv.exit

_ZN3euf11enode_class8iteratorppEv.exit:           ; preds = %bb.k, %bb.j
  %.1290 = phi ptr [ %.sroa.0275.0335, %bb.k ], [ %.0289333, %bb.j ] ; 2 uses
  %.not.i126 = icmp eq ptr %.sroa.8.0334, null
  %spec.select = select i1 %.not.i126, ptr %.sroa.0275.0335, ptr %.sroa.8.0334 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0275.0335, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !397 ; 2 uses
  %.not.i125 = icmp ne ptr %spec.select, %i.ag
  %i.bf = icmp ne ptr %i.be, %i.ag
  %i.bg = select i1 %.not.i125, i1 true, i1 %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN3euf11enode_class8iteratorppEv.exit
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !368
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !369 ; 4 uses
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !347 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i:    ; preds = %._crit_edge
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !314 ; 3 uses
  %.not.i128 = icmp ult i32 %i.bi, %i.bm
  br i1 %.not.i128, label %.loopexit325, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i:  ; preds = %._crit_edge
  %i.bn = add i32 %i.bi, 1                        ; 2 uses
  %.not.not.i.i = icmp ne i32 %i.bn, 0
  call void @llvm.assume(i1 %.not.not.i.i)
  br label %thread-pre-split.i.i.preheader

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.thread.i.i: ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i
  %i.bo = add i32 %i.bi, 1                        ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.bo, %i.bm
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.l

end_hunk_0
