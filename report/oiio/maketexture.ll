Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/maketexture?download=true
inline.NumInlined: 6377
inline.NumDeleted: 1711
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
bb.nv:                                            ; preds = %bb.nu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.277) #34
          to label %.noexc1273 unwind label %bb.nx

.noexc1273:                                       ; preds = %bb.nv
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.nu
  %i.awb = shl nuw nsw i64 %i.auu, 2              ; 6 uses
  %i.awc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awb) #33
          to label %.noexc1274 unwind label %bb.nx ; 9 uses

.noexc1274:                                       ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  store float 0.000000e+00, ptr %i.awc, align 4, !tbaa !522
  %i.awd = getelementptr i8, ptr %i.awc, i64 4    ; 3 uses
  %i.awe = add nsw i64 %i.auu, -1                 ; 5 uses
  %i.awf = icmp eq i64 %i.awe, 0                  ; 2 uses
  br i1 %i.awf, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc1274
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.awe, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.awd, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !522
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awd, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275: ; preds = %.noexc1274, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i1272 = phi ptr [ %i.awg, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.awd, %.noexc1274 ]
  %i.awh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awb) #33
          to label %.noexc1281 unwind label %bb.ny ; 6 uses

.noexc1281:                                       ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275
  store float 0.000000e+00, ptr %i.awh, align 4, !tbaa !522
  br i1 %i.awf, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit1282, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1277

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1277: ; preds = %.noexc1281
  %i.awi = getelementptr i8, ptr %i.awh, i64 4
  %.idx.i.i.i.i.i.i.i1278 = shl nuw nsw i64 %i.awe, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.awi, i8 0, i64 %.idx.i.i.i.i.i.i.i1278, i1 false), !tbaa !522
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit1282

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit1282:           ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1277, %.noexc1281
  %i.awj = icmp sgt i32 %i.avz, 0
  br i1 %i.awj, label %.lr.ph2574, label %._crit_edge

.lr.ph2574:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit1282
  %i.awk = getelementptr inbounds nuw i8, ptr %154, i64 4
  %i.awl = getelementptr inbounds nuw i8, ptr %153, i64 16 ; 2 uses
  %.not2580 = icmp eq i32 %i.aus, 0
  %i.awm = fmul double %i.auv, f0x3FF6A09E667F3BCD ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %157, i64 16 ; 5 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %156, i64 16 ; 7 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %156, i64 8 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %155, i64 8
  %.sroa.52255.0.insert.ext = zext i32 %i.aut to i64
  %.sroa.52255.0.insert.shift = shl nuw i64 %.sroa.52255.0.insert.ext, 32
  %.sroa.02251.0.insert.insert = or disjoint i64 %.sroa.52255.0.insert.shift, 267 ; 2 uses
  %i.awr = uitofp i64 %i.awe to float             ; 2 uses
  %i.aws = ptrtoint ptr %.0.i.i.i.i.i1272 to i64
  %i.awt = ptrtoint ptr %i.awc to i64             ; 3 uses
  %i.awu = sub i64 %i.aws, %i.awt
  %i.awv = ashr exact i64 %i.awu, 2               ; 2 uses
  %i.aww = icmp sgt i64 %i.awv, 0
  %i.awx = getelementptr inbounds nuw i8, ptr %160, i64 16 ; 5 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %159, i64 16 ; 7 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %159, i64 8 ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %158, i64 8
  %umax = call i64 @llvm.umax.i64(i64 %i.auu, i64 2)
  %i.axb = add i64 %umax, -1                      ; 2 uses
  %xtraiter = and i64 %i.axb, 3                   ; 3 uses
  %i.axc = icmp ult i32 %i.aus, 3
  %unroll_iter = and i64 %i.axb, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod3364 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp eq i32 %i.aus, 0
  %n.vec = and i64 %i.auu, -2                     ; 3 uses
  %broadcast.splatinsert3329 = insertelement <2 x float> poison, float %i.avu, i64 0
  %broadcast.splat3330 = shufflevector <2 x float> %broadcast.splatinsert3329, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert3331 = insertelement <2 x double> poison, double %i.awm, i64 0
  %broadcast.splat3332 = shufflevector <2 x double> %broadcast.splatinsert3331, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.auu
  br label %bb.nz

bb.nw:                                            ; preds = %bb.hm, %bb.gk, %bb.gu, %.thread2425, %bb.nn, %bb.np
  %i.axd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ase

bb.nx:                                            ; preds = %bb.ns, %bb.nq, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %bb.nv
  %i.axe = landingpad { ptr, i32 }
          cleanup
  br label %bb.pb

bb.ny:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275
  %i.axf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit1346

bb.nz:                                            ; preds = %.lr.ph2574, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328
  %.05732573 = phi i32 [ 0, %.lr.ph2574 ], [ %i.biv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328 ] ; 7 uses
  %.sroa.02263.02572 = phi ptr [ null, %.lr.ph2574 ], [ %i.axh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328 ] ; 4 uses
  %.sroa.13.02571 = phi ptr [ null, %.lr.ph2574 ], [ %i.axi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.axg = load ptr, ptr %64, align 16, !tbaa !481
  store i32 -2147483648, ptr %154, align 8, !tbaa !510
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.awk, i8 0, i64 28, i1 false)
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo9histogramERKNS0_8ImageBufEiiffbNS0_3ROIEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.128") align 8 %153, ptr noundef nonnull align 8 dereferenceable(16) %i.axg, i32 noundef %.05732573, i32 noundef %i.aut, float noundef 0.000000e+00, float noundef 1.000000e+00, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %154, i32 noundef %i.bq)
          to label %bb.oa unwind label %bb.oc

bb.oa:                                            ; preds = %bb.nz
  %i.axh = load ptr, ptr %153, align 8, !tbaa !525 ; 13 uses
  %i.axi = load ptr, ptr %i.awl, align 8, !tbaa !526 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.02263.02572, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %153, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNSt6vectorImSaImEEaSEOS1_.exit

_ZNSt6vectorImSaImEEaSEOS1_.exit:                 ; preds = %bb.oa
  %i.axj = ptrtoint ptr %.sroa.13.02571 to i64
  %i.axk = ptrtoint ptr %.sroa.02263.02572 to i64
  %i.axl = sub i64 %i.axj, %i.axk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02263.02572, i64 noundef %i.axl) #31
  %.pr2428 = load ptr, ptr %153, align 8, !tbaa !525 ; 3 uses
  %.not.i.i.i1283 = icmp eq ptr %.pr2428, null
  br i1 %.not.i.i.i1283, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ob

bb.ob:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit
  %i.axm = load ptr, ptr %i.awl, align 8, !tbaa !526
  %i.axn = ptrtoint ptr %i.axm to i64
  %i.axo = ptrtoint ptr %.pr2428 to i64
  %i.axp = sub i64 %i.axn, %i.axo
  call void @_ZdlPvm(ptr noundef nonnull %.pr2428, i64 noundef %i.axp) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.oa, %_ZNSt6vectorImSaImEEaSEOS1_.exit, %bb.ob
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br i1 %.not2580, label %.preheader2511, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %load_initial = load i64, ptr %i.axh, align 8   ; 2 uses
  br i1 %i.axc, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader2511.loopexit.unr-lcssa:                ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.preheader2511, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader2511.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph.preheader ], [ %i.bbw, %.preheader2511.loopexit.unr-lcssa ]
  %.05722568.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.bbx, %.preheader2511.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3364)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.axs, %.lr.ph.epil ]
  %.05722568.epil = phi i64 [ %.05722568.epil.init, %.lr.ph.epil.preheader ], [ %i.axt, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.axq = getelementptr [8 x i8], ptr %i.axh, i64 %.05722568.epil ; 2 uses
  %i.axr = load i64, ptr %i.axq, align 8, !tbaa !428
  %i.axs = add i64 %i.axr, %store_forwarded.epil  ; 2 uses
  store i64 %i.axs, ptr %i.axq, align 8, !tbaa !428
  %i.axt = add nuw i64 %.05722568.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader2511, label %.lr.ph.epil, !llvm.loop !835

.preheader2511:                                   ; preds = %.preheader2511.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.axh, i64 %i.awe
  %i.axv = load i64, ptr %i.axu, align 8, !tbaa !428
  %i.axw = uitofp i64 %i.axv to float             ; 2 uses
  br i1 %min.iters.check, label %.noexc.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader2511
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.axw, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %i.axh, i64 %index
  %wide.load = load <2 x i64>, ptr %i.axx, align 8, !tbaa !428
  %i.axy = uitofp <2 x i64> %wide.load to <2 x float>
  %i.axz = fdiv <2 x float> %i.axy, %broadcast.splat
  %i.aya = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.axz, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00))
  %i.ayb = fmul <2 x float> %broadcast.splat3330, %i.aya ; 2 uses
  %i.ayc = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ayb) ; 2 uses
  %i.ayd = fcmp ogt <2 x float> %i.ayc, splat (float f0x3F7FFFFF)
  %i.aye = select <2 x i1> %i.ayd, <2 x float> splat (float f0x3F7FFFFF), <2 x float> %i.ayc ; 2 uses
  %i.ayf = fsub <2 x float> splat (float 1.000000e+00), %i.aye
  %i.ayg = fadd <2 x float> %i.aye, splat (float 1.000000e+00)
  %i.ayh = fmul <2 x float> %i.ayf, %i.ayg        ; 2 uses
  %i.ayi = fcmp oge <2 x float> %i.ayh, splat (float f0x00800000)
  %i.ayj = select <2 x i1> %i.ayi, <2 x float> %i.ayh, <2 x float> splat (float f0x00800000) ; 2 uses
  %i.ayk = fcmp ogt <2 x float> %i.ayj, splat (float f0x7F7FFFFF)
  %i.ayl = bitcast <2 x float> %i.ayj to <2 x i32>
  %i.aym = select <2 x i1> %i.ayk, <2 x i32> splat (i32 2139095039), <2 x i32> %i.ayl ; 2 uses
  %i.ayn = lshr <2 x i32> %i.aym, splat (i32 23)
  %i.ayo = add nsw <2 x i32> %i.ayn, splat (i32 -127)
  %i.ayp = and <2 x i32> %i.aym, splat (i32 8388607)
  %i.ayq = or disjoint <2 x i32> %i.ayp, splat (i32 1065353216)
  %i.ayr = bitcast <2 x i32> %i.ayq to <2 x float>
  %i.ays = fadd <2 x float> %i.ayr, splat (float -1.000000e+00) ; 9 uses
  %i.ayt = fmul <2 x float> %i.ays, %i.ays        ; 2 uses
  %i.ayu = fmul <2 x float> %i.ayt, %i.ayt
  %i.ayv = fmul nnan contract <2 x float> %i.ays, splat (float f0x3C188B0D)
  %i.ayw = fsub nnan contract <2 x float> splat (float f0x3D5541C9), %i.ayv
  %i.ayx = fmul nnan contract <2 x float> %i.ays, splat (float f0x3EF5162D)
  %i.ayy = fadd nnan contract <2 x float> %i.ayx, splat (float f0xBF389E54)
  %i.ayz = fmul contract <2 x float> %i.ays, %i.ayw
  %i.aza = fadd contract <2 x float> %i.ayz, splat (float f0xBE0CD4FD)
  %i.azb = fmul contract <2 x float> %i.ays, %i.aza
  %i.azc = fadd contract <2 x float> %i.azb, splat (float f0x3E77ADBD)
  %i.azd = fmul contract <2 x float> %i.ays, %i.azc
  %i.aze = fadd contract <2 x float> %i.azd, splat (float f0xBEB1D206)
  %i.azf = fmul contract <2 x float> %i.ays, %i.ayy
  %i.azg = fadd contract <2 x float> %i.azf, splat (float f0x3FB8AA10)
  %i.azh = fmul <2 x float> %i.ays, %i.azg
  %i.azi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayu, <2 x float> %i.aze, <2 x float> %i.azh)
  %i.azj = sitofp <2 x i32> %i.ayo to <2 x float>
  %i.azk = fadd <2 x float> %i.azi, %i.azj
  %i.azl = fmul <2 x float> %i.azk, splat (float f0x3F317218) ; 3 uses
  %i.azm = fcmp ogt <2 x float> %i.azl, splat (float -5.000000e+00)
  %i.azn = fneg <2 x float> %i.azl
  %i.azo = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.azn)
  %i.azp = fadd <2 x float> %i.azo, splat (float -3.000000e+00) ; 8 uses
  %i.azq = fmul contract <2 x float> %i.azp, splat (float f0x3951F09B)
  %i.azr = fsub contract <2 x float> splat (float f0x38D3B56B), %i.azq
  %i.azs = fmul contract <2 x float> %i.azp, %i.azr
  %i.azt = fadd contract <2 x float> %i.azs, splat (float f0x3AB0DC72)
  %i.azu = fmul contract <2 x float> %i.azp, %i.azt
  %i.azv = fadd contract <2 x float> %i.azu, splat (float f0xBB70BDE7)
  %i.azw = fmul contract <2 x float> %i.azp, %i.azv
  %i.azx = fadd contract <2 x float> %i.azw, splat (float f0x3BBC127B)
  %i.azy = fmul contract <2 x float> %i.azp, %i.azx
  %i.azz = fadd contract <2 x float> %i.azy, splat (float f0xBBF9C5D7)
  %i.baa = fmul contract <2 x float> %i.azp, %i.azz
  %i.bab = fadd contract <2 x float> %i.baa, splat (float f0x3C1AA57E)
  %i.bac = fmul contract <2 x float> %i.azp, %i.bab
  %i.bad = fadd contract <2 x float> %i.bac, splat (float f0x3F8036DB)
  %i.bae = fmul contract <2 x float> %i.azp, %i.bad
  %i.baf = fadd contract <2 x float> %i.bae, splat (float f0x40354F7E)
  %i.bag = fsub <2 x float> splat (float -2.500000e+00), %i.azl ; 8 uses
  %i.bah = fmul nnan contract <2 x float> %i.bag, splat (float f0x32F16588)
  %i.bai = fadd nnan contract <2 x float> %i.bah, splat (float f0x34B84B36)
  %i.baj = fmul contract <2 x float> %i.bag, %i.bai
  %i.bak = fadd contract <2 x float> %i.baj, splat (float f0xB66C7357)
  %i.bal = fmul contract <2 x float> %i.bag, %i.bak
  %i.bam = fadd contract <2 x float> %i.bal, splat (float f0xB6935AC1)
  %i.ban = fmul contract <2 x float> %i.bag, %i.bam
  %i.bao = fadd contract <2 x float> %i.ban, splat (float f0x396532DB)
  %i.bap = fmul contract <2 x float> %i.bag, %i.bao
  %i.baq = fadd contract <2 x float> %i.bap, splat (float f0xBAA45408)
  %i.bar = fmul contract <2 x float> %i.bag, %i.baq
  %i.bas = fadd contract <2 x float> %i.bar, splat (float f0xBB88E4EF)
  %i.bat = fmul contract <2 x float> %i.bag, %i.bas
  %i.bau = fadd contract <2 x float> %i.bat, splat (float f0x3E7C8F63)
  %i.bav = fmul contract <2 x float> %i.bag, %i.bau
  %i.baw = fadd contract <2 x float> %i.bav, splat (float f0x3FC02E2F)
  %predphi = select <2 x i1> %i.azm, <2 x float> %i.baw, <2 x float> %i.baf
  %i.bax = fmul <2 x float> %i.ayb, %predphi
  %i.bay = fpext <2 x float> %i.bax to <2 x double>
  %i.baz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat3332, <2 x double> %i.bay, <2 x double> splat (double 5.000000e-01)) ; 2 uses
  %i.bba = fptrunc <2 x double> %i.baz to <2 x float>
  %i.bbb = fcmp ogt <2 x double> %i.baz, splat (double f0x3690000000000000)
  %i.bbc = select <2 x i1> %i.bbb, <2 x float> %i.bba, <2 x float> zeroinitializer ; 2 uses
  %i.bbd = fcmp olt <2 x float> %i.bbc, splat (float 1.000000e+00)
  %i.bbe = select <2 x i1> %i.bbd, <2 x float> %i.bbc, <2 x float> splat (float 1.000000e+00)
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %index
  store <2 x float> %i.bbe, ptr %i.bbf, align 4, !tbaa !522
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bbg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bbg, label %middle.block, label %vector.body, !llvm.loop !836

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.preheader2511, %middle.block
  %.05712569.ph = phi i64 [ 0, %.preheader2511 ], [ %n.vec, %middle.block ]
  br label %.noexc

bb.oc:                                            ; preds = %bb.nz
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br label %bb.pa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i64 [ %i.bbw, %.lr.ph ], [ %load_initial, %.lr.ph.preheader ]
  %.05722568 = phi i64 [ %i.bbx, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bbi = getelementptr [8 x i8], ptr %i.axh, i64 %.05722568 ; 2 uses
  %i.bbj = load i64, ptr %i.bbi, align 8, !tbaa !428
  %i.bbk = add i64 %i.bbj, %store_forwarded       ; 2 uses
  store i64 %i.bbk, ptr %i.bbi, align 8, !tbaa !428
  %i.bbl = getelementptr [8 x i8], ptr %i.axh, i64 %.05722568
  %i.bbm = getelementptr i8, ptr %i.bbl, i64 8    ; 2 uses
  %i.bbn = load i64, ptr %i.bbm, align 8, !tbaa !428
  %i.bbo = add i64 %i.bbn, %i.bbk                 ; 2 uses
  store i64 %i.bbo, ptr %i.bbm, align 8, !tbaa !428
  %i.bbp = getelementptr [8 x i8], ptr %i.axh, i64 %.05722568
  %i.bbq = getelementptr i8, ptr %i.bbp, i64 16   ; 2 uses
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !428
  %i.bbs = add i64 %i.bbr, %i.bbo                 ; 2 uses
  store i64 %i.bbs, ptr %i.bbq, align 8, !tbaa !428
  %i.bbt = getelementptr [8 x i8], ptr %i.axh, i64 %.05722568
  %i.bbu = getelementptr i8, ptr %i.bbt, i64 24   ; 2 uses
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !428
  %i.bbw = add i64 %i.bbv, %i.bbs                 ; 3 uses
  store i64 %i.bbw, ptr %i.bbu, align 8, !tbaa !428
  %i.bbx = add nuw i64 %.05722568, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader2511.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !837

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.oj, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  store ptr %i.awn, ptr %157, align 8, !tbaa !427, !alias.scope !920
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %157, i64 noundef 1, i8 noundef signext 45)
          to label %._crit_edge.i.i1284 unwind label %bb.of

._crit_edge.i.i1284:                              ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bby = load ptr, ptr %157, align 8, !tbaa !430, !alias.scope !920 ; 2 uses
  %i.bbz = icmp samesign ugt i32 %.05732573, 9    ; 2 uses
  br i1 %i.bbz, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %._crit_edge.i.i1284
  %i.bca = shl nuw nsw i32 %.05732573, 1
  %i.bcb = zext nneg i32 %i.bca to i64
  %i.bcc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bcb ; 2 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 1
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !431, !noalias !920
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bby, i64 1
  store i8 %i.bce, ptr %i.bcf, align 1, !tbaa !431
  %i.bcg = load i8, ptr %i.bcc, align 2, !tbaa !431, !noalias !920
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.oe:                                            ; preds = %._crit_edge.i.i1284
  %i.bch = trunc nuw nsw i32 %.05732573 to i8
  %i.bci = or disjoint i8 %i.bch, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.of:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bcj = landingpad { ptr, i32 }
          catch ptr null
  %i.bck = extractvalue { ptr, i32 } %i.bcj, 0
  call void @__clang_call_terminate(ptr %i.bck) #35
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.od, %bb.oe
  %storemerge.i.i = phi i8 [ %i.bci, %bb.oe ], [ %i.bcg, %bb.od ]
  store i8 %storemerge.i.i, ptr %i.bby, align 1, !tbaa !431
  %i.bcl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %157, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.92, i64 noundef 7)
          to label %.noexc1287 unwind label %bb.oq ; 6 uses

.noexc1287:                                       ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.awo, ptr %156, align 8, !tbaa !427, !alias.scope !921
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !430 ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcl, i64 16 ; 5 uses
  %i.bco = icmp eq ptr %i.bcm, %i.bcn
  br i1 %i.bco, label %bb.og, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285

bb.og:                                            ; preds = %.noexc1287
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  %i.bcq = load i64, ptr %i.bcp, align 8, !tbaa !432 ; 3 uses
  %i.bcr = icmp ult i64 %i.bcq, 16
  call void @llvm.assume(i1 %i.bcr)
  %i.bcs = add nuw nsw i64 %i.bcq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.awo, ptr noundef nonnull align 8 dereferenceable(1) %i.bcn, i64 %i.bcs, i1 false)
  br label %bb.ok

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285: ; preds = %.noexc1287
  store ptr %i.bcm, ptr %156, align 8, !tbaa !430, !alias.scope !921
  %i.bct = load i64, ptr %i.bcn, align 8, !tbaa !431
  store i64 %i.bct, ptr %i.awo, align 8, !tbaa !431, !alias.scope !921
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  %.pre.i1286 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !432
  br label %bb.ok

.noexc:                                           ; preds = %.noexc.preheader, %bb.oj
  %.05712569 = phi i64 [ %i.bga, %bb.oj ], [ %.05712569.ph, %.noexc.preheader ] ; 3 uses
  %i.bcu = getelementptr inbounds nuw [8 x i8], ptr %i.axh, i64 %.05712569
  %i.bcv = load i64, ptr %i.bcu, align 8, !tbaa !428
  %i.bcw = uitofp i64 %i.bcv to float
  %i.bcx = fdiv float %i.bcw, %i.axw
  %i.bcy = call float @llvm.fmuladd.f32(float %i.bcx, float 2.000000e+00, float -1.000000e+00)
  %i.bcz = fmul float %i.avu, %i.bcy              ; 2 uses
  %i.bda = call float @llvm.fabs.f32(float %i.bcz) ; 2 uses
  %i.bdb = fcmp ogt float %i.bda, f0x3F7FFFFF
  %spec.store.select.i = select i1 %i.bdb, float f0x3F7FFFFF, float %i.bda ; 2 uses
  %i.bdc = fsub float 1.000000e+00, %spec.store.select.i
  %i.bdd = fadd float %spec.store.select.i, 1.000000e+00
  %i.bde = fmul float %i.bdc, %i.bdd              ; 2 uses
  %.inv2476 = fcmp oge float %i.bde, f0x00800000
  %.0.i.i = select i1 %.inv2476, float %i.bde, float f0x00800000 ; 2 uses
  %i.bdf = fcmp ogt float %.0.i.i, f0x7F7FFFFF
  %i.bdg = bitcast float %.0.i.i to i32
  %i.bdh = select i1 %i.bdf, i32 2139095039, i32 %i.bdg ; 2 uses
  %i.bdi = lshr i32 %i.bdh, 23
  %i.bdj = add nsw i32 %i.bdi, -127
  %i.bdk = and i32 %i.bdh, 8388607
  %i.bdl = or disjoint i32 %i.bdk, 1065353216
  %i.bdm = bitcast i32 %i.bdl to float
  %i.bdn = fadd float %i.bdm, -1.000000e+00       ; 6 uses
  %i.bdo = fmul float %i.bdn, %i.bdn              ; 2 uses
  %i.bdp = fmul float %i.bdo, %i.bdo
  %i.bdq = fmul nnan contract float %i.bdn, f0x3C188B0D
  %i.bdr = fsub nnan contract float f0x3D5541C9, %i.bdq
  %i.bds = fmul contract float %i.bdn, %i.bdr
  %i.bdt = fadd contract float %i.bds, f0xBE0CD4FD
  %i.bdu = insertelement <2 x float> poison, float %i.bdn, i64 0
  %i.bdv = shufflevector <2 x float> %i.bdu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bdw = insertelement <2 x float> <float poison, float f0x3EF5162D>, float %i.bdt, i64 0
  %i.bdx = fmul contract <2 x float> %i.bdv, %i.bdw
  %i.bdy = fadd contract <2 x float> %i.bdx, <float f0x3E77ADBD, float f0xBF389E54>
  %i.bdz = fmul contract <2 x float> %i.bdv, %i.bdy
  %i.bea = fadd contract <2 x float> %i.bdz, <float f0xBEB1D206, float f0x3FB8AA10> ; 2 uses
  %i.beb = extractelement <2 x float> %i.bea, i64 1
  %i.bec = fmul float %i.bdn, %i.beb
  %i.bed = extractelement <2 x float> %i.bea, i64 0
  %i.bee = call float @llvm.fmuladd.f32(float %i.bdp, float %i.bed, float %i.bec)
  %i.bef = sitofp i32 %i.bdj to float
  %i.beg = fadd float %i.bee, %i.bef
  %i.beh = fmul float %i.beg, f0x3F317218         ; 3 uses
  %i.bei = fcmp ogt float %i.beh, -5.000000e+00
  br i1 %i.bei, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %.noexc
  %i.bej = fsub float -2.500000e+00, %i.beh       ; 8 uses
  %i.bek = fmul nnan contract float %i.bej, f0x32F16588
  %i.bel = fadd nnan contract float %i.bek, f0x34B84B36
  %i.bem = fmul contract float %i.bej, %i.bel
  %i.ben = fadd contract float %i.bem, f0xB66C7357
  %i.beo = fmul contract float %i.bej, %i.ben
  %i.bep = fadd contract float %i.beo, f0xB6935AC1
  %i.beq = fmul contract float %i.bej, %i.bep
  %i.ber = fadd contract float %i.beq, f0x396532DB
  %i.bes = fmul contract float %i.bej, %i.ber
  %i.bet = fadd contract float %i.bes, f0xBAA45408
  %i.beu = fmul contract float %i.bej, %i.bet
  %i.bev = fadd contract float %i.beu, f0xBB88E4EF
  %i.bew = fmul contract float %i.bej, %i.bev
  %i.bex = fadd contract float %i.bew, f0x3E7C8F63
  %i.bey = fmul contract float %i.bej, %i.bex
  %i.bez = fadd contract float %i.bey, f0x3FC02E2F
  br label %bb.oj

bb.oi:                                            ; preds = %.noexc
  %i.bfa = fneg float %i.beh
  %i.bfb = call float @llvm.sqrt.f32(float %i.bfa)
  %i.bfc = fadd float %i.bfb, -3.000000e+00       ; 8 uses
  %i.bfd = fmul contract float %i.bfc, f0x3951F09B
  %i.bfe = fsub contract float f0x38D3B56B, %i.bfd
  %i.bff = fmul contract float %i.bfc, %i.bfe
  %i.bfg = fadd contract float %i.bff, f0x3AB0DC72
  %i.bfh = fmul contract float %i.bfc, %i.bfg
  %i.bfi = fadd contract float %i.bfh, f0xBB70BDE7
  %i.bfj = fmul contract float %i.bfc, %i.bfi
  %i.bfk = fadd contract float %i.bfj, f0x3BBC127B
  %i.bfl = fmul contract float %i.bfc, %i.bfk
  %i.bfm = fadd contract float %i.bfl, f0xBBF9C5D7
  %i.bfn = fmul contract float %i.bfc, %i.bfm
  %i.bfo = fadd contract float %i.bfn, f0x3C1AA57E
  %i.bfp = fmul contract float %i.bfc, %i.bfo
  %i.bfq = fadd contract float %i.bfp, f0x3F8036DB
  %i.bfr = fmul contract float %i.bfc, %i.bfq
  %i.bfs = fadd contract float %i.bfr, f0x40354F7E
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %bb.oh
  %.0.i = phi float [ %i.bez, %bb.oh ], [ %i.bfs, %bb.oi ]
  %i.bft = fmul float %i.bcz, %.0.i
  %i.bfu = fpext float %i.bft to double
  %i.bfv = call double @llvm.fmuladd.f64(double %i.awm, double %i.bfu, double 5.000000e-01) ; 2 uses
  %i.bfw = fptrunc double %i.bfv to float
  %i.bfx = fcmp ogt double %i.bfv, f0x3690000000000000
  %.sroa.speculated2262 = select i1 %i.bfx, float %i.bfw, float 0.000000e+00 ; 2 uses
  %i.bfy = fcmp olt float %.sroa.speculated2262, 1.000000e+00
  %.sroa.speculated2259 = select i1 %i.bfy, float %.sroa.speculated2262, float 1.000000e+00
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %.05712569
  store float %.sroa.speculated2259, ptr %i.bfz, align 4, !tbaa !522
  %i.bga = add nuw i64 %.05712569, 1              ; 2 uses
  %exitcond2619.not = icmp eq i64 %i.bga, %i.auu
  br i1 %exitcond2619.not, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.noexc, !llvm.loop !842

bb.ok:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285, %bb.og
  %i.bgb = phi i64 [ %i.bcq, %bb.og ], [ %.pre.i1286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285 ]
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  store i64 %i.bgb, ptr %i.awp, align 8, !tbaa !432, !alias.scope !921
  store ptr %i.bcn, ptr %i.bcl, align 8, !tbaa !430
  store i64 0, ptr %i.bgc, align 8, !tbaa !432
  store i8 0, ptr %i.bcn, align 8, !tbaa !431
  %i.bgd = load ptr, ptr %156, align 8, !tbaa !430
  store ptr %i.bgd, ptr %155, align 8, !tbaa !424
  %i.bge = load i64, ptr %i.awp, align 8, !tbaa !432
  store i64 %i.bge, ptr %i.awq, align 8, !tbaa !425
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %155, i64 %.sroa.02251.0.insert.insert, ptr noundef nonnull %i.awc)
          to label %bb.ol unwind label %bb.or

bb.ol:                                            ; preds = %bb.ok
  %i.bgf = load ptr, ptr %156, align 8, !tbaa !430 ; 2 uses
  %i.bgg = icmp eq ptr %i.bgf, %i.awo
  br i1 %i.bgg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290: ; preds = %bb.ol
  %i.bgh = load i64, ptr %i.awo, align 8, !tbaa !431
  %i.bgi = add i64 %i.bgh, 1
  call void @_ZdlPvm(ptr noundef %i.bgf, i64 noundef %i.bgi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292: ; preds = %bb.ol, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290
  %i.bgj = load ptr, ptr %157, align 8, !tbaa !430 ; 2 uses
  %i.bgk = icmp eq ptr %i.bgj, %i.awn
  br i1 %i.bgk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292
  %i.bgl = load i64, ptr %i.awn, align 8, !tbaa !431
  %i.bgm = add i64 %i.bgl, 1
  call void @_ZdlPvm(ptr noundef %i.bgj, i64 noundef %i.bgm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1293
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #30
  br label %bb.os

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1299: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  store ptr %i.awx, ptr %160, align 8, !tbaa !427, !alias.scope !922
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %160, i64 noundef 1, i8 noundef signext 45)
          to label %._crit_edge.i.i1303 unwind label %bb.oo

._crit_edge.i.i1303:                              ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1299
  %i.bgn = load ptr, ptr %160, align 8, !tbaa !430, !alias.scope !922 ; 2 uses
  br i1 %i.bbz, label %bb.om, label %bb.on

bb.om:                                            ; preds = %._crit_edge.i.i1303
  %i.bgo = shl nuw nsw i32 %.05732573, 1
  %i.bgp = zext nneg i32 %i.bgo to i64
  %i.bgq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bgp ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 1
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !431, !noalias !922
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgn, i64 1
  store i8 %i.bgs, ptr %i.bgt, align 1, !tbaa !431
  %i.bgu = load i8, ptr %i.bgq, align 2, !tbaa !431, !noalias !922
  br label %_ZNSt7__cxx119to_stringEi.exit1310

bb.on:                                            ; preds = %._crit_edge.i.i1303
  %i.bgv = trunc nuw nsw i32 %.05732573 to i8
  %i.bgw = or disjoint i8 %i.bgv, 48
  br label %_ZNSt7__cxx119to_stringEi.exit1310

bb.oo:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1299
  %i.bgx = landingpad { ptr, i32 }
          catch ptr null
  %i.bgy = extractvalue { ptr, i32 } %i.bgx, 0
  call void @__clang_call_terminate(ptr %i.bgy) #35
  unreachable

_ZNSt7__cxx119to_stringEi.exit1310:               ; preds = %bb.om, %bb.on
  %storemerge.i.i1305 = phi i8 [ %i.bgw, %bb.on ], [ %i.bgu, %bb.om ]
  store i8 %storemerge.i.i1305, ptr %i.bgn, align 1, !tbaa !431
  %i.bgz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %160, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.93, i64 noundef 4)
          to label %.noexc1314 unwind label %bb.ov ; 6 uses

.noexc1314:                                       ; preds = %_ZNSt7__cxx119to_stringEi.exit1310
  store ptr %i.awy, ptr %159, align 8, !tbaa !427, !alias.scope !923
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !430 ; 2 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgz, i64 16 ; 5 uses
  %i.bhc = icmp eq ptr %i.bha, %i.bhb
  br i1 %i.bhc, label %bb.op, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1311

bb.op:                                            ; preds = %.noexc1314
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgz, i64 8
  %i.bhe = load i64, ptr %i.bhd, align 8, !tbaa !432 ; 3 uses
  %i.bhf = icmp ult i64 %i.bhe, 16
  call void @llvm.assume(i1 %i.bhf)
  %i.bhg = add nuw nsw i64 %i.bhe, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.awy, ptr noundef nonnull align 8 dereferenceable(1) %i.bhb, i64 %i.bhg, i1 false)
  br label %bb.ot

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1311: ; preds = %.noexc1314
  store ptr %i.bha, ptr %159, align 8, !tbaa !430, !alias.scope !923
  %i.bhh = load i64, ptr %i.bhb, align 8, !tbaa !431
  store i64 %i.bhh, ptr %i.awy, align 8, !tbaa !431, !alias.scope !923
  %.phi.trans.insert.i1312 = getelementptr inbounds nuw i8, ptr %i.bgz, i64 8
  %.pre.i1313 = load i64, ptr %.phi.trans.insert.i1312, align 8, !tbaa !432
  br label %bb.ot

bb.oq:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.bhi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318

bb.or:                                            ; preds = %bb.ok
  %i.bhj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bhk = load ptr, ptr %156, align 8, !tbaa !430 ; 2 uses
  %i.bhl = icmp eq ptr %i.bhk, %i.awo
  br i1 %i.bhl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316: ; preds = %bb.or
  %i.bhm = load i64, ptr %i.awo, align 8, !tbaa !431
  %i.bhn = add i64 %i.bhm, 1
  call void @_ZdlPvm(ptr noundef %i.bhk, i64 noundef %i.bhn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318: ; preds = %bb.or, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316, %bb.oq
  %.pn846 = phi { ptr, i32 } [ %i.bhi, %bb.oq ], [ %i.bhj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316 ], [ %i.bhj, %bb.or ]
  %i.bho = load ptr, ptr %157, align 8, !tbaa !430 ; 2 uses
  %i.bhp = icmp eq ptr %i.bho, %i.awn
  br i1 %i.bhp, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318
  %i.bhq = load i64, ptr %i.awn, align 8, !tbaa !431
  %i.bhr = add i64 %i.bhq, 1
  call void @_ZdlPvm(ptr noundef %i.bho, i64 noundef %i.bhr) #31
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1319
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #30
  br label %.thread2429

bb.os:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1295, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit
  %.05702570 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1295 ], [ %i.bii, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit ] ; 3 uses
  %i.bhs = uitofp i64 %.05702570 to float
  %i.bht = fdiv float %i.bhs, %i.awr
  br i1 %i.aww, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit
end_hunk_0
