inline.NumInlined: 244
inline.NumDeleted: 83
begin_hunk_0_@_ZN6Driver3runEv:bb.a
bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.co)
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %i.co, i8 noundef signext 10), !inline_history !62
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit24

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit24: ; preds = %bb.r, %bb.s
  %.0.i.i.i23 = phi i8 [ %i.cs, %bb.r ], [ %i.cw, %bb.s ]
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i23)
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx) ; 0 uses
  %i.cz = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %i.da = getelementptr i8, ptr %i.cz, i64 -24    ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !59
  %i.df = and i32 %i.de, -261
  %i.dg = or disjoint i32 %i.df, 256
  store i32 %i.dg, ptr %i.dd, align 8, !tbaa !60
  %i.dh = load i64, ptr %i.da, align 8
  %i.di = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 6, ptr %i.dj, align 8, !tbaa !61
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 8) ; 0 uses
  %i.dl = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %i.dm = getelementptr i8, ptr %i.dl, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 6, ptr %i.dp, align 8, !tbaa !65
  %i.dq = load i32, ptr %i.b, align 8, !tbaa !57
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.dq) ; 4 uses
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull @.str.12, i64 noundef 18) ; 0 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !18
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dr, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 6, ptr %i.dx, align 8, !tbaa !65
  %i.dy = load i32, ptr %i.h, align 8, !tbaa !43
  %i.dz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i32 noundef %i.dy) ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !18
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 240
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !20 ; 6 uses
  %.not.i.i.i25 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i25, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26

bb.t:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit24
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !36
  %.not.i1.i.i27 = icmp eq i8 %i.eh, 0
  br i1 %.not.i1.i.i27, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 67
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !17
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ef)
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call noundef signext i8 %i.em(ptr noundef nonnull align 8 dereferenceable(570) %i.ef, i8 noundef signext 10), !inline_history !62
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29: ; preds = %bb.u, %bb.v
  %.0.i.i.i28 = phi i8 [ %i.ej, %bb.u ], [ %i.en, %bb.v ]
  %i.eo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i8 noundef signext %.0.i.i.i28)
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eo) ; 0 uses
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 8) ; 0 uses
  %i.er = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %i.es = getelementptr i8, ptr %i.er, i64 -24
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 14, ptr %i.ev, align 8, !tbaa !65
  %i.ew = load double, ptr %i.a, align 8, !tbaa !56
  %i.ex = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.ew) ; 4 uses
  %i.ey = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull @.str.14, i64 noundef 10) ; 0 uses
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !18
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 14, ptr %i.fd, align 8, !tbaa !65
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !48
  %i.fg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, double noundef %i.ff) ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !18
  %i.fi = getelementptr i8, ptr %i.fh, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 240
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !20 ; 6 uses
  %.not.i.i.i30 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i30, label %bb.w, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31

bb.w:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !36
  %.not.i1.i.i32 = icmp eq i8 %i.fo, 0
  br i1 %.not.i1.i.i32, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 67
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !17
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fm)
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = tail call noundef signext i8 %i.ft(ptr noundef nonnull align 8 dereferenceable(570) %i.fm, i8 noundef signext 10), !inline_history !62
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34: ; preds = %bb.x, %bb.y
  %.0.i.i.i33 = phi i8 [ %i.fq, %bb.x ], [ %i.fu, %bb.y ]
  %i.fv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, i8 noundef signext %.0.i.i.i33)
  %i.fw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv) ; 0 uses
  %i.fx = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %i.fy = getelementptr i8, ptr %i.fx, i64 -24
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 240
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !20 ; 6 uses
  %.not.i.i.i35 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i35, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36

bb.z:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !36
  %.not.i1.i.i37 = icmp eq i8 %i.ge, 0
  br i1 %.not.i1.i.i37, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 67
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !17
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gc)
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = tail call noundef signext i8 %i.gj(ptr noundef nonnull align 8 dereferenceable(570) %i.gc, i8 noundef signext 10), !inline_history !62
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i38 = phi i8 [ %i.gg, %bb.aa ], [ %i.gk, %bb.ab ]
  %i.gl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i38)
  %i.gm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gl) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39, %.critedge
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !55
  tail call void @_ZN5Hydro16writeEnergyCheckEv(ptr noundef nonnull align 8 dereferenceable(408) %i.gn)
  %i.go = load ptr, ptr %0, align 8, !tbaa !54
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gq = load i32, ptr %i.b, align 8, !tbaa !57
  %i.gr = load double, ptr %i.a, align 8, !tbaa !56
  %i.gs = load ptr, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 304
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !66
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 320
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !83
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 352
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !84
  tail call void @_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(616) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i32 noundef %i.gq, double noundef %i.gr, ptr noundef %i.gu, ptr noundef %i.gw, ptr noundef %i.gy)
  ret void
}

declare void @_ZN5Hydro16writeEnergyCheckEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Driver12calcGlobalDtEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((120, 128)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store double %i.b, ptr %i.c, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load double, ptr %i.f, align 8, !tbaa !50
  store double %i.g, ptr %i.a, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.15, i64 noundef 22) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load double, ptr %i.n, align 8, !tbaa !51 ; 2 uses
  %i.p = load double, ptr %i.a, align 8, !tbaa !58
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  store double %i.o, ptr %i.a, align 8, !tbaa !58
  %i.r = load i64, ptr %i.h, align 8, !tbaa !15
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.16, i64 noundef 16) ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load double, ptr %i.t, align 8, !tbaa !52
  %i.v = load double, ptr %i.c, align 8, !tbaa !85
  %i.w = fmul double %i.u, %i.v                   ; 2 uses
  %i.x = load double, ptr %i.a, align 8, !tbaa !58
  %i.y = fcmp olt double %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  store double %i.w, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !15, !noalias !86 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !8, !alias.scope !86
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !12, !noalias !86 ; 3 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 8) ; 5 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 1 %i.ac, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %spec.select.i.i.i, ptr %i.ae, align 8, !tbaa !15, !alias.scope !86
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %spec.select.i.i.i
  store i8 0, ptr %i.af, align 1, !tbaa !17
  %i.ag = icmp ugt i64 %i.aa, 7
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread12: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.ab, ptr nonnull @.str.17, i64 %spec.select.i.i.i)
  %i.ah = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %bb.q

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !8, !alias.scope !89
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !15, !alias.scope !89
  store i8 0, ptr %i.ai, align 8, !tbaa !17, !alias.scope !89
  %i.ak = add i64 %i.aa, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ak)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !15, !alias.scope !89
  %i.am = add i64 %i.al, -4611686018427387894
  %i.an = icmp ult i64 %i.am, 10
  br i1 %i.an, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.18, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !15, !alias.scope !89
  %i.aq = sub i64 4611686018427387903, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.aa
  br i1 %i.ar, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #16
          to label %.cont.i.i unwind label %bb.k

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ac, i64 noundef %i.aa)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !tbaa !12, !alias.scope !89 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ai
  br i1 %i.av, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !17, !alias.scope !89
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #17
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.at

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !12  ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  %i.bb = load ptr, ptr %2, align 8, !tbaa !12    ; 6 uses
  %i.bc = icmp eq ptr %i.bb, %i.ai                ; 2 uses
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.bc, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.bc, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bd = load i64, ptr %i.aj, align 8, !tbaa !15 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %.not21.i = icmp eq ptr %2, %i.d
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %3, !prof !94

3:                                                ; preds = %bb.l
  switch i64 %i.bd, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %3
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !17
  store i8 %i.bf, ptr %i.ay, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.bb, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %3
  %i.bg = load i64, ptr %i.aj, align 8, !tbaa !15 ; 2 uses
  store i64 %i.bg, ptr %i.h, align 8, !tbaa !15
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !17
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !12
  %i.bj = load <2 x i64>, ptr %i.aj, align 8, !tbaa !17
  store <2 x i64> %i.bj, ptr %i.h, align 8, !tbaa !17
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bk = load i64, ptr %i.az, align 8, !tbaa !17
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !12
  %i.bl = load <2 x i64>, ptr %i.aj, align 8, !tbaa !17
  store <2 x i64> %i.bl, ptr %i.h, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ay, ptr %2, align 8, !tbaa !12
  store i64 %i.bk, ptr %i.ai, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ai, ptr %2, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %4 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ay, %bb.o ], [ %i.ai, %bb.p ], [ %i.bb, %bb.l ]
  store i64 0, ptr %i.aj, align 8, !tbaa !15
  store i8 0, ptr %4, align 1, !tbaa !17
  %i.bm = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ai
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bo = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.h, %bb.b, %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load double, ptr %i.bq, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !56
  %i.bu = fsub double %i.br, %i.bt                ; 2 uses
  %i.bv = load double, ptr %i.a, align 8, !tbaa !58
  %i.bw = fcmp olt double %i.bu, %i.bv
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.bu, ptr %i.a, align 8, !tbaa !58
  %i.bx = load i64, ptr %i.h, align 8, !tbaa !15
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.bx, ptr noundef nonnull @.str.19, i64 noundef 21) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !55
  call void @_ZN5Hydro10getDtHydroERdRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(408) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  ret void
}

declare void @_ZN5Hydro7doCycleEd(ptr noundef nonnull align 8 dereferenceable(408), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(616), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5Hydro10getDtHydroERdRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !10, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !14, i64 8, !6, i64 16}
!14 = !{!"long", !6, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!14, !14, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !7, i64 0}
!20 = !{!21, !33, i64 240}
!21 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0, !30, i64 216, !6, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!22 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !26, i64 48, !6, i64 64, !5, i64 192, !27, i64 200, !28, i64 208}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !14, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!30 = !{!"p1 _ZTSSo", !11, i64 0}
!31 = !{!"bool", !6, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!36 = !{!37, !6, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!40 = !{!"p1 int", !11, i64 0}
!41 = !{!"p1 short", !11, i64 0}
!42 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!43 = !{!44, !5, i64 72}
!44 = !{!"_ZTS6Driver", !45, i64 0, !46, i64 8, !13, i64 16, !47, i64 48, !5, i64 56, !47, i64 64, !5, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !5, i64 104, !47, i64 112, !47, i64 120, !13, i64 128, !13, i64 160}
!45 = !{!"p1 _ZTS4Mesh", !11, i64 0}
!46 = !{!"p1 _ZTS5Hydro", !11, i64 0}
!47 = !{!"double", !6, i64 0}
!48 = !{!44, !47, i64 64}
!49 = distinct !{null}
!50 = !{!44, !47, i64 80}
!51 = !{!44, !47, i64 88}
!52 = !{!44, !47, i64 96}
!53 = !{!44, !5, i64 104}
!54 = !{!44, !45, i64 0}
!55 = !{!44, !46, i64 8}
!56 = !{!44, !47, i64 48}
!57 = !{!44, !5, i64 56}
!58 = !{!44, !47, i64 112}
!59 = !{!22, !23, i64 24}
!60 = !{!23, !23, i64 0}
!61 = !{!22, !14, i64 8}
!62 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!22, !14, i64 16}
!66 = !{!67, !81, i64 304}
!67 = !{!"_ZTS5Hydro", !45, i64 0, !68, i64 8, !69, i64 16, !70, i64 24, !71, i64 32, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !77, i64 112, !77, i64 136, !47, i64 160, !6, i64 168, !82, i64 248, !82, i64 256, !82, i64 264, !82, i64 272, !81, i64 280, !81, i64 288, !81, i64 296, !81, i64 304, !81, i64 312, !81, i64 320, !81, i64 328, !81, i64 336, !81, i64 344, !81, i64 352, !81, i64 360, !81, i64 368, !82, i64 376, !82, i64 384, !82, i64 392, !82, i64 400}
!68 = !{!"p1 _ZTS7PolyGas", !11, i64 0}
!69 = !{!"p1 _ZTS3TTS", !11, i64 0}
!70 = !{!"p1 _ZTS3QCS", !11, i64 0}
!71 = !{!"_ZTSSt6vectorIP7HydroBCSaIS1_EE", !72, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIP7HydroBCSaIS1_EE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE12_Vector_implE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"p2 _ZTS7HydroBC", !76, i64 0}
!76 = !{!"any p2 pointer", !11, i64 0}
!77 = !{!"_ZTSSt6vectorIdSaIdEE", !78, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!81 = !{!"p1 double", !11, i64 0}
!82 = !{!"p1 _ZTS7double2", !11, i64 0}
!83 = !{!67, !81, i64 320}
!84 = !{!67, !81, i64 352}
!85 = !{!44, !47, i64 120}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!88 = distinct !{!88, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!89 = !{!90, !92}
!90 = distinct !{!90, !91, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!91 = distinct !{!91, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!92 = distinct !{!92, !93, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!93 = distinct !{!93, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!94 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
