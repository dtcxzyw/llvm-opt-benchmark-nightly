inline.NumInlined: 6379
inline.NumDeleted: 1713
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
  %i.axo = add i64 %umax, -2
  %xtraiter = and i64 %i.axn, 3                   ; 3 uses
  %i.axp = icmp ult i64 %i.axo, 3
  %unroll_iter = and i64 %i.axn, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod3372 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp eq i32 %i.ave, 0
  %n.vec = and i64 %i.avg, -2                     ; 3 uses
  %broadcast.splatinsert3338 = insertelement <2 x float> poison, float %i.awg, i64 0
  %broadcast.splat3339 = shufflevector <2 x float> %broadcast.splatinsert3338, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert3340 = insertelement <2 x double> poison, double %i.awy, i64 0
  %broadcast.splat3341 = shufflevector <2 x double> %broadcast.splatinsert3340, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.avg
  br label %bb.on

bb.oi:                                            ; preds = %bb.ob
  %i.axq = landingpad { ptr, i32 }
          cleanup
  br label %bb.atk

bb.oj:                                            ; preds = %bb.oc
  %i.axr = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.ok:                                            ; preds = %bb.oe
  %i.axs = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.ol:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %bb.oh
  %i.axt = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.om:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275
  %i.axu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit1347

bb.on:                                            ; preds = %.lr.ph2584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1329
  %.05812583 = phi i32 [ 0, %.lr.ph2584 ], [ %i.bjj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1329 ] ; 7 uses
  %.sroa.02273.02582 = phi ptr [ null, %.lr.ph2584 ], [ %i.axw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1329 ] ; 4 uses
  %.sroa.13.02581 = phi ptr [ null, %.lr.ph2584 ], [ %i.axx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1329 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.axv = load ptr, ptr %64, align 16, !tbaa !80
  store i32 -2147483648, ptr %154, align 8, !tbaa !156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aww, i8 0, i64 28, i1 false)
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo9histogramERKNS0_8ImageBufEiiffbNS0_3ROIEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.128") align 8 %153, ptr noundef nonnull align 8 dereferenceable(16) %i.axv, i32 noundef %.05812583, i32 noundef %i.avf, float noundef 0.000000e+00, float noundef 1.000000e+00, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %154, i32 noundef %i.bq)
          to label %bb.oo unwind label %bb.oq

bb.oo:                                            ; preds = %bb.on
  %i.axw = load ptr, ptr %153, align 8, !tbaa !174 ; 13 uses
  %i.axx = load ptr, ptr %i.awx, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.02273.02582, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %153, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNSt6vectorImSaImEEaSEOS1_.exit

_ZNSt6vectorImSaImEEaSEOS1_.exit:                 ; preds = %bb.oo
  %i.axy = ptrtoint ptr %.sroa.13.02581 to i64
  %i.axz = ptrtoint ptr %.sroa.02273.02582 to i64
  %i.aya = sub i64 %i.axy, %i.axz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02273.02582, i64 noundef %i.aya) #31
  %.pr2438 = load ptr, ptr %153, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i1283 = icmp eq ptr %.pr2438, null
  br i1 %.not.i.i.i1283, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.op

bb.op:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit
  %i.ayb = load ptr, ptr %i.awx, align 8, !tbaa !177
  %i.ayc = ptrtoint ptr %i.ayb to i64
  %i.ayd = ptrtoint ptr %.pr2438 to i64
  %i.aye = sub i64 %i.ayc, %i.ayd
  call void @_ZdlPvm(ptr noundef nonnull %.pr2438, i64 noundef %i.aye) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.oo, %_ZNSt6vectorImSaImEEaSEOS1_.exit, %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br i1 %.not2590, label %.preheader2521, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %load_initial = load i64, ptr %i.axw, align 8   ; 2 uses
  br i1 %i.axp, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader2521.loopexit.unr-lcssa:                ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.preheader2521, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader2521.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph.preheader ], [ %i.bcl, %.preheader2521.loopexit.unr-lcssa ]
  %.05832578.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.bcm, %.preheader2521.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3372)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.ayh, %.lr.ph.epil ]
  %.05832578.epil = phi i64 [ %.05832578.epil.init, %.lr.ph.epil.preheader ], [ %i.ayi, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ayf = getelementptr [8 x i8], ptr %i.axw, i64 %.05832578.epil ; 2 uses
  %i.ayg = load i64, ptr %i.ayf, align 8, !tbaa !18
  %i.ayh = add i64 %i.ayg, %store_forwarded.epil  ; 2 uses
  store i64 %i.ayh, ptr %i.ayf, align 8, !tbaa !18
  %i.ayi = add nuw i64 %.05832578.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader2521, label %.lr.ph.epil, !llvm.loop !178

.preheader2521:                                   ; preds = %.preheader2521.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %i.axw, i64 %i.awq
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !18
  %i.ayl = uitofp i64 %i.ayk to float             ; 2 uses
  br i1 %min.iters.check, label %.noexc.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader2521
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.ayl, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %i.axw, i64 %index
  %wide.load = load <2 x i64>, ptr %i.aym, align 8, !tbaa !18
  %i.ayn = uitofp <2 x i64> %wide.load to <2 x float>
  %i.ayo = fdiv <2 x float> %i.ayn, %broadcast.splat
  %i.ayp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayo, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00))
  %i.ayq = fmul <2 x float> %broadcast.splat3339, %i.ayp ; 2 uses
  %i.ayr = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ayq) ; 2 uses
  %i.ays = fcmp ogt <2 x float> %i.ayr, splat (float f0x3F7FFFFF)
  %i.ayt = select <2 x i1> %i.ays, <2 x float> splat (float f0x3F7FFFFF), <2 x float> %i.ayr ; 2 uses
  %i.ayu = fsub <2 x float> splat (float 1.000000e+00), %i.ayt
  %i.ayv = fadd <2 x float> %i.ayt, splat (float 1.000000e+00)
  %i.ayw = fmul <2 x float> %i.ayu, %i.ayv        ; 2 uses
  %i.ayx = fcmp oge <2 x float> %i.ayw, splat (float f0x00800000)
  %i.ayy = select <2 x i1> %i.ayx, <2 x float> %i.ayw, <2 x float> splat (float f0x00800000) ; 2 uses
  %i.ayz = fcmp ogt <2 x float> %i.ayy, splat (float f0x7F7FFFFF)
  %i.aza = bitcast <2 x float> %i.ayy to <2 x i32>
  %i.azb = select <2 x i1> %i.ayz, <2 x i32> splat (i32 2139095039), <2 x i32> %i.aza ; 2 uses
  %i.azc = lshr <2 x i32> %i.azb, splat (i32 23)
  %i.azd = add nsw <2 x i32> %i.azc, splat (i32 -127)
  %i.aze = and <2 x i32> %i.azb, splat (i32 8388607)
  %i.azf = or disjoint <2 x i32> %i.aze, splat (i32 1065353216)
  %i.azg = bitcast <2 x i32> %i.azf to <2 x float>
  %i.azh = fadd <2 x float> %i.azg, splat (float -1.000000e+00) ; 9 uses
  %i.azi = fmul <2 x float> %i.azh, %i.azh        ; 2 uses
  %i.azj = fmul <2 x float> %i.azi, %i.azi
  %i.azk = fmul nnan contract <2 x float> %i.azh, splat (float f0x3C188B0D)
  %i.azl = fsub nnan contract <2 x float> splat (float f0x3D5541C9), %i.azk
  %i.azm = fmul nnan contract <2 x float> %i.azh, splat (float f0x3EF5162D)
  %i.azn = fadd nnan contract <2 x float> %i.azm, splat (float f0xBF389E54)
  %i.azo = fmul contract <2 x float> %i.azh, %i.azl
  %i.azp = fadd contract <2 x float> %i.azo, splat (float f0xBE0CD4FD)
  %i.azq = fmul contract <2 x float> %i.azh, %i.azp
  %i.azr = fadd contract <2 x float> %i.azq, splat (float f0x3E77ADBD)
  %i.azs = fmul contract <2 x float> %i.azh, %i.azr
  %i.azt = fadd contract <2 x float> %i.azs, splat (float f0xBEB1D206)
  %i.azu = fmul contract <2 x float> %i.azh, %i.azn
  %i.azv = fadd contract <2 x float> %i.azu, splat (float f0x3FB8AA10)
  %i.azw = fmul <2 x float> %i.azh, %i.azv
  %i.azx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azj, <2 x float> %i.azt, <2 x float> %i.azw)
  %i.azy = sitofp <2 x i32> %i.azd to <2 x float>
  %i.azz = fadd <2 x float> %i.azx, %i.azy
  %i.baa = fmul <2 x float> %i.azz, splat (float f0x3F317218) ; 3 uses
  %i.bab = fcmp ogt <2 x float> %i.baa, splat (float -5.000000e+00)
  %i.bac = fneg <2 x float> %i.baa
  %i.bad = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bac)
  %i.bae = fadd <2 x float> %i.bad, splat (float -3.000000e+00) ; 8 uses
  %i.baf = fmul contract <2 x float> %i.bae, splat (float f0x3951F09B)
  %i.bag = fsub contract <2 x float> splat (float f0x38D3B56B), %i.baf
  %i.bah = fmul contract <2 x float> %i.bae, %i.bag
  %i.bai = fadd contract <2 x float> %i.bah, splat (float f0x3AB0DC72)
  %i.baj = fmul contract <2 x float> %i.bae, %i.bai
  %i.bak = fadd contract <2 x float> %i.baj, splat (float f0xBB70BDE7)
  %i.bal = fmul contract <2 x float> %i.bae, %i.bak
  %i.bam = fadd contract <2 x float> %i.bal, splat (float f0x3BBC127B)
  %i.ban = fmul contract <2 x float> %i.bae, %i.bam
  %i.bao = fadd contract <2 x float> %i.ban, splat (float f0xBBF9C5D7)
  %i.bap = fmul contract <2 x float> %i.bae, %i.bao
  %i.baq = fadd contract <2 x float> %i.bap, splat (float f0x3C1AA57E)
  %i.bar = fmul contract <2 x float> %i.bae, %i.baq
  %i.bas = fadd contract <2 x float> %i.bar, splat (float f0x3F8036DB)
  %i.bat = fmul contract <2 x float> %i.bae, %i.bas
  %i.bau = fadd contract <2 x float> %i.bat, splat (float f0x40354F7E)
  %i.bav = fsub <2 x float> splat (float -2.500000e+00), %i.baa ; 8 uses
  %i.baw = fmul nnan contract <2 x float> %i.bav, splat (float f0x32F16588)
  %i.bax = fadd nnan contract <2 x float> %i.baw, splat (float f0x34B84B36)
  %i.bay = fmul contract <2 x float> %i.bav, %i.bax
  %i.baz = fadd contract <2 x float> %i.bay, splat (float f0xB66C7357)
  %i.bba = fmul contract <2 x float> %i.bav, %i.baz
  %i.bbb = fadd contract <2 x float> %i.bba, splat (float f0xB6935AC1)
  %i.bbc = fmul contract <2 x float> %i.bav, %i.bbb
  %i.bbd = fadd contract <2 x float> %i.bbc, splat (float f0x396532DB)
  %i.bbe = fmul contract <2 x float> %i.bav, %i.bbd
  %i.bbf = fadd contract <2 x float> %i.bbe, splat (float f0xBAA45408)
  %i.bbg = fmul contract <2 x float> %i.bav, %i.bbf
  %i.bbh = fadd contract <2 x float> %i.bbg, splat (float f0xBB88E4EF)
  %i.bbi = fmul contract <2 x float> %i.bav, %i.bbh
  %i.bbj = fadd contract <2 x float> %i.bbi, splat (float f0x3E7C8F63)
  %i.bbk = fmul contract <2 x float> %i.bav, %i.bbj
  %i.bbl = fadd contract <2 x float> %i.bbk, splat (float f0x3FC02E2F)
  %predphi = select <2 x i1> %i.bab, <2 x float> %i.bbl, <2 x float> %i.bau
  %i.bbm = fmul <2 x float> %i.ayq, %predphi
  %i.bbn = fpext <2 x float> %i.bbm to <2 x double>
  %i.bbo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat3341, <2 x double> %i.bbn, <2 x double> splat (double 5.000000e-01)) ; 2 uses
  %i.bbp = fptrunc <2 x double> %i.bbo to <2 x float>
  %i.bbq = fcmp ogt <2 x double> %i.bbo, splat (double f0x3690000000000000)
  %i.bbr = select <2 x i1> %i.bbq, <2 x float> %i.bbp, <2 x float> zeroinitializer ; 2 uses
  %i.bbs = fcmp olt <2 x float> %i.bbr, splat (float 1.000000e+00)
  %i.bbt = select <2 x i1> %i.bbs, <2 x float> %i.bbr, <2 x float> splat (float 1.000000e+00)
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %index
  store <2 x float> %i.bbt, ptr %i.bbu, align 4, !tbaa !172
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bbv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bbv, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.preheader2521, %middle.block
  %.05842579.ph = phi i64 [ 0, %.preheader2521 ], [ %n.vec, %middle.block ]
  br label %.noexc

bb.oq:                                            ; preds = %bb.on
  %i.bbw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br label %bb.po

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i64 [ %i.bcl, %.lr.ph ], [ %load_initial, %.lr.ph.preheader ]
  %.05832578 = phi i64 [ %i.bcm, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bbx = getelementptr [8 x i8], ptr %i.axw, i64 %.05832578 ; 2 uses
  %i.bby = load i64, ptr %i.bbx, align 8, !tbaa !18
  %i.bbz = add i64 %i.bby, %store_forwarded       ; 2 uses
  store i64 %i.bbz, ptr %i.bbx, align 8, !tbaa !18
  %i.bca = getelementptr [8 x i8], ptr %i.axw, i64 %.05832578
  %i.bcb = getelementptr i8, ptr %i.bca, i64 8    ; 2 uses
  %i.bcc = load i64, ptr %i.bcb, align 8, !tbaa !18
  %i.bcd = add i64 %i.bcc, %i.bbz                 ; 2 uses
  store i64 %i.bcd, ptr %i.bcb, align 8, !tbaa !18
  %i.bce = getelementptr [8 x i8], ptr %i.axw, i64 %.05832578
  %i.bcf = getelementptr i8, ptr %i.bce, i64 16   ; 2 uses
  %i.bcg = load i64, ptr %i.bcf, align 8, !tbaa !18
  %i.bch = add i64 %i.bcg, %i.bcd                 ; 2 uses
  store i64 %i.bch, ptr %i.bcf, align 8, !tbaa !18
  %i.bci = getelementptr [8 x i8], ptr %i.axw, i64 %.05832578
  %i.bcj = getelementptr i8, ptr %i.bci, i64 24   ; 2 uses
  %i.bck = load i64, ptr %i.bcj, align 8, !tbaa !18
  %i.bcl = add i64 %i.bck, %i.bch                 ; 3 uses
  store i64 %i.bcl, ptr %i.bcj, align 8, !tbaa !18
  %i.bcm = add nuw i64 %.05832578, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader2521.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !183

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.ox, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  store ptr %i.awz, ptr %157, align 8, !tbaa !16, !alias.scope !184
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %157, i64 noundef 1, i8 noundef signext 45)
          to label %._crit_edge.i.i1285 unwind label %bb.ot

._crit_edge.i.i1285:                              ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bcn = load ptr, ptr %157, align 8, !tbaa !19, !alias.scope !184 ; 2 uses
  %i.bco = icmp samesign ugt i32 %.05812583, 9    ; 2 uses
  br i1 %i.bco, label %bb.or, label %bb.os

bb.or:                                            ; preds = %._crit_edge.i.i1285
  %i.bcp = shl nuw nsw i32 %.05812583, 1
  %i.bcq = zext nneg i32 %i.bcp to i64
  %i.bcr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bcq ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 1
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !21, !noalias !184
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcn, i64 1
  store i8 %i.bct, ptr %i.bcu, align 1, !tbaa !21
  %i.bcv = load i8, ptr %i.bcr, align 2, !tbaa !21, !noalias !184
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.os:                                            ; preds = %._crit_edge.i.i1285
  %i.bcw = trunc nuw nsw i32 %.05812583 to i8
  %i.bcx = or disjoint i8 %i.bcw, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ot:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bcy = landingpad { ptr, i32 }
          catch ptr null
  %i.bcz = extractvalue { ptr, i32 } %i.bcy, 0
  call void @__clang_call_terminate(ptr %i.bcz) #35
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.or, %bb.os
  %storemerge.i.i = phi i8 [ %i.bcx, %bb.os ], [ %i.bcv, %bb.or ]
  store i8 %storemerge.i.i, ptr %i.bcn, align 1, !tbaa !21
  %i.bda = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %157, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.92, i64 noundef 7)
          to label %.noexc1288 unwind label %bb.pe ; 6 uses

.noexc1288:                                       ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.axa, ptr %156, align 8, !tbaa !16, !alias.scope !187
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !19 ; 2 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bda, i64 16 ; 5 uses
  %i.bdd = icmp eq ptr %i.bdb, %i.bdc
  br i1 %i.bdd, label %bb.ou, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1286

bb.ou:                                            ; preds = %.noexc1288
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bda, i64 8
  %i.bdf = load i64, ptr %i.bde, align 8, !tbaa !22 ; 3 uses
  %i.bdg = icmp ult i64 %i.bdf, 16
  call void @llvm.assume(i1 %i.bdg)
  %i.bdh = add nuw nsw i64 %i.bdf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.axa, ptr noundef nonnull align 8 dereferenceable(1) %i.bdc, i64 %i.bdh, i1 false)
  br label %bb.oy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1286: ; preds = %.noexc1288
  store ptr %i.bdb, ptr %156, align 8, !tbaa !19, !alias.scope !187
  %i.bdi = load i64, ptr %i.bdc, align 8, !tbaa !21
  store i64 %i.bdi, ptr %i.axa, align 8, !tbaa !21, !alias.scope !187
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bda, i64 8
  %.pre.i1287 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %bb.oy

.noexc:                                           ; preds = %.noexc.preheader, %bb.ox
  %.05842579 = phi i64 [ %i.bgo, %bb.ox ], [ %.05842579.ph, %.noexc.preheader ] ; 3 uses
  %i.bdj = getelementptr inbounds nuw [8 x i8], ptr %i.axw, i64 %.05842579
  %i.bdk = load i64, ptr %i.bdj, align 8, !tbaa !18
  %i.bdl = uitofp i64 %i.bdk to float
  %i.bdm = fdiv float %i.bdl, %i.ayl
  %i.bdn = call float @llvm.fmuladd.f32(float %i.bdm, float 2.000000e+00, float -1.000000e+00)
  %i.bdo = fmul float %i.awg, %i.bdn              ; 2 uses
  %i.bdp = call float @llvm.fabs.f32(float %i.bdo) ; 2 uses
  %i.bdq = fcmp ogt float %i.bdp, f0x3F7FFFFF
  %.041.i = select i1 %i.bdq, float f0x3F7FFFFF, float %i.bdp ; 2 uses
  %i.bdr = fsub float 1.000000e+00, %.041.i
  %i.bds = fadd float %.041.i, 1.000000e+00
  %i.bdt = fmul float %i.bdr, %i.bds              ; 2 uses
  %.inv2486 = fcmp oge float %i.bdt, f0x00800000
  %.0.i.i = select i1 %.inv2486, float %i.bdt, float f0x00800000 ; 2 uses
  %i.bdu = fcmp ogt float %.0.i.i, f0x7F7FFFFF
  %i.bdv = bitcast float %.0.i.i to i32
  %i.bdw = select i1 %i.bdu, i32 2139095039, i32 %i.bdv ; 2 uses
  %i.bdx = lshr i32 %i.bdw, 23
  %i.bdy = add nsw i32 %i.bdx, -127
  %i.bdz = and i32 %i.bdw, 8388607
  %i.bea = or disjoint i32 %i.bdz, 1065353216
  %i.beb = bitcast i32 %i.bea to float
  %i.bec = fadd float %i.beb, -1.000000e+00       ; 9 uses
  %i.bed = fmul float %i.bec, %i.bec              ; 2 uses
  %i.bee = fmul float %i.bed, %i.bed
  %i.bef = fmul nnan contract float %i.bec, f0x3C188B0D
  %i.beg = fsub nnan contract float f0x3D5541C9, %i.bef
  %i.beh = fmul nnan contract float %i.bec, f0x3EF5162D
  %i.bei = fadd nnan contract float %i.beh, f0xBF389E54
  %i.bej = fmul contract float %i.bec, %i.beg
  %i.bek = fadd contract float %i.bej, f0xBE0CD4FD
  %i.bel = fmul contract float %i.bec, %i.bek
  %i.bem = fadd contract float %i.bel, f0x3E77ADBD
  %i.ben = fmul contract float %i.bec, %i.bem
  %i.beo = fadd contract float %i.ben, f0xBEB1D206
  %i.bep = fmul contract float %i.bec, %i.bei
  %i.beq = fadd contract float %i.bep, f0x3FB8AA10
  %i.ber = fmul float %i.bec, %i.beq
  %i.bes = call float @llvm.fmuladd.f32(float %i.bee, float %i.beo, float %i.ber)
  %i.bet = sitofp i32 %i.bdy to float
  %i.beu = fadd float %i.bes, %i.bet
  %i.bev = fmul float %i.beu, f0x3F317218         ; 3 uses
  %i.bew = fcmp ogt float %i.bev, -5.000000e+00
  br i1 %i.bew, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %.noexc
  %i.bex = fsub float -2.500000e+00, %i.bev       ; 8 uses
  %i.bey = fmul nnan contract float %i.bex, f0x32F16588
  %i.bez = fadd nnan contract float %i.bey, f0x34B84B36
  %i.bfa = fmul contract float %i.bex, %i.bez
  %i.bfb = fadd contract float %i.bfa, f0xB66C7357
  %i.bfc = fmul contract float %i.bex, %i.bfb
  %i.bfd = fadd contract float %i.bfc, f0xB6935AC1
  %i.bfe = fmul contract float %i.bex, %i.bfd
  %i.bff = fadd contract float %i.bfe, f0x396532DB
  %i.bfg = fmul contract float %i.bex, %i.bff
  %i.bfh = fadd contract float %i.bfg, f0xBAA45408
  %i.bfi = fmul contract float %i.bex, %i.bfh
  %i.bfj = fadd contract float %i.bfi, f0xBB88E4EF
  %i.bfk = fmul contract float %i.bex, %i.bfj
  %i.bfl = fadd contract float %i.bfk, f0x3E7C8F63
  %i.bfm = fmul contract float %i.bex, %i.bfl
  %i.bfn = fadd contract float %i.bfm, f0x3FC02E2F
  br label %bb.ox

bb.ow:                                            ; preds = %.noexc
  %i.bfo = fneg float %i.bev
  %i.bfp = call float @llvm.sqrt.f32(float %i.bfo)
  %i.bfq = fadd float %i.bfp, -3.000000e+00       ; 8 uses
  %i.bfr = fmul contract float %i.bfq, f0x3951F09B
  %i.bfs = fsub contract float f0x38D3B56B, %i.bfr
  %i.bft = fmul contract float %i.bfq, %i.bfs
  %i.bfu = fadd contract float %i.bft, f0x3AB0DC72
  %i.bfv = fmul contract float %i.bfq, %i.bfu
  %i.bfw = fadd contract float %i.bfv, f0xBB70BDE7
  %i.bfx = fmul contract float %i.bfq, %i.bfw
  %i.bfy = fadd contract float %i.bfx, f0x3BBC127B
  %i.bfz = fmul contract float %i.bfq, %i.bfy
  %i.bga = fadd contract float %i.bfz, f0xBBF9C5D7
  %i.bgb = fmul contract float %i.bfq, %i.bga
  %i.bgc = fadd contract float %i.bgb, f0x3C1AA57E
  %i.bgd = fmul contract float %i.bfq, %i.bgc
  %i.bge = fadd contract float %i.bgd, f0x3F8036DB
  %i.bgf = fmul contract float %i.bfq, %i.bge
  %i.bgg = fadd contract float %i.bgf, f0x40354F7E
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  %.0.i = phi float [ %i.bfn, %bb.ov ], [ %i.bgg, %bb.ow ]
  %i.bgh = fmul float %i.bdo, %.0.i
  %i.bgi = fpext float %i.bgh to double
  %i.bgj = call double @llvm.fmuladd.f64(double %i.awy, double %i.bgi, double 5.000000e-01) ; 2 uses
  %i.bgk = fptrunc double %i.bgj to float
  %i.bgl = fcmp ogt double %i.bgj, f0x3690000000000000
  %.sroa.speculated2272 = select i1 %i.bgl, float %i.bgk, float 0.000000e+00 ; 2 uses
  %i.bgm = fcmp olt float %.sroa.speculated2272, 1.000000e+00
  %.sroa.speculated2269 = select i1 %i.bgm, float %.sroa.speculated2272, float 1.000000e+00
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %.05842579
  store float %.sroa.speculated2269, ptr %i.bgn, align 4, !tbaa !172
  %i.bgo = add nuw i64 %.05842579, 1              ; 2 uses
  %exitcond2628.not = icmp eq i64 %i.bgo, %i.avg
  br i1 %exitcond2628.not, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.noexc, !llvm.loop !190

bb.oy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1286, %bb.ou
  %i.bgp = phi i64 [ %i.bdf, %bb.ou ], [ %.pre.i1287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1286 ]
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bda, i64 8
  store i64 %i.bgp, ptr %i.axb, align 8, !tbaa !22, !alias.scope !187
  store ptr %i.bdc, ptr %i.bda, align 8, !tbaa !19
  store i64 0, ptr %i.bgq, align 8, !tbaa !22
  store i8 0, ptr %i.bdc, align 8, !tbaa !21
  %i.bgr = load ptr, ptr %156, align 8, !tbaa !19
  store ptr %i.bgr, ptr %155, align 8, !tbaa !7
  %i.bgs = load i64, ptr %i.axb, align 8, !tbaa !22
  store i64 %i.bgs, ptr %i.axc, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %155, i64 %.sroa.02261.0.insert.insert, ptr noundef nonnull %i.awo)
          to label %bb.oz unwind label %bb.pf

bb.oz:                                            ; preds = %bb.oy
  %i.bgt = load ptr, ptr %156, align 8, !tbaa !19 ; 2 uses
  %i.bgu = icmp eq ptr %i.bgt, %i.axa
  br i1 %i.bgu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1291: ; preds = %bb.oz
  %i.bgv = load i64, ptr %i.axa, align 8, !tbaa !21
  %i.bgw = add i64 %i.bgv, 1
  call void @_ZdlPvm(ptr noundef %i.bgt, i64 noundef %i.bgw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1293: ; preds = %bb.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1291
  %i.bgx = load ptr, ptr %157, align 8, !tbaa !19 ; 2 uses
  %i.bgy = icmp eq ptr %i.bgx, %i.awz
  br i1 %i.bgy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1293
  %i.bgz = load i64, ptr %i.awz, align 8, !tbaa !21
  %i.bha = add i64 %i.bgz, 1
  call void @_ZdlPvm(ptr noundef %i.bgx, i64 noundef %i.bha) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1294
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #30
  br label %bb.pg

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1300: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  store ptr %i.axj, ptr %160, align 8, !tbaa !16, !alias.scope !191
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %160, i64 noundef 1, i8 noundef signext 45)
          to label %._crit_edge.i.i1304 unwind label %bb.pc

._crit_edge.i.i1304:                              ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1300
  %i.bhb = load ptr, ptr %160, align 8, !tbaa !19, !alias.scope !191 ; 2 uses
  br i1 %i.bco, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %._crit_edge.i.i1304
  %i.bhc = shl nuw nsw i32 %.05812583, 1
  %i.bhd = zext nneg i32 %i.bhc to i64
  %i.bhe = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bhd ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 1
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !21, !noalias !191
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhb, i64 1
  store i8 %i.bhg, ptr %i.bhh, align 1, !tbaa !21
  %i.bhi = load i8, ptr %i.bhe, align 2, !tbaa !21, !noalias !191
  br label %_ZNSt7__cxx119to_stringEi.exit1311

bb.pb:                                            ; preds = %._crit_edge.i.i1304
  %i.bhj = trunc nuw nsw i32 %.05812583 to i8
  %i.bhk = or disjoint i8 %i.bhj, 48
  br label %_ZNSt7__cxx119to_stringEi.exit1311

bb.pc:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1300
  %i.bhl = landingpad { ptr, i32 }
          catch ptr null
  %i.bhm = extractvalue { ptr, i32 } %i.bhl, 0
  call void @__clang_call_terminate(ptr %i.bhm) #35
  unreachable

_ZNSt7__cxx119to_stringEi.exit1311:               ; preds = %bb.pa, %bb.pb
  %storemerge.i.i1306 = phi i8 [ %i.bhk, %bb.pb ], [ %i.bhi, %bb.pa ]
  store i8 %storemerge.i.i1306, ptr %i.bhb, align 1, !tbaa !21
  %i.bhn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %160, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.93, i64 noundef 4)
          to label %.noexc1315 unwind label %bb.pj ; 6 uses

.noexc1315:                                       ; preds = %_ZNSt7__cxx119to_stringEi.exit1311
  store ptr %i.axk, ptr %159, align 8, !tbaa !16, !alias.scope !194
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !19 ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhn, i64 16 ; 5 uses
  %i.bhq = icmp eq ptr %i.bho, %i.bhp
  br i1 %i.bhq, label %bb.pd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1312

bb.pd:                                            ; preds = %.noexc1315
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhn, i64 8
  %i.bhs = load i64, ptr %i.bhr, align 8, !tbaa !22 ; 3 uses
  %i.bht = icmp ult i64 %i.bhs, 16
  call void @llvm.assume(i1 %i.bht)
  %i.bhu = add nuw nsw i64 %i.bhs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.axk, ptr noundef nonnull align 8 dereferenceable(1) %i.bhp, i64 %i.bhu, i1 false)
  br label %bb.ph

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1312: ; preds = %.noexc1315
  store ptr %i.bho, ptr %159, align 8, !tbaa !19, !alias.scope !194
  %i.bhv = load i64, ptr %i.bhp, align 8, !tbaa !21
  store i64 %i.bhv, ptr %i.axk, align 8, !tbaa !21, !alias.scope !194
  %.phi.trans.insert.i1313 = getelementptr inbounds nuw i8, ptr %i.bhn, i64 8
  %.pre.i1314 = load i64, ptr %.phi.trans.insert.i1313, align 8, !tbaa !22
  br label %bb.ph

bb.pe:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.bhw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1319

bb.pf:                                            ; preds = %bb.oy
  %i.bhx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bhy = load ptr, ptr %156, align 8, !tbaa !19 ; 2 uses
  %i.bhz = icmp eq ptr %i.bhy, %i.axa
  br i1 %i.bhz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1317: ; preds = %bb.pf
  %i.bia = load i64, ptr %i.axa, align 8, !tbaa !21
  %i.bib = add i64 %i.bia, 1
  call void @_ZdlPvm(ptr noundef %i.bhy, i64 noundef %i.bib) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1319: ; preds = %bb.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1317, %bb.pe
  %.pn846 = phi { ptr, i32 } [ %i.bhw, %bb.pe ], [ %i.bhx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1317 ], [ %i.bhx, %bb.pf ]
  %i.bic = load ptr, ptr %157, align 8, !tbaa !19 ; 2 uses
  %i.bid = icmp eq ptr %i.bic, %i.awz
  br i1 %i.bid, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1319
  %i.bie = load i64, ptr %i.awz, align 8, !tbaa !21
  %i.bif = add i64 %i.bie, 1
  call void @_ZdlPvm(ptr noundef %i.bic, i64 noundef %i.bif) #31
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1320
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #30
  br label %.thread2439

bb.pg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit
  %.05862580 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296 ], [ %i.biw, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit ] ; 3 uses
  %i.big = uitofp i64 %.05862580 to float
  %i.bih = fdiv float %i.big, %i.axd
  br i1 %i.axi, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.pg, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i1323, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.axh, %bb.pg ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.awo, %bb.pg ] ; 2 uses
  %i.bii = lshr i64 %.016.i.i, 1                  ; 3 uses
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.015.i.i, i64 %i.bii ; 2 uses
  %i.bik = load float, ptr %i.bij, align 4, !tbaa !172
  %i.bil = fcmp olt float %i.bih, %i.bik          ; 2 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bij, i64 4
  %i.bin = xor i64 %i.bii, -1
  %i.bio = add nsw i64 %.016.i.i, %i.bin
  %.sroa.011.1.i.i = select i1 %i.bil, ptr %.sroa.011.015.i.i, ptr %i.bim ; 2 uses
  %.1.i.i1323 = select i1 %i.bil, i64 %i.bii, i64 %i.bio ; 2 uses
  %i.bip = icmp sgt i64 %.1.i.i1323, 0
  br i1 %i.bip, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit.loopexit, !llvm.loop !197

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre2680 = ptrtoint ptr %.sroa.011.1.i.i to i64
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit.loopexit, %bb.pg
  %.pre-phi2681 = phi i64 [ %.pre2680, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit.loopexit ], [ %i.axf, %bb.pg ]
  %i.biq = sub i64 %.pre-phi2681, %i.axf
  %i.bir = ashr exact i64 %i.biq, 2
  %i.bis = sitofp i64 %i.bir to float
  %i.bit = fdiv float %i.bis, %i.axd              ; 2 uses
  %.inv = fcmp oge float %i.bit, 0.000000e+00
  %.0.i906 = select i1 %.inv, float %i.bit, float 0.000000e+00 ; 2 uses
  %i.biu = fcmp ogt float %.0.i906, 1.000000e+00
  %.1.i = select i1 %i.biu, float 1.000000e+00, float %.0.i906
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.awt, i64 %.05862580
  store float %.1.i, ptr %i.biv, align 4, !tbaa !172
  %i.biw = add nuw i64 %.05862580, 1              ; 2 uses
  %exitcond2629.not = icmp eq i64 %i.biw, %i.avg
  br i1 %exitcond2629.not, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1300, label %bb.pg, !llvm.loop !198

bb.ph:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1312, %bb.pd
  %i.bix = phi i64 [ %i.bhs, %bb.pd ], [ %.pre.i1314, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1312 ]
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bhn, i64 8
  store i64 %i.bix, ptr %i.axl, align 8, !tbaa !22, !alias.scope !194
  store ptr %i.bhp, ptr %i.bhn, align 8, !tbaa !19
  store i64 0, ptr %i.biy, align 8, !tbaa !22
  store i8 0, ptr %i.bhp, align 8, !tbaa !21
  %i.biz = load ptr, ptr %159, align 8, !tbaa !19
  store ptr %i.biz, ptr %158, align 8, !tbaa !7
end_hunk_0
