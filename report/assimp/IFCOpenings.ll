inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC12QuadrifyPartERK10aiVector2tIdES4_RSt3mapIS2_mNS0_8XYSorterESaISt4pairIS3_mEEERKSt6vectorIS7_IS2_S2_ESaISD_EERSC_IS2_SaIS2_EE:bb.a
  %i.cj = load ptr, ptr %i.ah, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.ah, align 8
  %.pre277 = load ptr, ptr %i.aj, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit

bb.s:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %i.cl = load ptr, ptr %4, align 8               ; 5 uses
  %i.cm = ptrtoint ptr %i.cf to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 4 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775792
  br i1 %i.cp, label %bb.t, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i96

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i96: ; preds = %bb.s
  %i.cq = ashr exact i64 %i.co, 4                 ; 3 uses
  %.sroa.speculated.i.i.i97 = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i97, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 576460752303423487)
  %i.cu = select i1 %i.cs, i64 576460752303423487, i64 %i.ct ; 3 uses
  %.not.i.i.i98 = icmp ne i64 %i.cu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i98)
  %i.cv = shl nuw nsw i64 %i.cu, 4
  %i.cw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #25 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co ; 2 uses
  %i.cy = load double, ptr %i.g, align 8
  store double %.sroa.speculated207, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store double %i.cy, ptr %i.cz, align 8
  %.not10.i.i.i.i.i99 = icmp eq ptr %i.cl, %i.cf
  br i1 %.not10.i.i.i.i.i99, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i104, label %.lr.ph.i.i.i.i.i100

.lr.ph.i.i.i.i.i100:                              ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i96, %.lr.ph.i.i.i.i.i100
  %.012.i.i.i.i.i101 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i100 ], [ %i.cw, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i96 ] ; 2 uses
  %.0911.i.i.i.i.i102 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i100 ], [ %i.cl, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i96 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i101, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i102, i64 16, i1 false), !alias.scope !14
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i102, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i101, i64 16 ; 2 uses
  %.not.i.i.i.i.i103 = icmp eq ptr %i.da, %i.cf
  br i1 %.not.i.i.i.i.i103, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i104, label %.lr.ph.i.i.i.i.i100, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i104: ; preds = %.lr.ph.i.i.i.i.i100, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i96
  %.0.lcssa.i.i.i.i.i105 = phi ptr [ %i.cw, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i96 ], [ %i.db, %.lr.ph.i.i.i.i.i100 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i105, i64 16 ; 2 uses
  %.not.i34.i.i106 = icmp eq ptr %i.cl, null
  br i1 %.not.i34.i.i106, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i104
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.co) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i104
  store ptr %i.cw, ptr %4, align 8
  store ptr %i.dc, ptr %i.ah, align 8
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cu ; 2 uses
  store ptr %i.dd, ptr %i.aj, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit: ; preds = %bb.r, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.de = phi ptr [ %.pre277, %bb.r ], [ %i.dd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.df = phi ptr [ %i.ck, %bb.r ], [ %i.dc, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %.not.i107 = icmp eq ptr %i.df, %i.de
  br i1 %.not.i107, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit
  %i.dg = load double, ptr %i.e, align 8
  store double %.sroa.speculated207, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store double %i.dg, ptr %i.dh, align 8
  %i.di = load ptr, ptr %i.ah, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr %i.dj, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit120

bb.w:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit
  %i.dk = load ptr, ptr %4, align 8               ; 5 uses
  %i.dl = ptrtoint ptr %i.de to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775792
  br i1 %i.do, label %bb.x, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i108

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i108: ; preds = %bb.w
  %i.dp = ashr exact i64 %i.dn, 4                 ; 3 uses
  %.sroa.speculated.i.i.i109 = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i109, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 576460752303423487)
  %i.dt = select i1 %i.dr, i64 576460752303423487, i64 %i.ds ; 3 uses
  %.not.i.i.i110 = icmp ne i64 %i.dt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i110)
  %i.du = shl nuw nsw i64 %i.dt, 4
  %i.dv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #25 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn ; 2 uses
  %i.dx = load double, ptr %i.e, align 8
  store double %.sroa.speculated207, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store double %i.dx, ptr %i.dy, align 8
  %.not10.i.i.i.i.i111 = icmp eq ptr %i.dk, %i.de
  br i1 %.not10.i.i.i.i.i111, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i116, label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i108, %.lr.ph.i.i.i.i.i112
  %.012.i.i.i.i.i113 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i112 ], [ %i.dv, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i108 ] ; 2 uses
  %.0911.i.i.i.i.i114 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i112 ], [ %i.dk, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i108 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i113, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i114, i64 16, i1 false), !alias.scope !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i114, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 16 ; 2 uses
  %.not.i.i.i.i.i115 = icmp eq ptr %i.dz, %i.de
  br i1 %.not.i.i.i.i.i115, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i116, label %.lr.ph.i.i.i.i.i112, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i116: ; preds = %.lr.ph.i.i.i.i.i112, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i108
  %.0.lcssa.i.i.i.i.i117 = phi ptr [ %i.dv, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i108 ], [ %i.ea, %.lr.ph.i.i.i.i.i112 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i117, i64 16
  %.not.i34.i.i118 = icmp eq ptr %i.dk, null
  br i1 %.not.i34.i.i118, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i116
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dn) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119: ; preds = %bb.y, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i116
  store ptr %i.dv, ptr %4, align 8
  store ptr %i.eb, ptr %i.ah, align 8
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.ec, ptr %i.aj, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit120

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit120: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119, %bb.v, %.thread223
  %.not236252 = icmp eq ptr %.sroa.0180.0250, %i.m
  br i1 %.not236252, label %._crit_edge257.thread, label %.lr.ph256

.lr.ph256:                                        ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit120
  %i.ed = load double, ptr %i.e, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph256, %bb.ae
  %.3255 = phi i1 [ false, %.lr.ph256 ], [ %.5.ph, %bb.ae ] ; 3 uses
  %.078254 = phi double [ %i.ed, %.lr.ph256 ], [ %.280.ph, %bb.ae ] ; 6 uses
  %.sroa.0180.1253 = phi ptr [ %.sroa.0180.0250, %.lr.ph256 ], [ %i.ez, %bb.ae ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0180.1253, i64 48
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = load ptr, ptr %3, align 8
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.ei, i64 %i.eh ; 3 uses
  %i.ek = load double, ptr %i.ej, align 8
  %i.el = fcmp ogt double %i.ek, %.sroa.speculated207
  br i1 %i.el, label %._crit_edge257, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.en = load double, ptr %i.em, align 8         ; 3 uses
  %i.eo = load double, ptr %i.g, align 8          ; 3 uses
  %i.ep = fcmp ult double %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %._crit_edge257

bb.ab:                                            ; preds = %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.er = load double, ptr %i.eq, align 8         ; 3 uses
  %i.es = fcmp ogt double %i.er, %.078254
  br i1 %i.es, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.et = load double, ptr %i.e, align 8          ; 2 uses
  %i.eu = fcmp olt double %i.en, %i.et
  %i.ev = select i1 %i.eu, double %i.et, double %i.en ; 2 uses
  %i.ew = fcmp olt double %i.eo, %i.er
  %i.ex = select i1 %i.ew, double %i.eo, double %i.er ; 2 uses
  %i.ey = fcmp ogt double %i.ev, %.078254
  br i1 %i.ey, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store double %.sroa.speculated207, ptr %5, align 8
  store double %.078254, ptr %i.ee, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store double %.sroa.speculated, ptr %6, align 8
  store double %i.ev, ptr %i.ef, align 8
  call void @_ZN6Assimp3IFC12QuadrifyPartERK10aiVector2tIdES4_RSt3mapIS2_mNS0_8XYSorterESaISt4pairIS3_mEEERKSt6vectorIS7_IS2_S2_ESaISD_EERSC_IS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.280.ph = phi double [ %i.ex, %bb.ac ], [ %i.ex, %bb.ad ], [ %.078254, %bb.ab ] ; 2 uses
  %.5.ph = phi i1 [ true, %bb.ac ], [ true, %bb.ad ], [ %.3255, %bb.ab ] ; 2 uses
  %i.ez = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0180.1253) #23 ; 2 uses
  %.not236 = icmp eq ptr %i.ez, %i.m
  br i1 %.not236, label %._crit_edge257, label %bb.z, !llvm.loop !22

._crit_edge257:                                   ; preds = %bb.ae, %bb.z, %bb.aa
  %.078.lcssa = phi double [ %.078254, %bb.aa ], [ %.280.ph, %bb.ae ], [ %.078254, %bb.z ] ; 2 uses
  %.3.lcssa = phi i1 [ %.3255, %bb.aa ], [ %.5.ph, %bb.ae ], [ %.3255, %bb.z ]
  br i1 %.3.lcssa, label %bb.av, label %._crit_edge257.thread

._crit_edge257.thread:                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit120, %._crit_edge257
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  %i.fb = load ptr, ptr %i.fa, align 8            ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.fd = load ptr, ptr %i.fc, align 8
  %.not.i123 = icmp eq ptr %i.fb, %i.fd
  br i1 %.not.i123, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge257.thread
  %i.fe = load double, ptr %i.e, align 8
  store double %.sroa.speculated207, ptr %i.fb, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store double %i.fe, ptr %i.ff, align 8
  %i.fg = load ptr, ptr %i.fa, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  store ptr %i.fh, ptr %i.fa, align 8
  %.pre278 = load ptr, ptr %i.fc, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit136

bb.ag:                                            ; preds = %._crit_edge257.thread
  %i.fi = load ptr, ptr %4, align 8               ; 5 uses
  %i.fj = ptrtoint ptr %i.fb to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 4 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775792
  br i1 %i.fm, label %bb.ah, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i124

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i124: ; preds = %bb.ag
  %i.fn = ashr exact i64 %i.fl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i125 = call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i125, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fo, i64 576460752303423487)
  %i.fr = select i1 %i.fp, i64 576460752303423487, i64 %i.fq ; 3 uses
  %.not.i.i.i126 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i.i126)
  %i.fs = shl nuw nsw i64 %i.fr, 4
  %i.ft = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #25 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl ; 2 uses
  %i.fv = load double, ptr %i.e, align 8
  store double %.sroa.speculated207, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store double %i.fv, ptr %i.fw, align 8
  %.not10.i.i.i.i.i127 = icmp eq ptr %i.fi, %i.fb
  br i1 %.not10.i.i.i.i.i127, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128

.lr.ph.i.i.i.i.i128:                              ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i124, %.lr.ph.i.i.i.i.i128
  %.012.i.i.i.i.i129 = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i128 ], [ %i.ft, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i124 ] ; 2 uses
  %.0911.i.i.i.i.i130 = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i128 ], [ %i.fi, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i124 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i129, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i130, i64 16, i1 false), !alias.scope !23
  %i.fx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 16 ; 2 uses
  %.not.i.i.i.i.i131 = icmp eq ptr %i.fx, %i.fb
  br i1 %.not.i.i.i.i.i131, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132: ; preds = %.lr.ph.i.i.i.i.i128, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i124
  %.0.lcssa.i.i.i.i.i133 = phi ptr [ %i.ft, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i124 ], [ %i.fy, %.lr.ph.i.i.i.i.i128 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i133, i64 16 ; 2 uses
  %.not.i34.i.i134 = icmp eq ptr %i.fi, null
  br i1 %.not.i34.i.i134, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fl) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135: ; preds = %bb.ai, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132
  store ptr %i.ft, ptr %4, align 8
  store ptr %i.fz, ptr %i.fa, align 8
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fr ; 2 uses
  store ptr %i.ga, ptr %i.fc, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit136

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit136: ; preds = %bb.af, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135
  %i.gb = phi ptr [ %.pre278, %bb.af ], [ %i.ga, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ] ; 4 uses
  %i.gc = phi ptr [ %i.fh, %bb.af ], [ %i.fz, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ] ; 3 uses
  %.not.i137 = icmp eq ptr %i.gc, %i.gb
  br i1 %.not.i137, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit136
  %i.gd = load double, ptr %i.g, align 8
  store double %.sroa.speculated207, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store double %i.gd, ptr %i.ge, align 8
  %i.gf = load ptr, ptr %i.fa, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  store ptr %i.gg, ptr %i.fa, align 8
  %.pre279 = load ptr, ptr %i.fc, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit150

bb.ak:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit136
  %i.gh = load ptr, ptr %4, align 8               ; 5 uses
  %i.gi = ptrtoint ptr %i.gb to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 4 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775792
  br i1 %i.gl, label %bb.al, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i138

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i138: ; preds = %bb.ak
  %i.gm = ashr exact i64 %i.gk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i139 = call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i139, %i.gm ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 576460752303423487)
  %i.gq = select i1 %i.go, i64 576460752303423487, i64 %i.gp ; 3 uses
  %.not.i.i.i140 = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i140)
  %i.gr = shl nuw nsw i64 %i.gq, 4
  %i.gs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #25 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gk ; 2 uses
  %i.gu = load double, ptr %i.g, align 8
  store double %.sroa.speculated207, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store double %i.gu, ptr %i.gv, align 8
  %.not10.i.i.i.i.i141 = icmp eq ptr %i.gh, %i.gb
  br i1 %.not10.i.i.i.i.i141, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i146, label %.lr.ph.i.i.i.i.i142

.lr.ph.i.i.i.i.i142:                              ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i138, %.lr.ph.i.i.i.i.i142
  %.012.i.i.i.i.i143 = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i142 ], [ %i.gs, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i138 ] ; 2 uses
  %.0911.i.i.i.i.i144 = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i142 ], [ %i.gh, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i138 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i143, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i144, i64 16, i1 false), !alias.scope !27
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i144, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i143, i64 16 ; 2 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.gw, %i.gb
  br i1 %.not.i.i.i.i.i145, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i146, label %.lr.ph.i.i.i.i.i142, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i146: ; preds = %.lr.ph.i.i.i.i.i142, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i138
  %.0.lcssa.i.i.i.i.i147 = phi ptr [ %i.gs, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i138 ], [ %i.gx, %.lr.ph.i.i.i.i.i142 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i147, i64 16 ; 2 uses
  %.not.i34.i.i148 = icmp eq ptr %i.gh, null
  br i1 %.not.i34.i.i148, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i149, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i146
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gk) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i149

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i149: ; preds = %bb.am, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i146
  store ptr %i.gs, ptr %4, align 8
  store ptr %i.gy, ptr %i.fa, align 8
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gq ; 2 uses
  store ptr %i.gz, ptr %i.fc, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit150

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit150: ; preds = %bb.aj, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i149
  %i.ha = phi ptr [ %.pre279, %bb.aj ], [ %i.gz, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i149 ] ; 4 uses
  %i.hb = phi ptr [ %i.gg, %bb.aj ], [ %i.gy, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdRKdEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i149 ] ; 3 uses
  %.not.i151 = icmp eq ptr %i.hb, %i.ha
  br i1 %.not.i151, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit150
  %i.hc = load double, ptr %i.g, align 8
  store double %.sroa.speculated, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store double %i.hc, ptr %i.hd, align 8
  %i.he = load ptr, ptr %i.fa, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  store ptr %i.hf, ptr %i.fa, align 8
  %.pre280 = load ptr, ptr %i.fc, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit164

bb.ao:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit150
  %i.hg = load ptr, ptr %4, align 8               ; 5 uses
  %i.hh = ptrtoint ptr %i.ha to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 4 uses
  %i.hk = icmp eq i64 %i.hj, 9223372036854775792
  br i1 %i.hk, label %bb.ap, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i152

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i152: ; preds = %bb.ao
  %i.hl = ashr exact i64 %i.hj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i153 = call i64 @llvm.umax.i64(i64 %i.hl, i64 1)
  %i.hm = add nsw i64 %.sroa.speculated.i.i.i153, %i.hl ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.hl
  %i.ho = call i64 @llvm.umin.i64(i64 %i.hm, i64 576460752303423487)
  %i.hp = select i1 %i.hn, i64 576460752303423487, i64 %i.ho ; 3 uses
  %.not.i.i.i154 = icmp ne i64 %i.hp, 0
  call void @llvm.assume(i1 %.not.i.i.i154)
  %i.hq = shl nuw nsw i64 %i.hp, 4
  %i.hr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #25 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hj ; 2 uses
  %i.ht = load double, ptr %i.g, align 8
  store double %.sroa.speculated, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store double %i.ht, ptr %i.hu, align 8
  %.not10.i.i.i.i.i155 = icmp eq ptr %i.hg, %i.ha
  br i1 %.not10.i.i.i.i.i155, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i160, label %.lr.ph.i.i.i.i.i156

end_hunk_0
