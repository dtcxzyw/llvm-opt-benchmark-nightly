inline.NumInlined: 2081
inline.NumDeleted: 1015
begin_hunk_0_@_ZN11OpenImageIO4v3_18DeepData4initEliNS0_4spanIKNS0_8TypeDescELm18446744073709551615EEENS2_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm18446744073709551615EEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.nm, ptr %10, align 8, !tbaa !98
  store i64 %i.no, ptr %i.fz, align 8, !tbaa !100
  store ptr @.str.9, ptr %11, align 8, !tbaa !98
  store i64 2, ptr %i.ga, align 8, !tbaa !100
  %i.oj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11)
  br i1 %i.oj, label %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90.thread304, label %bb.cc

_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90.thread304: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.nx, label %bb.cd, label %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90.thread

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.nm, ptr %12, align 8, !tbaa !98
  store i64 %i.no, ptr %i.gb, align 8, !tbaa !100
  store ptr @.str.9, ptr %13, align 8, !tbaa !98
  store i64 2, ptr %i.gc, align 8, !tbaa !100
  %i.ok = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10iends_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %12, ptr noundef nonnull dead_on_return %13)
  br i1 %i.ok, label %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90, label %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90.thread

_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90.thread: ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.ce

_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90: ; preds = %bb.cd
  %i.ol = getelementptr i8, ptr %i.nm, i64 %i.no
  %i.om = getelementptr i8, ptr %i.ol, i64 -3
  %i.on = load i8, ptr %i.om, align 1, !tbaa !47
  %i.oo = icmp eq i8 %i.on, 46
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %i.oo, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90.thread, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.nm, ptr %6, align 8, !tbaa !98
  store i64 %i.no, ptr %i.gd, align 8, !tbaa !100
  store ptr @.str.6, ptr %7, align 8, !tbaa !98
  store i64 5, ptr %i.ge, align 8, !tbaa !100
  %i.op = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  br i1 %i.op, label %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91.thread305, label %bb.cf

_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91.thread305: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.oq = icmp ugt i64 %i.no, 5
  br i1 %i.oq, label %bb.cg, label %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91.thread

bb.cg:                                            ; preds = %bb.cf
  store ptr %i.nm, ptr %8, align 8, !tbaa !98
  store i64 %i.no, ptr %i.gf, align 8, !tbaa !100
  store ptr @.str.6, ptr %9, align 8, !tbaa !98
  store i64 5, ptr %i.gg, align 8, !tbaa !100
  %i.or = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10iends_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9)
  br i1 %i.or, label %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91, label %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91.thread

_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91.thread: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.ci

_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91: ; preds = %bb.cg
  %i.os = getelementptr i8, ptr %i.nm, i64 %i.no
  %i.ot = getelementptr i8, ptr %i.os, i64 -6
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !47
  %i.ov = icmp eq i8 %i.ou, 46
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %i.ov, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91.thread305, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90.thread304, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit89.thread303, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit88.thread302, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit87.thread301, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit89, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit88, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit87
  %i.ow = load ptr, ptr %0, align 8, !tbaa !36
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 192
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !39
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv415
  %i.pa = trunc nuw nsw i64 %indvars.iv415 to i32
  store i32 %i.pa, ptr %i.oz, align 4, !tbaa !3
  br label %bb.dr

bb.ci:                                            ; preds = %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91.thread, %_ZN11OpenImageIO4v3_117is_or_endswithdotENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit91
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.no ; 4 uses
  %i.pc = ptrtoint ptr %i.nm to i64
  %i.pd = ashr i64 %i.no, 2                       ; 3 uses
  %i.pe = icmp sgt i64 %i.pd, 0
  br i1 %i.pe, label %.lr.ph.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.ci
  %i.pf = mul nsw i64 %i.pd, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.pb, i64 %i.pf
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cm, %.lr.ph.i.preheader.i.i.i.i
  %i.pg = phi ptr [ %i.pq, %bb.cm ], [ %i.pb, %.lr.ph.i.preheader.i.i.i.i ] ; 8 uses
  %.027.i.i.i.i.i = phi i64 [ %i.pt, %bb.cm ], [ %i.pd, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -1
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !47, !noalias !108
  %i.pj = icmp eq i8 %i.pi, 46
  br i1 %i.pj, label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pk = getelementptr inbounds i8, ptr %i.pg, i64 -2
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !47, !noalias !108
  %i.pm = icmp eq i8 %i.pl, 46
  br i1 %i.pm, label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pn = getelementptr inbounds i8, ptr %i.pg, i64 -3
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !47, !noalias !108
  %i.pp = icmp eq i8 %i.po, 46
  br i1 %i.pp, label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit515, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pq = getelementptr inbounds i8, ptr %i.pg, i64 -4 ; 2 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !47, !noalias !108
  %i.ps = icmp eq i8 %i.pr, 46
  br i1 %i.ps, label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit517, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pt = add nsw i64 %.027.i.i.i.i.i, -1
  %i.pu = icmp sgt i64 %.027.i.i.i.i.i, 1
  br i1 %i.pu, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !115

._crit_edge.i.i.i.i.i:                            ; preds = %bb.cm, %bb.ci
  %i.pv = phi ptr [ %i.pb, %bb.ci ], [ %scevgep.i.i.i.i, %bb.cm ] ; 5 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %i.pv to i64
  %i.pw = sub i64 %.pre-phi.i.i.i.i.i, %i.pc
  switch i64 %i.pw, label %._crit_edge.i.i.i.i.thread [
    i64 3, label %bb.cn
    i64 2, label %bb.co
    i64 1, label %bb.cp
  ]

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.px = getelementptr inbounds i8, ptr %i.pv, i64 -1 ; 2 uses
  %i.py = load i8, ptr %i.px, align 1, !tbaa !47, !noalias !108
  %i.pz = icmp eq i8 %i.py, 46
  br i1 %i.pz, label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge.i.i.i.i.i
  %i.qa = phi ptr [ %i.pv, %._crit_edge.i.i.i.i.i ], [ %i.px, %bb.cn ] ; 2 uses
  %i.qb = getelementptr inbounds i8, ptr %i.qa, i64 -1 ; 2 uses
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !47, !noalias !108
  %i.qd = icmp eq i8 %i.qc, 46
  br i1 %i.qd, label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge.i.i.i.i.i
  %i.qe = phi ptr [ %i.pv, %._crit_edge.i.i.i.i.i ], [ %i.qb, %bb.co ] ; 2 uses
  %i.qf = getelementptr inbounds i8, ptr %i.qe, i64 -1
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !47, !noalias !108
  %i.qh = icmp eq i8 %i.qg, 46
  %spec.select.i.i.i.i = select i1 %i.qh, ptr %i.qe, ptr %i.nm
  br label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i

_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.cj
  %i.qi = getelementptr inbounds i8, ptr %i.pg, i64 -1
  br label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i

_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit515: ; preds = %bb.ck
  %i.qj = getelementptr inbounds i8, ptr %i.pg, i64 -2
  br label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i

_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit517: ; preds = %bb.cl
  %i.qk = getelementptr inbounds i8, ptr %i.pg, i64 -3
  br label %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i

_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit515, %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit517, %bb.cp, %bb.co, %bb.cn
  %.sink.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.cp ], [ %i.qa, %bb.co ], [ %i.pv, %bb.cn ], [ %i.qk, %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit517 ], [ %i.qj, %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit515 ], [ %i.qi, %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i.loopexit.split.loop.exit ], [ %i.pg, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ql = icmp eq ptr %.sink.i.i.i.i.i, %i.nm
  br i1 %i.ql, label %._crit_edge.i.i.i.i.thread, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit: ; preds = %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i
  %i.qm = ptrtoint ptr %i.pb to i64
  %i.qn = ptrtoint ptr %.sink.i.i.i.i.i to i64
  %i.qo = xor i64 %i.qm, -1
  %i.qp = add i64 %i.no, %i.qo
  %i.qq = add i64 %i.qp, %i.qn                    ; 2 uses
  %i.qr = icmp eq i64 %i.qq, -1
  br i1 %i.qr, label %._crit_edge.i.i.i.i.thread, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit
  %i.qs = add nuw i64 %i.qq, 1                    ; 5 uses
  %.not.i92.not = icmp eq i64 %i.no, 0            ; 2 uses
  %i.qt = icmp eq i64 %i.qs, -1
  %60 = call i64 @llvm.umin.i64(i64 %i.qs, i64 %i.no)
  %.0.i = select i1 %i.qt, i64 %i.no, i64 %60
  %.sroa.0136.0 = select i1 %.not.i92.not, ptr null, ptr %i.nm ; 2 uses
  %.sroa.5137.0 = select i1 %.not.i92.not, i64 0, i64 %.0.i ; 5 uses
  %.not.i94 = icmp ult i64 %i.qs, %i.no
  %i.qu = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.qs
  %.sroa.7.0 = call i64 @llvm.usub.sat.i64(i64 %i.no, i64 %i.qs) ; 3 uses
  %.sroa.0138.0 = select i1 %.not.i94, ptr %i.qu, ptr null ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #28
  store ptr %i.gh, ptr %56, align 8, !tbaa !116
  %i.qv = icmp eq ptr %.sroa.0136.0, null
  %i.qw = icmp ne i64 %.sroa.5137.0, 0
  %or.cond.i.i.i = and i1 %i.qv, %i.qw
  br i1 %or.cond.i.i.i, label %bb.cq, label %bb.cr

._crit_edge.i.i.i.i.thread:                       ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit, %_ZSt7find_ifISt16reverse_iteratorIPKcEN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_SB_SB_T0_.exit.i.i, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #28
  store ptr %i.gh, ptr %56, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !95
  br label %bb.cu

bb.cq:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %.sroa.5137.0, ptr %i.b, align 8, !tbaa !95
  %i.qx = icmp ugt i64 %.sroa.5137.0, 15
  br i1 %i.qx, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.cr
  %i.qy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc98 unwind label %.loopexit329 ; 2 uses

.noexc98:                                         ; preds = %.noexc.i.i.i
  store ptr %i.qy, ptr %56, align 8, !tbaa !43
  %i.qz = load i64, ptr %i.b, align 8, !tbaa !95
  store i64 %i.qz, ptr %i.gh, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc98, %bb.cr
  %i.ra = phi ptr [ %i.qy, %.noexc98 ], [ %i.gh, %bb.cr ] ; 2 uses
  switch i64 %.sroa.5137.0, label %bb.ct [
    i64 1, label %bb.cs
    i64 0, label %bb.cu
  ]

bb.cs:                                            ; preds = %._crit_edge.i.i.i.i
  %i.rb = load i8, ptr %i.nm, align 1, !tbaa !47
  store i8 %i.rb, ptr %i.ra, align 1, !tbaa !47
  br label %bb.cu

bb.ct:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ra, ptr align 1 %.sroa.0136.0, i64 %.sroa.5137.0, i1 false)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %._crit_edge.i.i.i.i, %._crit_edge.i.i.i.i.thread
  %.sroa.0138.0312321328 = phi ptr [ %i.nm, %._crit_edge.i.i.i.i.thread ], [ %.sroa.0138.0, %._crit_edge.i.i.i.i ], [ %.sroa.0138.0, %bb.cs ], [ %.sroa.0138.0, %bb.ct ] ; 3 uses
  %.sroa.7.0311322327 = phi i64 [ %i.no, %._crit_edge.i.i.i.i.thread ], [ %.sroa.7.0, %._crit_edge.i.i.i.i ], [ %.sroa.7.0, %bb.cs ], [ %.sroa.7.0, %bb.ct ] ; 5 uses
  %i.rc = load i64, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  store i64 %i.rc, ptr %i.gi, align 8, !tbaa !97
  %i.rd = load ptr, ptr %56, align 8, !tbaa !43
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rc
  store i8 0, ptr %i.re, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.rf = load i64, ptr %i.gi, align 8, !tbaa !97, !noalias !117
  %i.rg = icmp eq i64 %i.rf, 4611686018427387903
  br i1 %i.rg, label %bb.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #32
          to label %.noexc99 unwind label %.loopexit.split-lp331

.noexc99:                                         ; preds = %bb.cv
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.cu
  %i.rh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %.noexc100 unwind label %.loopexit330 ; 6 uses

.noexc100:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.gj, ptr %55, align 8, !tbaa !116, !alias.scope !117
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !43 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 16 ; 5 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %bb.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.cw:                                            ; preds = %.noexc100
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !97 ; 3 uses
  %i.rn = icmp ult i64 %i.rm, 16
  call void @llvm.assume(i1 %i.rn)
  %i.ro = add nuw nsw i64 %i.rm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gj, ptr noundef nonnull align 8 dereferenceable(1) %i.rj, i64 %i.ro, i1 false)
  br label %bb.cx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc100
  store ptr %i.ri, ptr %55, align 8, !tbaa !43, !alias.scope !117
  %i.rp = load i64, ptr %i.rj, align 8, !tbaa !47
  store i64 %i.rp, ptr %i.gj, align 8, !tbaa !47, !alias.scope !117
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !97
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.cw
  %i.rq = phi i64 [ %i.rm, %bb.cw ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i64 %i.rq, ptr %i.gk, align 8, !tbaa !97, !alias.scope !117
  store ptr %i.rj, ptr %i.rh, align 8, !tbaa !43
  store i64 0, ptr %i.rr, align 8, !tbaa !97
  store i8 0, ptr %i.rj, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #28
  store ptr %i.gl, ptr %57, align 8, !tbaa !116
  %i.rs = icmp eq ptr %.sroa.0138.0312321328, null
  %i.rt = icmp ne i64 %.sroa.7.0311322327, 0
  %or.cond.i.i.i101 = and i1 %i.rs, %i.rt
  br i1 %or.cond.i.i.i101, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #32
          to label %.noexc104 unwind label %.loopexit.split-lp336

.noexc104:                                        ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.sroa.7.0311322327, ptr %i.a, align 8, !tbaa !95
  %i.ru = icmp ugt i64 %.sroa.7.0311322327, 15
  br i1 %i.ru, label %.noexc.i.i.i103, label %._crit_edge.i.i.i.i102

.noexc.i.i.i103:                                  ; preds = %bb.cz
  %i.rv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc105 unwind label %.loopexit335 ; 2 uses

.noexc105:                                        ; preds = %.noexc.i.i.i103
  store ptr %i.rv, ptr %57, align 8, !tbaa !43
  %i.rw = load i64, ptr %i.a, align 8, !tbaa !95
  store i64 %i.rw, ptr %i.gl, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i102

._crit_edge.i.i.i.i102:                           ; preds = %.noexc105, %bb.cz
  %i.rx = phi ptr [ %i.rv, %.noexc105 ], [ %i.gl, %bb.cz ] ; 2 uses
  switch i64 %.sroa.7.0311322327, label %bb.db [
    i64 1, label %bb.da
    i64 0, label %bb.dc
  ]

bb.da:                                            ; preds = %._crit_edge.i.i.i.i102
  %i.ry = load i8, ptr %.sroa.0138.0312321328, align 1, !tbaa !47
  store i8 %i.ry, ptr %i.rx, align 1, !tbaa !47
  br label %bb.dc

bb.db:                                            ; preds = %._crit_edge.i.i.i.i102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rx, ptr align 1 %.sroa.0138.0312321328, i64 %.sroa.7.0311322327, i1 false)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %._crit_edge.i.i.i.i102
  %i.rz = load i64, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  store i64 %i.rz, ptr %i.gm, align 8, !tbaa !97
  %i.sa = load ptr, ptr %57, align 8, !tbaa !43
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.rz
  store i8 0, ptr %i.sb, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.sc = load i64, ptr %i.gk, align 8, !tbaa !97, !noalias !120 ; 4 uses
  %i.sd = load i64, ptr %i.gm, align 8, !tbaa !97, !noalias !120 ; 4 uses
  %i.se = add i64 %i.sd, %i.sc                    ; 2 uses
  %i.sf = load ptr, ptr %55, align 8, !tbaa !43, !noalias !120 ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.gj                ; 2 uses
  br i1 %i.sg, label %bb.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.dd:                                            ; preds = %bb.dc
  %i.sh = icmp ult i64 %i.sc, 16
  call void @llvm.assume(i1 %i.sh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.dd, %bb.dc
  %i.si = load i64, ptr %i.gj, align 8, !noalias !120
  %i.sj = select i1 %i.sg, i64 15, i64 %i.si
  %i.sk = icmp ugt i64 %i.se, %i.sj
  br i1 %i.sk, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.sl = load ptr, ptr %57, align 8, !tbaa !43, !noalias !120
  %i.sm = icmp eq ptr %i.sl, %i.gl                ; 2 uses
  br i1 %i.sm, label %bb.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

bb.df:                                            ; preds = %bb.de
  %i.sn = icmp ult i64 %i.sd, 16
  call void @llvm.assume(i1 %i.sn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18DeepData16copy_deep_sampleEliRKS1_li:bb.a
  %i.y = load i64, ptr %i.x, align 8, !tbaa !92
  %i.z = mul i64 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !95
  %i.ad = getelementptr i8, ptr %i.k, i64 %i.z
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not = icmp ne ptr %i.ae, null
  %i.ag = load i32, ptr %i.af, align 8
  %.not31 = icmp eq i32 %i.ag, %i.f
  %or.cond71 = select i1 %.not, i1 %.not31, i1 false
  br i1 %or.cond71, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.thread

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit
  %i.ah = icmp sgt i64 %1, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %.not.i34 = icmp slt i64 %1, %i.aj
  %or.cond.i35 = select i1 %i.ah, i1 %.not.i34, i1 false
  br i1 %or.cond.i35, label %bb.f, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit37

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %1
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit37

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit37: ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, %bb.f
  %.0.i36 = phi i32 [ %i.ao, %bb.f ], [ 0, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit ]
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.0.i36, i32 %i.q)
  tail call void @_ZN11OpenImageIO4v3_18DeepData11set_samplesEli(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %.sroa.speculated)
  %i.ap = load i32, ptr %i.af, align 8, !tbaa !63
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.thread

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit: ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit37, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit37 ] ; 6 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !36
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load i64, ptr %i.at, align 4
  %i.av = and i64 %i.au, -4294901761
  %or.cond = icmp eq i64 %i.av, 262
  %i.aw = load i32, ptr %i.e, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv, %i.ax
  %or.cond61 = select i1 %or.cond, i1 %i.ay, i1 false
  br i1 %or.cond61, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit43, label %.critedge

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit43: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit
  %i.az = load ptr, ptr %3, align 8, !tbaa !36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load i64, ptr %i.bb, align 4
  %i.bd = and i64 %i.bc, -4294901761
  %i.be = icmp eq i64 %i.bd, 262
  br i1 %i.be, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit43
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bg = tail call noundef i32 @_ZNK11OpenImageIO4v3_18DeepData15deep_value_uintElii(ptr noundef nonnull align 8 dereferenceable(20) %3, i64 noundef %4, i32 noundef %i.bf, i32 noundef %5)
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliij(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.bf, i32 noundef %2, i32 noundef %i.bg)
  br label %bb.h

.critedge:                                        ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit43, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bi = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %3, i64 noundef %4, i32 noundef %i.bh, i32 noundef %5)
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.bh, i32 noundef %2, float noundef %i.bi)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load i32, ptr %i.af, align 8, !tbaa !63
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.thread, !llvm.loop !163

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.thread: ; preds = %bb.h, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit37, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit
  %.030 = phi i1 [ false, %bb.a ], [ true, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit37 ], [ false, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.h ]
  ret i1 %.030
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK11OpenImageIO4v3_18DeepData17same_channeltypesERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = load i64, ptr %i.f, align 8, !tbaa !92
  %i.h = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92
  %.not11 = icmp eq i64 %i.g, %i.j
  br i1 %.not11, label %.preheader, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread

.preheader:                                       ; preds = %bb.b
  %i.k = icmp slt i32 %i.b, 1
  br i1 %i.k, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.lr.ph

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.lr.ph: ; preds = %.preheader
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !11
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.lr.ph
  %indvars.iv = phi i64 [ 0, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.lr.ph ], [ %indvars.iv.next, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 4              ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.q = load i64, ptr %i.p, align 4              ; 2 uses
  %i.r = trunc i64 %i.o to i24
  %i.s = trunc i64 %i.q to i24
  %or.cond20 = icmp eq i24 %i.r, %i.s
  %.unshifted = xor i64 %i.q, %i.o
  %i.t = icmp ult i64 %.unshifted, 4294967296
  %or.cond21.not = and i1 %or.cond20, %i.t        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %or.cond21.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread, !llvm.loop !125

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit, %.preheader, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.preheader ], [ %or.cond21.not, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_18DeepData5splitElf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load i32, ptr %i.b, align 8, !tbaa !96   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.e = load i32, ptr %i.d, align 4, !tbaa !101  ; 3 uses
  %i.f = icmp slt i32 %i.c, 0
  %i.g = icmp slt i32 %i.e, 0
  %or.cond139 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond139, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp sgt i64 %1, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not.i173 = icmp slt i64 %1, %i.k
  %or.cond.i174 = select i1 %i.i, i1 %.not.i173, i1 false
  br i1 %or.cond.i174, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.lr.ph, label %.critedge

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.lr.ph: ; preds = %bb.b
  %i.l = load i32, ptr %i.h, align 8, !tbaa !63   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %wide.trip.count = zext nneg i32 %i.l to i64
  %wide.trip.count183 = zext nneg i32 %i.l to i64
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.lr.ph, %.loopexit
  %.0124177 = phi i1 [ false, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.lr.ph ], [ %.1, %.loopexit ] ; 2 uses
  %.0125175 = phi i32 [ 0, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.lr.ph ], [ %i.x, %.loopexit ] ; 16 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %1
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp slt i32 %.0125175, %i.r
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.t = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.c, i32 noundef %.0125175) ; 5 uses
  %i.u = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.e, i32 noundef %.0125175) ; 5 uses
  %i.v = fcmp olt float %i.t, %2
  %i.w = fcmp ogt float %i.u, %2
  %or.cond = and i1 %i.v, %i.w
  %i.x = add nuw nsw i32 %.0125175, 1             ; 9 uses
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.j, align 8
  %.not.i.i = icmp slt i64 %1, %i.y
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !36  ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.ac, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %3 = add nsw i32 %.0.i.i, 1                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %4 = icmp sgt i32 %3, %i.ag
  br i1 %4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i
  tail call void @_ZN11OpenImageIO4v3_18DeepData12set_capacityEli(ptr noundef nonnull readonly align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %3)
  %.pre27.i = load ptr, ptr %0, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i
  %i.ah = phi ptr [ %.pre27.i, %bb.f ], [ %.pre.i, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 248
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !64, !range !83, !noundef !84
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp slt i32 %i.x, %.0.i.i
  %or.cond.i143 = and i1 %i.al, %i.ak
  br i1 %or.cond.i143, label %bb.h, label %_ZN11OpenImageIO4v3_18DeepData14insert_samplesElii.exit

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %1
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 2 uses
  %i.aq = add i32 %i.ap, %i.x
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %i.at = load i64, ptr %i.as, align 8, !tbaa !92 ; 3 uses
  %i.au = mul i64 %i.at, %i.ar                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !95 ; 2 uses
  %i.ay = add i32 %i.ap, %.0.i.i
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul i64 %i.at, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !134 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.au
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.ax  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 %i.ba
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ax
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.at ; 2 uses
  %gepdiff.i = sub i64 %i.ba, %i.au               ; 4 uses
  %i.bi = icmp sgt i64 %gepdiff.i, 1
  br i1 %i.bi, label %bb.i, label %bb.j, !prof !140

bb.i:                                             ; preds = %bb.h
  %i.bj = sub nsw i64 0, %gepdiff.i
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %i.bj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr align 1 %i.be, i64 %gepdiff.i, i1 false)
  br label %_ZN11OpenImageIO4v3_18DeepData14insert_samplesElii.exit

bb.j:                                             ; preds = %bb.h
  %i.bl = icmp eq i64 %gepdiff.i, 1
  br i1 %i.bl, label %bb.k, label %_ZN11OpenImageIO4v3_18DeepData14insert_samplesElii.exit

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 -1
  %i.bn = load i8, ptr %i.be, align 1, !tbaa !47
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !47
  br label %_ZN11OpenImageIO4v3_18DeepData14insert_samplesElii.exit

_ZN11OpenImageIO4v3_18DeepData14insert_samplesElii.exit: ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %i.bo = load ptr, ptr %0, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %1 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !3
  %i.bu = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18DeepData16copy_deep_sampleEliRKS1_li(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %.0125175) ; 0 uses
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.e, i32 noundef %.0125175, float noundef %2)
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.c, i32 noundef %i.x, float noundef %2)
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_18DeepData14insert_samplesElii.exit
  %i.bv = fsub float %2, %i.t
  %i.bw = fsub float %i.u, %i.t                   ; 2 uses
  %i.bx = fdiv float %i.bv, %i.bw                 ; 2 uses
  %i.by = fsub float %i.u, %2
  %i.bz = fdiv float %i.by, %i.bw                 ; 2 uses
  br label %bb.l

.lr.ph172:                                        ; preds = %bb.ah
  %i.ca = fsub float %2, %i.t
  %i.cb = fsub float %i.u, %i.t                   ; 2 uses
  %i.cc = fdiv float %i.ca, %i.cb                 ; 2 uses
  %i.cd = fsub float %i.u, %2
  %i.ce = fdiv float %i.cd, %i.cb                 ; 2 uses
  br label %bb.ai

bb.l:                                             ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 5 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 192
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !39
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3  ; 3 uses
  %i.ck = icmp slt i32 %i.cj, 0
  %i.cl = zext i32 %i.cj to i64                   ; 3 uses
  %i.cm = icmp eq i64 %indvars.iv, %i.cl
  %or.cond138 = or i1 %i.ck, %i.cm
  br i1 %or.cond138, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load i64, ptr %i.j, align 8, !tbaa !62
  %i.co = icmp slt i64 %1, %i.cn
  %i.cp = load i32, ptr %i.h, align 8
  %.not.i.i144 = icmp slt i32 %i.cj, %i.cp
  %or.cond21.i.i = select i1 %i.co, i1 %.not.i.i144, i1 false
  br i1 %or.cond21.i.i, label %bb.n, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !129
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !51 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %1
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %.not19.i.i = icmp slt i32 %.0125175, %i.cy
  br i1 %.not19.i.i, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i: ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !54
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %1
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = add i32 %i.dc, %.0125175
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 216
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !92
  %i.dh = mul i64 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !57
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.cl
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !95
  %i.dm = getelementptr i8, ptr %i.ct, i64 %i.dh
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl  ; 11 uses
  %.not.i146 = icmp eq ptr %i.dn, null
  br i1 %.not.i146, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i
  %i.do = load ptr, ptr %i.cf, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.cl
  %i.dq = load i64, ptr %i.dp, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.dq to i8
  switch i8 %.sroa.01.0.extract.trunc.i, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i [
    i8 11, label %bb.p
    i8 10, label %bb.q
    i8 6, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
    i8 4, label %bb.z
    i8 5, label %bb.aa
    i8 7, label %bb.ab
    i8 8, label %bb.ac
    i8 9, label %bb.ad
  ]

bb.p:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.dr = load float, ptr %i.dn, align 4, !tbaa !144
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.ds = load i16, ptr %i.dn, align 2, !tbaa !146 ; 2 uses
  %i.dt = zext i16 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 13
  %i.dv = and i32 %i.du, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %i.ds to i32
  %i.dw = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.dx = icmp samesign ugt i32 %i.dv, 8388607
  br i1 %i.dx, label %bb.r, label %bb.u, !prof !140

bb.r:                                             ; preds = %bb.q
  %i.dy = or disjoint i32 %i.dv, %i.dw            ; 2 uses
  %i.dz = icmp samesign ult i32 %i.dv, 260046848
  br i1 %i.dz, label %bb.s, label %bb.t, !prof !140

bb.s:                                             ; preds = %bb.r
  %i.ea = add nuw nsw i32 %i.dy, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.eb = or i32 %i.dy, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.u:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dv, i1 true)
  %i.ed = add nsw i32 %i.ec, -8                   ; 2 uses
  %i.ee = shl i32 %i.dv, %i.ed
  %i.ef = or i32 %i.dw, %i.ee
  %i.eg = or i32 %i.ef, 947912704
  %i.eh = shl nuw nsw i32 %i.ed, 23
  %i.ei = sub nuw i32 %i.eg, %i.eh
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_18DeepData4sortEl:bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !96   ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %1, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %.not.i = icmp slt i64 %1, %i.g
  %or.cond.i = select i1 %i.e, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 3 uses
  %i.l = icmp slt i32 %i.k, 2
  br i1 %i.l, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.m = zext nneg i32 %i.k to i64                ; 3 uses
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 4 uses
  %i.o = alloca i8, i64 %i.n, align 16            ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n ; 5 uses
  %i.q = add nsw i64 %i.n, -4                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.s, 9223372036854775800      ; 4 uses
  %i.t = trunc i64 %n.vec to i32
  %i.u = shl i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %i.o, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 16, !tbaa !3
  store <4 x i32> %step.add, ptr %i.x, align 16, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %middle.block
  %.08.i.ph = phi i32 [ 0, %bb.c ], [ %i.t, %middle.block ]
  %.057.i.ph = phi ptr [ %i.o, %bb.c ], [ %i.v, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i32 [ %i.z, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 %.08.i, ptr %.057.i, align 4, !tbaa !3
  %i.z = add nuw nsw i32 %.08.i, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 2 uses
  %.not.i38 = icmp eq ptr %i.aa, %i.p
  br i1 %.not.i38, label %.loopexit, label %.lr.ph.i, !llvm.loop !168

.loopexit:                                        ; preds = %.lr.ph.i, %middle.block
  %i.ab = trunc i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ab, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.c, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ac = add nuw nsw i64 %i.m, 1
  %i.ad = lshr i64 %i.ac, 1                       ; 5 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.ai, %select.unfold.i.i.i.i ], [ %i.ad, %.loopexit ] ; 8 uses
  %i.ae = shl nuw nsw i64 %.010.i.i.i.i, 2
  %i.af = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ae, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.ag = icmp eq i64 %.010.i.i.i.i, 1
  %i.ah = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.ai = lshr i64 %i.ah, 1
  br i1 %i.ag, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread, label %.lr.ph.i.i.i.i, !llvm.loop !169

_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i:    ; preds = %.lr.ph.i.i.i.i
  %i.aj = icmp eq i64 %i.ad, %.010.i.i.i.i
  br i1 %i.aj, label %bb.d, label %bb.g, !prof !140

_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread: ; preds = %select.unfold.i.i.i.i
  %i.ak = icmp eq i64 %i.ad, 0
  br i1 %i.ak, label %bb.d, label %bb.f, !prof !140

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread, %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i
  %.sroa.5.0.i.i60 = phi i64 [ 0, %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread ], [ %.010.i.i.i.i, %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i ]
  %.idx44 = shl nuw nsw i64 %i.ad, 2              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx44 ; 3 uses
  call fastcc void @_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.al, ptr noundef %i.af, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  call fastcc void @_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_(ptr noundef nonnull %i.al, ptr noundef nonnull %i.p, ptr noundef %i.af, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  %gepdiff = sub nsw i64 %i.n, %.idx44
  %i.am = ashr exact i64 %gepdiff, 2
  call fastcc void @_ZSt16__merge_adaptiveIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_T2_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.al, ptr noundef nonnull %i.p, i64 noundef %i.ad, i64 noundef %i.am, ptr noundef %i.af, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  br label %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit

bb.e:                                             ; preds = %bb.g, %bb.f
  %.sroa.12.0.i.i5565 = phi ptr [ %i.af, %bb.g ], [ null, %bb.f ]
  %.sroa.5.0.i.i5964 = phi i64 [ %.010.i.i.i.i, %bb.g ], [ 0, %bb.f ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = shl nuw nsw i64 %.sroa.5.0.i.i5964, 2
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i5565, i64 noundef %i.ao) #28
  resume { ptr, i32 } %i.an

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread
  invoke fastcc void @_ZSt21__inplace_stable_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit unwind label %bb.e

bb.g:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i
  invoke fastcc void @_ZSt29__stable_sort_adaptive_resizeIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.af, i64 noundef %.010.i.i.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit unwind label %bb.e

_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.5.0.i.i58 = phi i64 [ %.010.i.i.i.i, %bb.g ], [ 0, %bb.f ], [ %.sroa.5.0.i.i60, %bb.d ]
  %.sroa.12.0.i.i56 = phi ptr [ %i.af, %bb.g ], [ null, %bb.f ], [ %i.af, %bb.d ]
  %i.ap = shl nuw nsw i64 %.sroa.5.0.i.i58, 2
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i56, i64 noundef %i.ap) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 216
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !92 ; 3 uses
  %i.at = mul i64 %i.as, %i.m                     ; 3 uses
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit
  %i.au = alloca i8, i64 %i.at, align 16
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit
  %i.av = phi ptr [ %i.au, %bb.h ], [ null, %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit ] ; 2 uses
  %i.aw = call noundef ptr @_ZN11OpenImageIO4v3_18DeepData8data_ptrElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef 0, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.av, ptr align 1 %i.aw, i64 %i.at, i1 false)
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = call noundef ptr @_ZN11OpenImageIO4v3_18DeepData8data_ptrElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef 0, i32 noundef %i.ax)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %i.as, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.bd, i64 %i.as, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %.lr.ph, !llvm.loop !170

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread: ; preds = %.lr.ph, %bb.b, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18DeepData14merge_overlapsEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load i32, ptr %i.b, align 8, !tbaa !96   ; 4 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.f = load i32, ptr %i.e, align 4, !tbaa !101  ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  %spec.select = select i1 %i.g, i32 %i.c, i32 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !63   ; 3 uses
  %i.j = icmp sgt i64 %1, -1                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.l = icmp sgt i32 %i.i, 0
  %i.m = icmp slt i64 %1, 0                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  %wide.trip.count267 = zext nneg i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.ec, %bb.b
  %.0105 = phi i32 [ 1, %bb.b ], [ %i.vw, %bb.ec ] ; 17 uses
  %i.n = load i64, ptr %i.k, align 8
  %.not.i = icmp slt i64 %1, %i.n
  %or.cond.i = select i1 %i.j, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %1
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %bb.c, %bb.d
  %.0.i126 = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ]
  %i.t = icmp slt i32 %.0105, %.0.i126
  br i1 %i.t, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.u = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.c, i32 noundef %.0105)
  %i.v = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %spec.select, i32 noundef %.0105)
  %i.w = add nsw i32 %.0105, -1                   ; 11 uses
  %i.x = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.c, i32 noundef %i.w)
  %i.y = fcmp oeq float %i.u, %i.x
  br i1 %i.y, label %bb.f, label %bb.ec

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %spec.select, i32 noundef %i.w)
  %i.aa = fcmp oeq float %i.v, %i.z
  br i1 %i.aa, label %.preheader259, label %bb.ec

.preheader259:                                    ; preds = %bb.f
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader259
  %i.ab = icmp slt i32 %.0105, 1                  ; 2 uses
  %i.ac = icmp slt i32 %.0105, 0                  ; 2 uses
  br label %bb.g

.lr.ph262:                                        ; preds = %bb.cj
  %i.ad = icmp slt i32 %.0105, 1
  %i.ae = icmp slt i32 %.0105, 0
  br label %bb.cn

bb.g:                                             ; preds = %.lr.ph, %bb.cj
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cj ] ; 10 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3  ; 4 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = zext i32 %i.aj to i64                   ; 5 uses
  %i.am = icmp eq i64 %indvars.iv, %i.al
  %or.cond119 = or i1 %i.ak, %i.am
  br i1 %or.cond119, label %bb.cj, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.m, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.k, align 8, !tbaa !62  ; 15 uses
  %i.ao = icmp slt i64 %1, %i.an
  %i.ap = load i32, ptr %i.h, align 8             ; 15 uses
  %.not.i.i = icmp slt i32 %i.aj, %i.ap
  %or.cond21.i.i = select i1 %i.ao, i1 %.not.i.i, i1 false
  br i1 %or.cond21.i.i, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !129
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !51 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  %or.cond3.i.i = or i1 %i.ab, %i.au
  br i1 %or.cond3.i.i, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %1
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %.not19.i.i = icmp slt i32 %i.w, %i.ay
  br i1 %.not19.i.i, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i, label %bb.aa

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %1
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = add i32 %i.bc, %i.w
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !92
  %i.bh = mul i64 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.al
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !95
  %i.bm = getelementptr i8, ptr %i.at, i64 %i.bh
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bl  ; 11 uses
  %.not.i128 = icmp eq ptr %i.bn, null
  br i1 %.not.i128, label %bb.aa, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.al
  %i.bq = load i64, ptr %i.bp, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.bq to i8
  switch i8 %.sroa.01.0.extract.trunc.i, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i [
    i8 11, label %bb.l
    i8 10, label %bb.m
    i8 6, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
    i8 5, label %bb.w
    i8 7, label %bb.x
    i8 8, label %bb.y
    i8 9, label %bb.z
  ]

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.br = load float, ptr %i.bn, align 4, !tbaa !144
  br label %bb.aa

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.bs = load i16, ptr %i.bn, align 2, !tbaa !146 ; 2 uses
  %i.bt = zext i16 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 13
  %i.bv = and i32 %i.bu, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %i.bs to i32
  %i.bw = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.bx = icmp samesign ugt i32 %i.bv, 8388607
  br i1 %i.bx, label %bb.n, label %bb.q, !prof !140

bb.n:                                             ; preds = %bb.m
  %i.by = or disjoint i32 %i.bv, %i.bw            ; 2 uses
  %i.bz = icmp samesign ult i32 %i.bv, 260046848
  br i1 %i.bz, label %bb.o, label %bb.p, !prof !140

bb.o:                                             ; preds = %bb.n
  %i.ca = add nuw nsw i32 %i.by, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cb = or i32 %i.by, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.q:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bv, i1 true)
  %i.cd = add nsw i32 %i.cc, -8                   ; 2 uses
  %i.ce = shl i32 %i.bv, %i.cd
  %i.cf = or i32 %i.bw, %i.ce
  %i.cg = or i32 %i.cf, 947912704
  %i.ch = shl nuw nsw i32 %i.cd, 23
  %i.ci = sub nuw i32 %i.cg, %i.ch
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

_ZNK9Imath_3_14halfcvfEv.exit.i:                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.0.0.i.i.i = phi i32 [ %i.ca, %bb.o ], [ %i.cb, %bb.p ], [ %i.ci, %bb.r ], [ %i.bw, %bb.q ]
  %i.cj = bitcast i32 %.sroa.0.0.i.i.i to float
  br label %bb.aa

bb.s:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.ck = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.cl = uitofp i32 %i.ck to float
  %i.cm = fmul nnan float %i.cl, f0x2F800000
  br label %bb.aa

bb.t:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.cn = load i8, ptr %i.bn, align 1, !tbaa !47
  %i.co = uitofp i8 %i.cn to float
  %i.cp = fmul nnan float %i.co, f0x3B808081
  br label %bb.aa

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.cq = load i8, ptr %i.bn, align 1, !tbaa !47
  %i.cr = sitofp i8 %i.cq to float
  %i.cs = fmul nnan float %i.cr, f0x3C010204
  br label %bb.aa

bb.v:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.ct = load i16, ptr %i.bn, align 2, !tbaa !149
  %i.cu = uitofp i16 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x37800080
  br label %bb.aa

bb.w:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.cw = load i16, ptr %i.bn, align 2, !tbaa !149
  %i.cx = sitofp i16 %i.cw to float
  %i.cy = fmul nnan float %i.cx, f0x38000100
  br label %bb.aa

bb.x:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.cz = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.da = sitofp i32 %i.cz to float
  %i.db = fmul nnan float %i.da, f0x30000000
  br label %bb.aa

bb.y:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.dc = load i64, ptr %i.bn, align 8, !tbaa !150
  %i.dd = uitofp i64 %i.dc to float
  %i.de = fmul nnan float %i.dd, f0x1F800000
  br label %bb.aa

bb.z:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.df = load i64, ptr %i.bn, align 8, !tbaa !150
  %i.dg = sitofp i64 %i.df to float
  %i.dh = fmul nnan float %i.dg, f0x20000000
  br label %bb.aa

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.di = trunc i64 %i.bq to i32
  %i.dj = and i32 %i.di, 255
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.dl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.dj) #31 ; 0 uses
  %.pre = load i64, ptr %i.k, align 8, !tbaa !62
  %.pre269 = load i32, ptr %i.h, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %bb.j, %bb.k, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i, %bb.l, %_ZNK9Imath_3_14halfcvfEv.exit.i, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i
  %i.dm = phi i32 [ %i.ap, %bb.i ], [ %i.ap, %bb.j ], [ %i.ap, %bb.k ], [ %i.ap, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i ], [ %i.ap, %bb.z ], [ %i.ap, %bb.y ], [ %i.ap, %bb.x ], [ %i.ap, %bb.w ], [ %i.ap, %bb.v ], [ %i.ap, %bb.u ], [ %i.ap, %bb.t ], [ %i.ap, %bb.s ], [ %i.ap, %_ZNK9Imath_3_14halfcvfEv.exit.i ], [ %i.ap, %bb.l ], [ %.pre269, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i ] ; 16 uses
  %i.dn = phi i64 [ %i.an, %bb.i ], [ %i.an, %bb.j ], [ %i.an, %bb.k ], [ %i.an, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i ], [ %i.an, %bb.z ], [ %i.an, %bb.y ], [ %i.an, %bb.x ], [ %i.an, %bb.w ], [ %i.an, %bb.v ], [ %i.an, %bb.u ], [ %i.an, %bb.t ], [ %i.an, %bb.s ], [ %i.an, %_ZNK9Imath_3_14halfcvfEv.exit.i ], [ %i.an, %bb.l ], [ %.pre, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i ] ; 16 uses
  %.0.i127.ph = phi float [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i ], [ %i.dh, %bb.z ], [ %i.de, %bb.y ], [ %i.db, %bb.x ], [ %i.cy, %bb.w ], [ %i.cv, %bb.v ], [ %i.cs, %bb.u ], [ %i.cp, %bb.t ], [ %i.cm, %bb.s ], [ %i.cj, %_ZNK9Imath_3_14halfcvfEv.exit.i ], [ %i.br, %bb.l ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i ] ; 2 uses
  %.inv255 = fcmp oge float %.0.i127.ph, 0.000000e+00
  %.0.i124227 = select i1 %.inv255, float %.0.i127.ph, float 0.000000e+00 ; 2 uses
  %i.do = fcmp ogt float %.0.i124227, 1.000000e+00
  %.1.i125228 = select i1 %i.do, float 1.000000e+00, float %.0.i124227 ; 16 uses
  %i.dp = icmp slt i64 %1, %i.dn
  %.not.i.i130 = icmp slt i32 %i.aj, %i.dm
  %or.cond21.i.i131 = select i1 %i.dp, i1 %.not.i.i130, i1 false
  br i1 %or.cond21.i.i131, label %bb.ab, label %bb.at

bb.ab:                                            ; preds = %bb.aa
  %i.dq = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %.not18.i.i133 = icmp eq ptr %i.dq, null
  br i1 %.not18.i.i133, label %bb.at, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 144
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 152
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !129
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !51 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  %or.cond3.i.i134 = or i1 %i.ac, %i.dv
  br i1 %or.cond3.i.i134, label %bb.at, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %1
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %.not19.i.i135 = icmp slt i32 %.0105, %i.dz
  br i1 %.not19.i.i135, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i136, label %bb.at

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i136: ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %1
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = add i32 %i.ed, %.0105
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 216
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !92
  %i.ei = mul i64 %i.eh, %i.ef
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !57
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.al
  %i.em = load i64, ptr %i.el, align 8, !tbaa !95
  %i.en = getelementptr i8, ptr %i.du, i64 %i.ei
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.em  ; 11 uses
  %.not.i137 = icmp eq ptr %i.eo, null
  br i1 %.not.i137, label %bb.at, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i136
  %i.ep = load ptr, ptr %i.dq, align 8, !tbaa !11
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.al
  %i.er = load i64, ptr %i.eq, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i139 = trunc i64 %i.er to i8
  switch i8 %.sroa.01.0.extract.trunc.i139, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i144 [
    i8 11, label %bb.ae
    i8 10, label %bb.af
    i8 6, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.an
    i8 4, label %bb.ao
    i8 5, label %bb.ap
    i8 7, label %bb.aq
    i8 8, label %bb.ar
    i8 9, label %bb.as
  ]

bb.ae:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.es = load float, ptr %i.eo, align 4, !tbaa !144
  br label %bb.at

bb.af:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.et = load i16, ptr %i.eo, align 2, !tbaa !146 ; 2 uses
  %i.eu = zext i16 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 13
  %i.ew = and i32 %i.ev, 268427264                ; 6 uses
  %.signext.i.i.i140 = sext i16 %i.et to i32
  %i.ex = and i32 %.signext.i.i.i140, -2147483648 ; 3 uses
  %i.ey = icmp samesign ugt i32 %i.ew, 8388607
  br i1 %i.ey, label %bb.ag, label %bb.aj, !prof !140

bb.ag:                                            ; preds = %bb.af
  %i.ez = or disjoint i32 %i.ew, %i.ex            ; 2 uses
  %i.fa = icmp samesign ult i32 %i.ew, 260046848
  br i1 %i.fa, label %bb.ah, label %bb.ai, !prof !140

bb.ah:                                            ; preds = %bb.ag
  %i.fb = add nuw nsw i32 %i.ez, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i142

bb.ai:                                            ; preds = %bb.ag
  %i.fc = or i32 %i.ez, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i142

bb.aj:                                            ; preds = %bb.af
  %.not.i.i.i141 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i.i141, label %_ZNK9Imath_3_14halfcvfEv.exit.i142, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fd = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ew, i1 true)
  %i.fe = add nsw i32 %i.fd, -8                   ; 2 uses
  %i.ff = shl i32 %i.ew, %i.fe
  %i.fg = or i32 %i.ex, %i.ff
  %i.fh = or i32 %i.fg, 947912704
  %i.fi = shl nuw nsw i32 %i.fe, 23
  %i.fj = sub nuw i32 %i.fh, %i.fi
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i142

_ZNK9Imath_3_14halfcvfEv.exit.i142:               ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.sroa.0.0.i.i.i143 = phi i32 [ %i.fb, %bb.ah ], [ %i.fc, %bb.ai ], [ %i.fj, %bb.ak ], [ %i.ex, %bb.aj ]
  %i.fk = bitcast i32 %.sroa.0.0.i.i.i143 to float
  br label %bb.at

bb.al:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.fl = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.fm = uitofp i32 %i.fl to float
  %i.fn = fmul nnan float %i.fm, f0x2F800000
  br label %bb.at

bb.am:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.fo = load i8, ptr %i.eo, align 1, !tbaa !47
  %i.fp = uitofp i8 %i.fo to float
  %i.fq = fmul nnan float %i.fp, f0x3B808081
  br label %bb.at

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.fr = load i8, ptr %i.eo, align 1, !tbaa !47
  %i.fs = sitofp i8 %i.fr to float
  %i.ft = fmul nnan float %i.fs, f0x3C010204
  br label %bb.at

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.fu = load i16, ptr %i.eo, align 2, !tbaa !149
  %i.fv = uitofp i16 %i.fu to float
  %i.fw = fmul nnan float %i.fv, f0x37800080
  br label %bb.at

bb.ap:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.fx = load i16, ptr %i.eo, align 2, !tbaa !149
  %i.fy = sitofp i16 %i.fx to float
  %i.fz = fmul nnan float %i.fy, f0x38000100
  br label %bb.at

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.ga = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.gb = sitofp i32 %i.ga to float
  %i.gc = fmul nnan float %i.gb, f0x30000000
  br label %bb.at

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.gd = load i64, ptr %i.eo, align 8, !tbaa !150
  %i.ge = uitofp i64 %i.gd to float
  %i.gf = fmul nnan float %i.ge, f0x1F800000
  br label %bb.at

bb.as:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.gg = load i64, ptr %i.eo, align 8, !tbaa !150
  %i.gh = sitofp i64 %i.gg to float
  %i.gi = fmul nnan float %i.gh, f0x20000000
  br label %bb.at

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i144: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i138
  %i.gj = trunc i64 %i.er to i32
  %i.gk = and i32 %i.gj, 255
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.gm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gl, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.gk) #31 ; 0 uses
  %.pre270 = load i64, ptr %i.k, align 8, !tbaa !62
  %.pre271 = load i32, ptr %i.h, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i136, %bb.ae, %_ZNK9Imath_3_14halfcvfEv.exit.i142, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i144
  %i.gn = phi i32 [ %i.dm, %bb.aa ], [ %i.dm, %bb.ab ], [ %i.dm, %bb.ac ], [ %i.dm, %bb.ad ], [ %i.dm, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i136 ], [ %i.dm, %bb.as ], [ %i.dm, %bb.ar ], [ %i.dm, %bb.aq ], [ %i.dm, %bb.ap ], [ %i.dm, %bb.ao ], [ %i.dm, %bb.an ], [ %i.dm, %bb.am ], [ %i.dm, %bb.al ], [ %i.dm, %_ZNK9Imath_3_14halfcvfEv.exit.i142 ], [ %i.dm, %bb.ae ], [ %.pre271, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i144 ]
  %i.go = phi i64 [ %i.dn, %bb.aa ], [ %i.dn, %bb.ab ], [ %i.dn, %bb.ac ], [ %i.dn, %bb.ad ], [ %i.dn, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i136 ], [ %i.dn, %bb.as ], [ %i.dn, %bb.ar ], [ %i.dn, %bb.aq ], [ %i.dn, %bb.ap ], [ %i.dn, %bb.ao ], [ %i.dn, %bb.an ], [ %i.dn, %bb.am ], [ %i.dn, %bb.al ], [ %i.dn, %_ZNK9Imath_3_14halfcvfEv.exit.i142 ], [ %i.dn, %bb.ae ], [ %.pre270, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i144 ] ; 16 uses
  %.0.i132.ph = phi float [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i136 ], [ %i.gi, %bb.as ], [ %i.gf, %bb.ar ], [ %i.gc, %bb.aq ], [ %i.fz, %bb.ap ], [ %i.fw, %bb.ao ], [ %i.ft, %bb.an ], [ %i.fq, %bb.am ], [ %i.fn, %bb.al ], [ %i.fk, %_ZNK9Imath_3_14halfcvfEv.exit.i142 ], [ %i.es, %bb.ae ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i144 ] ; 2 uses
  %.inv256 = fcmp oge float %.0.i132.ph, 0.000000e+00
  %.0.i122233 = select i1 %.inv256, float %.0.i132.ph, float 0.000000e+00 ; 2 uses
  %i.gp = fcmp ogt float %.0.i122233, 1.000000e+00
  %.1.i123234 = select i1 %i.gp, float 1.000000e+00, float %.0.i122233 ; 16 uses
  %i.gq = icmp slt i64 %1, %i.go
  %i.gr = sext i32 %i.gn to i64                   ; 16 uses
  %.not.i.i147 = icmp slt i64 %indvars.iv, %i.gr
  %or.cond21.i.i148 = select i1 %i.gq, i1 %.not.i.i147, i1 false
  br i1 %or.cond21.i.i148, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  %i.gs = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %.not18.i.i150 = icmp eq ptr %i.gs, null
  br i1 %.not18.i.i150, label %bb.bm, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 144
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 152
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !129
  %i.gw = load ptr, ptr %i.gt, align 8, !tbaa !51 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  %or.cond3.i.i151 = or i1 %i.ab, %i.gx
  br i1 %or.cond3.i.i151, label %bb.bm, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !54
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %1
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3
  %.not19.i.i152 = icmp slt i32 %i.w, %i.hb
  br i1 %.not19.i.i152, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153, label %bb.bm

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153: ; preds = %bb.aw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gs, i64 120
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !54
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %1
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = add i32 %i.hf, %i.w
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gs, i64 216
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !92
  %i.hk = mul i64 %i.hj, %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !57
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !95
  %i.hp = getelementptr i8, ptr %i.gw, i64 %i.hk
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.ho  ; 11 uses
  %.not.i154 = icmp eq ptr %i.hq, null
  br i1 %.not.i154, label %bb.bm, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153
  %i.hr = load ptr, ptr %i.gs, align 8, !tbaa !11
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv
  %i.ht = load i64, ptr %i.hs, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i156 = trunc i64 %i.ht to i8
  switch i8 %.sroa.01.0.extract.trunc.i156, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161 [
    i8 11, label %bb.ax
    i8 10, label %bb.ay
    i8 6, label %bb.be
    i8 2, label %bb.bf
    i8 3, label %bb.bg
    i8 4, label %bb.bh
    i8 5, label %bb.bi
    i8 7, label %bb.bj
    i8 8, label %bb.bk
    i8 9, label %bb.bl
  ]

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !144
  br label %bb.bm

bb.ay:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.hv = load i16, ptr %i.hq, align 2, !tbaa !146 ; 2 uses
  %i.hw = zext i16 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 13
  %i.hy = and i32 %i.hx, 268427264                ; 6 uses
  %.signext.i.i.i157 = sext i16 %i.hv to i32
  %i.hz = and i32 %.signext.i.i.i157, -2147483648 ; 3 uses
  %i.ia = icmp samesign ugt i32 %i.hy, 8388607
  br i1 %i.ia, label %bb.az, label %bb.bc, !prof !140

bb.az:                                            ; preds = %bb.ay
  %i.ib = or disjoint i32 %i.hy, %i.hz            ; 2 uses
  %i.ic = icmp samesign ult i32 %i.hy, 260046848
  br i1 %i.ic, label %bb.ba, label %bb.bb, !prof !140

bb.ba:                                            ; preds = %bb.az
  %i.id = add nuw nsw i32 %i.ib, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i159

bb.bb:                                            ; preds = %bb.az
  %i.ie = or i32 %i.ib, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i159

bb.bc:                                            ; preds = %bb.ay
  %.not.i.i.i158 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i.i158, label %_ZNK9Imath_3_14halfcvfEv.exit.i159, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.if = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.hy, i1 true)
  %i.ig = add nsw i32 %i.if, -8                   ; 2 uses
  %i.ih = shl i32 %i.hy, %i.ig
  %i.ii = or i32 %i.hz, %i.ih
  %i.ij = or i32 %i.ii, 947912704
  %i.ik = shl nuw nsw i32 %i.ig, 23
  %i.il = sub nuw i32 %i.ij, %i.ik
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i159

_ZNK9Imath_3_14halfcvfEv.exit.i159:               ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sroa.0.0.i.i.i160 = phi i32 [ %i.id, %bb.ba ], [ %i.ie, %bb.bb ], [ %i.il, %bb.bd ], [ %i.hz, %bb.bc ]
  %i.im = bitcast i32 %.sroa.0.0.i.i.i160 to float
  br label %bb.bm

bb.be:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.in = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.io = uitofp i32 %i.in to float
  %i.ip = fmul nnan float %i.io, f0x2F800000
  br label %bb.bm

bb.bf:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.iq = load i8, ptr %i.hq, align 1, !tbaa !47
  %i.ir = uitofp i8 %i.iq to float
  %i.is = fmul nnan float %i.ir, f0x3B808081
  br label %bb.bm

bb.bg:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.it = load i8, ptr %i.hq, align 1, !tbaa !47
  %i.iu = sitofp i8 %i.it to float
  %i.iv = fmul nnan float %i.iu, f0x3C010204
  br label %bb.bm

bb.bh:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.iw = load i16, ptr %i.hq, align 2, !tbaa !149
  %i.ix = uitofp i16 %i.iw to float
  %i.iy = fmul nnan float %i.ix, f0x37800080
  br label %bb.bm

bb.bi:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.iz = load i16, ptr %i.hq, align 2, !tbaa !149
  %i.ja = sitofp i16 %i.iz to float
  %i.jb = fmul nnan float %i.ja, f0x38000100
  br label %bb.bm

bb.bj:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jc = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.jd = sitofp i32 %i.jc to float
  %i.je = fmul nnan float %i.jd, f0x30000000
  br label %bb.bm

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jf = load i64, ptr %i.hq, align 8, !tbaa !150
  %i.jg = uitofp i64 %i.jf to float
  %i.jh = fmul nnan float %i.jg, f0x1F800000
  br label %bb.bm

bb.bl:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.ji = load i64, ptr %i.hq, align 8, !tbaa !150
  %i.jj = sitofp i64 %i.ji to float
  %i.jk = fmul nnan float %i.jj, f0x20000000
  br label %bb.bm

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jl = trunc i64 %i.ht to i32
  %i.jm = and i32 %i.jl, 255
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.jo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jn, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.jm) #31 ; 0 uses
  %.pre272 = load i64, ptr %i.k, align 8, !tbaa !62
  %.pre273 = load i32, ptr %i.h, align 8
  %.pre276 = sext i32 %.pre273 to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.at, %bb.au, %bb.av, %bb.aw, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153, %bb.ax, %_ZNK9Imath_3_14halfcvfEv.exit.i159, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161
  %.pre-phi = phi i64 [ %i.gr, %bb.at ], [ %i.gr, %bb.au ], [ %i.gr, %bb.av ], [ %i.gr, %bb.aw ], [ %i.gr, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153 ], [ %i.gr, %bb.ax ], [ %i.gr, %_ZNK9Imath_3_14halfcvfEv.exit.i159 ], [ %i.gr, %bb.be ], [ %i.gr, %bb.bf ], [ %i.gr, %bb.bg ], [ %i.gr, %bb.bh ], [ %i.gr, %bb.bi ], [ %i.gr, %bb.bj ], [ %i.gr, %bb.bk ], [ %i.gr, %bb.bl ], [ %.pre276, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161 ]
  %i.jp = phi i64 [ %i.go, %bb.at ], [ %i.go, %bb.au ], [ %i.go, %bb.av ], [ %i.go, %bb.aw ], [ %i.go, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153 ], [ %i.go, %bb.ax ], [ %i.go, %_ZNK9Imath_3_14halfcvfEv.exit.i159 ], [ %i.go, %bb.be ], [ %i.go, %bb.bf ], [ %i.go, %bb.bg ], [ %i.go, %bb.bh ], [ %i.go, %bb.bi ], [ %i.go, %bb.bj ], [ %i.go, %bb.bk ], [ %i.go, %bb.bl ], [ %.pre272, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161 ]
  %.0.i149.ph = phi float [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.au ], [ 0.000000e+00, %bb.av ], [ 0.000000e+00, %bb.aw ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153 ], [ %i.hu, %bb.ax ], [ %i.im, %_ZNK9Imath_3_14halfcvfEv.exit.i159 ], [ %i.ip, %bb.be ], [ %i.is, %bb.bf ], [ %i.iv, %bb.bg ], [ %i.iy, %bb.bh ], [ %i.jb, %bb.bi ], [ %i.je, %bb.bj ], [ %i.jh, %bb.bk ], [ %i.jk, %bb.bl ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161 ] ; 16 uses
  %i.jq = icmp slt i64 %1, %i.jp
  %.not.i.i164 = icmp slt i64 %indvars.iv, %.pre-phi
  %or.cond21.i.i165 = select i1 %i.jq, i1 %.not.i.i164, i1 false
  br i1 %or.cond21.i.i165, label %bb.bn, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.bn:                                            ; preds = %bb.bm
  %i.jr = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %.not18.i.i167 = icmp eq ptr %i.jr, null
  br i1 %.not18.i.i167, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 144
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 152
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !129
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !51 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  %or.cond3.i.i168 = or i1 %i.ac, %i.jw
  br i1 %or.cond3.i.i168, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !54
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %1
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !3
  %.not19.i.i169 = icmp slt i32 %.0105, %i.ka
  br i1 %.not19.i.i169, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170: ; preds = %bb.bp
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 120
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !54
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %1
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !3
  %i.kf = add i32 %i.ke, %.0105
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jr, i64 216
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !92
  %i.kj = mul i64 %i.ki, %i.kg
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !57
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !95
  %i.ko = getelementptr i8, ptr %i.jv, i64 %i.kj
  %i.kp = getelementptr i8, ptr %i.ko, i64 %i.kn  ; 11 uses
  %.not.i171 = icmp eq ptr %i.kp, null
  br i1 %.not.i171, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170
  %i.kq = load ptr, ptr %i.jr, align 8, !tbaa !11
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv
  %i.ks = load i64, ptr %i.kr, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i173 = trunc i64 %i.ks to i8
  switch i8 %.sroa.01.0.extract.trunc.i173, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178 [
    i8 11, label %bb.bq
    i8 10, label %bb.br
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_18DeepData14merge_overlapsEl:bb.a

bb.cb:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.ly = load i16, ptr %i.kp, align 2, !tbaa !149
  %i.lz = sitofp i16 %i.ly to float
  %i.ma = fmul nnan float %i.lz, f0x38000100
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.cc:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.mb = load i32, ptr %i.kp, align 4, !tbaa !3
  %i.mc = sitofp i32 %i.mb to float
  %i.md = fmul nnan float %i.mc, f0x30000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.cd:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.me = load i64, ptr %i.kp, align 8, !tbaa !150
  %i.mf = uitofp i64 %i.me to float
  %i.mg = fmul nnan float %i.mf, f0x1F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.ce:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.mh = load i64, ptr %i.kp, align 8, !tbaa !150
  %i.mi = sitofp i64 %i.mh to float
  %i.mj = fmul nnan float %i.mi, f0x20000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.mk = trunc i64 %i.ks to i32
  %i.ml = and i32 %i.mk, 255
  %i.mm = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.mn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mm, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.ml) #31 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179: ; preds = %bb.h, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170, %bb.bq, %_ZNK9Imath_3_14halfcvfEv.exit.i176, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178
  %.0.i149247 = phi float [ %.0.i149.ph, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178 ], [ %.0.i149.ph, %bb.bq ], [ %.0.i149.ph, %_ZNK9Imath_3_14halfcvfEv.exit.i176 ], [ %.0.i149.ph, %bb.bx ], [ %.0.i149.ph, %bb.by ], [ %.0.i149.ph, %bb.bz ], [ %.0.i149.ph, %bb.ca ], [ %.0.i149.ph, %bb.cb ], [ %.0.i149.ph, %bb.cc ], [ %.0.i149.ph, %bb.cd ], [ %.0.i149.ph, %bb.ce ], [ %.0.i149.ph, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170 ], [ %.0.i149.ph, %bb.bp ], [ %.0.i149.ph, %bb.bo ], [ %.0.i149.ph, %bb.bn ], [ %.0.i149.ph, %bb.bm ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.1.i125230236245 = phi float [ %.1.i125228, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178 ], [ %.1.i125228, %bb.bq ], [ %.1.i125228, %_ZNK9Imath_3_14halfcvfEv.exit.i176 ], [ %.1.i125228, %bb.bx ], [ %.1.i125228, %bb.by ], [ %.1.i125228, %bb.bz ], [ %.1.i125228, %bb.ca ], [ %.1.i125228, %bb.cb ], [ %.1.i125228, %bb.cc ], [ %.1.i125228, %bb.cd ], [ %.1.i125228, %bb.ce ], [ %.1.i125228, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170 ], [ %.1.i125228, %bb.bp ], [ %.1.i125228, %bb.bo ], [ %.1.i125228, %bb.bn ], [ %.1.i125228, %bb.bm ], [ 0.000000e+00, %bb.h ] ; 5 uses
  %.1.i123238243 = phi float [ %.1.i123234, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178 ], [ %.1.i123234, %bb.bq ], [ %.1.i123234, %_ZNK9Imath_3_14halfcvfEv.exit.i176 ], [ %.1.i123234, %bb.bx ], [ %.1.i123234, %bb.by ], [ %.1.i123234, %bb.bz ], [ %.1.i123234, %bb.ca ], [ %.1.i123234, %bb.cb ], [ %.1.i123234, %bb.cc ], [ %.1.i123234, %bb.cd ], [ %.1.i123234, %bb.ce ], [ %.1.i123234, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170 ], [ %.1.i123234, %bb.bp ], [ %.1.i123234, %bb.bo ], [ %.1.i123234, %bb.bn ], [ %.1.i123234, %bb.bm ], [ 0.000000e+00, %bb.h ] ; 6 uses
  %.0.i166 = phi float [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178 ], [ %i.kt, %bb.bq ], [ %i.ll, %_ZNK9Imath_3_14halfcvfEv.exit.i176 ], [ %i.lo, %bb.bx ], [ %i.lr, %bb.by ], [ %i.lu, %bb.bz ], [ %i.lx, %bb.ca ], [ %i.ma, %bb.cb ], [ %i.md, %bb.cc ], [ %i.mg, %bb.cd ], [ %i.mj, %bb.ce ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170 ], [ 0.000000e+00, %bb.bp ], [ 0.000000e+00, %bb.bo ], [ 0.000000e+00, %bb.bn ], [ 0.000000e+00, %bb.bm ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %i.mo = fadd float %.1.i125230236245, %.1.i123238243
  %i.mp = fneg float %.1.i125230236245            ; 2 uses
  %i.mq = tail call float @llvm.fmuladd.f32(float %i.mp, float %.1.i123238243, float %i.mo) ; 2 uses
  %i.mr = fcmp oeq float %.1.i125230236245, 1.000000e+00 ; 3 uses
  %i.ms = fcmp oeq float %.1.i123238243, 1.000000e+00 ; 2 uses
  %or.cond = and i1 %i.mr, %i.ms
  br i1 %or.cond, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179
  %i.mt = fadd float %.0.i149247, %.0.i166
  %i.mu = fmul float %i.mt, 5.000000e-01
  br label %bb.ci

bb.cg:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179
  %brmerge = or i1 %i.mr, %i.ms
  %.mux = select i1 %i.mr, float %.0.i149247, float %.0.i166
  br i1 %brmerge, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mv = tail call noundef float @log1pf(float noundef %i.mp) #33 ; 2 uses
  %i.mw = fneg float %i.mv                        ; 2 uses
  %i.mx = fmul float %.1.i125230236245, f0x7F7FFFFF
  %i.my = fcmp ogt float %i.mx, %i.mw
  %i.mz = fdiv float %i.mw, %.1.i125230236245
  %i.na = select i1 %i.my, float %i.mz, float 1.000000e+00
  %i.nb = fneg float %.1.i123238243
  %i.nc = tail call noundef float @log1pf(float noundef %i.nb) #33
  %i.nd = fneg float %i.nc                        ; 3 uses
  %i.ne = fmul float %.1.i123238243, f0x7F7FFFFF
  %i.nf = fcmp ogt float %i.ne, %i.nd
  %i.ng = fdiv float %i.nd, %.1.i123238243
  %i.nh = select i1 %i.nf, float %i.ng, float 1.000000e+00
  %i.ni = fsub float %i.nd, %i.mv                 ; 3 uses
  %i.nj = fcmp ogt float %i.ni, 1.000000e+00
  %i.nk = fmul float %i.ni, f0x7F7FFFFF
  %i.nl = fcmp olt float %i.mq, %i.nk
  %or.cond118 = or i1 %i.nj, %i.nl
  %i.nm = fdiv float %i.mq, %i.ni
  %i.nn = select i1 %or.cond118, float %i.nm, float 1.000000e+00
  %i.no = fmul float %.0.i166, %i.nh
  %i.np = tail call float @llvm.fmuladd.f32(float %.0.i149247, float %i.na, float %i.no)
  %i.nq = fmul float %i.np, %i.nn
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.cf
  %.0108 = phi float [ %i.mu, %bb.cf ], [ %i.nq, %bb.ch ], [ %.mux, %bb.cg ]
  %i.nr = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.nr, i32 noundef %i.w, float noundef %.0108)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.g, %bb.ci
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph262, label %bb.g, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.eb, %.preheader259
  %i.ns = load ptr, ptr %0, align 8, !tbaa !36    ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 72
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !54
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %1
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !3  ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.nw, i32 1) ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 248
  %i.ny = load i8, ptr %i.nx, align 8, !tbaa !64, !range !83, !noundef !84
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i, label %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i: ; preds = %._crit_edge
  %i.oa = load i64, ptr %i.k, align 8
  %.not.i.i180 = icmp slt i64 %1, %i.oa
  %or.cond.i.i = select i1 %i.j, i1 %.not.i.i180, i1 false
  %spec.select.i = select i1 %or.cond.i.i, i32 %i.nw, i32 0
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ns, i64 120
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !54
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %1
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !3  ; 2 uses
  %i.of = add i32 %i.oe, %.0105
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ns, i64 216
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !92 ; 3 uses
  %i.oj = mul i64 %i.oi, %i.og
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !57
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !95 ; 2 uses
  %i.on = add i32 %spec.select.i, %i.oe
  %i.oo = zext i32 %i.on to i64
  %i.op = mul i64 %i.oi, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ns, i64 144
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !134
  %i.os = add i64 %i.oj, %i.om                    ; 2 uses
  %i.ot = getelementptr i8, ptr %i.or, i64 %i.os  ; 3 uses
  %i.ou = sext i32 %.sroa.speculated.i to i64
  %i.ov = mul i64 %i.oi, %i.ou                    ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %i.ot, i64 %i.ov ; 2 uses
  %i.ox = add i64 %i.om, %i.op
  %i.oy = add i64 %i.ov, %i.os
  %gepdiff.i = sub i64 %i.ox, %i.oy               ; 3 uses
  %i.oz = icmp sgt i64 %gepdiff.i, 1
  br i1 %i.oz, label %bb.ck, label %bb.cl, !prof !140

bb.ck:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ot, ptr align 1 %i.ow, i64 %gepdiff.i, i1 false)
  br label %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit

bb.cl:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i
  %i.pa = icmp eq i64 %gepdiff.i, 1
  br i1 %i.pa, label %bb.cm, label %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit

bb.cm:                                            ; preds = %bb.cl
  %i.pb = load i8, ptr %i.ow, align 1, !tbaa !47
  store i8 %i.pb, ptr %i.ot, align 1, !tbaa !47
  br label %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit

_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit: ; preds = %._crit_edge, %bb.ck, %bb.cl, %bb.cm
  %i.pc = load ptr, ptr %0, align 8, !tbaa !36
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 72
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !54
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %1 ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !3
  %i.ph = sub i32 %i.pg, %.sroa.speculated.i
  store i32 %i.ph, ptr %i.pf, align 4, !tbaa !3
  br label %bb.ec

bb.cn:                                            ; preds = %.lr.ph262, %bb.eb
  %indvars.iv264 = phi i64 [ 0, %.lr.ph262 ], [ %indvars.iv.next265, %bb.eb ] ; 8 uses
  %i.pi = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 192
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !39
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv264
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !3  ; 4 uses
  %i.pn = zext i32 %i.pm to i64
  %.not = icmp eq i64 %indvars.iv264, %i.pn
  br i1 %.not, label %bb.co, label %bb.eb

bb.co:                                            ; preds = %bb.cn
  %i.po = icmp slt i32 %i.pm, 0
  br i1 %i.po, label %.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.m, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pp = load i64, ptr %i.k, align 8, !tbaa !62  ; 15 uses
  %i.pq = icmp slt i64 %1, %i.pp
  %i.pr = load i32, ptr %i.h, align 8             ; 15 uses
  %.not.i.i182 = icmp slt i32 %i.pm, %i.pr
  %or.cond21.i.i183 = select i1 %i.pq, i1 %.not.i.i182, i1 false
  br i1 %or.cond21.i.i183, label %bb.cr, label %bb.di

bb.cr:                                            ; preds = %bb.cq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pi, i64 144
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pi, i64 152
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !129
  %i.pv = load ptr, ptr %i.ps, align 8, !tbaa !51 ; 2 uses
  %i.pw = icmp eq ptr %i.pu, %i.pv
  %or.cond3.i.i186 = or i1 %i.ad, %i.pw
  br i1 %or.cond3.i.i186, label %bb.di, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.px = getelementptr inbounds nuw i8, ptr %i.pi, i64 72
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !54
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %1
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !3
  %.not19.i.i187 = icmp slt i32 %i.w, %i.qa
  br i1 %.not19.i.i187, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188, label %bb.di

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188: ; preds = %bb.cs
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pi, i64 120
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !54
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %1
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !3
  %i.qf = add i32 %i.qe, %i.w
  %i.qg = zext i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pi, i64 216
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !92
  %i.qj = mul i64 %i.qi, %i.qg
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pi, i64 48
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !57
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv264
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !95
  %i.qo = getelementptr i8, ptr %i.pv, i64 %i.qj
  %i.qp = getelementptr i8, ptr %i.qo, i64 %i.qn  ; 11 uses
  %.not.i189 = icmp eq ptr %i.qp, null
  br i1 %.not.i189, label %bb.di, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188
  %i.qq = load ptr, ptr %i.pi, align 8, !tbaa !11
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv264
  %i.qs = load i64, ptr %i.qr, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i191 = trunc i64 %i.qs to i8
  switch i8 %.sroa.01.0.extract.trunc.i191, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196 [
    i8 11, label %bb.ct
    i8 10, label %bb.cu
    i8 6, label %bb.da
    i8 2, label %bb.db
    i8 3, label %bb.dc
    i8 4, label %bb.dd
    i8 5, label %bb.de
    i8 7, label %bb.df
    i8 8, label %bb.dg
    i8 9, label %bb.dh
  ]

bb.ct:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.qt = load float, ptr %i.qp, align 4, !tbaa !144
  br label %bb.di

bb.cu:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.qu = load i16, ptr %i.qp, align 2, !tbaa !146 ; 2 uses
  %i.qv = zext i16 %i.qu to i32
  %i.qw = shl nuw nsw i32 %i.qv, 13
  %i.qx = and i32 %i.qw, 268427264                ; 6 uses
  %.signext.i.i.i192 = sext i16 %i.qu to i32
  %i.qy = and i32 %.signext.i.i.i192, -2147483648 ; 3 uses
  %i.qz = icmp samesign ugt i32 %i.qx, 8388607
  br i1 %i.qz, label %bb.cv, label %bb.cy, !prof !140

bb.cv:                                            ; preds = %bb.cu
  %i.ra = or disjoint i32 %i.qx, %i.qy            ; 2 uses
  %i.rb = icmp samesign ult i32 %i.qx, 260046848
  br i1 %i.rb, label %bb.cw, label %bb.cx, !prof !140

bb.cw:                                            ; preds = %bb.cv
  %i.rc = add nuw nsw i32 %i.ra, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i194

bb.cx:                                            ; preds = %bb.cv
  %i.rd = or i32 %i.ra, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i194

bb.cy:                                            ; preds = %bb.cu
  %.not.i.i.i193 = icmp eq i32 %i.qx, 0
  br i1 %.not.i.i.i193, label %_ZNK9Imath_3_14halfcvfEv.exit.i194, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.re = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.qx, i1 true)
  %i.rf = add nsw i32 %i.re, -8                   ; 2 uses
  %i.rg = shl i32 %i.qx, %i.rf
  %i.rh = or i32 %i.qy, %i.rg
  %i.ri = or i32 %i.rh, 947912704
  %i.rj = shl nuw nsw i32 %i.rf, 23
  %i.rk = sub nuw i32 %i.ri, %i.rj
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i194

_ZNK9Imath_3_14halfcvfEv.exit.i194:               ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cw
  %.sroa.0.0.i.i.i195 = phi i32 [ %i.rc, %bb.cw ], [ %i.rd, %bb.cx ], [ %i.rk, %bb.cz ], [ %i.qy, %bb.cy ]
  %i.rl = bitcast i32 %.sroa.0.0.i.i.i195 to float
  br label %bb.di

bb.da:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.rm = load i32, ptr %i.qp, align 4, !tbaa !3
  %i.rn = uitofp i32 %i.rm to float
  %i.ro = fmul nnan float %i.rn, f0x2F800000
  br label %bb.di

bb.db:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.rp = load i8, ptr %i.qp, align 1, !tbaa !47
  %i.rq = uitofp i8 %i.rp to float
  %i.rr = fmul nnan float %i.rq, f0x3B808081
  br label %bb.di

bb.dc:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.rs = load i8, ptr %i.qp, align 1, !tbaa !47
  %i.rt = sitofp i8 %i.rs to float
  %i.ru = fmul nnan float %i.rt, f0x3C010204
  br label %bb.di

bb.dd:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.rv = load i16, ptr %i.qp, align 2, !tbaa !149
  %i.rw = uitofp i16 %i.rv to float
  %i.rx = fmul nnan float %i.rw, f0x37800080
  br label %bb.di

bb.de:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.ry = load i16, ptr %i.qp, align 2, !tbaa !149
  %i.rz = sitofp i16 %i.ry to float
  %i.sa = fmul nnan float %i.rz, f0x38000100
  br label %bb.di

bb.df:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.sb = load i32, ptr %i.qp, align 4, !tbaa !3
  %i.sc = sitofp i32 %i.sb to float
  %i.sd = fmul nnan float %i.sc, f0x30000000
  br label %bb.di

bb.dg:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.se = load i64, ptr %i.qp, align 8, !tbaa !150
  %i.sf = uitofp i64 %i.se to float
  %i.sg = fmul nnan float %i.sf, f0x1F800000
  br label %bb.di

bb.dh:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.sh = load i64, ptr %i.qp, align 8, !tbaa !150
  %i.si = sitofp i64 %i.sh to float
  %i.sj = fmul nnan float %i.si, f0x20000000
  br label %bb.di

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.sk = trunc i64 %i.qs to i32
  %i.sl = and i32 %i.sk, 255
  %i.sm = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.sn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sm, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.sl) #31 ; 0 uses
  %.pre274 = load i64, ptr %i.k, align 8, !tbaa !62
  %.pre275 = load i32, ptr %i.h, align 8
  br label %bb.di

bb.di:                                            ; preds = %bb.cq, %bb.cr, %bb.cs, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188, %bb.ct, %_ZNK9Imath_3_14halfcvfEv.exit.i194, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196
  %i.so = phi i32 [ %i.pr, %bb.cq ], [ %i.pr, %bb.cr ], [ %i.pr, %bb.cs ], [ %i.pr, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188 ], [ %i.pr, %bb.dh ], [ %i.pr, %bb.dg ], [ %i.pr, %bb.df ], [ %i.pr, %bb.de ], [ %i.pr, %bb.dd ], [ %i.pr, %bb.dc ], [ %i.pr, %bb.db ], [ %i.pr, %bb.da ], [ %i.pr, %_ZNK9Imath_3_14halfcvfEv.exit.i194 ], [ %i.pr, %bb.ct ], [ %.pre275, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196 ]
  %i.sp = phi i64 [ %i.pp, %bb.cq ], [ %i.pp, %bb.cr ], [ %i.pp, %bb.cs ], [ %i.pp, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188 ], [ %i.pp, %bb.dh ], [ %i.pp, %bb.dg ], [ %i.pp, %bb.df ], [ %i.pp, %bb.de ], [ %i.pp, %bb.dd ], [ %i.pp, %bb.dc ], [ %i.pp, %bb.db ], [ %i.pp, %bb.da ], [ %i.pp, %_ZNK9Imath_3_14halfcvfEv.exit.i194 ], [ %i.pp, %bb.ct ], [ %.pre274, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196 ]
  %.0.i184.ph = phi float [ 0.000000e+00, %bb.cq ], [ 0.000000e+00, %bb.cr ], [ 0.000000e+00, %bb.cs ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188 ], [ %i.sj, %bb.dh ], [ %i.sg, %bb.dg ], [ %i.sd, %bb.df ], [ %i.sa, %bb.de ], [ %i.rx, %bb.dd ], [ %i.ru, %bb.dc ], [ %i.rr, %bb.db ], [ %i.ro, %bb.da ], [ %i.rl, %_ZNK9Imath_3_14halfcvfEv.exit.i194 ], [ %i.qt, %bb.ct ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196 ] ; 2 uses
  %.inv = fcmp oge float %.0.i184.ph, 0.000000e+00
  %.0.i120250 = select i1 %.inv, float %.0.i184.ph, float 0.000000e+00 ; 2 uses
  %i.sq = fcmp ogt float %.0.i120250, 1.000000e+00
  %.1.i121251 = select i1 %i.sq, float 1.000000e+00, float %.0.i120250 ; 16 uses
  %i.sr = icmp slt i64 %1, %i.sp
  %.not.i.i199 = icmp slt i32 %i.pm, %i.so
  %or.cond21.i.i200 = select i1 %i.sr, i1 %.not.i.i199, i1 false
  br i1 %or.cond21.i.i200, label %bb.dj, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.dj:                                            ; preds = %bb.di
  %i.ss = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %.not18.i.i202 = icmp eq ptr %i.ss, null
  br i1 %.not18.i.i202, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 144
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 152
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !129
  %i.sw = load ptr, ptr %i.st, align 8, !tbaa !51 ; 2 uses
  %i.sx = icmp eq ptr %i.sv, %i.sw
  %or.cond3.i.i203 = or i1 %i.ae, %i.sx
  br i1 %or.cond3.i.i203, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ss, i64 72
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !54
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %1
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !3
  %.not19.i.i204 = icmp slt i32 %.0105, %i.tb
  br i1 %.not19.i.i204, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i205, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i205: ; preds = %bb.dl
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ss, i64 120
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !54
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %1
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !3
  %i.tg = add i32 %i.tf, %.0105
  %i.th = zext i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ss, i64 216
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !92
  %i.tk = mul i64 %i.tj, %i.th
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ss, i64 48
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !57
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %indvars.iv264
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !95
  %i.tp = getelementptr i8, ptr %i.sw, i64 %i.tk
  %i.tq = getelementptr i8, ptr %i.tp, i64 %i.to  ; 11 uses
  %.not.i206 = icmp eq ptr %i.tq, null
  br i1 %.not.i206, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i205
  %i.tr = load ptr, ptr %i.ss, align 8, !tbaa !11
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv264
  %i.tt = load i64, ptr %i.ts, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i208 = trunc i64 %i.tt to i8
end_hunk_3
