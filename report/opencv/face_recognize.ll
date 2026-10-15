Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/face_recognize?download=true
inline.NumInlined: 349
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK2cv20FaceRecognizerSFImpl28getSimilarityTransformMatrixEPA2_f:.preheader299
  br i1 %.not1.i.i.i237, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239.thread437, label %bb.aw

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239.thread437: ; preds = %bb.av
  store double %.sroa.749.0, ptr %i.io, align 8, !tbaa !51
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store ptr %i.il, ptr %i.ic, align 8, !tbaa !110
  invoke void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %31, i64 noundef 1, i1 noundef zeroext true)
          to label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239 unwind label %bb.bd

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239: ; preds = %bb.aw
  %.pr288.pre = load ptr, ptr %31, align 8, !tbaa !54 ; 2 uses
  %.pre378 = load ptr, ptr %i.ic, align 8, !tbaa !110 ; 2 uses
  store double %.sroa.749.0, ptr %.pre378, align 8, !tbaa !51
  %.not.i.i.i240 = icmp eq ptr %.pr288.pre, null
  br i1 %.not.i.i.i240, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243, label %bb.ax

bb.ax:                                            ; preds = %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239.thread437, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239
  %.pr288440 = phi ptr [ %i.im, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239.thread437 ], [ %.pr288.pre, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239 ]
  %i.iq = phi ptr [ %i.io, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239.thread437 ], [ %.pre378, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239 ] ; 2 uses
  %i.ir = load i64, ptr %i.hz, align 8, !tbaa !55
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ir ; 2 uses
  store ptr %i.is, ptr %i.ic, align 8, !tbaa !110
  %i.it = load ptr, ptr %i.if, align 8, !tbaa !56
  %.not1.i.i.i241 = icmp ult ptr %i.is, %i.it
  br i1 %.not1.i.i.i241, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.iq, ptr %i.ic, align 8, !tbaa !110
  invoke void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %31, i64 noundef 1, i1 noundef zeroext true)
          to label %._ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243_crit_edge unwind label %bb.bd

._ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243_crit_edge: ; preds = %bb.ay
  %.pre379 = load ptr, ptr %31, align 8, !tbaa !54, !noalias !125
  br label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243: ; preds = %._ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243_crit_edge, %bb.ax, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239.thread
  %i.iu = phi ptr [ %.pre379, %._ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243_crit_edge ], [ %.pr288440, %bb.ax ], [ null, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239 ], [ null, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit239.thread ]
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %30) #22
  %i.iv = load i32, ptr %30, align 8, !tbaa !57, !alias.scope !125
  %i.iw = and i32 %i.iv, -4096
  %i.ix = or disjoint i32 %i.iw, 6
  store i32 %i.ix, ptr %30, align 8, !tbaa !57, !alias.scope !125
  %i.iy = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(208) %i.iu)
          to label %_ZNK2cv20MatCommaInitializer_IdEcvNS_4Mat_IdEEEv.exit246 unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #22
  br label %.body244

_ZNK2cv20MatCommaInitializer_IdEcvNS_4Mat_IdEEEv.exit246: ; preds = %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit243
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %30) #22
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #22
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %34, ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.ba unwind label %bb.bf

bb.ba:                                            ; preds = %_ZNK2cv20MatCommaInitializer_IdEcvNS_4Mat_IdEEEv.exit246
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %33) #22
  %i.ja = load ptr, ptr %34, align 8, !tbaa !118, !noalias !126 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !13
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  invoke void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, ptr noundef nonnull align 8 dereferenceable(688) %34, ptr noundef nonnull align 8 dereferenceable(208) %33, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit249 unwind label %.body247

.body247:                                         ; preds = %bb.ba
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %34) #22
  br label %bb.bg

_ZNK2cv7MatExprcvNS_3MatEEv.exit249:              ; preds = %bb.ba
  %i.jf = getelementptr inbounds nuw i8, ptr %34, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jf) #22
  %i.jg = getelementptr inbounds nuw i8, ptr %34, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jg) #22
  %i.jh = getelementptr inbounds nuw i8, ptr %34, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %36, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %33)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit249
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %35) #22
  %i.ji = load ptr, ptr %36, align 8, !tbaa !118, !noalias !127 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  invoke void %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull align 8 dereferenceable(688) %36, ptr noundef nonnull align 8 dereferenceable(208) %35, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit252 unwind label %.body250

.body250:                                         ; preds = %bb.bb
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %36) #22
  br label %bb.bi

_ZNK2cv7MatExprcvNS_3MatEEv.exit252:              ; preds = %bb.bb
  %i.jn = getelementptr inbounds nuw i8, ptr %36, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jn) #22
  %i.jo = getelementptr inbounds nuw i8, ptr %36, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jo) #22
  %i.jp = getelementptr inbounds nuw i8, ptr %36, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jp) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %i.jq = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !44 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %35, i64 128
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !34
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jt
  %i.jv = load <2 x double>, ptr %i.jr, align 8, !tbaa !51 ; 2 uses
  %i.jw = load <2 x double>, ptr %i.ju, align 8, !tbaa !51 ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.jx = shufflevector <2 x double> %i.jv, <2 x double> %i.jw, <2 x i32> <i32 0, i32 2>
  %i.jy = shufflevector <2 x double> %i.jv, <2 x double> %i.jw, <2 x i32> <i32 1, i32 3>
  br label %bb.bl

bb.bc:                                            ; preds = %bb.ap
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.ay, %bb.aw, %bb.au, %bb.ar, %_ZN2cv4Mat_IdEC2Eii.exit224
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body244

.body244:                                         ; preds = %bb.az, %bb.bd
  %eh.lpad-body245 = phi { ptr, i32 } [ %i.ka, %bb.bd ], [ %i.iz, %bb.az ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #22
  br label %bb.be

bb.be:                                            ; preds = %.body244, %bb.bc
  %.pn159 = phi { ptr, i32 } [ %eh.lpad-body245, %.body244 ], [ %i.jz, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.bk

bb.bf:                                            ; preds = %_ZNK2cv20MatCommaInitializer_IdEcvNS_4Mat_IdEEEv.exit246
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.body247, %bb.bf
  %.pn161 = phi { ptr, i32 } [ %i.je, %.body247 ], [ %i.kb, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %bb.bj

bb.bh:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit249
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.body250, %bb.bh
  %.pn163 = phi { ptr, i32 } [ %i.jm, %.body250 ], [ %i.kc, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %.pn163.pn = phi { ptr, i32 } [ %.pn163, %bb.bi ], [ %.pn161, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.be
  %.pn163.pn.pn = phi { ptr, i32 } [ %.pn163.pn, %bb.bj ], [ %.pn159, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.cd

bb.bl:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit, %_ZNK2cv7MatExprcvNS_3MatEEv.exit222, %_ZNK2cv7MatExprcvNS_3MatEEv.exit252
  %i.kd = phi <2 x double> [ %i.ey, %_ZNK2cv7MatExprcvNS_3MatEEv.exit ], [ %i.hj, %_ZNK2cv7MatExprcvNS_3MatEEv.exit222 ], [ %i.jx, %_ZNK2cv7MatExprcvNS_3MatEEv.exit252 ] ; 3 uses
  %i.ke = phi <2 x double> [ %i.ez, %_ZNK2cv7MatExprcvNS_3MatEEv.exit ], [ %i.hk, %_ZNK2cv7MatExprcvNS_3MatEEv.exit222 ], [ %i.jy, %_ZNK2cv7MatExprcvNS_3MatEEv.exit252 ] ; 3 uses
  %i.kf = fmul <2 x float> %i.o, %i.o
  %i.kg = fmul <2 x float> %i.p, %i.p
  %i.kh = fmul <2 x float> %i.q, %i.q
  %i.ki = fmul <2 x float> %i.r, %i.r
  %i.kj = fmul <2 x float> %i.s, %i.s
  %i.kk = fpext <2 x float> %i.kf to <2 x double>
  %i.kl = fpext <2 x float> %i.kg to <2 x double>
  %i.km = fadd <2 x double> %i.kk, %i.kl
  %i.kn = fpext <2 x float> %i.kh to <2 x double>
  %i.ko = fadd <2 x double> %i.km, %i.kn
  %i.kp = fpext <2 x float> %i.ki to <2 x double>
  %i.kq = fadd <2 x double> %i.ko, %i.kp
  %i.kr = fpext <2 x float> %i.kj to <2 x double>
  %i.ks = fadd <2 x double> %i.kq, %i.kr
  %i.kt = fdiv <2 x double> %i.ks, splat (double 5.000000e+00) ; 2 uses
  %shift460 = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop461 = fadd <2 x double> %i.kt, %shift460
  %i.ku = extractelement <2 x double> %foldExtExtBinop461, i64 0
  %i.kv = fdiv double 1.000000e+00, %i.ku
  %i.kw = load ptr, ptr %i.cx, align 8, !tbaa !44 ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !51
  %i.ky = load i64, ptr %i.cz, align 8, !tbaa !34
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !51
  %i.lb = fmul double %.sroa.749.0, %i.la
  %i.lc = fadd double %i.kx, %i.lb
  %i.ld = fmul double %i.kv, %i.lc                ; 5 uses
  %i.le = fpext <2 x float> %i.n to <2 x double>  ; 2 uses
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lg = fmul <2 x double> %i.ke, %i.lf
  %i.lh = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.lh, <2 x double> %i.lg)
  %i.lj = fneg double %i.ld
  %i.lk = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ll, <2 x double> %i.li, <2 x double> <double f0x404C035A80000000, double f0x4051F9A6C0000000>) ; 7 uses
  %i.ln = extractelement <2 x double> %i.ke, i64 0
  %i.lo = fmul double %i.ln, %i.ld
  %i.lp = extractelement <2 x double> %i.kd, i64 1
  %i.lq = fmul double %i.lp, %i.ld                ; 3 uses
  %i.lr = extractelement <2 x double> %i.ke, i64 1
  %i.ls = fmul double %i.lr, %i.ld                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %39, i32 noundef 2, i32 noundef 3, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit254 unwind label %bb.ca

_ZN2cv4Mat_IdEC2Eii.exit254:                      ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !128
  invoke void @_ZN2cv16MatConstIteratorC2EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(208) %39)
          to label %.noexc259 unwind label %bb.cb

.noexc259:                                        ; preds = %_ZN2cv4Mat_IdEC2Eii.exit254
  %i.lt = extractelement <2 x double> %i.kd, i64 0
  %i.lu = fmul double %i.lt, %i.ld
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !110, !noalias !128 ; 3 uses
  store double %i.lu, ptr %i.lw, align 8, !tbaa !51, !noalias !128
  %i.lx = load ptr, ptr %3, align 8, !tbaa !54, !noalias !128 ; 2 uses
  %.not.i.i.i.i255 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i255, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %.noexc259
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !55, !noalias !128
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !56, !noalias !128
  %.not1.i.i.i.i256 = icmp ult ptr %i.ma, %i.mc
  br i1 %.not1.i.i.i.i256, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef 1, i1 noundef zeroext true)
          to label %.noexc260 unwind label %bb.cb

.noexc260:                                        ; preds = %bb.bn
  %.pre.i257 = load ptr, ptr %3, align 8, !tbaa !54, !noalias !128
  %.pre2.i258 = load ptr, ptr %i.lv, align 8, !tbaa !110, !noalias !128
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc260, %bb.bm, %.noexc259
  %i.md = phi ptr [ %i.lw, %.noexc259 ], [ %i.ma, %bb.bm ], [ %.pre2.i258, %.noexc260 ] ; 6 uses
  %i.me = phi ptr [ null, %.noexc259 ], [ %i.lx, %bb.bm ], [ %.pre.i257, %.noexc260 ] ; 3 uses
  store ptr %i.me, ptr %38, align 8, !tbaa !54, !alias.scope !128
  %i.mf = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !55, !noalias !128 ; 2 uses
  store i64 %i.mh, ptr %i.mf, align 8, !tbaa !55, !alias.scope !128
  %i.mi = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 11 uses
  store ptr %i.md, ptr %i.mi, align 8, !tbaa !110, !alias.scope !128
  %i.mj = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ml = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !56, !noalias !128
  %i.mo = load <2 x ptr>, ptr %i.mk, align 8, !tbaa !111, !noalias !128
  store <2 x ptr> %i.mo, ptr %i.mj, align 8, !tbaa !111, !alias.scope !128
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !128
  store double %i.lo, ptr %i.md, align 8, !tbaa !51
  %.not.i.i.i262 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i262, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265.thread, label %bb.bp

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265.thread: ; preds = %bb.bo
  %i.mp = extractelement <2 x double> %i.lm, i64 0
  store double %i.mp, ptr %i.md, align 8, !tbaa !51
  br label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread

bb.bp:                                            ; preds = %bb.bo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mh ; 3 uses
  %.not1.i.i.i263 = icmp ult ptr %i.mq, %i.mn
  br i1 %.not1.i.i.i263, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265.thread442, label %bb.bq

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265.thread442: ; preds = %bb.bp
  %i.mr = extractelement <2 x double> %i.lm, i64 0
  store double %i.mr, ptr %i.mq, align 8, !tbaa !51
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.md, ptr %i.mi, align 8, !tbaa !110
  invoke void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %38, i64 noundef 1, i1 noundef zeroext true)
          to label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265 unwind label %bb.cb

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265: ; preds = %bb.bq
  %.pre385 = load ptr, ptr %i.mi, align 8, !tbaa !110 ; 3 uses
  %.pre386 = load ptr, ptr %38, align 8, !tbaa !54 ; 2 uses
  %i.ms = extractelement <2 x double> %i.lm, i64 0
  store double %i.ms, ptr %.pre385, align 8, !tbaa !51
  %.not.i.i.i266 = icmp eq ptr %.pre386, null
  br i1 %.not.i.i.i266, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread, label %bb.br

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread: ; preds = %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265.thread, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265
  %i.mt = phi ptr [ %i.md, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265.thread ], [ %.pre385, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265 ] ; 2 uses
  store double %i.lq, ptr %i.mt, align 8, !tbaa !51
  br label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit277.thread452

bb.br:                                            ; preds = %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265.thread442, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265
  %i.mu = phi ptr [ %i.mq, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265.thread442 ], [ %.pre385, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265 ] ; 2 uses
  %i.mv = phi ptr [ %i.me, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265.thread442 ], [ %.pre386, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit265 ]
  %i.mw = load i64, ptr %i.mf, align 8, !tbaa !55
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mw ; 3 uses
  %i.my = load ptr, ptr %i.ml, align 8, !tbaa !56
  %.not1.i.i.i267 = icmp ult ptr %i.mx, %i.my
  br i1 %.not1.i.i.i267, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread444, label %bb.bs

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread444: ; preds = %bb.br
  store double %i.lq, ptr %i.mx, align 8, !tbaa !51
  br label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr %i.mu, ptr %i.mi, align 8, !tbaa !110
  invoke void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %38, i64 noundef 1, i1 noundef zeroext true)
          to label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269 unwind label %bb.cb

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269: ; preds = %bb.bs
  %.pr290.pre = load ptr, ptr %38, align 8, !tbaa !54 ; 2 uses
  %.pre388 = load ptr, ptr %i.mi, align 8, !tbaa !110 ; 3 uses
  store double %i.lq, ptr %.pre388, align 8, !tbaa !51
  %.not.i.i.i270 = icmp eq ptr %.pr290.pre, null
  br i1 %.not.i.i.i270, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit277.thread452, label %bb.bt

bb.bt:                                            ; preds = %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread444, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269
  %.pr290447 = phi ptr [ %i.mv, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread444 ], [ %.pr290.pre, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269 ]
  %i.mz = phi ptr [ %i.mx, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread444 ], [ %.pre388, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269 ] ; 2 uses
  %i.na = load i64, ptr %i.mf, align 8, !tbaa !55
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.na ; 3 uses
  %i.nc = load ptr, ptr %i.ml, align 8, !tbaa !56
  %.not1.i.i.i271 = icmp ult ptr %i.nb, %i.nc
  br i1 %.not1.i.i.i271, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273.thread448, label %bb.bu

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273.thread448: ; preds = %bb.bt
  store double %i.ls, ptr %i.nb, align 8, !tbaa !51
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.mz, ptr %i.mi, align 8, !tbaa !110
  invoke void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %38, i64 noundef 1, i1 noundef zeroext true)
          to label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273 unwind label %bb.cb

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit277.thread452: ; preds = %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269
  %i.nd = phi ptr [ %.pre388, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269 ], [ %i.mt, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit269.thread ]
  %i.ne = extractelement <2 x double> %i.lm, i64 1
  store double %i.ne, ptr %i.nd, align 8, !tbaa !51
  br label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit281

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273: ; preds = %bb.bu
  %.pr292.pre = load ptr, ptr %38, align 8, !tbaa !54 ; 2 uses
  %.pre390 = load ptr, ptr %i.mi, align 8, !tbaa !110 ; 3 uses
  store double %i.ls, ptr %.pre390, align 8, !tbaa !51
  %.not.i.i.i274 = icmp eq ptr %.pr292.pre, null
  br i1 %.not.i.i.i274, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit277.thread, label %bb.bv

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit277.thread: ; preds = %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273
  %i.nf = extractelement <2 x double> %i.lm, i64 1
  store double %i.nf, ptr %.pre390, align 8, !tbaa !51
  br label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit281

bb.bv:                                            ; preds = %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273.thread448, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273
  %.pr292451 = phi ptr [ %.pr290447, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273.thread448 ], [ %.pr292.pre, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273 ]
  %i.ng = phi ptr [ %i.nb, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273.thread448 ], [ %.pre390, %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit273 ] ; 2 uses
  %i.nh = load i64, ptr %i.mf, align 8, !tbaa !55
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nh ; 3 uses
  %i.nj = load ptr, ptr %i.ml, align 8, !tbaa !56
  %.not1.i.i.i275 = icmp ult ptr %i.ni, %i.nj
  br i1 %.not1.i.i.i275, label %_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit277.thread455, label %bb.bw

_ZN2cv20MatCommaInitializer_IdEcmIdEERS1_T_.exit277.thread455: ; preds = %bb.bv
end_hunk_0
