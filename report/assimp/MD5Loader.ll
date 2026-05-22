inline.NumInlined: 998
inline.NumDeleted: 517
begin_hunk_0_@_ZN6Assimp11MD5Importer17LoadMD5CameraFileEv:bb.a

bb.x:                                             ; preds = %._crit_edge.i.i106
  %i.cy = load ptr, ptr %i.ct, align 8
  store ptr %i.cu, ptr %i.cy, align 8
  %i.cz = load ptr, ptr %6, align 8               ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cv
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.x
  %i.db = load i64, ptr %i.cv, align 8
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.dd = load ptr, ptr %i.ct, align 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1096
  store ptr %i.cg, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.ck, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store i32 1, ptr %i.dh, align 8
  %i.di = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #27
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.dj = load ptr, ptr %i.ck, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  store ptr %i.di, ptr %i.dk, align 8
  %i.dl = invoke noalias noundef nonnull dereferenceable(1084) ptr @_Znwm(i64 noundef 1084) #27
          to label %bb.z unwind label %bb.al      ; 9 uses

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1044
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %i.dn, i8 0, i64 1028, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1060
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 1064
  store <4 x float> <float 1.000000e+00, float f0x3F490FDB, float 1.000000e-01, float 1.000000e+03>, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 1076
  store <2 x float> zeroinitializer, ptr %i.dq, align 4
  %i.dr = load ptr, ptr %i.ck, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 104
  %i.dt = load ptr, ptr %i.ds, align 8
  store ptr %i.dl, ptr %i.dt, align 8
  store i32 11, ptr %i.dl, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.du, ptr noundef nonnull align 1 dereferenceable(11) @.str.29, i64 11, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 15
  store i8 0, ptr %i.dv, align 1
  %i.dw = load ptr, ptr %i.bv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = fmul float %i.dy, f0x3C8EFA35
  store float %i.dz, ptr %i.dp, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.eb = load ptr, ptr %i.ea, align 8            ; 5 uses
  %i.ec = load ptr, ptr %i.cf, align 8            ; 4 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = ashr exact i64 %i.ef, 2
  %.not78 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not78, label %bb.aa, label %bb.ao

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %.not.i.i = icmp eq ptr %i.eb, %i.ei
  br i1 %.not.i.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.eb, align 4
  %i.ej = load ptr, ptr %i.ea, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  store ptr %i.ek, ptr %i.ea, align 8
  %.pre = load ptr, ptr %i.eh, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.el = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #27
          to label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i unwind label %bb.am ; 3 uses

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  store i32 0, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #24
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.en, ptr %i.cf, align 8
  store ptr %i.ep, ptr %i.ea, align 8
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el ; 2 uses
  store ptr %i.eq, ptr %i.eh, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.ab
  %i.er = phi ptr [ %i.eq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.pre, %bb.ab ] ; 2 uses
  %i.es = phi ptr [ %i.ep, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.ek, %bb.ab ] ; 2 uses
  %i.et = load ptr, ptr %i.bx, align 8
  %i.eu = load ptr, ptr %i.bv, align 8
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = sdiv exact i64 %i.ex, 28
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = add i32 %i.ez, -1                       ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.es, %i.er
  br i1 %.not.i.i116, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 %i.fa, ptr %i.es, align 4
  %i.fb = load ptr, ptr %i.ea, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  store ptr %i.fc, ptr %i.ea, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.fd = load ptr, ptr %i.cf, align 8            ; 4 uses
  %i.fe = ptrtoint ptr %i.er to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 6 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775804
  br i1 %i.fh, label %bb.af, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i117

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc123 unwind label %bb.an

.noexc123:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i117: ; preds = %bb.ae
  %i.fi = ashr exact i64 %i.fg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i118 = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i118, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 2305843009213693951)
  %i.fm = select i1 %i.fk, i64 2305843009213693951, i64 %i.fl ; 3 uses
  %.not.i.i.i.i119 = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i119)
  %i.fn = shl nuw nsw i64 %i.fm, 2
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #27
          to label %.noexc124 unwind label %bb.an ; 4 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i117
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fg ; 2 uses
  store i32 %i.fa, ptr %i.fp, align 4
  %i.fq = icmp sgt i64 %i.fg, 0
  br i1 %i.fq, label %bb.ag, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120

bb.ag:                                            ; preds = %.noexc124
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fo, ptr align 4 %i.fd, i64 %i.fg, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120: ; preds = %bb.ag, %.noexc124
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %.not.i17.i.i.i121 = icmp eq ptr %i.fd, null
  br i1 %.not.i17.i.i.i121, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i122, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fg) #24
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i122

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i122: ; preds = %bb.ah, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120
  store ptr %i.fo, ptr %i.cf, align 8
  store ptr %i.fr, ptr %i.ea, align 8
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.fs, ptr %i.eh, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.u
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.aj:                                            ; preds = %._crit_edge.i.i99
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %5, align 8               ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.ch
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.aj
  %i.fx = load i64, ptr %i.ch, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.sink.split

bb.ak:                                            ; preds = %._crit_edge.i.i106
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %6, align 8               ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.cv
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.ak
  %i.gc = load i64, ptr %i.cv, align 8
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.sink.split

bb.al:                                            ; preds = %bb.y
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.am:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.an:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i117, %bb.af
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ao:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.gh = invoke ptr @_ZNSt6vectorIjSaIjEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr %i.ec, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj.exit unwind label %bb.av ; 0 uses

_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj.exit: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.gi = load ptr, ptr %i.ea, align 8            ; 5 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -4
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = zext i32 %i.gk to i64
  %i.gm = load ptr, ptr %i.bx, align 8
  %i.gn = load ptr, ptr %i.bv, align 8
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = sdiv exact i64 %i.gq, 28                ; 2 uses
  %i.gs = add nsw i64 %i.gr, -1
  %i.gt = icmp ugt i64 %i.gs, %i.gl
  br i1 %i.gt, label %bb.ap, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125

bb.ap:                                            ; preds = %_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj.exit
  %i.gu = trunc i64 %i.gr to i32
  %i.gv = add i32 %i.gu, -1                       ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8
  %.not.i.i133 = icmp eq ptr %i.gi, %i.gx
  br i1 %.not.i.i133, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.gv, ptr %i.gi, align 4
  %i.gy = load ptr, ptr %i.ea, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  store ptr %i.gz, ptr %i.ea, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125

bb.ar:                                            ; preds = %bb.ap
  %i.ha = load ptr, ptr %i.cf, align 8            ; 4 uses
  %i.hb = ptrtoint ptr %i.gi to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 6 uses
  %i.he = icmp eq i64 %i.hd, 9223372036854775804
  br i1 %i.he, label %bb.as, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i134

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc140 unwind label %bb.aw

.noexc140:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i134: ; preds = %bb.ar
  %i.hf = ashr exact i64 %i.hd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i135 = call i64 @llvm.umax.i64(i64 %i.hf, i64 1)
  %i.hg = add nsw i64 %.sroa.speculated.i.i.i.i135, %i.hf ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.hf
  %i.hi = call i64 @llvm.umin.i64(i64 %i.hg, i64 2305843009213693951)
  %i.hj = select i1 %i.hh, i64 2305843009213693951, i64 %i.hi ; 3 uses
  %.not.i.i.i.i136 = icmp ne i64 %i.hj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i136)
  %i.hk = shl nuw nsw i64 %i.hj, 2
  %i.hl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #27
          to label %.noexc141 unwind label %bb.aw ; 4 uses

.noexc141:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i134
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 %i.hd ; 2 uses
  store i32 %i.gv, ptr %i.hm, align 4
  %i.hn = icmp sgt i64 %i.hd, 0
  br i1 %i.hn, label %bb.at, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i137

bb.at:                                            ; preds = %.noexc141
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hl, ptr align 4 %i.ha, i64 %i.hd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i137

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i137: ; preds = %bb.at, %.noexc141
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 4 ; 2 uses
  %.not.i17.i.i.i138 = icmp eq ptr %i.ha, null
  br i1 %.not.i17.i.i.i138, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i139, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i137
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hd) #24
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i139

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i139: ; preds = %bb.au, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i137
  store ptr %i.hl, ptr %i.cf, align 8
  store ptr %i.ho, ptr %i.ea, align 8
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hj
  store ptr %i.hp, ptr %i.gw, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125

bb.av:                                            ; preds = %bb.ao
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.bo

bb.aw:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i134, %bb.as
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZNSt6vectorIjSaIjEE9push_backEOj.exit125:        ; preds = %bb.aq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i139, %bb.ad, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i122, %_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj.exit
  %i.hs = phi ptr [ %i.gz, %bb.aq ], [ %i.ho, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i139 ], [ %i.fc, %bb.ad ], [ %i.fr, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i122 ], [ %i.gi, %_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj.exit ] ; 2 uses
  %i.ht = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = lshr exact i64 %i.hw, 2
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = add i32 %i.hy, -1
  %i.ia = load ptr, ptr %i.ck, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  store i32 %i.hz, ptr %i.ib, align 8
  %i.ic = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ie = load i32, ptr %i.id, align 8
  %i.if = zext i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 3
  %i.ih = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ig) #27
          to label %bb.ax unwind label %bb.bc     ; 2 uses

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
  store ptr %i.ih, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %.not192196 = icmp eq ptr %i.ht, %i.ij
  br i1 %.not192196, label %._crit_edge, label %.lr.ph199

.loopexit:                                        ; preds = %bb.bn, %.loopexit193.thread
  %i.ik = load ptr, ptr %i.ea, align 8
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -4
  %.not192 = icmp eq ptr %i.lb, %i.il
  br i1 %.not192, label %._crit_edge, label %.lr.ph199, !llvm.loop !16

._crit_edge:                                      ; preds = %.loopexit, %bb.ax
  %i.im = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i143, label %_ZNSt6vectorIN6Assimp3MD519CameraAnimFrameDescESaIS2_EED2Ev.exit.i, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ir) #24
  br label %_ZNSt6vectorIN6Assimp3MD519CameraAnimFrameDescESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp3MD519CameraAnimFrameDescESaIS2_EED2Ev.exit.i: ; preds = %bb.ay, %._crit_edge
  %i.is = load ptr, ptr %i.cf, align 8            ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3MD515MD5CameraParserD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN6Assimp3MD519CameraAnimFrameDescESaIS2_EED2Ev.exit.i
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.ix) #24
  br label %_ZN6Assimp3MD515MD5CameraParserD2Ev.exit

_ZN6Assimp3MD515MD5CameraParserD2Ev.exit:         ; preds = %_ZNSt6vectorIN6Assimp3MD519CameraAnimFrameDescESaIS2_EED2Ev.exit.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.iy = load ptr, ptr %3, align 8               ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.iy, %i.ja
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6Assimp3MD515MD5CameraParserD2Ev.exit, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ju, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i ], [ %i.iy, %_ZN6Assimp3MD515MD5CameraParserD2Ev.exit ] ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.jc = load ptr, ptr %i.jb, align 8            ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jf = load i64, ptr %i.jd, align 8
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MD5Importer17LoadMD5CameraFileEv:bb.a
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lh, i64 1040
  store i32 %i.lq, ptr %i.lr, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 1028 ; 2 uses
  store i32 %i.lq, ptr %i.ls, align 4
  %i.lt = zext i32 %i.lq to i64                   ; 6 uses
  %i.lu = mul nuw nsw i64 %i.lt, 24
  %i.lv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lu) #27
          to label %bb.bf unwind label %bb.bl     ; 3 uses

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.lw = icmp eq i32 %i.lo, %i.lp
  br i1 %i.lw, label %.loopexit194, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %i.lt
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %i.ly = phi ptr [ %i.lv, %bb.bg ], [ %i.ma, %bb.bh ] ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ly, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 24 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.lx
  br i1 %i.mb, label %.loopexit194, label %bb.bh

.loopexit194:                                     ; preds = %bb.bh, %bb.bf
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lh, i64 1032 ; 3 uses
  store ptr %i.lv, ptr %i.mc, align 8
  %i.md = shl nuw nsw i64 %i.lt, 5
  %i.me = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.md) #27
          to label %bb.bi unwind label %bb.bl     ; 5 uses

bb.bi:                                            ; preds = %.loopexit194
  %i.mf = icmp eq i32 %i.lo, %i.lp
  br i1 %i.mf, label %.loopexit193.thread, label %bb.bj

.loopexit193.thread:                              ; preds = %bb.bi
  store ptr %i.me, ptr %i.li, align 8
  br label %.loopexit

bb.bj:                                            ; preds = %bb.bi
  %i.mg = getelementptr inbounds nuw [32 x i8], ptr %i.me, i64 %i.lt
  %i.mh = add nuw nsw i64 %i.lt, 576460752303423487
  %i.mi = and i64 %i.mh, 576460752303423487
  %xtraiter = and i64 %i.lt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bj, %.prol.preheader
  %i.mj = phi ptr [ %i.mm, %.prol.preheader ], [ %i.me, %bb.bj ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.bj ]
  store double 0.000000e+00, ptr %i.mj, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  store i32 1, ptr %i.ml, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bj
  %.unr = phi ptr [ %i.me, %bb.bj ], [ %i.mm, %.prol.preheader ]
  %i.mn = icmp samesign ult i64 %i.mi, 7
  br i1 %i.mn, label %.lr.ph.preheader, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.mo = phi ptr [ %i.nm, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  store i32 1, ptr %i.mq, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  store double 0.000000e+00, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ms, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 56
  store i32 1, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 64
  store double 0.000000e+00, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mo, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 88
  store i32 1, ptr %i.mw, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mo, i64 96
  store double 0.000000e+00, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.my, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mo, i64 120
  store i32 1, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mo, i64 128
  store double 0.000000e+00, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mo, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mo, i64 152
  store i32 1, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mo, i64 160
  store double 0.000000e+00, ptr %i.nd, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mo, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ne, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mo, i64 184
  store i32 1, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mo, i64 192
  store double 0.000000e+00, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mo, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.nh, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mo, i64 216
  store i32 1, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mo, i64 224
  store double 0.000000e+00, ptr %i.nj, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mo, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mo, i64 248
  store i32 1, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mo, i64 256 ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.mg
  br i1 %i.nn, label %.lr.ph.preheader, label %.new

.lr.ph.preheader:                                 ; preds = %.new, %.prol.loopexit
  store ptr %i.me, ptr %i.li, align 8
  br label %.lr.ph

bb.bk:                                            ; preds = %bb.bd, %.lr.ph199
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bl:                                            ; preds = %.loopexit194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %bb.be
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bn
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bn ] ; 6 uses
  %i.nq = load i32, ptr %.sroa.0166.0197, align 4
  %i.nr = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.ns = add i32 %i.nq, %i.nr
  %i.nt = zext i32 %i.ns to i64
  %i.nu = load ptr, ptr %i.bv, align 8
  %i.nv = getelementptr inbounds nuw [28 x i8], ptr %i.nu, i64 %i.nt
  %i.nw = load ptr, ptr %i.mc, align 8
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %i.nw, i64 %indvars.iv
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ny, ptr noundef nonnull align 4 dereferenceable(12) %i.nv, i64 12, i1 false)
  %i.nz = load i32, ptr %.sroa.0166.0197, align 4
  %i.oa = add i32 %i.nz, %i.nr
  %i.ob = zext i32 %i.oa to i64
  %i.oc = load ptr, ptr %i.bv, align 8
  %i.od = getelementptr inbounds nuw [28 x i8], ptr %i.oc, i64 %i.ob ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 12 ; 2 uses
  %i.of = load ptr, ptr %i.li, align 8
  %i.og = getelementptr inbounds nuw [32 x i8], ptr %i.of, i64 %indvars.iv ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load float, ptr %i.oe, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  store float %i.oi, ptr %i.oj, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store float %i.ol, ptr %i.om, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 20
  %i.oo = load float, ptr %i.on, align 4          ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 20
  store float %i.oo, ptr %i.op, align 4
  %i.oq = load float, ptr %i.oe, align 4          ; 2 uses
  %i.or = fneg float %i.oq
  %i.os = call float @llvm.fmuladd.f32(float %i.or, float %i.oq, float 1.000000e+00)
  %i.ot = load float, ptr %i.ok, align 4          ; 2 uses
  %i.ou = fneg float %i.ot
  %i.ov = call float @llvm.fmuladd.f32(float %i.ou, float %i.ot, float %i.os)
  %i.ow = fneg float %i.oo
  %i.ox = call float @llvm.fmuladd.f32(float %i.ow, float %i.oo, float %i.ov) ; 2 uses
  %i.oy = fcmp olt float %i.ox, 0.000000e+00
  br i1 %i.oy, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph
  %i.oz = call noundef float @sqrtf(float noundef %i.ox) #23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph
  %storemerge.i = phi float [ %i.oz, %bb.bm ], [ 0.000000e+00, %.lr.ph ]
  %i.pa = fneg float %storemerge.i
  store float %i.pa, ptr %i.oh, align 4
  %i.pb = load i32, ptr %.sroa.0166.0197, align 4
  %i.pc = add i32 %i.pb, %i.nr
  %i.pd = uitofp i32 %i.pc to double              ; 2 uses
  %i.pe = load ptr, ptr %i.mc, align 8
  %i.pf = getelementptr inbounds nuw [24 x i8], ptr %i.pe, i64 %indvars.iv
  store double %i.pd, ptr %i.pf, align 8
  %i.pg = load ptr, ptr %i.li, align 8
  %i.ph = getelementptr inbounds nuw [32 x i8], ptr %i.pg, i64 %indvars.iv
  store double %i.pd, ptr %i.ph, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pi = load i32, ptr %i.ls, align 4
  %i.pj = zext i32 %i.pi to i64
  %i.pk = icmp samesign ult i64 %indvars.iv.next, %i.pj
  br i1 %i.pk, label %.lr.ph, label %.loopexit, !llvm.loop !22

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ]
  %.pn85.ph = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 1144) #24
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split, %bb.bk, %bb.bl, %bb.ai, %bb.bc, %bb.aw, %bb.av, %bb.an, %bb.am, %bb.al, %bb.t, %bb.s
  %.pn85 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.cd, %bb.s ], [ %i.no, %bb.bk ], [ %i.ft, %bb.ai ], [ %i.np, %bb.bl ], [ %i.ge, %bb.al ], [ %i.hr, %bb.aw ], [ %i.hq, %bb.av ], [ %i.gg, %bb.an ], [ %i.gf, %bb.am ], [ %i.ki, %bb.bc ], [ %.pn85.ph, %.sink.split ]
  call void @_ZN6Assimp3MD515MD5CameraParserD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.r
  %.pn85.pn = phi { ptr, i32 } [ %.pn85, %bb.bo ], [ %i.cc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #23
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.q
  %.pn85.pn.pn = phi { ptr, i32 } [ %.pn85.pn, %bb.bp ], [ %i.cb, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.j, %bb.i
  %.pn85.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn, %bb.bq ], [ %i.at, %bb.i ], [ %i.au, %bb.j ] ; 2 uses
  br i1 %.not191, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit156, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i155

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i155: ; preds = %bb.br
  %i.pl = load ptr, ptr %i.ae, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #23, !inline_history !19
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit156

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit156: ; preds = %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i155, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn85.pn.pn.pn, %bb.br ], [ %.pn85.pn.pn.pn, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i155 ]
  %i.po = load ptr, ptr %1, align 8               ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.f
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit156
  %i.pq = load i64, ptr %i.f, align 8
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume

bb.bs:                                            ; preds = %bb.p, %bb.g
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #23
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD5Importer15LoadMD5AnimFileEv(ptr noundef nonnull align 8 captures(none) dereferenceable(140) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.Assimp::MD5::MD5Parser", align 8 ; 10 uses
  %4 = alloca %"class.Assimp::MD5::MD5AnimParser", align 8 ; 18 uses
  %5 = alloca %struct.aiString, align 4           ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.Assimp::SkeletonMeshBuilder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.b = load ptr, ptr %i.a, align 8, !noalias !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !noalias !23 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.e, ptr %1, align 8, !alias.scope !26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !26
  store i8 0, ptr %i.e, align 8, !alias.scope !26
  %i.g = add i64 %i.d, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !26
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.d
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !alias.scope !26
  %i.m = add i64 %i.l, -4611686018427387897
  %i.n = icmp ult i64 %i.m, 7
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #25
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !alias.scope !26 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !26
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %common.resume.op = phi { ptr, i32 } [ %.pn78.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.w, ptr %2, align 8
  store i16 25202, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %i.y, align 2
  %i.z = load ptr, ptr %1, align 8
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.z, ptr noundef nonnull %i.w)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.h, !inline_history !14 ; 11 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.w
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.ag = load i64, ptr %i.w, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #24
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MD5Importer15LoadMD5MeshFileEv:bb.a
bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #24
  br label %_ZN6Assimp11MD5Importer20UnloadFileFromMemoryEv.exit.i

_ZN6Assimp11MD5Importer20UnloadFileFromMemoryEv.exit.i: ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store i32 0, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.ae, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.noexc249 unwind label %bb.i, !inline_history !15 ; 3 uses

.noexc249:                                        ; preds = %_ZN6Assimp11MD5Importer20UnloadFileFromMemoryEv.exit.i
  %i.bd = trunc i64 %i.bc to i32
  store i32 %i.bd, ptr %i.ay, align 8
  %i.be = add i64 %i.bc, 1
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bf) #27
          to label %.noexc250 unwind label %bb.i  ; 2 uses

.noexc250:                                        ; preds = %.noexc249
  store ptr %i.bg, ptr %i.av, align 8
  %i.bh = and i64 %i.bc, 4294967295
  %i.bi = load ptr, ptr %i.ae, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef i64 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.bg, i64 noundef 1, i64 noundef %i.bh)
          to label %.noexc251 unwind label %bb.i, !inline_history !15 ; 0 uses

.noexc251:                                        ; preds = %.noexc250
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 1, ptr %i.bm, align 4
  %i.bn = load ptr, ptr %i.av, align 8
  %i.bo = load i32, ptr %i.ay, align 8
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  store i8 0, ptr %i.bq, align 1
  %i.br = load ptr, ptr %i.av, align 8
  invoke void @_ZN6Assimp14CommentRemover18RemoveLineCommentsEPKcPcc(ptr noundef nonnull @.str.7, ptr noundef %i.br, i8 noundef signext 32)
          to label %_ZN6Assimp11MD5Importer18LoadFileIntoMemoryEPNS_8IOStreamE.exit unwind label %bb.i

_ZN6Assimp11MD5Importer18LoadFileIntoMemoryEPNS_8IOStreamE.exit: ; preds = %.noexc251
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bs = load ptr, ptr %i.av, align 8
  %i.bt = load i32, ptr %i.ay, align 8
  invoke void @_ZN6Assimp3MD59MD5ParserC1EPcj(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.bs, i32 noundef %i.bt)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZN6Assimp11MD5Importer18LoadFileIntoMemoryEPNS_8IOStreamE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN6Assimp3MD513MD5MeshParserC1ERSt6vectorINS0_7SectionESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bu = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %._crit_edge.i.i253 unwind label %bb.u ; 3 uses

._crit_edge.i.i253:                               ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bv, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bv, ptr noundef nonnull align 1 dereferenceable(10) @.str.11, i64 10, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.bx, align 2
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %._crit_edge.i.i253
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 12 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.bu, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %5, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bv
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %bb.n
  %i.cd = load i64, ptr %i.bv, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cf = load ptr, ptr %i.by, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1104
  store i32 2, ptr %i.ci, align 8
  %i.cj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #27
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %i.ck = load ptr, ptr %i.by, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1112
  store ptr %i.cj, ptr %i.cn, align 8
  %i.co = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.p unwind label %bb.w       ; 8 uses

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.co)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.p
  %i.cp = load ptr, ptr %i.by, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1112
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.co, ptr %i.cu, align 8
  store i32 15, ptr %i.co, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.cv, ptr noundef nonnull align 1 dereferenceable(15) @.str.12, i64 15, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 19
  store i8 0, ptr %i.cw, align 1
  %.pre = load ptr, ptr %i.by, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 1096
  store ptr %i.cy, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  invoke void @_ZN6Assimp11MD5Importer17AttachChilds_MeshEiP6aiNodeRSt6vectorINS_3MD58BoneDescESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef -1, ptr noundef nonnull %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.db = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.r unwind label %bb.w       ; 9 uses

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.db)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %bb.r
  %i.dc = load ptr, ptr %i.by, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1112
  %i.dg = load ptr, ptr %i.df, align 8
  store ptr %i.db, ptr %i.dg, align 8
  store i32 10, ptr %i.db, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.dh, ptr noundef nonnull align 1 dereferenceable(10) @.str.13, i64 10, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 14
  store i8 0, ptr %i.di, align 2
  %.pre483 = load ptr, ptr %i.by, align 8         ; 2 uses
  %.pre484 = load ptr, ptr %4, align 8            ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre485 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.pre483, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 1096
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not371405 = icmp eq ptr %.pre484, %.pre485
  br i1 %.not371405, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.dn = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %.1192, %bb.aa ] ; 3 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = shl nuw nsw i64 %i.do, 3                ; 2 uses
  %i.dq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dp) #27
          to label %bb.ab unwind label %bb.ae

bb.s:                                             ; preds = %_ZN6Assimp11MD5Importer18LoadFileIntoMemoryEPNS_8IOStreamE.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.t:                                             ; preds = %bb.l
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %bb.m
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.v:                                             ; preds = %._crit_edge.i.i253
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = load ptr, ptr %5, align 8               ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.bv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %bb.v
  %i.dx = load i64, ptr %i.bv, align 8
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.sink.split

bb.w:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %bb.o
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.x:                                             ; preds = %bb.p
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.y:                                             ; preds = %bb.r
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %bb.aa
  %.0191407 = phi i32 [ %.1192, %bb.aa ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 2 uses
  %.sroa.0357.0406 = phi ptr [ %i.en, %bb.aa ], [ %.pre484, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0357.0406, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0357.0406, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = icmp eq ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0357.0406, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0357.0406, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = icmp ne ptr %i.ei, %i.ek
  %i.em = zext i1 %i.el to i32
  %spec.select = add i32 %.0191407, %i.em
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph
  %.1192 = phi i32 [ %.0191407, %.lr.ph ], [ %spec.select, %bb.z ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0357.0406, i64 1104 ; 2 uses
  %.not371 = icmp eq ptr %i.en, %.pre485
  br i1 %.not371, label %._crit_edge, label %.lr.ph, !llvm.loop !39

bb.ab:                                            ; preds = %._crit_edge
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre483, i64 24
  store ptr %i.dq, ptr %i.eo, align 8
  %i.ep = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dp) #27
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.eq = load ptr, ptr %i.by, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store ptr %i.ep, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.db, i64 1120 ; 2 uses
  store i32 %i.dn, ptr %i.es, align 8
  %i.et = shl nuw nsw i64 %i.do, 2
  %i.eu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.et) #27
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %i.db, i64 1128 ; 2 uses
  store ptr %i.eu, ptr %i.ev, align 8
  %.not460 = icmp eq i32 %i.dn, 0
  br i1 %.not460, label %._crit_edge411, label %.lr.ph410

._crit_edge411.loopexit:                          ; preds = %.lr.ph410
  %.pre486 = load ptr, ptr %4, align 8
  br label %._crit_edge411

._crit_edge411:                                   ; preds = %._crit_edge411.loopexit, %bb.ad
  %i.ew = phi ptr [ %.pre486, %._crit_edge411.loopexit ], [ %.pre484, %bb.ad ] ; 2 uses
  %i.ex = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not372454 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not372454, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge411
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 9 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.lr.ph410:                                        ; preds = %bb.ad, %.lr.ph410
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph410 ], [ 0, %bb.ad ] ; 3 uses
  %i.fh = load ptr, ptr %i.ev, align 8
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv
  %i.fj = trunc nuw i64 %indvars.iv to i32
  store i32 %i.fj, ptr %i.fi, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = load i32, ptr %i.es, align 8
  %i.fl = zext i32 %i.fk to i64
  %i.fm = icmp samesign ult i64 %indvars.iv.next, %i.fl
  br i1 %i.fm, label %.lr.ph410, label %._crit_edge411.loopexit, !llvm.loop !40

._crit_edge459:                                   ; preds = %bb.ct, %._crit_edge411
  %i.fn = load ptr, ptr %i.da, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge459
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #24
  br label %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i: ; preds = %bb.af, %._crit_edge459
  %i.ft = load ptr, ptr %4, align 8
  %i.fu = load ptr, ptr %i.dm, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp3MD58MeshDescEEEvT_S6_(ptr noundef %i.ft, ptr noundef %i.fu)
          to label %_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.ah

_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i
  %i.fv = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.ga) #24
  br label %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit

bb.ah:                                            ; preds = %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #26
  unreachable

_ZN6Assimp3MD513MD5MeshParserD2Ev.exit:           ; preds = %_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.gd = load ptr, ptr %3, align 8               ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gd, %i.gf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gz, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i ], [ %i.gd, %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit ] ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gk = load i64, ptr %i.gi, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.gq = load i64, ptr %i.go, align 8
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #24
  br label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gz, %i.gf
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit
  %i.ha = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.gd, %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #24
  br label %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MD5Importer15LoadMD5MeshFileEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fc, i8 0, i64 1024, i1 false)
  %spec.select.i291 = call i32 @llvm.umin.i32(i32 %i.xi, i32 1023) ; 3 uses
  store i32 %spec.select.i291, ptr %8, align 4
  %i.xk = zext nneg i32 %spec.select.i291 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr nonnull align 4 %i.ih, i64 %i.xk, i1 false)
  %i.xl = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.xk ; 2 uses
  store i8 0, ptr %i.xl, align 1
  %i.xm = icmp ugt i32 %i.xi, 1013
  br i1 %i.xm, label %_ZN8aiString6AppendEPKc.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xn = add nuw nsw i32 %spec.select.i291, 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.xl, ptr noundef nonnull align 1 dereferenceable(11) @.str.17, i64 11, i1 false)
  store i32 %i.xn, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit

_ZN8aiString6AppendEPKc.exit:                     ; preds = %bb.ce, %bb.cf
  %i.xo = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wk, ptr noundef nonnull %8, ptr noundef nonnull @.str.18, i32 noundef 6, i32 noundef 0)
          to label %bb.cg unwind label %bb.cq     ; 0 uses

bb.cg:                                            ; preds = %_ZN8aiString6AppendEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.xp = load i32, ptr %i.ig, align 4            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fd, i8 0, i64 1024, i1 false)
  %spec.select.i293 = call i32 @llvm.umin.i32(i32 %i.xp, i32 1023) ; 4 uses
  store i32 %spec.select.i293, ptr %9, align 4
  %i.xq = zext nneg i32 %spec.select.i293 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr nonnull align 4 %i.ih, i64 %i.xq, i1 false)
  %i.xr = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.xq
  store i8 0, ptr %i.xr, align 1
  store i32 %spec.select.i293, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr nonnull align 4 %i.fd, i64 %i.xq, i1 false)
  %i.xs = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.xq ; 2 uses
  store i8 0, ptr %i.xs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.xt = icmp ugt i32 %i.xp, 1017
  br i1 %i.xt, label %_ZN8aiString6AppendEPKc.exit296, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xu = add nuw nsw i32 %spec.select.i293, 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.xs, ptr noundef nonnull align 1 dereferenceable(7) @.str.19, i64 7, i1 false)
  store i32 %i.xu, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit296

_ZN8aiString6AppendEPKc.exit296:                  ; preds = %bb.cg, %bb.ch
  %i.xv = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wk, ptr noundef nonnull %8, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 0)
          to label %bb.ci unwind label %bb.cq     ; 0 uses

bb.ci:                                            ; preds = %_ZN8aiString6AppendEPKc.exit296
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.xw = load i32, ptr %i.ig, align 4            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fe, i8 0, i64 1024, i1 false)
  %spec.select.i297 = call i32 @llvm.umin.i32(i32 %i.xw, i32 1023) ; 4 uses
  store i32 %spec.select.i297, ptr %10, align 4
  %i.xx = zext nneg i32 %spec.select.i297 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fe, ptr nonnull align 4 %i.ih, i64 %i.xx, i1 false)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.xx
  store i8 0, ptr %i.xy, align 1
  store i32 %spec.select.i297, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr nonnull align 4 %i.fe, i64 %i.xx, i1 false)
  %i.xz = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.xx ; 2 uses
  store i8 0, ptr %i.xz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.ya = icmp ugt i32 %i.xw, 1017
  br i1 %i.ya, label %_ZN8aiString6AppendEPKc.exit300, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.yb = add nuw nsw i32 %spec.select.i297, 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.xz, ptr noundef nonnull align 1 dereferenceable(7) @.str.20, i64 7, i1 false)
  store i32 %i.yb, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit300

_ZN8aiString6AppendEPKc.exit300:                  ; preds = %bb.ci, %bb.cj
  %i.yc = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wk, ptr noundef nonnull %8, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 0)
          to label %bb.ck unwind label %bb.cq     ; 0 uses

bb.ck:                                            ; preds = %_ZN8aiString6AppendEPKc.exit300
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.yd = load i32, ptr %i.ig, align 4            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ff, i8 0, i64 1024, i1 false)
  %spec.select.i301 = call i32 @llvm.umin.i32(i32 %i.yd, i32 1023) ; 4 uses
  store i32 %spec.select.i301, ptr %11, align 4
  %i.ye = zext nneg i32 %spec.select.i301 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ff, ptr nonnull align 4 %i.ih, i64 %i.ye, i1 false)
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ye
  store i8 0, ptr %i.yf, align 1
  store i32 %spec.select.i301, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr nonnull align 4 %i.ff, i64 %i.ye, i1 false)
  %i.yg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ye ; 2 uses
  store i8 0, ptr %i.yg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.yh = icmp ugt i32 %i.yd, 1017
  br i1 %i.yh, label %_ZN8aiString6AppendEPKc.exit304, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yi = add nuw nsw i32 %spec.select.i301, 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.yg, ptr noundef nonnull align 1 dereferenceable(7) @.str.21, i64 7, i1 false)
  store i32 %i.yi, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit304

_ZN8aiString6AppendEPKc.exit304:                  ; preds = %bb.ck, %bb.cl
  %i.yj = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wk, ptr noundef nonnull %8, ptr noundef nonnull @.str.18, i32 noundef 5, i32 noundef 0)
          to label %bb.cm unwind label %bb.cq     ; 0 uses

bb.cm:                                            ; preds = %_ZN8aiString6AppendEPKc.exit304
  %i.yk = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wk, ptr noundef nonnull %i.ig, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0)
          to label %bb.cn unwind label %bb.cq     ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cs

bb.co:                                            ; preds = %bb.cr, %._crit_edge453
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cp:                                            ; preds = %bb.cb
  %i.ym = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wk, i64 noundef 16) #24
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cm, %_ZN8aiString6AppendEPKc.exit304, %_ZN8aiString6AppendEPKc.exit300, %_ZN8aiString6AppendEPKc.exit296, %_ZN8aiString6AppendEPKc.exit
  %i.yn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cd, %bb.cc
  %i.yo = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wk, ptr noundef nonnull %i.ig, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 0)
          to label %bb.cs unwind label %bb.co     ; 0 uses

bb.cs:                                            ; preds = %bb.cr, %bb.cn
  %i.yp = add i32 %.0194456, 1
  %i.yq = getelementptr inbounds nuw i8, ptr %i.hq, i64 232
  store i32 %.0194456, ptr %i.yq, align 8
  %i.yr = load ptr, ptr %6, align 8               ; 2 uses
  %i.ys = icmp eq ptr %i.yr, %i.ey
  br i1 %i.ys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.cs
  %i.yt = load i64, ptr %i.ey, align 8
  %i.yu = add i64 %i.yt, 1
  call void @_ZdlPvm(ptr noundef %i.yr, i64 noundef %i.yu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ak, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %.1195 = phi i32 [ %i.yp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %.0194456, %bb.al ], [ %.0194456, %bb.ak ]
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 1104 ; 2 uses
  %.not372 = icmp eq ptr %i.yv, %i.ex
  br i1 %.not372, label %._crit_edge459, label %bb.ak, !llvm.loop !53

bb.cu:                                            ; preds = %.loopexit383, %.loopexit.split-lp, %bb.bq, %bb.bv, %bb.bu, %bb.az, %bb.bn, %bb.cq, %bb.cp, %bb.co
  %.pn230.pn.pn = phi { ptr, i32 } [ %i.qv, %bb.bv ], [ %i.kz, %bb.az ], [ %i.ym, %bb.cp ], [ %i.pa, %bb.bn ], [ %i.qu, %bb.bu ], [ %i.yl, %bb.co ], [ %i.yn, %bb.cq ], [ %i.ql, %bb.bq ], [ %lpad.loopexit, %.loopexit383 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.yw = load ptr, ptr %6, align 8               ; 2 uses
  %i.yx = icmp eq ptr %i.yw, %i.ey
  br i1 %i.yx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.cu
  %i.yy = load i64, ptr %i.ey, align 8
  %i.yz = add i64 %i.yy, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.yz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308, %bb.ax
  %.pn230.pn.pn.pn = phi { ptr, i32 } [ %i.km, %bb.ax ], [ %.pn230.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308 ], [ %.pn230.pn.pn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cw

bb.cv:                                            ; preds = %bb.g, %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i: ; preds = %bb.cv
  %i.za = load ptr, ptr %i.ae, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8
  call void %i.zc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #23, !inline_history !19
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cv, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i
  %i.zd = load ptr, ptr %1, align 8               ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.f
  br i1 %i.ze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit
  %i.zf = load i64, ptr %i.f, align 8
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %bb.y, %bb.x
  %.sink = phi ptr [ %i.co, %bb.x ], [ %i.db, %bb.y ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ]
  %.pn230.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ea, %bb.x ], [ %i.eb, %bb.y ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 1144) #24
  br label %bb.cw

bb.cw:                                            ; preds = %.sink.split, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %bb.w, %bb.ae, %bb.u
  %.pn230.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.w ], [ %i.dt, %bb.u ], [ %i.kl, %bb.aw ], [ %.pn230.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310 ], [ %i.fg, %bb.ae ], [ %.pn230.pn.pn.pn.pn.pn.pn.pn.ph, %.sink.split ]
  call void @_ZN6Assimp3MD513MD5MeshParserD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.t
  %.pn230.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn.pn.pn, %bb.cw ], [ %i.ds, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #23
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.s
  %.pn230.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cx ], [ %i.dr, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.i
  %.pn242 = phi { ptr, i32 } [ %i.at, %bb.i ], [ %.pn230.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cy ] ; 2 uses
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit317, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i316

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i316: ; preds = %bb.cz
  %i.zh = load ptr, ptr %i.ae, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.zj = load ptr, ptr %i.zi, align 8
  call void %i.zj(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #23, !inline_history !19
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit317

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit317: ; preds = %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i316, %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %.pn242.pn = phi { ptr, i32 } [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %.pn242, %bb.cz ], [ %.pn242, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i316 ]
  %i.zk = load ptr, ptr %1, align 8               ; 2 uses
  %i.zl = icmp eq ptr %i.zk, %i.f
  br i1 %i.zl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit317
  %i.zm = load i64, ptr %i.f, align 8
  %i.zn = add i64 %i.zm, 1
  call void @_ZdlPvm(ptr noundef %i.zk, i64 noundef %i.zn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume

bb.da:                                            ; preds = %bb.bt
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp11MD5Importer20UnloadFileFromMemoryEv(ptr noundef nonnull align 8 captures(none) dereferenceable(140) initializes((120, 124)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.d, align 8
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD5Importer18LoadFileIntoMemoryEPNS_8IOStreamE(ptr noundef nonnull align 8 captures(none) dereferenceable(140) initializes((120, 128)) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6Assimp11MD5Importer20UnloadFileFromMemoryEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  br label %_ZN6Assimp11MD5Importer20UnloadFileFromMemoryEv.exit

_ZN6Assimp11MD5Importer20UnloadFileFromMemoryEv.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i32 0, ptr %i.d, align 8
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %i.d, align 8
  %i.j = add i64 %i.h, 1
  %i.k = and i64 %i.j, 4294967295
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #27 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8
  %i.m = and i64 %i.h, 4294967295
  %i.n = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.l, i64 noundef 1, i64 noundef %i.m) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 1, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i32, ptr %i.d, align 8
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  store i8 0, ptr %i.v, align 1
  %i.w = load ptr, ptr %i.a, align 8
  tail call void @_ZN6Assimp14CommentRemover18RemoveLineCommentsEPKcPcc(ptr noundef nonnull @.str.7, ptr noundef %i.w, i8 noundef signext 32)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

declare void @_ZN6Assimp14CommentRemover18RemoveLineCommentsEPKcPcc(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD5Importer14MakeDataUniqueERNS_3MD58MeshDescE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1100) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.i = add nsw i64 %i.h, 63                     ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 2305843009213693944
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #27 ; 3 uses
  %i.m = lshr i64 %i.i, 6                         ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.idx.i = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.066.0 = phi ptr [ null, %bb.a ], [ %i.l, %.noexc ] ; 7 uses
  %.sroa.1571.0 = phi ptr [ null, %bb.a ], [ %i.n, %.noexc ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 4
  %i.w = trunc i64 %i.v to i32
  %i.x = mul i32 %i.w, 3                          ; 2 uses
  %i.y = trunc i64 %i.h to i32                    ; 2 uses
  %i.z = zext i32 %i.x to i64                     ; 4 uses
  %i.aa = icmp ult i64 %i.h, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ab = sub nuw nsw i64 %i.z, %i.h
  invoke void @_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ab)
          to label %_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EE6resizeEm.exit unwind label %bb.f

bb.c:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ac = icmp ugt i64 %i.h, %i.z
  br i1 %i.ac, label %bb.d, label %_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.z ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.c, %i.ad
  br i1 %.not.i.i45, label %_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp3MD510VertexDescES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3MD510VertexDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.ad, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3MD510VertexDescES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load ptr, ptr %1, align 8               ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #23
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #23
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #23
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !78
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !78
  store i8 0, ptr %i.a, align 8, !alias.scope !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !78 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !78 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !78 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !78 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #24
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e, %.body.sink.split
  %.pn = phi { ptr, i32 } [ %.pn.ph, %.body.sink.split ], [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp3MD58MeshDescEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp3MD58MeshDescEEvPT_.exit
  %.05 = phi ptr [ %i.ab, %_ZSt8_DestroyIN6Assimp3MD58MeshDescEEvPT_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #24
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i:        ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !79

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph
  %i.i = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i:        ; preds = %bb.c, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i
  %i.v = load ptr, ptr %.05, align 8              ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i2.i.i, label %_ZSt8_DestroyIN6Assimp3MD58MeshDescEEvPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #24
  br label %_ZSt8_DestroyIN6Assimp3MD58MeshDescEEvPT_.exit

_ZSt8_DestroyIN6Assimp3MD58MeshDescEEvPT_.exit:   ; preds = %_ZNSt6vectorIN6Assimp3MD510VertexDescESaIS2_EED2Ev.exit.i.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.05, i64 1104 ; 2 uses
  %.not = icmp eq ptr %i.ab, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN6Assimp3MD58MeshDescEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #24
  br label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i

_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !18

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.x = phi ptr [ %.pr, %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6Assimp3MD57SectionESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #24
  br label %_ZNSt12_Vector_baseIN6Assimp3MD57SectionESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6Assimp3MD57SectionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

end_hunk_4
