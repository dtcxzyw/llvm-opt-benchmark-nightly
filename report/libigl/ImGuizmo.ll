Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
bb.z:                                             ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i
  %i.zl = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4 ; 4 uses
  %i.zm = shufflevector <4 x float> %i.zl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.zn = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.wa, <4 x i32> <i32 4, i32 poison, i32 5, i32 3>
  %i.zo = shufflevector <4 x float> %i.zn, <4 x float> %i.wb, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 3 uses
  %i.zp = fmul <4 x float> %i.zm, %i.zo
  %i.zq = shufflevector <4 x float> %i.zl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sink60.i.i, i64 0
  %i.zs = shufflevector <4 x float> %i.zr, <4 x float> %i.wa, <4 x i32> <i32 0, i32 6, i32 7, i32 3> ; 3 uses
  %i.zt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zq, <4 x float> %i.zs, <4 x float> %i.zp)
  %i.zu = shufflevector <4 x float> %i.zl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.zv = insertelement <4 x float> %i.vz, float 0.000000e+00, i64 3
  %i.zw = shufflevector <4 x float> %i.zv, <4 x float> %i.wb, <4 x i32> <i32 0, i32 1, i32 7, i32 3> ; 3 uses
  %i.zx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zu, <4 x float> %i.zw, <4 x float> %i.zt)
  %i.zy = shufflevector <4 x float> %i.zl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.zz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zy, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.zx)
  %.sroa.7128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aaa = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4 ; 4 uses
  %i.aab = shufflevector <4 x float> %i.aaa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aac = fmul <4 x float> %i.aab, %i.zo
  %i.aad = shufflevector <4 x float> %i.aaa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aad, <4 x float> %i.zs, <4 x float> %i.aac)
  %i.aaf = shufflevector <4 x float> %i.aaa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaf, <4 x float> %i.zw, <4 x float> %i.aae)
  %i.aah = shufflevector <4 x float> %i.aaa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aah, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.aag)
  %.sroa.11132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aaj = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4 ; 4 uses
  %i.aak = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aal = fmul <4 x float> %i.aak, %i.zo
  %i.aam = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aan = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aam, <4 x float> %i.zs, <4 x float> %i.aal)
  %i.aao = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aao, <4 x float> %i.zw, <4 x float> %i.aan)
  %i.aaq = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaq, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.aap)
  store <4 x float> %i.zz, ptr %4, align 4
  store <4 x float> %i.aai, ptr %.sroa.7128.0..sroa_idx.i, align 4
  store <4 x float> %i.aar, ptr %.sroa.11132.0..sroa_idx.i, align 4
  %.sroa.15136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aas = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.wa, <4 x i32> <i32 4, i32 poison, i32 5, i32 3>
  %i.aat = shufflevector <4 x float> %i.aas, <4 x float> %i.wb, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.aau = fmul <4 x float> %i.aat, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.aav = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sink60.i.i, i64 0
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> %i.wa, <4 x i32> <i32 0, i32 6, i32 7, i32 3>
  %i.aax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaw, <4 x float> zeroinitializer, <4 x float> %i.aau)
  %i.aay = insertelement <4 x float> %i.vz, float -0.000000e+00, i64 3
  %i.aaz = shufflevector <4 x float> %i.aay, <4 x float> %i.wb, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %i.aba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaz, <4 x float> zeroinitializer, <4 x float> %i.aax)
  %i.abb = fadd <4 x float> %i.aba, zeroinitializer
  store <4 x float> %i.abb, ptr %.sroa.15136.0..sroa_idx.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.15136.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), i64 16, i1 false), !tbaa.struct !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not25, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.abc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !10 ; 4 uses
  %i.abd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !10 ; 4 uses
  %i.abe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !10 ; 3 uses
  %i.abf = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 252), align 4, !tbaa !10 ; 3 uses
  %i.abg = shufflevector <2 x float> %i.abc, <2 x float> %i.abd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.abh = shufflevector <2 x float> %i.abe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abi = shufflevector <4 x float> %i.abg, <4 x float> %i.abh, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.abj = shufflevector <2 x float> %i.abf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abk = shufflevector <4 x float> %i.abi, <4 x float> %i.abj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.abl = fmul <4 x float> %i.abk, zeroinitializer
  %i.abm = shufflevector <2 x float> %i.abc, <2 x float> %i.abd, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.abn = shufflevector <4 x float> %i.abm, <4 x float> %i.abh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.abo = shufflevector <4 x float> %i.abn, <4 x float> %i.abj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abo, <4 x float> zeroinitializer, <4 x float> %i.abl)
  %i.abq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 212), align 4, !tbaa !10 ; 4 uses
  %i.abr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 228), align 4, !tbaa !10 ; 4 uses
  %i.abs = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 244), align 4, !tbaa !10 ; 3 uses
  %i.abt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 260), align 4, !tbaa !10 ; 3 uses
  %i.abu = shufflevector <2 x float> %i.abq, <2 x float> %i.abr, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.abv = shufflevector <2 x float> %i.abs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abw = shufflevector <4 x float> %i.abu, <4 x float> %i.abv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.abx = shufflevector <2 x float> %i.abt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aby = shufflevector <4 x float> %i.abw, <4 x float> %i.abx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aby, <4 x float> zeroinitializer, <4 x float> %i.abp)
  %i.aca = shufflevector <2 x float> %i.abq, <2 x float> %i.abr, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.acb = shufflevector <4 x float> %i.aca, <4 x float> %i.abv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.acc = shufflevector <4 x float> %i.acb, <4 x float> %i.abx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.acd = fadd <4 x float> %i.acc, %i.abz        ; 4 uses
  %i.ace = shufflevector <2 x float> %i.abc, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acf = fmul <3 x float> %i.vx, %i.ace
  %i.acg = shufflevector <2 x float> %i.abc, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ach = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acg, <3 x float> %i.vw, <3 x float> %i.acf)
  %i.aci = shufflevector <2 x float> %i.abq, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aci, <3 x float> %i.vv, <3 x float> %i.ach)
  %i.ack = shufflevector <2 x float> %i.abq, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ack, <3 x float> zeroinitializer, <3 x float> %i.acj) ; 3 uses
  %i.acm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 4 uses
  %i.acn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 4 uses
  %i.aco = shufflevector <3 x float> %i.acl, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.acp = fmul <4 x float> %i.aco, %i.acn
  %i.acq = shufflevector <3 x float> %i.acl, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.acr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acq, <4 x float> %i.acm, <4 x float> %i.acp)
  %i.acs = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 4 uses
  %i.act = shufflevector <3 x float> %i.acl, <3 x float> poison, <4 x i32> zeroinitializer
  %i.acu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.act, <4 x float> %i.acs, <4 x float> %i.acr)
  %i.acv = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 4 uses
  %i.acw = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acw, <4 x float> %i.acv, <4 x float> %i.acu)
  store <4 x float> %i.acx, ptr %5, align 4
  %.sroa.7121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.acy = shufflevector <2 x float> %i.abd, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acz = fmul <3 x float> %i.vx, %i.acy
  %i.ada = shufflevector <2 x float> %i.abd, <2 x float> poison, <3 x i32> zeroinitializer
  %i.adb = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ada, <3 x float> %i.vw, <3 x float> %i.acz)
  %i.adc = shufflevector <2 x float> %i.abr, <2 x float> poison, <3 x i32> zeroinitializer
  %i.add = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adc, <3 x float> %i.vv, <3 x float> %i.adb)
  %i.ade = shufflevector <2 x float> %i.abr, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ade, <3 x float> zeroinitializer, <3 x float> %i.add) ; 3 uses
  %i.adg = shufflevector <3 x float> %i.adf, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adh = fmul <4 x float> %i.adg, %i.acn
  %i.adi = shufflevector <3 x float> %i.adf, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adi, <4 x float> %i.acm, <4 x float> %i.adh)
  %i.adk = shufflevector <3 x float> %i.adf, <3 x float> poison, <4 x i32> zeroinitializer
  %i.adl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adk, <4 x float> %i.acs, <4 x float> %i.adj)
  %i.adm = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adm, <4 x float> %i.acv, <4 x float> %i.adl)
  store <4 x float> %i.adn, ptr %.sroa.7121.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ado = shufflevector <2 x float> %i.abe, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adp = fmul <3 x float> %i.vx, %i.ado
  %i.adq = shufflevector <2 x float> %i.abe, <2 x float> poison, <3 x i32> zeroinitializer
  %i.adr = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adq, <3 x float> %i.vw, <3 x float> %i.adp)
  %i.ads = shufflevector <2 x float> %i.abs, <2 x float> poison, <3 x i32> zeroinitializer
  %i.adt = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ads, <3 x float> %i.vv, <3 x float> %i.adr)
  %i.adu = shufflevector <2 x float> %i.abs, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adv = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adu, <3 x float> zeroinitializer, <3 x float> %i.adt) ; 3 uses
  %i.adw = shufflevector <3 x float> %i.adv, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adx = fmul <4 x float> %i.adw, %i.acn
  %i.ady = shufflevector <3 x float> %i.adv, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ady, <4 x float> %i.acm, <4 x float> %i.adx)
  %i.aea = shufflevector <3 x float> %i.adv, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aeb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aea, <4 x float> %i.acs, <4 x float> %i.adz)
  %i.aec = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aec, <4 x float> %i.acv, <4 x float> %i.aeb)
  store <4 x float> %i.aed, ptr %.sroa.11.0..sroa_idx.i, align 4
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aee = shufflevector <2 x float> %i.abf, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aef = fmul <3 x float> %i.vx, %i.aee
  %i.aeg = shufflevector <2 x float> %i.abf, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aeh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aeg, <3 x float> %i.vw, <3 x float> %i.aef)
  %i.aei = shufflevector <2 x float> %i.abt, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aej = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aei, <3 x float> %i.vv, <3 x float> %i.aeh)
  %i.aek = shufflevector <2 x float> %i.abt, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ael = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aek, <3 x float> zeroinitializer, <3 x float> %i.aej) ; 3 uses
  %i.aem = shufflevector <3 x float> %i.ael, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aen = fmul <4 x float> %i.aem, %i.acn
  %i.aeo = shufflevector <3 x float> %i.ael, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aeo, <4 x float> %i.acm, <4 x float> %i.aen)
  %i.aeq = shufflevector <3 x float> %i.ael, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aer = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aeq, <4 x float> %i.acs, <4 x float> %i.aep)
  %i.aes = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aet = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aes, <4 x float> %i.acv, <4 x float> %i.aer)
  store <4 x float> %i.aet, ptr %.sroa.15.0..sroa_idx.i, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.is, i64 296
  %i.aev = load i8, ptr %i.aeu, align 8, !tbaa !47, !range !33, !noundef !34
  %i.aew = trunc nuw i8 %i.aev to i1
  br i1 %i.aew, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.aex = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.af:                                            ; preds = %bb.g
  %i.aey = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.aez = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 8), align 8, !tbaa !69
  %i.afa = icmp eq i32 %i.aez, 0
  %i.afb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.afc = trunc nuw i8 %i.afb to i1
  br i1 %i.afc, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  %i.afd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 700), align 4, !tbaa !15
  %i.afe = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 672), align 8, !tbaa !14
  %i.aff = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %i.afg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 4 uses
  %i.afh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !10 ; 2 uses
  %i.afi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !10 ; 2 uses
  %i.afj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 676), align 4, !tbaa !10 ; 2 uses
  %i.afk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !10 ; 3 uses
  %i.afl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !10 ; 3 uses
  %i.afm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !10 ; 3 uses
  %i.afn = shufflevector <2 x float> %i.afm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.afo = insertelement <2 x float> %i.afm, float %i.afe, i64 1
  %i.afp = fmul <2 x float> %i.afn, %i.afo
  %65 = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !10 ; 3 uses
  %66 = shufflevector <3 x float> %65, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afq = shufflevector <2 x float> %i.afk, <2 x float> %i.afl, <2 x i32> <i32 1, i32 3>
  %i.afr = fmul <2 x float> %66, %i.afq
  %i.afs = shufflevector <3 x float> %65, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aft = shufflevector <2 x float> %i.afk, <2 x float> %i.afl, <2 x i32> <i32 0, i32 2>
  %i.afu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afs, <2 x float> %i.aft, <2 x float> %i.afr)
  %67 = shufflevector <3 x float> %65, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.afv = shufflevector <2 x float> %i.afh, <2 x float> %i.afi, <2 x i32> <i32 0, i32 2>
  %i.afw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> %i.afv, <2 x float> %i.afu) ; 2 uses
  %i.afx = extractelement <2 x float> %i.afw, i64 1 ; 2 uses
  %i.afy = tail call float @llvm.fabs.f32(float %i.afx)
  %i.afz = fcmp olt float %i.afy, f0x34000000
  %i.aga = extractelement <2 x float> %i.afw, i64 0
  %i.agb = fsub float %i.aga, %i.afd
  %i.agc = fneg float %i.agb
  %i.agd = fdiv float %i.agc, %i.afx
  %i.age = tail call float @llvm.fabs.f32(float %i.agd)
  %i.agf = select i1 %i.afz, float 1.000000e+00, float %i.age
  %i.agg = insertelement <2 x float> poison, float %i.agf, i64 0
  %i.agh = shufflevector <2 x float> %i.agg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agi = fmul <2 x float> %i.afl, %i.agh
  %i.agj = fmul <2 x float> %i.afi, %i.agh
  %i.agk = fadd <2 x float> %i.afk, %i.agi
  %i.agl = fadd <2 x float> %i.afh, %i.agj
  %i.agm = shufflevector <2 x float> %i.afj, <2 x float> %i.afn, <2 x i32> <i32 0, i32 3>
  %i.agn = shufflevector <2 x float> %i.afm, <2 x float> %i.afj, <2 x i32> <i32 0, i32 3>
  %i.ago = fmul <2 x float> %i.agm, %i.agn
  %i.agp = fsub <2 x float> %i.agk, %i.afp
  %i.agq = fsub <2 x float> %i.agl, %i.ago
  %i.agr = fsub <2 x float> %i.agp, %i.aff        ; 3 uses
  %i.ags = fsub <2 x float> %i.agq, %i.afg        ; 2 uses
  %i.agt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71 ; 2 uses
  %i.agu = add i32 %i.agt, -1
  %or.cond.i = icmp ult i32 %i.agu, 3
  br i1 %or.cond.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.agv = zext nneg i32 %i.agt to i64
  %i.agw = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 %i.agv ; 2 uses
  %i.agx = getelementptr i8, ptr %i.agw, i64 -16
  %i.agy = getelementptr i8, ptr %i.agw, i64 -8
  %i.agz = load <2 x float>, ptr %i.agy, align 4, !tbaa !10 ; 2 uses
  %i.aha = extractelement <2 x float> %i.agz, i64 0
  %i.ahb = load <2 x float>, ptr %i.agx, align 4, !tbaa !10 ; 3 uses
  %foldExtExtBinop223 = fmul <2 x float> %i.agr, %i.ahb
  %i.ahc = extractelement <2 x float> %foldExtExtBinop223, i64 1
  %i.ahd = extractelement <2 x float> %i.ahb, i64 0
  %i.ahe = extractelement <2 x float> %i.agr, i64 0
  %i.ahf = tail call float @llvm.fmuladd.f32(float %i.ahd, float %i.ahe, float %i.ahc)
  %i.ahg = extractelement <2 x float> %i.ags, i64 0
  %i.ahh = tail call noundef float @llvm.fmuladd.f32(float %i.aha, float %i.ahg, float %i.ahf)
  %i.ahi = insertelement <2 x float> poison, float %i.ahh, i64 0
  %i.ahj = shufflevector <2 x float> %i.ahi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahk = fmul <2 x float> %i.ahb, %i.ahj
  %i.ahl = fmul <2 x float> %i.agz, %i.ahj
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.0209.0.i = phi <2 x float> [ %i.ahk, %bb.ah ], [ %i.agr, %bb.ag ] ; 2 uses
  %.sroa.11218.0.i = phi <2 x float> [ %i.ahl, %bb.ah ], [ %i.ags, %bb.ag ] ; 3 uses
  %.not39.i = icmp eq ptr %6, null
  br i1 %.not39.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  %i.ahm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10 ; 2 uses
  %i.ahn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8, !tbaa !10 ; 3 uses
  %i.aho = shufflevector <2 x float> %i.afg, <2 x float> %i.aff, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ahp = shufflevector <2 x float> %.sroa.11218.0.i, <2 x float> %.sroa.0209.0.i, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ahq = fadd <3 x float> %i.aho, %i.ahp
  %i.ahr = shufflevector <2 x float> %i.ahn, <2 x float> %i.ahm, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ahs = fsub <3 x float> %i.ahq, %i.ahr        ; 4 uses
  %i.aht = shufflevector <3 x float> %i.ahs, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ahu = fadd <2 x float> %i.afg, %.sroa.11218.0.i
  %.sroa.3.12.vec.insert.i.i80.i = fsub <2 x float> %i.ahu, %i.ahn
  store <2 x float> %i.aht, ptr %54, align 16
  %i.ahv = getelementptr inbounds nuw i8, ptr %54, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i80.i, ptr %i.ahv, align 8
  br i1 %i.afa, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %55, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false)
  %i.ahw = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %55, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  %i.ahy = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.ahz = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.aia = load <4 x float>, ptr %55, align 16, !tbaa !10 ; 4 uses
  %i.aib = load <4 x float>, ptr %i.ahw, align 16, !tbaa !10 ; 4 uses
  %i.aic = load <4 x float>, ptr %i.ahx, align 16, !tbaa !10 ; 4 uses
  %i.aid = shufflevector <4 x float> %i.aic, <4 x float> %i.aia, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aie = shufflevector <4 x float> %i.aid, <4 x float> %i.aib, <3 x i32> <i32 0, i32 1, i32 5> ; 2 uses
  %i.aif = fmul <3 x float> %i.aie, %i.aie
  %i.aig = shufflevector <4 x float> %i.aic, <4 x float> %i.aia, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> %i.aib, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.aii = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aih, <3 x float> %i.aih, <3 x float> %i.aif)
  %i.aij = shufflevector <4 x float> %i.aic, <4 x float> %i.aia, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aik = shufflevector <4 x float> %i.aij, <4 x float> %i.aib, <3 x i32> <i32 0, i32 1, i32 6> ; 2 uses
  %i.ail = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aik, <3 x float> %i.aik, <3 x float> %i.aii)
  %i.aim = tail call <3 x float> @llvm.sqrt.v3f32(<3 x float> %i.ail)
  %i.ain = fdiv <3 x float> splat (float 1.000000e+00), %i.aim ; 3 uses
  %68 = shufflevector <3 x float> %i.ain, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aio = fmul <4 x float> %68, %i.aia           ; 2 uses
  store <4 x float> %i.aio, ptr %55, align 16, !tbaa !10
  %69 = shufflevector <3 x float> %i.ain, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aip = fmul <4 x float> %69, %i.aib           ; 2 uses
  store <4 x float> %i.aip, ptr %i.ahw, align 16, !tbaa !10
  %70 = shufflevector <3 x float> %i.ain, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aiq = fmul <4 x float> %70, %i.aic           ; 2 uses
  store <4 x float> %i.aiq, ptr %i.ahx, align 16, !tbaa !10
  %i.air = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %56, ptr noundef nonnull align 4 dereferenceable(64) %55, i1 noundef zeroext false) ; 0 uses
  %i.ais = load <4 x float>, ptr %56, align 16, !tbaa !16
  %i.ait = load <4 x float>, ptr %i.ahy, align 16, !tbaa !16
  %i.aiu = shufflevector <3 x float> %i.ahs, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aiv = fmul <4 x float> %i.aiu, %i.ait
  %i.aiw = shufflevector <3 x float> %i.ahs, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aix = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiw, <4 x float> %i.ais, <4 x float> %i.aiv)
  %i.aiy = load <4 x float>, ptr %i.ahz, align 16, !tbaa !16
  %i.aiz = shufflevector <3 x float> %i.ahs, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aja = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiz, <4 x float> %i.aiy, <4 x float> %i.aix)
  store <4 x float> %i.aja, ptr %54, align 16, !tbaa !10
  call fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr noundef nonnull align 4 dereferenceable(16) %54, ptr noundef readonly %6)
  %i.ajb = load <3 x float>, ptr %54, align 16, !tbaa !10 ; 3 uses
  %i.ajc = shufflevector <3 x float> %i.ajb, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ajd = fmul <4 x float> %i.aip, %i.ajc
  %i.aje = shufflevector <3 x float> %i.ajb, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ajf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aje, <4 x float> %i.aio, <4 x float> %i.ajd)
  %i.ajg = shufflevector <3 x float> %i.ajb, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ajh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajg, <4 x float> %i.aiq, <4 x float> %i.ajf)
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr noundef nonnull align 4 dereferenceable(16) %54, ptr noundef readonly %6)
  %i.aji = load <4 x float>, ptr %54, align 16, !tbaa !10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ajj = phi <4 x float> [ %i.aji, %bb.al ], [ %i.ajh, %bb.ak ] ; 2 uses
  %i.ajk = shufflevector <4 x float> %i.ajj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ajl = fadd <2 x float> %i.ahm, %i.ajk
  %i.ajm = fsub <2 x float> %i.ajl, %i.aff
  %i.ajn = shufflevector <4 x float> %i.ajj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ajo = fadd <2 x float> %i.ahn, %i.ajn
  %i.ajp = fsub <2 x float> %i.ajo, %i.afg
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %.sroa.0209.1.i = phi <2 x float> [ %.sroa.0209.0.i, %bb.ai ], [ %i.ajm, %bb.am ] ; 2 uses
  %.sroa.11218.1.i = phi <2 x float> [ %.sroa.11218.0.i, %bb.ai ], [ %i.ajp, %bb.am ] ; 2 uses
  br i1 %.not25, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.11218.8.vec.extract222.i = extractelement <2 x float> %.sroa.11218.1.i, i64 0
  store float 1.000000e+00, ptr %5, align 4
  %.sroa.8157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8157.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.25.0..sroa_idx.i, align 4
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.30.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.ajq = shufflevector <2 x float> %.sroa.0209.1.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajr = shufflevector <4 x float> %i.ajq, <4 x float> <float 1.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  store <4 x float> %i.ajr, ptr %.sroa.47.0..sroa_idx.i, align 4
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %.sroa.11218.8.vec.extract222.i, ptr %.sroa.67.0..sroa_idx.i, align 4
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ajs = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !10 ; 4 uses
  %71 = shufflevector <4 x float> %i.ajs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %72 = fmul <4 x float> %71, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %73 = shufflevector <4 x float> %i.ajs, <4 x float> poison, <4 x i32> zeroinitializer
  %74 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %73, <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %72)
  %75 = shufflevector <4 x float> %i.ajs, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %76 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %74)
  %i.ajt = shufflevector <2 x float> %.sroa.0209.1.i, <2 x float> %.sroa.11218.1.i, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.aju = insertelement <4 x float> %i.ajt, float 1.000000e+00, i64 3 ; 4 uses
  %77 = shufflevector <4 x float> %i.ajs, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %78 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aju, <4 x float> %77, <4 x float> %76)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ajv = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !10 ; 4 uses
  %79 = shufflevector <4 x float> %i.ajv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %80 = fmul <4 x float> %79, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %81 = shufflevector <4 x float> %i.ajv, <4 x float> poison, <4 x i32> zeroinitializer
  %82 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %81, <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %80)
  %83 = shufflevector <4 x float> %i.ajv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %84 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %83, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %82)
  %85 = shufflevector <4 x float> %i.ajv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %86 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aju, <4 x float> %85, <4 x float> %84)
  %.sroa.11.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ajw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !10 ; 4 uses
  %87 = shufflevector <4 x float> %i.ajw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %88 = fmul <4 x float> %87, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %89 = shufflevector <4 x float> %i.ajw, <4 x float> poison, <4 x i32> zeroinitializer
  %90 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %89, <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %88)
  %91 = shufflevector <4 x float> %i.ajw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %92 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %90)
  %93 = shufflevector <4 x float> %i.ajw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %94 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aju, <4 x float> %93, <4 x float> %92)
  %.sroa.15.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ajx = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !10 ; 4 uses
  %95 = shufflevector <4 x float> %i.ajx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ajy = fmul <4 x float> %95, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ajz = shufflevector <4 x float> %i.ajx, <4 x float> poison, <4 x i32> zeroinitializer
  %96 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajz, <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ajy)
  %97 = shufflevector <4 x float> %i.ajx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aka = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %97, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %96)
  %98 = shufflevector <4 x float> %i.ajx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.akb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aju, <4 x float> %98, <4 x float> %i.aka)
  store <4 x float> %78, ptr %4, align 4
  store <4 x float> %86, ptr %.sroa.7.0..sroa_idx.i, align 4
  store <4 x float> %94, ptr %.sroa.11.0..sroa_idx.i42, align 4
  store <4 x float> %i.akb, ptr %.sroa.15.0..sroa_idx.i45, align 4
  %i.akc = getelementptr inbounds nuw i8, ptr %i.aey, i64 296
  %i.akd = load i8, ptr %i.akc, align 8, !tbaa !47, !range !33, !noundef !34
  %i.ake = trunc nuw i8 %i.akd to i1
  br i1 %i.ake, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.akf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.as:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  %i.akg = call fastcc noundef i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr noundef nonnull %57) ; 4 uses
  %.not.i30 = icmp eq i32 %i.akg, 0               ; 2 uses
  br i1 %.not.i30, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.akh = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.akh, label %bb.av, label %_ZN8ImGuizmoL11CanActivateEv.exit.i31

bb.av:                                            ; preds = %bb.au
  %i.aki = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.aki, label %_ZN8ImGuizmoL11CanActivateEv.exit.i31, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.akj = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  %brmerge169 = or i1 %.not.i30, %i.akj
  br i1 %brmerge169, label %_ZN8ImGuizmoL11CanActivateEv.exit.i31, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  store i32 %i.akg, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %58, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.akk = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.akk, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.akl = getelementptr inbounds nuw i8, ptr %58, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.akl, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.akm = getelementptr inbounds nuw i8, ptr %58, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.akm, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.akn = getelementptr inbounds nuw i8, ptr %58, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.akn, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.ako = getelementptr inbounds nuw i8, ptr %58, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ako, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.akp = getelementptr inbounds nuw i8, ptr %58, i64 96
  %i.akq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), align 4, !tbaa !10
  %i.akr = fneg <2 x float> %i.akq
  %i.aks = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 580), align 4, !tbaa !10
  %i.akt = fneg <2 x float> %i.aks
  store <2 x float> %i.akr, ptr %i.akp, align 16
  %i.aku = getelementptr inbounds nuw i8, ptr %58, i64 104
  store <2 x float> %i.akt, ptr %i.aku, align 8
  %i.akv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !12
  %i.akw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %58, i64 4
  %i.aky = load <2 x float>, ptr %i.akx, align 4, !tbaa !10 ; 3 uses
  %i.akz = load <2 x float>, ptr %58, align 16, !tbaa !10 ; 2 uses
  %i.ala = extractelement <2 x float> %i.aky, i64 0
  %i.alb = shufflevector <2 x float> %i.aky, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.alc = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.alb, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.ald = shufflevector <2 x float> %i.akz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ale = shufflevector <4 x float> %i.ald, <4 x float> %i.alc, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.alf = shufflevector <4 x float> %i.ale, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.alg = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ald, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.alh = shufflevector <4 x float> %i.alb, <4 x float> %i.alg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ali = getelementptr inbounds nuw i8, ptr %58, i64 20
  %i.alj = load <2 x float>, ptr %i.ali, align 4, !tbaa !10 ; 3 uses
  %i.alk = load <2 x float>, ptr %i.akk, align 16, !tbaa !10 ; 2 uses
  %i.all = extractelement <2 x float> %i.alj, i64 0
  %i.alm = shufflevector <2 x float> %i.alj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aln = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.alm, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.alo = shufflevector <2 x float> %i.alk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.alp = shufflevector <4 x float> %i.alo, <4 x float> %i.aln, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.alq = shufflevector <4 x float> %i.alp, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.alr = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.alo, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.als = shufflevector <4 x float> %i.alm, <4 x float> %i.alr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.alt = getelementptr inbounds nuw i8, ptr %58, i64 36
  %i.alu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 3 uses
  %i.alv = fsub float %i.alu, %i.akv              ; 3 uses
  %i.alw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 4 uses
  %i.alx = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 544), align 8, !tbaa !10
  %i.aly = fsub <2 x float> %i.alw, %i.alx        ; 4 uses
  %foldExtExtBinop229 = fmul <2 x float> %i.aly, %i.aly
  %i.alz = extractelement <2 x float> %foldExtExtBinop229, i64 0
  %i.ama = call float @llvm.fmuladd.f32(float %i.alv, float %i.alv, float %i.alz)
  %i.amb = extractelement <2 x float> %i.aly, i64 1 ; 2 uses
  %i.amc = call float @llvm.fmuladd.f32(float %i.amb, float %i.amb, float %i.ama)
  %sqrt.i.i.i108.i = call noundef float @llvm.sqrt.f32(float %i.amc)
  %i.amd = fdiv float 1.000000e+00, %sqrt.i.i.i108.i
  %i.ame = shufflevector <2 x float> %i.aly, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.amf = insertelement <4 x float> %i.ame, float -0.000000e+00, i64 3
  %i.amg = insertelement <4 x float> %i.amf, float %i.alv, i64 2
  %i.amh = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.amd, i64 0
  %i.ami = shufflevector <4 x float> %i.amh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.amj = fmul <4 x float> %i.amg, %i.ami        ; 4 uses
  %i.amk = extractelement <4 x float> %i.amj, i64 2
  %i.aml = fneg float %i.amk                      ; 3 uses
  %i.amm = fneg <4 x float> %i.amj                ; 3 uses
  %i.amn = fmul float %i.ala, %i.aml
  %i.amo = insertelement <4 x float> %i.amj, float -0.000000e+00, i64 3 ; 2 uses
  %i.amp = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.amn, i64 0
  %i.amq = shufflevector <2 x float> %i.aky, <2 x float> %i.akz, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.amr = fmul <4 x float> %i.amq, %i.amm
  %i.ams = shufflevector <4 x float> %i.amp, <4 x float> %i.amr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.amt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ale, <4 x float> %i.amo, <4 x float> %i.ams) ; 3 uses
  %i.amu = fneg <4 x float> %i.amt
  %i.amv = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.amu, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.amw = fneg <4 x float> %i.amt
  %i.amx = shufflevector <4 x float> %i.amv, <4 x float> %i.amw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.amy = fmul <4 x float> %i.alf, %i.amx
  %i.amz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alh, <4 x float> %i.amt, <4 x float> %i.amy) ; 5 uses
  %foldExtExtBinop231 = fmul <4 x float> %i.amz, %i.amz
  %i.ana = extractelement <4 x float> %foldExtExtBinop231, i64 1
  %i.anb = extractelement <4 x float> %i.amz, i64 0 ; 2 uses
  %i.anc = call float @llvm.fmuladd.f32(float %i.anb, float %i.anb, float %i.ana)
  %i.and = extractelement <4 x float> %i.amz, i64 2 ; 2 uses
  %i.ane = call float @llvm.fmuladd.f32(float %i.and, float %i.and, float %i.anc)
  %sqrt.i.i.i32 = call noundef float @llvm.sqrt.f32(float %i.ane)
  %i.anf = fdiv float 1.000000e+00, %sqrt.i.i.i32
  %i.ang = insertelement <4 x float> poison, float %i.anf, i64 0
  %i.anh = shufflevector <4 x float> %i.ang, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ani = fmul <4 x float> %i.anh, %i.amz
  store <4 x float> %i.ani, ptr %58, align 16, !tbaa !10
  %i.anj = fmul float %i.all, %i.aml
  %i.ank = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.anj, i64 0
  %i.anl = shufflevector <2 x float> %i.alj, <2 x float> %i.alk, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.anm = fmul <4 x float> %i.anl, %i.amm
  %i.ann = shufflevector <4 x float> %i.ank, <4 x float> %i.anm, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ano = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alp, <4 x float> %i.amo, <4 x float> %i.ann) ; 3 uses
  %i.anp = fneg <4 x float> %i.ano
  %i.anq = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.anp, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.anr = fneg <4 x float> %i.ano
  %i.ans = shufflevector <4 x float> %i.anq, <4 x float> %i.anr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ant = fmul <4 x float> %i.alq, %i.ans
  %i.anu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.als, <4 x float> %i.ano, <4 x float> %i.ant) ; 5 uses
  %foldExtExtBinop233 = fmul <4 x float> %i.anu, %i.anu
  %i.anv = extractelement <4 x float> %foldExtExtBinop233, i64 1
  %i.anw = extractelement <4 x float> %i.anu, i64 0 ; 2 uses
  %i.anx = call float @llvm.fmuladd.f32(float %i.anw, float %i.anw, float %i.anv)
  %i.any = extractelement <4 x float> %i.anu, i64 2 ; 2 uses
  %i.anz = call float @llvm.fmuladd.f32(float %i.any, float %i.any, float %i.anx)
  %sqrt.i.i.1.i = call noundef float @llvm.sqrt.f32(float %i.anz)
  %i.aoa = fdiv float 1.000000e+00, %sqrt.i.i.1.i
  %i.aob = insertelement <4 x float> poison, float %i.aoa, i64 0
  %i.aoc = shufflevector <4 x float> %i.aob, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aod = fmul <4 x float> %i.aoc, %i.anu
  store <4 x float> %i.aod, ptr %i.akk, align 16, !tbaa !10
  %i.aoe = load <2 x float>, ptr %i.alt, align 4, !tbaa !10 ; 3 uses
  %i.aof = load <2 x float>, ptr %i.akl, align 16, !tbaa !10 ; 2 uses
  %i.aog = extractelement <2 x float> %i.aoe, i64 0
  %i.aoh = fmul float %i.aog, %i.aml
  %i.aoi = shufflevector <2 x float> %i.aoe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aoj = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aoi, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.aok = shufflevector <2 x float> %i.aof, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aol = shufflevector <4 x float> %i.aok, <4 x float> %i.aoj, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aom = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.aoh, i64 0
  %i.aon = shufflevector <2 x float> %i.aoe, <2 x float> %i.aof, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.aoo = fmul <4 x float> %i.aon, %i.amm
  %i.aop = shufflevector <4 x float> %i.aom, <4 x float> %i.aoo, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aoq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aol, <4 x float> %i.amj, <4 x float> %i.aop) ; 3 uses
  %i.aor = shufflevector <4 x float> %i.aol, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.aos = fneg <4 x float> %i.aoq
  %i.aot = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aos, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.aou = fneg <4 x float> %i.aoq
  %i.aov = shufflevector <4 x float> %i.aot, <4 x float> %i.aou, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aow = fmul <4 x float> %i.aor, %i.aov
  %i.aox = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aok, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.aoy = shufflevector <4 x float> %i.aoi, <4 x float> %i.aox, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aoz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoy, <4 x float> %i.aoq, <4 x float> %i.aow) ; 5 uses
  %foldExtExtBinop235 = fmul <4 x float> %i.aoz, %i.aoz
  %i.apa = extractelement <4 x float> %foldExtExtBinop235, i64 1
  %i.apb = extractelement <4 x float> %i.aoz, i64 0 ; 2 uses
  %i.apc = call float @llvm.fmuladd.f32(float %i.apb, float %i.apb, float %i.apa)
  %i.apd = extractelement <4 x float> %i.aoz, i64 2 ; 2 uses
  %i.ape = call float @llvm.fmuladd.f32(float %i.apd, float %i.apd, float %i.apc)
  %sqrt.i.i.2.i = call noundef float @llvm.sqrt.f32(float %i.ape)
  %i.apf = fdiv float 1.000000e+00, %sqrt.i.i.2.i
  %i.apg = insertelement <4 x float> poison, float %i.apf, i64 0
  %i.aph = shufflevector <4 x float> %i.apg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.api = fmul <4 x float> %i.aph, %i.aoz
  store <4 x float> %i.api, ptr %i.akl, align 16, !tbaa !10
  %i.apj = zext nneg i32 %i.akg to i64
  %i.apk = getelementptr [16 x i8], ptr %58, i64 %i.apj ; 3 uses
  %i.apl = getelementptr i8, ptr %i.apk, i64 -16
  %i.apm = load float, ptr %i.apl, align 16, !tbaa !12 ; 3 uses
  %i.apn = getelementptr i8, ptr %i.apk, i64 -12
  %i.apo = load float, ptr %i.apn, align 4, !tbaa !14 ; 3 uses
  %i.app = getelementptr i8, ptr %i.apk, i64 -8
  %i.apq = fmul float %i.apo, %i.apo
  %i.apr = call float @llvm.fmuladd.f32(float %i.apm, float %i.apm, float %i.apq)
  %i.aps = extractelement <2 x float> %i.alw, i64 0
  %i.apt = extractelement <2 x float> %i.alw, i64 1
end_hunk_0
