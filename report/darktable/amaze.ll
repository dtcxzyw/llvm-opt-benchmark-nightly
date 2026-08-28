Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/amaze?download=true
inline.NumInlined: 126
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 42
begin_hunk_0_@amaze_demosaic:bb.a

.lr.ph4127:                                       ; preds = %bb.ej
  %i.irg = or disjoint i32 %i.ird, %i.ira
  %i.irh = shl nuw nsw i32 %i.irg, 1
  %i.iri = lshr i32 %4, %i.irh
  %i.irj = lshr i32 %i.iri, 1
  %i.irk = and i32 %i.irj, 1
  %i.irl = xor i32 %i.irk, 1
  %i.irm = zext nneg i32 %i.irl to i64
  %i.irn = getelementptr inbounds nuw [51200 x i8], ptr %i.r, i64 %i.irm ; 15 uses
  %i.iro = or disjoint i32 %indvars.iv4365, %i.ird
  %i.irp = zext i32 %i.iro to i64
  br label %bb.ek

._crit_edge4128:                                  ; preds = %bb.ek, %bb.ej
  %i.irq = add nuw nsw i32 %.031494129, 1         ; 2 uses
  %i.irr = icmp slt i32 %i.irq, %i.dg
  %indvars.iv.next4366 = add i32 %indvars.iv4365, 160
  br i1 %i.irr, label %bb.ej, label %.preheader3913, !llvm.loop !407

bb.ek:                                            ; preds = %.lr.ph4127, %bb.ek
  %indvars.iv4367 = phi i64 [ %i.irp, %.lr.ph4127 ], [ %indvars.iv.next4368, %bb.ek ] ; 10 uses
  %.031484124 = phi i32 [ %i.ire, %.lr.ph4127 ], [ %i.iwp, %bb.ek ]
  %i.irs = trunc nuw i64 %indvars.iv4367 to i32   ; 7 uses
  %i.irt = add nsw i32 %i.irs, -161
  %i.iru = ashr i32 %i.irt, 1
  %i.irv = sext i32 %i.iru to i64
  %i.irw = getelementptr inbounds [4 x i8], ptr %i.irn, i64 %i.irv
  %i.irx = load float, ptr %i.irw, align 4, !tbaa !13 ; 5 uses
  %i.iry = add nuw i64 %indvars.iv4367, 161
  %i.irz = lshr i64 %i.iry, 1
  %i.isa = and i64 %i.irz, 2147483647
  %i.isb = getelementptr inbounds nuw [4 x i8], ptr %i.irn, i64 %i.isa
  %i.isc = load float, ptr %i.isb, align 4, !tbaa !13 ; 4 uses
  %i.isd = add nsw i32 %i.irs, -483
  %i.ise = ashr i32 %i.isd, 1
  %i.isf = sext i32 %i.ise to i64
  %i.isg = getelementptr inbounds [4 x i8], ptr %i.irn, i64 %i.isf
  %i.ish = load float, ptr %i.isg, align 4, !tbaa !13 ; 3 uses
  %i.isi = add nsw i32 %i.irs, -159
  %i.isj = ashr i32 %i.isi, 1
  %i.isk = sext i32 %i.isj to i64
  %i.isl = getelementptr inbounds [4 x i8], ptr %i.irn, i64 %i.isk
  %i.ism = load float, ptr %i.isl, align 4, !tbaa !13 ; 3 uses
  %i.isn = add nuw i64 %indvars.iv4367, 159
  %i.iso = lshr i64 %i.isn, 1
  %i.isp = and i64 %i.iso, 2147483647
  %i.isq = getelementptr inbounds nuw [4 x i8], ptr %i.irn, i64 %i.isp
  %i.isr = load float, ptr %i.isq, align 4, !tbaa !13 ; 2 uses
  %i.iss = add nsw i32 %i.irs, -477
  %i.ist = ashr i32 %i.iss, 1
  %i.isu = sext i32 %i.ist to i64
  %i.isv = getelementptr inbounds [4 x i8], ptr %i.irn, i64 %i.isu
  %i.isw = load float, ptr %i.isv, align 4, !tbaa !13 ; 3 uses
  %i.isx = add nuw i64 %indvars.iv4367, 483
  %i.isy = lshr i64 %i.isx, 1
  %i.isz = and i64 %i.isy, 2147483647
  %i.ita = getelementptr inbounds nuw [4 x i8], ptr %i.irn, i64 %i.isz
  %i.itb = load float, ptr %i.ita, align 4, !tbaa !13 ; 3 uses
  %i.itc = add nuw i64 %indvars.iv4367, 477
  %i.itd = lshr i64 %i.itc, 1
  %i.ite = and i64 %i.itd, 2147483647
  %i.itf = getelementptr inbounds nuw [4 x i8], ptr %i.irn, i64 %i.ite
  %i.itg = load float, ptr %i.itf, align 4, !tbaa !13 ; 2 uses
  %i.ith = add nsw i32 %i.irs, -163
  %i.iti = ashr i32 %i.ith, 1
  %i.itj = sext i32 %i.iti to i64
  %i.itk = getelementptr inbounds [4 x i8], ptr %i.irn, i64 %i.itj
  %i.itl = load float, ptr %i.itk, align 4, !tbaa !13
  %i.itm = add nsw i32 %i.irs, -481
  %i.itn = ashr i32 %i.itm, 1
  %i.ito = sext i32 %i.itn to i64
  %i.itp = getelementptr inbounds [4 x i8], ptr %i.irn, i64 %i.ito
  %i.itq = load float, ptr %i.itp, align 4, !tbaa !13
  %i.itr = add nsw i32 %i.irs, -157
  %i.its = ashr i32 %i.itr, 1
  %i.itt = sext i32 %i.its to i64
  %i.itu = getelementptr inbounds [4 x i8], ptr %i.irn, i64 %i.itt
  %i.itv = load float, ptr %i.itu, align 4, !tbaa !13
  %i.itw = add nuw i64 %indvars.iv4367, 157
  %i.itx = lshr i64 %i.itw, 1
  %i.ity = and i64 %i.itx, 2147483647
  %i.itz = getelementptr inbounds nuw [4 x i8], ptr %i.irn, i64 %i.ity
  %i.iua = load float, ptr %i.itz, align 4, !tbaa !13
  %i.iub = add nuw i64 %indvars.iv4367, 163
  %i.iuc = lshr i64 %i.iub, 1
  %i.iud = and i64 %i.iuc, 2147483647
  %i.iue = getelementptr inbounds nuw [4 x i8], ptr %i.irn, i64 %i.iud
  %i.iuf = load float, ptr %i.iue, align 4, !tbaa !13
  %i.iug = add nuw i64 %indvars.iv4367, 481
  %i.iuh = lshr i64 %i.iug, 1
  %i.iui = and i64 %i.iuh, 2147483647
  %i.iuj = getelementptr inbounds nuw [4 x i8], ptr %i.irn, i64 %i.iui
  %i.iuk = load float, ptr %i.iuj, align 4, !tbaa !13
  %i.iul = insertelement <4 x float> poison, float %i.ism, i64 0
  %i.ium = insertelement <4 x float> %i.iul, float %i.irx, i64 1
  %i.iun = insertelement <4 x float> %i.ium, float %i.isr, i64 2
  %i.iuo = insertelement <4 x float> %i.iun, float %i.isc, i64 3
  %i.iup = insertelement <4 x float> poison, float %i.isr, i64 0 ; 2 uses
  %i.iuq = insertelement <4 x float> %i.iup, float %i.isc, i64 1
  %i.iur = insertelement <4 x float> %i.iuq, float %i.ism, i64 2 ; 2 uses
  %i.ius = insertelement <4 x float> %i.iur, float %i.irx, i64 3 ; 2 uses
  %i.iut = fsub reassoc nsz arcp contract afn <4 x float> %i.iuo, %i.ius
  %i.iuu = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.iut)
  %i.iuv = fadd reassoc nsz arcp contract afn <4 x float> %i.iuu, splat (float f0x3727C5AC)
  %i.iuw = shufflevector <4 x float> %i.iuv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.iux = insertelement <4 x float> %i.iur, float %i.ish, i64 3
  %i.iuy = insertelement <4 x float> poison, float %i.isw, i64 0
  %i.iuz = insertelement <4 x float> %i.iuy, float %i.isc, i64 1
  %i.iva = insertelement <4 x float> %i.iuz, float %i.itg, i64 2
  %i.ivb = shufflevector <4 x float> %i.iux, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.ivc = shufflevector <4 x float> %i.iva, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.ivd = fsub reassoc nsz arcp contract afn <4 x float> %i.ivb, %i.ivc
  %i.ive = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ivd)
  %i.ivf = insertelement <4 x float> poison, float %i.itb, i64 0
  %i.ivg = insertelement <4 x float> %i.ivf, float %i.irx, i64 1
  %i.ivh = insertelement <4 x float> %i.ivg, float %i.ism, i64 2
  %i.ivi = insertelement <4 x float> %i.ivh, float %i.ish, i64 3
  %i.ivj = insertelement <4 x float> %i.iup, float %i.itb, i64 1
  %i.ivk = insertelement <4 x float> %i.ivj, float %i.isw, i64 2
  %i.ivl = insertelement <4 x float> %i.ivk, float %i.irx, i64 3
  %i.ivm = fsub reassoc nsz arcp contract afn <4 x float> %i.ivi, %i.ivl
  %i.ivn = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ivm)
  %i.ivo = fadd reassoc nsz arcp contract afn <4 x float> %i.iuw, %i.ivn
  %i.ivp = fadd reassoc nsz arcp contract afn <4 x float> %i.ivo, %i.ive
  %i.ivq = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ivp ; 2 uses
  %i.ivr = fmul reassoc nsz arcp contract afn <4 x float> %i.ius, splat (float 1.325000e+00)
  %i.ivs = insertelement <4 x float> poison, float %i.itg, i64 0
  %i.ivt = insertelement <4 x float> %i.ivs, float %i.itb, i64 1
  %i.ivu = insertelement <4 x float> %i.ivt, float %i.isw, i64 2
  %i.ivv = insertelement <4 x float> %i.ivu, float %i.ish, i64 3
  %i.ivw = fmul reassoc nsz arcp contract afn <4 x float> %i.ivv, splat (float -1.750000e-01)
  %i.ivx = insertelement <4 x float> poison, float %i.iua, i64 0
  %i.ivy = insertelement <4 x float> %i.ivx, float %i.iuk, i64 1
  %i.ivz = insertelement <4 x float> %i.ivy, float %i.itv, i64 2
  %i.iwa = insertelement <4 x float> %i.ivz, float %i.itq, i64 3
  %i.iwb = insertelement <4 x float> poison, float %i.irx, i64 0
  %i.iwc = insertelement <4 x float> %i.iwb, float %i.iuf, i64 1
  %i.iwd = insertelement <4 x float> %i.iwc, float %i.isc, i64 2
  %i.iwe = insertelement <4 x float> %i.iwd, float %i.itl, i64 3
  %i.iwf = fadd reassoc nsz arcp contract afn <4 x float> %i.iwa, %i.iwe
  %i.iwg = fmul reassoc nsz arcp contract afn <4 x float> %i.iwf, splat (float -7.500000e-02)
  %i.iwh = fadd reassoc nsz arcp contract afn <4 x float> %i.ivw, %i.ivr
  %i.iwi = fadd reassoc nsz arcp contract afn <4 x float> %i.iwh, %i.iwg
  %i.iwj = fmul reassoc nsz arcp contract afn <4 x float> %i.iwi, %i.ivq
  %i.iwk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.iwj)
  %i.iwl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ivq)
  %i.iwm = fdiv reassoc nsz arcp contract afn float %i.iwk, %i.iwl
  %i.iwn = lshr i64 %indvars.iv4367, 1
  %i.iwo = getelementptr inbounds nuw [4 x i8], ptr %i.irn, i64 %i.iwn
  store float %i.iwm, ptr %i.iwo, align 4, !tbaa !13
  %i.iwp = add nuw nsw i32 %.031484124, 2         ; 2 uses
  %indvars.iv.next4368 = add nuw nsw i64 %indvars.iv4367, 2
  %i.iwq = icmp slt i32 %i.iwp, %i.ipw
  br i1 %i.iwq, label %bb.ek, label %._crit_edge4128, !llvm.loop !408

.preheader3912:                                   ; preds = %bb.gi
  %i.iwr = icmp sgt i32 %i.ih, 32
  br i1 %i.iwr, label %.lr.ph4148.preheader, label %._crit_edge4152.split

.lr.ph4148.preheader:                             ; preds = %.preheader3912
  %i.iws = add nsw i32 %i.ih, -16
  %i.iwt = zext i32 %i.iws to i64                 ; 2 uses
  %scevgep4831 = getelementptr i8, ptr %scevgep4830, i64 %i.ib
  %i.iwu = tail call i64 @llvm.umax.i64(i64 %i.iwt, i64 17)
  %i.iwv = add nsw i64 %i.iwu, -16                ; 3 uses
  %min.iters.check = icmp ult i64 %i.iwv, 8
  %n.vec = and i64 %i.iwv, -8                     ; 3 uses
  %i.iww = add nsw i64 %n.vec, 16
  %broadcast.splatinsert4840 = insertelement <8 x i64> poison, i64 %indvars.iv4397, i64 0
  %broadcast.splat4841 = shufflevector <8 x i64> %broadcast.splatinsert4840, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.iwv, %n.vec
  br label %.lr.ph4148

bb.el:                                            ; preds = %.lr.ph4144, %bb.gi
  %indvars.iv4388 = phi i64 [ 16, %.lr.ph4144 ], [ %indvars.iv.next4389, %bb.gi ] ; 4 uses
  %indvars.iv4370 = phi i32 [ 2560, %.lr.ph4144 ], [ %indvars.iv.next4371, %bb.gi ] ; 2 uses
  %i.iwx = or disjoint i32 %indvars.iv4370, 16
  %i.iwy = zext i32 %i.iwx to i64                 ; 2 uses
  %i.iwz = add nsw i64 %indvars.iv4388, %indvars.iv4401 ; 8 uses
  %i.ixa = mul nuw nsw i64 %indvars.iv4388, 160   ; 2 uses
  %i.ixb = or disjoint i64 %i.ixa, 16             ; 2 uses
  %i.ixc = trunc nuw nsw i64 %indvars.iv4388 to i32
  %i.ixd = shl i32 %i.ixc, 2
  %i.ixe = and i32 %i.ixd, 28
  %i.ixf = shl nuw nsw i32 1, %i.ixe
  %i.ixg = and i32 %i.ixf, %4
  %.not = icmp eq i32 %i.ixg, 0
  %i.ixh = trunc nsw i64 %i.ixa to i32
  %i.ixi = add i32 %i.iqw, %i.ixh                 ; 3 uses
  %i.ixj = sext i32 %i.ixi to i64
  %i.ixk = icmp slt i64 %i.ixb, %i.ixj            ; 2 uses
  %i.ixl = trunc nsw i64 %i.ixb to i32            ; 2 uses
  br i1 %.not, label %.preheader3903, label %.preheader3904

.preheader3904:                                   ; preds = %bb.el
  br i1 %i.ixk, label %.lr.ph4133, label %._crit_edge4134

.lr.ph4133:                                       ; preds = %.preheader3904
  %i.ixm = icmp slt i64 %i.iwz, %i.aq             ; 2 uses
  %i.ixn = mul nuw nsw i64 %i.iwz, %i.an          ; 2 uses
  br label %bb.em

.preheader3903:                                   ; preds = %bb.el
  br i1 %i.ixk, label %.lr.ph4139, label %._crit_edge4140

.lr.ph4139:                                       ; preds = %.preheader3903
  %i.ixo = icmp slt i64 %i.iwz, %i.aq             ; 2 uses
  %i.ixp = mul nuw nsw i64 %i.iwz, %i.an          ; 2 uses
  br label %bb.fk

bb.em:                                            ; preds = %.lr.ph4133, %bb.fc
  %indvars.iv4376 = phi i64 [ %indvars.iv4374, %.lr.ph4133 ], [ %indvars.iv.next4377, %bb.fc ] ; 4 uses
  %indvars.iv4372 = phi i64 [ %i.iwy, %.lr.ph4133 ], [ %indvars.iv.next4373, %bb.fc ] ; 7 uses
  %i.ixq = icmp slt i64 %indvars.iv4376, %i.an
  %or.cond3612 = select i1 %i.ixq, i1 %i.ixm, i1 false
  br i1 %or.cond3612, label %bb.en, label %bb.eu

bb.en:                                            ; preds = %bb.em
  %i.ixr = trunc nuw i64 %indvars.iv4372 to i32   ; 2 uses
  %i.ixs = add nsw i32 %i.ixr, -160
  %i.ixt = ashr exact i32 %i.ixs, 1
  %i.ixu = sext i32 %i.ixt to i64                 ; 3 uses
  %i.ixv = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ixu ; 2 uses
  %i.ixw = load float, ptr %i.ixv, align 4, !tbaa !13 ; 2 uses
  %i.ixx = lshr exact i64 %indvars.iv4372, 1      ; 3 uses
  %i.ixy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ixx ; 2 uses
  %i.ixz = load float, ptr %i.ixy, align 4, !tbaa !13 ; 2 uses
  %i.iya = add nsw i32 %i.ixr, -2
  %i.iyb = ashr exact i32 %i.iya, 1
  %i.iyc = sext i32 %i.iyb to i64                 ; 3 uses
  %i.iyd = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.iyc ; 2 uses
  %i.iye = load float, ptr %i.iyd, align 4, !tbaa !13 ; 2 uses
  %i.iyf = add nuw i64 %indvars.iv4372, 160
  %i.iyg = lshr exact i64 %i.iyf, 1
  %i.iyh = and i64 %i.iyg, 2147483647             ; 3 uses
  %i.iyi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.iyh ; 2 uses
  %i.iyj = load float, ptr %i.iyi, align 4, !tbaa !13 ; 2 uses
  %.neg3844 = fadd reassoc nsz arcp contract afn float %i.ixw, 2.000000e+00
  %i.iyk = fadd reassoc nsz arcp contract afn float %i.ixz, %i.iye
  %i.iyl = fsub reassoc nsz arcp contract afn float %.neg3844, %i.iyk
  %i.iym = fadd reassoc nsz arcp contract afn float %i.iyl, %i.iyj
  %i.iyn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.iym ; 2 uses
  %i.iyo = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv4372 ; 2 uses
  %i.iyp = load float, ptr %i.iyo, align 8, !tbaa !13
  %i.iyq = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ixu
  %i.iyr = load float, ptr %i.iyq, align 4, !tbaa !13
  %i.iys = fmul reassoc nsz arcp contract afn float %i.iyr, %i.ixw
  %i.iyt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ixz
  %i.iyu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ixx
  %i.iyv = load float, ptr %i.iyu, align 4, !tbaa !13
  %i.iyw = fmul reassoc nsz arcp contract afn float %i.iyv, %i.iyt
  %i.iyx = fadd reassoc nsz arcp contract afn float %i.iyw, %i.iys
  %i.iyy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.iye
  %i.iyz = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.iyc
  %i.iza = load float, ptr %i.iyz, align 4, !tbaa !13
  %i.izb = fmul reassoc nsz arcp contract afn float %i.iza, %i.iyy
  %i.izc = fadd reassoc nsz arcp contract afn float %i.iyx, %i.izb
  %i.izd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.iyh
  %i.ize = load float, ptr %i.izd, align 4, !tbaa !13
  %i.izf = fmul reassoc nsz arcp contract afn float %i.ize, %i.iyj
  %i.izg = fadd reassoc nsz arcp contract afn float %i.izc, %i.izf
  %i.izh = fmul reassoc nsz arcp contract afn float %i.izg, %i.iyn
  %i.izi = fsub reassoc nsz arcp contract afn float %i.iyp, %i.izh ; 6 uses
  %i.izj = tail call float @llvm.fabs.f32(float %i.izi)
  %i.izk = fcmp oeq float %i.izj, +inf
  br i1 %i.izk, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.izl = fcmp reassoc nsz arcp contract afn olt float %i.izi, 0.000000e+00
  br i1 %i.izl, label %_ZL9_clampnanfff.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.izm = fcmp reassoc nsz arcp contract afn ogt float %i.izi, 1.000000e+00
  %i.izn = select reassoc nsz arcp contract afn i1 %i.izm, float 1.000000e+00, float %i.izi
  br label %_ZL9_clampnanfff.exit

bb.eq:                                            ; preds = %bb.en
  %i.izo = fcmp uno float %i.izi, 0.000000e+00
  %..i3693 = select nsz i1 %i.izo, float 5.000000e-01, float %i.izi
  br label %_ZL9_clampnanfff.exit

_ZL9_clampnanfff.exit:                            ; preds = %bb.eo, %bb.ep, %bb.eq
  %.0.i = phi nsz float [ 0.000000e+00, %bb.eo ], [ %..i3693, %bb.eq ], [ %i.izn, %bb.ep ]
  %i.izp = add nsw i64 %indvars.iv4376, %i.ixn
  %.idx = shl nsw i64 %i.izp, 4
  %i.izq = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  store float %.0.i, ptr %i.izq, align 4, !tbaa !13
  %i.izr = load float, ptr %i.iyo, align 8, !tbaa !13
  %i.izs = load float, ptr %i.ixv, align 4, !tbaa !13
  %i.izt = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ixu
  %i.izu = load float, ptr %i.izt, align 4, !tbaa !13
  %i.izv = fmul reassoc nsz arcp contract afn float %i.izu, %i.izs
  %i.izw = load float, ptr %i.ixy, align 4, !tbaa !13
  %i.izx = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.izw
  %i.izy = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ixx
  %i.izz = load float, ptr %i.izy, align 4, !tbaa !13
  %i.jaa = fmul reassoc nsz arcp contract afn float %i.izx, %i.izz
  %i.jab = fadd reassoc nsz arcp contract afn float %i.jaa, %i.izv
  %i.jac = load float, ptr %i.iyd, align 4, !tbaa !13
  %i.jad = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jac
  %i.jae = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.iyc
  %i.jaf = load float, ptr %i.jae, align 4, !tbaa !13
  %i.jag = fmul reassoc nsz arcp contract afn float %i.jad, %i.jaf
  %i.jah = fadd reassoc nsz arcp contract afn float %i.jab, %i.jag
  %i.jai = load float, ptr %i.iyi, align 4, !tbaa !13
  %i.jaj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.iyh
  %i.jak = load float, ptr %i.jaj, align 4, !tbaa !13
  %i.jal = fmul reassoc nsz arcp contract afn float %i.jak, %i.jai
  %i.jam = fadd reassoc nsz arcp contract afn float %i.jah, %i.jal
  %i.jan = fmul reassoc nsz arcp contract afn float %i.jam, %i.iyn
  %i.jao = fsub reassoc nsz arcp contract afn float %i.izr, %i.jan ; 6 uses
  %i.jap = tail call float @llvm.fabs.f32(float %i.jao)
  %i.jaq = fcmp oeq float %i.jap, +inf
  br i1 %i.jaq, label %bb.er, label %bb.et

bb.er:                                            ; preds = %_ZL9_clampnanfff.exit
  %i.jar = fcmp reassoc nsz arcp contract afn olt float %i.jao, 0.000000e+00
  br i1 %i.jar, label %_ZL9_clampnanfff.exit3696, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.jas = fcmp reassoc nsz arcp contract afn ogt float %i.jao, 1.000000e+00
  %i.jat = select reassoc nsz arcp contract afn i1 %i.jas, float 1.000000e+00, float %i.jao
  br label %_ZL9_clampnanfff.exit3696

bb.et:                                            ; preds = %_ZL9_clampnanfff.exit
  %i.jau = fcmp uno float %i.jao, 0.000000e+00
  %..i3694 = select nsz i1 %i.jau, float 5.000000e-01, float %i.jao
  br label %_ZL9_clampnanfff.exit3696

_ZL9_clampnanfff.exit3696:                        ; preds = %bb.er, %bb.es, %bb.et
  %.0.i3695 = phi nsz float [ 0.000000e+00, %bb.er ], [ %..i3694, %bb.et ], [ %i.jat, %bb.es ]
  %i.jav = getelementptr i8, ptr %i.izq, i64 8
  store float %.0.i3695, ptr %i.jav, align 4, !tbaa !13
  br label %bb.eu

bb.eu:                                            ; preds = %_ZL9_clampnanfff.exit3696, %bb.em
  %i.jaw = or disjoint i64 %indvars.iv4376, 1     ; 2 uses
  %i.jax = icmp slt i64 %i.jaw, %i.an
  %or.cond3613 = select i1 %i.jax, i1 %i.ixm, i1 false
  br i1 %or.cond3613, label %bb.ev, label %bb.fc

bb.ev:                                            ; preds = %bb.eu
  %i.jay = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv4372
  %i.jaz = getelementptr inbounds nuw i8, ptr %i.jay, i64 4 ; 2 uses
  %i.jba = load float, ptr %i.jaz, align 4, !tbaa !13
  %i.jbb = lshr exact i64 %indvars.iv4372, 1      ; 2 uses
  %i.jbc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.jbb
  %i.jbd = load float, ptr %i.jbc, align 4, !tbaa !13
  %i.jbe = fsub reassoc nsz arcp contract afn float %i.jba, %i.jbd ; 6 uses
  %i.jbf = tail call float @llvm.fabs.f32(float %i.jbe)
  %i.jbg = fcmp oeq float %i.jbf, +inf
  br i1 %i.jbg, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.jbh = fcmp reassoc nsz arcp contract afn olt float %i.jbe, 0.000000e+00
  br i1 %i.jbh, label %_ZL9_clampnanfff.exit3699, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.jbi = fcmp reassoc nsz arcp contract afn ogt float %i.jbe, 1.000000e+00
  %i.jbj = select reassoc nsz arcp contract afn i1 %i.jbi, float 1.000000e+00, float %i.jbe
  br label %_ZL9_clampnanfff.exit3699

bb.ey:                                            ; preds = %bb.ev
  %i.jbk = fcmp uno float %i.jbe, 0.000000e+00
  %..i3697 = select nsz i1 %i.jbk, float 5.000000e-01, float %i.jbe
  br label %_ZL9_clampnanfff.exit3699

_ZL9_clampnanfff.exit3699:                        ; preds = %bb.ew, %bb.ex, %bb.ey
  %.0.i3698 = phi nsz float [ 0.000000e+00, %bb.ew ], [ %..i3697, %bb.ey ], [ %i.jbj, %bb.ex ]
  %i.jbl = add nsw i64 %i.jaw, %i.ixn
  %.idx4609 = shl nsw i64 %i.jbl, 4
  %i.jbm = getelementptr inbounds i8, ptr %1, i64 %.idx4609 ; 2 uses
  store float %.0.i3698, ptr %i.jbm, align 4, !tbaa !13
  %i.jbn = load float, ptr %i.jaz, align 4, !tbaa !13
  %i.jbo = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.jbb
  %i.jbp = load float, ptr %i.jbo, align 4, !tbaa !13
  %i.jbq = fsub reassoc nsz arcp contract afn float %i.jbn, %i.jbp ; 6 uses
  %i.jbr = tail call float @llvm.fabs.f32(float %i.jbq)
  %i.jbs = fcmp oeq float %i.jbr, +inf
  br i1 %i.jbs, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %_ZL9_clampnanfff.exit3699
  %i.jbt = fcmp reassoc nsz arcp contract afn olt float %i.jbq, 0.000000e+00
  br i1 %i.jbt, label %_ZL9_clampnanfff.exit3702, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.jbu = fcmp reassoc nsz arcp contract afn ogt float %i.jbq, 1.000000e+00
  %i.jbv = select reassoc nsz arcp contract afn i1 %i.jbu, float 1.000000e+00, float %i.jbq
  br label %_ZL9_clampnanfff.exit3702

bb.fb:                                            ; preds = %_ZL9_clampnanfff.exit3699
  %i.jbw = fcmp uno float %i.jbq, 0.000000e+00
  %..i3700 = select nsz i1 %i.jbw, float 5.000000e-01, float %i.jbq
  br label %_ZL9_clampnanfff.exit3702

_ZL9_clampnanfff.exit3702:                        ; preds = %bb.ez, %bb.fa, %bb.fb
  %.0.i3701 = phi nsz float [ 0.000000e+00, %bb.ez ], [ %..i3700, %bb.fb ], [ %i.jbv, %bb.fa ]
  %i.jbx = getelementptr i8, ptr %i.jbm, i64 8
  store float %.0.i3701, ptr %i.jbx, align 4, !tbaa !13
  br label %bb.fc

bb.fc:                                            ; preds = %bb.eu, %_ZL9_clampnanfff.exit3702
  %indvars.iv.next4373 = add nuw nsw i64 %indvars.iv4372, 2 ; 2 uses
  %indvars.iv.next4377 = add nuw nsw i64 %indvars.iv4376, 2 ; 2 uses
  %i.jby = trunc nuw i64 %indvars.iv.next4373 to i32 ; 2 uses
  %i.jbz = icmp sgt i32 %i.ixi, %i.jby
  br i1 %i.jbz, label %bb.em, label %._crit_edge4134.loopexit, !llvm.loop !409

end_hunk_0
