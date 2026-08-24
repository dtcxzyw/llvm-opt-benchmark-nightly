Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_rewriter?download=true
inline.NumInlined: 6287
inline.NumDeleted: 1145
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN12seq_rewriter22is_re_contains_patternEP4exprR6vectorI10ref_vectorIS0_11ast_managerELb1EjE:bb.a
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !103
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.s, %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE4backEv.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !93 ; 4 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !106 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !106
  %i.ef = icmp eq i32 %i.ec, %i.ee
  br i1 %i.ef, label %bb.u, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.u:                                             ; preds = %bb.t, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dy)
  %.pre.i.i = load ptr, ptr %i.dy, align 8, !tbaa !93 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !106
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.t, %bb.u
  %i.eg = phi i32 [ %.pre2.i.i, %bb.u ], [ %i.ec, %bb.t ] ; 2 uses
  %i.eh = phi ptr [ %.pre.i.i, %bb.u ], [ %i.dz, %bb.t ] ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4
  %i.ej = zext i32 %i.eg to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ej
  store ptr %i.dn, ptr %i.ek, align 8, !tbaa !8
  %i.el = add i32 %i.eg, 1
  store i32 %i.el, ptr %i.ei, align 4, !tbaa !106
  br label %bb.ab

_Z9is_app_ofPK4exprii.exit.i24:                   ; preds = %bb.p, %_ZNK8seq_util3rex8is_to_reEPK4expr.exit.i
  %i.em = load i32, ptr %i.dc, align 8, !tbaa !173
  %i.en = icmp eq i32 %i.em, %i.cd                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 37
  %i.er = select i1 %i.en, i1 %i.eq, i1 false
  br i1 %i.er, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27.thread70, label %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i25

_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i25:     ; preds = %_Z9is_app_ofPK4exprii.exit.i24
  %i.es = icmp eq i32 %i.ep, 25
  %i.et = select i1 %i.en, i1 %i.es, i1 false
  br i1 %i.et, label %bb.v, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48

bb.v:                                             ; preds = %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i25
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !174
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.w, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48

bb.w:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !8  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = and i32 %i.fa, 65535
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.x, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48

bb.x:                                             ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !169
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i26, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27

_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27:    ; preds = %bb.x
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !173
  %i.fi = icmp eq i32 %i.fh, %i.cd
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp eq i32 %i.fk, 38
  %i.fm = select i1 %i.fi, i1 %i.fl, i1 false
  br i1 %i.fm, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27.thread70, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48

_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27.thread70: ; preds = %_Z9is_app_ofPK4exprii.exit.i24, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.fn = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15
  %i.fo = ptrtoint ptr %i.fn to i64               ; 2 uses
  store i64 %i.fo, ptr %4, align 8, !tbaa !17
  store ptr null, ptr %i.cb, align 8, !tbaa !93
  %i.fp = load ptr, ptr %2, align 8, !tbaa !654   ; 4 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27.thread70
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !106 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fp, i64 -8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !106
  %i.fv = icmp eq i32 %i.fs, %i.fu
  br i1 %i.fv, label %bb.z, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit43

bb.z:                                             ; preds = %bb.y, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27.thread70
  invoke void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc31 unwind label %bb.aa

.noexc31:                                         ; preds = %bb.z
  %.pre.i28 = load ptr, ptr %2, align 8, !tbaa !654 ; 2 uses
  %.phi.trans.insert.i29 = getelementptr inbounds i8, ptr %.pre.i28, i64 -4
  %.pre2.i30 = load i32, ptr %.phi.trans.insert.i29, align 4, !tbaa !106
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit43: ; preds = %.noexc31, %bb.y
  %i.fw = phi i32 [ %.pre2.i30, %.noexc31 ], [ %i.fs, %bb.y ] ; 2 uses
  %i.fx = phi ptr [ %.pre.i28, %.noexc31 ], [ %i.fp, %bb.y ] ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -4
  %i.fz = zext i32 %i.fw to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %i.fz ; 2 uses
  store i64 %i.fo, ptr %i.ga, align 8, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr null, ptr %i.gb, align 8, !tbaa !93
  %i.gc = add i32 %i.fw, 1
  store i32 %i.gc, ptr %i.fy, align 4, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ag

bb.ab:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit43, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = and i32 %i.gf, 65535
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.l, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48, !llvm.loop !656

_Z9is_app_ofPK4exprii.exit.i45:                   ; preds = %bb.m, %_ZNK8seq_util3rex9is_concatEPK4expr.exit.i18
  %i.gi = load i32, ptr %i.ch, align 8, !tbaa !173
  %i.gj = icmp eq i32 %i.gi, %i.cd                ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.gl = load i32, ptr %i.gk, align 4            ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 37
  %i.gn = select i1 %i.gj, i1 %i.gm, i1 false
  br i1 %i.gn, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48, label %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i46

_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i46:     ; preds = %_Z9is_app_ofPK4exprii.exit.i45
  %i.go = icmp eq i32 %i.gl, 25
  %i.gp = select i1 %i.gj, i1 %i.go, i1 false
  br i1 %i.gp, label %bb.ac, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48

bb.ac:                                            ; preds = %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i46
  %i.gq = getelementptr inbounds nuw i8, ptr %.01177, i64 24
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !174
  %i.gs = icmp eq i32 %i.gr, 1
  br i1 %i.gs, label %bb.ad, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48

bb.ad:                                            ; preds = %bb.ac
  %i.gt = getelementptr inbounds nuw i8, ptr %.01177, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !8  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = and i32 %i.gw, 65535
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.ae, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48

bb.ae:                                            ; preds = %bb.ad
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !169
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i.i47 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i47, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !173
  %i.he = icmp eq i32 %i.hd, %i.cd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = icmp eq i32 %i.hg, 38
  %i.hi = select i1 %i.he, i1 %i.hh, i1 false
  br label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48

_ZNK8seq_util3rex11is_full_seqEPK4expr.exit48:    ; preds = %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27, %bb.ab, %bb.w, %bb.x, %bb.v, %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i25, %bb.n, %bb.o, %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.e, %bb.d, %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i, %bb.f, %bb.h, %bb.g, %bb.b, %bb.a, %_ZNK8seq_util3rex9is_concatEPK4expr.exit.i, %bb.c, %bb.af, %bb.ae, %bb.ad, %bb.ac, %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i46, %_Z9is_app_ofPK4exprii.exit.i45, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit
  %.010 = phi i1 [ false, %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i ], [ false, %bb.e ], [ false, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit ], [ false, %bb.d ], [ false, %bb.b ], [ true, %_Z9is_app_ofPK4exprii.exit.i45 ], [ %i.hi, %bb.af ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i46 ], [ false, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ false, %bb.c ], [ false, %_ZNK8seq_util3rex9is_concatEPK4expr.exit.i ], [ false, %bb.a ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.l ], [ false, %bb.o ], [ false, %bb.n ], [ false, %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i25 ], [ false, %bb.v ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.ab ], [ false, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit27 ]
  ret i1 %.010

bb.ag:                                            ; preds = %bb.aa, %bb.k
  %.pn = phi { ptr, i32 } [ %i.gd, %bb.aa ], [ %i.cc, %bb.k ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK12seq_rewriter11non_overlapERK7zstringS2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1800) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !214
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %i.a = phi i32 [ %.pre, %bb.a ], [ %i.c, %tailrecurse ] ; 10 uses
  %.tr71 = phi ptr [ %1, %bb.a ], [ %.tr72, %tailrecurse ] ; 4 uses
  %.tr72 = phi ptr [ %2, %bb.a ], [ %.tr71, %tailrecurse ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr72, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !214  ; 7 uses
  %i.d = icmp ugt i32 %i.a, %i.c
  br i1 %i.d, label %tailrecurse, label %.preheader

.preheader:                                       ; preds = %tailrecurse
  %.not79 = icmp ugt i32 %i.a, 1
  br i1 %.not79, label %.lr.ph.i.lr.ph, label %.critedge.preheader

.lr.ph.i.lr.ph:                                   ; preds = %.preheader
  %i.e = load ptr, ptr %.tr71, align 8, !tbaa !212
  %i.f = load ptr, ptr %.tr72, align 8, !tbaa !212
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph.i

.critedge.preheader:                              ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit", %.preheader
  %.not4181 = icmp ult i32 %i.a, %i.c
  br i1 %.not4181, label %.lr.ph, label %.critedge.preheader..critedge44_crit_edge

.critedge.preheader..critedge44_crit_edge:        ; preds = %.critedge.preheader
  %.pre103 = sub i32 %i.c, %i.a
  br label %.critedge44

.lr.ph:                                           ; preds = %.critedge.preheader
  %.not4.i50.not = icmp eq i32 %i.a, 0
  br i1 %.not4.i50.not, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.thread", label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.g = load ptr, ptr %.tr71, align 8, !tbaa !212
  %i.h = load ptr, ptr %.tr72, align 8, !tbaa !212
  %i.i = sub i32 %i.c, %i.a                       ; 2 uses
  %zext = zext i32 %i.a to i64
  br label %.lr.ph.i52

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit"
  %indvars.iv = phi i64 [ 1, %.lr.ph.i.lr.ph ], [ %indvars.iv.next, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit" ] ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %i.a, %lftr.wideiv
  br i1 %exitcond, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.thread", label %bb.c, !llvm.loop !657

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !106
  %.not.i = icmp eq i32 %i.k, %i.m
  br i1 %.not.i, label %bb.b, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit"

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit": ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond92.not, label %.critedge.preheader, label %.lr.ph.i, !llvm.loop !658

.lr.ph.i52:                                       ; preds = %.lr.ph.split, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58"
  %.03382 = phi i32 [ 0, %.lr.ph.split ], [ %i.v, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58" ] ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %i.n = icmp eq i64 %indvars.iv.next.i55, %zext
  br i1 %i.n, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.thread", label %bb.e, !llvm.loop !657

bb.e:                                             ; preds = %bb.d, %.lr.ph.i52
  %indvars.iv.i53 = phi i64 [ 0, %.lr.ph.i52 ], [ %indvars.iv.next.i55, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i53
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106
  %i.q = trunc nuw i64 %indvars.iv.i53 to i32
  %i.r = add i32 %.03382, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %.not.i54 = icmp eq i32 %i.p, %i.u
  br i1 %.not.i54, label %bb.d, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58"

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58": ; preds = %bb.e
  %i.v = add i32 %.03382, 1                       ; 2 uses
  %exitcond95.not = icmp eq i32 %i.v, %i.i
  br i1 %exitcond95.not, label %.critedge44, label %.lr.ph.i52, !llvm.loop !659

.critedge44:                                      ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58", %.critedge.preheader..critedge44_crit_edge
  %.pre-phi = phi i32 [ %.pre103, %.critedge.preheader..critedge44_crit_edge ], [ %i.i, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58" ] ; 2 uses
  %.not4283.not = icmp ult i32 %.pre-phi, %i.c
  br i1 %.not4283.not, label %.lr.ph.i61.lr.ph, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.thread"

.lr.ph.i61.lr.ph:                                 ; preds = %.critedge44
  %i.w = load ptr, ptr %.tr71, align 8, !tbaa !212
  %i.x = load ptr, ptr %.tr72, align 8, !tbaa !212
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.lr.ph, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67"
  %indvars.iv97 = phi i32 [ %i.a, %.lr.ph.i61.lr.ph ], [ %indvars.iv.next98, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67" ] ; 2 uses
  %.084 = phi i32 [ %.pre-phi, %.lr.ph.i61.lr.ph ], [ %i.af, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67" ] ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %lftr.wideiv99 = trunc i64 %indvars.iv.next.i64 to i32
  %exitcond100 = icmp eq i32 %indvars.iv97, %lftr.wideiv99
  br i1 %exitcond100, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.thread", label %bb.g, !llvm.loop !657

bb.g:                                             ; preds = %bb.f, %.lr.ph.i61
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.i61 ], [ %indvars.iv.next.i64, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i62
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %i.aa = trunc nuw i64 %indvars.iv.i62 to i32
  %i.ab = add i32 %.084, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %.not.i63 = icmp eq i32 %i.z, %i.ae
  br i1 %.not.i63, label %bb.f, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67"

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67": ; preds = %bb.g
  %i.af = add nuw i32 %.084, 1                    ; 2 uses
  %indvars.iv.next98 = add i32 %indvars.iv97, -1
  %exitcond102.not = icmp eq i32 %i.af, %i.c
  br i1 %exitcond102.not, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.thread", label %.lr.ph.i61, !llvm.loop !660

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.thread": ; preds = %bb.b, %bb.d, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67", %bb.f, %.lr.ph, %.critedge44
  %.4 = phi i1 [ true, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67" ], [ false, %bb.f ], [ false, %bb.d ], [ false, %.lr.ph ], [ true, %.critedge44 ], [ false, %bb.b ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_(ptr noundef nonnull align 8 dereferenceable(1800) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.zstring, align 8             ; 11 uses
  %4 = alloca %class.zstring, align 8             ; 11 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit114, %bb.a
  %i.a = phi ptr [ %.pre, %bb.a ], [ %i.f, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit114 ] ; 3 uses
  %.tr173 = phi ptr [ %1, %bb.a ], [ %.tr174, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit114 ] ; 2 uses
  %.tr174 = phi ptr [ %2, %bb.a ], [ %.tr173, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit114 ] ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !106
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %tailrecurse, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ 0, %tailrecurse ] ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr174, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit114, label %bb.c

bb.c:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !106
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit114

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit114: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.c
  %.0.i.i113 = phi i32 [ %i.i, %bb.c ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 6 uses
  %i.j = icmp ugt i32 %.0.i.i, %.0.i.i113
  br i1 %i.j, label %tailrecurse, label %bb.d

bb.d:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit114
  %i.k = getelementptr inbounds nuw i8, ptr %.tr173, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr174, i64 8 ; 8 uses
  %i.m = icmp eq i32 %.0.i.i, 0
  br i1 %i.m, label %bb.ak, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !212
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !214
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 16, ptr %i.p, align 4, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !214
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 16, ptr %i.s, align 4, !tbaa !215
  %i.t = icmp eq i32 %.0.i.i113, 1
  br i1 %i.t, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.w = invoke noundef zeroext i1 @_ZNK8seq_util3str9is_stringEPK4exprR7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.u, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  br i1 %i.w, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = invoke noundef zeroext i1 @_ZNK8seq_util3str9is_stringEPK4exprR7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.u, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !214
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.j
  %i.aa = phi i32 [ %.pre.i, %bb.j ], [ %i.ac, %tailrecurse.i ] ; 10 uses
  %.tr71.i = phi ptr [ %3, %bb.j ], [ %.tr72.i, %tailrecurse.i ] ; 4 uses
  %.tr72.i = phi ptr [ %4, %bb.j ], [ %.tr71.i, %tailrecurse.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr72.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !214 ; 7 uses
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  br i1 %i.ad, label %tailrecurse.i, label %.preheader.i

.preheader.i:                                     ; preds = %tailrecurse.i
  %.not79.i = icmp ugt i32 %i.aa, 1
  br i1 %.not79.i, label %.lr.ph.i.lr.ph.i, label %.critedge.preheader.i

.lr.ph.i.lr.ph.i:                                 ; preds = %.preheader.i
  %i.ae = load ptr, ptr %.tr71.i, align 8, !tbaa !212
  %i.af = load ptr, ptr %.tr72.i, align 8, !tbaa !212
  %wide.trip.count.i = zext i32 %i.aa to i64
  br label %.lr.ph.i.i

.critedge.preheader.i:                            ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit.i", %.preheader.i
  %.not4181.i = icmp ult i32 %i.aa, %i.ac
  br i1 %.not4181.i, label %.lr.ph.i, label %.critedge.preheader..critedge44_crit_edge.i

.critedge.preheader..critedge44_crit_edge.i:      ; preds = %.critedge.preheader.i
  %.pre103.i = sub i32 %i.ac, %i.aa
  br label %.critedge44.i

.lr.ph.i:                                         ; preds = %.critedge.preheader.i
  %.not4.i50.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not4.i50.not.i, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ag = load ptr, ptr %.tr71.i, align 8, !tbaa !212
  %i.ah = load ptr, ptr %.tr72.i, align 8, !tbaa !212
  %i.ai = sub i32 %i.ac, %i.aa                    ; 2 uses
  %zext.i = zext i32 %i.aa to i64
  br label %.lr.ph.i52.i

.lr.ph.i.i:                                       ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit.i", %.lr.ph.i.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit.i" ] ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond221 = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond221, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %bb.l, !llvm.loop !657

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !106
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !106
  %.not.i.i = icmp eq i32 %i.ak, %i.am
  br i1 %.not.i.i, label %bb.k, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit.i"

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit.i": ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond92.not.i, label %.critedge.preheader.i, label %.lr.ph.i.i, !llvm.loop !658

.lr.ph.i52.i:                                     ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i", %.lr.ph.split.i
  %.03382.i = phi i32 [ 0, %.lr.ph.split.i ], [ %i.av, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i" ] ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next.i55.i = add nuw nsw i64 %indvars.iv.i53.i, 1 ; 2 uses
  %i.an = icmp eq i64 %indvars.iv.next.i55.i, %zext.i
  br i1 %i.an, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %bb.n, !llvm.loop !657

bb.n:                                             ; preds = %bb.m, %.lr.ph.i52.i
  %indvars.iv.i53.i = phi i64 [ 0, %.lr.ph.i52.i ], [ %indvars.iv.next.i55.i, %bb.m ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i53.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !106
  %i.aq = trunc nuw i64 %indvars.iv.i53.i to i32
  %i.ar = add i32 %.03382.i, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !106
  %.not.i54.i = icmp eq i32 %i.ap, %i.au
  br i1 %.not.i54.i, label %bb.m, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i"

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i": ; preds = %bb.n
  %i.av = add nuw i32 %.03382.i, 1                ; 2 uses
  %exitcond95.not.i = icmp eq i32 %i.av, %i.ai
  br i1 %exitcond95.not.i, label %.critedge44.i, label %.lr.ph.i52.i, !llvm.loop !659

.critedge44.i:                                    ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i", %.critedge.preheader..critedge44_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre103.i, %.critedge.preheader..critedge44_crit_edge.i ], [ %i.ai, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i" ] ; 2 uses
  %.not4283.not.i = icmp ult i32 %.pre-phi.i, %i.ac
  br i1 %.not4283.not.i, label %.lr.ph.i61.lr.ph.i, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit

.lr.ph.i61.lr.ph.i:                               ; preds = %.critedge44.i
  %i.aw = load ptr, ptr %.tr71.i, align 8, !tbaa !212
  %i.ax = load ptr, ptr %.tr72.i, align 8, !tbaa !212
  br label %.lr.ph.i61.i

.lr.ph.i61.i:                                     ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i", %.lr.ph.i61.lr.ph.i
  %indvars.iv97.i = phi i32 [ %i.aa, %.lr.ph.i61.lr.ph.i ], [ %indvars.iv.next98.i, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i" ] ; 2 uses
  %.084.i = phi i32 [ %.pre-phi.i, %.lr.ph.i61.lr.ph.i ], [ %i.bf, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i" ] ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i64.i = add nuw nsw i64 %indvars.iv.i62.i, 1 ; 2 uses
  %lftr.wideiv222 = trunc i64 %indvars.iv.next.i64.i to i32
  %exitcond223 = icmp eq i32 %indvars.iv97.i, %lftr.wideiv222
  br i1 %exitcond223, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %bb.p, !llvm.loop !657

bb.p:                                             ; preds = %bb.o, %.lr.ph.i61.i
  %indvars.iv.i62.i = phi i64 [ 0, %.lr.ph.i61.i ], [ %indvars.iv.next.i64.i, %bb.o ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i62.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !106
  %i.ba = trunc nuw i64 %indvars.iv.i62.i to i32
  %i.bb = add i32 %.084.i, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !106
  %.not.i63.i = icmp eq i32 %i.az, %i.be
  br i1 %.not.i63.i, label %bb.o, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i"

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i": ; preds = %bb.p
  %i.bf = add nuw i32 %.084.i, 1                  ; 2 uses
  %indvars.iv.next98.i = add i32 %indvars.iv97.i, -1
  %exitcond102.not.i = icmp eq i32 %i.bf, %i.ac
  br i1 %exitcond102.not.i, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %.lr.ph.i61.i, !llvm.loop !660

bb.q:                                             ; preds = %bb.h, %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.r:                                             ; preds = %bb.e, %bb.g, %bb.i
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !93  ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %._crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.r
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !106 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %.not191 = icmp eq i32 %i.bk, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !90
  br label %bb.t

bb.s:                                             ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.071192, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.bn
  br i1 %.not, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.s
  %.071192 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bq, %bb.s ] ; 2 uses
  %i.br = load ptr, ptr %.071192, align 8, !tbaa !8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 65535
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.u, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !169
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %_ZNK8seq_util3str7is_unitEPK4expr.exit

_ZNK8seq_util3str7is_unitEPK4expr.exit:           ; preds = %bb.u
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !173
  %i.cb = icmp eq i32 %i.ca, %i.bp
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = select i1 %i.cb, i1 %i.ce, i1 false
  br i1 %i.cf, label %bb.s, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit

._crit_edge:                                      ; preds = %bb.s, %bb.r, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !93  ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.critedge108.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit116

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit116: ; preds = %._crit_edge
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !106 ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cl
  %.not96193 = icmp eq i32 %i.cj, 0
  br i1 %.not96193, label %.critedge108.preheader, label %.lr.ph195

.lr.ph195:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit116
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !90
  br label %bb.w

bb.v:                                             ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit118
  %i.cp = getelementptr inbounds nuw i8, ptr %.070194, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %i.cp, %i.cm
  br i1 %.not96, label %.critedge108.preheader, label %bb.w

.critedge108.preheader:                           ; preds = %bb.v, %._crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit116
  %.not100196.not = icmp eq i32 %.0.i.i, 1
  br i1 %.not100196.not, label %.critedge110.preheader, label %.lr.ph.i119.preheader

.lr.ph.i119.preheader:                            ; preds = %.critedge108.preheader
  %umax = call i32 @llvm.umax.i32(i32 %.0.i.i, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %.lr.ph.i119

bb.w:                                             ; preds = %.lr.ph195, %bb.v
  %.070194 = phi ptr [ %i.cg, %.lr.ph195 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.cq = load ptr, ptr %.070194, align 8, !tbaa !8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = and i32 %i.cs, 65535
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.x, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !169
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i117, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %_ZNK8seq_util3str7is_unitEPK4expr.exit118

_ZNK8seq_util3str7is_unitEPK4expr.exit118:        ; preds = %bb.x
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !173
  %i.da = icmp eq i32 %i.cz, %i.co
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = select i1 %i.da, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.v, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit

.critedge110.preheader:                           ; preds = %.critedge108, %.critedge108.preheader
  %.not101198 = icmp ult i32 %.0.i.i, %.0.i.i113
  %i.df = sub i32 %.0.i.i113, %.0.i.i             ; 2 uses
  br i1 %.not101198, label %.lr.ph200, label %.lr.ph203.preheader

.lr.ph.i119:                                      ; preds = %.lr.ph.i119.preheader, %.critedge108
  %indvars.iv = phi i64 [ 1, %.lr.ph.i119.preheader ], [ %indvars.iv.next, %.critedge108 ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.noexc123, %.lr.ph.i119
  %indvars.iv.i120 = phi i64 [ %indvars.iv, %.lr.ph.i119 ], [ %indvars.iv.next.i121, %.noexc123 ] ; 5 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i120
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !8
  %i.dk = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.dn = invoke noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.dg, ptr noundef %i.dj, ptr noundef %i.dm)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.y
  br i1 %i.dn, label %.critedge108, label %bb.z

bb.z:                                             ; preds = %.noexc
  %i.do = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i120
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.ds = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i120
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !8
  %i.dv = invoke noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.do, ptr noundef %i.dr, ptr noundef %i.du)
          to label %.noexc123 unwind label %bb.aa

.noexc123:                                        ; preds = %bb.z
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %lftr.wideiv.i122 = trunc i64 %indvars.iv.next.i121 to i32
  %exitcond.not.i = icmp ne i32 %.0.i.i, %lftr.wideiv.i122
  %or.cond.not.i = select i1 %i.dv, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.y, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, !llvm.loop !661

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.critedge108:                                     ; preds = %.noexc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge110.preheader, label %.lr.ph.i119, !llvm.loop !662

.lr.ph200:                                        ; preds = %.critedge110.preheader, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136"
  %.068199 = phi i32 [ %i.er, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136" ], [ 0, %.critedge110.preheader ] ; 2 uses
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph200, %.noexc135
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i128, %.noexc135 ], [ 0, %.lr.ph200 ] ; 4 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15
  %i.dy = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.i127
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !8
  %i.eb = trunc nuw i64 %indvars.iv.i127 to i32
  %i.ec = add i32 %.068199, %i.eb
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.ee = zext i32 %i.ec to i64                   ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !8
  %i.eh = invoke noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.dx, ptr noundef %i.ea, ptr noundef %i.eg)
          to label %.noexc134 unwind label %bb.ac

.noexc134:                                        ; preds = %.lr.ph.i126
  br i1 %i.eh, label %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136", label %bb.ab

bb.ab:                                            ; preds = %.noexc134
  %i.ei = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15
  %i.ej = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i127
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !8
  %i.em = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ee
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8
  %i.ep = invoke noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ei, ptr noundef %i.el, ptr noundef %i.eo)
          to label %.noexc135 unwind label %bb.ac

.noexc135:                                        ; preds = %bb.ab
  %indvars.iv.next.i128 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %lftr.wideiv.i129 = trunc i64 %indvars.iv.next.i128 to i32
  %exitcond.not.i130 = icmp ne i32 %.0.i.i, %lftr.wideiv.i129
  %or.cond.not.i131 = select i1 %i.ep, i1 %exitcond.not.i130, i1 false
  br i1 %or.cond.not.i131, label %.lr.ph.i126, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, !llvm.loop !661

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i126
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136": ; preds = %.noexc134
  %i.er = add i32 %.068199, 1                     ; 2 uses
  %exitcond219.not = icmp eq i32 %i.er, %i.df
  br i1 %exitcond219.not, label %.lr.ph203.preheader, label %.lr.ph200, !llvm.loop !663

.lr.ph203.preheader:                              ; preds = %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136", %.critedge110.preheader
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149"
  %.0202 = phi i32 [ %i.fn, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149" ], [ %i.df, %.lr.ph203.preheader ] ; 3 uses
  %i.es = sub nuw i32 %.0.i.i113, %.0202
  br label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %.lr.ph203, %.noexc148
  %indvars.iv.i140 = phi i64 [ %indvars.iv.next.i141, %.noexc148 ], [ 0, %.lr.ph203 ] ; 4 uses
  %i.et = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15
  %i.eu = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i140
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !8
  %i.ex = trunc nuw i64 %indvars.iv.i140 to i32
  %i.ey = add i32 %.0202, %i.ex
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.fa = zext i32 %i.ey to i64                   ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !8
  %i.fd = invoke noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.et, ptr noundef %i.ew, ptr noundef %i.fc)
          to label %.noexc147 unwind label %bb.ae

.noexc147:                                        ; preds = %.lr.ph.i139
  br i1 %i.fd, label %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149", label %bb.ad

bb.ad:                                            ; preds = %.noexc147
  %i.fe = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15
  %i.ff = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.i140
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !8
  %i.fi = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fa
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !8
  %i.fl = invoke noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.fe, ptr noundef %i.fh, ptr noundef %i.fk)
          to label %.noexc148 unwind label %bb.ae

.noexc148:                                        ; preds = %bb.ad
  %indvars.iv.next.i141 = add nuw nsw i64 %indvars.iv.i140, 1 ; 2 uses
  %lftr.wideiv.i142 = trunc i64 %indvars.iv.next.i141 to i32
  %exitcond.not.i143 = icmp ne i32 %i.es, %lftr.wideiv.i142
  %or.cond.not.i144 = select i1 %i.fl, i1 %exitcond.not.i143, i1 false
  br i1 %or.cond.not.i144, label %.lr.ph.i139, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, !llvm.loop !661

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i139
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149": ; preds = %.noexc147
  %i.fn = add nuw i32 %.0202, 1                   ; 2 uses
  %.not104.not = icmp ult i32 %i.fn, %.0.i.i113
  br i1 %.not104.not, label %.lr.ph203, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, !llvm.loop !664

_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit: ; preds = %bb.u, %bb.t, %_ZNK8seq_util3str7is_unitEPK4expr.exit, %bb.x, %bb.w, %_ZNK8seq_util3str7is_unitEPK4expr.exit118, %.noexc123, %.noexc135, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149", %.noexc148, %bb.k, %bb.m, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i", %bb.o, %.critedge44.i, %.lr.ph.i
  %.10 = phi i1 [ false, %bb.k ], [ false, %.noexc123 ], [ false, %.noexc135 ], [ true, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i" ], [ true, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149" ], [ false, %.noexc148 ], [ false, %.lr.ph.i ], [ true, %.critedge44.i ], [ false, %bb.m ], [ false, %bb.x ], [ false, %bb.o ], [ false, %_ZNK8seq_util3str7is_unitEPK4expr.exit118 ], [ false, %bb.w ], [ false, %_ZNK8seq_util3str7is_unitEPK4expr.exit ], [ false, %bb.t ], [ false, %bb.u ]
  %i.fo = load ptr, ptr %4, align 8, !tbaa !212   ; 3 uses
  %.not.i.i.i.i150 = icmp eq ptr %i.fo, %i.q
  %i.fp = icmp eq ptr %i.fo, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i150, %i.fp
  br i1 %or.cond.i.i.i.i, label %_ZN7zstringD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fo)
          to label %_ZN7zstringD2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #26
  unreachable

_ZN7zstringD2Ev.exit:                             ; preds = %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.fs = load ptr, ptr %3, align 8, !tbaa !212   ; 3 uses
  %.not.i.i.i.i151 = icmp eq ptr %i.fs, %i.n
  %i.ft = icmp eq ptr %i.fs, null
  %or.cond.i.i.i.i152 = or i1 %.not.i.i.i.i151, %i.ft
  br i1 %or.cond.i.i.i.i152, label %_ZN7zstringD2Ev.exit153, label %bb.ah

bb.ah:                                            ; preds = %_ZN7zstringD2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fs)
          to label %_ZN7zstringD2Ev.exit153 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #26
  unreachable

_ZN7zstringD2Ev.exit153:                          ; preds = %_ZN7zstringD2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.aa, %bb.ac, %bb.ae, %bb.q
  %.pn105 = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.fm, %bb.ae ], [ %i.eq, %bb.ac ], [ %i.dw, %bb.aa ]
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #25
end_hunk_0
begin_hunk_1_@_ZN12seq_rewriter12reduce_frontER10ref_vectorI4expr11ast_managerES4_R15ref_pair_vectorIS1_S2_E:bb.a
  store ptr %i.el, ptr %.sroa.4.0..sroa_idx.i87, align 8
  %i.ff = load ptr, ptr %i.n, align 8, !tbaa !685
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -4 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !106
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !106
  %i.fj = add i32 %.1186, 1                       ; 2 uses
  %i.fk = load i32, ptr %i.b, align 8, !tbaa !214 ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 1
  br i1 %i.fl, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fm = add i32 %.1181, 1
  br label %.thread205.backedge

bb.al:                                            ; preds = %bb.ai, %bb.ad
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.fo = add i32 %i.fk, -1
  invoke void @_ZNK7zstring7extractEjj(ptr dead_on_unwind nonnull writable sret(%class.zstring) align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 noundef 1, i32 noundef %i.fo)
          to label %bb.an unwind label %bb.az

bb.an:                                            ; preds = %bb.am
  %i.fp = invoke noundef ptr @_ZNK8seq_util3str9mk_stringERK7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %bb.ao unwind label %bb.ba     ; 7 uses

bb.ao:                                            ; preds = %bb.an
  %i.fq = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15 ; 2 uses
  store ptr %i.fp, ptr %7, align 8, !tbaa !16
  store ptr %i.fq, ptr %i.o, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.fp, null             ; 3 uses
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !103
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !103
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %bb.ao
  %i.fu = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.fu, %i.p
  %i.fv = icmp eq ptr %i.fu, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i93, %i.fv
  br i1 %or.cond.i.i.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fu)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #26
  unreachable

bb.ar:                                            ; preds = %bb.ap, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.fy = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.fz = zext i32 %.1181 to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fz ; 2 uses
  %i.gb = load ptr, ptr %2, align 8, !tbaa !108, !nonnull !14, !align !15
  br i1 %.not.i.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !103
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !103
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.as, %bb.ar
  %i.gf = load ptr, ptr %i.ga, align 8, !tbaa !8  ; 3 uses
  %.not.i3.i = icmp eq ptr %i.gf, null
  br i1 %.not.i3.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !103
  %i.gi = add i32 %i.gh, -1                       ; 2 uses
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !103
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gb, ptr noundef nonnull %i.gf)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.at, %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.au
  store ptr %i.fp, ptr %i.ga, align 8, !tbaa !8
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !103
  %i.gm = add i32 %i.gl, -1                       ; 2 uses
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !103
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.ax, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fq, ptr noundef nonnull %i.fp)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #26
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.thread205.backedge

bb.az:                                            ; preds = %bb.am
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.an
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #25
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn61 = phi { ptr, i32 } [ %i.gr, %bb.ba ], [ %i.gq, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bd

bb.bc:                                            ; preds = %bb.au
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn63 = phi { ptr, i32 } [ %i.gs, %bb.bc ], [ %.pn61, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.cw

_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit82.thread: ; preds = %bb.n, %bb.m, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i81, %bb.aa, %bb.ac
  %i.gt = invoke noundef zeroext i1 @_ZNK8seq_util3str9is_stringEPK4exprR7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr noundef nonnull %.0179, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %bb.be unwind label %bb.k

bb.be:                                            ; preds = %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit82.thread
  br i1 %i.gt, label %bb.bf, label %.thread218

bb.bf:                                            ; preds = %bb.be
  %i.gu = invoke noundef zeroext i1 @_ZNK8seq_util3str9is_stringEPK4exprR7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr noundef nonnull %.0178, ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %bb.bg unwind label %bb.k

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.gu, label %bb.bh, label %.thread218

bb.bh:                                            ; preds = %bb.bg
  %i.gv = load i32, ptr %i.e, align 8, !tbaa !214 ; 3 uses
  %i.gw = load i32, ptr %i.h, align 8, !tbaa !214 ; 3 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.gw, i32 %i.gv) ; 7 uses
  %.not54226.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not54226.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bh
  %i.gx = load ptr, ptr %5, align 8, !tbaa !212
  %i.gy = load ptr, ptr %6, align 8, !tbaa !212
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bj, !llvm.loop !712

bb.bj:                                            ; preds = %.lr.ph, %bb.bi
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bi ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !106
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !106
  %.not = icmp eq i32 %i.ha, %i.hc
  br i1 %.not, label %bb.bi, label %.thread211

._crit_edge:                                      ; preds = %bb.bi, %bb.bh
  %.not224 = icmp ugt i32 %i.gv, %i.gw
  br i1 %.not224, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge
  %i.hd = add i32 %.1186, 1
  br label %bb.bz

bb.bl:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.he = sub i32 %i.gv, %.sroa.speculated
  invoke void @_ZNK7zstring7extractEjj(ptr dead_on_unwind nonnull writable sret(%class.zstring) align 8 %9, ptr noundef nonnull align 8 dereferenceable(80) %5, i32 noundef %.sroa.speculated, i32 noundef %i.he)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  %i.hf = invoke noundef ptr @_ZNK8seq_util3str9mk_stringERK7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %bb.bn unwind label %bb.bv     ; 3 uses

bb.bn:                                            ; preds = %bb.bm
  %i.hg = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.hh = zext i32 %.1186 to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hh ; 2 uses
  %i.hj = load ptr, ptr %1, align 8, !tbaa !108, !nonnull !14, !align !15
  %.not.i.i99 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i99, label %_ZN11ast_manager7inc_refEP3ast.exit.i100, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !103
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !103
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i100

_ZN11ast_manager7inc_refEP3ast.exit.i100:         ; preds = %bb.bo, %bb.bn
  %i.hn = load ptr, ptr %i.hi, align 8, !tbaa !8  ; 3 uses
  %.not.i3.i101 = icmp eq ptr %i.hn, null
  br i1 %.not.i3.i101, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i100
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !103
  %i.hq = add i32 %i.hp, -1                       ; 2 uses
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !103
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hj, ptr noundef nonnull %i.hn)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bp, %_ZN11ast_manager7inc_refEP3ast.exit.i100, %bb.bq
  store ptr %i.hf, ptr %i.hi, align 8, !tbaa !8
  %i.hs = load ptr, ptr %9, align 8, !tbaa !212   ; 3 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.hs, %i.q
  %i.ht = icmp eq ptr %i.hs, null
  %or.cond.i.i.i.i106 = or i1 %.not.i.i.i.i105, %i.ht
  br i1 %or.cond.i.i.i.i106, label %_ZN7zstringD2Ev.exit107, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hs)
          to label %_ZN7zstringD2Ev.exit107 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #26
  unreachable

_ZN7zstringD2Ev.exit107:                          ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.pre = load i32, ptr %i.h, align 8, !tbaa !214
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bl
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bv:                                            ; preds = %bb.bm
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bq
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.bw ], [ %i.hx, %bb.bv ]
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #25
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bx ], [ %i.hw, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cw

bb.bz:                                            ; preds = %_ZN7zstringD2Ev.exit107, %bb.bk
  %i.hz = phi i32 [ %i.gw, %bb.bk ], [ %.pre, %_ZN7zstringD2Ev.exit107 ] ; 2 uses
  %.2187 = phi i32 [ %i.hd, %bb.bk ], [ %.1186, %_ZN7zstringD2Ev.exit107 ] ; 2 uses
  %i.ia = icmp eq i32 %.sroa.speculated, %i.hz
  br i1 %i.ia, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ib = add i32 %.1181, 1
  br label %.thread205.backedge

.thread205.backedge:                              ; preds = %bb.ca, %_ZN7zstringD2Ev.exit118, %bb.l, %bb.z, %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.ak
  %.0185.be = phi i32 [ %i.fj, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ %i.bo, %bb.l ], [ %i.dz, %bb.z ], [ %i.fj, %bb.ak ], [ %.2187, %_ZN7zstringD2Ev.exit118 ], [ %.2187, %bb.ca ]
  %.0180.be = phi i32 [ %.1181, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ %i.bp, %bb.l ], [ %i.ea, %bb.z ], [ %i.fm, %bb.ak ], [ %.1181, %_ZN7zstringD2Ev.exit118 ], [ %i.ib, %bb.ca ]
  br label %.thread205

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ic = sub i32 %i.hz, %.sroa.speculated
  invoke void @_ZNK7zstring7extractEjj(ptr dead_on_unwind nonnull writable sret(%class.zstring) align 8 %10, ptr noundef nonnull align 8 dereferenceable(80) %6, i32 noundef %.sroa.speculated, i32 noundef %i.ic)
          to label %bb.cc unwind label %bb.ck

bb.cc:                                            ; preds = %bb.cb
  %i.id = invoke noundef ptr @_ZNK8seq_util3str9mk_stringERK7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %10)
          to label %bb.cd unwind label %bb.cl     ; 3 uses

bb.cd:                                            ; preds = %bb.cc
  %i.ie = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.if = zext i32 %.1181 to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.if ; 2 uses
  %i.ih = load ptr, ptr %2, align 8, !tbaa !108, !nonnull !14, !align !15
  %.not.i.i110 = icmp eq ptr %i.id, null
  br i1 %.not.i.i110, label %_ZN11ast_manager7inc_refEP3ast.exit.i111, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !103
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !103
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i111

_ZN11ast_manager7inc_refEP3ast.exit.i111:         ; preds = %bb.ce, %bb.cd
  %i.il = load ptr, ptr %i.ig, align 8, !tbaa !8  ; 3 uses
  %.not.i3.i112 = icmp eq ptr %i.il, null
  br i1 %.not.i3.i112, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i111
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !103
  %i.io = add i32 %i.in, -1                       ; 2 uses
  store i32 %i.io, ptr %i.im, align 4, !tbaa !103
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ih, ptr noundef nonnull %i.il)
          to label %bb.ch unwind label %bb.cm

bb.ch:                                            ; preds = %bb.cf, %_ZN11ast_manager7inc_refEP3ast.exit.i111, %bb.cg
  store ptr %i.id, ptr %i.ig, align 8, !tbaa !8
  %i.iq = load ptr, ptr %10, align 8, !tbaa !212  ; 3 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.iq, %i.r
  %i.ir = icmp eq ptr %i.iq, null
  %or.cond.i.i.i.i117 = or i1 %.not.i.i.i.i116, %i.ir
  br i1 %or.cond.i.i.i.i117, label %_ZN7zstringD2Ev.exit118, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.iq)
          to label %_ZN7zstringD2Ev.exit118 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #26
  unreachable

_ZN7zstringD2Ev.exit118:                          ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.thread205.backedge

bb.ck:                                            ; preds = %bb.cb
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cl:                                            ; preds = %bb.cc
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cg
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.pn57 = phi { ptr, i32 } [ %i.iw, %bb.cm ], [ %i.iv, %bb.cl ]
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %10) #25
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %bb.cn ], [ %i.iu, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.cw

.thread218:                                       ; preds = %bb.bg, %bb.be, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit72
  %.6 = phi i32 [ %.0185, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %.0185, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit72 ], [ %.1186, %bb.be ], [ %.1186, %bb.bg ]
  %.5 = phi i32 [ %.0180, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %.0180, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit72 ], [ %.1181, %bb.be ], [ %.1181, %bb.bg ]
  invoke void @_ZN12seq_rewriter14remove_leadingEjR10ref_vectorI4expr11ast_managerE(ptr nonnull align 8 poison, i32 noundef %.6, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.cp unwind label %bb.e

bb.cp:                                            ; preds = %.thread218
end_hunk_1
