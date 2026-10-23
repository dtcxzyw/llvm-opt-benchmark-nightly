Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/StepExporter?download=true
inline.NumInlined: 1077
inline.NumDeleted: 524
begin_hunk_0_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
  %i.mi = ptrtoint ptr %i.md to i64
  %i.mj = load i64, ptr %i.q, align 8             ; 2 uses
  %i.mk = urem i64 %i.mi, %i.mj                   ; 2 uses
  %i.ml = load ptr, ptr %3, align 8
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = load ptr, ptr %i.mm, align 8, !nonnull !39, !noundef !39
  %i.mo = load ptr, ptr %i.mn, align 8            ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = icmp eq ptr %i.md, %i.mq
  br i1 %i.mr, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459, label %.lr.ph.i.i.i.i450

.lr.ph.i.i.i.i450:                                ; preds = %bb.ab, %.lr.ph.i.i.i.i450
  %.020.i.i.i.i451 = phi ptr [ %i.ms, %.lr.ph.i.i.i.i450 ], [ %i.mo, %bb.ab ]
  %i.ms = load ptr, ptr %.020.i.i.i.i451, align 8, !nonnull !39, !noundef !39 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8            ; 2 uses
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = urem i64 %i.mv, %i.mj
  %.not19.i.i.i.i453 = icmp eq i64 %i.mw, %i.mk
  call void @llvm.assume(i1 %.not19.i.i.i.i453)
  %i.mx = icmp eq ptr %i.md, %i.mu
  br i1 %i.mx, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459, label %.lr.ph.i.i.i.i450, !llvm.loop !20

_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459: ; preds = %.lr.ph.i.i.i.i450, %.preheader897, %bb.ab
  %.sroa.06.1.i.i455 = phi ptr [ %.sroa.06.0.i.i457, %.preheader897 ], [ %i.mo, %bb.ab ], [ %i.ms, %.lr.ph.i.i.i.i450 ]
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i455, i64 16 ; 5 uses
  %i.mz = load i32, ptr %i.my, align 8
  %i.na = icmp sgt i32 %i.mz, -1
  br i1 %i.na, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459
  store i32 %.11053, ptr %i.my, align 8
  %i.nb = load float, ptr %i.lr, align 4
  %i.nc = load float, ptr %i.lv, align 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.ne = load float, ptr %i.lw, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.ng = load float, ptr %i.lx, align 4
  %i.nh = load float, ptr %i.md, align 4          ; 2 uses
  %i.ni = load float, ptr %i.nd, align 4          ; 2 uses
  %i.nj = fmul float %i.nc, %i.ni
  %i.nk = call float @llvm.fmuladd.f32(float %i.nb, float %i.nh, float %i.nj)
  %i.nl = load float, ptr %i.nf, align 4          ; 2 uses
  %i.nm = call float @llvm.fmuladd.f32(float %i.ne, float %i.nl, float %i.nk)
  %i.nn = fadd float %i.nm, %i.ng
  %i.no = load <8 x float>, ptr %i.ly, align 4    ; 4 uses
  %i.np = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.nq = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nr = shufflevector <8 x float> %i.no, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ns = fmul <2 x float> %i.nq, %i.nr
  %i.nt = shufflevector <8 x float> %i.no, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.nu = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.nv = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nt, <2 x float> %i.nv, <2 x float> %i.ns)
  %i.nx = shufflevector <8 x float> %i.no, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ny = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.nz = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nx, <2 x float> %i.nz, <2 x float> %i.nw)
  %i.ob = shufflevector <8 x float> %i.no, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.oc = fadd <2 x float> %i.ob, %i.oa           ; 2 uses
  %i.od = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461: ; preds = %bb.ac
  %i.oe = load i32, ptr %i.my, align 8
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.oe)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef nonnull @.str.47, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463: ; preds = %bb.ad
  %i.oh = fpext float %i.nn to double
  %i.oi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.of, double noundef %i.oh)
          to label %_ZNSolsEf.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463
  %i.oj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466: ; preds = %_ZNSolsEf.exit
  %i.ok = extractelement <2 x float> %i.oc, i64 0
  %i.ol = fpext float %i.ok to double
  %i.om = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, double noundef %i.ol)
          to label %_ZNSolsEf.exit468 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit468:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.om, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470: ; preds = %_ZNSolsEf.exit468
  %i.oo = extractelement <2 x float> %i.oc, i64 1
  %i.op = fpext float %i.oo to double
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.om, double noundef %i.op)
          to label %_ZNSolsEf.exit472 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit472:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474: ; preds = %_ZNSolsEf.exit472
  %i.os = load ptr, ptr %i.dm, align 8
  %i.ot = load i64, ptr %i.do, align 8
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef %i.os, i64 noundef %i.ot)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476
  %i.ow = load i32, ptr %i.my, align 8
  %i.ox = add nsw i32 %i.ow, 1
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.ox)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, ptr noundef nonnull @.str.48, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480: ; preds = %bb.ae
  %i.pa = load i32, ptr %i.my, align 8
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, i32 noundef %i.pa)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482: ; preds = %bb.af
  %i.pd = load ptr, ptr %i.dm, align 8
  %i.pe = load i64, ptr %i.do, align 8
  %i.pf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef %i.pd, i64 noundef %i.pe)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482
  %i.pg = add nsw i32 %.11053, 2
  %.pre1229 = load i32, ptr %i.ls, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484
  %i.ph = phi i32 [ %.pre1229, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484 ], [ %i.mb, %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459 ] ; 2 uses
  %.2 = phi i32 [ %i.pg, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484 ], [ %.11053, %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459 ] ; 2 uses
  %indvars.iv.next1179 = add nuw nsw i64 %indvars.iv1178, 1 ; 2 uses
  %i.pi = zext i32 %i.ph to i64
  %i.pj = icmp samesign ult i64 %indvars.iv.next1179, %i.pi
  br i1 %i.pj, label %bb.aa, label %._crit_edge1056, !llvm.loop !27

._crit_edge1107:                                  ; preds = %._crit_edge1094, %.preheader896
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.12, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit486 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph1106:                                       ; preds = %.preheader896, %._crit_edge1094
  %i.pl = phi ptr [ %i.px, %._crit_edge1094 ], [ %i.kv, %.preheader896 ] ; 2 uses
  %indvars.iv1224 = phi i64 [ %indvars.iv.next1225, %._crit_edge1094 ], [ 0, %.preheader896 ] ; 2 uses
  %.31105 = phi i32 [ %.4.lcssa, %._crit_edge1094 ], [ %.0199.lcssa, %.preheader896 ] ; 2 uses
  %.sroa.26.01101 = phi float [ %.sroa.26.1.lcssa, %._crit_edge1094 ], [ 8.000000e-01, %.preheader896 ] ; 2 uses
  %i.pm = phi <2 x float> [ %i.py, %._crit_edge1094 ], [ splat (float 8.000000e-01), %.preheader896 ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv1224
  %i.pq = load ptr, ptr %i.pp, align 8            ; 5 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 8            ; 2 uses
  %.not1115 = icmp eq i32 %i.ps, 0
  br i1 %.not1115, label %._crit_edge1094, label %.lr.ph1093

.lr.ph1093:                                       ; preds = %.lr.ph1106
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 208
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 16 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  br label %bb.ah

._crit_edge1094.loopexit:                         ; preds = %bb.ct
  %.pre1232 = load ptr, ptr %i.u, align 8
  br label %._crit_edge1094

._crit_edge1094:                                  ; preds = %._crit_edge1094.loopexit, %.lr.ph1106
  %i.px = phi ptr [ %i.pl, %.lr.ph1106 ], [ %.pre1232, %._crit_edge1094.loopexit ] ; 2 uses
  %.sroa.26.1.lcssa = phi float [ %.sroa.26.01101, %.lr.ph1106 ], [ %.sroa.26.3, %._crit_edge1094.loopexit ]
  %.4.lcssa = phi i32 [ %.31105, %.lr.ph1106 ], [ %.5, %._crit_edge1094.loopexit ]
  %i.py = phi <2 x float> [ %i.pm, %.lr.ph1106 ], [ %i.agt, %._crit_edge1094.loopexit ]
  %indvars.iv.next1225 = add nuw nsw i64 %indvars.iv1224, 1 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.qa = load i32, ptr %i.pz, align 8
  %i.qb = zext i32 %i.qa to i64
  %i.qc = icmp samesign ult i64 %indvars.iv.next1225, %i.qb
  br i1 %i.qc, label %.lr.ph1106, label %._crit_edge1107, !llvm.loop !28

bb.ah:                                            ; preds = %.lr.ph1093, %bb.ct
  %i.qd = phi i32 [ %i.ps, %.lr.ph1093 ], [ %i.ags, %bb.ct ]
  %indvars.iv1221 = phi i64 [ 0, %.lr.ph1093 ], [ %indvars.iv.next1222, %bb.ct ] ; 2 uses
  %.41091 = phi i32 [ %.31105, %.lr.ph1093 ], [ %.5, %bb.ct ] ; 17 uses
  %.sroa.26.11087 = phi float [ %.sroa.26.01101, %.lr.ph1093 ], [ %.sroa.26.3, %bb.ct ] ; 2 uses
  %i.qe = phi <2 x float> [ %i.pm, %.lr.ph1093 ], [ %i.agt, %bb.ct ] ; 2 uses
  %i.qf = load ptr, ptr %i.pt, align 8
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.qf, i64 %indvars.iv1221 ; 3 uses
  %i.qh = load i32, ptr %i.qg, align 8            ; 10 uses
  %i.qi = icmp slt i32 %i.qh, 3
  br i1 %i.qi, label %bb.ct, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.qj = zext nneg i32 %i.qh to i64              ; 7 uses
  %i.qk = shl nuw nsw i64 %i.qj, 2                ; 4 uses
  %i.ql = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qk) #25
          to label %.noexc488 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc488:                                        ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ql, i8 -1, i64 %i.qk, i1 false)
  %i.qm = mul nuw nsw i64 %i.qj, 12               ; 4 uses
  %i.qn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qm) #25
          to label %.lr.ph1065 unwind label %bb.aj ; 9 uses

.lr.ph1065:                                       ; preds = %.noexc488
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qn, i8 0, i64 %i.qm, i1 false)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 2 uses
  %i.qp = load i64, ptr %i.fd, align 8
  %.not.not.i.i495 = icmp eq i64 %i.qp, 0
  %i.qq = load i64, ptr %i.q, align 8             ; 2 uses
  %i.qr = load ptr, ptr %3, align 8
  br label %bb.ak

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit438, %bb.v, %bb.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480, %bb.ac, %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466, %_ZNSolsEf.exit468, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470, %_ZNSolsEf.exit472, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476, %bb.ae, %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319, %bb.t, %._crit_edge1040, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit283, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit285, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit293, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit301, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit303, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit305, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit307, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit309, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit311, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit313, %._crit_edge1047, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit317, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit328, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit332, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit336, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit340, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit342, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit344, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit348, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit352, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit354, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit356, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit358, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit360, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit362, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit364, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit366, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit368, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit372, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit380, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit382, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit384, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit386, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit388, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit390, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit392, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit394, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit396, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit398, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit400, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit404, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit406, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit408, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit410, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit412, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit414, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit416, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit418, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit420, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit422, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit424, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit426, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit430, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit432, %._crit_edge1051, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436, %._crit_edge1107, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit486, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit760, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit762
  %lpad.loopexit.split-lp1462 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %.noexc488
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit758

bb.ak:                                            ; preds = %.lr.ph1065, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %indvars.iv1181 = phi i64 [ 0, %.lr.ph1065 ], [ %indvars.iv.next1182, %_ZN10aiVector3tIfE9NormalizeEv.exit ] ; 4 uses
  %i.qt = load ptr, ptr %i.pu, align 8
  %i.qu = load ptr, ptr %i.qo, align 8
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv1181
  %i.qw = load i32, ptr %i.qv, align 4
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [12 x i8], ptr %i.qt, i64 %i.qx ; 6 uses
  br i1 %.not.not.i.i495, label %.preheader, label %bb.al

.preheader:                                       ; preds = %bb.ak, %.preheader
  %.sroa.06.0.in.i.i503 = phi ptr [ %.sroa.06.0.i.i504, %.preheader ], [ %i.r, %bb.ak ]
  %.sroa.06.0.i.i504 = load ptr, ptr %.sroa.06.0.in.i.i503, align 8, !nonnull !39, !noundef !39 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i504, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = icmp eq ptr %i.qy, %i.ra
  br i1 %i.rb, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506, label %.preheader, !llvm.loop !19

bb.al:                                            ; preds = %bb.ak
  %i.rc = ptrtoint ptr %i.qy to i64
  %i.rd = urem i64 %i.rc, %i.qq                   ; 2 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.rd
  %i.rf = load ptr, ptr %i.re, align 8, !nonnull !39, !noundef !39
  %i.rg = load ptr, ptr %i.rf, align 8            ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = icmp eq ptr %i.qy, %i.ri
  br i1 %i.rj, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506, label %.lr.ph.i.i.i.i497

.lr.ph.i.i.i.i497:                                ; preds = %bb.al, %.lr.ph.i.i.i.i497
  %.020.i.i.i.i498 = phi ptr [ %i.rk, %.lr.ph.i.i.i.i497 ], [ %i.rg, %bb.al ]
  %i.rk = load ptr, ptr %.020.i.i.i.i498, align 8, !nonnull !39, !noundef !39 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8            ; 2 uses
  %i.rn = ptrtoint ptr %i.rm to i64
  %i.ro = urem i64 %i.rn, %i.qq
  %.not19.i.i.i.i500 = icmp eq i64 %i.ro, %i.rd
  call void @llvm.assume(i1 %.not19.i.i.i.i500)
  %i.rp = icmp eq ptr %i.qy, %i.rm
  br i1 %i.rp, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506, label %.lr.ph.i.i.i.i497, !llvm.loop !20

_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506: ; preds = %.lr.ph.i.i.i.i497, %.preheader, %bb.al
  %.sroa.06.1.i.i502 = phi ptr [ %.sroa.06.0.i.i504, %.preheader ], [ %i.rg, %bb.al ], [ %i.rk, %.lr.ph.i.i.i.i497 ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i502, i64 16
  %i.rr = load i32, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv1181
  store i32 %i.rr, ptr %i.rs, align 4
  %indvars.iv.next1182 = add nuw nsw i64 %indvars.iv1181, 1 ; 3 uses
  %.not1270 = icmp eq i64 %indvars.iv.next1182, %i.qj ; 2 uses
  %i.rt = load ptr, ptr %i.pu, align 8
  %i.ru = load ptr, ptr %i.qo, align 8
  %.sink1330.in.idx = select i1 %.not1270, i64 0, i64 %indvars.iv.next1182
  %.sink1330.in = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.sink1330.in.idx
  %.sink1330 = load i32, ptr %.sink1330.in, align 4
  %i.rv = zext i32 %.sink1330 to i64
  %i.rw = getelementptr inbounds nuw [12 x i8], ptr %i.rt, i64 %i.rv ; 2 uses
  %i.rx = load <2 x float>, ptr %i.rw, align 4
  %i.ry = load <2 x float>, ptr %i.qy, align 4
  %i.rz = fsub <2 x float> %i.rx, %i.ry           ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.sb = load float, ptr %i.sa, align 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.sd = load float, ptr %i.sc, align 4
  %i.se = fsub float %i.sb, %i.sd                 ; 4 uses
  %i.sf = getelementptr inbounds nuw [12 x i8], ptr %i.qn, i64 %indvars.iv1181 ; 3 uses
  store <2 x float> %i.rz, ptr %i.sf, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  store float %i.se, ptr %.sroa.5.0..sroa_idx, align 4
  %foldExtExtBinop = fmul <2 x float> %i.rz, %i.rz
  %i.sg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.sh = extractelement <2 x float> %i.rz, i64 0 ; 2 uses
  %i.si = call float @llvm.fmuladd.f32(float %i.sh, float %i.sh, float %i.sg)
  %i.sj = call noundef float @llvm.fmuladd.f32(float %i.se, float %i.se, float %i.si) ; 2 uses
  %i.sk = call noundef float @sqrtf(float noundef %i.sj) #21
  %i.sl = fcmp oeq float %i.sk, 0.000000e+00
  br i1 %i.sl, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506
  %i.sm = call noundef float @sqrtf(float noundef %i.sj) #21 ; 2 uses
  %i.sn = fcmp oeq float %i.sm, 0.000000e+00
  br i1 %i.sn, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.so = fdiv float 1.000000e+00, %i.sm          ; 2 uses
  %i.sp = insertelement <2 x float> poison, float %i.so, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x float> %i.sq, %i.rz
  store <2 x float> %i.sr, ptr %i.sf, align 4
  %i.ss = fmul float %i.so, %i.se
  store float %i.ss, ptr %.sroa.5.0..sroa_idx, align 4
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.an, %bb.am, %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506
  br i1 %.not1270, label %._crit_edge1066, label %bb.ak, !llvm.loop !29

._crit_edge1066:                                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.st = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  %.sroa.0794.0.copyload = load float, ptr %i.st, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.su = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %i.sv = load float, ptr %i.qn, align 4          ; 2 uses
  %i.sw = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 4 uses
  %i.sx = load <2 x float>, ptr %i.su, align 4    ; 3 uses
  %i.sy = fneg <2 x float> %i.sx
  %i.sz = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ta = insertelement <2 x float> %i.sz, float %.sroa.0794.0.copyload, i64 1
  %i.tb = fmul <2 x float> %i.ta, %i.sy
  %i.tc = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.td = insertelement <2 x float> %i.tc, float %i.sv, i64 1
  %i.te = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sw, <2 x float> %i.td, <2 x float> %i.tb) ; 5 uses
  %i.tf = fneg float %i.sv
  %i.tg = extractelement <2 x float> %i.sw, i64 0 ; 2 uses
  %i.th = fmul float %i.tg, %i.tf
  %i.ti = extractelement <2 x float> %i.sx, i64 0
  %i.tj = call float @llvm.fmuladd.f32(float %.sroa.0794.0.copyload, float %i.ti, float %i.th) ; 4 uses
  %foldExtExtBinop1403 = fmul <2 x float> %i.te, %i.te
  %i.tk = extractelement <2 x float> %foldExtExtBinop1403, i64 1
  %i.tl = extractelement <2 x float> %i.te, i64 0 ; 2 uses
  %i.tm = call float @llvm.fmuladd.f32(float %i.tl, float %i.tl, float %i.tk)
  %i.tn = call noundef float @llvm.fmuladd.f32(float %i.tj, float %i.tj, float %i.tm)
  %i.to = call noundef float @sqrtf(float noundef %i.tn) #21 ; 2 uses
  %i.tp = fcmp oeq float %i.to, 0.000000e+00      ; 2 uses
  %i.tq = fdiv float 1.000000e+00, %i.to          ; 2 uses
  %i.tr = insertelement <2 x float> poison, float %i.tq, i64 0
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tt = fmul <2 x float> %i.te, %i.ts
  %i.tu = fmul float %i.tq, %i.tj
  %.sroa.14.0 = select i1 %i.tp, float %i.tj, float %i.tu
  %.sroa.0.0 = select i1 %i.tp, <2 x float> %i.te, <2 x float> %i.tt ; 2 uses
  %i.tv = load ptr, ptr %i.pv, align 8            ; 4 uses
  %.not.i = icmp ne ptr %i.tv, null
  %i.tw = load i32, ptr %i.pw, align 4
  %i.tx = icmp ne i32 %i.tw, 0
  %i.ty = select i1 %.not.i, i1 %i.tx, i1 false
  br i1 %i.ty, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge1066
  %i.tz = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8            ; 3 uses
  %i.ub = load i32, ptr %i.ua, align 4
  %i.uc = zext i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw [16 x i8], ptr %i.tv, i64 %i.uc ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = load float, ptr %i.ue, align 4
  %i.ug = fadd float %i.uf, 0.000000e+00
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  %i.ui = load i32, ptr %i.uh, align 4
  %i.uj = zext i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [16 x i8], ptr %i.tv, i64 %i.uj ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load float, ptr %i.ul, align 4
  %i.un = fadd float %i.ug, %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.up = load i32, ptr %i.uo, align 4
  %i.uq = zext i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw [16 x i8], ptr %i.tv, i64 %i.uq ; 2 uses
  %i.us = load <2 x float>, ptr %i.ud, align 4
  %i.ut = fadd <2 x float> %i.us, zeroinitializer
  %i.uu = load <2 x float>, ptr %i.uk, align 4
  %i.uv = fadd <2 x float> %i.ut, %i.uu
  %i.uw = load <2 x float>, ptr %i.ur, align 4
  %i.ux = fadd <2 x float> %i.uv, %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.uz = load float, ptr %i.uy, align 4
  %i.va = fadd float %i.un, %i.uz
  %i.vb = fdiv <2 x float> %i.ux, splat (float 3.000000e+00)
  %i.vc = fdiv float %i.va, 3.000000e+00
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge1066
  %.sroa.26.2 = phi float [ %i.vc, %bb.ao ], [ %.sroa.26.11087, %._crit_edge1066 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
  %i.zj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zi, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611: ; preds = %bb.bm
  %i.zk = add nsw i32 %.41091, 11                 ; 2 uses
  %i.zl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.zi, i32 noundef %i.zk)
          to label %bb.bn unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611
  %i.zm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zl, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613: ; preds = %bb.bn
  %i.zn = add nsw i32 %.41091, 12                 ; 2 uses
  %i.zo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.zl, i32 noundef %i.zn)
          to label %bb.bo unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613
  %i.zp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zo, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit615 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit615: ; preds = %bb.bo
  %i.zq = load ptr, ptr %i.dm, align 8
  %i.zr = load i64, ptr %i.do, align 8
  %i.zs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zo, ptr noundef %i.zq, i64 noundef %i.zr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit617 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit617: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit615
  %i.zt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit619 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit619: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit617
  %i.zu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.zk)
          to label %bb.bp unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit619
  %i.zv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zu, ptr noundef nonnull @.str.64, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621: ; preds = %bb.bp
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.zw = fpext float %.sroa.0.0.vec.extract to double
  %i.zx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.zu, double noundef %i.zw)
          to label %_ZNSolsEf.exit623 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit623:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621
  %i.zy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zx, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit625 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit625: ; preds = %_ZNSolsEf.exit623
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.zz = fpext float %.sroa.0.4.vec.extract to double
  %i.aaa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.zx, double noundef %i.zz)
          to label %_ZNSolsEf.exit627 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit627:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit625
  %i.aab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaa, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit629 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit629: ; preds = %_ZNSolsEf.exit627
  %i.aac = fpext float %.sroa.14.0 to double
  %i.aad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aaa, double noundef %i.aac)
          to label %_ZNSolsEf.exit631 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit631:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit629
  %i.aae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aad, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit633 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit633: ; preds = %_ZNSolsEf.exit631
  %i.aaf = load ptr, ptr %i.dm, align 8
  %i.aag = load i64, ptr %i.do, align 8
  %i.aah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aad, ptr noundef %i.aaf, i64 noundef %i.aag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit635 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit635: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit633
  %i.aai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit637 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit637: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit635
  %i.aaj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.zn)
          to label %bb.bq unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit637
  %i.aak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaj, ptr noundef nonnull @.str.64, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit639 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit639: ; preds = %bb.bq
  %i.aal = fpext float %.sroa.0794.0.copyload to double
  %i.aam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aaj, double noundef %i.aal)
          to label %_ZNSolsEf.exit641 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit641:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit639
  %i.aan = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aam, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit643 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit643: ; preds = %_ZNSolsEf.exit641
  %i.aao = fpext float %i.tg to double
  %i.aap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aam, double noundef %i.aao)
          to label %_ZNSolsEf.exit645 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit645:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit643
  %i.aaq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aap, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit647 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit647: ; preds = %_ZNSolsEf.exit645
  %i.aar = extractelement <2 x float> %i.sw, i64 1
  %i.aas = fpext float %i.aar to double
  %i.aat = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aap, double noundef %i.aas)
          to label %_ZNSolsEf.exit649 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit649:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit647
  %i.aau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aat, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit651 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit651: ; preds = %_ZNSolsEf.exit649
  %i.aav = load ptr, ptr %i.dm, align 8
  %i.aaw = load i64, ptr %i.do, align 8
  %i.aax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aat, ptr noundef %i.aav, i64 noundef %i.aaw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit653 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit653: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit651
  %i.aay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit655 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit655: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit653
  %i.aaz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.ym)
          to label %bb.br unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit655
  %i.aba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaz, ptr noundef nonnull @.str.65, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit657 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit657: ; preds = %bb.br
  %i.abb = add nsw i32 %.41091, 14                ; 2 uses
  %i.abc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aaz, i32 noundef %i.abb)
          to label %bb.bs unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit657
  %i.abd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abc, ptr noundef nonnull @.str.60, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit659 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit659: ; preds = %bb.bs
  %i.abe = load ptr, ptr %i.dm, align 8
  %i.abf = load i64, ptr %i.do, align 8
  %i.abg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abc, ptr noundef %i.abe, i64 noundef %i.abf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit661 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit661: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit659
  %i.abh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit663 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit663: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit661
  %i.abi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.abb)
          to label %bb.bt unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit663
  %i.abj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abi, ptr noundef nonnull @.str.66, i64 noundef 15)
          to label %bb.bu unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.abk = add i32 %.41091, 15                    ; 5 uses
  %i.abl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669.peel unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669.peel: ; preds = %bb.bu
  %i.abm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.abk)
          to label %.lr.ph1068.peel.next unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge1069:                                  ; preds = %bb.bv
  %i.abn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit667 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph1068.peel.next:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669.peel, %bb.bv
  %.01981067 = phi i32 [ %i.abr, %bb.bv ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669.peel ] ; 2 uses
  %i.abo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669: ; preds = %.lr.ph1068.peel.next
  %i.abp = add nsw i32 %.01981067, %i.abk
  %i.abq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.abp)
          to label %bb.bv unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669
  %i.abr = add nuw nsw i32 %.01981067, 1          ; 2 uses
  %exitcond1185.not = icmp eq i32 %i.abr, %i.qh
  br i1 %exitcond1185.not, label %._crit_edge1069, label %.lr.ph1068.peel.next, !llvm.loop !30

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit667: ; preds = %._crit_edge1069
  %i.abs = load ptr, ptr %i.dm, align 8
  %i.abt = load i64, ptr %i.do, align 8
  %i.abu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.abs, i64 noundef %i.abt)
          to label %.lr.ph1071.preheader unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph1071.preheader:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit667
  %i.abv = add nsw i32 %i.qh, %i.abk              ; 5 uses
  br label %.lr.ph1071

bb.bw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit681
  %i.abw = add nsw i32 %i.abv, %i.qh              ; 5 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.aby = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit683.peel unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit683.peel: ; preds = %bb.bw
  %i.abz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.abv)
          to label %bb.bx unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit683.peel
  %i.aca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abz, ptr noundef nonnull @.str.68, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685.peel unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685.peel: ; preds = %bb.bx
  %i.acb = load i32, ptr %i.ql, align 4
  %i.acc = add nsw i32 %i.acb, 1
  %i.acd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.abz, i32 noundef %i.acc)
          to label %bb.by unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685.peel
  %i.ace = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acd, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit687.peel unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit687.peel: ; preds = %bb.by
  %i.acf = load i32, ptr %i.abx, align 4
  %i.acg = add nsw i32 %i.acf, 1
  %i.ach = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.acd, i32 noundef %i.acg)
          to label %bb.bz unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit687.peel
  %i.aci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ach, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689.peel unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689.peel: ; preds = %bb.bz
  %i.acj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ach, i32 noundef %i.abw)
          to label %bb.ca unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689.peel
  %i.ack = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acj, ptr noundef nonnull @.str.69, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit691.peel unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit691.peel: ; preds = %bb.ca
  %i.acl = load ptr, ptr %i.dm, align 8
  %i.acm = load i64, ptr %i.do, align 8
  %i.acn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acj, ptr noundef %i.acl, i64 noundef %i.acm)
          to label %.peel.next unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph1071:                                       ; preds = %.lr.ph1071.preheader, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit681
  %.01971070 = phi i32 [ %i.acy, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit681 ], [ 0, %.lr.ph1071.preheader ] ; 3 uses
  %i.aco = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit675 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit675: ; preds = %.lr.ph1071
  %i.acp = add nsw i32 %.01971070, %i.abk
  %i.acq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.acp)
          to label %bb.cb unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit675
  %i.acr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acq, ptr noundef nonnull @.str.67, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit677 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit677: ; preds = %bb.cb
  %i.acs = add nsw i32 %.01971070, %i.abv
  %i.act = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.acq, i32 noundef %i.acs)
          to label %bb.cc unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit677
  %i.acu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.act, ptr noundef nonnull @.str.60, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679: ; preds = %bb.cc
  %i.acv = load ptr, ptr %i.dm, align 8
  %i.acw = load i64, ptr %i.do, align 8
  %i.acx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.act, ptr noundef %i.acv, i64 noundef %i.acw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit681 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit681: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679
  %i.acy = add nuw nsw i32 %.01971070, 1          ; 2 uses
  %exitcond1193.not = icmp eq i32 %i.acy, %i.qh
  br i1 %exitcond1193.not, label %bb.bw, label %.lr.ph1071, !llvm.loop !31

.lr.ph1079.preheader:                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit693
  %i.acz = add nsw i32 %i.abw, %i.qh              ; 3 uses
  br label %.lr.ph1079

.peel.next:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit691.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit693
  %indvars.iv1194 = phi i64 [ %i.ada, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit693 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit691.peel ] ; 7 uses
  %i.ada = add nuw nsw i64 %indvars.iv1194, 1     ; 4 uses
  %i.adb = icmp eq i64 %i.ada, %i.qj
  br i1 %i.adb, label %bb.cd, label %bb.ci

bb.cd:                                            ; preds = %.peel.next
  %i.adc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit695 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit695: ; preds = %bb.cd
  %i.add = trunc i64 %indvars.iv1194 to i32
  %i.ade = add i32 %i.abv, %i.add
  %i.adf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.ade)
          to label %bb.ce unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit695
  %i.adg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adf, ptr noundef nonnull @.str.68, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit697 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit697: ; preds = %bb.ce
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv1194
  %i.adi = load i32, ptr %i.adh, align 4
  %i.adj = add nsw i32 %i.adi, 1
  %i.adk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.adf, i32 noundef %i.adj)
          to label %bb.cf unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit697
  %i.adl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adk, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit699 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit699: ; preds = %bb.cf
  %i.adm = load i32, ptr %i.ql, align 4
  %i.adn = add nsw i32 %i.adm, 1
  %i.ado = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.adk, i32 noundef %i.adn)
          to label %bb.cg unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit699
  %i.adp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ado, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit701 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit701: ; preds = %bb.cg
  %i.adq = trunc i64 %indvars.iv1194 to i32
  %i.adr = add i32 %i.abw, %i.adq
  %i.ads = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ado, i32 noundef %i.adr)
          to label %bb.ch unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit701
  %i.adt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ads, ptr noundef nonnull @.str.60, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit703.invoke unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit703.invoke: ; preds = %bb.ch, %bb.cm
  %i.adu = phi ptr [ %i.aep, %bb.cm ], [ %i.ads, %bb.ch ]
  %i.adv = load ptr, ptr %i.dm, align 8
  %i.adw = load i64, ptr %i.do, align 8
  %i.adx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adu, ptr noundef %i.adv, i64 noundef %i.adw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit693 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ci:                                            ; preds = %.peel.next
  %i.ady = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit707 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit707: ; preds = %bb.ci
  %i.adz = trunc i64 %indvars.iv1194 to i32
  %i.aea = add i32 %i.abv, %i.adz
  %i.aeb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.aea)
          to label %bb.cj unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit707
  %i.aec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aeb, ptr noundef nonnull @.str.68, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit709 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit709: ; preds = %bb.cj
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv1194
  %i.aee = load i32, ptr %i.aed, align 4
  %i.aef = add nsw i32 %i.aee, 1
  %i.aeg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aeb, i32 noundef %i.aef)
          to label %bb.ck unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ck:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit709
  %i.aeh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aeg, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit711 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit711: ; preds = %bb.ck
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.ada
  %i.aej = load i32, ptr %i.aei, align 4
  %i.aek = add nsw i32 %i.aej, 1
  %i.ael = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aeg, i32 noundef %i.aek)
          to label %bb.cl unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit711
  %i.aem = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ael, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit713 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit713: ; preds = %bb.cl
  %i.aen = trunc i64 %indvars.iv1194 to i32
  %i.aeo = add i32 %i.abw, %i.aen
  %i.aep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ael, i32 noundef %i.aeo)
          to label %bb.cm unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit713
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aep, ptr noundef nonnull @.str.60, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit703.invoke unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit693: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit703.invoke
  %exitcond1199.not = icmp eq i64 %i.ada, %i.qj
  br i1 %exitcond1199.not, label %.lr.ph1079.preheader, label %.peel.next, !llvm.loop !32

.lr.ph1083.preheader:                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit727
  %i.aer = add nsw i32 %i.acz, %i.qh              ; 2 uses
  br label %.lr.ph1083

.lr.ph1079:                                       ; preds = %.lr.ph1079.preheader, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit727
  %indvars.iv1207 = phi i64 [ 0, %.lr.ph1079.preheader ], [ %indvars.iv.next1208, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit727 ] ; 4 uses
  %i.aes = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719: ; preds = %.lr.ph1079
  %i.aet = trunc i64 %indvars.iv1207 to i32
  %i.aeu = add i32 %i.abw, %i.aet
  %i.aev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.aeu)
          to label %bb.cn unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719
  %i.aew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aev, ptr noundef nonnull @.str.70, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit721 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit721: ; preds = %bb.cn
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv1207
  %i.aey = load i32, ptr %i.aex, align 4
  %i.aez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aev, i32 noundef %i.aey)
          to label %bb.co unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.co:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit721
  %i.afa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aez, ptr noundef nonnull @.str.63, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit723 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit723: ; preds = %bb.co
  %i.afb = trunc i64 %indvars.iv1207 to i32
  %i.afc = add i32 %i.acz, %i.afb
  %i.afd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aez, i32 noundef %i.afc)
          to label %bb.cp unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit723
  %i.afe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afd, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit725 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit725: ; preds = %bb.cp
  %i.aff = load ptr, ptr %i.dm, align 8
  %i.afg = load i64, ptr %i.do, align 8
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afd, ptr noundef %i.aff, i64 noundef %i.afg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit727 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit727: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit725
  %indvars.iv.next1208 = add nuw nsw i64 %indvars.iv1207, 1 ; 2 uses
  %exitcond1212.not = icmp eq i64 %indvars.iv.next1208, %i.qj
  br i1 %exitcond1212.not, label %.lr.ph1083.preheader, label %.lr.ph1079, !llvm.loop !33

.lr.ph1083:                                       ; preds = %.lr.ph1083.preheader, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit735
  %.01941081 = phi i32 [ %i.afs, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit735 ], [ 0, %.lr.ph1083.preheader ] ; 3 uses
  %i.afi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit729 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit729: ; preds = %.lr.ph1083
  %i.afj = add nsw i32 %.01941081, %i.acz
  %i.afk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.afj)
          to label %bb.cq unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit729
  %i.afl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afk, ptr noundef nonnull @.str.71, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit731 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit731: ; preds = %bb.cq
  %i.afm = add nsw i32 %.01941081, %i.aer
  %i.afn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.afk, i32 noundef %i.afm)
          to label %bb.cr unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit731
  %i.afo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afn, ptr noundef nonnull @.str.72, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit733 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit733: ; preds = %bb.cr
  %i.afp = load ptr, ptr %i.dm, align 8
  %i.afq = load i64, ptr %i.do, align 8
  %i.afr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afn, ptr noundef %i.afp, i64 noundef %i.afq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit735 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit735: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit733
  %i.afs = add nuw nsw i32 %.01941081, 1          ; 2 uses
  %exitcond1214.not = icmp eq i32 %i.afs, %i.qh
  br i1 %exitcond1214.not, label %.lr.ph1085, label %.lr.ph1083, !llvm.loop !34

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit754
  %i.aft = mul nuw nsw i32 %i.qh, 5
  %i.afu = add i32 %i.abk, %i.aft
  call void @_ZdlPvm(ptr noundef nonnull %i.qn, i64 noundef %i.qm) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.qk) #23
  %.pre1231 = load i32, ptr %i.pr, align 8
  br label %bb.ct

.lr.ph1085:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit735, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit754
  %indvars.iv1215 = phi i64 [ %indvars.iv.next1216, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit754 ], [ 0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit735 ] ; 3 uses
  %i.afv = getelementptr inbounds nuw [12 x i8], ptr %i.qn, i64 %indvars.iv1215 ; 3 uses
  %i.afw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit738 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit738: ; preds = %.lr.ph1085
  %i.afx = trunc i64 %indvars.iv1215 to i32
  %i.afy = add i32 %i.aer, %i.afx
  %i.afz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.afy)
          to label %bb.cs unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit738
  %i.aga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afz, ptr noundef nonnull @.str.64, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit740 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit740: ; preds = %bb.cs
  %i.agb = load float, ptr %i.afv, align 4
  %i.agc = fpext float %i.agb to double
  %i.agd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afz, double noundef %i.agc)
          to label %_ZNSolsEf.exit742 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit742:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit740
  %i.age = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agd, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit744 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit744: ; preds = %_ZNSolsEf.exit742
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afv, i64 4
  %i.agg = load float, ptr %i.agf, align 4
  %i.agh = fpext float %i.agg to double
  %i.agi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.agd, double noundef %i.agh)
          to label %_ZNSolsEf.exit746 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit746:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit744
  %i.agj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agi, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748: ; preds = %_ZNSolsEf.exit746
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agl = load float, ptr %i.agk, align 4
  %i.agm = fpext float %i.agl to double
  %i.agn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.agi, double noundef %i.agm)
          to label %_ZNSolsEf.exit750 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit750:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748
  %i.ago = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agn, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit752 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit752: ; preds = %_ZNSolsEf.exit750
  %i.agp = load ptr, ptr %i.dm, align 8
  %i.agq = load i64, ptr %i.do, align 8
  %i.agr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agn, ptr noundef %i.agp, i64 noundef %i.agq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit754 unwind label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit754: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit752
  %indvars.iv.next1216 = add nuw nsw i64 %indvars.iv1215, 1 ; 2 uses
  %exitcond1220.not = icmp eq i64 %indvars.iv.next1216, %i.qj
  br i1 %exitcond1220.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph1085, !llvm.loop !35

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679, %bb.cc, %bb.cb, %.lr.ph1071, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit677, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit675, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit703.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit695, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit697, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit699, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit701, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit707, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit709, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit711, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit713, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit752, %_ZNSolsEf.exit750, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748, %_ZNSolsEf.exit746, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit744, %_ZNSolsEf.exit742, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit740, %bb.cs, %.lr.ph1085, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit738, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit731, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit729, %.lr.ph1083, %bb.cq, %bb.cr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit733, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit723, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit721, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719, %.lr.ph1079, %bb.cn, %bb.co, %bb.cp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit725, %.lr.ph1068.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit669.peel, %bb.bu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit691.peel, %bb.ca, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689.peel, %bb.bz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit687.peel, %bb.by, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685.peel, %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit683.peel, %bb.bw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit667, %._crit_edge1069, %bb.bt, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit661, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit659, %bb.bs, %bb.br, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit653, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit651, %_ZNSolsEf.exit649, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit647, %_ZNSolsEf.exit645, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit643, %_ZNSolsEf.exit641, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit639, %bb.bq, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit635, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit633, %_ZNSolsEf.exit631, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit629, %_ZNSolsEf.exit627, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit625, %_ZNSolsEf.exit623, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621, %bb.bp, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit617, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit615, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit605, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit603, %bb.bk, %bb.bj, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit597, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit595, %bb.bi, %bb.bh, %bb.bg, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit587, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit585, %_ZNSolsEf.exit583, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit581, %_ZNSolsEf.exit579, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit577, %_ZNSolsEf.exit575, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit573, %bb.bf, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit569, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit567, %bb.be, %bb.bd, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit561, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit559, %bb.bc, %bb.bb, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit553, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit551, %bb.ba, %bb.az, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit545, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit543, %bb.ay, %bb.ax, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit537, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit535, %bb.aw, %bb.av, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit527, %bb.au, %bb.at, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit521, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit519, %bb.as, %bb.ar, %bb.aq, %bb.ap, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit513, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit515, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit517, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit523, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit531, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit533, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit539, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit541, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit547, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit549, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit555, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit557, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit563, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit565, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit571, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit589, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit591, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit599, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit601, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit607, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit609, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit619, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit637, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit655, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit657, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit663
  %lpad.loopexit.split-lp1417 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qn, i64 noundef %i.qm) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit758

bb.ct:                                            ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ags = phi i32 [ %i.qd, %bb.ah ], [ %.pre1231, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %.sroa.26.3 = phi float [ %.sroa.26.11087, %bb.ah ], [ %.sroa.26.2, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %.5 = phi i32 [ %.41091, %bb.ah ], [ %i.afu, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.agt = phi <2 x float> [ %i.qe, %bb.ah ], [ %i.vd, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %indvars.iv.next1222 = add nuw nsw i64 %indvars.iv1221, 1 ; 2 uses
  %i.agu = zext i32 %i.ags to i64
  %i.agv = icmp samesign ult i64 %indvars.iv.next1222, %i.agu
  br i1 %i.agv, label %bb.ah, label %._crit_edge1094.loopexit, !llvm.loop !36

_ZNSt6vectorIiSaIiEED2Ev.exit758:                 ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj
  %.pn253.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1417, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit756.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qs, %bb.aj ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.qk) #23
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit486: ; preds = %._crit_edge1107
  %i.agw = load ptr, ptr %i.dm, align 8
  %i.agx = load i64, ptr %i.do, align 8
  %i.agy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.agw, i64 noundef %i.agx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit760 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit760: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit486
  %i.agz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.73, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit762 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit762: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit760
  %i.aha = load ptr, ptr %i.dm, align 8
  %i.ahb = load i64, ptr %i.do, align 8
  %i.ahc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.aha, i64 noundef %i.ahb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit764 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit764: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ahd = load ptr, ptr %i.r, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ahd, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i765

.lr.ph.i.i.i.i765:                                ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit764, %.lr.ph.i.i.i.i765
  %.06.i.i.i.i = phi ptr [ %i.ahe, %.lr.ph.i.i.i.i765 ], [ %i.ahd, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit764 ] ; 2 uses
  %i.ahe = load ptr, ptr %.06.i.i.i.i, align 8    ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i766 = icmp eq ptr %i.ahe, null
  br i1 %.not.i.i.i.i766, label %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i765, !llvm.loop !37

_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i765, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit764
  %i.ahf = load ptr, ptr %3, align 8
  %i.ahg = load i64, ptr %i.q, align 8
  %i.ahh = shl i64 %i.ahg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ahf, i8 0, i64 %i.ahh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.ahi = load ptr, ptr %3, align 8              ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.p
  br i1 %i.ahj, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ahk = load i64, ptr %i.q, align 8
  %i.ahl = shl i64 %i.ahk, 3
  call void @_ZdlPvm(ptr noundef %i.ahi, i64 noundef %i.ahl) #23
  br label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit

_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i.i.i767 = icmp eq ptr %.sroa.0847.0.lcssa, null
  br i1 %.not.i.i.i767, label %_ZNSt6vectorIiSaIiEED2Ev.exit768, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit
  %i.ahm = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.ahn = sub i64 %i.ahm, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0847.0.lcssa, i64 noundef %i.ahn) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit768

_ZNSt6vectorIiSaIiEED2Ev.exit768:                 ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit, %bb.cv
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit758, %bb.z
  %.pn263.pn = phi { ptr, i32 } [ %.pn253.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit758 ], [ %i.ma, %bb.z ], [ %lpad.loopexit.split-lp1462, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.body

.body:                                            ; preds = %.loopexit913, %.loopexit.split-lp914.loopexit.split-lp.loopexit.split-lp, %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %.loopexit.split-lp
  %.sroa.16.3 = phi ptr [ %.sroa.16.1.lcssa, %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.16.0.lcssa, %.loopexit.split-lp ], [ %.sroa.16.1.lcssa, %.loopexit913 ], [ %.sroa.11.11027, %.loopexit.split-lp914.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0847.3 = phi ptr [ %.sroa.0847.1.lcssa, %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.0847.0.lcssa, %.loopexit.split-lp ], [ %.sroa.0847.1.lcssa, %.loopexit913 ], [ %.sroa.0847.11028, %.loopexit.split-lp914.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn268.pn = phi { ptr, i32 } [ %i.di, %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.pn263.pn, %.loopexit.split-lp ], [ %lpad.loopexit915, %.loopexit913 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp914.loopexit.split-lp.loopexit.split-lp ]
  %i.aho = load ptr, ptr %i.r, align 8            ; 2 uses
  %.not5.i.i.i.i769 = icmp eq ptr %i.aho, null
  br i1 %.not5.i.i.i.i769, label %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i773, label %.lr.ph.i.i.i.i770

.lr.ph.i.i.i.i770:                                ; preds = %.body, %.lr.ph.i.i.i.i770
  %.06.i.i.i.i771 = phi ptr [ %i.ahp, %.lr.ph.i.i.i.i770 ], [ %i.aho, %.body ] ; 2 uses
  %i.ahp = load ptr, ptr %.06.i.i.i.i771, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i771, i64 noundef 24) #23
  %.not.i.i.i.i772 = icmp eq ptr %i.ahp, null
  br i1 %.not.i.i.i.i772, label %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i773, label %.lr.ph.i.i.i.i770, !llvm.loop !37

_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i773: ; preds = %.lr.ph.i.i.i.i770, %.body
  %i.ahq = load ptr, ptr %3, align 8
  %i.ahr = load i64, ptr %i.q, align 8
  %i.ahs = shl i64 %i.ahr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ahq, i8 0, i64 %i.ahs, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.aht = load ptr, ptr %3, align 8              ; 2 uses
  %i.ahu = icmp eq ptr %i.aht, %i.p
  br i1 %i.ahu, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit774, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i773
  %i.ahv = load i64, ptr %i.q, align 8
  %i.ahw = shl i64 %i.ahv, 3
  call void @_ZdlPvm(ptr noundef %i.aht, i64 noundef %i.ahw) #23
  br label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit774

_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit774: ; preds = %_ZNSt10_HashtableIP10aiVector3tIfESt4pairIKS2_iESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i773, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i.i.i775 = icmp eq ptr %.sroa.0847.3, null
  br i1 %.not.i.i.i775, label %_ZNSt6vectorIiSaIiEED2Ev.exit776, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit774
  %i.ahx = ptrtoint ptr %.sroa.16.3 to i64
  %i.ahy = ptrtoint ptr %.sroa.0847.3 to i64
  %i.ahz = sub i64 %i.ahx, %i.ahy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0847.3, i64 noundef %i.ahz) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit776

_ZNSt6vectorIiSaIiEED2Ev.exit776:                 ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEED2Ev.exit774, %bb.cx
  resume { ptr, i32 } %.pn268.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
end_hunk_1
