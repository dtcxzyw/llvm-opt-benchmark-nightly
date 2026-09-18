Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.za = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yz, <4 x float> %i.wf, <4 x float> %i.yy)
  %i.zb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yg, <4 x float> %i.yi, <4 x float> %i.za)
  %i.zc = shufflevector <3 x float> %i.yu, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.zd = fmul <4 x float> %i.zc, %i.we
  %i.ze = shufflevector <3 x float> %i.yu, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.zf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ze, <4 x float> %i.wd, <4 x float> %i.zd)
  %i.zg = shufflevector <3 x float> %i.yu, <3 x float> poison, <4 x i32> zeroinitializer
  %i.zh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zg, <4 x float> %i.wf, <4 x float> %i.zf)
  %i.zi = fadd <4 x float> %i.yi, %i.zh
  store <4 x float> %i.zb, ptr %.sroa.11266.0..sroa_idx.i, align 4
  store <4 x float> %i.zi, ptr %.sroa.15270.0..sroa_idx.i, align 4
  br label %bb.aa

bb.z:                                             ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i
  %i.zj = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4 ; 4 uses
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.zl = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.vy, <4 x i32> <i32 4, i32 poison, i32 5, i32 3>
  %i.zm = shufflevector <4 x float> %i.zl, <4 x float> %i.vz, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 3 uses
  %i.zn = fmul <4 x float> %i.zk, %i.zm
  %i.zo = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sink60.i.i, i64 0
  %i.zq = shufflevector <4 x float> %i.zp, <4 x float> %i.vy, <4 x i32> <i32 0, i32 6, i32 7, i32 3> ; 3 uses
  %i.zr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zo, <4 x float> %i.zq, <4 x float> %i.zn)
  %i.zs = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.zt = insertelement <4 x float> %i.vx, float 0.000000e+00, i64 3
  %i.zu = shufflevector <4 x float> %i.zt, <4 x float> %i.vz, <4 x i32> <i32 0, i32 1, i32 7, i32 3> ; 3 uses
  %i.zv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zs, <4 x float> %i.zu, <4 x float> %i.zr)
  %i.zw = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.zx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.zv)
  %.sroa.7128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zy = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4 ; 4 uses
  %i.zz = shufflevector <4 x float> %i.zy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aaa = fmul <4 x float> %i.zz, %i.zm
  %i.aab = shufflevector <4 x float> %i.zy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aab, <4 x float> %i.zq, <4 x float> %i.aaa)
  %i.aad = shufflevector <4 x float> %i.zy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aad, <4 x float> %i.zu, <4 x float> %i.aac)
  %i.aaf = shufflevector <4 x float> %i.zy, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaf, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.aae)
  %.sroa.11132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aah = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4 ; 4 uses
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aaj = fmul <4 x float> %i.aai, %i.zm
  %i.aak = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aal = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aak, <4 x float> %i.zq, <4 x float> %i.aaj)
  %i.aam = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aan = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aam, <4 x float> %i.zu, <4 x float> %i.aal)
  %i.aao = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aao, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.aan)
  store <4 x float> %i.zx, ptr %4, align 4
  store <4 x float> %i.aag, ptr %.sroa.7128.0..sroa_idx.i, align 4
  store <4 x float> %i.aap, ptr %.sroa.11132.0..sroa_idx.i, align 4
  %.sroa.15136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aaq = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.vy, <4 x i32> <i32 4, i32 poison, i32 5, i32 3>
  %i.aar = shufflevector <4 x float> %i.aaq, <4 x float> %i.vz, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.aas = fmul <4 x float> %i.aar, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.aat = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sink60.i.i, i64 0
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> %i.vy, <4 x i32> <i32 0, i32 6, i32 7, i32 3>
  %i.aav = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aau, <4 x float> zeroinitializer, <4 x float> %i.aas)
  %i.aaw = insertelement <4 x float> %i.vx, float -0.000000e+00, i64 3
  %i.aax = shufflevector <4 x float> %i.aaw, <4 x float> %i.vz, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %i.aay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aax, <4 x float> zeroinitializer, <4 x float> %i.aav)
  %i.aaz = fadd <4 x float> %i.aay, zeroinitializer
  store <4 x float> %i.aaz, ptr %.sroa.15136.0..sroa_idx.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.15136.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), i64 16, i1 false), !tbaa.struct !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not25, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aba = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !10 ; 4 uses
  %i.abb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !10 ; 4 uses
  %i.abc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !10 ; 3 uses
  %i.abd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 252), align 4, !tbaa !10 ; 3 uses
  %i.abe = shufflevector <2 x float> %i.aba, <2 x float> %i.abb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.abf = shufflevector <2 x float> %i.abc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abg = shufflevector <4 x float> %i.abe, <4 x float> %i.abf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.abh = shufflevector <2 x float> %i.abd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abi = shufflevector <4 x float> %i.abg, <4 x float> %i.abh, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.abj = fmul <4 x float> %i.abi, zeroinitializer
  %i.abk = shufflevector <2 x float> %i.aba, <2 x float> %i.abb, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.abl = shufflevector <4 x float> %i.abk, <4 x float> %i.abf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.abm = shufflevector <4 x float> %i.abl, <4 x float> %i.abh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abm, <4 x float> zeroinitializer, <4 x float> %i.abj)
  %i.abo = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 212), align 4, !tbaa !10 ; 4 uses
  %i.abp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 228), align 4, !tbaa !10 ; 4 uses
  %i.abq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 244), align 4, !tbaa !10 ; 3 uses
  %i.abr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 260), align 4, !tbaa !10 ; 3 uses
  %i.abs = shufflevector <2 x float> %i.abo, <2 x float> %i.abp, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.abt = shufflevector <2 x float> %i.abq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abu = shufflevector <4 x float> %i.abs, <4 x float> %i.abt, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.abv = shufflevector <2 x float> %i.abr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abw = shufflevector <4 x float> %i.abu, <4 x float> %i.abv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abw, <4 x float> zeroinitializer, <4 x float> %i.abn)
  %i.aby = shufflevector <2 x float> %i.abo, <2 x float> %i.abp, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.abz = shufflevector <4 x float> %i.aby, <4 x float> %i.abt, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aca = shufflevector <4 x float> %i.abz, <4 x float> %i.abv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.acb = fadd <4 x float> %i.aca, %i.abx        ; 4 uses
  %i.acc = shufflevector <2 x float> %i.aba, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acd = fmul <3 x float> %i.vv, %i.acc
  %i.ace = shufflevector <2 x float> %i.aba, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ace, <3 x float> %i.vu, <3 x float> %i.acd)
  %i.acg = shufflevector <2 x float> %i.abo, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ach = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acg, <3 x float> %i.vt, <3 x float> %i.acf)
  %i.aci = shufflevector <2 x float> %i.abo, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aci, <3 x float> zeroinitializer, <3 x float> %i.ach) ; 3 uses
  %i.ack = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 4 uses
  %i.acl = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 4 uses
  %i.acm = shufflevector <3 x float> %i.acj, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.acn = fmul <4 x float> %i.acm, %i.acl
  %i.aco = shufflevector <3 x float> %i.acj, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.acp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aco, <4 x float> %i.ack, <4 x float> %i.acn)
  %i.acq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 4 uses
  %i.acr = shufflevector <3 x float> %i.acj, <3 x float> poison, <4 x i32> zeroinitializer
  %i.acs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acr, <4 x float> %i.acq, <4 x float> %i.acp)
  %i.act = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 4 uses
  %i.acu = shufflevector <4 x float> %i.acb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acu, <4 x float> %i.act, <4 x float> %i.acs)
  store <4 x float> %i.acv, ptr %5, align 4
  %.sroa.7121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.acw = shufflevector <2 x float> %i.abb, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acx = fmul <3 x float> %i.vv, %i.acw
  %i.acy = shufflevector <2 x float> %i.abb, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acy, <3 x float> %i.vu, <3 x float> %i.acx)
  %i.ada = shufflevector <2 x float> %i.abp, <2 x float> poison, <3 x i32> zeroinitializer
  %i.adb = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ada, <3 x float> %i.vt, <3 x float> %i.acz)
  %i.adc = shufflevector <2 x float> %i.abp, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.add = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adc, <3 x float> zeroinitializer, <3 x float> %i.adb) ; 3 uses
  %i.ade = shufflevector <3 x float> %i.add, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adf = fmul <4 x float> %i.ade, %i.acl
  %i.adg = shufflevector <3 x float> %i.add, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adg, <4 x float> %i.ack, <4 x float> %i.adf)
  %i.adi = shufflevector <3 x float> %i.add, <3 x float> poison, <4 x i32> zeroinitializer
  %i.adj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adi, <4 x float> %i.acq, <4 x float> %i.adh)
  %i.adk = shufflevector <4 x float> %i.acb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adk, <4 x float> %i.act, <4 x float> %i.adj)
  store <4 x float> %i.adl, ptr %.sroa.7121.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.adm = shufflevector <2 x float> %i.abc, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adn = fmul <3 x float> %i.vv, %i.adm
  %i.ado = shufflevector <2 x float> %i.abc, <2 x float> poison, <3 x i32> zeroinitializer
  %i.adp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ado, <3 x float> %i.vu, <3 x float> %i.adn)
  %i.adq = shufflevector <2 x float> %i.abq, <2 x float> poison, <3 x i32> zeroinitializer
  %i.adr = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adq, <3 x float> %i.vt, <3 x float> %i.adp)
  %i.ads = shufflevector <2 x float> %i.abq, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adt = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ads, <3 x float> zeroinitializer, <3 x float> %i.adr) ; 3 uses
  %i.adu = shufflevector <3 x float> %i.adt, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adv = fmul <4 x float> %i.adu, %i.acl
  %i.adw = shufflevector <3 x float> %i.adt, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adw, <4 x float> %i.ack, <4 x float> %i.adv)
  %i.ady = shufflevector <3 x float> %i.adt, <3 x float> poison, <4 x i32> zeroinitializer
  %i.adz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ady, <4 x float> %i.acq, <4 x float> %i.adx)
  %i.aea = shufflevector <4 x float> %i.acb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aeb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aea, <4 x float> %i.act, <4 x float> %i.adz)
  store <4 x float> %i.aeb, ptr %.sroa.11.0..sroa_idx.i, align 4
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aec = shufflevector <2 x float> %i.abd, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aed = fmul <3 x float> %i.vv, %i.aec
  %i.aee = shufflevector <2 x float> %i.abd, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aef = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aee, <3 x float> %i.vu, <3 x float> %i.aed)
  %i.aeg = shufflevector <2 x float> %i.abr, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aeh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aeg, <3 x float> %i.vt, <3 x float> %i.aef)
  %i.aei = shufflevector <2 x float> %i.abr, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aej = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aei, <3 x float> zeroinitializer, <3 x float> %i.aeh) ; 3 uses
  %i.aek = shufflevector <3 x float> %i.aej, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ael = fmul <4 x float> %i.aek, %i.acl
  %i.aem = shufflevector <3 x float> %i.aej, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aen = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aem, <4 x float> %i.ack, <4 x float> %i.ael)
  %i.aeo = shufflevector <3 x float> %i.aej, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aeo, <4 x float> %i.acq, <4 x float> %i.aen)
  %i.aeq = shufflevector <4 x float> %i.acb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aer = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aeq, <4 x float> %i.act, <4 x float> %i.aep)
  store <4 x float> %i.aer, ptr %.sroa.15.0..sroa_idx.i, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.aes = getelementptr inbounds nuw i8, ptr %i.is, i64 296
  %i.aet = load i8, ptr %i.aes, align 8, !tbaa !47, !range !33, !noundef !34
  %i.aeu = trunc nuw i8 %i.aet to i1
  br i1 %i.aeu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.aev = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.af:                                            ; preds = %bb.g
  %i.aew = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.aex = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 8), align 8, !tbaa !69
  %i.aey = icmp eq i32 %i.aex, 0
  %i.aez = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.afa = trunc nuw i8 %i.aez to i1
  br i1 %i.afa, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  %65 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !12 ; 2 uses
  %66 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4, !tbaa !14 ; 2 uses
  %i.afb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 2 uses
  %i.afc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 700), align 4, !tbaa !15
  %67 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 672), align 8, !tbaa !14
  %i.afd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %i.afe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 4 uses
  %i.aff = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !10 ; 2 uses
  %68 = extractelement <2 x float> %i.aff, i64 0
  %i.afg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !10 ; 2 uses
  %69 = extractelement <2 x float> %i.afg, i64 0
  %i.afh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 676), align 4, !tbaa !10 ; 2 uses
  %70 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !10 ; 3 uses
  %71 = extractelement <2 x float> %70, i64 1
  %72 = fmul float %66, %71
  %73 = extractelement <2 x float> %70, i64 0
  %74 = tail call float @llvm.fmuladd.f32(float %65, float %73, float %72)
  %75 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !10 ; 3 uses
  %76 = extractelement <2 x float> %75, i64 1
  %77 = fmul float %66, %76
  %78 = extractelement <2 x float> %75, i64 0
  %79 = tail call float @llvm.fmuladd.f32(float %65, float %78, float %77)
  %80 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !10 ; 3 uses
  %81 = shufflevector <2 x float> %80, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %82 = insertelement <2 x float> %80, float %67, i64 1
  %83 = fmul <2 x float> %81, %82
  %84 = tail call noundef float @llvm.fmuladd.f32(float %i.afb, float %68, float %74)
  %85 = tail call noundef float @llvm.fmuladd.f32(float %i.afb, float %69, float %79) ; 2 uses
  %i.afi = tail call float @llvm.fabs.f32(float %85)
  %i.afj = fcmp olt float %i.afi, f0x34000000
  %i.afk = fsub float %84, %i.afc
  %i.afl = fneg float %i.afk
  %i.afm = fdiv float %i.afl, %85
  %i.afn = tail call float @llvm.fabs.f32(float %i.afm)
  %i.afo = select i1 %i.afj, float 1.000000e+00, float %i.afn
  %i.afp = insertelement <2 x float> poison, float %i.afo, i64 0
  %i.afq = shufflevector <2 x float> %i.afp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afr = fmul <2 x float> %75, %i.afq
  %i.afs = fmul <2 x float> %i.afg, %i.afq
  %i.aft = fadd <2 x float> %70, %i.afr
  %i.afu = fadd <2 x float> %i.aff, %i.afs
  %i.afv = shufflevector <2 x float> %i.afh, <2 x float> %81, <2 x i32> <i32 0, i32 3>
  %i.afw = shufflevector <2 x float> %80, <2 x float> %i.afh, <2 x i32> <i32 0, i32 3>
  %i.afx = fmul <2 x float> %i.afv, %i.afw
  %i.afy = fsub <2 x float> %i.aft, %83
  %i.afz = fsub <2 x float> %i.afu, %i.afx
  %i.aga = fsub <2 x float> %i.afy, %i.afd        ; 3 uses
  %i.agb = fsub <2 x float> %i.afz, %i.afe        ; 2 uses
  %i.agc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71 ; 2 uses
  %i.agd = add i32 %i.agc, -1
  %or.cond.i = icmp ult i32 %i.agd, 3
  br i1 %or.cond.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.age = zext nneg i32 %i.agc to i64
  %i.agf = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 %i.age ; 2 uses
  %i.agg = getelementptr i8, ptr %i.agf, i64 -16
  %i.agh = getelementptr i8, ptr %i.agf, i64 -8
  %i.agi = load <2 x float>, ptr %i.agh, align 4, !tbaa !10 ; 2 uses
  %i.agj = extractelement <2 x float> %i.agi, i64 0
  %i.agk = load <2 x float>, ptr %i.agg, align 4, !tbaa !10 ; 3 uses
  %foldExtExtBinop223 = fmul <2 x float> %i.aga, %i.agk
  %i.agl = extractelement <2 x float> %foldExtExtBinop223, i64 1
  %i.agm = extractelement <2 x float> %i.agk, i64 0
  %i.agn = extractelement <2 x float> %i.aga, i64 0
  %i.ago = tail call float @llvm.fmuladd.f32(float %i.agm, float %i.agn, float %i.agl)
  %i.agp = extractelement <2 x float> %i.agb, i64 0
  %i.agq = tail call noundef float @llvm.fmuladd.f32(float %i.agj, float %i.agp, float %i.ago)
  %i.agr = insertelement <2 x float> poison, float %i.agq, i64 0
  %i.ags = shufflevector <2 x float> %i.agr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agt = fmul <2 x float> %i.agk, %i.ags
  %i.agu = fmul <2 x float> %i.agi, %i.ags
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.0209.0.i = phi <2 x float> [ %i.agt, %bb.ah ], [ %i.aga, %bb.ag ] ; 2 uses
  %.sroa.11218.0.i = phi <2 x float> [ %i.agu, %bb.ah ], [ %i.agb, %bb.ag ] ; 3 uses
  %.not39.i = icmp eq ptr %6, null
  br i1 %.not39.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  %i.agv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10 ; 2 uses
  %i.agw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8, !tbaa !10 ; 3 uses
  %i.agx = shufflevector <2 x float> %i.afe, <2 x float> %i.afd, <3 x i32> <i32 0, i32 2, i32 3>
  %i.agy = shufflevector <2 x float> %.sroa.11218.0.i, <2 x float> %.sroa.0209.0.i, <3 x i32> <i32 0, i32 2, i32 3>
  %i.agz = fadd <3 x float> %i.agx, %i.agy
  %i.aha = shufflevector <2 x float> %i.agw, <2 x float> %i.agv, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ahb = fsub <3 x float> %i.agz, %i.aha        ; 4 uses
  %i.ahc = shufflevector <3 x float> %i.ahb, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ahd = fadd <2 x float> %i.afe, %.sroa.11218.0.i
  %.sroa.3.12.vec.insert.i.i80.i = fsub <2 x float> %i.ahd, %i.agw
  store <2 x float> %i.ahc, ptr %54, align 16
  %i.ahe = getelementptr inbounds nuw i8, ptr %54, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i80.i, ptr %i.ahe, align 8
  br i1 %i.aey, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %55, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false)
  %i.ahf = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %55, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  %i.ahh = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.ahi = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.ahj = load <4 x float>, ptr %55, align 16, !tbaa !10 ; 4 uses
  %i.ahk = load <4 x float>, ptr %i.ahf, align 16, !tbaa !10 ; 4 uses
  %i.ahl = load <4 x float>, ptr %i.ahg, align 16, !tbaa !10 ; 4 uses
  %i.ahm = shufflevector <4 x float> %i.ahj, <4 x float> %i.ahk, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ahn = shufflevector <4 x float> %i.ahm, <4 x float> %i.ahl, <3 x i32> <i32 0, i32 1, i32 5> ; 2 uses
  %i.aho = fmul <3 x float> %i.ahn, %i.ahn
  %i.ahp = shufflevector <4 x float> %i.ahj, <4 x float> %i.ahk, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ahq = shufflevector <4 x float> %i.ahp, <4 x float> %i.ahl, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.ahr = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ahq, <3 x float> %i.ahq, <3 x float> %i.aho)
  %i.ahs = shufflevector <4 x float> %i.ahj, <4 x float> %i.ahk, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aht = shufflevector <4 x float> %i.ahs, <4 x float> %i.ahl, <3 x i32> <i32 0, i32 1, i32 6> ; 2 uses
  %i.ahu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aht, <3 x float> %i.aht, <3 x float> %i.ahr)
  %i.ahv = tail call <3 x float> @llvm.sqrt.v3f32(<3 x float> %i.ahu)
  %i.ahw = fdiv <3 x float> splat (float 1.000000e+00), %i.ahv ; 3 uses
  %i.ahx = shufflevector <3 x float> %i.ahw, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ahy = fmul <4 x float> %i.ahx, %i.ahj        ; 2 uses
  store <4 x float> %i.ahy, ptr %55, align 16, !tbaa !10
  %i.ahz = shufflevector <3 x float> %i.ahw, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aia = fmul <4 x float> %i.ahz, %i.ahk        ; 2 uses
  store <4 x float> %i.aia, ptr %i.ahf, align 16, !tbaa !10
  %i.aib = shufflevector <3 x float> %i.ahw, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aic = fmul <4 x float> %i.aib, %i.ahl        ; 2 uses
  store <4 x float> %i.aic, ptr %i.ahg, align 16, !tbaa !10
  %i.aid = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %56, ptr noundef nonnull align 4 dereferenceable(64) %55, i1 noundef zeroext false) ; 0 uses
  %i.aie = load <4 x float>, ptr %56, align 16, !tbaa !16
  %i.aif = load <4 x float>, ptr %i.ahh, align 16, !tbaa !16
  %i.aig = shufflevector <3 x float> %i.ahb, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aih = fmul <4 x float> %i.aig, %i.aif
  %i.aii = shufflevector <3 x float> %i.ahb, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aii, <4 x float> %i.aie, <4 x float> %i.aih)
  %i.aik = load <4 x float>, ptr %i.ahi, align 16, !tbaa !16
  %i.ail = shufflevector <3 x float> %i.ahb, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aim = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ail, <4 x float> %i.aik, <4 x float> %i.aij)
  store <4 x float> %i.aim, ptr %54, align 16, !tbaa !10
  call fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr noundef nonnull align 4 dereferenceable(16) %54, ptr noundef readonly %6)
  %i.ain = load <3 x float>, ptr %54, align 16, !tbaa !10 ; 3 uses
  %i.aio = shufflevector <3 x float> %i.ain, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aip = fmul <4 x float> %i.aia, %i.aio
  %i.aiq = shufflevector <3 x float> %i.ain, <3 x float> poison, <4 x i32> zeroinitializer
  %i.air = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiq, <4 x float> %i.ahy, <4 x float> %i.aip)
  %i.ais = shufflevector <3 x float> %i.ain, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ait = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ais, <4 x float> %i.aic, <4 x float> %i.air)
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr noundef nonnull align 4 dereferenceable(16) %54, ptr noundef readonly %6)
  %i.aiu = load <4 x float>, ptr %54, align 16, !tbaa !10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.aiv = phi <4 x float> [ %i.aiu, %bb.al ], [ %i.ait, %bb.ak ] ; 2 uses
  %i.aiw = shufflevector <4 x float> %i.aiv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aix = fadd <2 x float> %i.agv, %i.aiw
  %i.aiy = fsub <2 x float> %i.aix, %i.afd
  %i.aiz = shufflevector <4 x float> %i.aiv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aja = fadd <2 x float> %i.agw, %i.aiz
  %i.ajb = fsub <2 x float> %i.aja, %i.afe
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %.sroa.0209.1.i = phi <2 x float> [ %.sroa.0209.0.i, %bb.ai ], [ %i.aiy, %bb.am ] ; 2 uses
  %.sroa.11218.1.i = phi <2 x float> [ %.sroa.11218.0.i, %bb.ai ], [ %i.ajb, %bb.am ] ; 2 uses
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
  %i.ajc = shufflevector <2 x float> %.sroa.0209.1.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajd = shufflevector <4 x float> %i.ajc, <4 x float> <float 1.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  store <4 x float> %i.ajd, ptr %.sroa.47.0..sroa_idx.i, align 4
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %.sroa.11218.8.vec.extract222.i, ptr %.sroa.67.0..sroa_idx.i, align 4
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.aje = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4
  %i.ajf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 280), align 8
  %i.ajg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !10 ; 4 uses
  %i.ajh = shufflevector <2 x float> %i.ajg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aji = fmul <2 x float> %i.ajh, <float 1.000000e+00, float 0.000000e+00>
  %i.ajj = shufflevector <2 x float> %i.ajg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajj, <2 x float> zeroinitializer, <2 x float> %i.aji)
  %i.ajl = shufflevector <4 x float> %i.aje, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajm = shufflevector <2 x float> %i.ajk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajn = shufflevector <2 x float> %.sroa.0209.1.i, <2 x float> %.sroa.11218.1.i, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ajo = insertelement <4 x float> %i.ajn, float 1.000000e+00, i64 3 ; 4 uses
  %i.ajp = shufflevector <4 x float> %i.ajf, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ajq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4
  %i.ajr = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 296), align 8
  %i.ajs = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !10 ; 4 uses
  %i.ajt = shufflevector <2 x float> %i.ajs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aju = fmul <2 x float> %i.ajt, <float 1.000000e+00, float 0.000000e+00>
  %i.ajv = shufflevector <2 x float> %i.ajs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajv, <2 x float> zeroinitializer, <2 x float> %i.aju)
  %i.ajx = shufflevector <4 x float> %i.ajq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajy = shufflevector <2 x float> %i.ajw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajz = shufflevector <4 x float> %i.ajr, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.11.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aka = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4
  %i.akb = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 312), align 8
  %i.akc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !10 ; 3 uses
  %i.akd = shufflevector <2 x float> %i.akc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ake = shufflevector <2 x float> %i.akc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.akf = fmul <2 x float> %i.ake, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.akg = shufflevector <2 x float> %i.akc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akg, <2 x float> zeroinitializer, <2 x float> %i.akf)
  %i.aki = shufflevector <4 x float> %i.aka, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akj = shufflevector <2 x float> %i.akh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akk = shufflevector <4 x float> %i.akb, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.15.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.akl = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 324), align 4
  %i.akm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 328), align 8
  %i.akn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !10 ; 3 uses
  %i.ako = shufflevector <2 x float> %i.akn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.akp = shufflevector <2 x float> %i.akn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.akq = fmul <2 x float> %i.akp, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.akr = shufflevector <2 x float> %i.ajg, <2 x float> %i.ajs, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aks = shufflevector <4 x float> %i.akr, <4 x float> %i.akd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.akt = shufflevector <4 x float> %i.aks, <4 x float> %i.ako, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aku = shufflevector <2 x float> %i.ajg, <2 x float> %i.ajs, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.akv = fmul <4 x float> %i.aku, <float 0.000000e+00, float 0.000000e+00, float poison, float poison>
  %i.akw = shufflevector <2 x float> %i.akf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.akx = shufflevector <4 x float> %i.akv, <4 x float> %i.akw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aky = shufflevector <2 x float> %i.akq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.akz = shufflevector <4 x float> %i.akx, <4 x float> %i.aky, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ala = fadd <4 x float> %i.akt, %i.akz        ; 4 uses
  %i.alb = shufflevector <4 x float> %i.ala, <4 x float> %i.ajm, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.alc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.alb)
  %i.ald = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajo, <4 x float> %i.ajp, <4 x float> %i.alc)
  %i.ale = shufflevector <4 x float> %i.ala, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.alf = shufflevector <4 x float> %i.ale, <4 x float> %i.ajy, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.alg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajx, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.alf)
  %i.alh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajo, <4 x float> %i.ajz, <4 x float> %i.alg)
  %i.ali = shufflevector <4 x float> %i.ala, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.alj = shufflevector <4 x float> %i.ali, <4 x float> %i.akj, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.alk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aki, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.alj)
  %i.all = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajo, <4 x float> %i.akk, <4 x float> %i.alk)
  %i.alm = shufflevector <2 x float> %i.akn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aln = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.alm, <2 x float> zeroinitializer, <2 x float> %i.akq)
  %i.alo = shufflevector <4 x float> %i.akl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alp = shufflevector <4 x float> %i.ala, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.alq = shufflevector <2 x float> %i.aln, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.alr = shufflevector <4 x float> %i.alp, <4 x float> %i.alq, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.als = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alo, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.alr)
  %i.alt = shufflevector <4 x float> %i.akm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajo, <4 x float> %i.alt, <4 x float> %i.als)
  store <4 x float> %i.ald, ptr %4, align 4
  store <4 x float> %i.alh, ptr %.sroa.7.0..sroa_idx.i, align 4
  store <4 x float> %i.all, ptr %.sroa.11.0..sroa_idx.i42, align 4
  store <4 x float> %i.alu, ptr %.sroa.15.0..sroa_idx.i45, align 4
  %i.alv = getelementptr inbounds nuw i8, ptr %i.aew, i64 296
  %i.alw = load i8, ptr %i.alv, align 8, !tbaa !47, !range !33, !noundef !34
  %i.alx = trunc nuw i8 %i.alw to i1
  br i1 %i.alx, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.aly = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.as:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  %i.alz = call fastcc noundef i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr noundef nonnull %57) ; 4 uses
  %.not.i30 = icmp eq i32 %i.alz, 0               ; 2 uses
  br i1 %.not.i30, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ama = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.ama, label %bb.av, label %_ZN8ImGuizmoL11CanActivateEv.exit.i31

bb.av:                                            ; preds = %bb.au
  %i.amb = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.amb, label %_ZN8ImGuizmoL11CanActivateEv.exit.i31, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.amc = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  %brmerge169 = or i1 %.not.i30, %i.amc
  br i1 %brmerge169, label %_ZN8ImGuizmoL11CanActivateEv.exit.i31, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  store i32 %i.alz, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %58, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.amd = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amd, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.ame = getelementptr inbounds nuw i8, ptr %58, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ame, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.amf = getelementptr inbounds nuw i8, ptr %58, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amf, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.amg = getelementptr inbounds nuw i8, ptr %58, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amg, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.amh = getelementptr inbounds nuw i8, ptr %58, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amh, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.ami = getelementptr inbounds nuw i8, ptr %58, i64 96
  %i.amj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), align 4, !tbaa !10
  %i.amk = fneg <2 x float> %i.amj
  %i.aml = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 580), align 4, !tbaa !10
  %i.amm = fneg <2 x float> %i.aml
  store <2 x float> %i.amk, ptr %i.ami, align 16
  %i.amn = getelementptr inbounds nuw i8, ptr %58, i64 104
  store <2 x float> %i.amm, ptr %i.amn, align 8
  %i.amo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !12
  %i.amp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %58, i64 4
  %i.amr = load <2 x float>, ptr %i.amq, align 4, !tbaa !10 ; 3 uses
  %i.ams = load <2 x float>, ptr %58, align 16, !tbaa !10 ; 2 uses
  %i.amt = extractelement <2 x float> %i.amr, i64 0
  %i.amu = shufflevector <2 x float> %i.amr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.amv = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.amu, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.amw = shufflevector <2 x float> %i.ams, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.amx = shufflevector <4 x float> %i.amw, <4 x float> %i.amv, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.amy = shufflevector <4 x float> %i.amx, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.amz = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.amw, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.ana = shufflevector <4 x float> %i.amu, <4 x float> %i.amz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.anb = getelementptr inbounds nuw i8, ptr %58, i64 20
  %i.anc = load <2 x float>, ptr %i.anb, align 4, !tbaa !10 ; 3 uses
  %i.and = load <2 x float>, ptr %i.amd, align 16, !tbaa !10 ; 2 uses
  %i.ane = extractelement <2 x float> %i.anc, i64 0
  %i.anf = shufflevector <2 x float> %i.anc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ang = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.anf, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.anh = shufflevector <2 x float> %i.and, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ani = shufflevector <4 x float> %i.anh, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.anj = shufflevector <4 x float> %i.ani, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ank = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.anh, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.anl = shufflevector <4 x float> %i.anf, <4 x float> %i.ank, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.anm = getelementptr inbounds nuw i8, ptr %58, i64 36
  %i.ann = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 3 uses
  %i.ano = fsub float %i.ann, %i.amo              ; 3 uses
  %i.anp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 4 uses
  %i.anq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 544), align 8, !tbaa !10
  %i.anr = fsub <2 x float> %i.anp, %i.anq        ; 4 uses
  %foldExtExtBinop229 = fmul <2 x float> %i.anr, %i.anr
  %i.ans = extractelement <2 x float> %foldExtExtBinop229, i64 0
  %i.ant = call float @llvm.fmuladd.f32(float %i.ano, float %i.ano, float %i.ans)
  %i.anu = extractelement <2 x float> %i.anr, i64 1 ; 2 uses
  %i.anv = call float @llvm.fmuladd.f32(float %i.anu, float %i.anu, float %i.ant)
  %sqrt.i.i.i108.i = call noundef float @llvm.sqrt.f32(float %i.anv)
  %i.anw = fdiv float 1.000000e+00, %sqrt.i.i.i108.i
end_hunk_0
