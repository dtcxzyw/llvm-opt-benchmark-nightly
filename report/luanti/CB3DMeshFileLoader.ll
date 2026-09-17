Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CB3DMeshFileLoader?download=true
inline.NumInlined: 1646
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5scene18CB3DMeshFileLoader13readChunkTRISEPNS_15SSkinMeshBufferEji:bb.a
_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gd, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gg, %.lr.ph.i.i.i.i.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40
  %.not.i23.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.gi = load ptr, ptr %i.fo, align 8, !tbaa !264
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = sub i64 %i.gj, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.gk) #26
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.gd, ptr %i.fk, align 8, !tbaa !158
  store ptr %i.gh, ptr %i.fm, align 8, !tbaa !162
  %i.gl = getelementptr inbounds nuw [40 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.gl, ptr %i.fo, align 8, !tbaa !264
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

bb.af:                                            ; preds = %bb.y
  %i.gm = load ptr, ptr %i.cc, align 8, !tbaa !150 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32 ; 2 uses
  br i1 %i.fi, label %_ZN4core5arrayIN5video17S3DVertex2TCoordsEEixEj.exit75, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video17S3DVertex2TCoordsEEixEj) #28
  unreachable

_ZN4core5arrayIN5video17S3DVertex2TCoordsEEixEj.exit75: ; preds = %bb.af
  %i.go = getelementptr inbounds nuw [48 x i8], ptr %i.fd, i64 %i.fb ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 40 ; 4 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !131 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 48 ; 3 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !99
  %.not.i76 = icmp eq ptr %i.gq, %i.gs
  br i1 %.not.i76, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN4core5arrayIN5video17S3DVertex2TCoordsEEixEj.exit75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.gq, ptr noundef nonnull align 4 dereferenceable(48) %i.go, i64 48, i1 false)
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !131
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  store ptr %i.gu, ptr %i.gp, align 8, !tbaa !131
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

bb.ai:                                            ; preds = %_ZN4core5arrayIN5video17S3DVertex2TCoordsEEixEj.exit75
  %i.gv = load ptr, ptr %i.gn, align 8, !tbaa !98 ; 5 uses
  %i.gw = ptrtoint ptr %i.gq to i64
  %i.gx = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.gy = sub i64 %i.gw, %i.gx                    ; 3 uses
  %i.gz = icmp eq i64 %i.gy, 9223372036854775776
  br i1 %i.gz, label %bb.aj, label %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.ha = sdiv exact i64 %i.gy, 48                ; 3 uses
  %.sroa.speculated.i.i.i77 = call i64 @llvm.umax.i64(i64 %i.ha, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i77, %i.ha ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.ha
  %i.hd = call i64 @llvm.umin.i64(i64 %i.hb, i64 192153584101141162)
  %i.he = select i1 %i.hc, i64 192153584101141162, i64 %i.hd ; 3 uses
  %.not.i.i.i78 = icmp ne i64 %i.he, 0
  call void @llvm.assume(i1 %.not.i.i.i78)
  %i.hf = mul nuw nsw i64 %i.he, 48
  %i.hg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #27 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.hh, ptr noundef nonnull align 4 dereferenceable(48) %i.go, i64 48, i1 false)
  %.not10.i.i.i.i.i79 = icmp eq ptr %i.gv, %i.gq
  br i1 %.not10.i.i.i.i.i79, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i80

.lr.ph.i.i.i.i.i80:                               ; preds = %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i80
  %.012.i.i.i.i.i81 = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i80 ], [ %i.hg, %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i82 = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i80 ], [ %i.gv, %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.012.i.i.i.i.i81, ptr noundef nonnull align 4 dereferenceable(48) %.0911.i.i.i.i.i82, i64 48, i1 false), !alias.scope !267
  %i.hi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i82, i64 48 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i81, i64 48 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.hi, %i.gq
  br i1 %.not.i.i.i.i.i83, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i80, !llvm.loop !3

_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i80, %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i84 = phi ptr [ %i.hg, %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.hj, %.lr.ph.i.i.i.i.i80 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i84, i64 48
  %.not.i23.i.i85 = icmp eq ptr %i.gv, null
  br i1 %.not.i23.i.i85, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.hl = load ptr, ptr %i.gr, align 8, !tbaa !99
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = sub i64 %i.hm, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.hn) #26
  br label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.hg, ptr %i.gn, align 8, !tbaa !98
  store ptr %i.hk, ptr %i.gp, align 8, !tbaa !131
  %i.ho = getelementptr inbounds nuw [48 x i8], ptr %i.hg, i64 %i.he
  store ptr %i.ho, ptr %i.gr, align 8, !tbaa !99
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ah, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ab
  %i.hp = load ptr, ptr %1, align 8, !tbaa !14
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call noundef ptr %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !2 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !14
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = call noundef i32 %i.hv(ptr noundef nonnull align 8 dereferenceable(28) %i.hs), !inline_history !2
  %i.hx = load i32, ptr %i.df, align 4, !tbaa !89
  %i.hy = zext i32 %i.hx to i64                   ; 2 uses
  %i.hz = load ptr, ptr %i.bw, align 8, !tbaa !160
  %i.ia = load ptr, ptr %i.bv, align 8, !tbaa !100 ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = ashr exact i64 %i.id, 2
  %i.if = icmp ugt i64 %i.ie, %i.hy
  br i1 %i.if, label %_ZN4core5arrayIiEixEj.exit86, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #28
  unreachable

_ZN4core5arrayIiEixEj.exit86:                     ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit
  %i.ig = add i32 %i.hw, -1
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hy
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !89
  %i.ii = load i32, ptr %i.df, align 4, !tbaa !89
  %i.ij = zext i32 %i.ii to i64                   ; 2 uses
  %i.ik = load ptr, ptr %i.by, align 8, !tbaa !160
  %i.il = load ptr, ptr %i.bx, align 8, !tbaa !100 ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 2
  %i.iq = icmp ugt i64 %i.ip, %i.ij
  br i1 %i.iq, label %_ZN4core5arrayIiEixEj.exit87, label %bb.am

bb.am:                                            ; preds = %_ZN4core5arrayIiEixEj.exit86
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #28
  unreachable

_ZN4core5arrayIiEixEj.exit87:                     ; preds = %_ZN4core5arrayIiEixEj.exit86
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ij
  store i32 %2, ptr %i.ir, align 4, !tbaa !89
  br i1 %.not64, label %bb.aw, label %bb.an

bb.an:                                            ; preds = %_ZN4core5arrayIiEixEj.exit87
  %i.is = load ptr, ptr %1, align 8, !tbaa !14
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = call noundef ptr %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !2 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !14
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call noundef i32 %i.iy(ptr noundef nonnull align 8 dereferenceable(28) %i.iv), !inline_history !2
  %i.ja = add i32 %i.iz, -1
  %i.jb = load i32, ptr %i.cb, align 8, !tbaa !147
  %i.jc = zext i32 %i.ja to i64                   ; 3 uses
  switch i32 %i.jb, label %bb.aq [
    i32 1, label %bb.ao
    i32 2, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.jd = load ptr, ptr %i.cc, align 8, !tbaa !150
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !98
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.jf, i64 %i.jc
  br label %_ZN5scene15SSkinMeshBuffer9getVertexEj.exit

bb.ap:                                            ; preds = %bb.an
  %i.jh = load ptr, ptr %i.ce, align 8, !tbaa !151
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !154
  %i.jk = getelementptr inbounds nuw [64 x i8], ptr %i.jj, i64 %i.jc
  br label %_ZN5scene15SSkinMeshBuffer9getVertexEj.exit

bb.aq:                                            ; preds = %bb.an
  %i.jl = load ptr, ptr %i.cd, align 8, !tbaa !155
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !158
  %i.jo = getelementptr inbounds nuw [40 x i8], ptr %i.jn, i64 %i.jc
  br label %_ZN5scene15SSkinMeshBuffer9getVertexEj.exit

_ZN5scene15SSkinMeshBuffer9getVertexEj.exit:      ; preds = %bb.ao, %bb.ap, %bb.aq
  %.0.i = phi ptr [ %i.jo, %bb.aq ], [ %i.jg, %bb.ao ], [ %i.jk, %bb.ap ] ; 3 uses
  %i.jp = load i8, ptr %i.cf, align 1, !tbaa !85, !range !128, !noundef !129
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN5scene15SSkinMeshBuffer9getVertexEj.exit
  %i.jr = load <4 x float>, ptr %i.cg, align 8, !tbaa !116
  %i.js = fmul <4 x float> %i.jr, splat (float 2.550000e+02)
  %i.jt = fadd <4 x float> %i.js, splat (float 5.000000e-01)
  %i.ju = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.jt)
  %i.jv = fptosi <4 x float> %i.ju to <4 x i32>
  %4 = shl <4 x i32> %i.jv, <i32 16, i32 8, i32 0, i32 24>
  %5 = and <4 x i32> %4, <i32 16711680, i32 65280, i32 255, i32 -1>
  %6 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %5)
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i32 %6, ptr %i.jw, align 4, !tbaa !89
  br label %bb.au

bb.as:                                            ; preds = %_ZN5scene15SSkinMeshBuffer9getVertexEj.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !268 ; 2 uses
  %i.jz = icmp ugt i32 %i.jy, -16777217
  br i1 %i.jz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ka = load float, ptr %i.ch, align 4, !tbaa !130
  %i.kb = fmul float %i.ka, 2.550000e+02
  %i.kc = fptosi float %i.kb to i32
  %i.kd = shl i32 %i.kc, 24
  %i.ke = and i32 %i.jy, 16777215
  %i.kf = or disjoint i32 %i.kd, %i.ke
  store i32 %i.kf, ptr %i.jx, align 4, !tbaa !268
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %i.kg = load ptr, ptr %i.ci, align 8, !tbaa !107 ; 2 uses
  %.not65 = icmp eq ptr %i.kg, null
  br i1 %.not65, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 48
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i, i64 28 ; 2 uses
  %i.kj = load <2 x float>, ptr %i.kh, align 8, !tbaa !116
  %i.kk = load <2 x float>, ptr %i.ki, align 4, !tbaa !116
  %i.kl = fmul <2 x float> %i.kj, %i.kk
  store <2 x float> %i.kl, ptr %i.ki, align 4, !tbaa !116
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %_ZN4core5arrayIiEixEj.exit73, %_ZN4core5arrayIiEixEj.exit87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.critedge, label %bb.n, !llvm.loop !259

.critedge:                                        ; preds = %bb.aw
  %i.km = load ptr, ptr %i.al, align 8, !tbaa !142 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32 ; 2 uses
  %i.ko = load i32, ptr %i.b, align 8, !tbaa !89
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  %i.kq = load ptr, ptr %i.bw, align 8, !tbaa !160
  %i.kr = load ptr, ptr %i.bv, align 8, !tbaa !100 ; 3 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = ashr exact i64 %i.ku, 2                 ; 2 uses
  %i.kw = icmp ugt i64 %i.kv, %i.kp
  br i1 %i.kw, label %_ZN4core5arrayIiEixEj.exit88, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #28
  unreachable

_ZN4core5arrayIiEixEj.exit88:                     ; preds = %.critedge
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.kp
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !89
  %i.kz = trunc i32 %i.ky to i16                  ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 40 ; 3 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !145 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.km, i64 48 ; 3 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.lb, %i.ld
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN4core5arrayIiEixEj.exit88
  store i16 %i.kz, ptr %i.lb, align 2, !tbaa !149
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  store ptr %i.le, ptr %i.la, align 8, !tbaa !145
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.az:                                            ; preds = %_ZN4core5arrayIiEixEj.exit88
  %i.lf = load ptr, ptr %i.kn, align 8, !tbaa !146 ; 4 uses
  %i.lg = ptrtoint ptr %i.lb to i64
  %i.lh = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.li = sub i64 %i.lg, %i.lh                    ; 5 uses
  %i.lj = icmp eq i64 %i.li, 9223372036854775806
  br i1 %i.lj, label %bb.ba, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.az
  %i.lk = ashr exact i64 %i.li, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lk, i64 1)
  %i.ll = add i64 %.sroa.speculated.i.i.i.i, %i.lk ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.lk
  %i.ln = call i64 @llvm.umin.i64(i64 %i.ll, i64 4611686018427387903)
  %i.lo = select i1 %i.lm, i64 4611686018427387903, i64 %i.ln ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.lo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.lp = shl nuw nsw i64 %i.lo, 1
  %i.lq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #27 ; 4 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %i.li ; 2 uses
  store i16 %i.kz, ptr %i.lr, align 2, !tbaa !149
  %i.ls = icmp sgt i64 %i.li, 0
  br i1 %i.ls, label %bb.bb, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.bb:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.lq, ptr align 2 %i.lf, i64 %i.li, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bb, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.lu = load ptr, ptr %i.lc, align 8, !tbaa !261
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = sub i64 %i.lv, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.lw) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.bc, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.lq, ptr %i.kn, align 8, !tbaa !146
  store ptr %i.lt, ptr %i.la, align 8, !tbaa !145
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.lo
  store ptr %i.lx, ptr %i.lc, align 8, !tbaa !261
  %.pre181 = load ptr, ptr %i.al, align 8, !tbaa !142
  %.pre182 = load ptr, ptr %i.bw, align 8, !tbaa !160
  %.pre183 = load ptr, ptr %i.bv, align 8, !tbaa !100 ; 2 uses
  %.pre188 = ptrtoint ptr %.pre182 to i64
  %.pre190 = ptrtoint ptr %.pre183 to i64
  %.pre192 = sub i64 %.pre188, %.pre190
  %.pre194 = ashr exact i64 %.pre192, 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %bb.ay, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i
  %.pre-phi195 = phi i64 [ %i.kv, %bb.ay ], [ %.pre194, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ly = phi ptr [ %i.kr, %bb.ay ], [ %.pre183, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.lz = phi ptr [ %i.km, %bb.ay ], [ %.pre181, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ] ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32 ; 2 uses
  %i.mb = load i32, ptr %i.bt, align 4, !tbaa !89
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = icmp ugt i64 %.pre-phi195, %i.mc
  br i1 %i.md, label %_ZN4core5arrayIiEixEj.exit89, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #28
  unreachable

_ZN4core5arrayIiEixEj.exit89:                     ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.mc
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !89
  %i.mg = trunc i32 %i.mf to i16                  ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lz, i64 40 ; 3 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !145 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lz, i64 48 ; 3 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !261
  %.not.i.i90 = icmp eq ptr %i.mi, %i.mk
  br i1 %.not.i.i90, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZN4core5arrayIiEixEj.exit89
  store i16 %i.mg, ptr %i.mi, align 2, !tbaa !149
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  store ptr %i.ml, ptr %i.mh, align 8, !tbaa !145
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit97

bb.bf:                                            ; preds = %_ZN4core5arrayIiEixEj.exit89
  %i.mm = load ptr, ptr %i.ma, align 8, !tbaa !146 ; 4 uses
  %i.mn = ptrtoint ptr %i.mi to i64
  %i.mo = ptrtoint ptr %i.mm to i64               ; 2 uses
  %i.mp = sub i64 %i.mn, %i.mo                    ; 5 uses
  %i.mq = icmp eq i64 %i.mp, 9223372036854775806
  br i1 %i.mq, label %bb.bg, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i91

bb.bg:                                            ; preds = %bb.bf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i91: ; preds = %bb.bf
  %i.mr = ashr exact i64 %i.mp, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i92 = call i64 @llvm.umax.i64(i64 %i.mr, i64 1)
  %i.ms = add i64 %.sroa.speculated.i.i.i.i92, %i.mr ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.mr
  %i.mu = call i64 @llvm.umin.i64(i64 %i.ms, i64 4611686018427387903)
  %i.mv = select i1 %i.mt, i64 4611686018427387903, i64 %i.mu ; 3 uses
  %.not.i.i.i.i93 = icmp ne i64 %i.mv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i93)
  %i.mw = shl nuw nsw i64 %i.mv, 1
  %i.mx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mw) #27 ; 4 uses
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 %i.mp ; 2 uses
  store i16 %i.mg, ptr %i.my, align 2, !tbaa !149
  %i.mz = icmp sgt i64 %i.mp, 0
  br i1 %i.mz, label %bb.bh, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i94

bb.bh:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i91
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.mx, ptr align 2 %i.mm, i64 %i.mp, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i94

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i94: ; preds = %bb.bh, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i91
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %.not.i17.i.i.i95 = icmp eq ptr %i.mm, null
  br i1 %.not.i17.i.i.i95, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i96, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i94
  %i.nb = load ptr, ptr %i.mj, align 8, !tbaa !261
end_hunk_0
begin_hunk_1_@_ZN5video9SMaterialC2ERKS0_:bb.a
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !127
  br label %bb.f

bb.f:                                             ; preds = %.noexc.1, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = and i16 %i.aj, 15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.am = load i16, ptr %i.al, align 8
  %i.an = and i16 %i.am, -16
  %i.ao = or disjoint i16 %i.an, %i.ak            ; 2 uses
  store i16 %i.ao, ptr %i.al, align 8
  %i.ap = load i16, ptr %i.ai, align 8
  %i.aq = and i16 %i.ap, 240
  %i.ar = and i16 %i.ao, -241
  %i.as = or disjoint i16 %i.ar, %i.aq            ; 2 uses
  store i16 %i.as, ptr %i.al, align 8
  %i.at = load i16, ptr %i.ai, align 8
  %i.au = and i16 %i.at, 3840
  %i.av = and i16 %i.as, -3841
  %i.aw = or disjoint i16 %i.av, %i.au
  store i16 %i.aw, ptr %i.al, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.az = load <4 x i8>, ptr %i.ax, align 2, !tbaa !72
  store <4 x i8> %i.az, ptr %i.ay, align 2, !tbaa !72
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.1

_ZN5video14SMaterialLayerC2ERKS0_.exit.1:         ; preds = %bb.f, %_ZN5video14SMaterialLayerC2ERKS0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !127
  %i.bc = icmp eq ptr %0, %1
  br i1 %i.bc, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.2, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit.1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !115
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !115
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !127
  %.not19.i.i.2 = icmp eq ptr %i.bg, null
  br i1 %.not19.i.i.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27
          to label %.noexc.2 unwind label %.preheader.preheader ; 2 uses

.noexc.2:                                         ; preds = %bb.h
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bh, ptr noundef nonnull align 4 dereferenceable(64) %i.bi, i64 64, i1 false), !tbaa.struct !161
  store ptr %i.bh, ptr %i.bb, align 8, !tbaa !127
  br label %bb.i

bb.i:                                             ; preds = %.noexc.2, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = and i16 %i.bk, 15
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = and i16 %i.bn, -16
  %i.bp = or disjoint i16 %i.bo, %i.bl            ; 2 uses
  store i16 %i.bp, ptr %i.bm, align 8
  %i.bq = load i16, ptr %i.bj, align 8
  %i.br = and i16 %i.bq, 240
  %i.bs = and i16 %i.bp, -241
  %i.bt = or disjoint i16 %i.bs, %i.br            ; 2 uses
  store i16 %i.bt, ptr %i.bm, align 8
  %i.bu = load i16, ptr %i.bj, align 8
  %i.bv = and i16 %i.bu, 3840
  %i.bw = and i16 %i.bt, -3841
  %i.bx = or disjoint i16 %i.bw, %i.bv
  store i16 %i.bx, ptr %i.bm, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ca = load <4 x i8>, ptr %i.by, align 2, !tbaa !72
  store <4 x i8> %i.ca, ptr %i.bz, align 2, !tbaa !72
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.2

_ZN5video14SMaterialLayerC2ERKS0_.exit.2:         ; preds = %bb.i, %_ZN5video14SMaterialLayerC2ERKS0_.exit.1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !127
  %i.cd = icmp eq ptr %0, %1
  br i1 %i.cd, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3, label %bb.j

bb.j:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !115
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !115
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !127
  %.not19.i.i.3 = icmp eq ptr %i.ch, null
  br i1 %.not19.i.i.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27
          to label %.noexc.3 unwind label %.preheader.preheader ; 2 uses

.noexc.3:                                         ; preds = %bb.k
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ci, ptr noundef nonnull align 4 dereferenceable(64) %i.cj, i64 64, i1 false), !tbaa.struct !161
  store ptr %i.ci, ptr %i.cc, align 8, !tbaa !127
  br label %bb.l

bb.l:                                             ; preds = %.noexc.3, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = and i16 %i.cl, 15
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.co = load i16, ptr %i.cn, align 8
  %i.cp = and i16 %i.co, -16
  %i.cq = or disjoint i16 %i.cp, %i.cm            ; 2 uses
  store i16 %i.cq, ptr %i.cn, align 8
  %i.cr = load i16, ptr %i.ck, align 8
  %i.cs = and i16 %i.cr, 240
  %i.ct = and i16 %i.cq, -241
  %i.cu = or disjoint i16 %i.ct, %i.cs            ; 2 uses
  store i16 %i.cu, ptr %i.cn, align 8
  %i.cv = load i16, ptr %i.ck, align 8
  %i.cw = and i16 %i.cv, 3840
  %i.cx = and i16 %i.cu, -3841
  %i.cy = or disjoint i16 %i.cx, %i.cw
  store i16 %i.cy, ptr %i.cn, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.db = load <4 x i8>, ptr %i.cz, align 2, !tbaa !72
  store <4 x i8> %i.db, ptr %i.da, align 2, !tbaa !72
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3

_ZN5video14SMaterialLayerC2ERKS0_.exit.3:         ; preds = %bb.l, %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.dc, ptr noundef nonnull align 8 dereferenceable(31) %i.dd, i64 31, i1 false)
  ret void

.preheader.preheader:                             ; preds = %bb.e, %bb.h, %bb.k
  %.lcssa.ph = phi ptr [ %i.cb, %bb.k ], [ %i.ba, %bb.h ], [ %i.z, %bb.e ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.de = phi ptr [ %i.df, %_ZN5video14SMaterialLayerD2Ev.exit ], [ %.lcssa.ph, %.preheader.preheader ] ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -24 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !127 ; 2 uses
  %.not.i = icmp eq ptr %i.dh, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 64) #26
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %.preheader, %bb.m
  %i.di = icmp eq ptr %i.df, %0
  br i1 %i.di, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  resume { ptr, i32 } %lpad.thr_comm
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !92}
!1 = distinct !{!1, !92}
!2 = distinct !{null}
!3 = distinct !{!3, !92}
!4 = distinct !{!4, !92}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTSN5scene9SB3dChunkE", !15, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN5scene9SB3dChunkESaIS1_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!"_ZTSNSt12_Vector_baseIN5scene9SB3dChunkESaIS1_EE12_Vector_implE", !17, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIN5scene9SB3dChunkESaIS1_EE", !18, i64 0}
!20 = !{!"_ZTSSt6vectorIN5scene9SB3dChunkESaIS1_EE", !19, i64 0}
!21 = !{!"bool", !9, i64 0}
!22 = !{!"_ZTSN4core5arrayIN5scene9SB3dChunkEEE", !20, i64 0, !21, i64 24}
!23 = !{!22, !21, i64 24}
!24 = !{!"p1 _ZTSN5scene12SB3dMaterialE", !15, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN5scene12SB3dMaterialESaIS1_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIN5scene12SB3dMaterialESaIS1_EE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIN5scene12SB3dMaterialESaIS1_EE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIN5scene12SB3dMaterialESaIS1_EE", !27, i64 0}
!29 = !{!"_ZTSN4core5arrayIN5scene12SB3dMaterialEEE", !28, i64 0, !21, i64 24}
!30 = !{!29, !21, i64 24}
!31 = !{!"p1 _ZTSN5scene11SB3dTextureE", !15, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN5scene11SB3dTextureESaIS1_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseIN5scene11SB3dTextureESaIS1_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN5scene11SB3dTextureESaIS1_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIN5scene11SB3dTextureESaIS1_EE", !34, i64 0}
!36 = !{!"_ZTSN4core5arrayIN5scene11SB3dTextureEEE", !35, i64 0, !21, i64 24}
!37 = !{!36, !21, i64 24}
!38 = !{!"p1 int", !15, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIiSaIiEE", !41, i64 0}
!43 = !{!"_ZTSN4core5arrayIiEE", !42, i64 0, !21, i64 24}
!44 = !{!43, !21, i64 24}
!45 = !{!"p1 _ZTSN5video17S3DVertex2TCoordsE", !15, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE", !48, i64 0}
!50 = !{!"_ZTSN4core5arrayIN5video17S3DVertex2TCoordsEEE", !49, i64 0, !21, i64 24}
!51 = !{!50, !21, i64 24}
!52 = !{!"_ZTSN5scene11IMeshLoaderE"}
!53 = !{!"p1 _ZTSN5scene11SkinnedMeshE", !15, i64 0}
!54 = !{!"_ZTS7irr_ptrIN5scene11SkinnedMeshEE", !53, i64 0}
!55 = !{!"p1 _ZTSN5scene18SkinnedMeshBuilder6WeightE", !15, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE", !58, i64 0}
!60 = !{!"_ZTSN5scene18SkinnedMeshBuilderE", !54, i64 0, !59, i64 8}
!61 = !{!"p1 _ZTSN2io9IReadFileE", !15, i64 0}
!62 = !{!"_ZTSN5scene18CB3DMeshFileLoaderE", !52, i64 0, !22, i64 8, !29, i64 40, !36, i64 72, !43, i64 104, !43, i64 136, !50, i64 168, !60, i64 200, !61, i64 232, !10, i64 240, !21, i64 244, !21, i64 245, !21, i64 246}
!63 = !{!62, !21, i64 246}
!64 = !{!"_ZTS17IReferenceCounted", !10, i64 8}
!65 = !{!64, !10, i64 8}
!66 = !{!"p1 omnipotent char", !15, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !66, i64 0}
!68 = !{!67, !66, i64 0}
!69 = !{!"long", !9, i64 0}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !67, i64 0, !69, i64 8, !9, i64 16}
!71 = !{!70, !69, i64 8}
!72 = !{!9, !9, i64 0}
!73 = !{!70, !66, i64 0}
!74 = !{!62, !61, i64 232}
!75 = !{!"float", !9, i64 0}
!76 = !{!"_ZTSN4core8vector3dIfEE", !75, i64 0, !75, i64 4, !75, i64 8}
!77 = !{!"_ZTSN4core8aabbox3dIfEE", !76, i64 0, !76, i64 12}
!78 = !{!54, !53, i64 0}
!79 = !{!56, !55, i64 0}
!80 = !{!56, !55, i64 16}
!81 = !{!62, !10, i64 240}
!82 = !{!17, !16, i64 0}
!83 = !{!17, !16, i64 16}
!84 = !{!62, !21, i64 244}
!85 = !{!62, !21, i64 245}
!86 = !{!"_ZTSN5scene15SB3dChunkHeaderE", !9, i64 0, !10, i64 4}
!87 = !{!86, !10, i64 4}
!88 = !{!17, !16, i64 8}
!89 = !{!10, !10, i64 0}
!90 = !{!69, !69, i64 0}
!91 = !{i64 0, i64 4, !72, i64 4, i64 4, !89, i64 8, i64 8, !90}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!16, !16, i64 0}
!94 = !{!"_ZTSN5scene9SB3dChunkE", !9, i64 0, !10, i64 4, !69, i64 8}
!95 = !{!94, !69, i64 8}
!96 = !{!94, !10, i64 4}
!97 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!98 = !{!46, !45, i64 0}
!99 = !{!46, !45, i64 16}
!100 = !{!39, !38, i64 0}
!101 = !{!39, !38, i64 16}
!102 = !{!24, !24, i64 0}
!103 = !{!25, !24, i64 16}
!104 = !{!32, !31, i64 0}
!105 = !{!32, !31, i64 8}
!106 = !{!32, !31, i64 16}
!107 = !{!31, !31, i64 0}
!108 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!109 = !{ptr @_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj}
!110 = !{!"p1 _ZTSN5video8ITextureE", !15, i64 0}
!111 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !9, i64 0}
!112 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !9, i64 0}
!113 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !15, i64 0}
!114 = !{!"_ZTSN5video14SMaterialLayerE", !110, i64 0, !9, i64 8, !9, i64 8, !9, i64 9, !111, i64 10, !112, i64 11, !9, i64 12, !9, i64 13, !113, i64 16}
!115 = !{!114, !110, i64 0}
!116 = !{!75, !75, i64 0}
!117 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !9, i64 0}
!118 = !{!"_ZTSN5video6SColorE", !10, i64 0}
!119 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !9, i64 0}
!120 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !9, i64 0}
!121 = !{!"_ZTSN5video13E_COLOR_PLANEE", !9, i64 0}
!122 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !9, i64 0}
!123 = !{!"_ZTSN5video8E_ZWRITEE", !9, i64 0}
!124 = !{!"_ZTSN5video9SMaterialE", !9, i64 0, !117, i64 96, !118, i64 100, !75, i64 104, !75, i64 108, !75, i64 112, !75, i64 116, !75, i64 120, !119, i64 124, !120, i64 124, !121, i64 125, !122, i64 125, !21, i64 126, !21, i64 126, !123, i64 126, !21, i64 126, !21, i64 126, !21, i64 126, !21, i64 126}
!125 = !{!"_ZTSN5scene12SB3dMaterialE", !124, i64 0, !75, i64 128, !75, i64 132, !75, i64 136, !75, i64 140, !75, i64 144, !10, i64 148, !10, i64 152, !9, i64 160}
!126 = !{!25, !24, i64 8}
!127 = !{!114, !113, i64 16}
!128 = !{i8 0, i8 2}
!129 = !{}
!130 = !{!125, !75, i64 140}
!131 = !{!46, !45, i64 8}
!132 = !{!25, !24, i64 0}
!133 = !{!"_ZTSN5scene11IMeshBufferE"}
!134 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE", !15, i64 0}
!135 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE", !15, i64 0}
!136 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !15, i64 0}
!137 = !{!"p1 _ZTSN5scene12CIndexBufferItEE", !15, i64 0}
!138 = !{!"_ZTSN4core8CMatrix4IfEE", !9, i64 0}
!139 = !{!"_ZTSN5video13E_VERTEX_TYPEE", !9, i64 0}
!140 = !{!"_ZTSN5scene16E_PRIMITIVE_TYPEE", !9, i64 0}
!141 = !{!"_ZTSN5scene15SSkinMeshBufferE", !133, i64 0, !134, i64 8, !135, i64 16, !136, i64 24, !137, i64 32, !138, i64 40, !124, i64 104, !139, i64 232, !77, i64 236, !140, i64 260, !21, i64 264}
!142 = !{!141, !137, i64 32}
!143 = !{!"p1 short", !15, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !143, i64 0, !143, i64 8, !143, i64 16}
!145 = !{!144, !143, i64 8}
!146 = !{!144, !143, i64 0}
!147 = !{!141, !139, i64 232}
!148 = !{!"short", !9, i64 0}
!149 = !{!148, !148, i64 0}
!150 = !{!141, !135, i64 16}
!151 = !{!141, !134, i64 8}
!152 = !{!"p1 _ZTSN5video17S3DVertexTangentsE", !15, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE17_Vector_impl_dataE", !152, i64 0, !152, i64 8, !152, i64 16}
!154 = !{!153, !152, i64 0}
!155 = !{!141, !136, i64 24}
!156 = !{!"p1 _ZTSN5video9S3DVertexE", !15, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!158 = !{!157, !156, i64 0}
!159 = !{i64 0, i64 4, !116, i64 4, i64 4, !116, i64 8, i64 4, !116}
!160 = !{!39, !38, i64 8}
!161 = !{i64 0, i64 64, !72}
!162 = !{!157, !156, i64 8}
!163 = !{ptr @_ZN5scene18CB3DMeshFileLoaderD1Ev}
end_hunk_1
