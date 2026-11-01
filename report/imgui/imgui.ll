Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.bwd = fptosi <4 x float> %i.bwc to <4 x i32>
  %i.bwe = shl <4 x i32> %i.bwd, <i32 0, i32 8, i32 16, i32 24>
  %i.bwf = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bwe)
  %i.bwg = select i1 %.not108.i, float 0.000000e+00, float %i.bqn
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bvq, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.bvb, i32 noundef %i.bwf, float noundef %i.bwg, i32 noundef 48)
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3296
  %i.bwi = load float, ptr %i.bwh, align 4, !tbaa !1453 ; 2 uses
  %i.bwj = fcmp ogt float %i.bwi, 0.000000e+00
  br i1 %i.bwj, label %bb.lp, label %bb.lr

bb.lp:                                            ; preds = %bb.lo
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.bwm = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bwn = load float, ptr %i.bwm, align 4, !tbaa !378 ; 2 uses
  %i.bwo = load float, ptr %i.bwl, align 4, !tbaa !735
  %i.bwp = load float, ptr %i.bwk, align 4, !tbaa !616
  %i.bwq = fadd float %i.bwo, %i.bwp
  %i.bwr = fcmp olt float %i.bwn, %i.bwq
  br i1 %i.bwr, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.bws = load ptr, ptr %i.bvp, align 8, !tbaa !408
  %i.bwt = load <2 x float>, ptr %16, align 8
  %i.bwu = load float, ptr %i.bvb, align 8, !tbaa !374
  %i.bwv = fneg float %i.bqp
  %i.bww = insertelement <2 x float> poison, float %i.bqp, i64 0
  %i.bwx = insertelement <2 x float> %i.bww, float %i.bwv, i64 1
  %i.bwy = insertelement <2 x float> %i.bwt, float %i.bwu, i64 1
  %i.bwz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bwx, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bwy) ; 2 uses
  %i.bxa = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bxa, i64 3612
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxa, i64 3220
  %i.bxd = load float, ptr %i.bxc, align 4, !tbaa !383
  %i.bxe = load <4 x float>, ptr %i.bxb, align 4, !tbaa !75
  %i.bxf = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bxd, i64 3
  %i.bxg = fmul <4 x float> %i.bxe, %i.bxf        ; 3 uses
  %i.bxh = fcmp olt <4 x float> %i.bxg, zeroinitializer
  %i.bxi = fcmp ogt <4 x float> %i.bxg, splat (float 1.000000e+00)
  %i.bxj = select <4 x i1> %i.bxi, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bxg
  %i.bxk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bxj, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bxl = select <4 x i1> %i.bxh, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bxk
  %i.bxm = fptosi <4 x float> %i.bxl to <4 x i32>
  %i.bxn = shl <4 x i32> %i.bxm, <i32 0, i32 8, i32 16, i32 24>
  %i.bxo = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bxn)
  %i.bxp = extractelement <2 x float> %i.bwz, i64 0
  %i.bxq = extractelement <2 x float> %i.bwz, i64 1
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bws, float noundef %i.bxp, float noundef %i.bxq, float noundef %i.bwn, i32 noundef %i.bxo, float noundef %i.bwi)
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.ln
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bqf, i64 200
  %i.bxs = load i8, ptr %i.bxr, align 8, !tbaa !834, !range !100, !noundef !236
  %i.bxt = trunc nuw i8 %i.bxs to i1
  br i1 %i.bxt, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 0)
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 201
  %i.bxv = load i8, ptr %i.bxu, align 1, !tbaa !937, !range !100, !noundef !236
  %i.bxw = trunc nuw i8 %i.bxv to i1
  br i1 %i.bxw, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 1)
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.bxx = and i32 %i.bqj, 2
  %.not110.i = icmp eq i32 %i.bxx, 0
  %or.cond.i668 = select i1 %.0405, i1 %.not110.i, i1 false
  %i.bxy = icmp ne i32 %.0404, 0
  %or.cond185.i = and i1 %i.bxy, %or.cond.i668
  br i1 %or.cond185.i, label %.lr.ph.i669, label %.loopexit.i

.lr.ph.i669:                                      ; preds = %bb.lw
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40 ; 2 uses
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48 ; 2 uses
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.byd = call float @llvm.fmuladd.f32(float %i.bqp, float 5.000000e-01, float 5.000000e-01)
  %i.bye = fptosi float %i.byd to i32
  %i.byf = sitofp i32 %i.bye to float             ; 5 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 8 uses
  %i.byh = fadd float %i.bqn, %i.byf              ; 3 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.byj = load i32, ptr %i.i, align 16, !tbaa !237 ; 2 uses
  %i.byk = icmp ult i32 %i.byj, 16777216
  br i1 %i.byk, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %.lr.ph.i669
  %i.byl = load ptr, ptr %i.byg, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 80
  %i.byn = load <2 x float>, ptr %i.bxz, align 8, !tbaa !75 ; 3 uses
  %i.byo = load <2 x float>, ptr %i.bya, align 8, !tbaa !75
  %i.byp = fadd <2 x float> %i.byn, %i.byo
  %i.byq = fsub <2 x float> %i.byp, %i.byn
  %i.byr = fadd <2 x float> %i.byn, %i.byq        ; 3 uses
  %i.bys = insertelement <2 x float> poison, float %i.anc, i64 0
  %i.byt = insertelement <2 x float> %i.bys, float %i.byf, i64 1
  %i.byu = fsub <2 x float> %i.byr, %i.byt
  store <2 x float> %i.byu, ptr %17, align 8
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bym, ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.byv = load ptr, ptr %i.byg, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.byw = insertelement <2 x float> poison, float %i.byf, i64 0
  %i.byx = insertelement <2 x float> %i.byw, float %i.anc, i64 1
  %i.byy = fsub <2 x float> %i.byr, %i.byx
  store <2 x float> %i.byy, ptr %18, align 8
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byv, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.byz, ptr noundef nonnull align 4 dereferenceable(8) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.bza = load ptr, ptr %i.byg, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.bzb = insertelement <2 x float> poison, float %i.byh, i64 0
  %i.bzc = shufflevector <2 x float> %i.bzb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bzd = fsub <2 x float> %i.byr, %i.bzc
  store <2 x float> %i.bzd, ptr %19, align 8, !tbaa !75
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.bza, ptr noundef nonnull align 4 dereferenceable(8) %19, float noundef %i.bqn, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  %i.bze = load ptr, ptr %i.byg, align 8, !tbaa !408 ; 3 uses
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 80 ; 2 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bze, i64 88
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !438
  %i.bzi = load i32, ptr %i.bzf, align 8, !tbaa !439
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.bze, ptr noundef %i.bzh, i32 noundef %i.bzi, i32 noundef %i.byj)
  store i32 0, ptr %i.bzf, align 8, !tbaa !439
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %.lr.ph.i669
  %exitcond.not.i673.peel = icmp eq i32 %.0404, 1
  br i1 %exitcond.not.i673.peel, label %.loopexit.i, label %.peel.next

.peel.next:                                       ; preds = %bb.ly
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !237 ; 2 uses
  %i.bzl = icmp ult i32 %i.bzk, 16777216
  br i1 %i.bzl, label %.loopexit.i, label %bb.lz

bb.lz:                                            ; preds = %.peel.next
  %i.bzm = load float, ptr %i.bxz, align 8, !tbaa !249 ; 3 uses
  %i.bzn = load float, ptr %i.bya, align 8, !tbaa !249
  %i.bzo = fadd float %i.bzm, %i.bzn
  %i.bzp = load float, ptr %i.byb, align 4, !tbaa !250 ; 3 uses
  %i.bzq = load float, ptr %i.byc, align 4, !tbaa !250
  %i.bzr = fadd float %i.bzp, %i.bzq
  %i.bzs = fsub float %i.bzo, %i.bzm
  %i.bzt = call float @llvm.fmuladd.f32(float %i.bzs, float 0.000000e+00, float %i.bzm) ; 3 uses
  %i.bzu = fsub float %i.bzr, %i.bzp
  %i.bzv = fadd float %i.bzp, %i.bzu              ; 3 uses
  %i.bzw = load ptr, ptr %i.byg, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.bzx = fadd float %i.bzt, %i.byf
  %i.bzy = fsub float %i.bzv, %i.anc
  %.sroa.0.0.vec.insert.i156.i = insertelement <2 x float> poison, float %i.bzx, i64 0
  %.sroa.0.4.vec.insert.i157.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i156.i, float %i.bzy, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i157.i, ptr %17, align 8
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzw, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bzz, ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.caa = load ptr, ptr %i.byg, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.cab = fadd float %i.bzt, %i.anc
  %i.cac = fsub float %i.bzv, %i.byf
  %.sroa.0.0.vec.insert.i160.i = insertelement <2 x float> poison, float %i.cab, i64 0
  %.sroa.0.4.vec.insert.i161.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i160.i, float %i.cac, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i161.i, ptr %18, align 8
  %i.cad = getelementptr inbounds nuw i8, ptr %i.caa, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cad, ptr noundef nonnull align 4 dereferenceable(8) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.cae = load ptr, ptr %i.byg, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.caf = fadd float %i.byh, %i.bzt
  %i.cag = fsub float %i.bzv, %i.byh
  store float %i.caf, ptr %19, align 8, !tbaa !249
  store float %i.cag, ptr %i.byi, align 4, !tbaa !250
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.cae, ptr noundef nonnull align 4 dereferenceable(8) %19, float noundef %i.bqn, i32 noundef 3, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  %i.cah = load ptr, ptr %i.byg, align 8, !tbaa !408 ; 3 uses
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 80 ; 2 uses
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cah, i64 88
  %i.cak = load ptr, ptr %i.caj, align 8, !tbaa !438
  %i.cal = load i32, ptr %i.cai, align 8, !tbaa !439
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.cah, ptr noundef %i.cak, i32 noundef %i.cal, i32 noundef %i.bzk)
  store i32 0, ptr %i.cai, align 8, !tbaa !439
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ly, %.peel.next, %bb.lz, %bb.lw
  br i1 %.0405, label %bb.ma, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.ma:                                            ; preds = %.loopexit.i
  %i.cam = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.can = load float, ptr %i.bqo, align 4, !tbaa !928 ; 6 uses
  %31 = getelementptr inbounds nuw i8, ptr %i.cam, i64 3612
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cam, i64 3616
  %i.cao = getelementptr inbounds nuw i8, ptr %i.cam, i64 3220
  %i.cap = load float, ptr %i.cao, align 4, !tbaa !383
  %i.caq = load <4 x float>, ptr %31, align 4, !tbaa !75 ; 3 uses
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !75
  %i.car = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.cap, i64 3
  %i.cas = fmul <4 x float> %i.caq, %i.car        ; 3 uses
  %i.cat = extractelement <4 x float> %i.caq, i64 0
  %i.cau = fcmp olt float %i.cat, 0.000000e+00
  %i.cav = fcmp ogt <4 x float> %i.cas, splat (float 1.000000e+00)
  %i.caw = select <4 x i1> %i.cav, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cas
  %i.cax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.caw, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 3 uses
  %i.cay = extractelement <4 x float> %i.cax, i64 0
  %i.caz = select i1 %i.cau, float 5.000000e-01, float %i.cay
  %i.cba = fptosi float %i.caz to i32
  %i.cbb = fcmp olt float %.sroa.4.0.copyload.i.i.i, 0.000000e+00
  %i.cbc = extractelement <4 x float> %i.cax, i64 1
  %i.cbd = select i1 %i.cbb, float 5.000000e-01, float %i.cbc
  %i.cbe = fptosi float %i.cbd to i32
  %i.cbf = shl i32 %i.cbe, 8
  %i.cbg = or i32 %i.cbf, %i.cba
  %32 = shufflevector <4 x float> %i.caq, <4 x float> %i.cas, <2 x i32> <i32 2, i32 7>
  %i.cbh = fcmp olt <2 x float> %32, zeroinitializer
  %i.cbi = shufflevector <4 x float> %i.cax, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cbj = select <2 x i1> %i.cbh, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cbi
  %i.cbk = fptosi <2 x float> %i.cbj to <2 x i32>
  %i.cbl = shl <2 x i32> %i.cbk, <i32 16, i32 24> ; 2 uses
  %i.cbm = extractelement <2 x i32> %i.cbl, i64 0
  %i.cbn = or i32 %i.cbg, %i.cbm
  %i.cbo = extractelement <2 x i32> %i.cbl, i64 1
  %i.cbp = or i32 %i.cbn, %i.cbo                  ; 4 uses
  %i.cbq = fcmp ogt float %i.can, 0.000000e+00
  br i1 %i.cbq, label %bb.mb, label %.critedge.i.i

bb.mb:                                            ; preds = %bb.ma
  %i.cbr = load i32, ptr %i.bqi, align 4, !tbaa !614
  %i.cbs = and i32 %i.cbr, 128
  %i.cbt = icmp eq i32 %i.cbs, 0
  br i1 %i.cbt, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.cbv = load ptr, ptr %i.cbu, align 8, !tbaa !408
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.cby = load <2 x float>, ptr %i.cbw, align 8, !tbaa !75
  %i.cbz = load <2 x float>, ptr %i.cbx, align 8, !tbaa !75
  %i.cca = fadd <2 x float> %i.cby, %i.cbz
  store <2 x float> %i.cca, ptr %14, align 8
  %i.ccb = load float, ptr %i.bqm, align 8, !tbaa !935
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cbv, ptr noundef nonnull align 4 dereferenceable(8) %i.cbw, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %i.cbp, float noundef %i.ccb, float noundef %i.can, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %.critedge.i.i

bb.md:                                            ; preds = %bb.mb
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.bqf, i64 24 ; 2 uses
  %i.ccd = load i32, ptr %i.ccc, align 8, !tbaa !889 ; 2 uses
  %i.cce = and i32 %i.ccd, 4
  %.not.i162.i = icmp eq i32 %i.cce, 0
  br i1 %.not.i162.i, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.ccf = load float, ptr %i.bqm, align 8, !tbaa !935 ; 6 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.cch = load float, ptr %i.ccg, align 8, !tbaa !693
  %i.cci = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.ccj = load float, ptr %i.cci, align 4, !tbaa !735 ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.ccl = load float, ptr %i.cck, align 8, !tbaa !615
  %i.ccm = fadd float %i.cch, %i.ccl
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.cco = load float, ptr %i.ccn, align 4, !tbaa !616
  %i.ccp = fadd float %i.ccj, %i.cco
  %i.ccq = fadd float %i.ccm, -1.000000e+00       ; 3 uses
  %i.ccr = fadd float %i.ccp, -1.000000e+00
  %i.ccs = fadd float %i.ccf, %i.ccj              ; 3 uses
  %i.cct = fsub float %i.ccr, %i.ccf
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 3 uses
  %i.ccv = load ptr, ptr %i.ccu, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ccw = fsub float %i.ccq, %i.ccq
  %i.ccx = fadd float %i.ccq, %i.ccw
  %i.ccy = fsub float %i.cct, %i.ccs              ; 2 uses
  %i.ccz = call float @llvm.fmuladd.f32(float %i.ccy, float 0.000000e+00, float %i.ccs)
  %i.cda = fadd float %i.ccx, 5.000000e-01
  %i.cdb = fadd float %i.ccz, 5.000000e-01
  %i.cdc = fmul float %i.ccf, 0.000000e+00        ; 2 uses
  %i.cdd = fsub float %i.cda, %i.ccf
  %i.cde = fadd float %i.cdc, %i.cdb
  %.sroa.0.0.vec.insert.i25.i.i.i = insertelement <2 x float> poison, float %i.cdd, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i26.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.i.i.i, float %i.cde, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i26.i.i.i, ptr %12, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ccv, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.ccf, float noundef f0xBF490FDB, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.cdf = load ptr, ptr %i.ccu, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.cdg = fadd float %i.ccs, %i.ccy
  %i.cdh = fadd float %i.cdg, 5.000000e-01
  %i.cdi = fadd float %i.cdc, %i.cdh
  %.sroa.0.4.vec.insert.i34.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.i.i.i, float %i.cdi, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i34.i.i.i, ptr %13, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cdf, ptr noundef nonnull align 4 dereferenceable(8) %13, float noundef %i.ccf, float noundef 0.000000e+00, float noundef f0x3F490FDB, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.cdj = load ptr, ptr %i.ccu, align 8, !tbaa !408 ; 3 uses
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 80 ; 2 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdj, i64 88
  %i.cdm = load ptr, ptr %i.cdl, align 8, !tbaa !438
  %i.cdn = load i32, ptr %i.cdk, align 8, !tbaa !439
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cdj, ptr noundef %i.cdm, i32 noundef %i.cdn, i32 noundef %i.cbp, float noundef %i.can, i32 noundef 0)
  store i32 0, ptr %i.cdk, align 8, !tbaa !439
  %.pre.i.i = load i32, ptr %i.ccc, align 8, !tbaa !889
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %i.cdo = phi i32 [ %.pre.i.i, %bb.me ], [ %i.ccd, %bb.md ]
  %i.cdp = and i32 %i.cdo, 8
  %.not42.i.i = icmp eq i32 %i.cdp, 0
  br i1 %.not42.i.i, label %.critedge.i.i, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.cdq = load float, ptr %i.bqm, align 8, !tbaa !935 ; 6 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.cds = load float, ptr %i.cdr, align 8, !tbaa !693 ; 2 uses
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.cdu = load float, ptr %i.cdt, align 4, !tbaa !735
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.cdw = load float, ptr %i.cdv, align 8, !tbaa !615
  %i.cdx = fadd float %i.cds, %i.cdw
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.cdz = load float, ptr %i.cdy, align 4, !tbaa !616
  %i.cea = fadd float %i.cdu, %i.cdz
  %i.ceb = fadd float %i.cdx, -1.000000e+00
  %i.cec = fadd float %i.cea, -1.000000e+00       ; 3 uses
  %i.ced = fadd float %i.cdq, %i.cds              ; 3 uses
  %i.cee = fsub float %i.ceb, %i.cdq
  %i.cef = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 3 uses
  %i.ceg = load ptr, ptr %i.cef, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.ceh = fsub float %i.cee, %i.ced              ; 2 uses
  %i.cei = fadd float %i.ced, %i.ceh
  %i.cej = fsub float %i.cec, %i.cec
  %i.cek = fadd float %i.cec, %i.cej
  %i.cel = fadd float %i.cei, 5.000000e-01
  %i.cem = fadd float %i.cek, 5.000000e-01
  %i.cen = fmul float %i.cdq, 0.000000e+00        ; 2 uses
  %i.ceo = fadd float %i.cen, %i.cel
  %i.cep = fsub float %i.cem, %i.cdq              ; 2 uses
  %.sroa.0.0.vec.insert.i25.i48.i.i = insertelement <2 x float> poison, float %i.ceo, i64 0
  %.sroa.0.4.vec.insert.i26.i49.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.i48.i.i, float %i.cep, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i26.i49.i.i, ptr %10, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ceg, ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef %i.cdq, float noundef f0x3F490FDB, float noundef f0x3FC90FDB, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.ceq = load ptr, ptr %i.cef, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.cer = call float @llvm.fmuladd.f32(float %i.ceh, float 0.000000e+00, float %i.ced)
  %i.ces = fadd float %i.cer, 5.000000e-01
  %i.cet = fadd float %i.cen, %i.ces
  %.sroa.0.0.vec.insert.i33.i50.i.i = insertelement <2 x float> poison, float %i.cet, i64 0
  %.sroa.0.4.vec.insert.i34.i51.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i33.i50.i.i, float %i.cep, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i34.i51.i.i, ptr %11, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ceq, ptr noundef nonnull align 4 dereferenceable(8) %11, float noundef %i.cdq, float noundef f0x3FC90FDB, float noundef f0x4016CBE4, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.ceu = load ptr, ptr %i.cef, align 8, !tbaa !408 ; 3 uses
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ceu, i64 80 ; 2 uses
  %i.cew = getelementptr inbounds nuw i8, ptr %i.ceu, i64 88
  %i.cex = load ptr, ptr %i.cew, align 8, !tbaa !438
  %i.cey = load i32, ptr %i.cev, align 8, !tbaa !439
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ceu, ptr noundef %i.cex, i32 noundef %i.cey, i32 noundef %i.cbp, float noundef %i.can, i32 noundef 0)
  store i32 0, ptr %i.cev, align 8, !tbaa !439
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.mg, %bb.mf, %bb.mc, %bb.ma
  %i.cez = getelementptr inbounds nuw i8, ptr %i.bqf, i64 216
  %i.cfa = load i8, ptr %i.cez, align 8, !tbaa !1449 ; 2 uses
  %.not43.i.i = icmp eq i8 %i.cfa, -1
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.bqf, i64 217
  %i.cfc = load i8, ptr %i.cfb, align 1, !tbaa !1450 ; 2 uses
  %.not44.i.i = icmp eq i8 %i.cfc, -1             ; 3 uses
  %or.cond.i.i = select i1 %.not43.i.i, i1 %.not44.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.ml, label %.critedge._crit_edge.i.i

.critedge._crit_edge.i.i:                         ; preds = %.critedge.i.i
  %spec.select.i.i = select i1 %.not44.i.i, i8 %i.cfa, i8 %i.cfc ; 2 uses
  %i.cfd = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cfd, i64 3532
  %i.cff = select i1 %.not44.i.i, i64 29, i64 30
  %i.cfg = getelementptr inbounds nuw [16 x i8], ptr %i.cfe, i64 %i.cff ; 2 uses
  %.sroa.4.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.cfg, i64 4
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfd, i64 3220
  %i.cfi = load float, ptr %i.cfh, align 4, !tbaa !383
  %i.cfj = load <4 x float>, ptr %i.cfg, align 4, !tbaa !75 ; 3 uses
  %.sroa.4.0.copyload.i54.i.i = load float, ptr %.sroa.4.0..sroa_idx.i53.i.i, align 4, !tbaa !75
  %i.cfk = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.cfi, i64 3
  %i.cfl = fmul <4 x float> %i.cfj, %i.cfk        ; 3 uses
  %i.cfm = extractelement <4 x float> %i.cfj, i64 0
  %i.cfn = fcmp olt float %i.cfm, 0.000000e+00
  %i.cfo = fcmp ogt <4 x float> %i.cfl, splat (float 1.000000e+00)
  %i.cfp = select <4 x i1> %i.cfo, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cfl
  %i.cfq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cfp, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 3 uses
  %i.cfr = extractelement <4 x float> %i.cfq, i64 0
  %i.cfs = select i1 %i.cfn, float 5.000000e-01, float %i.cfr
  %i.cft = fptosi float %i.cfs to i32
  %i.cfu = fcmp olt float %.sroa.4.0.copyload.i54.i.i, 0.000000e+00
  %i.cfv = extractelement <4 x float> %i.cfq, i64 1
  %i.cfw = select i1 %i.cfu, float 5.000000e-01, float %i.cfv
  %i.cfx = fptosi float %i.cfw to i32
  %i.cfy = shl i32 %i.cfx, 8
  %i.cfz = or i32 %i.cfy, %i.cft
  %33 = shufflevector <4 x float> %i.cfj, <4 x float> %i.cfl, <2 x i32> <i32 2, i32 7>
  %i.cga = fcmp olt <2 x float> %33, zeroinitializer
  %i.cgb = shufflevector <4 x float> %i.cfq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cgc = select <2 x i1> %i.cga, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cgb
  %i.cgd = fptosi <2 x float> %i.cgc to <2 x i32>
  %i.cge = shl <2 x i32> %i.cgd, <i32 16, i32 24> ; 2 uses
  %i.cgf = extractelement <2 x i32> %i.cge, i64 0
  %i.cgg = or i32 %i.cfz, %i.cgf
  %i.cgh = extractelement <2 x i32> %i.cge, i64 1
  %i.cgi = or i32 %i.cgg, %i.cgh
  %i.cgj = load float, ptr %i.bqo, align 4, !tbaa !928 ; 2 uses
  %i.cgk = fcmp ole float %i.cgj, 2.000000e+00
  %i.cgl = select i1 %i.cgk, float 2.000000e+00, float %i.cgj
  %i.cgm = load float, ptr %i.bqm, align 8, !tbaa !935 ; 11 uses
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.cgo = load float, ptr %i.cgn, align 8, !tbaa !693 ; 5 uses
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.cgq = load float, ptr %i.cgp, align 4, !tbaa !735 ; 5 uses
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.cgs = load float, ptr %i.cgr, align 8, !tbaa !615
  %i.cgt = fadd float %i.cgo, %i.cgs
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.cgv = load float, ptr %i.cgu, align 4, !tbaa !616
  %i.cgw = fadd float %i.cgq, %i.cgv
  %i.cgx = fadd float %i.cgt, -1.000000e+00       ; 3 uses
  %i.cgy = fadd float %i.cgw, -1.000000e+00       ; 4 uses
  switch i8 %spec.select.i.i, label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i [
    i8 0, label %bb.mh
    i8 1, label %bb.mi
    i8 2, label %bb.mj
    i8 3, label %bb.mk
  ]

bb.mh:                                            ; preds = %.critedge._crit_edge.i.i
  %i.cgz = fadd float %i.cgm, %i.cgq
  %i.cha = fadd float %i.cgo, 0.000000e+00
  %i.chb = fsub float %i.cgy, %i.cgm
  %.sroa.044.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.cgo, i64 0
  %.sroa.044.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert.i.i.i.i, float %i.cgz, i64 1
  %.sroa.10.8.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.cha, i64 0
  %.sroa.10.12.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert.i.i.i.i, float %i.chb, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mi:                                            ; preds = %.critedge._crit_edge.i.i
  %.sroa.9.8.vec.insert.i.i67.i.i = insertelement <2 x float> poison, float %i.cgx, i64 0 ; 2 uses
  %i.chc = fadd float %i.cgm, %i.cgq
  %i.chd = fsub float %i.cgy, %i.cgm
  %.sroa.044.4.vec.insert53.i.i68.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i67.i.i, float %i.chc, i64 1
  %.sroa.10.12.vec.insert66.i.i69.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i67.i.i, float %i.chd, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mj:                                            ; preds = %.critedge._crit_edge.i.i
  %i.che = fadd float %i.cgm, %i.cgo
  %i.chf = insertelement <2 x float> poison, float %i.cgx, i64 0
  %i.chg = insertelement <2 x float> %i.chf, float %i.cgq, i64 1
  %i.chh = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.cgm, i64 0
  %i.chi = fsub <2 x float> %i.chg, %i.chh
  %.sroa.044.0.vec.insert49.i.i.i.i = insertelement <2 x float> poison, float %i.che, i64 0
  %.sroa.044.4.vec.insert55.i.i.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert49.i.i.i.i, float %i.cgq, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mk:                                            ; preds = %.critedge._crit_edge.i.i
  %i.chj = fadd float %i.cgm, %i.cgo
  %i.chk = fsub float %i.cgx, %i.cgm
  %.sroa.044.0.vec.insert51.i.i59.i.i = insertelement <2 x float> poison, float %i.chj, i64 0
  %.sroa.044.4.vec.insert57.i.i60.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert51.i.i59.i.i, float %i.cgy, i64 1
  %.sroa.10.8.vec.insert64.i.i61.i.i = insertelement <2 x float> poison, float %i.chk, i64 0
  %.sroa.10.12.vec.insert70.i.i62.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert64.i.i61.i.i, float %i.cgy, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i: ; preds = %bb.mk, %bb.mj, %bb.mi, %bb.mh, %.critedge._crit_edge.i.i
  %.sroa.044.0.i.i.i.i = phi <2 x float> [ %.sroa.044.4.vec.insert57.i.i60.i.i, %bb.mk ], [ %.sroa.044.4.vec.insert.i.i.i.i, %bb.mh ], [ %.sroa.044.4.vec.insert53.i.i68.i.i, %bb.mi ], [ %.sroa.044.4.vec.insert55.i.i.i.i, %bb.mj ], [ zeroinitializer, %.critedge._crit_edge.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i.i = phi <2 x float> [ %.sroa.10.12.vec.insert70.i.i62.i.i, %bb.mk ], [ %.sroa.10.12.vec.insert.i.i.i.i, %bb.mh ], [ %.sroa.10.12.vec.insert66.i.i69.i.i, %bb.mi ], [ %i.chi, %bb.mj ], [ zeroinitializer, %.critedge._crit_edge.i.i ]
  %i.chl = sext i8 %spec.select.i.i to i64
  %i.chm = getelementptr inbounds [28 x i8], ptr @_ZL17resize_border_def, i64 %i.chl ; 4 uses
  %i.chn = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 3 uses
  %i.cho = load ptr, ptr %i.chn, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.chp = getelementptr inbounds nuw i8, ptr %i.chm, i64 8
  %i.chq = fsub <2 x float> %.sroa.10.0.i.i.i.i, %.sroa.044.0.i.i.i.i ; 2 uses
  %i.chr = load <2 x float>, ptr %i.chp, align 4, !tbaa !75
  %i.chs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.chq, <2 x float> %i.chr, <2 x float> %.sroa.044.0.i.i.i.i)
  %i.cht = fadd <2 x float> %i.chs, splat (float 5.000000e-01)
  %i.chu = load <2 x float>, ptr %i.chm, align 4, !tbaa !75
  %i.chv = insertelement <2 x float> poison, float %i.cgm, i64 0
  %i.chw = shufflevector <2 x float> %i.chv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.chx = fmul <2 x float> %i.chw, %i.chu        ; 2 uses
  %i.chy = fadd <2 x float> %i.cht, %i.chx
  store <2 x float> %i.chy, ptr %8, align 8
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chm, i64 24
  %i.cia = load float, ptr %i.chz, align 4, !tbaa !1455 ; 4 uses
  %i.cib = fadd float %i.cia, f0xBF490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cho, ptr noundef nonnull align 4 dereferenceable(8) %8, float noundef %i.cgm, float noundef %i.cib, float noundef %i.cia, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.cic = load ptr, ptr %i.chn, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.cid = getelementptr inbounds nuw i8, ptr %i.chm, i64 16
  %i.cie = load <2 x float>, ptr %i.cid, align 4, !tbaa !75
  %i.cif = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.chq, <2 x float> %i.cie, <2 x float> %.sroa.044.0.i.i.i.i)
  %i.cig = fadd <2 x float> %i.cif, splat (float 5.000000e-01)
  %i.cih = fadd <2 x float> %i.chx, %i.cig
  store <2 x float> %i.cih, ptr %9, align 8
  %i.cii = fadd float %i.cia, f0x3F490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cic, ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef %i.cgm, float noundef %i.cia, float noundef %i.cii, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.cij = load ptr, ptr %i.chn, align 8, !tbaa !408 ; 3 uses
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cij, i64 80 ; 2 uses
  %i.cil = getelementptr inbounds nuw i8, ptr %i.cij, i64 88
  %i.cim = load ptr, ptr %i.cil, align 8, !tbaa !438
  %i.cin = load i32, ptr %i.cik, align 8, !tbaa !439
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cij, ptr noundef %i.cim, i32 noundef %i.cin, i32 noundef %i.cgi, float noundef %i.cgl, i32 noundef 0)
  store i32 0, ptr %i.cik, align 8, !tbaa !439
  br label %bb.ml

bb.ml:                                            ; preds = %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i, %.critedge.i.i
  %i.cio = getelementptr inbounds nuw i8, ptr %i.cam, i64 3296
  %i.cip = load float, ptr %i.cio, align 8, !tbaa !423 ; 2 uses
  %i.ciq = fcmp ogt float %i.cip, 0.000000e+00
  br i1 %i.ciq, label %bb.mm, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.mm:                                            ; preds = %bb.ml
  %i.cir = load i32, ptr %i.bqi, align 4, !tbaa !614
  %i.cis = and i32 %i.cir, 1
  %.not47.i.i = icmp eq i32 %i.cis, 0
  br i1 %.not47.i.i, label %bb.mn, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.mn:                                            ; preds = %bb.mm
  %i.cit = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.civ = load float, ptr %i.ciu, align 4, !tbaa !735
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.cix = load float, ptr %i.ciw, align 8, !tbaa !724
  %i.ciy = fadd float %i.civ, %i.cix
  %i.ciz = fadd float %i.ciy, -1.000000e+00
  %i.cja = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.cjb = load ptr, ptr %i.cja, align 8, !tbaa !408
  %i.cjc = load float, ptr %i.cit, align 8, !tbaa !693 ; 2 uses
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.cje = load float, ptr %i.cjd, align 8, !tbaa !615
  %i.cjf = fadd float %i.cjc, %i.cje
  %i.cjg = fneg float %i.can
  %i.cjh = insertelement <2 x float> poison, float %i.can, i64 0
  %i.cji = insertelement <2 x float> %i.cjh, float %i.cjg, i64 1
  %i.cjj = insertelement <2 x float> poison, float %i.cjc, i64 0
  %i.cjk = insertelement <2 x float> %i.cjj, float %i.cjf, i64 1
  %i.cjl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cji, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cjk) ; 2 uses
  %i.cjm = extractelement <2 x float> %i.cjl, i64 0
  %i.cjn = extractelement <2 x float> %i.cjl, i64 1
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.cjb, float noundef %i.cjm, float noundef %i.cjn, float noundef %i.ciz, i32 noundef %i.cbp, float noundef %i.cip)
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit: ; preds = %bb.lg, %.loopexit.i, %bb.ml, %bb.mm, %bb.mn
  store i32 0, ptr %i.bql, align 8, !tbaa !904
  %.pre1051 = load ptr, ptr %i.g, align 8, !tbaa !601 ; 57 uses
  br i1 %.1988, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit
  %i.cjo = getelementptr inbounds nuw i8, ptr %.pre1051, i64 720
  %i.cjp = getelementptr inbounds nuw i8, ptr %.pre1051, i64 712
  store ptr %i.cjo, ptr %i.cjp, align 8, !tbaa !408
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit
  %i.cjq = and i32 %.1403, 8
  %.not498 = icmp eq i32 %i.cjq, 0
  %i.cjr = getelementptr inbounds nuw i8, ptr %.pre1051, i64 80
  %i.cjs = load float, ptr %i.cjr, align 8, !tbaa !930 ; 3 uses
  %i.cjt = fcmp une float %i.cjs, 0.000000e+00    ; 2 uses
  br i1 %i.cjt, label %bb.mt, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.cju = and i32 %.1403, 2056
  %i.cjv = icmp eq i32 %i.cju, 2048
  br i1 %i.cjv, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %bb.mq
  %i.cjw = getelementptr inbounds nuw i8, ptr %.pre1051, i64 64
  %i.cjx = load float, ptr %i.cjw, align 8, !tbaa !1456
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mq, %bb.mr
  %i.cjy = phi float [ %i.cjx, %bb.mr ], [ 0.000000e+00, %bb.mq ] ; 2 uses
  %i.cjz = getelementptr inbounds nuw i8, ptr %.pre1051, i64 48
  %i.cka = load float, ptr %i.cjz, align 8, !tbaa !615
  %i.ckb = getelementptr inbounds nuw i8, ptr %.pre1051, i64 88
  %i.ckc = load float, ptr %i.ckb, align 8, !tbaa !947
  %i.ckd = fneg float %i.ckc
  %i.cke = call float @llvm.fmuladd.f32(float %i.ckd, float 2.000000e+00, float %i.cka)
  %i.ckf = getelementptr inbounds nuw i8, ptr %.pre1051, i64 112
  %i.ckg = load float, ptr %i.ckf, align 8, !tbaa !932
  %i.ckh = getelementptr inbounds nuw i8, ptr %.pre1051, i64 120
  %i.cki = load float, ptr %i.ckh, align 8, !tbaa !939
  %i.ckj = fadd float %i.ckg, %i.cki
  %i.ckk = fsub float %i.cke, %i.ckj              ; 2 uses
  %i.ckl = fcmp oge float %i.cjy, %i.ckk
  %i.ckm = select i1 %i.ckl, float %i.cjy, float %i.ckk
  br label %bb.mt

bb.mt:                                            ; preds = %bb.mp, %bb.ms
  %i.ckn = phi float [ %i.ckm, %bb.ms ], [ %i.cjs, %bb.mp ]
  %i.cko = getelementptr inbounds nuw i8, ptr %.pre1051, i64 84
  %i.ckp = load float, ptr %i.cko, align 4, !tbaa !931 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui28DebugRenderViewportThumbnailEP10ImDrawListP14ImGuiViewportPRK6ImRect:bb.a
  %i.cp = fptosi float %i.co to i32
  %i.cq = sitofp i32 %i.cp to float               ; 3 uses
  %i.cr = extractelement <4 x float> %i.ck, i64 2
  %i.cs = fptosi float %i.cr to i32
  %i.ct = sitofp i32 %i.cs to float               ; 3 uses
  %i.cu = extractelement <4 x float> %i.ck, i64 3
  %i.cv = fptosi float %i.cu to i32
  %i.cw = sitofp i32 %i.cv to float               ; 3 uses
  %i.cx = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.cy = fsub float %i.ch, %i.cx
  %i.cz = call float @llvm.fmuladd.f32(float %i.cy, float 3.000000e+00, float %i.cx)
  %i.da = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.db = insertelement <4 x float> %i.da, float %i.cf, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cz, i64 3
  %i.dd = fmul <4 x float> %i.at, %i.dc
  %i.de = fadd <4 x float> %i.au, %i.dd           ; 4 uses
  %i.df = extractelement <4 x float> %i.de, i64 0
  %i.dg = fptosi float %i.df to i32
  %i.dh = sitofp i32 %i.dg to float               ; 3 uses
  %i.di = extractelement <4 x float> %i.de, i64 1
  %i.dj = fptosi float %i.di to i32
  %i.dk = sitofp i32 %i.dj to float               ; 3 uses
  %i.dl = extractelement <4 x float> %i.de, i64 2
  %i.dm = fptosi float %i.dl to i32
  %i.dn = sitofp i32 %i.dm to float               ; 3 uses
  %i.do = extractelement <4 x float> %i.de, i64 3
  %i.dp = fptosi float %i.do to i32
  %i.dq = sitofp i32 %i.dp to float               ; 3 uses
  %i.dr = load float, ptr %2, align 4, !tbaa !249 ; 8 uses
  %i.ds = fcmp ogt float %i.dr, %i.cn
  br i1 %i.ds, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dt = load float, ptr %i.d, align 4, !tbaa !249 ; 2 uses
  %i.du = fcmp olt float %i.dt, %i.cn
  %..i.i = select i1 %i.du, float %i.dt, float %i.cn
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dv = phi float [ %i.dr, %bb.d ], [ %..i.i, %bb.e ]
  %i.dw = load float, ptr %i.f, align 4, !tbaa !250 ; 8 uses
  %i.dx = fcmp ogt float %i.dw, %i.cq
  br i1 %i.dx, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dy = load float, ptr %i.e, align 4, !tbaa !250 ; 2 uses
  %i.dz = fcmp olt float %i.dy, %i.cq
  %.19.i.i = select i1 %i.dz, float %i.dy, float %i.cq
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %bb.g, %bb.f
  %i.ea = phi float [ %i.dw, %bb.f ], [ %.19.i.i, %bb.g ]
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dv, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.ea, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %3, align 8, !tbaa !75
  %i.eb = fcmp ogt float %i.dr, %i.ct
  br i1 %i.eb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.ec = load float, ptr %i.d, align 4, !tbaa !249 ; 2 uses
  %i.ed = fcmp olt float %i.ec, %i.ct
  %..i6.i = select i1 %i.ed, float %i.ec, float %i.ct
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.ee = phi float [ %i.dr, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ], [ %..i6.i, %bb.h ]
  %i.ef = fcmp ogt float %i.dw, %i.cw
  br i1 %i.ef, label %_ZN6ImRect12ClipWithFullERKS_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eg = load float, ptr %i.e, align 4, !tbaa !250 ; 2 uses
  %i.eh = fcmp olt float %i.eg, %i.cw
  %.19.i7.i = select i1 %i.eh, float %i.eg, float %i.cw
  br label %_ZN6ImRect12ClipWithFullERKS_.exit

_ZN6ImRect12ClipWithFullERKS_.exit:               ; preds = %bb.i, %bb.j
  %i.ei = phi float [ %i.dw, %bb.i ], [ %.19.i7.i, %bb.j ]
  %.sroa.0.0.vec.insert.i8.i = insertelement <2 x float> poison, float %i.ee, i64 0
  %.sroa.0.4.vec.insert.i9.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i8.i, float %i.ei, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i9.i, ptr %i.ao, align 8, !tbaa !75
  %i.ej = fcmp ogt float %i.dr, %i.dh
  br i1 %i.ej, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit
  %i.ek = load float, ptr %i.d, align 4, !tbaa !249 ; 2 uses
  %i.el = fcmp olt float %i.ek, %i.dh
  %..i.i90 = select i1 %i.el, float %i.ek, float %i.dh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN6ImRect12ClipWithFullERKS_.exit
  %i.em = phi float [ %i.dr, %_ZN6ImRect12ClipWithFullERKS_.exit ], [ %..i.i90, %bb.k ]
  %i.en = fcmp ogt float %i.dw, %i.dk
  br i1 %i.en, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i92, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eo = load float, ptr %i.e, align 4, !tbaa !250 ; 2 uses
  %i.ep = fcmp olt float %i.eo, %i.dk
  %.19.i.i91 = select i1 %i.ep, float %i.eo, float %i.dk
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i92

_Z7ImClampRK6ImVec2S1_S1_.exit.i92:               ; preds = %bb.m, %bb.l
  %i.eq = phi float [ %i.dw, %bb.l ], [ %.19.i.i91, %bb.m ]
  %.sroa.0.0.vec.insert.i.i93 = insertelement <2 x float> poison, float %i.em, i64 0
  %.sroa.0.4.vec.insert.i.i94 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i93, float %i.eq, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i94, ptr %4, align 8, !tbaa !75
  %i.er = fcmp ogt float %i.dr, %i.dn
  br i1 %i.er, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i92
  %i.es = load float, ptr %i.d, align 4, !tbaa !249 ; 2 uses
  %i.et = fcmp olt float %i.es, %i.dn
  %..i6.i95 = select i1 %i.et, float %i.es, float %i.dn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_Z7ImClampRK6ImVec2S1_S1_.exit.i92
  %i.eu = phi float [ %i.dr, %_Z7ImClampRK6ImVec2S1_S1_.exit.i92 ], [ %..i6.i95, %bb.n ]
  %i.ev = fcmp ogt float %i.dw, %i.dq
  br i1 %i.ev, label %_ZN6ImRect12ClipWithFullERKS_.exit99, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = load float, ptr %i.e, align 4, !tbaa !250 ; 2 uses
  %i.ex = fcmp olt float %i.ew, %i.dq
  %.19.i7.i96 = select i1 %i.ex, float %i.ew, float %i.dq
  br label %_ZN6ImRect12ClipWithFullERKS_.exit99

_ZN6ImRect12ClipWithFullERKS_.exit99:             ; preds = %bb.o, %bb.p
  %i.ey = phi float [ %i.dw, %bb.o ], [ %.19.i7.i96, %bb.p ]
  %.sroa.0.0.vec.insert.i8.i97 = insertelement <2 x float> poison, float %i.eu, i64 0
  %.sroa.0.4.vec.insert.i9.i98 = insertelement <2 x float> %.sroa.0.0.vec.insert.i8.i97, float %i.ey, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i9.i98, ptr %i.ap, align 8, !tbaa !75
  %i.ez = load ptr, ptr %i.aq, align 8, !tbaa !370 ; 2 uses
  %.not48 = icmp eq ptr %i.ez, null
  br i1 %.not48, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit99
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bo, i64 976
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !899
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 976
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !899
  %i.fe = icmp eq ptr %i.fb, %i.fd
  %i.ff = select i1 %i.fe, i64 11, i64 10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6ImRect12ClipWithFullERKS_.exit99
  %i.fg = phi i64 [ 10, %_ZN6ImRect12ClipWithFullERKS_.exit99 ], [ %i.ff, %bb.q ]
  %i.fh = load ptr, ptr %i.s, align 8, !tbaa !408
  %i.fi = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 3564
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 3220
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !383
  %i.fm = load <4 x float>, ptr %i.fj, align 4, !tbaa !75
  %i.fn = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fl, i64 3
  %i.fo = fmul <4 x float> %i.fm, %i.fn           ; 3 uses
  %i.fp = fcmp olt <4 x float> %i.fo, zeroinitializer
  %i.fq = fcmp ogt <4 x float> %i.fo, splat (float 1.000000e+00)
  %i.fr = select <4 x i1> %i.fq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fo
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ft = select <4 x i1> %i.fp, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fs
  %i.fu = fptosi <4 x float> %i.ft to <4 x i32>
  %i.fv = shl <4 x i32> %i.fu, <i32 0, i32 8, i32 16, i32 24>
  %i.fw = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fv)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.fh, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ao, i32 noundef %i.fw, float noundef 0.000000e+00, i32 noundef 0)
  %i.fx = load ptr, ptr %i.s, align 8, !tbaa !408
  %i.fy = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 3532
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fg
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 3220
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !383
  %i.gd = load <4 x float>, ptr %i.ga, align 4, !tbaa !75
  %i.ge = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gc, i64 3
  %i.gf = fmul <4 x float> %i.gd, %i.ge           ; 3 uses
  %i.gg = fcmp olt <4 x float> %i.gf, zeroinitializer
  %i.gh = fcmp ogt <4 x float> %i.gf, splat (float 1.000000e+00)
  %i.gi = select <4 x i1> %i.gh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gf
  %i.gj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.gk = select <4 x i1> %i.gg, <4 x float> splat (float 5.000000e-01), <4 x float> %i.gj
  %i.gl = fptosi <4 x float> %i.gk to <4 x i32>
  %i.gm = shl <4 x i32> %i.gl, <i32 0, i32 8, i32 16, i32 24>
  %i.gn = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gm)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.fx, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ap, i32 noundef %i.gn, float noundef 0.000000e+00, i32 noundef 0)
  %i.go = load ptr, ptr %i.s, align 8, !tbaa !408
  %i.gp = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 3612
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 3220
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !383
  %i.gt = load <4 x float>, ptr %i.gq, align 4, !tbaa !75
  %i.gu = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gs, i64 3
  %i.gv = fmul <4 x float> %i.gt, %i.gu           ; 3 uses
  %i.gw = fcmp olt <4 x float> %i.gv, zeroinitializer
  %i.gx = fcmp ogt <4 x float> %i.gv, splat (float 1.000000e+00)
  %i.gy = select <4 x i1> %i.gx, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gv
  %i.gz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ha = select <4 x i1> %i.gw, <4 x float> splat (float 5.000000e-01), <4 x float> %i.gz
  %i.hb = fptosi <4 x float> %i.ha to <4 x i32>
  %i.hc = shl <4 x i32> %i.hb, <i32 0, i32 8, i32 16, i32 24>
  %i.hd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hc)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.go, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ao, i32 noundef %i.hd, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  %i.he = load ptr, ptr %i.s, align 8, !tbaa !408
  %i.hf = load ptr, ptr %i.ar, align 8, !tbaa !409
  %i.hg = load float, ptr %i.as, align 8, !tbaa !410
  %i.hh = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.hh, i64 3532
  %.sroa.4.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.hh, i64 3536
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 3220
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !383
  %i.hk = load <4 x float>, ptr %5, align 4, !tbaa !75 ; 3 uses
  %.sroa.4.0.copyload.i123 = load float, ptr %.sroa.4.0..sroa_idx.i122, align 4, !tbaa !75
  %i.hl = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.hj, i64 3
  %i.hm = fmul <4 x float> %i.hk, %i.hl           ; 3 uses
  %i.hn = extractelement <4 x float> %i.hk, i64 0
  %i.ho = fcmp olt float %i.hn, 0.000000e+00
  %i.hp = fcmp ogt <4 x float> %i.hm, splat (float 1.000000e+00)
  %i.hq = select <4 x i1> %i.hp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.hm
  %i.hr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hq, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 3 uses
  %i.hs = extractelement <4 x float> %i.hr, i64 0
  %i.ht = select i1 %i.ho, float 5.000000e-01, float %i.hs
  %i.hu = fptosi float %i.ht to i32
  %i.hv = fcmp olt float %.sroa.4.0.copyload.i123, 0.000000e+00
  %i.hw = extractelement <4 x float> %i.hr, i64 1
  %i.hx = select i1 %i.hv, float 5.000000e-01, float %i.hw
  %i.hy = fptosi float %i.hx to i32
  %i.hz = shl i32 %i.hy, 8
  %i.ia = or i32 %i.hz, %i.hu
  %6 = shufflevector <4 x float> %i.hk, <4 x float> %i.hm, <2 x i32> <i32 2, i32 7>
  %i.ib = fcmp olt <2 x float> %6, zeroinitializer
  %i.ic = shufflevector <4 x float> %i.hr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.id = select <2 x i1> %i.ib, <2 x float> splat (float 5.000000e-01), <2 x float> %i.ic
  %i.ie = fptosi <2 x float> %i.id to <2 x i32>
  %i.if = shl <2 x i32> %i.ie, <i32 16, i32 24>   ; 2 uses
  %i.ig = extractelement <2 x i32> %i.if, i64 0
  %i.ih = or i32 %i.ia, %i.ig
  %i.ii = extractelement <2 x i32> %i.if, i64 1
  %i.ij = or i32 %i.ih, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !313 ; 5 uses
  %.not176 = icmp eq ptr %i.il, inttoptr (i64 -1 to ptr)
  br i1 %.not176, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.im = ptrtoaddr ptr %i.il to i64
  %i.in = xor i64 %i.im, -1
  %scevgep.i = getelementptr i8, ptr %i.il, i64 %i.in
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.ir, %.critedge2.i ], [ %i.il, %.lr.ph.preheader.i ] ; 5 uses
  %i.io = load i8, ptr %.015.i, align 1, !tbaa !82
  switch i8 %i.io, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !82
  %.not14.i = icmp eq i8 %i.iq, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.s, %.lr.ph.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ir, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.s, %.critedge2.i, %bb.r
  %.0.lcssa.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.r ], [ %.015.i, %bb.s ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ]
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.he, ptr noundef %i.hf, float noundef %i.hg, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.ij, ptr noundef %i.il, ptr noundef %.0.lcssa.i, float noundef 0.000000e+00, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.c, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.is = getelementptr inbounds nuw i8, ptr %.0178, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.is, %i.an
  br i1 %.not, label %._crit_edge, label %bb.b

bb.u:                                             ; preds = %._crit_edge
  %i.it = load ptr, ptr %i.s, align 8, !tbaa !408
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.it, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 6 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.c = load float, ptr %i.b, align 8, !tbaa !410
  %i.d = fdiv float %i.c, 1.300000e+01            ; 3 uses
  %i.e = insertelement <2 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.g = fmul <2 x float> %i.f, <float 5.000000e+00, float 3.000000e+00> ; 2 uses
  %i.h = fmul float %i.d, 2.000000e+00            ; 2 uses
  %i.i = fmul <2 x float> %i.f, <float 7.000000e+00, float 4.000000e+00>
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !289
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.l, align 8, !tbaa !75 ; 5 uses
  store <2 x float> %.sroa.0.0.copyload.i, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.m = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.n = fmul <2 x float> %i.f, <float 9.000000e+00, float 3.500000e+01> ; 3 uses
  %i.o = fadd <2 x float> %i.n, <float -0.000000e+00, float -1.000000e+00> ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 1   ; 3 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 3.000000e+00, float %i.m)
  %i.r = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.q, i64 0
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> <float 2.000000e+00, float 3.000000e+00>, <2 x float> %i.r)
  %i.t = fadd <2 x float> %i.s, splat (float 1.000000e+01) ; 2 uses
  store <2 x float> %i.t, ptr %2, align 8, !tbaa !75
  %i.u = fadd float %i.m, 5.000000e+00
  %i.v = fsub float %i.u, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.w = fsub <2 x float> %i.t, %.sroa.0.0.copyload.i
  store <2 x float> %i.w, ptr %3, align 8
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.x = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 7856
  %i.z = load i32, ptr %i.y, align 8, !tbaa !670
  %i.aa = and i32 %i.z, 256
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = fmul float %i.d, 2.500000e+01
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext true)
  %i.ac = extractelement <2 x float> %i.g, i64 1  ; 3 uses
  %i.ad = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.ag = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i

bb.c:                                             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  br label %bb.e

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i:         ; preds = %bb.b, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr @__const._ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList.keys_to_display, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ai = load <2 x i32>, ptr %i.ah, align 8, !tbaa !237
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>   ; 2 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1
  %i.al = call float @llvm.fmuladd.f32(float %i.ak, float %i.p, float %i.v)
  %i.am = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.al, i64 0
  %i.ao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.af, <2 x float> %i.an) ; 2 uses
  store <2 x float> %i.ao, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.ap = fadd <2 x float> %i.ag, %i.ao
  store <2 x float> %i.ap, ptr %5, align 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -3355444, float noundef %i.ac, i32 noundef 0)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -15198184, float noundef %i.ac, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.aq = load <2 x float>, ptr %4, align 8, !tbaa !75
  %i.ar = fadd <2 x float> %i.g, %i.aq            ; 2 uses
  store <2 x float> %i.ar, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.as = fadd <2 x float> %i.ae, %i.ar
  store <2 x float> %i.as, ptr %7, align 8, !tbaa !75
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -4079167, float noundef %i.h, float noundef 2.000000e+00, i32 noundef 0)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -197380, float noundef %i.h, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.at = load <2 x float>, ptr %4, align 8, !tbaa !75
  %i.au = fadd <2 x float> %i.i, %i.at
  store <2 x float> %i.au, ptr %8, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1592
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef -12566464, ptr noundef %i.aw, ptr noundef null)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1593 ; 4 uses
  %i.az = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.ba = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ay)
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = sext i32 %i.ay to i64                   ; 2 uses
  %i.bd = getelementptr [16 x i8], ptr %i.az, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -7884
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !239, !range !100, !noundef !236
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.d, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

bb.d:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i
  %i.bh = add i32 %i.ay, -512
  %or.cond.i.i4.i.i = icmp ult i32 %i.bh, 155
  br i1 %or.cond.i.i4.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %switch.early.test.i.i.i.i

switch.early.test.i.i.i.i:                        ; preds = %bb.d
  br i1 %i.bb, label %switch.early.test.split.i.i.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

switch.early.test.split.i.i.i.i:                  ; preds = %switch.early.test.i.i.i.i
  %i.bi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 true)
  %i.bj = and i32 %i.bi, 28
  %switch.i.i.i.i = icmp eq i32 %i.bj, 12
  br i1 %switch.i.i.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit:               ; preds = %bb.d, %switch.early.test.split.i.i.i.i
  %i.bk = getelementptr [12 x i8], ptr %i.az, i64 %i.bc
  %i.bl = getelementptr i8, ptr %i.bk, i64 -572
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !526, !range !100, !noundef !236
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %switch.early.test.split.i.i.i.i, %switch.early.test.i.i.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -2147483393, float noundef %i.ac, i32 noundef 0)
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59:      ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
end_hunk_1
begin_hunk_2_@_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb:bb.a
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us.2

_ZN6ImRect3AddERK6ImVec2.exit.us.2:               ; preds = %bb.d, %_ZN6ImRect3AddERK6ImVec2.exit.us.1
  %i.bo = phi i32 [ %i.bn, %bb.d ], [ %i.bj, %_ZN6ImRect3AddERK6ImVec2.exit.us.1 ]
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 4, !tbaa !75 ; 2 uses
  store i64 %i.br, ptr %i.r, align 16, !tbaa !75
  %i.bs = bitcast i64 %i.br to <2 x float>
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.bu = fcmp olt <4 x float> %i.bi, %i.bt
  %i.bv = fcmp ogt <4 x float> %i.bi, %i.bt
  %i.bw = shufflevector <4 x i1> %i.bu, <4 x i1> %i.bv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bx = select <4 x i1> %i.bw, <4 x float> %i.bt, <4 x float> %i.bi ; 2 uses
  %i.by = add i32 %.02752.us, 3                   ; 2 uses
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %5, i32 noundef 3, i32 noundef -16711681, float noundef 1.000000e+00, i32 noundef 512)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.bz = icmp ult i32 %i.by, %i.k
  br i1 %i.bz, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1752

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ca = load i32, ptr %i.m, align 8, !tbaa !1098
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.cd = load i32, ptr %i.p, align 8, !tbaa !1101
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [20 x i8], ptr %i.cc, i64 %i.ce ; 3 uses
  br label %_ZN6ImRect3AddERK6ImVec2.exit.2

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.cg = load ptr, ptr %i.n, align 8, !tbaa !1099 ; 4 uses
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.ci = load i32, ptr %i.p, align 8, !tbaa !1101
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %i.cj ; 3 uses
  %.not.us68 = icmp eq ptr %i.cg, null            ; 3 uses
  br label %.preheader.us67.preheader

.preheader.us67.preheader:                        ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75.2, %.lr.ph.split.split.us
  %.02752.us59 = phi i32 [ %i.h, %.lr.ph.split.split.us ], [ %i.eb, %_ZN6ImRect3AddERK6ImVec2.exit.us75.2 ] ; 5 uses
  %i.cl = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.split.us ], [ %i.ea, %_ZN6ImRect3AddERK6ImVec2.exit.us75.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  br i1 %.not.us68, label %_ZN6ImRect3AddERK6ImVec2.exit.us75, label %bb.e

bb.e:                                             ; preds = %.preheader.us67.preheader
  %i.cm = zext i32 %.02752.us59 to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !255
  %i.cp = zext i16 %i.co to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us75

_ZN6ImRect3AddERK6ImVec2.exit.us75:               ; preds = %bb.e, %.preheader.us67.preheader
  %i.cq = phi i32 [ %i.cp, %bb.e ], [ %.02752.us59, %.preheader.us67.preheader ]
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.cr
  %i.ct = load <2 x float>, ptr %i.cs, align 4, !tbaa !75
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.cv = fcmp olt <4 x float> %i.cl, %i.cu
  %i.cw = fcmp ogt <4 x float> %i.cl, %i.cu
  %i.cx = shufflevector <4 x i1> %i.cv, <4 x i1> %i.cw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cy = select <4 x i1> %i.cx, <4 x float> %i.cu, <4 x float> %i.cl ; 3 uses
  %i.cz = add nuw i32 %.02752.us59, 1             ; 2 uses
  br i1 %.not.us68, label %_ZN6ImRect3AddERK6ImVec2.exit.us75.1, label %bb.f

bb.f:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !255
  %i.dd = zext i16 %i.dc to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us75.1

_ZN6ImRect3AddERK6ImVec2.exit.us75.1:             ; preds = %bb.f, %_ZN6ImRect3AddERK6ImVec2.exit.us75
  %i.de = phi i32 [ %i.dd, %bb.f ], [ %i.cz, %_ZN6ImRect3AddERK6ImVec2.exit.us75 ]
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.df
  %i.dh = load <2 x float>, ptr %i.dg, align 4, !tbaa !75
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dj = fcmp olt <4 x float> %i.cy, %i.di
  %i.dk = fcmp ogt <4 x float> %i.cy, %i.di
  %i.dl = shufflevector <4 x i1> %i.dj, <4 x i1> %i.dk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dm = select <4 x i1> %i.dl, <4 x float> %i.di, <4 x float> %i.cy ; 3 uses
  %i.dn = add i32 %.02752.us59, 2                 ; 2 uses
  br i1 %.not.us68, label %_ZN6ImRect3AddERK6ImVec2.exit.us75.2, label %bb.g

bb.g:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75.1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !255
  %i.dr = zext i16 %i.dq to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us75.2

_ZN6ImRect3AddERK6ImVec2.exit.us75.2:             ; preds = %bb.g, %_ZN6ImRect3AddERK6ImVec2.exit.us75.1
  %i.ds = phi i32 [ %i.dr, %bb.g ], [ %i.dn, %_ZN6ImRect3AddERK6ImVec2.exit.us75.1 ]
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.dt
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !75
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dx = fcmp olt <4 x float> %i.dm, %i.dw
  %i.dy = fcmp ogt <4 x float> %i.dm, %i.dw
  %i.dz = shufflevector <4 x i1> %i.dx, <4 x i1> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ea = select <4 x i1> %i.dz, <4 x float> %i.dw, <4 x float> %i.dm ; 2 uses
  %i.eb = add i32 %.02752.us59, 3                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.ec = icmp ult i32 %i.eb, %i.k
  br i1 %i.ec, label %.preheader.us67.preheader, label %._crit_edge, !llvm.loop !1752

._crit_edge.loopexit120:                          ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2
  %i.ed = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75.2, %_ZN6ImRect3AddERK6ImVec2.exit.us.2, %._crit_edge.loopexit120, %bb.a
  %i.ee = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %bb.a ], [ %i.bx, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ %i.ed, %._crit_edge.loopexit120 ], [ %i.ea, %_ZN6ImRect3AddERK6ImVec2.exit.us75.2 ]
  br i1 %4, label %bb.h, label %bb.i

_ZN6ImRect3AddERK6ImVec2.exit.2:                  ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2, %.lr.ph.split.split.preheader
  %.02752 = phi i32 [ %i.fd, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ %i.h, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.ef = phi <4 x float> [ %i.fc, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %.lr.ph.split.split.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %.pre = zext i32 %.02752 to i64
  %i.eg = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %.pre
  %i.eh = load <2 x float>, ptr %i.eg, align 4, !tbaa !75
  %i.ei = add nuw i32 %.02752, 1
  %.pre100 = zext i32 %i.ei to i64
  %i.ej = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %.pre100
  %i.ek = load <2 x float>, ptr %i.ej, align 4, !tbaa !75
  %i.el = add i32 %.02752, 2
  %.pre102 = zext i32 %i.el to i64
  %i.em = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %.pre102
  %i.en = load <2 x float>, ptr %i.em, align 4, !tbaa !75
  %i.eo = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ep = fcmp ogt <4 x float> %i.ef, %i.eo
  %i.eq = fcmp olt <4 x float> %i.ef, %i.eo
  %i.er = shufflevector <4 x i1> %i.ep, <4 x i1> %i.eq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.es = select <4 x i1> %i.er, <4 x float> %i.eo, <4 x float> %i.ef ; 3 uses
  %i.et = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.eu = fcmp ogt <4 x float> %i.es, %i.et
  %i.ev = fcmp olt <4 x float> %i.es, %i.et
  %i.ew = shufflevector <4 x i1> %i.eu, <4 x i1> %i.ev, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ex = select <4 x i1> %i.ew, <4 x float> %i.et, <4 x float> %i.es ; 3 uses
  %i.ey = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ez = fcmp ogt <4 x float> %i.ex, %i.ey
  %i.fa = fcmp olt <4 x float> %i.ex, %i.ey
  %i.fb = shufflevector <4 x i1> %i.ez, <4 x i1> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fc = select <4 x i1> %i.fb, <4 x float> %i.ey, <4 x float> %i.ex ; 2 uses
  %i.fd = add i32 %.02752, 3                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.fe = icmp ult i32 %i.fd, %i.k
  br i1 %i.fe, label %_ZN6ImRect3AddERK6ImVec2.exit.2, label %._crit_edge.loopexit120, !llvm.loop !1753

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ff = fptosi <2 x float> %i.a to <2 x i32>
  %i.fg = sitofp <2 x i32> %i.ff to <2 x float>
  store <2 x float> %i.fg, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.fh = fptosi <2 x float> %i.c to <2 x i32>
  %i.fi = sitofp <2 x i32> %i.fh to <2 x float>
  store <2 x float> %i.fi, ptr %7, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -65281, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.fj = fptosi <4 x float> %i.ee to <4 x i32>
  %i.fk = sitofp <4 x i32> %i.fj to <4 x float>   ; 2 uses
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %i.fl, ptr %8, align 8
  %i.fm = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.fm, ptr %9, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef -256, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  store i32 %i.e, ptr %i.d, align 8, !tbaa !1103
  ret void
}

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11ImFontAtlas10RemoveFontEP6ImFont(ptr noundef nonnull align 8 dereferenceable(760), ptr noundef) local_unnamed_addr #2

declare void @_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11TextWrappedEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #2

declare void @_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui29DebugNodeFontGlyphsForSrcMaskEP6ImFontP11ImFontBakedi(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 7 uses
  %4 = alloca %struct.ImVec2, align 8             ; 6 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !679
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408  ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 3532
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3536
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.h = load float, ptr %i.g, align 4, !tbaa !383
  %i.i = load <4 x float>, ptr %6, align 4, !tbaa !75 ; 3 uses
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !75
  %i.j = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.h, i64 3
  %i.k = fmul <4 x float> %i.i, %i.j              ; 3 uses
  %i.l = extractelement <4 x float> %i.i, i64 0
  %i.m = fcmp olt float %i.l, 0.000000e+00
  %i.n = fcmp ogt <4 x float> %i.k, splat (float 1.000000e+00)
  %i.o = select <4 x i1> %i.n, <4 x float> splat (float 1.000000e+00), <4 x float> %i.k
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 3 uses
  %i.q = extractelement <4 x float> %i.p, i64 0
  %i.r = select i1 %i.m, float 5.000000e-01, float %i.q
  %i.s = fptosi float %i.r to i32
  %i.t = fcmp olt float %.sroa.4.0.copyload.i, 0.000000e+00
  %i.u = extractelement <4 x float> %i.p, i64 1
  %i.v = select i1 %i.t, float 5.000000e-01, float %i.u
  %i.w = fptosi float %i.v to i32
  %i.x = shl i32 %i.w, 8
  %i.y = or i32 %i.x, %i.s
  %7 = shufflevector <4 x float> %i.i, <4 x float> %i.k, <2 x i32> <i32 2, i32 7>
  %i.z = fcmp olt <2 x float> %7, zeroinitializer
  %i.aa = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ab = select <2 x i1> %i.z, <2 x float> splat (float 5.000000e-01), <2 x float> %i.aa
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>
  %i.ad = shl <2 x i32> %i.ac, <i32 16, i32 24>   ; 2 uses
  %i.ae = extractelement <2 x i32> %i.ad, i64 0
  %i.af = or i32 %i.y, %i.ae
  %i.ag = extractelement <2 x i32> %i.ad, i64 1
  %i.ah = or i32 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !1023 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 3304
  %i.al = load float, ptr %i.ak, align 8, !tbaa !1757
  %i.am = fadd float %i.aj, %i.al                 ; 2 uses
  %i.an = fmul float %i.am, 1.600000e+01
  %i.ao = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.b:                                             ; preds = %bb.s
  ret void

bb.c:                                             ; preds = %bb.a, %bb.s
  %.06076 = phi i32 [ 0, %bb.a ], [ %i.dt, %bb.s ] ; 12 uses
  %i.au = and i32 %.06076, 8191
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.av = or disjoint i32 %.06076, 8191
  %i.aw = call noundef zeroext i1 @_ZN6ImFont18IsGlyphRangeUnusedEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %.06076, i32 noundef %i.av)
  br i1 %i.aw, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.ax = or disjoint i32 %.06076, 7936
  br label %bb.s

bb.f:                                             ; preds = %.thread
  %i.ay = icmp slt i32 %.1, 1
  br i1 %i.ay, label %bb.s, label %bb.j

bb.g:                                             ; preds = %.preheader, %.thread
  %.05874 = phi i32 [ %i.bi, %.thread ], [ 0, %.preheader ] ; 2 uses
  %.05973 = phi i32 [ %.1, %.thread ], [ 0, %.preheader ] ; 3 uses
  %i.az = add nuw nsw i32 %.05874, %.06076
  %i.ba = trunc i32 %i.az to i16                  ; 2 uses
  %i.bb = call noundef zeroext i1 @_ZN11ImFontBaked13IsGlyphLoadedEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.ba)
  br i1 %i.bb, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bc = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.ba) ; 2 uses
  %.not66 = icmp eq ptr %i.bc, null
  br i1 %.not66, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = lshr i32 %i.bd, 2
  %i.bf = and i32 %i.be, 15
  %i.bg = lshr i32 %2, %i.bf
  %i.bh = and i32 %i.bg, 1
  %spec.select = add nsw i32 %i.bh, %.05973
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.h
  %.1 = phi i32 [ %.05973, %bb.h ], [ %spec.select, %bb.i ], [ %.05973, %bb.g ] ; 4 uses
  %i.bi = add nuw nsw i32 %.05874, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, 256
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !1754

bb.j:                                             ; preds = %bb.f
  %i.bj = zext nneg i32 %.06076 to i64
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = add nuw nsw i32 %.06076, 255
  %.not64 = icmp eq i32 %.1, 1
  %i.bm = select i1 %.not64, ptr @.str.487, ptr @.str.486
  %i.bn = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.bk, ptr noundef nonnull @.str.485, i32 noundef %.06076, i32 noundef %i.bl, i32 noundef %.1, ptr noundef nonnull %i.bm)
  br i1 %i.bn, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 5312
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !289
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 280
  %.sroa.0.0.copyload.i68 = load <2 x float>, ptr %i.br, align 8, !tbaa !75
  br label %bb.m

bb.l:                                             ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store <2 x float> %i.ap, ptr %5, align 8, !tbaa !75
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.s

bb.m:                                             ; preds = %bb.k, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread
  %.075 = phi i32 [ 0, %bb.k ], [ %i.ds, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.bs = and i32 %.075, 15
  %i.bt = lshr i32 %.075, 4
  %i.bu = uitofp nneg i32 %i.bs to float
  %i.bv = uitofp nneg i32 %i.bt to float
  %i.bw = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bv, i64 1
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.ar, <2 x float> %.sroa.0.0.copyload.i68) ; 2 uses
  store <2 x float> %i.by, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.bz = fadd <2 x float> %i.at, %i.by
  store <2 x float> %i.bz, ptr %4, align 8, !tbaa !75
  %i.ca = add nuw nsw i32 %.075, %.06076
  %i.cb = trunc i32 %i.ca to i16                  ; 3 uses
  %i.cc = call noundef zeroext i1 @_ZN11ImFontBaked13IsGlyphLoadedEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.cb)
  br i1 %i.cc, label %bb.n, label %.thread70

.thread70:                                        ; preds = %bb.m
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 855638015, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cd = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.cb) ; 3 uses
  %.not65 = icmp eq ptr %i.cd, null               ; 2 uses
  %i.ce = select i1 %.not65, i32 855638015, i32 1694498815
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.ce, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br i1 %.not65, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = load i32, ptr %i.cd, align 4
  %i.cg = lshr i32 %i.cf, 2
  %i.ch = and i32 %i.cg, 15
  %i.ci = shl nuw nsw i32 1, %i.ch
  %i.cj = and i32 %i.ci, %2
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN6ImFont10RenderCharEP10ImDrawListfRK6ImVec2jtPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull %i.f, float noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef %i.ah, i16 noundef zeroext %i.cb, ptr noundef null)
  %i.cl = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.cm = load <2 x float>, ptr %3, align 8, !tbaa !75 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 5312
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !289 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 616
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.cm, i64 0 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !249 ; 2 uses
  %.inv.i.i.i = fcmp oge float %.sroa.0.0.vec.extract.i, %i.cq
  %..i.i.i = select i1 %.inv.i.i.i, float %.sroa.0.0.vec.extract.i, float %i.cq
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 272
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 3324 ; 2 uses
  %i.ct = load float, ptr %i.cr, align 8, !tbaa !249 ; 2 uses
  %i.cu = load float, ptr %i.cs, align 4, !tbaa !249
  %i.cv = fsub float %..i.i.i, %i.cu
  %i.cw = fcmp ult float %i.ct, %i.cv
  br i1 %i.cw, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = load <2 x float>, ptr %4, align 8, !tbaa !75 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 624
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.cm, i64 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 620
  %i.da = load float, ptr %i.cz, align 4, !tbaa !250 ; 2 uses
  %.inv12.i.i.i = fcmp oge float %.sroa.0.4.vec.extract.i, %i.da
  %i.db = select i1 %.inv12.i.i.i, float %.sroa.0.4.vec.extract.i, float %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 276
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !250 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 3328
  %i.df = load <2 x float>, ptr %i.cy, align 4, !tbaa !75 ; 2 uses
  %i.dg = fcmp olt <2 x float> %i.cx, %i.df
  %i.dh = select <2 x i1> %i.dg, <2 x float> %i.cx, <2 x float> %i.df
  %i.di = load float, ptr %i.de, align 8, !tbaa !250
  %i.dj = load <2 x float>, ptr %i.cs, align 4, !tbaa !75
  %i.dk = fsub float %i.db, %i.di
  %i.dl = fcmp oge float %i.dd, %i.dk
  %i.dm = fadd <2 x float> %i.dj, %i.dh           ; 2 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 0
  %i.do = fcmp olt float %i.ct, %i.dn
  %or.cond.i = select i1 %i.dl, i1 %i.do, i1 false
  %i.dp = extractelement <2 x float> %i.dm, i64 1
  %i.dq = fcmp olt float %i.dd, %i.dp
  %or.cond = select i1 %or.cond.i, i1 %i.dq, i1 false
  br i1 %or.cond, label %bb.r, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dr = call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui18DebugNodeFontGlyphEP6ImFontPK11ImFontGlyph(ptr noundef nonnull %0, ptr noundef nonnull %i.cd)
  call void @_ZN5ImGui3EndEv()
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread: ; preds = %bb.p, %bb.q, %.thread70, %bb.r, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.ds = add nuw nsw i32 %.075, 1                ; 2 uses
  %exitcond77.not = icmp eq i32 %i.ds, 256
  br i1 %exitcond77.not, label %bb.l, label %bb.m, !llvm.loop !1755

bb.s:                                             ; preds = %bb.l, %bb.f, %bb.j, %bb.e
end_hunk_2
