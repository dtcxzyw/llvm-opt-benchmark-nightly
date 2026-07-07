inline.NumInlined: 1077
inline.NumDeleted: 524
begin_hunk_0_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
  %i.ni = urem i64 %i.nh, %i.mv
  %.not19.i.i.i.i453 = icmp eq i64 %i.ni, %i.mw
  call void @llvm.assume(i1 %.not19.i.i.i.i453)
  %i.nj = icmp eq ptr %i.mp, %i.ng
  br i1 %i.nj, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459, label %.lr.ph.i.i.i.i450, !llvm.loop !20

_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459: ; preds = %.lr.ph.i.i.i.i450, %.preheader871, %bb.ag
  %.sroa.06.1.i.i455 = phi ptr [ %.sroa.06.0.i.i457, %.preheader871 ], [ %i.na, %bb.ag ], [ %i.ne, %.lr.ph.i.i.i.i450 ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i455, i64 16 ; 5 uses
  %i.nl = load i32, ptr %i.nk, align 8
  %i.nm = icmp sgt i32 %i.nl, -1
  br i1 %i.nm, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459
  store i32 %.11018, ptr %i.nk, align 8
  %i.nn = load float, ptr %i.lw, align 4
  %i.no = load float, ptr %i.mp, align 4          ; 3 uses
  %i.np = load float, ptr %i.ma, align 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.nr = load float, ptr %i.nq, align 4          ; 3 uses
  %i.ns = fmul float %i.np, %i.nr
  %i.nt = call float @llvm.fmuladd.f32(float %i.nn, float %i.no, float %i.ns)
  %i.nu = load float, ptr %i.mb, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.nw = load float, ptr %i.nv, align 4          ; 3 uses
  %i.nx = call float @llvm.fmuladd.f32(float %i.nu, float %i.nw, float %i.nt)
  %i.ny = load float, ptr %i.mc, align 4
  %i.nz = fadd float %i.nx, %i.ny
  %i.oa = load float, ptr %i.md, align 4
  %i.ob = load float, ptr %i.me, align 4
  %i.oc = fmul float %i.nr, %i.ob
  %i.od = call float @llvm.fmuladd.f32(float %i.oa, float %i.no, float %i.oc)
  %i.oe = load float, ptr %i.mf, align 4
  %i.of = call float @llvm.fmuladd.f32(float %i.oe, float %i.nw, float %i.od)
  %i.og = load float, ptr %i.mg, align 4
  %i.oh = fadd float %i.og, %i.of
  %i.oi = load float, ptr %i.mh, align 4
  %i.oj = load float, ptr %i.mi, align 4
  %i.ok = fmul float %i.nr, %i.oj
  %i.ol = call float @llvm.fmuladd.f32(float %i.oi, float %i.no, float %i.ok)
  %i.om = load float, ptr %i.mj, align 4
  %i.on = call float @llvm.fmuladd.f32(float %i.om, float %i.nw, float %i.ol)
  %i.oo = load float, ptr %i.mk, align 4
  %i.op = fadd float %i.oo, %i.on
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461: ; preds = %bb.ah
  %i.or = load i32, ptr %i.nk, align 8
  %i.os = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.or)
          to label %bb.ai unwind label %bb.am     ; 2 uses

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461
  %i.ot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.os, ptr noundef nonnull @.str.47, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463: ; preds = %bb.ai
  %i.ou = fpext float %i.nz to double
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.os, double noundef %i.ou)
          to label %_ZNSolsEf.exit unwind label %bb.am ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463
  %i.ow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466: ; preds = %_ZNSolsEf.exit
  %i.ox = fpext float %i.oh to double
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, double noundef %i.ox)
          to label %_ZNSolsEf.exit468 unwind label %bb.am ; 2 uses

_ZNSolsEf.exit468:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470: ; preds = %_ZNSolsEf.exit468
  %i.pa = fpext float %i.op to double
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, double noundef %i.pa)
          to label %_ZNSolsEf.exit472 unwind label %bb.am ; 2 uses

_ZNSolsEf.exit472:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474: ; preds = %_ZNSolsEf.exit472
  %i.pd = load ptr, ptr %i.dn, align 8
  %i.pe = load i64, ptr %i.dp, align 8
  %i.pf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef %i.pd, i64 noundef %i.pe)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476 unwind label %bb.am ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474
  %i.pg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476
  %i.ph = load i32, ptr %i.nk, align 8
  %i.pi = add nsw i32 %i.ph, 1
  %i.pj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.pi)
          to label %bb.aj unwind label %bb.am     ; 2 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pj, ptr noundef nonnull @.str.48, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480: ; preds = %bb.aj
  %i.pl = load i32, ptr %i.nk, align 8
  %i.pm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.pj, i32 noundef %i.pl)
          to label %bb.ak unwind label %bb.am     ; 2 uses

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480
  %i.pn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pm, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482: ; preds = %bb.ak
  %i.po = load ptr, ptr %i.dn, align 8
  %i.pp = load i64, ptr %i.dp, align 8
  %i.pq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pm, ptr noundef %i.po, i64 noundef %i.pp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484 unwind label %bb.am ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482
  %i.pr = add nsw i32 %.11018, 2
  %.pre1191 = load i32, ptr %i.lx, align 4
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484
  %i.ps = phi i32 [ %.pre1191, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484 ], [ %i.mn, %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459 ] ; 2 uses
  %.2 = phi i32 [ %i.pr, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484 ], [ %.11018, %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459 ] ; 2 uses
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1 ; 2 uses
  %i.pt = zext i32 %i.ps to i64
  %i.pu = icmp samesign ult i64 %indvars.iv.next1137, %i.pt
  br i1 %i.pu, label %bb.af, label %._crit_edge1021, !llvm.loop !29

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482, %bb.ak, %bb.aj, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474, %_ZNSolsEf.exit472, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470, %_ZNSolsEf.exit468, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463, %bb.ai, %bb.ah, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

._crit_edge1072:                                  ; preds = %._crit_edge1059, %.preheader870
  %i.pw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.12, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit486 unwind label %bb.x ; 0 uses

.lr.ph1071:                                       ; preds = %.preheader870, %._crit_edge1059
  %i.px = phi ptr [ %i.qj, %._crit_edge1059 ], [ %i.la, %.preheader870 ] ; 2 uses
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %._crit_edge1059 ], [ 0, %.preheader870 ] ; 2 uses
  %.31070 = phi i32 [ %.4.lcssa, %._crit_edge1059 ], [ %.0.lcssa, %.preheader870 ] ; 2 uses
  %.sroa.26.01066 = phi float [ %.sroa.26.1.lcssa, %._crit_edge1059 ], [ 8.000000e-01, %.preheader870 ] ; 2 uses
  %i.py = phi <2 x float> [ %i.qk, %._crit_edge1059 ], [ splat (float 8.000000e-01), %.preheader870 ] ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %indvars.iv1186
  %i.qc = load ptr, ptr %i.qb, align 8            ; 5 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 8            ; 2 uses
  %.not1080 = icmp eq i32 %i.qe, 0
  br i1 %.not1080, label %._crit_edge1059, label %.lr.ph1058

.lr.ph1058:                                       ; preds = %.lr.ph1071
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 208
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 16 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 48
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  br label %bb.an

._crit_edge1059.loopexit:                         ; preds = %bb.de
  %.pre1193 = load ptr, ptr %i.u, align 8
  br label %._crit_edge1059

._crit_edge1059:                                  ; preds = %._crit_edge1059.loopexit, %.lr.ph1071
  %i.qj = phi ptr [ %i.px, %.lr.ph1071 ], [ %.pre1193, %._crit_edge1059.loopexit ] ; 2 uses
  %.sroa.26.1.lcssa = phi float [ %.sroa.26.01066, %.lr.ph1071 ], [ %.sroa.26.3, %._crit_edge1059.loopexit ]
  %.4.lcssa = phi i32 [ %.31070, %.lr.ph1071 ], [ %.5, %._crit_edge1059.loopexit ]
  %i.qk = phi <2 x float> [ %i.py, %.lr.ph1071 ], [ %i.ago, %._crit_edge1059.loopexit ]
  %indvars.iv.next1187 = add nuw nsw i64 %indvars.iv1186, 1 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.qm = load i32, ptr %i.ql, align 8
  %i.qn = zext i32 %i.qm to i64
  %i.qo = icmp samesign ult i64 %indvars.iv.next1187, %i.qn
  br i1 %i.qo, label %.lr.ph1071, label %._crit_edge1072, !llvm.loop !30

bb.an:                                            ; preds = %.lr.ph1058, %bb.de
  %i.qp = phi i32 [ %i.qe, %.lr.ph1058 ], [ %i.agn, %bb.de ]
  %indvars.iv1183 = phi i64 [ 0, %.lr.ph1058 ], [ %indvars.iv.next1184, %bb.de ] ; 2 uses
  %.41056 = phi i32 [ %.31070, %.lr.ph1058 ], [ %.5, %bb.de ] ; 17 uses
  %.sroa.26.11052 = phi float [ %.sroa.26.01066, %.lr.ph1058 ], [ %.sroa.26.3, %bb.de ] ; 2 uses
  %i.qq = phi <2 x float> [ %i.py, %.lr.ph1058 ], [ %i.ago, %bb.de ] ; 2 uses
  %i.qr = load ptr, ptr %i.qf, align 8
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.qr, i64 %indvars.iv1183 ; 3 uses
  %i.qt = load i32, ptr %i.qs, align 8            ; 13 uses
  %i.qu = icmp slt i32 %i.qt, 3
  br i1 %i.qu, label %bb.de, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.qv = zext nneg i32 %i.qt to i64              ; 5 uses
  %i.qw = shl nuw nsw i64 %i.qv, 2                ; 4 uses
  %i.qx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qw) #24
          to label %.noexc488 unwind label %bb.ap ; 12 uses

.noexc488:                                        ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qx, i8 -1, i64 %i.qw, i1 false)
  %i.qy = mul nuw nsw i64 %i.qv, 12               ; 4 uses
  %i.qz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qy) #24
          to label %.lr.ph1030 unwind label %bb.aq ; 9 uses

.lr.ph1030:                                       ; preds = %.noexc488
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qz, i8 0, i64 %i.qy, i1 false)
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 2 uses
  %i.rb = load i64, ptr %i.fe, align 8
  %.not.not.i.i495 = icmp eq i64 %i.rb, 0
  %i.rc = load i64, ptr %i.q, align 8             ; 2 uses
  %i.rd = load ptr, ptr %3, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.aq:                                            ; preds = %.noexc488
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit760

bb.ar:                                            ; preds = %.lr.ph1030, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %indvars.iv1139 = phi i64 [ 0, %.lr.ph1030 ], [ %indvars.iv.next1140, %_ZN10aiVector3tIfE9NormalizeEv.exit ] ; 4 uses
  %i.rg = load ptr, ptr %i.qg, align 8
  %i.rh = load ptr, ptr %i.ra, align 8
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv1139
  %i.rj = load i32, ptr %i.ri, align 4
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [12 x i8], ptr %i.rg, i64 %i.rk ; 6 uses
  br i1 %.not.not.i.i495, label %.preheader, label %bb.as

.preheader:                                       ; preds = %bb.ar, %.preheader
  %.sroa.06.0.in.i.i503 = phi ptr [ %.sroa.06.0.i.i504, %.preheader ], [ %i.r, %bb.ar ]
  %.sroa.06.0.i.i504 = load ptr, ptr %.sroa.06.0.in.i.i503, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i504, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = icmp eq ptr %i.rl, %i.rn
  br i1 %i.ro, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506, label %.preheader, !llvm.loop !19

bb.as:                                            ; preds = %bb.ar
  %i.rp = ptrtoint ptr %i.rl to i64
  %i.rq = urem i64 %i.rp, %i.rc                   ; 2 uses
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.rq
  %i.rs = load ptr, ptr %i.rr, align 8, !nonnull !28, !noundef !28
  %i.rt = load ptr, ptr %i.rs, align 8            ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = icmp eq ptr %i.rl, %i.rv
  br i1 %i.rw, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506, label %.lr.ph.i.i.i.i497

.lr.ph.i.i.i.i497:                                ; preds = %bb.as, %.lr.ph.i.i.i.i497
  %.020.i.i.i.i498 = phi ptr [ %i.rx, %.lr.ph.i.i.i.i497 ], [ %i.rt, %bb.as ]
  %i.rx = load ptr, ptr %.020.i.i.i.i498, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8            ; 2 uses
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = urem i64 %i.sa, %i.rc
  %.not19.i.i.i.i500 = icmp eq i64 %i.sb, %i.rq
  call void @llvm.assume(i1 %.not19.i.i.i.i500)
  %i.sc = icmp eq ptr %i.rl, %i.rz
  br i1 %i.sc, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506, label %.lr.ph.i.i.i.i497, !llvm.loop !20

_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506: ; preds = %.lr.ph.i.i.i.i497, %.preheader, %bb.as
  %.sroa.06.1.i.i502 = phi ptr [ %.sroa.06.0.i.i504, %.preheader ], [ %i.rt, %bb.as ], [ %i.rx, %.lr.ph.i.i.i.i497 ]
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i502, i64 16
  %i.se = load i32, ptr %i.sd, align 8
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv1139
  store i32 %i.se, ptr %i.sf, align 4
  %indvars.iv.next1140 = add nuw nsw i64 %indvars.iv1139, 1 ; 4 uses
  %i.sg = icmp eq i64 %indvars.iv.next1140, %i.qv
  %i.sh = load ptr, ptr %i.qg, align 8
  %i.si = load ptr, ptr %i.ra, align 8
  %.sink1294.in.idx = select i1 %i.sg, i64 0, i64 %indvars.iv.next1140
  %.sink1294.in = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %.sink1294.in.idx
  %.sink1294 = load i32, ptr %.sink1294.in, align 4
  %i.sj = zext i32 %.sink1294 to i64
  %i.sk = getelementptr inbounds nuw [12 x i8], ptr %i.sh, i64 %i.sj ; 2 uses
  %i.sl = load <2 x float>, ptr %i.sk, align 4
  %i.sm = load <2 x float>, ptr %i.rl, align 4
  %i.sn = fsub <2 x float> %i.sl, %i.sm           ; 5 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sp = load float, ptr %i.so, align 4
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.sr = load float, ptr %i.sq, align 4
  %i.ss = fsub float %i.sp, %i.sr                 ; 4 uses
  %i.st = getelementptr inbounds nuw [12 x i8], ptr %i.qz, i64 %indvars.iv1139 ; 3 uses
  store <2 x float> %i.sn, ptr %i.st, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.st, i64 8 ; 2 uses
  store float %i.ss, ptr %.sroa.5.0..sroa_idx, align 4
  %foldExtExtBinop = fmul <2 x float> %i.sn, %i.sn
  %i.su = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.sv = extractelement <2 x float> %i.sn, i64 0 ; 2 uses
  %i.sw = call float @llvm.fmuladd.f32(float %i.sv, float %i.sv, float %i.su)
  %i.sx = call noundef float @llvm.fmuladd.f32(float %i.ss, float %i.ss, float %i.sw) ; 2 uses
  %i.sy = fcmp oeq float %i.sx, 0.000000e+00
  br i1 %i.sy, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.sx)
  %i.sz = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ta = insertelement <2 x float> poison, float %i.sz, i64 0
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tc = fmul <2 x float> %i.sn, %i.tb
  store <2 x float> %i.tc, ptr %i.st, align 4
  %i.td = fmul float %i.ss, %i.sz
  store float %i.td, ptr %.sroa.5.0..sroa_idx, align 4
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506
  %exitcond1142.not = icmp eq i64 %indvars.iv.next1140, %i.qv
  br i1 %exitcond1142.not, label %._crit_edge1031, label %bb.ar, !llvm.loop !31

._crit_edge1031:                                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.te = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  %.sroa.0786.0.copyload = load float, ptr %i.te, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %.sroa.8.0.copyload = load float, ptr %i.qz, align 4 ; 2 uses
  %4 = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 4 uses
  %5 = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %6 = fneg <2 x float> %5
  %7 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x float> %7, float %.sroa.0786.0.copyload, i64 1
  %9 = fmul <2 x float> %8, %6
  %10 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x float> %10, float %.sroa.8.0.copyload, i64 1
  %12 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %11, <2 x float> %9) ; 5 uses
  %13 = fneg float %.sroa.8.0.copyload
  %14 = extractelement <2 x float> %4, i64 0      ; 2 uses
  %15 = fmul float %14, %13
  %16 = extractelement <2 x float> %5, i64 0
  %i.tf = call float @llvm.fmuladd.f32(float %.sroa.0786.0.copyload, float %16, float %15) ; 4 uses
  %foldExtExtBinop1359 = fmul <2 x float> %12, %12
  %17 = extractelement <2 x float> %foldExtExtBinop1359, i64 1
  %18 = extractelement <2 x float> %12, i64 0     ; 2 uses
  %i.tg = call float @llvm.fmuladd.f32(float %18, float %18, float %17)
  %i.th = call noundef float @llvm.fmuladd.f32(float %i.tf, float %i.tf, float %i.tg) ; 2 uses
  %i.ti = fcmp oeq float %i.th, 0.000000e+00
  br i1 %i.ti, label %_ZN10aiVector3tIfE9NormalizeEv.exit513, label %_ZN10aiVector3tIfEdVEf.exit.i511

_ZN10aiVector3tIfEdVEf.exit.i511:                 ; preds = %._crit_edge1031
  %sqrt.i.i512 = call noundef float @llvm.sqrt.f32(float %i.th)
  %i.tj = fdiv float 1.000000e+00, %sqrt.i.i512   ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.tj, i64 0
  %19 = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x float> %12, %19
  %i.tk = fmul float %i.tf, %i.tj
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit513

_ZN10aiVector3tIfE9NormalizeEv.exit513:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i511, %._crit_edge1031
  %.sroa.10.0 = phi float [ %i.tf, %._crit_edge1031 ], [ %i.tk, %_ZN10aiVector3tIfEdVEf.exit.i511 ]
  %.sroa.0.0 = phi <2 x float> [ %12, %._crit_edge1031 ], [ %20, %_ZN10aiVector3tIfEdVEf.exit.i511 ] ; 2 uses
  %i.tl = load ptr, ptr %i.qh, align 8            ; 4 uses
  %.not.i = icmp ne ptr %i.tl, null
  %i.tm = load i32, ptr %i.qi, align 4
  %i.tn = icmp ne i32 %i.tm, 0
  %i.to = select i1 %.not.i, i1 %i.tn, i1 false
  br i1 %i.to, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit513
  %i.tp = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8            ; 3 uses
  %i.tr = load i32, ptr %i.tq, align 4
  %i.ts = zext i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.tl, i64 %i.ts ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = load float, ptr %i.tu, align 4
  %i.tw = fadd float %i.tv, 0.000000e+00
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %i.ty = load i32, ptr %i.tx, align 4
  %i.tz = zext i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [16 x i8], ptr %i.tl, i64 %i.tz ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = load float, ptr %i.ub, align 4
  %i.ud = fadd float %i.tw, %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.uf = load i32, ptr %i.ue, align 4
  %i.ug = zext i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw [16 x i8], ptr %i.tl, i64 %i.ug ; 2 uses
  %i.ui = load <2 x float>, ptr %i.tt, align 4
  %i.uj = fadd <2 x float> %i.ui, zeroinitializer
  %i.uk = load <2 x float>, ptr %i.ua, align 4
  %i.ul = fadd <2 x float> %i.uj, %i.uk
  %i.um = load <2 x float>, ptr %i.uh, align 4
  %i.un = fadd <2 x float> %i.ul, %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.up = load float, ptr %i.uo, align 4
  %i.uq = fadd float %i.ud, %i.up
  %i.ur = fdiv <2 x float> %i.un, splat (float 3.000000e+00)
  %i.us = fdiv float %i.uq, 3.000000e+00
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN10aiVector3tIfE9NormalizeEv.exit513
  %.sroa.26.2 = phi float [ %i.us, %bb.at ], [ %.sroa.26.11052, %_ZN10aiVector3tIfE9NormalizeEv.exit513 ] ; 2 uses
  %i.ut = phi <2 x float> [ %i.ur, %bb.at ], [ %i.qq, %_ZN10aiVector3tIfE9NormalizeEv.exit513 ] ; 3 uses
  %i.uu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit515 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit515: ; preds = %bb.au
  %i.uv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %.41056)
          to label %bb.av unwind label %bb.ca     ; 2 uses

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit515
  %i.uw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.uv, ptr noundef nonnull @.str.50, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit517 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit517: ; preds = %bb.av
  %i.ux = add nsw i32 %.41056, 1                  ; 2 uses
  %i.uy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.uv, i32 noundef %i.ux)
          to label %bb.aw unwind label %bb.ca     ; 2 uses

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit517
  %i.uz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.uy, ptr noundef nonnull @.str.51, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit519 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit519: ; preds = %bb.aw
  %i.va = add nsw i32 %.41056, 8                  ; 2 uses
  %i.vb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.uy, i32 noundef %i.va)
          to label %bb.ax unwind label %bb.ca     ; 2 uses

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit519
  %i.vc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vb, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit521 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit521: ; preds = %bb.ax
  %i.vd = load ptr, ptr %i.dn, align 8
  %i.ve = load i64, ptr %i.dp, align 8
  %i.vf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vb, ptr noundef %i.vd, i64 noundef %i.ve)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit523 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit523: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit521
  %i.vg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit525 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit525: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit523
  %i.vh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.ux)
          to label %bb.ay unwind label %bb.ca     ; 2 uses

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit525
  %i.vi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vh, ptr noundef nonnull @.str.52, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit527 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit527: ; preds = %bb.ay
  %i.vj = add nsw i32 %.41056, 2                  ; 2 uses
  %i.vk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.vh, i32 noundef %i.vj)
          to label %bb.az unwind label %bb.ca     ; 2 uses

bb.az:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit527
  %i.vl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vk, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529: ; preds = %bb.az
  %i.vm = load ptr, ptr %i.dn, align 8
  %i.vn = load i64, ptr %i.dp, align 8
  %i.vo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vk, ptr noundef %i.vm, i64 noundef %i.vn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit531 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit531: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit533 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit533: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit531
  %i.vq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.vj)
          to label %bb.ba unwind label %bb.ca     ; 2 uses

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit533
  %i.vr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vq, ptr noundef nonnull @.str.53, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit535 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit535: ; preds = %bb.ba
  %i.vs = add nsw i32 %.41056, 3                  ; 2 uses
  %i.vt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.vq, i32 noundef %i.vs)
          to label %bb.bb unwind label %bb.ca     ; 2 uses

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit535
  %i.vu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vt, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit537 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit537: ; preds = %bb.bb
  %i.vv = load ptr, ptr %i.dn, align 8
  %i.vw = load i64, ptr %i.dp, align 8
  %i.vx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vt, ptr noundef %i.vv, i64 noundef %i.vw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit539 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit539: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit537
  %i.vy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit541 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit541: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit539
  %i.vz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.vs)
          to label %bb.bc unwind label %bb.ca     ; 2 uses

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit541
  %i.wa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vz, ptr noundef nonnull @.str.54, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit543 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit543: ; preds = %bb.bc
  %i.wb = add nsw i32 %.41056, 4                  ; 2 uses
  %i.wc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.vz, i32 noundef %i.wb)
          to label %bb.bd unwind label %bb.ca     ; 2 uses

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit543
  %i.wd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wc, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit545 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit545: ; preds = %bb.bd
  %i.we = load ptr, ptr %i.dn, align 8
  %i.wf = load i64, ptr %i.dp, align 8
  %i.wg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wc, ptr noundef %i.we, i64 noundef %i.wf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit547 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit547: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit545
  %i.wh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit549 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit549: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit547
  %i.wi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.wb)
          to label %bb.be unwind label %bb.ca     ; 2 uses

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit549
  %i.wj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wi, ptr noundef nonnull @.str.55, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit551 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit551: ; preds = %bb.be
  %i.wk = add nsw i32 %.41056, 5                  ; 2 uses
  %i.wl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.wi, i32 noundef %i.wk)
          to label %bb.bf unwind label %bb.ca     ; 2 uses

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit551
  %i.wm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wl, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit553 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit553: ; preds = %bb.bf
  %i.wn = load ptr, ptr %i.dn, align 8
  %i.wo = load i64, ptr %i.dp, align 8
  %i.wp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wl, ptr noundef %i.wn, i64 noundef %i.wo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit555 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit555: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit553
  %i.wq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit557 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit557: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit555
  %i.wr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.wk)
          to label %bb.bg unwind label %bb.ca     ; 2 uses

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit557
  %i.ws = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wr, ptr noundef nonnull @.str.56, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit559 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit559: ; preds = %bb.bg
  %i.wt = add nsw i32 %.41056, 6                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
  %i.xq = fpext float %i.xp to double
  %i.xr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.xn, double noundef %i.xq)
          to label %_ZNSolsEf.exit581 unwind label %bb.ca ; 2 uses

_ZNSolsEf.exit581:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit579
  %i.xs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xr, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit583 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit583: ; preds = %_ZNSolsEf.exit581
  %i.xt = fpext float %.sroa.26.2 to double
  %i.xu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.xr, double noundef %i.xt)
          to label %_ZNSolsEf.exit585 unwind label %bb.ca ; 2 uses

_ZNSolsEf.exit585:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit583
  %i.xv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xu, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit587 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit587: ; preds = %_ZNSolsEf.exit585
  %i.xw = load ptr, ptr %i.dn, align 8
  %i.xx = load i64, ptr %i.dp, align 8
  %i.xy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xu, ptr noundef %i.xw, i64 noundef %i.xx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit589 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit589: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit587
  %i.xz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit591 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit591: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit589
  %i.ya = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.va)
          to label %bb.bl unwind label %bb.ca     ; 2 uses

bb.bl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit591
  %i.yb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ya, ptr noundef nonnull @.str.59, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593: ; preds = %bb.bl
  %i.yc = add nsw i32 %.41056, 13                 ; 2 uses
  %i.yd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ya, i32 noundef %i.yc)
          to label %bb.bm unwind label %bb.ca     ; 2 uses

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593
  %i.ye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yd, ptr noundef nonnull @.str.51, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit595 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit595: ; preds = %bb.bm
  %i.yf = add nsw i32 %.41056, 9                  ; 2 uses
  %i.yg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.yd, i32 noundef %i.yf)
          to label %bb.bn unwind label %bb.ca     ; 2 uses

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit595
  %i.yh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yg, ptr noundef nonnull @.str.60, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit597 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit597: ; preds = %bb.bn
  %i.yi = load ptr, ptr %i.dn, align 8
  %i.yj = load i64, ptr %i.dp, align 8
  %i.yk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yg, ptr noundef %i.yi, i64 noundef %i.yj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit599 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit599: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit597
  %i.yl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit601 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit601: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit599
  %i.ym = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.yf)
          to label %bb.bo unwind label %bb.ca     ; 2 uses

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit601
  %i.yn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ym, ptr noundef nonnull @.str.61, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit603 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit603: ; preds = %bb.bo
  %i.yo = add nsw i32 %.41056, 10                 ; 2 uses
  %i.yp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ym, i32 noundef %i.yo)
          to label %bb.bp unwind label %bb.ca     ; 2 uses

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit603
  %i.yq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yp, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit605 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit605: ; preds = %bb.bp
  %i.yr = load ptr, ptr %i.dn, align 8
  %i.ys = load i64, ptr %i.dp, align 8
  %i.yt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yp, ptr noundef %i.yr, i64 noundef %i.ys)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit607 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit607: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit605
  %i.yu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit609 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit609: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit607
  %i.yv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.yo)
          to label %bb.bq unwind label %bb.ca     ; 2 uses

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit609
  %i.yw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yv, ptr noundef nonnull @.str.62, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611: ; preds = %bb.bq
  %i.yx = load i32, ptr %i.qx, align 4
  %i.yy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.yv, i32 noundef %i.yx)
          to label %bb.br unwind label %bb.ca     ; 2 uses

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611
  %i.yz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yy, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613: ; preds = %bb.br
  %i.za = add nsw i32 %.41056, 11                 ; 2 uses
  %i.zb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.yy, i32 noundef %i.za)
          to label %bb.bs unwind label %bb.ca     ; 2 uses

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613
  %i.zc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zb, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit615 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit615: ; preds = %bb.bs
  %i.zd = add nsw i32 %.41056, 12                 ; 2 uses
  %i.ze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.zb, i32 noundef %i.zd)
          to label %bb.bt unwind label %bb.ca     ; 2 uses

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit615
  %i.zf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ze, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617: ; preds = %bb.bt
  %i.zg = load ptr, ptr %i.dn, align 8
  %i.zh = load i64, ptr %i.dp, align 8
  %i.zi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ze, ptr noundef %i.zg, i64 noundef %i.zh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit619 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit619: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617
  %i.zj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit619
  %i.zk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.za)
          to label %bb.bu unwind label %bb.ca     ; 2 uses

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621
  %i.zl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zk, ptr noundef nonnull @.str.64, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit623 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit623: ; preds = %bb.bu
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.zm = fpext float %.sroa.0.0.vec.extract to double
  %i.zn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.zk, double noundef %i.zm)
          to label %_ZNSolsEf.exit625 unwind label %bb.ca ; 2 uses

_ZNSolsEf.exit625:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit623
  %i.zo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zn, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit627 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit627: ; preds = %_ZNSolsEf.exit625
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.zp = fpext float %.sroa.0.4.vec.extract to double
  %i.zq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.zn, double noundef %i.zp)
          to label %_ZNSolsEf.exit629 unwind label %bb.ca ; 2 uses

_ZNSolsEf.exit629:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit627
  %i.zr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zq, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit631 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit631: ; preds = %_ZNSolsEf.exit629
  %i.zs = fpext float %.sroa.10.0 to double
  %i.zt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.zq, double noundef %i.zs)
          to label %_ZNSolsEf.exit633 unwind label %bb.ca ; 2 uses

_ZNSolsEf.exit633:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit631
  %i.zu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zt, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit635 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit635: ; preds = %_ZNSolsEf.exit633
  %i.zv = load ptr, ptr %i.dn, align 8
  %i.zw = load i64, ptr %i.dp, align 8
  %i.zx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zt, ptr noundef %i.zv, i64 noundef %i.zw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit637 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit637: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit635
  %i.zy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit639 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit639: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit637
  %i.zz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.zd)
          to label %bb.bv unwind label %bb.ca     ; 2 uses

bb.bv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit639
  %i.aaa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zz, ptr noundef nonnull @.str.64, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit641 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit641: ; preds = %bb.bv
  %i.aab = fpext float %.sroa.0786.0.copyload to double
  %i.aac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.zz, double noundef %i.aab)
          to label %_ZNSolsEf.exit643 unwind label %bb.ca ; 2 uses

_ZNSolsEf.exit643:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit641
  %i.aad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aac, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit645 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit645: ; preds = %_ZNSolsEf.exit643
  %i.aae = fpext float %14 to double
  %i.aaf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aac, double noundef %i.aae)
          to label %_ZNSolsEf.exit647 unwind label %bb.ca ; 2 uses

_ZNSolsEf.exit647:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit645
  %i.aag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaf, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit649 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit649: ; preds = %_ZNSolsEf.exit647
  %21 = extractelement <2 x float> %4, i64 1
  %i.aah = fpext float %21 to double
  %i.aai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aaf, double noundef %i.aah)
          to label %_ZNSolsEf.exit651 unwind label %bb.ca ; 2 uses

_ZNSolsEf.exit651:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit649
  %i.aaj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aai, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit653 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit653: ; preds = %_ZNSolsEf.exit651
  %i.aak = load ptr, ptr %i.dn, align 8
  %i.aal = load i64, ptr %i.dp, align 8
  %i.aam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aai, ptr noundef %i.aak, i64 noundef %i.aal)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit655 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit655: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit653
  %i.aan = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit657 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit657: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit655
  %i.aao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.yc)
          to label %bb.bw unwind label %bb.ca     ; 2 uses

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit657
  %i.aap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aao, ptr noundef nonnull @.str.65, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit659 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit659: ; preds = %bb.bw
  %i.aaq = add nsw i32 %.41056, 14                ; 2 uses
  %i.aar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aao, i32 noundef %i.aaq)
          to label %bb.bx unwind label %bb.ca     ; 2 uses

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit659
  %i.aas = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aar, ptr noundef nonnull @.str.60, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit661 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit661: ; preds = %bb.bx
  %i.aat = load ptr, ptr %i.dn, align 8
  %i.aau = load i64, ptr %i.dp, align 8
  %i.aav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aar, ptr noundef %i.aat, i64 noundef %i.aau)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit663 unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit663: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit661
  %i.aaw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit665 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit665: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit663
  %i.aax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.aaq)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit665
  %i.aay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aax, ptr noundef nonnull @.str.66, i64 noundef 15)
          to label %bb.bz unwind label %bb.ca     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.aaz = add i32 %.41056, 15                    ; 5 uses
  %i.aba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671.peel unwind label %.loopexit.split-lp1146 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671.peel: ; preds = %bb.bz
  %i.abb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.aaz)
          to label %.lr.ph1033.peel.next unwind label %.loopexit.split-lp1146 ; 0 uses

._crit_edge1034:                                  ; preds = %bb.cb
  %i.abc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669 unwind label %bb.ch ; 0 uses

bb.ca:                                            ; preds = %bb.by, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit663, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit661, %bb.bx, %bb.bw, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit655, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit653, %_ZNSolsEf.exit651, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit649, %_ZNSolsEf.exit647, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit645, %_ZNSolsEf.exit643, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit641, %bb.bv, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit637, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit635, %_ZNSolsEf.exit633, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit631, %_ZNSolsEf.exit629, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit627, %_ZNSolsEf.exit625, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit623, %bb.bu, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit619, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617, %bb.bt, %bb.bs, %bb.br, %bb.bq, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit607, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit605, %bb.bp, %bb.bo, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit599, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit597, %bb.bn, %bb.bm, %bb.bl, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit589, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit587, %_ZNSolsEf.exit585, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit583, %_ZNSolsEf.exit581, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit579, %_ZNSolsEf.exit577, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit575, %bb.bk, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit571, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit569, %bb.bj, %bb.bi, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit563, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit561, %bb.bh, %bb.bg, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit555, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit553, %bb.bf, %bb.be, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit547, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit545, %bb.bd, %bb.bc, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit539, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit537, %bb.bb, %bb.ba, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit531, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529, %bb.az, %bb.ay, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit523, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit521, %bb.ax, %bb.aw, %bb.av, %bb.au, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit665, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit659, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit657, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit639, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit615, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit609, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit603, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit601, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit595, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit591, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit573, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit567, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit565, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit559, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit557, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit551, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit549, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit543, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit541, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit535, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit533, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit527, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit519, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit517, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit515
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit758

.loopexit1145:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671, %.lr.ph1033.peel.next
  %lpad.loopexit1150 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit758

.loopexit.split-lp1146:                           ; preds = %bb.bz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671.peel
  %lpad.loopexit.split-lp1151 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit758

.lr.ph1033.peel.next:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671.peel, %bb.cb
  %.02251032 = phi i32 [ %i.abh, %bb.cb ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671.peel ] ; 2 uses
  %i.abe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671 unwind label %.loopexit1145 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671: ; preds = %.lr.ph1033.peel.next
  %i.abf = add nsw i32 %.02251032, %i.aaz
  %i.abg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.abf)
          to label %bb.cb unwind label %.loopexit1145 ; 0 uses

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671
  %i.abh = add nuw nsw i32 %.02251032, 1          ; 2 uses
  %exitcond1143.not = icmp eq i32 %i.abh, %i.qt
  br i1 %exitcond1143.not, label %._crit_edge1034, label %.lr.ph1033.peel.next, !llvm.loop !32

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669: ; preds = %._crit_edge1034
  %i.abi = load ptr, ptr %i.dn, align 8
  %i.abj = load i64, ptr %i.dp, align 8
  %i.abk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.abi, i64 noundef %i.abj)
          to label %.lr.ph1036.preheader unwind label %bb.ch ; 0 uses

.lr.ph1036.preheader:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669
  %i.abl = add nsw i32 %i.qt, %i.aaz              ; 5 uses
  br label %.lr.ph1036

bb.cc:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit683
  %i.abm = add nsw i32 %i.abl, %i.qt              ; 5 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %wide.trip.count1158 = zext nneg i32 %i.qt to i64
  %i.abo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685.peel unwind label %.loopexit.split-lp1162 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685.peel: ; preds = %bb.cc
  %i.abp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.abl)
          to label %bb.cd unwind label %.loopexit.split-lp1162 ; 2 uses

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685.peel
  %i.abq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, ptr noundef nonnull @.str.68, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit687.peel unwind label %.loopexit.split-lp1162 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit687.peel: ; preds = %bb.cd
  %i.abr = load i32, ptr %i.qx, align 4
  %i.abs = add nsw i32 %i.abr, 1
  %i.abt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, i32 noundef %i.abs)
          to label %bb.ce unwind label %.loopexit.split-lp1162 ; 2 uses

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit687.peel
  %i.abu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abt, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689.peel unwind label %.loopexit.split-lp1162 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689.peel: ; preds = %bb.ce
  %i.abv = load i32, ptr %i.abn, align 4
  %i.abw = add nsw i32 %i.abv, 1
  %i.abx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.abt, i32 noundef %i.abw)
          to label %bb.cf unwind label %.loopexit.split-lp1162 ; 2 uses

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689.peel
  %i.aby = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abx, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit691.peel unwind label %.loopexit.split-lp1162 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit691.peel: ; preds = %bb.cf
  %i.abz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.abx, i32 noundef %i.abm)
          to label %bb.cg unwind label %.loopexit.split-lp1162 ; 2 uses

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit691.peel
  %i.aca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abz, ptr noundef nonnull @.str.69, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit693.peel unwind label %.loopexit.split-lp1162 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit693.peel: ; preds = %bb.cg
  %i.acb = load ptr, ptr %i.dn, align 8
  %i.acc = load i64, ptr %i.dp, align 8
  %i.acd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abz, ptr noundef %i.acb, i64 noundef %i.acc)
          to label %.peel.next unwind label %.loopexit.split-lp1162 ; 0 uses

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669, %._crit_edge1034
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit758

.lr.ph1036:                                       ; preds = %.lr.ph1036.preheader, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit683
  %.02241035 = phi i32 [ %i.acp, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit683 ], [ 0, %.lr.ph1036.preheader ] ; 3 uses
  %i.acf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit677 unwind label %bb.ck ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit677: ; preds = %.lr.ph1036
  %i.acg = add nsw i32 %.02241035, %i.aaz
  %i.ach = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.acg)
          to label %bb.ci unwind label %bb.ck     ; 2 uses

bb.ci:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit677
  %i.aci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ach, ptr noundef nonnull @.str.67, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679 unwind label %bb.ck ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679: ; preds = %bb.ci
  %i.acj = add nsw i32 %.02241035, %i.abl
  %i.ack = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ach, i32 noundef %i.acj)
          to label %bb.cj unwind label %bb.ck     ; 2 uses

bb.cj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679
  %i.acl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ack, ptr noundef nonnull @.str.60, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit681 unwind label %bb.ck ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit681: ; preds = %bb.cj
  %i.acm = load ptr, ptr %i.dn, align 8
  %i.acn = load i64, ptr %i.dp, align 8
  %i.aco = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ack, ptr noundef %i.acm, i64 noundef %i.acn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit683 unwind label %bb.ck ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit683: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit681
  %i.acp = add nuw nsw i32 %.02241035, 1          ; 2 uses
  %exitcond1153.not = icmp eq i32 %i.acp, %i.qt
  br i1 %exitcond1153.not, label %bb.cc, label %.lr.ph1036, !llvm.loop !34

bb.ck:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit681, %bb.cj, %bb.ci, %.lr.ph1036, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit677
  %i.acq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit758

.lr.ph1044.preheader:                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit695
  %i.acr = add nsw i32 %i.abm, %i.qt              ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm:bb.a
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP10aiVector3tIfEiELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP10aiVector3tIfEiELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP10aiVector3tIfEiELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP10aiVector3tIfEiELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.031, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.031, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #22
  br label %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float 1.000000e+00, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4
  %i.m = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.q
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp ult ptr %i.r, %i.t
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #22
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #22
  br label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.e
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.n, %bb.e ]
  ret ptr %.sroa.013.017
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!5 = distinct !{!5, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!8 = distinct !{!8, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!9 = !{!7, !4}
!10 = distinct !{null, null}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZSt16forward_as_tupleIJPK6aiNodeEESt5tupleIJDpOT_EES6_: argument 0"}
!26 = distinct !{!26, !"_ZSt16forward_as_tupleIJPK6aiNodeEESt5tupleIJDpOT_EES6_"}
!27 = distinct !{!27, !12}
!28 = !{}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12, !33}
!33 = !{!"llvm.loop.peeled.count", i32 1}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12, !33}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!51 = distinct !{!51, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = distinct !{!57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!58 = !{!56, !53, !50}
!59 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!60 = distinct !{!60, !12}
end_hunk_2
