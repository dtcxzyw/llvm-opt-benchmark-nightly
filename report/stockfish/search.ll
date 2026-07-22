inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search6Worker15start_searchingEv:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 27
  store i8 0, ptr %i.cf, align 1, !tbaa !130
  %i.cg = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %5) #33
  %i.ch = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.cg) #33 ; 2 uses
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !173, !nonnull !48, !align !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cj, ptr %6, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 17, ptr %i.a, align 8, !tbaa !25
  %i.ck = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #33 ; 2 uses
  store ptr %i.ck, ptr %6, align 8, !tbaa !230
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ck, ptr noundef nonnull align 1 dereferenceable(17) @.str.2, i64 17, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !228
  %i.cn = load ptr, ptr %6, align 8, !tbaa !230
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.cp = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %6) #33
  %i.cq = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.cp) #33
  %.not29.not = icmp eq i32 %i.cq, 0
  br i1 %.not29.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %._crit_edge.i.i
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !173, !nonnull !48, !align !49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.cs, ptr %7, align 8, !tbaa !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cs, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.ct, align 8, !tbaa !228
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.cu, align 1, !tbaa !130
  %i.cv = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %7) #33
  %i.cw = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.cv) #33 ; 2 uses
  %.not.i43 = icmp eq i32 %i.cw, 0
  br i1 %.not.i43, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i41
  %i.cx = add nsw i32 %i.cw, -1320
  %i.cy = sitofp i32 %i.cx to double
  %i.cz = fdiv double %i.cy, 1.870000e+03         ; 3 uses
  %i.da = call double @llvm.fmuladd.f64(double %i.cz, double 3.724730e+01, double -4.085250e+01)
  %i.db = call double @llvm.fmuladd.f64(double %i.da, double %i.cz, double 2.229430e+01)
  %i.dc = call double @llvm.fmuladd.f64(double %i.db, double %i.cz, double -3.114380e-01) ; 2 uses
  %i.dd = fcmp olt double %i.dc, 0.000000e+00
  %i.de = select i1 %i.dd, double 0.000000e+00, double %i.dc ; 2 uses
  %i.df = fcmp ogt double %i.de, 1.900000e+01
  %.sroa.speculated.i = select i1 %i.df, double 1.900000e+01, double %i.de
  br label %_ZN9Stockfish6Search5SkillC2Eii.exit

bb.m:                                             ; preds = %._crit_edge.i.i41
  %i.dg = sitofp i32 %i.ch to double
  br label %_ZN9Stockfish6Search5SkillC2Eii.exit

_ZN9Stockfish6Search5SkillC2Eii.exit:             ; preds = %bb.l, %bb.m
  %storemerge.i = phi double [ %.sroa.speculated.i, %bb.l ], [ %i.dg, %bb.m ]
  %i.dh = load ptr, ptr %7, align 8, !tbaa !230   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cs
  br i1 %i.di, label %.critedge36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9Stockfish6Search5SkillC2Eii.exit
  %i.dj = load i64, ptr %i.cs, align 8, !tbaa !130
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #38
  br label %.critedge36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i
  %i.dl = sitofp i32 %i.ch to double
  br label %.critedge38

.critedge36:                                      ; preds = %_ZN9Stockfish6Search5SkillC2Eii.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %.critedge38

.critedge38:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.critedge36
  %.sroa.077.080 = phi double [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %storemerge.i, %.critedge36 ]
  %i.dm = load ptr, ptr %6, align 8, !tbaa !230   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cj
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %.critedge38
  %i.do = load i64, ptr %i.cj, align 8, !tbaa !130
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %.critedge38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.dq = load ptr, ptr %5, align 8, !tbaa !230   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cd
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.ds = load i64, ptr %i.cd, align 8, !tbaa !130
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.du = load ptr, ptr %i.o, align 8, !tbaa !173, !nonnull !48, !align !49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.dv, ptr %8, align 8, !tbaa !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.dv, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 7, ptr %i.dw, align 8, !tbaa !228
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 23
  store i8 0, ptr %i.dx, align 1, !tbaa !130
  %i.dy = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %8) #33
  %i.dz = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.dy) #33
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %bb.n, label %.critedge4

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 11419748
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !231
  %.not30 = icmp eq i32 %i.ec, 0
  br i1 %.not30, label %bb.o, label %.critedge4

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 11419752
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !232
  %.not31 = icmp ne i32 %i.ee, 0
  %i.ef = fcmp olt double %.sroa.077.080, 2.000000e+01
  %or.cond = select i1 %.not31, i1 true, i1 %i.ef
  br i1 %or.cond, label %.critedge4, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !233
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !189
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !234
  %.not81 = icmp eq i16 %i.ej, 0
  %i.ek = load ptr, ptr %8, align 8, !tbaa !230   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dv
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.p
  %i.em = load i64, ptr %i.dv, align 8, !tbaa !130
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %.not81, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.eo = load ptr, ptr %i.bc, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.ep = call noundef ptr @_ZNK9Stockfish10ThreadPool15get_best_threadEv(ptr noundef nonnull align 8 dereferenceable(64) %i.eo) #33
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !236
  br label %bb.r

.critedge4:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.n, %bb.o
  %i.es = load ptr, ptr %8, align 8, !tbaa !230   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.dv
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %.critedge4
  %i.eu = load i64, ptr %i.dv, align 8, !tbaa !130
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %.critedge4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.0 = phi ptr [ %0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.er, %bb.q ], [ %0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0, i64 11421080 ; 4 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !233 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !238
  %i.fa = load ptr, ptr %i.f, align 32, !tbaa !114 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  store i32 %i.ez, ptr %i.fb, align 8, !tbaa !239
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !240
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 92
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !241
  %.not32 = icmp eq ptr %.0, %0
  br i1 %.not32, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ff = load ptr, ptr %i.bc, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.fg = load ptr, ptr %i.r, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.fh = getelementptr inbounds nuw i8, ptr %.0, i64 11421108
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !242
  call void @_ZN9Stockfish6Search13SearchManager2pvERNS0_6WorkerERKNS_10ThreadPoolERKNS_18TranspositionTableEi(ptr noundef nonnull align 8 dereferenceable(120) %i.fa, ptr noundef nonnull align 64 dereferenceable(14279296) %.0, ptr noundef nonnull align 8 dereferenceable(64) %i.ff, ptr noundef nonnull align 8 dereferenceable(17) %i.fg, i32 noundef %i.fi)
  %.pre = load ptr, ptr %i.ew, align 8, !tbaa !233
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fj = phi ptr [ %.pre, %bb.s ], [ %i.ex, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.fk, ptr %9, align 8, !tbaa !225
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i64 0, ptr %i.fl, align 8, !tbaa !228
  store i8 0, ptr %i.fk, align 8, !tbaa !130
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !192
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !189 ; 2 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = icmp ugt i64 %i.fs, 2
  br i1 %i.ft, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fu = load ptr, ptr %i.r, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.fv = call noundef zeroext i1 @_ZN9Stockfish6Search8RootMove22extract_ponder_from_ttERKNS_18TranspositionTableERNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.fj, ptr noundef nonnull align 8 dereferenceable(17) %i.fu, ptr noundef nonnull align 8 dereferenceable(1048) %i.j)
  br i1 %i.fv, label %._crit_edge, label %bb.ab

._crit_edge:                                      ; preds = %bb.u
  %.pre83 = load ptr, ptr %i.ew, align 8, !tbaa !233
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre83, i64 48
  %.pre84 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !189
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.t
  %i.fw = phi ptr [ %.pre84, %._crit_edge ], [ %i.fp, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %.sroa.08.0.copyload = load i16, ptr %i.fx, align 2, !tbaa !191
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 11420461
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !243, !range !221, !noundef !48
  %i.ga = trunc nuw i8 %i.fz to i1
  call void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i16 %.sroa.08.0.copyload, i1 noundef zeroext %i.ga) #33
  %i.gb = load ptr, ptr %9, align 8, !tbaa !230   ; 6 uses
  %i.gc = icmp eq ptr %i.gb, %i.fk
  %i.gd = load ptr, ptr %10, align 8, !tbaa !230  ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge                ; 2 uses
  br i1 %i.gc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.v
  br i1 %i.gf, label %bb.w, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.v
  br i1 %i.gf, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !228 ; 3 uses
  %i.gi = icmp ult i64 %i.gh, 16
  call void @llvm.assume(i1 %i.gi)
  switch i64 %i.gh, label %bb.y [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.gj = load i8, ptr %i.gd, align 1, !tbaa !130
  store i8 %i.gj, ptr %i.gb, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %i.gd, i64 %i.gh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.gk = load i64, ptr %i.gg, align 8, !tbaa !228 ; 2 uses
  store i64 %i.gk, ptr %i.fl, align 8, !tbaa !228
  %i.gl = load ptr, ptr %9, align 8, !tbaa !230
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gk
  store i8 0, ptr %i.gm, align 1, !tbaa !130
  %.pre.i60 = load ptr, ptr %10, align 8, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gd, ptr %9, align 8, !tbaa !230
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.go = load <2 x i64>, ptr %i.gn, align 8, !tbaa !130
  store <2 x i64> %i.go, ptr %i.fl, align 8, !tbaa !130
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gp = load i64, ptr %i.fk, align 8, !tbaa !130
  store ptr %i.gd, ptr %9, align 8, !tbaa !230
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gr = load <2 x i64>, ptr %i.gq, align 8, !tbaa !130
  store <2 x i64> %i.gr, ptr %i.fl, align 8, !tbaa !130
  %.not.i59 = icmp eq ptr %i.gb, null
  br i1 %.not.i59, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gb, ptr %10, align 8, !tbaa !230
  store i64 %i.gp, ptr %i.ge, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ge, ptr %10, align 8, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.z, %bb.aa
  %i.gs = phi ptr [ %i.gb, %bb.z ], [ %i.ge, %bb.aa ], [ %.pre.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.gt, align 8, !tbaa !228
  store i8 0, ptr %i.gs, align 1, !tbaa !130
  %i.gu = load ptr, ptr %10, align 8, !tbaa !230  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !130
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.gz = load ptr, ptr %i.ew, align 8, !tbaa !233
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !189
  %.sroa.07.0.copyload = load i16, ptr %i.hb, align 2, !tbaa !191
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 11420461
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !243, !range !221, !noundef !48
  %i.he = trunc nuw i8 %i.hd to i1
  call void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i16 %.sroa.07.0.copyload, i1 noundef zeroext %i.he) #33
  %i.hf = load ptr, ptr %i.f, align 32, !tbaa !114
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 112
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !194, !nonnull !48, !align !49 ; 3 uses
  %i.hi = load ptr, ptr %11, align 8, !tbaa !230
  %i.hj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !228
  %i.hl = load ptr, ptr %9, align 8, !tbaa !230
  %i.hm = load i64, ptr %i.fl, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %i.hk, ptr %1, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.hi, ptr %i.hn, align 8
  store i64 %i.hm, ptr %2, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.hl, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 112
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !215
  %.not.i.i66 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i66, label %bb.ac, label %_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EEclES3_S3_.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EEclES3_S3_.exit: ; preds = %bb.ab
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 96
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 120
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !244
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(32) %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #33, !inline_history !246
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.hu = load ptr, ptr %11, align 8, !tbaa !230  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EEclES3_S3_.exit
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !130
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EEclES3_S3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.hz = load ptr, ptr %9, align 8, !tbaa !230   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.fk
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.ib = load i64, ptr %i.fk, align 8, !tbaa !130
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack5resetEv(ptr noundef nonnull align 64 dereferenceable(2529288)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search6Worker19iterative_deepeningEv(ptr noundef nonnull align 64 dereferenceable(14279296) %0) local_unnamed_addr #4 align 2 {
iter.check:
  %.sroa.0.i = alloca { i64, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }, align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca [247 x %"class.Stockfish::Move"], align 16 ; 3 uses
  %2 = alloca %"class.std::vector.142", align 8   ; 10 uses
  %3 = alloca [256 x %"struct.Stockfish::Search::Stack"], align 16 ; 26 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.Stockfish::Search::Skill", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.c = load i64, ptr %i.b, align 64, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11422176 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 32             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.f = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !189
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !190
  store i16 0, ptr %i.f, align 2, !tbaa !191
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11420460
  %i.k = load i8, ptr %i.j, align 4, !tbaa !171   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(14336) %3, i8 0, i64 14336, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 392 ; 18 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 933888 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !443
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !532
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %i.r = load i64, ptr %i.p, align 8, !tbaa !25
  store i64 %i.r, ptr %i.q, align 8, !tbaa !25
  %i.s = load i32, ptr %1, align 8, !tbaa !606
  store i32 %i.s, ptr %.sink.i.i, align 8, !tbaa !606
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !547
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !442  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %i.x = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.w, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !442
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %.0.in41 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.042 = load ptr, ptr %.0.in41, align 8, !tbaa !443 ; 2 uses
  %.not2843 = icmp eq ptr %.042, null
  br i1 %.not2843, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.q
  %.045 = phi ptr [ %.0, %bb.q ], [ %.042, %bb.i ] ; 4 uses
  %.02744 = phi ptr [ %.sink.i.i32, %bb.q ], [ %.sink.i.i, %bb.i ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !536  ; 7 uses
  %.not.i.i.i30 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i30, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !547 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !536
  %.not9.i.i.i31 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i31, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !442
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.ac, align 8, !tbaa !442
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !443 ; 2 uses
  %.not10.i.i.i33 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i33, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40, label %.preheader.i.i.i34

.preheader.i.i.i34:                               ; preds = %bb.l, %.preheader.i.i.i34
  %storemerge.i.i.i35 = phi ptr [ %i.ai, %.preheader.i.i.i34 ], [ %i.ag, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !442 ; 2 uses
  %.not11.i.i.i36 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i36, label %bb.m, label %.preheader.i.i.i34, !llvm.loop !605

bb.m:                                             ; preds = %.preheader.i.i.i34
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !443 ; 2 uses
  %.not12.i.i.i37 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i38 = select i1 %.not12.i.i.i37, ptr %storemerge.i.i.i35, ptr %i.ak
  store ptr %spec.store.select.i.i.i38, ptr %i.a, align 8
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

bb.n:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !443
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

bb.o:                                             ; preds = %bb.j
  store ptr null, ptr %3, align 8, !tbaa !532
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39: ; preds = %.lr.ph
  %i.am = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40: ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39
  %.sink.i.i32 = phi ptr [ %i.am, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39 ], [ %i.z, %bb.l ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.045, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 32
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !25
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !25
  %i.aq = load i32, ptr %.045, align 8, !tbaa !606
  store i32 %i.aq, ptr %.sink.i.i32, align 8, !tbaa !606
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.02744, i64 16
  store ptr %.sink.i.i32, ptr %i.as, align 8, !tbaa !443
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 8
  store ptr %.02744, ptr %i.at, align 8, !tbaa !547
  %i.au = getelementptr inbounds nuw i8, ptr %.045, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !442 ; 2 uses
  %.not29 = icmp eq ptr %i.av, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %i.aw = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av, ptr noundef nonnull %.sink.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !442
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %.0.in = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !443 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !607

._crit_edge:                                      ; preds = %bb.q, %bb.i
  ret ptr %.sink.i.i
}

declare void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional.336") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.120") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.347", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.347", align 8   ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !228  ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.g = load ptr, ptr %1, align 8, !tbaa !230
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.347") align 8 %2, i64 %i.e, ptr %i.g, i64 1, ptr nonnull @.str.23)
  %i.h = load ptr, ptr %2, align 8, !tbaa !608    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !608  ; 2 uses
  %.not5054 = icmp eq ptr %i.h, %i.j
  br i1 %.not5054, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.pre = load ptr, ptr %2, align 8, !tbaa !610
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.b ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !612
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #38
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.ai

bb.d:                                             ; preds = %.lr.ph56, %bb.ah
  %i.aa = phi ptr [ null, %.lr.ph56 ], [ %i.eh, %bb.ah ] ; 8 uses
  %i.ab = phi ptr [ null, %.lr.ph56 ], [ %i.ei, %bb.ah ] ; 4 uses
  %i.ac = phi ptr [ null, %.lr.ph56 ], [ %i.ej, %bb.ah ] ; 7 uses
  %i.ad = phi ptr [ null, %.lr.ph56 ], [ %.promoted61, %bb.ah ] ; 9 uses
  %.sroa.045.055 = phi ptr [ %i.h, %.lr.ph56 ], [ %i.ek, %bb.ah ] ; 3 uses
  %i.ae = load i64, ptr %.sroa.045.055, align 8, !tbaa !613 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !301
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.347") align 8 %3, i64 %i.ae, ptr %.sroa.2.0.copyload, i64 1, ptr nonnull @.str.24)
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !614
  %i.ah = load ptr, ptr %3, align 8, !tbaa !610   ; 6 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4
  switch i64 %i.al, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit [
    i64 1, label %bb.f
    i64 2, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !301 ; 3 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !225
  %i.am = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.an = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #37
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !25
  %i.ao = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ao, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #33 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !230
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.aq, ptr %i.r, align 8, !tbaa !130
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ar = phi ptr [ %i.ap, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !130
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.at = load i64, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  store i64 %i.at, ptr %i.s, align 8, !tbaa !228
  %i.au = load ptr, ptr %4, align 8, !tbaa !230
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.aw = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #33 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !230   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.r
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.az = load i64, ptr %i.r, align 8, !tbaa !130
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %.not.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i64 %i.aw, ptr %i.ac, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !615
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = ptrtoint ptr %i.aa to i64
  %i.bd = ptrtoint ptr %i.ad to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i10 = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i10)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #36 ; 5 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i64 %i.aw, ptr %i.bn, align 8, !tbaa !25
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.ad, i64 %i.be, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.be) #38
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.bm, ptr %0, align 8, !tbaa !573
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !615
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk ; 3 uses
  store ptr %i.bq, ptr %i.q, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.ah, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i12, align 8, !tbaa !301 ; 3 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !225
  %i.br = icmp eq ptr %.sroa.2.0.copyload.i13, null
  %i.bs = icmp ne i64 %.sroa.0.0.copyload.i11, 0
  %or.cond.i.i.i14 = and i1 %i.bs, %i.br
  br i1 %or.cond.i.i.i14, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #37
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %.sroa.0.0.copyload.i11, ptr %i.b, align 8, !tbaa !25
  %i.bt = icmp ugt i64 %.sroa.0.0.copyload.i11, 15
  br i1 %i.bt, label %bb.t, label %._crit_edge.i.i.i.i15

bb.t:                                             ; preds = %bb.s
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #33 ; 2 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !230
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.bv, ptr %i.l, align 8, !tbaa !130
  br label %._crit_edge.i.i.i.i15

._crit_edge.i.i.i.i15:                            ; preds = %bb.t, %bb.s
  %i.bw = phi ptr [ %i.bu, %bb.t ], [ %i.l, %bb.s ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i11, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i15
  %i.bx = load i8, ptr %.sroa.2.0.copyload.i13, align 1, !tbaa !130
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

bb.v:                                             ; preds = %._crit_edge.i.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %.sroa.2.0.copyload.i13, i64 %.sroa.0.0.copyload.i11, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16: ; preds = %._crit_edge.i.i.i.i15, %bb.u, %bb.v
  %i.by = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  store i64 %i.by, ptr %i.m, align 8, !tbaa !228
  %i.bz = load ptr, ptr %5, align 8, !tbaa !230
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cb = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #33 ; 2 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !230   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !130
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.cg = load ptr, ptr %3, align 8, !tbaa !610   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.ch, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
end_hunk_1
begin_hunk_2_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.ny
  %i.oa = zext i16 %i.nk to i64
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %i.oa ; 2 uses
  %i.oc = mul nsw i32 %i.nw, 9
  %.sroa.speculated.i680 = call i32 @llvm.smin.i32(i32 %i.oc, i32 7183) ; 2 uses
  %i.od = load i16, ptr %i.ob, align 2, !tbaa !132
  %i.oe = sext i16 %i.od to i32                   ; 2 uses
  %i.of = add nsw i32 %.sroa.speculated.i680, %i.oe
  %i.og = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i680, i1 true)
  %i.oh = mul nsw i32 %i.og, %i.oe
  %.neg.i = sdiv i32 %i.oh, -7183
  %i.oi = add nsw i32 %i.of, %.neg.i
  %i.oj = trunc i32 %i.oi to i16
  store i16 %i.oj, ptr %i.ob, align 2, !tbaa !132
  %i.ok = load i8, ptr %i.dc, align 4, !tbaa !313, !range !221, !noundef !48
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.om = zext nneg i8 %i.cg to i64               ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !330 ; 2 uses
  %i.op = and i8 %i.oo, 7
  %.not578 = icmp eq i8 %i.op, 1
  %i.oq = and i16 %i.nk, -16384
  %.not579 = icmp eq i16 %i.oq, 16384
  %or.cond1147 = or i1 %.not579, %.not578
  br i1 %or.cond1147, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.or = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.os = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !333
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !337
  %i.ox = and i64 %i.ow, %i.ou
  %i.oy = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !162
  %i.pa = getelementptr inbounds nuw [2048 x i8], ptr %i.oz, i64 %i.ox
  %i.pb = zext i8 %i.oo to i64
  %i.pc = getelementptr inbounds nuw [128 x i8], ptr %i.pa, i64 %i.pb
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %i.om ; 2 uses
  %i.pe = mul nsw i32 %i.nw, 13
  %.sroa.speculated.i682 = call i32 @llvm.smin.i32(i32 %i.pe, i32 8192) ; 2 uses
  %i.pf = load atomic i16, ptr %i.pd monotonic, align 2
  %i.pg = sext i16 %i.pf to i32                   ; 2 uses
  %i.ph = add nsw i32 %.sroa.speculated.i682, %i.pg
  %i.pi = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i682, i1 true)
  %i.pj = mul nsw i32 %i.pi, %i.pg
  %.neg.i683 = sdiv i32 %i.pj, -8192
  %i.pk = add nsw i32 %i.ph, %.neg.i683
  %i.pl = trunc i32 %i.pk to i16
  store atomic i16 %i.pl, ptr %i.pd monotonic, align 2
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bu, %bb.bu, %bb.bw, %bb.bx, %bb.by, %bb.bv
  %i.pm = add nsw i32 %.sroa.speculated824, -485
  %.neg580 = mul nsw i32 %.11035, -281
  %.neg581 = mul nsw i32 %.neg580, %.11035
  %i.pn = add i32 %i.pm, %.neg581
  %i.po = icmp slt i32 %.0524, %i.pn
  br i1 %i.po, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.pp = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.pq = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.pp, i32 noundef %.sroa.speculated824, i32 noundef %.sroa.speculated819)
  br label %.thread1079

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr %i.a, ptr %12, align 8, !tbaa !770
  %i.pr = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.b, ptr %i.pr, align 8, !tbaa !593
  %i.ps = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.c, ptr %i.ps, align 8, !tbaa !593
  %i.pt = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.d, ptr %i.pt, align 8, !tbaa !380
  %i.pu = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 45
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !329, !range !221, !noundef !48
  %i.px = trunc nuw i8 %i.pw to i1
  %i.py = icmp samesign ugt i32 %.11035, 13
  %or.cond23.not = select i1 %i.px, i1 true, i1 %i.py
  br i1 %or.cond23.not, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pz = call noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %.11035)
  %i.qa = sub nsw i32 %.0524, %i.pz
  %.not = icmp slt i32 %i.qa, %.sroa.speculated819
  %.not583 = icmp slt i32 %.0524, %.sroa.speculated819
  %or.cond654 = or i1 %.not583, %.not
  br i1 %or.cond654, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qb = load i16, ptr %i.dd, align 8, !tbaa !234
  %.not1178 = icmp eq i16 %i.qb, 0
  %or.cond26 = or i1 %i.ei, %.not1178
  %or.cond26.not = xor i1 %or.cond26, true
  %i.qc = icmp slt i32 %.sroa.speculated819, -31506
  %or.cond1148 = or i1 %i.qc, %or.cond26.not
  %i.qd = icmp sgt i32 %.0524, 31506
  %or.cond1149 = select i1 %or.cond1148, i1 true, i1 %i.qd
  br i1 %or.cond1149, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qe = shl nsw i32 %.sroa.speculated819, 1
  %i.qf = add nsw i32 %.0524, %i.qe
  %i.qg = sdiv i32 %i.qf, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.thread1079

bb.cf:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %6, label %bb.cg, label %.thread1076

bb.cg:                                            ; preds = %bb.cf
  %i.qh = load ptr, ptr %i.a, align 8, !tbaa !762 ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !252
  %.neg584 = mul nsw i32 %.11035, -18
  %i.qk = add i32 %.sroa.speculated819, 350
  %i.ql = add i32 %i.qk, %.neg584
  %.not585 = icmp slt i32 %i.qj, %i.ql
  %brmerge = or i1 %i.eh, %.not585
  br i1 %brmerge, label %.thread1076, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qm = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 40
  %i.qo = zext i8 %i.ag to i64
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.qo
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !138
  %.not586 = icmp eq i32 %i.qq, 0
  br i1 %.not586, label %.thread1076, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !253
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 11419828 ; 4 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !338
  %.not587 = icmp slt i32 %i.qs, %i.qu
  %i.qv = icmp slt i32 %.sroa.speculated819, -31506
  %or.cond1150 = or i1 %i.qv, %.not587
  br i1 %or.cond1150, label %.thread1076, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.lhs.trunc1139 = trunc nuw i32 %.11035 to i8
  %i.qw = udiv i8 %.lhs.trunc1139, 3
  %narrow1179 = add nuw nsw i8 %i.qw, 7
  %i.qx = zext nneg i8 %narrow1179 to i32
  %i.qy = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef nonnull align 8 dereferenceable(17) %i.qy) #33
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qh, i64 28
  store i16 65, ptr %i.qz, align 4, !tbaa !191
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store ptr %i.ra, ptr %i.rb, align 8, !tbaa !247
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !251
  %i.re = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 56
  %i.rg = sub nsw i32 0, %.sroa.speculated819
  %i.rh = sub nsw i32 1, %.sroa.speculated819
  %i.ri = sub nsw i32 %.11035, %i.qx              ; 3 uses
  %i.rj = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.rf, i32 noundef %i.rg, i32 noundef %i.rh, i32 noundef %i.ri, i1 noundef zeroext false) ; 2 uses
  %i.rk = sub nsw i32 0, %i.rj                    ; 3 uses
  call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #33
  %.not588 = icmp sgt i32 %.sroa.speculated819, %i.rk
  %i.rl = icmp slt i32 %i.rj, -31506
  %or.cond1151 = or i1 %.not588, %i.rl
  br i1 %or.cond1151, label %.thread1076, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rm = load i32, ptr %i.qt, align 4, !tbaa !338
  %i.rn = icmp ne i32 %i.rm, 0
  %i.ro = icmp samesign ult i32 %.11035, 16
  %or.cond28 = select i1 %i.rn, i1 true, i1 %i.ro
  br i1 %or.cond28, label %.thread1079, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rp = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !253
  %i.rs = trunc nsw i32 %i.ri to i16
  %.lhs.trunc1140 = mul nsw i16 %i.rs, 3
  %i.rt = sdiv i16 %.lhs.trunc1140, 4
  %.sext1141 = sext i16 %i.rt to i32
  %i.ru = add nsw i32 %i.rr, %.sext1141
  store i32 %i.ru, ptr %i.qt, align 4, !tbaa !338
  %i.rv = add nsw i32 %.sroa.speculated819, -1
  %i.rw = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.rp, i32 noundef %i.rv, i32 noundef %.sroa.speculated819, i32 noundef %i.ri, i1 noundef zeroext false)
  store i32 0, ptr %i.qt, align 4, !tbaa !338
  %.not589 = icmp slt i32 %i.rw, %.sroa.speculated819
  br i1 %.not589, label %.thread1076, label %.thread1079

.thread1076:                                      ; preds = %bb.cg, %bb.cj, %bb.cl, %bb.ci, %bb.ch, %bb.cf
  %i.rx = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !252 ; 2 uses
  %i.sa = icmp sge i32 %i.rz, %.sroa.speculated819
  %i.sb = load i8, ptr %i.b, align 1, !tbaa !313, !range !221, !noundef !48
  %i.sc = zext i1 %i.sa to i8
  %i.sd = or i8 %i.sb, %i.sc                      ; 3 uses
  store i8 %i.sd, ptr %i.b, align 1, !tbaa !313
  %i.se = icmp samesign ugt i32 %.11035, 5
  %or.cond31 = select i1 %6, i1 %i.se, i1 false
  br i1 %or.cond31, label %.thread1083, label %bb.cm

.thread1083:                                      ; preds = %.thread1076
  %i.sf = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.sg = icmp eq i16 %i.sf, 0
  %i.sh = icmp slt i32 %i.ci, 4
  %or.cond34.not.not = select i1 %i.sg, i1 %i.sh, i1 false
  %i.si = sext i1 %or.cond34.not.not to i32
  %spec.select1152 = add nsw i32 %.11035, %i.si
  %i.sj = add nsw i32 %.sroa.speculated819, 235
  %narrow1085 = mul nuw nsw i8 %i.sd, 63
  %i.sk = zext nneg i8 %narrow1085 to i32
  %i.sl = sub nsw i32 %i.sj, %i.sk
  br label %bb.cn

bb.cm:                                            ; preds = %.thread1076
  %i.sm = add nsw i32 %.sroa.speculated819, 235
  %narrow = mul nuw nsw i8 %i.sd, 63
  %i.sn = zext nneg i8 %narrow to i32
  %i.so = sub nsw i32 %i.sm, %i.sn
  %i.sp = icmp samesign ugt i32 %.11035, 2
  br i1 %i.sp, label %bb.cn, label %bb.cw

bb.cn:                                            ; preds = %.thread1083, %bb.cm
  %i.sq = phi i32 [ %i.sl, %.thread1083 ], [ %i.so, %bb.cm ] ; 7 uses
  %.210361086 = phi i32 [ %spec.select1152, %.thread1083 ], [ %.11035, %bb.cm ] ; 5 uses
  %i.sr = sub nsw i32 0, %i.sq                    ; 2 uses
  %i.ss = add i32 %.sroa.speculated819, -31507
  %spec.select.i684 = icmp ult i32 %i.ss, -63013
  br i1 %spec.select.i684, label %bb.cw, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.st = load i32, ptr %i.di, align 4, !tbaa !326 ; 2 uses
  %i.su = icmp ne i32 %i.st, 32002
  %i.sv = icmp slt i32 %i.st, %i.sq
  %or.cond1153 = select i1 %i.su, i1 %i.sv, i1 false
  br i1 %or.cond1153, label %bb.cw, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %.sroa.0144.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.sw = sub nsw i32 %i.sq, %i.rz
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 917504
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164) %13, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0144.0.copyload, i32 noundef %i.sw, ptr noundef nonnull %i.sx) #33
  %i.sy = add nsw i32 %.210361086, -5
  %i.sz = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !252
  %i.tc = sub nsw i32 %i.tb, %.sroa.speculated819
  %.neg591 = sdiv i32 %i.tc, -315
  %i.td = add nsw i32 %i.sy, %.neg591
  %i.te = call i32 @llvm.smax.i32(i32 %i.td, i32 0)
  %.sroa.speculated933 = call i32 @llvm.umin.i32(i32 %.210361086, i32 %i.te) ; 3 uses
  %i.tf = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not11841232 = icmp eq i16 %i.tf, 0
  br i1 %.not11841232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cp
  %i.tg = sub nsw i32 1, %i.sq                    ; 2 uses
  %i.th = icmp ne i32 %.sroa.speculated933, 0
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.tj = add nuw nsw i32 %.sroa.speculated933, 1
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph, %.backedge1206
  %i.tk = phi i16 [ %i.tf, %.lr.ph ], [ %i.tn, %.backedge1206 ] ; 5 uses
  %i.tl = icmp eq i16 %i.tk, %i.cm
  br i1 %i.tl, label %.backedge1206, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tm = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tk) #33
  br i1 %i.tm, label %bb.cs, label %.backedge1206

.backedge1206:                                    ; preds = %bb.cu, %bb.cv, %bb.cq, %bb.cr
  %i.tn = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not1184 = icmp eq i16 %i.tn, 0
  br i1 %.not1184, label %._crit_edge, label %bb.cq, !llvm.loop !772

bb.cs:                                            ; preds = %bb.cr
  %i.to = load ptr, ptr %i.a, align 8, !tbaa !762
  call void @_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tk, ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef %i.to)
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 56
  %i.tr = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.tq, i32 noundef %i.sr, i32 noundef %i.tg)
  %i.ts = sub nsw i32 0, %i.tr                    ; 2 uses
  %i.tt = icmp sle i32 %i.sq, %i.ts
  %or.cond36 = select i1 %i.tt, i1 %i.th, i1 false
  br i1 %or.cond36, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.tu = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 56
  %i.tw = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.tv, i32 noundef %i.sr, i32 noundef %i.tg, i32 noundef %.sroa.speculated933, i1 noundef zeroext %i.g)
  %i.tx = sub nsw i32 0, %i.tw
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0520 = phi i32 [ %i.tx, %bb.ct ], [ %i.ts, %bb.cs ] ; 6 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tk) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ti) #33
  %.not592 = icmp slt i32 %.0520, %i.sq
  br i1 %.not592, label %.backedge1206, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ty = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !253 ; 2 uses
  %i.ub = icmp sgt i32 %.0520, 31506
  %i.uc = icmp slt i32 %.0520, -31506
  %i.ud = select i1 %i.uc, i32 %i.ua, i32 0
  %i.ue = sub i32 0, %i.ud
  %.p.i687 = select i1 %i.ub, i32 %i.ua, i32 %i.ue
  %i.uf = add i32 %.p.i687, %.0520
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ty, i64 45
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !329, !range !221, !noundef !48
  %i.ui = trunc nuw i8 %i.uh to i1
  %i.uj = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.uk = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.uj) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.cz, i32 noundef %i.uf, i1 noundef zeroext %i.ui, i8 noundef zeroext 2, i32 noundef %i.tj, i16 %i.tk, i32 noundef %.1526, i8 noundef zeroext %i.uk) #33
  %i.ul = add i32 %.0520, -31507
  %spec.select.i688 = icmp ult i32 %i.ul, -63013
  br i1 %spec.select.i688, label %.backedge1206, label %.thread1087

.thread1087:                                      ; preds = %bb.cv
  %.neg593 = sub i32 %.sroa.speculated819, %i.sq
  %i.um = add i32 %.neg593, %.0520
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %.thread1079

._crit_edge:                                      ; preds = %.backedge1206, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.cw

bb.cw:                                            ; preds = %bb.co, %._crit_edge, %bb.cm, %bb.cn, %.thread1063
  %.31037 = phi i32 [ %.11035, %.thread1063 ], [ %.210361086, %bb.cn ], [ %.210361086, %bb.co ], [ %.210361086, %._crit_edge ], [ %.11035, %bb.cm ] ; 4 uses
  %i.un = add nsw i32 %.sroa.speculated819, 418   ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.up = load i8, ptr %i.uo, align 8, !tbaa !336
  %i.uq = and i8 %i.up, 2
  %.not594 = icmp eq i8 %i.uq, 0
  br i1 %.not594, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ur = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !341
  %i.ut = add nsw i32 %.31037, -4
  %.not595 = icmp slt i32 %i.us, %i.ut
  br i1 %.not595, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.uu = load i32, ptr %i.di, align 4, !tbaa !326 ; 2 uses
  %.not596 = icmp slt i32 %i.uu, %i.un
  %i.uv = add i32 %.sroa.speculated819, -31507
  %spec.select.i689 = icmp ult i32 %i.uv, -63013
  %or.cond1154.not1185.not1188 = or i1 %spec.select.i689, %.not596
  %i.uw = add i32 %i.uu, -31507
  %spec.select.i690 = icmp ult i32 %i.uw, -63013
  %or.cond1156 = or i1 %or.cond1154.not1185.not1188, %spec.select.i690
  br i1 %or.cond1156, label %bb.cz, label %.thread1079

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.ux = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.uy = getelementptr inbounds i8, ptr %i.ux, i64 -48
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !247
  store ptr %i.uz, ptr %i.f, align 16, !tbaa !342
  %i.va = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.vb = getelementptr inbounds i8, ptr %i.ux, i64 -104
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !247
  store ptr %i.vc, ptr %i.va, align 8, !tbaa !342
  %i.vd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ve = getelementptr inbounds i8, ptr %i.ux, i64 -160
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !247
  store ptr %i.vf, ptr %i.vd, align 16, !tbaa !342
  %i.vg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.vh = getelementptr inbounds i8, ptr %i.ux, i64 -216
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !247
  store ptr %i.vi, ptr %i.vg, align 8, !tbaa !342
  %i.vj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.vk = getelementptr inbounds i8, ptr %i.ux, i64 -272
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !247
  store ptr %i.vl, ptr %i.vj, align 16, !tbaa !342
  %i.vm = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.vn = getelementptr inbounds i8, ptr %i.ux, i64 -328
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !247
  store ptr %i.vo, ptr %i.vm, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.0135.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 917504 ; 4 uses
  %i.vr = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ux, i64 24
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !253
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %14, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0135.0.copyload, i32 noundef %.31037, ptr noundef nonnull %0, ptr noundef nonnull %i.vp, ptr noundef nonnull %i.vq, ptr noundef nonnull %i.f, ptr noundef nonnull %i.vr, i32 noundef %i.vt) #33
  %i.vu = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not118912331255 = icmp eq i16 %i.vu, 0
  br i1 %.not118912331255, label %.outer..loopexit_crit_edge, label %.lr.ph1234.lr.ph

.lr.ph1234.lr.ph:                                 ; preds = %bb.cz
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 11421152 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.vx = zext i8 %i.ag to i64                    ; 3 uses
  %i.vy = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.vx ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %spec.select660 = select i1 %6, i32 -2, i32 0
  %.neg625 = select i1 %i.ei, i32 4, i32 205
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 11419648 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 11421104 ; 2 uses
  %.neg1268 = select i1 %i.ei, i32 -73, i32 175
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %.neg632 = select i1 %6, i32 -1945, i32 -934
  %i.wg = select i1 %6, i32 0, i32 1024
  br label %.lr.ph1234

.lr.ph1234:                                       ; preds = %.lr.ph1234.lr.ph, %.thread1092
  %indvars.iv = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %indvars.iv.next, %.thread1092 ] ; 4 uses
  %i.wh = phi i16 [ %i.vu, %.lr.ph1234.lr.ph ], [ %i.aku, %.thread1092 ]
  %.0506.ph1260 = phi i32 [ -32001, %.lr.ph1234.lr.ph ], [ %.10516, %.thread1092 ] ; 16 uses
  %.11031.ph1258 = phi i32 [ %.sroa.speculated824, %.lr.ph1234.lr.ph ], [ %.3, %.thread1092 ] ; 23 uses
  %.41038.ph1257 = phi i32 [ %.31037, %.lr.ph1234.lr.ph ], [ %.9, %.thread1092 ] ; 25 uses
  %.sroa.0827.0.ph1256 = phi i16 [ 0, %.lr.ph1234.lr.ph ], [ %.sroa.0827.2, %.thread1092 ] ; 12 uses
  %i.wi = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %i.akt, %.thread1092 ] ; 13 uses
  %i.wj = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %i.aks, %.thread1092 ] ; 13 uses
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph1234, %.backedge
  %i.wk = phi i16 [ %i.wh, %.lr.ph1234 ], [ %i.wm, %.backedge ] ; 25 uses
  %i.wl = icmp eq i16 %i.wk, %i.cm
  br i1 %i.wl, label %.backedge, label %bb.db

.backedge:                                        ; preds = %bb.da, %bb.db
  %i.wm = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not1189 = icmp eq i16 %i.wm, 0
  br i1 %.not1189, label %..loopexit_crit_edge, label %bb.da, !llvm.loop !773

bb.db:                                            ; preds = %bb.da
  %i.wn = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wk) #33
  br i1 %i.wn, label %bb.dc, label %.backedge

end_hunk_2
begin_hunk_3_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
bb.bg:                                            ; preds = %bb.bf
  %i.lf = getelementptr inbounds i8, ptr %i.kw, i64 -24
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !252
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !252
  %i.lj = add nsw i32 %i.li, %i.lg                ; 2 uses
  %i.lk = sub nsw i32 0, %i.lj
  %i.ll = icmp slt i32 %i.lj, -167
  %.sroa.speculate.load.false700.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.lk, i32 -209)
  %i.lm = add nsw i32 %.sroa.speculate.load.false700.sroa.speculated, 59
  %i.ln = select i1 %i.ll, i32 226, i32 %i.lm     ; 2 uses
  %i.lo = xor i8 %i.af, 1
  %i.lp = zext i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.lp
  %i.lr = zext i16 %i.lb to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.lr ; 2 uses
  %i.lt = mul nsw i32 %i.ln, 9
  %.sroa.speculated.i579 = call i32 @llvm.smin.i32(i32 %i.lt, i32 7183) ; 2 uses
  %i.lu = load i16, ptr %i.ls, align 2, !tbaa !132
  %i.lv = sext i16 %i.lu to i32                   ; 2 uses
  %i.lw = add nsw i32 %.sroa.speculated.i579, %i.lv
  %i.lx = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i579, i1 true)
  %i.ly = mul nsw i32 %i.lx, %i.lv
  %.neg.i = sdiv i32 %i.ly, -7183
  %i.lz = add nsw i32 %i.lw, %.neg.i
  %i.ma = trunc i32 %i.lz to i16
  store i16 %i.ma, ptr %i.ls, align 2, !tbaa !132
  %i.mb = load i8, ptr %i.dc, align 4, !tbaa !313, !range !221, !noundef !48
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.md = zext nneg i8 %i.cg to i64               ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !330 ; 2 uses
  %i.mg = and i8 %i.mf, 7
  %.not485 = icmp eq i8 %i.mg, 1
  %i.mh = and i16 %i.lb, -16384
  %.not486 = icmp eq i16 %i.mh, 16384
  %or.cond1104 = or i1 %.not486, %.not485
  br i1 %or.cond1104, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mi = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.mj = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !333
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !337
  %i.mo = and i64 %i.mn, %i.ml
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !162
  %i.mr = getelementptr inbounds nuw [2048 x i8], ptr %i.mq, i64 %i.mo
  %i.ms = zext i8 %i.mf to i64
  %i.mt = getelementptr inbounds nuw [128 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %i.md ; 2 uses
  %i.mv = mul nsw i32 %i.ln, 13
  %.sroa.speculated.i581 = call i32 @llvm.smin.i32(i32 %i.mv, i32 8192) ; 2 uses
  %i.mw = load atomic i16, ptr %i.mu monotonic, align 2
  %i.mx = sext i16 %i.mw to i32                   ; 2 uses
  %i.my = add nsw i32 %.sroa.speculated.i581, %i.mx
  %i.mz = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i581, i1 true)
  %i.na = mul nsw i32 %i.mz, %i.mx
  %.neg.i582 = sdiv i32 %i.na, -8192
  %i.nb = add nsw i32 %i.my, %.neg.i582
  %i.nc = trunc i32 %i.nb to i16
  store atomic i16 %i.nc, ptr %i.mu monotonic, align 2
  %.pre1289 = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.be, %bb.bg, %bb.bh, %bb.bi, %bb.bf
  %i.nd = phi ptr [ %i.kw, %bb.be ], [ %i.kw, %bb.be ], [ %i.kw, %bb.bg ], [ %i.kw, %bb.bh ], [ %.pre1289, %bb.bi ], [ %i.kw, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr %i.a, ptr %12, align 8, !tbaa !770
  %i.ne = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.b, ptr %i.ne, align 8, !tbaa !593
  %i.nf = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.c, ptr %i.nf, align 8, !tbaa !593
  %i.ng = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.d, ptr %i.ng, align 8, !tbaa !380
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 45
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !329, !range !221, !noundef !48
  %i.nj = trunc nuw i8 %i.ni to i1
  %i.nk = icmp samesign ugt i32 %.1983, 13
  %or.cond18.not = select i1 %i.nj, i1 true, i1 %i.nk
  br i1 %or.cond18.not, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nl = call noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %.1983)
  %i.nm = sub nsw i32 %.0434, %i.nl
  %.not = icmp slt i32 %i.nm, %.sroa.speculated720
  %.not488 = icmp slt i32 %.0434, %.sroa.speculated720
  %or.cond556 = or i1 %.not488, %.not
  br i1 %or.cond556, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nn = load i16, ptr %i.dd, align 8, !tbaa !234
  %.not1139 = icmp eq i16 %i.nn, 0
  %or.cond21 = or i1 %i.eg, %.not1139
  %or.cond21.not = xor i1 %or.cond21, true
  %i.no = icmp slt i32 %.sroa.speculated720, -31506
  %or.cond1105 = or i1 %i.no, %or.cond21.not
  %i.np = icmp sgt i32 %.0434, 31506
  %or.cond1106 = select i1 %or.cond1105, i1 true, i1 %i.np
  br i1 %or.cond1106, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nq = shl nsw i32 %.sroa.speculated720, 1
  %i.nr = add nsw i32 %.0434, %i.nq
  %i.ns = sdiv i32 %i.nr, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.thread1041

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %6, label %bb.bo, label %.thread1038

bb.bo:                                            ; preds = %bb.bn
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !762 ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 32
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !252
  %.neg489 = mul nsw i32 %.1983, -18
  %i.nw = add i32 %.sroa.speculated720, 350
  %i.nx = add i32 %i.nw, %.neg489
  %.not490 = icmp slt i32 %i.nv, %i.nx
  %brmerge = or i1 %i.ds, %.not490
  br i1 %brmerge, label %.thread1038, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ny = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 40
  %i.oa = zext i8 %i.af to i64
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !138
  %.not491 = icmp eq i32 %i.oc, 0
  br i1 %.not491, label %.thread1038, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.od = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !253
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 11419828 ; 4 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !338
  %.not492 = icmp slt i32 %i.oe, %i.og
  %i.oh = icmp slt i32 %.sroa.speculated720, -31506
  %or.cond1107 = or i1 %i.oh, %.not492
  br i1 %or.cond1107, label %.thread1038, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.lhs.trunc1098 = trunc nuw i32 %.1983 to i8
  %i.oi = udiv i8 %.lhs.trunc1098, 3
  %narrow1140 = add nuw nsw i8 %i.oi, 7
  %i.oj = zext nneg i8 %narrow1140 to i32
  %i.ok = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 8 dereferenceable(17) %i.ok) #33
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nt, i64 28
  store i16 65, ptr %i.ol, align 4, !tbaa !191
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.on = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store ptr %i.om, ptr %i.on, align 8, !tbaa !247
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.op = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store ptr %i.oo, ptr %i.op, align 8, !tbaa !251
  %i.oq = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 56
  %i.os = sub nsw i32 0, %.sroa.speculated720
  %i.ot = sub nsw i32 1, %.sroa.speculated720
  %i.ou = sub nsw i32 %.1983, %i.oj               ; 3 uses
  %i.ov = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.or, i32 noundef %i.os, i32 noundef %i.ot, i32 noundef %i.ou, i1 noundef zeroext false) ; 2 uses
  %i.ow = sub nsw i32 0, %i.ov                    ; 3 uses
  call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #33
  %.not493 = icmp sgt i32 %.sroa.speculated720, %i.ow
  %i.ox = icmp slt i32 %i.ov, -31506
  %or.cond1108 = or i1 %.not493, %i.ox
  br i1 %or.cond1108, label %.thread1038, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oy = load i32, ptr %i.of, align 4, !tbaa !338
  %i.oz = icmp ne i32 %i.oy, 0
  %i.pa = icmp samesign ult i32 %.1983, 16
  %or.cond23 = select i1 %i.oz, i1 true, i1 %i.pa
  br i1 %or.cond23, label %.thread1041, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pb = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !253
  %i.pe = trunc nsw i32 %i.ou to i16
  %.lhs.trunc1099 = mul nsw i16 %i.pe, 3
  %i.pf = sdiv i16 %.lhs.trunc1099, 4
  %.sext1100 = sext i16 %i.pf to i32
  %i.pg = add nsw i32 %i.pd, %.sext1100
  store i32 %i.pg, ptr %i.of, align 4, !tbaa !338
  %i.ph = add nsw i32 %.sroa.speculated720, -1
  %i.pi = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.pb, i32 noundef %i.ph, i32 noundef %.sroa.speculated720, i32 noundef %i.ou, i1 noundef zeroext false)
  store i32 0, ptr %i.of, align 4, !tbaa !338
  %.not494 = icmp slt i32 %i.pi, %.sroa.speculated720
  br i1 %.not494, label %.thread1038, label %.thread1041

.thread1038:                                      ; preds = %bb.bo, %bb.br, %bb.bt, %bb.bq, %bb.bp, %bb.bn
  %i.pj = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 32
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !252 ; 2 uses
  %i.pm = icmp sge i32 %i.pl, %.sroa.speculated720
  %i.pn = load i8, ptr %i.b, align 1, !tbaa !313, !range !221, !noundef !48
  %i.po = zext i1 %i.pm to i8
  %i.pp = or i8 %i.pn, %i.po                      ; 3 uses
  store i8 %i.pp, ptr %i.b, align 1, !tbaa !313
  %i.pq = icmp samesign ugt i32 %.1983, 5
  br i1 %i.pq, label %.thread1045, label %bb.bu

.thread1045:                                      ; preds = %.thread1038
  %i.pr = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.ps = icmp eq i16 %i.pr, 0
  %i.pt = icmp slt i32 %i.ci, 4
  %or.cond26.not.not = select i1 %i.ps, i1 %i.pt, i1 false
  %i.pu = sext i1 %or.cond26.not.not to i32
  %spec.select1109 = add nsw i32 %.1983, %i.pu
  %i.pv = add nsw i32 %.sroa.speculated720, 235
  %narrow1047 = mul nuw nsw i8 %i.pp, 63
  %i.pw = zext nneg i8 %narrow1047 to i32
  %i.px = sub nsw i32 %i.pv, %i.pw
  br label %bb.bv

bb.bu:                                            ; preds = %.thread1038
  %i.py = add nsw i32 %.sroa.speculated720, 235
  %narrow = mul nuw nsw i8 %i.pp, 63
  %i.pz = zext nneg i8 %narrow to i32
  %i.qa = sub nsw i32 %i.py, %i.pz
  %i.qb = icmp samesign ugt i32 %.1983, 2
  br i1 %i.qb, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %.thread1045, %bb.bu
  %i.qc = phi i32 [ %i.px, %.thread1045 ], [ %i.qa, %bb.bu ] ; 7 uses
  %.29841048 = phi i32 [ %spec.select1109, %.thread1045 ], [ %.1983, %bb.bu ] ; 5 uses
  %i.qd = sub nsw i32 0, %i.qc                    ; 2 uses
  %i.qe = add i32 %.sroa.speculated720, -31507
  %spec.select.i583 = icmp ult i32 %i.qe, -63013
  br i1 %spec.select.i583, label %bb.ce, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qf = load i32, ptr %i.dr, align 4, !tbaa !326 ; 2 uses
  %i.qg = icmp ne i32 %i.qf, 32002
  %i.qh = icmp slt i32 %i.qf, %i.qc
  %or.cond1110 = select i1 %i.qg, i1 %i.qh, i1 false
  br i1 %or.cond1110, label %bb.ce, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %.sroa.0137.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.qi = sub nsw i32 %i.qc, %i.pl
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 917504
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164) %13, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0137.0.copyload, i32 noundef %i.qi, ptr noundef nonnull %i.qj) #33
  %i.qk = add nsw i32 %.29841048, -5
  %i.ql = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !252
  %i.qo = sub nsw i32 %i.qn, %.sroa.speculated720
  %.neg496 = sdiv i32 %i.qo, -315
  %i.qp = add nsw i32 %i.qk, %.neg496
  %i.qq = call i32 @llvm.smax.i32(i32 %i.qp, i32 0)
  %.sroa.speculated885 = call i32 @llvm.umin.i32(i32 %.29841048, i32 %i.qq) ; 3 uses
  %i.qr = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not11451194 = icmp eq i16 %i.qr, 0
  br i1 %.not11451194, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bx
  %i.qs = sub nsw i32 1, %i.qc                    ; 2 uses
  %i.qt = icmp ne i32 %.sroa.speculated885, 0
  %i.qu = xor i1 %6, true
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.qw = add nuw nsw i32 %.sroa.speculated885, 1
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph, %.backedge1168
  %i.qx = phi i16 [ %i.qr, %.lr.ph ], [ %i.ra, %.backedge1168 ] ; 5 uses
  %i.qy = icmp eq i16 %i.qx, %i.cm
  br i1 %i.qy, label %.backedge1168, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qz = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qx) #33
  br i1 %i.qz, label %bb.ca, label %.backedge1168

.backedge1168:                                    ; preds = %bb.cc, %bb.cd, %bb.by, %bb.bz
  %i.ra = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not1145 = icmp eq i16 %i.ra, 0
  br i1 %.not1145, label %._crit_edge, label %bb.by, !llvm.loop !775

bb.ca:                                            ; preds = %bb.bz
  %i.rb = load ptr, ptr %i.a, align 8, !tbaa !762
  call void @_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qx, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef %i.rb)
  %i.rc = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 56
  %i.re = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.rd, i32 noundef %i.qd, i32 noundef %i.qs)
  %i.rf = sub nsw i32 0, %i.re                    ; 2 uses
  %i.rg = icmp sle i32 %i.qc, %i.rf
  %or.cond28 = select i1 %i.rg, i1 %i.qt, i1 false
  br i1 %or.cond28, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.rh = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 56
  %i.rj = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.ri, i32 noundef %i.qd, i32 noundef %i.qs, i32 noundef %.sroa.speculated885, i1 noundef zeroext %i.qu)
  %i.rk = sub nsw i32 0, %i.rj
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0426 = phi i32 [ %i.rk, %bb.cb ], [ %i.rf, %bb.ca ] ; 6 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qx) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.qv) #33
  %.not497 = icmp slt i32 %.0426, %i.qc
  br i1 %.not497, label %.backedge1168, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rl = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !253 ; 2 uses
  %i.ro = icmp sgt i32 %.0426, 31506
  %i.rp = icmp slt i32 %.0426, -31506
  %i.rq = select i1 %i.rp, i32 %i.rn, i32 0
  %i.rr = sub i32 0, %i.rq
  %.p.i586 = select i1 %i.ro, i32 %i.rn, i32 %i.rr
  %i.rs = add i32 %.p.i586, %.0426
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rl, i64 45
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !329, !range !221, !noundef !48
  %i.rv = trunc nuw i8 %i.ru to i1
  %i.rw = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.rx = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.rw) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cz, i32 noundef %i.rs, i1 noundef zeroext %i.rv, i8 noundef zeroext 2, i32 noundef %i.qw, i16 %i.qx, i32 noundef %.1436, i8 noundef zeroext %i.rx) #33
  %i.ry = add i32 %.0426, -31507
  %spec.select.i587 = icmp ult i32 %i.ry, -63013
  br i1 %spec.select.i587, label %.backedge1168, label %.thread1049

.thread1049:                                      ; preds = %bb.cd
  %.neg498 = sub i32 %.sroa.speculated720, %i.qc
  %i.rz = add i32 %.neg498, %.0426
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %.thread1041

._crit_edge:                                      ; preds = %.backedge1168, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bw, %._crit_edge, %bb.bu, %bb.bv, %.thread1019
  %.3985 = phi i32 [ %.1983, %.thread1019 ], [ %.29841048, %bb.bv ], [ %.29841048, %bb.bw ], [ %.29841048, %._crit_edge ], [ %.1983, %bb.bu ] ; 4 uses
  %i.sa = add nsw i32 %.sroa.speculated720, 418   ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.sc = load i8, ptr %i.sb, align 8, !tbaa !336
  %i.sd = and i8 %i.sc, 2
  %.not499 = icmp eq i8 %i.sd, 0
  br i1 %.not499, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.se = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !341
  %i.sg = add nsw i32 %.3985, -4
  %.not500 = icmp slt i32 %i.sf, %i.sg
  br i1 %.not500, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sh = load i32, ptr %i.dr, align 4, !tbaa !326 ; 2 uses
  %.not501 = icmp slt i32 %i.sh, %i.sa
  %i.si = add i32 %.sroa.speculated720, -31507
  %spec.select.i588 = icmp ult i32 %i.si, -63013
  %or.cond1111.not1146.not1149 = or i1 %spec.select.i588, %.not501
  %i.sj = add i32 %i.sh, -31507
  %spec.select.i589 = icmp ult i32 %i.sj, -63013
  %or.cond1113 = or i1 %or.cond1111.not1146.not1149, %spec.select.i589
  br i1 %or.cond1113, label %bb.ch, label %.thread1041

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.sk = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.sl = getelementptr inbounds i8, ptr %i.sk, i64 -48
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !247
  store ptr %i.sm, ptr %i.f, align 16, !tbaa !342
  %i.sn = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.so = getelementptr inbounds i8, ptr %i.sk, i64 -104
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !247
  store ptr %i.sp, ptr %i.sn, align 8, !tbaa !342
  %i.sq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.sr = getelementptr inbounds i8, ptr %i.sk, i64 -160
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !247
  store ptr %i.ss, ptr %i.sq, align 16, !tbaa !342
  %i.st = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.su = getelementptr inbounds i8, ptr %i.sk, i64 -216
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !247
  store ptr %i.sv, ptr %i.st, align 8, !tbaa !342
  %i.sw = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.sx = getelementptr inbounds i8, ptr %i.sk, i64 -272
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !247
  store ptr %i.sy, ptr %i.sw, align 16, !tbaa !342
  %i.sz = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ta = getelementptr inbounds i8, ptr %i.sk, i64 -328
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !247
  store ptr %i.tb, ptr %i.sz, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.0128.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 917504 ; 4 uses
  %i.te = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !253
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %14, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0128.0.copyload, i32 noundef %.3985, ptr noundef nonnull %0, ptr noundef nonnull %i.tc, ptr noundef nonnull %i.td, ptr noundef nonnull %i.f, ptr noundef nonnull %i.te, i32 noundef %i.tg) #33
  %i.th = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not115011951222 = icmp eq i16 %i.th, 0
  br i1 %.not115011951222, label %.outer..loopexit_crit_edge, label %.lr.ph1196.lr.ph

.lr.ph1196.lr.ph:                                 ; preds = %bb.ch
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 11421152 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.tk = zext i8 %i.af to i64                    ; 3 uses
  %i.tl = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.tk ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %spec.select560 = select i1 %6, i32 -2, i32 0
  %.neg528 = select i1 %i.eg, i32 -195, i32 6
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 11419648 ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 11421104 ; 2 uses
  %.neg1236 = select i1 %i.eg, i32 -375, i32 -127
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %.neg535 = select i1 %6, i32 -1945, i32 -934
  %i.tt = xor i1 %6, true                         ; 2 uses
  %i.tu = sub nsw i32 0, %.sroa.speculated720
  br label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.lr.ph1196.lr.ph, %.thread1054
  %indvars.iv = phi i64 [ 0, %.lr.ph1196.lr.ph ], [ %indvars.iv.next, %.thread1054 ] ; 4 uses
  %i.tv = phi i16 [ %i.th, %.lr.ph1196.lr.ph ], [ %i.aiy, %.thread1054 ]
  %.5980.ph1226 = phi i32 [ %.4979, %.lr.ph1196.lr.ph ], [ %.7, %.thread1054 ] ; 24 uses
  %.4986.ph1225 = phi i32 [ %.3985, %.lr.ph1196.lr.ph ], [ %.9991, %.thread1054 ] ; 24 uses
  %.sroa.0784.0.ph1224 = phi i16 [ 0, %.lr.ph1196.lr.ph ], [ %.sroa.0784.2, %.thread1054 ] ; 11 uses
  %.4999.ph1223 = phi i32 [ %.3998, %.lr.ph1196.lr.ph ], [ %.101005, %.thread1054 ] ; 15 uses
  %i.tw = phi i64 [ 0, %.lr.ph1196.lr.ph ], [ %i.aix, %.thread1054 ] ; 12 uses
  %i.tx = phi i64 [ 0, %.lr.ph1196.lr.ph ], [ %i.aiw, %.thread1054 ] ; 12 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph1196, %.backedge
  %i.ty = phi i16 [ %i.tv, %.lr.ph1196 ], [ %i.ua, %.backedge ] ; 27 uses
  %i.tz = icmp eq i16 %i.ty, %i.cm
  br i1 %i.tz, label %.backedge, label %bb.cj

.backedge:                                        ; preds = %bb.ci, %bb.cj
  %i.ua = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not1150 = icmp eq i16 %i.ua, 0
  br i1 %.not1150, label %..loopexit_crit_edge, label %bb.ci, !llvm.loop !776

bb.cj:                                            ; preds = %bb.ci
  %i.ub = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.ty) #33
end_hunk_3
