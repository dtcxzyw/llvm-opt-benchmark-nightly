Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/degeneracy?download=true
inline.NumInlined: 1686
inline.NumDeleted: 654
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2cv4usac25FundamentalDegeneracyImpl22planeAndParallaxRANSACERKNS_4MatxIdLi3ELi3EEERSt6vectorIiSaIiEEiibRKNS0_5ScoreEiRNS_3MatERSA_:bb.a
  store ptr %24, ptr %i.km, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %.noexc161
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body162

bb.al:                                            ; preds = %.noexc161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.lc = load ptr, ptr %i.la, align 8, !tbaa !51
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.le(ptr noundef nonnull align 8 dereferenceable(8) %i.la, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.am unwind label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.lg = load ptr, ptr %i.kz, align 8, !tbaa !51
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 72
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = invoke i64 %i.li(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %bb.an unwind label %bb.at     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0.extract.shift = lshr i64 %i.lj, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.lk = bitcast i32 %.sroa.5.0.extract.trunc to float
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.ll = load float, ptr %.sroa_idx184, align 4, !tbaa !126
  %i.lm = fcmp ogt float %i.ll, %i.lk
  br i1 %i.lm, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an
  store i64 %i.lj, ptr %9, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %25, align 16, !tbaa !31
  store i32 153, ptr %i.ko, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kp, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.kq, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc165 unwind label %bb.au

.noexc165:                                        ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.kr, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0181.0317, i64 noundef 0)
          to label %.noexc166 unwind label %bb.au

.noexc166:                                        ; preds = %.noexc165
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i64 0, ptr %i.kt, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !29
  store ptr %25, ptr %i.ks, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %.noexc166
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body167

bb.aq:                                            ; preds = %.noexc166
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.lo = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %25)
          to label %bb.ar unwind label %bb.av     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.aw

bb.as:                                            ; preds = %.noexc160, %bb.aj
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %.body162

bb.at:                                            ; preds = %bb.am, %bb.al
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #19
  br label %.body162

.body162:                                         ; preds = %bb.as, %bb.ak, %bb.at
  %.pn = phi { ptr, i32 } [ %i.lq, %bb.at ], [ %i.lp, %bb.as ], [ %i.lb, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.bc

bb.au:                                            ; preds = %.noexc165, %bb.ao
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %.body167

bb.av:                                            ; preds = %bb.aq
  %i.ls = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  br label %.body167

.body167:                                         ; preds = %bb.au, %bb.ap, %bb.av
  %.pn125 = phi { ptr, i32 } [ %i.ls, %bb.av ], [ %i.lr, %bb.au ], [ %i.ln, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.bc

bb.aw:                                            ; preds = %bb.ar, %bb.an
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0181.0317, i64 72 ; 2 uses
  %.not226 = icmp eq ptr %i.lt, %.sroa.12.2
  br i1 %.not226, label %._crit_edge320.loopexit, label %bb.aj

bb.ax:                                            ; preds = %._crit_edge320
  %i.lu = load i32, ptr %i.b, align 4, !tbaa !166
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 1276
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !167
  %i.lx = icmp slt i32 %i.lu, %i.lw
  br i1 %i.lx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 1268
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !173
  %i.mb = sitofp i32 %i.ma to double
  %i.mc = fmul nnan double %i.mb, 1.000000e-01
  %i.md = fptosi double %i.mc to i32
  %i.me = load i32, ptr %i.ly, align 8, !tbaa !31
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.me, i32 %i.md)
  br label %_ZNK2cv4usac25FundamentalDegeneracyImpl13isFDegenerateEi.exit

bb.az:                                            ; preds = %bb.ax
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !178
  br label %_ZNK2cv4usac25FundamentalDegeneracyImpl13isFDegenerateEi.exit

_ZNK2cv4usac25FundamentalDegeneracyImpl13isFDegenerateEi.exit: ; preds = %bb.ay, %bb.az
  %.pn.i = phi i32 [ %.sroa.speculated.i, %bb.ay ], [ %i.mg, %bb.az ]
  %.0.i = icmp sge i32 %.0115.lcssa376, %.pn.i
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK2cv4usac25FundamentalDegeneracyImpl13isFDegenerateEi.exit, %._crit_edge320
  %.0 = phi i1 [ true, %._crit_edge320 ], [ %.0.i, %_ZNK2cv4usac25FundamentalDegeneracyImpl13isFDegenerateEi.exit ] ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %.sroa.0209.0.lcssa373, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mh = ptrtoint ptr %.sroa.23.0.lcssa370 to i64
  %i.mi = ptrtoint ptr %.sroa.0209.0.lcssa373 to i64
  %i.mj = sub i64 %i.mh, %i.mi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0209.0.lcssa373, i64 noundef %i.mj) #21
  br label %_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit

bb.bc:                                            ; preds = %.body162, %.body167, %bb.ai
  %.sroa.23.0287 = phi ptr [ %.sroa.23.0303335, %bb.ai ], [ %.sroa.23.2, %.body162 ], [ %.sroa.23.2, %.body167 ]
  %.sroa.0209.0257 = phi ptr [ %.sroa.0209.0305, %bb.ai ], [ %.sroa.0209.2, %.body162 ], [ %.sroa.0209.2, %.body167 ] ; 3 uses
  %.pn141.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn, %bb.ai ], [ %.pn, %.body162 ], [ %.pn125, %.body167 ]
  %.not.i.i.i171 = icmp eq ptr %.sroa.0209.0257, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit172, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mk = ptrtoint ptr %.sroa.23.0287 to i64
  %i.ml = ptrtoint ptr %.sroa.0209.0257 to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0209.0257, i64 noundef %i.mm) #21
  br label %_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit172

_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit172: ; preds = %bb.bc, %bb.bd
  resume { ptr, i32 } %.pn141.pn.pn

_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit: ; preds = %bb.bb, %bb.ba, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.0, %bb.ba ], [ %.0, %bb.bb ]
  ret i1 %.1
}

declare void @_ZN2cv4usac5Utils14getLeftEpipoleERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::Vec") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv4usac4Math16getSkewSymmetricERKNS_3VecIdLi3EEE(ptr dead_on_unwind writable sret(%"class.cv::Matx") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv4usac25FundamentalDegeneracyImpl4getHERKNS_4MatxIdLi3ELi3EEERKNS_3VecIdLi3EEEiiiRS3_(ptr noundef nonnull align 8 dereferenceable(2018) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = sext i32 %4 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  %i.g = sext i32 %5 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g
  %i.i = load <4 x float>, ptr %i.d, align 4, !tbaa !74 ; 8 uses
  %i.j = load <4 x float>, ptr %i.f, align 4, !tbaa !74 ; 6 uses
  %i.k = load <4 x float>, ptr %i.h, align 4, !tbaa !74 ; 6 uses
  %i.l = shufflevector <4 x float> %i.i, <4 x float> %i.j, <2 x i32> <i32 1, i32 4>
  %i.m = fpext <2 x float> %i.l to <2 x double>   ; 8 uses
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.i, <2 x i32> <i32 1, i32 4>
  %i.o = fpext <2 x float> %i.n to <2 x double>   ; 8 uses
  %i.p = shufflevector <4 x float> %i.i, <4 x float> %i.k, <2 x i32> <i32 1, i32 4>
  %i.q = fpext <2 x float> %i.p to <2 x double>   ; 7 uses
  %i.r = shufflevector <4 x float> %i.k, <4 x float> %i.i, <2 x i32> <i32 1, i32 4>
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 7 uses
  %i.t = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.i, <3 x i32> <i32 0, i32 1, i32 6>
  %i.v = fpext <3 x float> %i.u to <3 x double>   ; 9 uses
  %i.w = shufflevector <4 x float> %i.k, <4 x float> %i.j, <3 x i32> <i32 3, i32 7, i32 poison>
  %i.x = shufflevector <4 x float> %i.i, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.y = shufflevector <3 x float> %i.w, <3 x float> %i.x, <3 x i32> <i32 0, i32 1, i32 5>
  %i.z = fpext <3 x float> %i.y to <3 x double>   ; 9 uses
  %i.aa = fsub <2 x double> %i.m, %i.o            ; 3 uses
  %i.ab = shufflevector <3 x double> %i.z, <3 x double> %i.v, <2 x i32> <i32 2, i32 4>
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> %i.v, <2 x i32> <i32 1, i32 5>
  %i.ad = fsub <2 x double> %i.ab, %i.ac          ; 2 uses
  %i.ae = shufflevector <2 x double> %i.m, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 0> ; 3 uses
  %i.af = shufflevector <3 x double> %i.ae, <3 x double> %i.v, <2 x i32> <i32 1, i32 4>
  %i.ag = fneg <2 x double> %i.af
  %i.ah = shufflevector <3 x double> %i.ae, <3 x double> %i.z, <2 x i32> <i32 0, i32 5>
  %i.ai = fmul <2 x double> %i.ah, %i.ag          ; 2 uses
  %i.aj = shufflevector <2 x double> %i.aa, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ak = shufflevector <3 x double> %i.aj, <3 x double> %i.v, <2 x i32> <i32 1, i32 5>
  %i.al = shufflevector <2 x double> %i.s, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.am = shufflevector <3 x double> %i.al, <3 x double> %i.z, <2 x i32> <i32 0, i32 4>
  %i.an = shufflevector <2 x double> %i.aa, <2 x double> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.ao = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ap = shufflevector <3 x double> %i.ao, <3 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.ap, <2 x double> zeroinitializer) ; 2 uses
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.am, <2 x double> %i.ar)
  %i.at = shufflevector <2 x double> %i.o, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.au = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.av = shufflevector <3 x double> %i.au, <3 x double> %i.z, <2 x i32> <i32 0, i32 3>
  %i.aw = shufflevector <2 x double> %i.ai, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3>
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.av, <2 x double> %i.aw) ; 2 uses
  %i.ay = fadd <2 x double> %i.as, %i.ax          ; 2 uses
  %shift = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ay, %shift
  %i.az = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ba = fcmp uge double %i.az, 0.000000e+00     ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.bb = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.i, <3 x i32> <i32 0, i32 1, i32 5>
  %i.bd = fpext <3 x float> %i.bc to <3 x double>
  %i.be = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> %i.i, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bg = fpext <3 x float> %i.bf to <3 x double>
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !25, !noalias !461 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load <2 x double>, ptr %2, align 8, !tbaa !25, !noalias !461 ; 6 uses
  %i.bl = fneg <2 x double> %i.bk                 ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bj, align 8, !tbaa !25, !noalias !462 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = load <2 x double>, ptr %i.bn, align 8, !tbaa !25, !noalias !462 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !25, !noalias !462 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bs = load double, ptr %i.br, align 8, !tbaa !25, !noalias !462 ; 2 uses
  %i.bt = insertelement <3 x double> poison, double %i.bi, i64 0
  %i.bu = shufflevector <3 x double> %i.bt, <3 x double> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bl, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.bw = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.z, <3 x double> %i.bu, <3 x double> %i.bv) ; 3 uses
  %i.bx = fmul <3 x double> %i.bu, %i.v
  %i.by = shufflevector <2 x double> %i.bk, <2 x double> poison, <3 x i32> zeroinitializer
  %i.bz = fsub <3 x double> %i.by, %i.bx          ; 3 uses
  %i.ca = shufflevector <2 x double> %i.bl, <2 x double> poison, <3 x i32> zeroinitializer
  %i.cb = fmul <3 x double> %i.ca, %i.z
  %i.cc = shufflevector <2 x double> %i.bk, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cd = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.cc, <3 x double> %i.cb) ; 3 uses
  %i.ce = load <2 x double>, ptr %1, align 8, !tbaa !25, !noalias !462 ; 3 uses
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <3 x i32> zeroinitializer
  %i.cg = shufflevector <2 x double> %i.q, <2 x double> %i.m, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.ch = shufflevector <3 x double> %i.cg, <3 x double> %i.au, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.ci = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.cf, <3 x double> %i.ch, <3 x double> zeroinitializer)
  %i.cj = shufflevector <2 x double> %i.ce, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ck = shufflevector <2 x double> %i.s, <2 x double> %i.o, <3 x i32> <i32 0, i32 2, i32 poison> ; 2 uses
  %i.cl = shufflevector <3 x double> %i.ck, <3 x double> %i.ae, <3 x i32> <i32 0, i32 1, i32 5>
  %i.cm = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.cj, <3 x double> %i.cl, <3 x double> %i.ci)
  %i.cn = shufflevector <2 x double> %i.bm, <2 x double> poison, <3 x i32> zeroinitializer
  %i.co = fadd <3 x double> %i.cn, %i.cm          ; 2 uses
  %i.cp = shufflevector <2 x double> %i.bm, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cq = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.cp, <3 x double> %i.bg, <3 x double> zeroinitializer)
  %i.cr = shufflevector <2 x double> %i.bo, <2 x double> poison, <3 x i32> zeroinitializer
  %i.cs = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.cr, <3 x double> %i.bd, <3 x double> %i.cq)
  %i.ct = shufflevector <2 x double> %i.bo, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cu = fadd <3 x double> %i.ct, %i.cs          ; 2 uses
  %i.cv = shufflevector <2 x double> %i.bq, <2 x double> poison, <3 x i32> zeroinitializer
  %i.cw = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.cv, <3 x double> %i.ch, <3 x double> zeroinitializer)
  %i.cx = shufflevector <2 x double> %i.bq, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %7 = shufflevector <2 x double> %i.m, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %8 = shufflevector <3 x double> %i.ck, <3 x double> %7, <3 x i32> <i32 0, i32 1, i32 3>
  %i.cy = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.cx, <3 x double> %8, <3 x double> %i.cw)
  %i.cz = insertelement <3 x double> poison, double %i.bs, i64 0
  %i.da = shufflevector <3 x double> %i.cz, <3 x double> poison, <3 x i32> zeroinitializer
  %i.db = fadd <3 x double> %i.da, %i.cy          ; 2 uses
  %i.dc = fneg <3 x double> %i.cu
  %i.dd = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.z, <3 x double> %i.db, <3 x double> %i.dc)
  %i.de = fmul <3 x double> %i.db, %i.v
  %i.df = fsub <3 x double> %i.co, %i.de
  %i.dg = fneg <3 x double> %i.co
  %i.dh = fmul <3 x double> %i.z, %i.dg
  %i.di = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.cu, <3 x double> %i.dh)
  %i.dj = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.dd, <3 x double> %i.bw, <3 x double> zeroinitializer)
  %i.dk = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.df, <3 x double> %i.bz, <3 x double> %i.dj)
  %i.dl = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.di, <3 x double> %i.cd, <3 x double> %i.dk)
  %i.dm = fmul <3 x double> %i.bz, %i.bz
  %i.dn = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.bw, <3 x double> %i.bw, <3 x double> %i.dm)
  %i.do = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.cd, <3 x double> %i.cd, <3 x double> %i.dn)
  %i.dp = fdiv <3 x double> %i.dl, %i.do          ; 6 uses
  %foldExtExtBinop219 = fsub <2 x double> %i.o, %i.s ; 2 uses
  %i.dq = extractelement <2 x double> %i.m, i64 1 ; 2 uses
  %i.dr = extractelement <2 x double> %i.q, i64 1 ; 2 uses
  %i.ds = fsub double %i.dq, %i.dr
  %i.dt = insertelement <2 x double> %i.o, double %i.ds, i64 1
  %i.du = fneg <2 x double> %i.dt
  %i.dv = shufflevector <2 x double> %i.q, <2 x double> %i.m, <2 x i32> <i32 1, i32 2>
  %i.dw = fmul <2 x double> %i.dv, %i.du
  %i.dx = shufflevector <2 x double> %i.m, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.dy = shufflevector <2 x double> %i.s, <2 x double> %foldExtExtBinop219, <2 x i32> <i32 0, i32 2>
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dy, <2 x double> %i.dw)
  %i.ea = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.dz) ; 2 uses
  %i.eb = fcmp une double %i.ea, 0.000000e+00
  br i1 %i.eb, label %bb.c, label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit

bb.c:                                             ; preds = %bb.b
  %i.ec = fdiv double 1.000000e+00, %i.ea         ; 2 uses
  %i.ed = fsub <2 x double> %i.s, %i.q
  %i.ee = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = fsub double %i.dr, %i.dq
  %i.eg = insertelement <2 x double> %foldExtExtBinop219, double %i.ef, i64 1
  %i.eh = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  %i.ek = fmul <2 x double> %i.ed, %i.ei
  %i.el = fmul <2 x double> %i.aa, %i.ei
  %i.em = shufflevector <2 x double> %i.q, <2 x double> %i.s, <2 x i32> <i32 1, i32 2>
  %i.en = fneg <2 x double> %i.em
  %i.eo = fmul <2 x double> %i.o, %i.en
  %i.ep = shufflevector <2 x double> %i.s, <2 x double> %i.q, <2 x i32> <i32 0, i32 3>
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.ep, <2 x double> %i.eo)
  %i.er = fmul <2 x double> %i.eq, %i.ei
  %i.es = extractelement <2 x double> %i.ax, i64 0
  %i.et = fmul double %i.es, %i.ec
  br label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit

_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit:             ; preds = %bb.b, %bb.c
  %.sroa.12.0 = phi double [ %i.et, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.eu = phi <2 x double> [ %i.el, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.ev = phi <2 x double> [ %i.ek, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.ew = phi <2 x double> [ %i.ej, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.ex = phi <2 x double> [ %i.er, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.ey = shufflevector <3 x double> %i.dp, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ey, <2 x double> zeroinitializer)
  %i.fa = extractelement <3 x double> %i.dp, i64 2
  %i.fb = extractelement <3 x double> %i.dp, i64 1
  %i.fc = extractelement <3 x double> %i.dp, i64 0
  %i.fd = shufflevector <3 x double> %i.dp, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %i.fd, <2 x double> %i.ez)
  %i.ff = shufflevector <3 x double> %i.dp, <3 x double> poison, <2 x i32> zeroinitializer
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ff, <2 x double> %i.fe) ; 3 uses
  %i.fh = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fg, <2 x double> zeroinitializer)
  %i.fj = fsub <2 x double> %i.ce, %i.fi
  store <2 x double> %i.fj, ptr %6, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fk = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fl = extractelement <2 x double> %i.ex, i64 0
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fa, double 0.000000e+00)
  %i.fn = extractelement <2 x double> %i.ex, i64 1
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fb, double %i.fm)
  %i.fp = tail call double @llvm.fmuladd.f64(double %.sroa.12.0, double %i.fc, double %i.fo) ; 3 uses
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.fp, double 0.000000e+00)
  %i.fr = fsub double %i.bs, %i.fq
  %i.fs = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = insertelement <2 x double> %i.fk, double %i.fp, i64 1
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.ft, <2 x double> zeroinitializer)
  %i.fv = fsub <2 x double> %i.bo, %i.fu
  %i.fw = insertelement <2 x double> %i.fk, double %i.fp, i64 0
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.fw, <2 x double> zeroinitializer)
  %i.fy = fsub <2 x double> %i.bm, %i.fx
  store <2 x double> %i.fy, ptr %.sroa.547.0..sroa_idx, align 8
  store <2 x double> %i.fv, ptr %.sroa.749.0..sroa_idx, align 8
  %.sroa.951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.fz = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.fg, <2 x double> zeroinitializer)
  %i.gc = fsub <2 x double> %i.bq, %i.gb
  store <2 x double> %i.gc, ptr %.sroa.951.0..sroa_idx, align 8
  %.sroa.1153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store double %i.fr, ptr %.sroa.1153.0..sroa_idx, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit
  ret i1 %i.ba
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv4usac25FundamentalDegeneracyImpl9optimizeHERNS_3MatERNS0_5ScoreE(ptr noundef nonnull align 8 dereferenceable(2018) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !164  ; 2 uses
  %.not = icmp sgt i32 %i.g, %i.k
  %i.l = sitofp i32 %i.g to double
  %i.m = fmul nnan double %i.l, 8.000000e-01
  %i.n = fptosi double %i.m to i32
  %i.o = select i1 %.not, i32 %i.k, i32 %i.n
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.o)
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !177  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1252 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !165
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.028 = phi i32 [ %i.g, %.lr.ph ], [ %.3, %bb.h ] ; 4 uses
  %.01627 = phi i32 [ 0, %.lr.ph ], [ %i.by, %bb.h ]
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !170 ; 2 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !177 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef nonnull align 8 dereferenceable(24) ptr %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %.028)
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !177 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i32 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !121
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(208) %i.ay) ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.bc to i32 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.bc, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %i.bd = bitcast i32 %.sroa.6.0.extract.trunc to float
  %i.be = load float, ptr %i.ae, align 4, !tbaa !126
  %i.bf = fcmp ogt float %i.be, %i.bd
  br i1 %i.bf, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 0, ptr %i.ag, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !29
  store ptr %1, ptr %i.af, align 8, !tbaa !30
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bh = load i32, ptr %2, align 4, !tbaa !185
  %i.bi = icmp slt i32 %i.bh, %.sroa.0.0.extract.trunc
  br i1 %i.bi, label %bb.f, label %bb.e

end_hunk_0
