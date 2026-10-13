Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrect?download=true
inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %i.hwd = insertelement <2 x double> poison, double %i.hvz, i64 0
  %i.hwe = insertelement <2 x double> %i.hwd, double %i.hwc, i64 1
  %i.hwf = insertelement <2 x double> poison, double %i.hvw, i64 0
  %i.hwg = shufflevector <2 x double> %i.hwf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hwh = fmul reassoc nsz arcp contract afn <2 x double> %i.hwe, %i.hwg
  %i.hwi = fadd reassoc nsz arcp contract afn <2 x double> %i.hwh, %i.hwa ; 2 uses
  %i.hwj = fptrunc <2 x double> %i.hwi to <2 x float> ; 3 uses
  %i.hwk = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.hvx
  %i.hwl = load double, ptr %i.hwk, align 8, !tbaa !216
  %i.hwm = fpext <2 x float> %i.hvu to <2 x double>
  %i.hwn = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.hvx
  %i.hwo = load double, ptr %i.hwn, align 8, !tbaa !216
  %i.hwp = insertelement <2 x double> poison, double %i.hwl, i64 0
  %i.hwq = insertelement <2 x double> %i.hwp, double %i.hwo, i64 1
  %i.hwr = fmul reassoc nsz arcp contract afn <2 x double> %i.hwq, %i.hwg
  %i.hws = fadd reassoc nsz arcp contract afn <2 x double> %i.hwr, %i.hwm ; 2 uses
  %i.hwt = fptrunc <2 x double> %i.hws to <2 x float> ; 3 uses
  %.reass4566 = fmul reassoc nsz arcp contract afn float %.016242167, %invariant.op4565 ; 2 uses
  %indvars.iv.next2705.1 = add nuw nsw i64 %indvars.iv2704, 2 ; 2 uses
  %niter4479.next.1 = add i64 %niter4479, 2       ; 2 uses
  %niter4479.ncmp.1 = icmp eq i64 %niter4479.next.1, %unroll_iter4478
  br i1 %niter4479.ncmp.1, label %._crit_edge2170.unr-lcssa, label %.preheader1898.new

.lr.ph2208:                                       ; preds = %.preheader1920
  %i.hwu = add nsw i32 %i.fxt, -4                 ; 2 uses
  %i.hwv = zext nneg i32 %i.hwu to i64
  br label %bb.dy

bb.dr:                                            ; preds = %._crit_edge2193
  store i32 %i.htu, ptr %i.e, align 4, !tbaa !12
  store i32 %i.hts, ptr %i.g, align 4, !tbaa !12
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge2193
  %i.hww = phi i32 [ %i.htu, %bb.dr ], [ %i.hts, %._crit_edge2193 ]
  %i.hwx = sitofp reassoc nsz arcp contract afn i32 %i.hww to float
  %i.hwy = fsub reassoc nsz arcp contract afn float %i.htq, %i.hwx
  %i.hwz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hwy) ; 2 uses
  store float %i.hwz, ptr %i.j, align 4, !tbaa !33
  %i.hxa = extractelement <2 x float> %i.htl, i64 1 ; 4 uses
  %i.hxb = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hxa)
  %i.hxc = fptosi float %i.hxb to i32             ; 3 uses
  store i32 %i.hxc, ptr %i.d, align 4, !tbaa !12
  %i.hxd = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hxa)
  %i.hxe = fptosi float %i.hxd to i32             ; 3 uses
  store i32 %i.hxe, ptr %i.f, align 4, !tbaa !12
  %i.hxf = fcmp reassoc nsz arcp contract afn olt float %i.hxa, 0.000000e+00
  br i1 %i.hxf, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 %i.hxe, ptr %i.d, align 4, !tbaa !12
  store i32 %i.hxc, ptr %i.f, align 4, !tbaa !12
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.hxg = phi i32 [ %i.hxe, %bb.dt ], [ %i.hxc, %bb.ds ]
  %i.hxh = sitofp reassoc nsz arcp contract afn i32 %i.hxg to float
  %i.hxi = fsub reassoc nsz arcp contract afn float %i.hxa, %i.hxh
  %i.hxj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hxi) ; 2 uses
  store float %i.hxj, ptr %i.i, align 4, !tbaa !33
  %i.hxk = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.htl, zeroinitializer
  %i.hxl = select <2 x i1> %i.hxk, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hxm = shufflevector <2 x i32> %i.hxl, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hxm, ptr align 16 %i.c, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !12
  %i.hxn = extractelement <2 x float> %i.htp, i64 0 ; 4 uses
  %i.hxo = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hxn)
  %i.hxp = fptosi float %i.hxo to i32             ; 3 uses
  store i32 %i.hxp, ptr %i.hk, align 4, !tbaa !12
  %i.hxq = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hxn)
  %i.hxr = fptosi float %i.hxq to i32             ; 3 uses
  store i32 %i.hxr, ptr %i.hl, align 4, !tbaa !12
  %i.hxs = fcmp reassoc nsz arcp contract afn olt float %i.hxn, 0.000000e+00
  br i1 %i.hxs, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %i.hxr, ptr %i.hk, align 4, !tbaa !12
  store i32 %i.hxp, ptr %i.hl, align 4, !tbaa !12
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.hxt = phi i32 [ %i.hxr, %bb.dv ], [ %i.hxp, %bb.du ]
  %i.hxu = sitofp reassoc nsz arcp contract afn i32 %i.hxt to float
  %i.hxv = fsub reassoc nsz arcp contract afn float %i.hxn, %i.hxu
  %i.hxw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hxv) ; 2 uses
  store float %i.hxw, ptr %i.fs, align 4, !tbaa !33
  %i.hxx = extractelement <2 x float> %i.htp, i64 1 ; 4 uses
  %i.hxy = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hxx)
  %i.hxz = fptosi float %i.hxy to i32             ; 3 uses
  store i32 %i.hxz, ptr %i.hm, align 4, !tbaa !12
  %i.hya = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hxx)
  %i.hyb = fptosi float %i.hya to i32             ; 3 uses
  store i32 %i.hyb, ptr %i.hn, align 4, !tbaa !12
  %i.hyc = fcmp reassoc nsz arcp contract afn olt float %i.hxx, 0.000000e+00
  br i1 %i.hyc, label %bb.dx, label %.preheader1920

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.hyb, ptr %i.hm, align 4, !tbaa !12
  store i32 %i.hxz, ptr %i.hn, align 4, !tbaa !12
  br label %.preheader1920

.preheader1920:                                   ; preds = %bb.dx, %bb.dw
  %i.hyd = phi i32 [ %i.hyb, %bb.dx ], [ %i.hxz, %bb.dw ]
  %i.hye = sitofp reassoc nsz arcp contract afn i32 %i.hyd to float
  %i.hyf = fsub reassoc nsz arcp contract afn float %i.hxx, %i.hye
  %i.hyg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyf) ; 2 uses
  store float %i.hyg, ptr %i.fr, align 4, !tbaa !33
  %i.hyh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.htp, zeroinitializer
  %i.hyi = select <2 x i1> %i.hyh, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hyj = shufflevector <2 x i32> %i.hyi, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hyj, ptr align 8 %i.ho, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !12
  br i1 %i.fxe, label %.lr.ph2208, label %._crit_edge2209

._crit_edge2209:                                  ; preds = %._crit_edge2206, %.preheader1920
  %i.hyk = fmul reassoc nsz arcp contract afn float %i.hxj, 5.000000e-01
  store float %i.hyk, ptr %i.i, align 4, !tbaa !33
  %i.hyl = fmul reassoc nsz arcp contract afn float %i.hyg, 5.000000e-01
  store float %i.hyl, ptr %i.fr, align 4, !tbaa !33
  %i.hym = fmul reassoc nsz arcp contract afn float %i.hwz, 5.000000e-01
  store float %i.hym, ptr %i.j, align 4, !tbaa !33
  %i.hyn = fmul reassoc nsz arcp contract afn float %i.hxw, 5.000000e-01
  store float %i.hyn, ptr %i.fs, align 4, !tbaa !33
  br i1 %i.fxg, label %.lr.ph2217, label %._crit_edge2226

.lr.ph2217:                                       ; preds = %._crit_edge2209
  %i.hyo = add nsw i32 %i.fxt, -8                 ; 2 uses
  br label %bb.ea

bb.dy:                                            ; preds = %.lr.ph2208, %._crit_edge2206
  %indvars.iv2720 = phi i64 [ 4, %.lr.ph2208 ], [ %indvars.iv.next2721, %._crit_edge2206 ] ; 4 uses
  %indvars.iv2720.tr = trunc nuw i64 %indvars.iv2720 to i32
  %i.hyp = shl nuw i32 %indvars.iv2720.tr, 1
  %i.hyq = and i32 %i.hyp, 14                     ; 2 uses
  %i.hyr = shl nuw nsw i32 %i.hyq, 1
  %i.hys = lshr i32 %i.q, %i.hyr                  ; 2 uses
  %i.hyt = and i32 %i.hys, 1                      ; 2 uses
  %i.hyu = or disjoint i32 %i.hyt, 4
  %i.hyv = icmp slt i32 %i.hyu, %i.hwu
  br i1 %i.hyv, label %.lr.ph2205, label %._crit_edge2206

.lr.ph2205:                                       ; preds = %bb.dy
  %i.hyw = or disjoint i32 %i.hyt, %i.hyq
  %i.hyx = shl nuw nsw i32 %i.hyw, 1
  %i.hyy = lshr i32 %i.q, %i.hyx
  %i.hyz = and i32 %i.hyy, 3
  %i.hza = zext nneg i32 %i.hyz to i64            ; 7 uses
  %i.hzb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.hza
  %i.hzc = load float, ptr %i.hzb, align 4, !tbaa !33 ; 2 uses
  %i.hzd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hza
  %i.hze = load i32, ptr %i.hzd, align 4, !tbaa !12
  %i.hzf = trunc nuw nsw i64 %indvars.iv2720 to i32 ; 2 uses
  %i.hzg = add nsw i32 %i.hze, %i.hzf
  %i.hzh = shl nsw i32 %i.hzg, 7
  %i.hzi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hza
  %i.hzj = load i32, ptr %i.hzi, align 4, !tbaa !12
  %i.hzk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hza
  %i.hzl = load i32, ptr %i.hzk, align 4, !tbaa !12
  %i.hzm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hza
  %i.hzn = load i32, ptr %i.hzm, align 4, !tbaa !12
  %i.hzo = add nsw i32 %i.hzn, %i.hzf
  %i.hzp = shl nsw i32 %i.hzo, 7
  %i.hzq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.hza
  %i.hzr = load float, ptr %i.hzq, align 4, !tbaa !33
  %i.hzs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hza
  %i.hzt = load ptr, ptr %i.hzs, align 8, !tbaa !171
  %i.hzu = shl nuw nsw i64 %indvars.iv2720, 7
  %i.hzv = and i32 %i.hys, 1
  %i.hzw = or disjoint i32 %i.hzv, 4
  %i.hzx = zext nneg i32 %i.hzw to i64
  %i.hzy = sext i32 %i.hzh to i64
  %i.hzz = sext i32 %i.hzj to i64                 ; 2 uses
  %i.iaa = sext i32 %i.hzl to i64                 ; 2 uses
  %i.iab = sext i32 %i.hzp to i64
  %invariant.gep2979 = getelementptr [4 x i8], ptr %i.btg, i64 %i.hzz
  %invariant.gep2981 = getelementptr [4 x i8], ptr %i.btg, i64 %i.iaa
  %invariant.gep2983 = getelementptr [4 x i8], ptr %i.btg, i64 %i.hzz
  %invariant.gep2985 = getelementptr [4 x i8], ptr %i.btg, i64 %i.iaa
  br label %bb.dz

._crit_edge2206:                                  ; preds = %bb.dz, %bb.dy
  %indvars.iv.next2721 = add nuw nsw i64 %indvars.iv2720, 1 ; 2 uses
  %i.iac = icmp slt i64 %indvars.iv.next2721, %i.fxk
  br i1 %i.iac, label %bb.dy, label %._crit_edge2209

bb.dz:                                            ; preds = %.lr.ph2205, %bb.dz
  %indvars.iv2717 = phi i64 [ %i.hzx, %.lr.ph2205 ], [ %indvars.iv.next2718, %bb.dz ] ; 4 uses
  %i.iad = add nsw i64 %indvars.iv2717, %i.hzy    ; 2 uses
  %gep2980 = getelementptr [4 x i8], ptr %invariant.gep2979, i64 %i.iad
  %i.iae = load float, ptr %gep2980, align 4, !tbaa !33
  %gep2982 = getelementptr [4 x i8], ptr %invariant.gep2981, i64 %i.iad
  %i.iaf = load float, ptr %gep2982, align 4, !tbaa !33 ; 2 uses
  %i.iag = fsub reassoc nsz arcp contract afn float %i.iae, %i.iaf
  %i.iah = fmul reassoc nsz arcp contract afn float %i.iag, %i.hzc
  %i.iai = fadd reassoc nsz arcp contract afn float %i.iah, %i.iaf ; 2 uses
  %i.iaj = add nsw i64 %indvars.iv2717, %i.iab    ; 2 uses
  %gep2984 = getelementptr [4 x i8], ptr %invariant.gep2983, i64 %i.iaj
  %i.iak = load float, ptr %gep2984, align 4, !tbaa !33
  %gep2986 = getelementptr [4 x i8], ptr %invariant.gep2985, i64 %i.iaj
  %i.ial = load float, ptr %gep2986, align 4, !tbaa !33 ; 2 uses
  %i.iam = fsub reassoc nsz arcp contract afn float %i.iak, %i.ial
  %i.ian = fmul reassoc nsz arcp contract afn float %i.iam, %i.hzc
  %6 = fsub reassoc nsz arcp contract afn float %i.ial, %i.iai
  %7 = fadd reassoc nsz arcp contract afn float %6, %i.ian
  %i.iao = fmul reassoc nsz arcp contract afn float %7, %i.hzr
  %i.iap = fadd reassoc nsz arcp contract afn float %i.iao, %i.iai ; 2 uses
  %i.iaq = add nuw nsw i64 %indvars.iv2717, %i.hzu ; 2 uses
  %i.iar = getelementptr inbounds nuw [4 x i8], ptr %i.hzt, i64 %i.iaq
  %i.ias = load float, ptr %i.iar, align 4, !tbaa !33
  %i.iat = fsub reassoc nsz arcp contract afn float %i.iap, %i.ias
  %i.iau = lshr i64 %i.iaq, 1
  %i.iav = and i64 %i.iau, 2147483647             ; 2 uses
  %i.iaw = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.iav
  store float %i.iat, ptr %i.iaw, align 4, !tbaa !33
  %i.iax = getelementptr inbounds nuw [4 x i8], ptr %i.btj, i64 %i.iav
  store float %i.iap, ptr %i.iax, align 4, !tbaa !33
  %indvars.iv.next2718 = add nuw nsw i64 %indvars.iv2717, 2 ; 2 uses
  %i.iay = icmp samesign ult i64 %indvars.iv.next2718, %i.hwv
  br i1 %i.iay, label %bb.dz, label %._crit_edge2206

.lr.ph2225:                                       ; preds = %._crit_edge2214
  %i.iaz = add nsw i32 %i.fxt, -8                 ; 2 uses
  %i.iba = zext i32 %i.iaz to i64                 ; 3 uses
  br label %bb.ei

bb.ea:                                            ; preds = %.lr.ph2217, %._crit_edge2214
  %indvars.iv2723 = phi i32 [ 1032, %.lr.ph2217 ], [ %indvars.iv.next2724, %._crit_edge2214 ] ; 2 uses
  %.016192215 = phi i32 [ 8, %.lr.ph2217 ], [ %i.icb, %._crit_edge2214 ] ; 3 uses
  %i.ibb = shl nuw i32 %.016192215, 1
  %i.ibc = and i32 %i.ibb, 14                     ; 2 uses
  %i.ibd = shl nuw nsw i32 %i.ibc, 1
  %i.ibe = lshr i32 %i.q, %i.ibd
  %i.ibf = and i32 %i.ibe, 1                      ; 3 uses
  %i.ibg = or disjoint i32 %i.ibf, 8              ; 2 uses
  %i.ibh = icmp slt i32 %i.ibg, %i.hyo
  br i1 %i.ibh, label %.lr.ph2213, label %._crit_edge2214

.lr.ph2213:                                       ; preds = %bb.ea
  %i.ibi = or disjoint i32 %i.ibf, %i.ibc
  %i.ibj = shl nuw nsw i32 %i.ibi, 1
  %i.ibk = lshr i32 %i.q, %i.ibj
  %i.ibl = and i32 %i.ibk, 3
  %i.ibm = zext nneg i32 %i.ibl to i64            ; 5 uses
  %i.ibn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ibm
  %i.ibo = load ptr, ptr %i.ibn, align 8, !tbaa !171
  %i.ibp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ibm
  %i.ibq = load float, ptr %i.ibp, align 4, !tbaa !33 ; 2 uses
  %i.ibr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.ibm
  %i.ibs = load i32, ptr %i.ibr, align 4, !tbaa !12 ; 2 uses
  %i.ibt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ibm
  %i.ibu = load i32, ptr %i.ibt, align 4, !tbaa !12
  %i.ibv = sub nsw i32 %.016192215, %i.ibu
  %i.ibw = shl nsw i32 %i.ibv, 7
  %i.ibx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ibm
  %i.iby = load float, ptr %i.ibx, align 4, !tbaa !33
  %i.ibz = or disjoint i32 %indvars.iv2723, %i.ibf
  %i.ica = zext i32 %i.ibz to i64
  br label %bb.eb

._crit_edge2214:                                  ; preds = %bb.eh, %bb.ea
  %i.icb = add nuw nsw i32 %.016192215, 1         ; 2 uses
  %i.icc = icmp slt i32 %i.icb, %i.fxf
  %indvars.iv.next2724 = add i32 %indvars.iv2723, 128
  br i1 %i.icc, label %bb.ea, label %.lr.ph2225

bb.eb:                                            ; preds = %.lr.ph2213, %bb.eh
  %indvars.iv2725 = phi i64 [ %i.ica, %.lr.ph2213 ], [ %indvars.iv.next2726, %bb.eh ] ; 5 uses
  %.016182210 = phi i32 [ %i.ibg, %.lr.ph2213 ], [ %i.ifb, %bb.eh ] ; 2 uses
  %i.icd = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %indvars.iv2725 ; 2 uses
  %i.ice = load float, ptr %i.icd, align 4, !tbaa !33 ; 4 uses
  %i.icf = getelementptr inbounds nuw [4 x i8], ptr %i.ibo, i64 %indvars.iv2725 ; 3 uses
  %i.icg = load float, ptr %i.icf, align 4, !tbaa !33 ; 3 uses
  %i.ich = fsub reassoc nsz arcp contract afn float %i.ice, %i.icg ; 4 uses
  %i.ici = trunc nuw i64 %indvars.iv2725 to i32
  %i.icj = sub nsw i32 %i.ici, %i.ibs
  %i.ick = ashr i32 %i.icj, 1
  %i.icl = sext i32 %i.ick to i64                 ; 2 uses
  %i.icm = getelementptr inbounds [4 x i8], ptr %i.bti, i64 %i.icl
  %i.icn = load float, ptr %i.icm, align 4, !tbaa !33 ; 2 uses
  %i.ico = lshr i64 %indvars.iv2725, 1            ; 2 uses
  %i.icp = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.ico
  %i.icq = load float, ptr %i.icp, align 4, !tbaa !33 ; 3 uses
  %i.icr = fsub reassoc nsz arcp contract afn float %i.icn, %i.icq
  %i.ics = fmul reassoc nsz arcp contract afn float %i.icr, %i.ibq
  %i.ict = fadd reassoc nsz arcp contract afn float %i.ics, %i.icq ; 2 uses
  %i.icu = add nsw i32 %i.ibw, %.016182210        ; 2 uses
  %i.icv = sub nsw i32 %i.icu, %i.ibs
  %i.icw = ashr i32 %i.icv, 1
  %i.icx = sext i32 %i.icw to i64                 ; 2 uses
  %i.icy = getelementptr inbounds [4 x i8], ptr %i.bti, i64 %i.icx
  %i.icz = load float, ptr %i.icy, align 4, !tbaa !33 ; 2 uses
  %i.ida = ashr i32 %i.icu, 1
  %i.idb = sext i32 %i.ida to i64                 ; 2 uses
  %i.idc = getelementptr inbounds [4 x i8], ptr %i.bti, i64 %i.idb
  %i.idd = load float, ptr %i.idc, align 4, !tbaa !33 ; 3 uses
  %i.ide = fsub reassoc nsz arcp contract afn float %i.icz, %i.idd
  %i.idf = fmul reassoc nsz arcp contract afn float %i.ide, %i.ibq
  %8 = fsub reassoc nsz arcp contract afn float %i.idd, %i.ict
  %9 = fadd reassoc nsz arcp contract afn float %8, %i.idf
  %i.idg = fmul reassoc nsz arcp contract afn float %9, %i.iby
  %i.idh = fadd reassoc nsz arcp contract afn float %i.idg, %i.ict ; 4 uses
  %i.idi = fsub reassoc nsz arcp contract afn float %i.ice, %i.idh ; 3 uses
  %i.idj = fsub reassoc nsz arcp contract afn float %i.idi, %i.icg
  %i.idk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.idj)
  %i.idl = fadd reassoc nsz arcp contract afn float %i.idi, %i.icg
  %i.idm = fmul reassoc nsz arcp contract afn float %i.idl, 2.500000e-01
  %i.idn = fcmp reassoc nsz arcp contract afn olt float %i.idk, %i.idm
  br i1 %i.idn, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ido = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ich)
  %i.idp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.idh)
  %i.idq = fcmp reassoc nsz arcp contract afn ogt float %i.ido, %i.idp
  br i1 %i.idq, label %.sink.split, label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.idr = getelementptr inbounds nuw [4 x i8], ptr %i.btj, i64 %i.ico
  %i.ids = load float, ptr %i.idr, align 4, !tbaa !33
  %i.idt = getelementptr inbounds [4 x i8], ptr %i.btj, i64 %i.icl
  %i.idu = load float, ptr %i.idt, align 4, !tbaa !33
  %i.idv = getelementptr inbounds [4 x i8], ptr %i.btj, i64 %i.idb
  %i.idw = load float, ptr %i.idv, align 4, !tbaa !33
  %i.idx = getelementptr inbounds [4 x i8], ptr %i.btj, i64 %i.icx
  %i.idy = load float, ptr %i.idx, align 4, !tbaa !33
  %i.idz = insertelement <4 x float> poison, float %i.ice, i64 0
  %i.iea = shufflevector <4 x float> %i.idz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ieb = insertelement <4 x float> poison, float %i.idu, i64 0
  %i.iec = insertelement <4 x float> %i.ieb, float %i.ids, i64 1
  %i.ied = insertelement <4 x float> %i.iec, float %i.idw, i64 2
  %i.iee = insertelement <4 x float> %i.ied, float %i.idy, i64 3
  %i.ief = fsub reassoc nsz arcp contract afn <4 x float> %i.iea, %i.iee
  %i.ieg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ief)
  %i.ieh = fadd reassoc nsz arcp contract afn <4 x float> %i.ieg, splat (float f0x3727C5AC)
  %i.iei = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ieh ; 2 uses
  %i.iej = insertelement <4 x float> poison, float %i.icn, i64 0
  %i.iek = insertelement <4 x float> %i.iej, float %i.icq, i64 1
  %i.iel = insertelement <4 x float> %i.iek, float %i.idd, i64 2
  %i.iem = insertelement <4 x float> %i.iel, float %i.icz, i64 3
  %i.ien = fmul reassoc nsz arcp contract afn <4 x float> %i.iei, %i.iem
  %i.ieo = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ien)
  %i.iep = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.iei)
  %i.ieq = fdiv reassoc nsz arcp contract afn float %i.ieo, %i.iep ; 4 uses
  %i.ier = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ich)
  %i.ies = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ieq)
  %i.iet = fcmp reassoc nsz arcp contract afn ogt float %i.ier, %i.ies
  br i1 %i.iet, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ieu = fsub reassoc nsz arcp contract afn float %i.ice, %i.ieq
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ec, %bb.ee
  %.sink = phi float [ %i.ieu, %bb.ee ], [ %i.idi, %bb.ec ]
  %.01616.ph = phi float [ %i.ieq, %bb.ee ], [ %i.idh, %bb.ec ]
  store float %.sink, ptr %i.icf, align 4, !tbaa !33
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split, %bb.ed, %bb.ec
  %.01616 = phi nsz float [ %i.ieq, %bb.ed ], [ %i.idh, %bb.ec ], [ %.01616.ph, %.sink.split ] ; 2 uses
  %i.iev = fmul reassoc nsz arcp contract afn float %.01616, %i.ich
  %i.iew = fcmp reassoc nsz arcp contract afn olt float %i.iev, 0.000000e+00
  br i1 %i.iew, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.iex = load float, ptr %i.icd, align 4, !tbaa !33
  %i.iey = fadd reassoc nsz arcp contract afn float %.01616, %i.ich
  %i.iez = fmul reassoc nsz arcp contract afn float %i.iey, 5.000000e-01
  %i.ifa = fsub reassoc nsz arcp contract afn float %i.iex, %i.iez
  store float %i.ifa, ptr %i.icf, align 4, !tbaa !33
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.ifb = add nuw nsw i32 %.016182210, 2         ; 2 uses
  %indvars.iv.next2726 = add nuw nsw i64 %indvars.iv2725, 2
  %i.ifc = icmp slt i32 %i.ifb, %i.hyo
  br i1 %i.ifc, label %bb.eb, label %._crit_edge2214

._crit_edge2226:                                  ; preds = %._crit_edge2223, %._crit_edge2209
  %indvars.iv.next2739 = add nsw i64 %indvars.iv2738, 112 ; 2 uses
  %i.ifd = icmp slt i64 %indvars.iv.next2739, %i.af
  %indvars.iv.next2662 = add nuw i32 %indvars.iv2661, 112
  %indvars.iv.next2665 = add nsw i32 %indvars.iv2664, -112
  br i1 %i.ifd, label %bb.be, label %._crit_edge2229

bb.ei:                                            ; preds = %.lr.ph2225, %._crit_edge2223
  %indvar = phi i25 [ 0, %.lr.ph2225 ], [ %indvar.next, %._crit_edge2223 ] ; 2 uses
  %indvars.iv2735 = phi i64 [ 8, %.lr.ph2225 ], [ %indvars.iv.next2736, %._crit_edge2223 ] ; 5 uses
  %i.ife = add i25 %indvar, 8
  %i.iff = zext i25 %i.ife to i64
  %i.ifg = shl nuw nsw i64 %i.iff, 9              ; 2 uses
  %i.ifh = trunc nuw nsw i64 %indvars.iv2735 to i32
  %i.ifi = shl i32 %i.ifh, 2
  %i.ifj = and i32 %i.ifi, 28
  %i.ifk = lshr i32 %i.q, %i.ifj                  ; 4 uses
  %i.ifl = and i32 %i.ifk, 1
  %i.ifm = or disjoint i32 %i.ifl, 8              ; 2 uses
  %i.ifn = icmp slt i32 %i.ifm, %i.iaz
  br i1 %i.ifn, label %iter.check3076, label %._crit_edge2223

iter.check3076:                                   ; preds = %bb.ei
  %i.ifo = add nsw i64 %indvars.iv2735, %indvars.iv2742
  %i.ifp = trunc i64 %i.ifo to i32
  %i.ifq = mul i32 %i.ae, %i.ifp
  %i.ifr = add i32 %i.ifq, %i.fxs
  %i.ifs = add i32 %i.ifr, %i.ifm
  %i.ift = ashr i32 %i.ifs, 1
  %.tr = trunc i64 %indvars.iv2735 to i32
  %i.ifu = shl i32 %.tr, 1
  %.tr.i1847 = and i32 %i.ifu, 14                 ; 2 uses
  %i.ifv = shl nuw nsw i32 %.tr.i1847, 1
  %i.ifw = lshr i32 %i.q, %i.ifv
  %i.ifx = and i32 %i.ifw, 1
  %.tr.i1848 = or disjoint i32 %i.ifx, %.tr.i1847
  %i.ify = shl nuw nsw i32 %.tr.i1848, 1
  %i.ifz = lshr i32 %i.q, %i.ify
  %i.iga = and i32 %i.ifz, 3
  %i.igb = zext nneg i32 %i.iga to i64
  %i.igc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.igb
  %i.igd = load ptr, ptr %i.igc, align 8, !tbaa !171 ; 3 uses
  %i.ige = sext i32 %i.ift to i64                 ; 8 uses
  %i.igf = and i32 %i.ifk, 1
  %i.igg = or disjoint i32 %i.igf, 8
  %i.igh = zext nneg i32 %i.igg to i64            ; 6 uses
  %i.igi = shl i64 %indvars.iv2735, 7
  %i.igj = and i64 %i.igi, 4294967168
  %invariant.gep2987 = getelementptr inbounds nuw [4 x i8], ptr %i.igd, i64 %i.igj ; 6 uses
  %i.igk = and i32 %i.ifk, 1
  %i.igl = zext nneg i32 %i.igk to i64            ; 2 uses
  %i.igm = or disjoint i64 %i.igl, 10
  %umax3057 = call i64 @llvm.umax.i64(i64 %i.igm, i64 %i.iba)
  %i.ign = add nsw i64 %umax3057, -9
  %i.igo = sub nsw i64 %i.ign, %i.igl             ; 3 uses
  %i.igp = lshr i64 %i.igo, 1
  %i.igq = add nuw nsw i64 %i.igp, 1              ; 4 uses
  %min.iters.check3058 = icmp ult i64 %i.igo, 16
  br i1 %min.iters.check3058, label %vec.epilog.scalar.ph3077.preheader, label %vector.memcheck3046

vector.memcheck3046:                              ; preds = %iter.check3076
  %i.igr = shl nsw i64 %i.ige, 2
  %scevgep3047 = getelementptr i8, ptr %i.dq, i64 %i.igr
  %i.igs = and i32 %i.ifk, 1
  %i.igt = zext nneg i32 %i.igs to i64            ; 3 uses
  %i.igu = or disjoint i64 %i.igt, 10
  %umax = call i64 @llvm.umax.i64(i64 %i.igu, i64 %i.iba)
  %i.igv = add nsw i64 %umax, -9
  %i.igw = sub nsw i64 %i.igv, %i.igt
  %i.igx = lshr i64 %i.igw, 1                     ; 2 uses
  %i.igy = add i64 %i.igx, %i.ige
  %i.igz = shl i64 %i.igy, 2
  %scevgep3049 = getelementptr i8, ptr %scevgep3048, i64 %i.igz
  %scevgep3050 = getelementptr nuw i8, ptr %i.igd, i64 32
  %i.iha = shl nuw nsw i64 %i.igt, 2              ; 2 uses
  %i.ihb = getelementptr nuw i8, ptr %scevgep3050, i64 %i.ifg
  %scevgep3051 = getelementptr nuw i8, ptr %i.ihb, i64 %i.iha
  %scevgep3052 = getelementptr i8, ptr %i.igd, i64 36
  %i.ihc = shl nuw nsw i64 %i.igx, 3
  %i.ihd = getelementptr i8, ptr %scevgep3052, i64 %i.ifg
  %i.ihe = getelementptr i8, ptr %i.ihd, i64 %i.ihc
  %scevgep3053 = getelementptr i8, ptr %i.ihe, i64 %i.iha
  %bound03054 = icmp ult ptr %scevgep3047, %scevgep3053
  %bound13055 = icmp ult ptr %scevgep3051, %scevgep3049
  %found.conflict3056 = and i1 %bound03054, %bound13055
  br i1 %found.conflict3056, label %vec.epilog.scalar.ph3077.preheader, label %vector.main.loop.iter.check3059

vector.main.loop.iter.check3059:                  ; preds = %vector.memcheck3046
  %min.iters.check3060 = icmp ult i64 %i.igo, 64
  br i1 %min.iters.check3060, label %vec.epilog.ph3080, label %vector.ph3061

vector.ph3061:                                    ; preds = %vector.main.loop.iter.check3059
  %i.ihf = and i64 %i.igq, 31                     ; 2 uses
  %i.ihg = icmp eq i64 %i.ihf, 0
  %i.ihh = select i1 %i.ihg, i64 32, i64 %i.ihf   ; 2 uses
  %n.vec3062 = sub nsw i64 %i.igq, %i.ihh         ; 4 uses
  %i.ihi = shl i64 %n.vec3062, 1
  %i.ihj = add i64 %i.ihi, %i.igh
  %i.ihk = add i64 %n.vec3062, %i.ige
  %invariant.gep4567 = getelementptr [4 x i8], ptr %i.dq, i64 %i.ige
  br label %vector.body3063

vector.body3063:                                  ; preds = %vector.ph3061, %vector.body3063
  %index3064 = phi i64 [ 0, %vector.ph3061 ], [ %index.next3071, %vector.body3063 ] ; 3 uses
  %i.ihl = shl nuw i64 %index3064, 1
  %i.ihm = or disjoint i64 %i.ihl, %i.igh         ; 4 uses
  %i.ihn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2987, i64 %i.ihm
  %i.iho = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2987, i64 %i.ihm
  %i.ihp = getelementptr inbounds nuw i8, ptr %i.iho, i64 64
  %i.ihq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2987, i64 %i.ihm
  %i.ihr = getelementptr inbounds nuw i8, ptr %i.ihq, i64 128
  %i.ihs = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2987, i64 %i.ihm
  %i.iht = getelementptr inbounds nuw i8, ptr %i.ihs, i64 192
  %wide.vec = load <16 x float>, ptr %i.ihn, align 4, !tbaa !33, !alias.scope !226
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3065 = load <16 x float>, ptr %i.ihp, align 4, !tbaa !33, !alias.scope !226
  %strided.vec3066 = shufflevector <16 x float> %wide.vec3065, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3067 = load <16 x float>, ptr %i.ihr, align 4, !tbaa !33, !alias.scope !226
  %strided.vec3068 = shufflevector <16 x float> %wide.vec3067, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3069 = load <16 x float>, ptr %i.iht, align 4, !tbaa !33, !alias.scope !226
  %strided.vec3070 = shufflevector <16 x float> %wide.vec3069, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %gep4568 = getelementptr [4 x i8], ptr %invariant.gep4567, i64 %index3064 ; 4 uses
end_hunk_0
