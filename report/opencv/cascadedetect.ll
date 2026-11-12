Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cascadedetect?download=true
inline.NumInlined: 2811
inline.NumDeleted: 1260
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv21CascadeClassifierImpl26detectMultiScaleNoGroupingERKNS_11_InputArrayERSt6vectorINS_5Rect_IiEESaIS6_EERS4_IiSaIiEERS4_IdSaIdEEdNS_5Size_IiEESH_b:bb.a
  %i.hn = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 0, ptr %i.hn, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !100
  store ptr %13, ptr %i.hm, align 8, !tbaa !101
  invoke void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.cm

bb.ba:                                            ; preds = %bb.al, %bb.ay, %bb.at
  store i32 16842752, ptr %14, align 8, !tbaa !36
  store ptr %13, ptr %i.gw, align 8, !tbaa !271
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !36
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !36
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !165 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !71
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = invoke noundef zeroext i1 %i.ht(ptr noundef nonnull align 8 dereferenceable(1216) %i.hq, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bb unwind label %bb.am

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.hu, label %bb.bc, label %bb.ce

bb.bc:                                            ; preds = %bb.bb
  %i.hv = load ptr, ptr %i.hp, align 8, !tbaa !165 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !71
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8
  invoke void %i.hy(ptr noundef nonnull align 8 dereferenceable(1216) %i.hv)
          to label %bb.bd unwind label %bb.am

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #29
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !270 ; 3 uses
  %.not = icmp eq ptr %i.ia, null
  br i1 %.not, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.ib = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %.noexc182 unwind label %bb.bj

.noexc182:                                        ; preds = %bb.be
  %i.ic = icmp eq i32 %i.ib, 65536
  br i1 %i.ic, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.noexc182
  %i.id = load ptr, ptr %i.gw, align 8, !tbaa !101, !noalias !485
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.id)
          to label %_ZNK2cv11_InputArray6getMatEi.exit185 unwind label %bb.bj

bb.bg:                                            ; preds = %.noexc182
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit185 unwind label %bb.bj

_ZNK2cv11_InputArray6getMatEi.exit185:            ; preds = %bb.bf, %bb.bg
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !71
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8
  invoke void %i.ig(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit185
  %i.ih = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.bi unwind label %bb.bl     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.bo

bb.bj:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit185
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #29
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn124 = phi { ptr, i32 } [ %i.ik, %bb.bl ], [ %i.ij, %bb.bk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #29
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.pn124.pn = phi { ptr, i32 } [ %.pn124, %bb.bm ], [ %i.ii, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.cl

bb.bo:                                            ; preds = %bb.bi, %bb.bd
  %i.il = load ptr, ptr %i.gl, align 8, !tbaa !109 ; 2 uses
  %i.im = load ptr, ptr %12, align 8, !tbaa !110  ; 2 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io                    ; 3 uses
  %i.iq = ashr exact i64 %i.ip, 2                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.ir = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.ir, ptr %21, align 8, !tbaa !487
  %i.is = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.not.i.i186 = icmp ugt i64 %i.iq, 264
  store i64 %i.iq, ptr %i.is, align 8, !tbaa !488
  br i1 %.not.i.i186, label %bb.bp, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.bp:                                            ; preds = %bb.bo
  %i.it = icmp ugt i64 %i.iq, 4611686018427387903
  %i.iu = select i1 %i.it, i64 -1, i64 %i.ip
  %i.iv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.iu) #31
          to label %.noexc187 unwind label %bb.bw ; 2 uses

.noexc187:                                        ; preds = %bb.bp
  store ptr %i.iv, ptr %21, align 8, !tbaa !487
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %.noexc187, %bb.bo
  %i.iw = phi ptr [ %i.iv, %.noexc187 ], [ %i.ir, %bb.bo ] ; 5 uses
  %i.ix = load ptr, ptr %i.hp, align 8, !tbaa !165
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1200
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !81 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !85 ; 2 uses
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !84 ; 11 uses
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = sdiv exact i64 %i.jf, 20                ; 2 uses
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = icmp sgt i32 %i.jh, 0
  br i1 %i.ji, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc189 unwind label %bb.bx

.noexc189:                                        ; preds = %bb.bq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv16FeatureEvaluator12getScaleDataEi, ptr noundef nonnull @.str.73, i32 noundef 46) #30
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %.noexc189
  unreachable

bb.bs:                                            ; preds = %.noexc189
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bs
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !62
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.body

bb.bt:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %.not.i.i.i188.not = icmp eq ptr %i.jb, %i.jc
  br i1 %.not.i.i.i188.not, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef 0, i64 noundef %i.jg) #30
          to label %.noexc190 unwind label %bb.bx

.noexc190:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %.sroa.07.0.copyload = load i64, ptr %i.b, align 4, !tbaa !36 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.07.0.copyload to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !124
  %i.jr = sub nsw i32 %i.jq, %.sroa.0.0.extract.trunc.i
  %.sroa.speculated5.i = call i32 @llvm.smax.i32(i32 %i.jr, i32 0)
  %i.js = uitofp nneg i32 %.sroa.speculated5.i to double
  %i.jt = fmul nnan double %i.js, 3.125000e-02
  %i.ju = call double @llvm.ceil.f64(double %i.jt)
  %i.jv = fptosi double %i.ju to i32              ; 5 uses
  %.not342 = icmp eq ptr %i.il, %i.im
  br i1 %.not342, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %bb.bv
  %i.jw = add nsw i32 %i.jv, -1                   ; 2 uses
  %.sroa.2.0.extract.shift.i192 = lshr i64 %.sroa.07.0.copyload, 32
  %.sroa.2.0.extract.trunc.i193 = trunc nuw i64 %.sroa.2.0.extract.shift.i192 to i32 ; 2 uses
  %min.iters.check = icmp ult i64 %i.iq, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph338
  %i.jx = getelementptr i8, ptr %i.iw, i64 %i.ip
  %i.jy = getelementptr i8, ptr %i.jc, i64 8
  %i.jz = mul i64 %i.iq, 20
  %i.ka = getelementptr i8, ptr %i.jc, i64 %i.jz
  %bound0 = icmp ult ptr %i.iw, %i.ka
  %bound1 = icmp ult ptr %i.jy, %i.jx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.kb = and i64 %i.iq, 3                        ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 0
  %i.kd = select i1 %i.kc, i64 4, i64 %i.kb
  %n.vec = sub nsw i64 %i.iq, %i.kd               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jw, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert425 = insertelement <4 x i32> poison, i32 %.sroa.2.0.extract.trunc.i193, i64 0
  %broadcast.splat426 = shufflevector <4 x i32> %broadcast.splatinsert425, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert427 = insertelement <4 x i32> poison, i32 %i.jv, i64 0
  %broadcast.splat428 = shufflevector <4 x i32> %broadcast.splatinsert427, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ke = getelementptr inbounds nuw [20 x i8], ptr %i.jc, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw [20 x i8], ptr %i.jc, i64 %index ; 2 uses
  %i.kg = getelementptr inbounds nuw [20 x i8], ptr %i.jc, i64 %index ; 2 uses
  %i.kh = getelementptr inbounds nuw [20 x i8], ptr %i.jc, i64 %index ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 28
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 48
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 68
  %i.km = load i32, ptr %i.ki, align 4, !tbaa !123, !alias.scope !489
  %i.kn = load i32, ptr %i.kj, align 4, !tbaa !123, !alias.scope !489
  %i.ko = load i32, ptr %i.kk, align 4, !tbaa !123, !alias.scope !489
  %i.kp = load i32, ptr %i.kl, align 4, !tbaa !123, !alias.scope !489
  %i.kq = insertelement <4 x i32> poison, i32 %i.km, i64 0
  %i.kr = insertelement <4 x i32> %i.kq, i32 %i.kn, i64 1
  %i.ks = insertelement <4 x i32> %i.kr, i32 %i.ko, i64 2
  %i.kt = insertelement <4 x i32> %i.ks, i32 %i.kp, i64 3
  %i.ku = sub nsw <4 x i32> %i.kt, %broadcast.splat426
  %i.kv = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ku, <4 x i32> zeroinitializer)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 36
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kg, i64 56
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kh, i64 76
  %i.la = load i32, ptr %i.kw, align 4, !tbaa !116, !alias.scope !489
  %i.lb = load i32, ptr %i.kx, align 4, !tbaa !116, !alias.scope !489
  %i.lc = load i32, ptr %i.ky, align 4, !tbaa !116, !alias.scope !489
  %i.ld = load i32, ptr %i.kz, align 4, !tbaa !116, !alias.scope !489
  %i.le = insertelement <4 x i32> poison, i32 %i.la, i64 0
  %i.lf = insertelement <4 x i32> %i.le, i32 %i.lb, i64 1
  %i.lg = insertelement <4 x i32> %i.lf, i32 %i.lc, i64 2
  %i.lh = insertelement <4 x i32> %i.lg, i32 %i.ld, i64 3 ; 2 uses
  %i.li = sdiv <4 x i32> %i.kv, %i.lh
  %i.lj = add <4 x i32> %broadcast.splat, %i.li
  %i.lk = sdiv <4 x i32> %i.lj, %broadcast.splat428
  %i.ll = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lk, <4 x i32> splat (i32 1))
  %i.lm = mul nsw <4 x i32> %i.ll, %i.lh
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %index
  store <4 x i32> %i.lm, ptr %i.ln, align 4, !tbaa !36, !alias.scope !490, !noalias !489
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lo = icmp eq i64 %index.next, %n.vec
  br i1 %i.lo, label %scalar.ph.preheader, label %vector.body, !llvm.loop !482

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph338
  %.0336.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph338 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0336 = phi i64 [ %i.ma, %scalar.ph ], [ %.0336.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lp = getelementptr inbounds nuw [20 x i8], ptr %i.jc, i64 %.0336 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !123
  %i.ls = sub nsw i32 %i.lr, %.sroa.2.0.extract.trunc.i193
  %.sroa.speculated.i195 = call i32 @llvm.smax.i32(i32 %i.ls, i32 0)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !116 ; 2 uses
  %i.lv = sdiv i32 %.sroa.speculated.i195, %i.lu
  %i.lw = add i32 %i.jw, %i.lv
  %i.lx = sdiv i32 %i.lw, %i.jv
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.lx, i32 1)
  %i.ly = mul nsw i32 %.sroa.speculated, %i.lu
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %.0336
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !36
  %i.ma = add nuw i64 %.0336, 1                   ; 2 uses
  %exitcond356.not = icmp eq i64 %i.ma, %i.iq
  br i1 %exitcond356.not, label %._crit_edge339, label %scalar.ph, !llvm.loop !483

bb.bw:                                            ; preds = %bb.bp
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212

bb.bx:                                            ; preds = %bb.bu, %bb.bq
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge339:                                   ; preds = %scalar.ph, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.md = trunc i64 %i.iq to i32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv24CascadeClassifierInvokerE, i64 16), ptr %22, align 8, !tbaa !71
  %i.me = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.me, i8 0, i64 24, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %22, i64 88 ; 4 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.mf) #29
  %i.mg = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %0, ptr %i.mg, align 8, !tbaa !279
  %i.mh = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i32 %i.md, ptr %i.mh, align 8, !tbaa !280
  %i.mi = getelementptr inbounds nuw i8, ptr %22, i64 28
  store i32 %i.jv, ptr %i.mi, align 4, !tbaa !491
  %i.mj = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.jc, ptr %i.mj, align 8, !tbaa !281
  %i.mk = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr %i.iw, ptr %i.mk, align 8, !tbaa !282
  %i.ml = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %2, ptr %i.ml, align 8, !tbaa !283
  %i.mm = select i1 %8, ptr %3, ptr null
  %i.mn = getelementptr inbounds nuw i8, ptr %22, i64 48
  store ptr %i.mm, ptr %i.mn, align 8, !tbaa !284
  %i.mo = select i1 %8, ptr %4, ptr null
  %i.mp = getelementptr inbounds nuw i8, ptr %22, i64 56
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !285
  %i.mq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.mf, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.ca unwind label %bb.by     ; 0 uses

bb.by:                                            ; preds = %._crit_edge339
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.mf) #29
  %i.ms = load ptr, ptr %i.me, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i.i200 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i200, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mt = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !206
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.bz, %bb.by
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(304) %22) #29
  br label %.body201

bb.ca:                                            ; preds = %._crit_edge339
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.mz = getelementptr inbounds nuw i8, ptr %22, i64 296
  store ptr %i.my, ptr %i.mz, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  store i32 0, ptr %23, align 4, !tbaa !288
  %i.na = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 %i.jv, ptr %i.na, align 4, !tbaa !289
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22, double noundef -1.000000e+00)
          to label %bb.cb unwind label %bb.cj

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv24CascadeClassifierInvokerE, i64 16), ptr %22, align 8, !tbaa !71
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.mf) #29, !inline_history !290
  %i.nb = load ptr, ptr %i.me, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i.i203 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i203, label %_ZN2cv24CascadeClassifierInvokerD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nc = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !206
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nb to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.ng) #32, !inline_history !290
  br label %_ZN2cv24CascadeClassifierInvokerD2Ev.exit

_ZN2cv24CascadeClassifierInvokerD2Ev.exit:        ; preds = %bb.cb, %bb.cc
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(304) %22) #29, !inline_history !290
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.nh = load ptr, ptr %21, align 8, !tbaa !487  ; 3 uses
  %.not.i.i205 = icmp eq ptr %i.nh, %i.ir
  %i.ni = icmp eq ptr %i.nh, null
  %or.cond.i = or i1 %.not.i.i205, %i.ni
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN2cv24CascadeClassifierInvokerD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.nh) #32
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %_ZN2cv24CascadeClassifierInvokerD2Ev.exit, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bb, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.nj = load ptr, ptr %12, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i206 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i206, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nk = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.nj to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.nn) #32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.no = ptrtoint ptr %.sroa.29.0.lcssa390 to i64
  %i.np = sub i64 %i.no, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0241.0.lcssa397405, i64 noundef %i.np) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit208

_ZNSt6vectorIfSaIfEED2Ev.exit208:                 ; preds = %bb.cg, %bb.b
  %i.nq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !53
  %.not.i209 = icmp eq i32 %i.nr, 0
  br i1 %.not.i209, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit208
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %11)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ns = landingpad { ptr, i32 }
          catch ptr null
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0
  call void @__clang_call_terminate(ptr %i.nt) #33
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit208, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  ret void

bb.cj:                                            ; preds = %bb.ca
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @_ZN2cv24CascadeClassifierInvokerD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %22) #29
  br label %.body201

.body201:                                         ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.cj
  %.pn127 = phi { ptr, i32 } [ %i.nu, %bb.cj ], [ %i.mr, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  br label %.body

.body:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body201
  %.pn129.pn.pn = phi { ptr, i32 } [ %.pn127, %.body201 ], [ %i.mc, %bb.bx ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.nv = load ptr, ptr %21, align 8, !tbaa !487  ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.nv, %i.ir
  %i.nw = icmp eq ptr %i.nv, null
  %or.cond.i211 = or i1 %.not.i.i210, %i.nw
  br i1 %or.cond.i211, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212, label %bb.ck

bb.ck:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.nv) #32
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212

_ZN2cv10AutoBufferIiLm264EED2Ev.exit212:          ; preds = %bb.ck, %.body, %bb.bw
  %.pn129.pn.pn.pn = phi { ptr, i32 } [ %i.mb, %bb.bw ], [ %.pn129.pn.pn, %.body ], [ %.pn129.pn.pn, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212, %bb.bn
  %.pn129.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn129.pn.pn.pn, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212 ], [ %.pn124.pn, %bb.bn ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.cm

end_hunk_0
