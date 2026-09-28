Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cascadedetect?download=true
inline.NumInlined: 2811
inline.NumDeleted: 1260
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv21CascadeClassifierImpl26detectMultiScaleNoGroupingERKNS_11_InputArrayERSt6vectorINS_5Rect_IiEESaIS6_EERS4_IiSaIiEERS4_IdSaIdEEdNS_5Size_IiEESH_b:bb.a
  %i.hf = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.aq unwind label %bb.an

bb.aq:                                            ; preds = %bb.ap
  %i.hg = icmp eq i32 %i.hf, 65536
  br i1 %i.hg, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.hh = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc179 unwind label %bb.av

.noexc179:                                        ; preds = %bb.ar
  %i.hi = icmp eq i32 %i.hh, 65536
  br i1 %i.hi, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.noexc179
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !101, !noalias !484
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.hk)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.av

bb.at:                                            ; preds = %.noexc179
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.av

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.as, %bb.at
  %i.hl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.au unwind label %bb.aw     ; 0 uses

bb.au:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.bb

bb.av:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #29
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn120 = phi { ptr, i32 } [ %i.hn, %bb.aw ], [ %i.hm, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.cl

bb.ay:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.ho = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 0, ptr %i.hp, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !100
  store ptr %13, ptr %i.ho, align 8, !tbaa !101
  invoke void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.cl

bb.bb:                                            ; preds = %bb.am, %bb.az, %bb.au
  store i32 16842752, ptr %14, align 8, !tbaa !36
  store ptr %13, ptr %i.gy, align 8, !tbaa !271
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !36
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !36
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !165 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !71
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = invoke noundef zeroext i1 %i.hv(ptr noundef nonnull align 8 dereferenceable(1216) %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bc unwind label %bb.an

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.hw, label %bb.bd, label %bb.cd

bb.bd:                                            ; preds = %bb.bc
  %i.hx = load ptr, ptr %i.hr, align 8, !tbaa !165 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !71
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8
  invoke void %i.ia(ptr noundef nonnull align 8 dereferenceable(1216) %i.hx)
          to label %bb.be unwind label %bb.an

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #29
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !270 ; 3 uses
  %.not = icmp eq ptr %i.ic, null
  br i1 %.not, label %bb.bp, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.id = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %.noexc182 unwind label %bb.bk

.noexc182:                                        ; preds = %bb.bf
  %i.ie = icmp eq i32 %i.id, 65536
  br i1 %i.ie, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.noexc182
  %i.if = load ptr, ptr %i.gy, align 8, !tbaa !101, !noalias !485
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.if)
          to label %_ZNK2cv11_InputArray6getMatEi.exit185 unwind label %bb.bk

bb.bh:                                            ; preds = %.noexc182
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit185 unwind label %bb.bk

_ZNK2cv11_InputArray6getMatEi.exit185:            ; preds = %bb.bg, %bb.bh
  %i.ig = load ptr, ptr %i.ic, align 8, !tbaa !71
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  invoke void %i.ii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit185
  %i.ij = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.bj unwind label %bb.bm     ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bl:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit185
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #29
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn124 = phi { ptr, i32 } [ %i.im, %bb.bm ], [ %i.il, %bb.bl ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #29
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %.pn124.pn = phi { ptr, i32 } [ %.pn124, %bb.bn ], [ %i.ik, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.ck

bb.bp:                                            ; preds = %bb.bj, %bb.be
  %i.in = load ptr, ptr %i.gn, align 8, !tbaa !109 ; 2 uses
  %i.io = load ptr, ptr %12, align 8, !tbaa !110  ; 2 uses
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 3 uses
  %i.is = ashr exact i64 %i.ir, 2                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.it = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.it, ptr %21, align 8, !tbaa !487
  %i.iu = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.not.i.i186 = icmp ugt i64 %i.is, 264
  store i64 %i.is, ptr %i.iu, align 8, !tbaa !488
  br i1 %.not.i.i186, label %bb.bq, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.bq:                                            ; preds = %bb.bp
  %i.iv = icmp ugt i64 %i.is, 4611686018427387903
  %i.iw = select i1 %i.iv, i64 -1, i64 %i.ir
  %i.ix = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.iw) #31
          to label %.noexc187 unwind label %bb.bv ; 2 uses

.noexc187:                                        ; preds = %bb.bq
  store ptr %i.ix, ptr %21, align 8, !tbaa !487
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %.noexc187, %bb.bp
  %i.iy = phi ptr [ %i.ix, %.noexc187 ], [ %i.it, %bb.bp ] ; 5 uses
  %i.iz = load ptr, ptr %i.hr, align 8, !tbaa !165
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1200
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !81 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !85 ; 2 uses
  %i.je = load ptr, ptr %i.jb, align 8, !tbaa !84 ; 11 uses
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = sdiv exact i64 %i.jh, 20                ; 2 uses
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = icmp sgt i32 %i.jj, 0
  br i1 %i.jk, label %24, label %bb.br

bb.br:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc189 unwind label %bb.bw

.noexc189:                                        ; preds = %bb.br
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv16FeatureEvaluator12getScaleDataEi, ptr noundef nonnull @.str.73, i32 noundef 46) #30
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.noexc189
  unreachable

bb.bt:                                            ; preds = %.noexc189
  %i.jl = landingpad { ptr, i32 }
          cleanup
  %i.jm = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bt
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !62
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.body

24:                                               ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %.not.i.i.i188.not = icmp eq ptr %i.jd, %i.je
  br i1 %.not.i.i.i188.not, label %25, label %bb.bu

25:                                               ; preds = %24
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef 0, i64 noundef %i.ji) #30
          to label %.noexc190 unwind label %bb.bw

.noexc190:                                        ; preds = %25
  unreachable

bb.bu:                                            ; preds = %24
  %.sroa.07.0.copyload = load i64, ptr %i.b, align 4, !tbaa !36 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.07.0.copyload to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !124
  %i.jt = sub nsw i32 %i.js, %.sroa.0.0.extract.trunc.i
  %.sroa.speculated5.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  %i.ju = uitofp nneg i32 %.sroa.speculated5.i to double
  %i.jv = fmul nnan double %i.ju, 3.125000e-02
  %i.jw = call double @llvm.ceil.f64(double %i.jv)
  %i.jx = fptosi double %i.jw to i32              ; 5 uses
  %.not340 = icmp eq ptr %i.in, %i.io
  br i1 %.not340, label %._crit_edge337, label %.lr.ph336

.lr.ph336:                                        ; preds = %bb.bu
  %i.jy = add nsw i32 %i.jx, -1                   ; 2 uses
  %.sroa.2.0.extract.shift.i192 = lshr i64 %.sroa.07.0.copyload, 32
  %.sroa.2.0.extract.trunc.i193 = trunc nuw i64 %.sroa.2.0.extract.shift.i192 to i32 ; 2 uses
  %min.iters.check = icmp ult i64 %i.is, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph336
  %scevgep = getelementptr i8, ptr %i.iy, i64 %i.ir
  %scevgep415.a = getelementptr i8, ptr %i.je, i64 8
  %i.jz = mul i64 %i.is, 20
  %scevgep416 = getelementptr i8, ptr %i.je, i64 %i.jz
  %bound0 = icmp ult ptr %i.iy, %scevgep416
  %bound1 = icmp ult ptr %scevgep415.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ka = and i64 %i.is, 3                        ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 0
  %i.kc = select i1 %i.kb, i64 4, i64 %i.ka
  %n.vec = sub nsw i64 %i.is, %i.kc               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert417 = insertelement <4 x i32> poison, i32 %.sroa.2.0.extract.trunc.i193, i64 0
  %broadcast.splat418 = shufflevector <4 x i32> %broadcast.splatinsert417, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert419 = insertelement <4 x i32> poison, i32 %i.jx, i64 0
  %broadcast.splat420 = shufflevector <4 x i32> %broadcast.splatinsert419, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.kd = getelementptr inbounds nuw [20 x i8], ptr %i.je, i64 %index ; 2 uses
  %i.ke = getelementptr inbounds nuw [20 x i8], ptr %i.je, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw [20 x i8], ptr %i.je, i64 %index ; 2 uses
  %i.kg = getelementptr inbounds nuw [20 x i8], ptr %i.je, i64 %index ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 28
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 68
  %i.kl = load i32, ptr %i.kh, align 4, !tbaa !123, !alias.scope !489
  %i.km = load i32, ptr %i.ki, align 4, !tbaa !123, !alias.scope !489
  %i.kn = load i32, ptr %i.kj, align 4, !tbaa !123, !alias.scope !489
  %i.ko = load i32, ptr %i.kk, align 4, !tbaa !123, !alias.scope !489
  %i.kp = insertelement <4 x i32> poison, i32 %i.kl, i64 0
  %i.kq = insertelement <4 x i32> %i.kp, i32 %i.km, i64 1
  %i.kr = insertelement <4 x i32> %i.kq, i32 %i.kn, i64 2
  %i.ks = insertelement <4 x i32> %i.kr, i32 %i.ko, i64 3
  %i.kt = sub nsw <4 x i32> %i.ks, %broadcast.splat418
  %i.ku = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kt, <4 x i32> zeroinitializer)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ke, i64 36
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kg, i64 76
  %i.kz = load i32, ptr %i.kv, align 4, !tbaa !116, !alias.scope !489
  %i.la = load i32, ptr %i.kw, align 4, !tbaa !116, !alias.scope !489
  %i.lb = load i32, ptr %i.kx, align 4, !tbaa !116, !alias.scope !489
  %i.lc = load i32, ptr %i.ky, align 4, !tbaa !116, !alias.scope !489
  %i.ld = insertelement <4 x i32> poison, i32 %i.kz, i64 0
  %i.le = insertelement <4 x i32> %i.ld, i32 %i.la, i64 1
  %i.lf = insertelement <4 x i32> %i.le, i32 %i.lb, i64 2
  %i.lg = insertelement <4 x i32> %i.lf, i32 %i.lc, i64 3 ; 2 uses
  %i.lh = sdiv <4 x i32> %i.ku, %i.lg
  %i.li = add <4 x i32> %broadcast.splat, %i.lh
  %i.lj = sdiv <4 x i32> %i.li, %broadcast.splat420
  %i.lk = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lj, <4 x i32> splat (i32 1))
  %i.ll = mul nsw <4 x i32> %i.lk, %i.lg
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %index
  store <4 x i32> %i.ll, ptr %i.lm, align 4, !tbaa !36, !alias.scope !490, !noalias !489
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ln = icmp eq i64 %index.next, %n.vec
  br i1 %i.ln, label %scalar.ph.preheader, label %vector.body, !llvm.loop !482

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph336
  %.0334.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph336 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0334 = phi i64 [ %i.lz, %scalar.ph ], [ %.0334.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lo = getelementptr inbounds nuw [20 x i8], ptr %i.je, i64 %.0334 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !123
  %i.lr = sub nsw i32 %i.lq, %.sroa.2.0.extract.trunc.i193
  %.sroa.speculated.i195 = call i32 @llvm.smax.i32(i32 %i.lr, i32 0)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !116 ; 2 uses
  %i.lu = sdiv i32 %.sroa.speculated.i195, %i.lt
  %i.lv = add i32 %i.jy, %i.lu
  %i.lw = sdiv i32 %i.lv, %i.jx
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.lw, i32 1)
  %i.lx = mul nsw i32 %.sroa.speculated, %i.lt
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %.0334
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !36
  %i.lz = add nuw i64 %.0334, 1                   ; 2 uses
  %exitcond354.not = icmp eq i64 %i.lz, %i.is
  br i1 %exitcond354.not, label %._crit_edge337, label %scalar.ph, !llvm.loop !483

bb.bv:                                            ; preds = %bb.bq
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212

bb.bw:                                            ; preds = %25, %bb.br
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge337:                                   ; preds = %scalar.ph, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.mc = trunc i64 %i.is to i32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv24CascadeClassifierInvokerE, i64 16), ptr %22, align 8, !tbaa !71
  %i.md = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.md, i8 0, i64 24, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %22, i64 88 ; 4 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.me) #29
  %i.mf = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %0, ptr %i.mf, align 8, !tbaa !279
  %i.mg = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i32 %i.mc, ptr %i.mg, align 8, !tbaa !280
  %i.mh = getelementptr inbounds nuw i8, ptr %22, i64 28
  store i32 %i.jx, ptr %i.mh, align 4, !tbaa !491
  %i.mi = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.je, ptr %i.mi, align 8, !tbaa !281
  %i.mj = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr %i.iy, ptr %i.mj, align 8, !tbaa !282
  %i.mk = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %2, ptr %i.mk, align 8, !tbaa !283
  %i.ml = select i1 %8, ptr %3, ptr null
  %i.mm = getelementptr inbounds nuw i8, ptr %22, i64 48
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !284
  %i.mn = select i1 %8, ptr %4, ptr null
  %i.mo = getelementptr inbounds nuw i8, ptr %22, i64 56
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !285
  %i.mp = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.me, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.bz unwind label %bb.bx     ; 0 uses

bb.bx:                                            ; preds = %._crit_edge337
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.me) #29
  %i.mr = load ptr, ptr %i.md, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i.i200 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i.i200, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ms = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !206
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.mr to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef %i.mw) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.by, %bb.bx
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(304) %22) #29
  br label %.body201

bb.bz:                                            ; preds = %._crit_edge337
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.my = getelementptr inbounds nuw i8, ptr %22, i64 296
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  store i32 0, ptr %23, align 4, !tbaa !288
  %i.mz = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 %i.jx, ptr %i.mz, align 4, !tbaa !289
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22, double noundef -1.000000e+00)
          to label %bb.ca unwind label %bb.ci

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv24CascadeClassifierInvokerE, i64 16), ptr %22, align 8, !tbaa !71
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.me) #29, !inline_history !290
  %i.na = load ptr, ptr %i.md, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i.i203 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i.i203, label %_ZN2cv24CascadeClassifierInvokerD2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nb = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !206
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.na to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.nf) #32, !inline_history !290
  br label %_ZN2cv24CascadeClassifierInvokerD2Ev.exit

_ZN2cv24CascadeClassifierInvokerD2Ev.exit:        ; preds = %bb.ca, %bb.cb
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(304) %22) #29, !inline_history !290
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.ng = load ptr, ptr %21, align 8, !tbaa !487  ; 3 uses
  %.not.i.i205 = icmp eq ptr %i.ng, %i.it
  %i.nh = icmp eq ptr %i.ng, null
  %or.cond.i = or i1 %.not.i.i205, %i.nh
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN2cv24CascadeClassifierInvokerD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ng) #32
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %_ZN2cv24CascadeClassifierInvokerD2Ev.exit, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bc, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.ni = load ptr, ptr %12, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i206 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i206, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nj = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.nk = ptrtoint ptr %i.nj to i64
  %i.nl = ptrtoint ptr %i.ni to i64
  %i.nm = sub i64 %i.nk, %i.nl
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef %i.nm) #32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.nn = ptrtoint ptr %.sroa.29.0.lcssa388 to i64
  %i.no = sub i64 %i.nn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0241.0.lcssa389397, i64 noundef %i.no) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit208

_ZNSt6vectorIfSaIfEED2Ev.exit208:                 ; preds = %bb.cf, %bb.b
  %i.np = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !53
  %.not.i209 = icmp eq i32 %i.nq, 0
  br i1 %.not.i209, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit208
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %11)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  %i.ns = extractvalue { ptr, i32 } %i.nr, 0
  call void @__clang_call_terminate(ptr %i.ns) #33
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit208, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  ret void

bb.ci:                                            ; preds = %bb.bz
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @_ZN2cv24CascadeClassifierInvokerD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %22) #29
  br label %.body201

.body201:                                         ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.ci
  %.pn127 = phi { ptr, i32 } [ %i.nt, %bb.ci ], [ %i.mq, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  br label %.body

.body:                                            ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body201
  %.pn129.pn.pn = phi { ptr, i32 } [ %.pn127, %.body201 ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.mb, %bb.bw ] ; 2 uses
  %i.nu = load ptr, ptr %21, align 8, !tbaa !487  ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.nu, %i.it
  %i.nv = icmp eq ptr %i.nu, null
  %or.cond.i211 = or i1 %.not.i.i210, %i.nv
  br i1 %or.cond.i211, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212, label %bb.cj

bb.cj:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.nu) #32
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212

_ZN2cv10AutoBufferIiLm264EED2Ev.exit212:          ; preds = %bb.cj, %.body, %bb.bv
  %.pn129.pn.pn.pn = phi { ptr, i32 } [ %i.ma, %bb.bv ], [ %.pn129.pn.pn, %.body ], [ %.pn129.pn.pn, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212, %bb.bo
  %.pn129.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn129.pn.pn.pn, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit212 ], [ %.pn124.pn, %bb.bo ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.cl

bb.cl:                                            ; preds = %bb.an, %bb.ao, %bb.ax, %bb.ba, %bb.ck
  %.pn129.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hq, %bb.ba ], [ %.pn129.pn.pn.pn.pn, %bb.ck ], [ %i.hd, %bb.an ], [ %.pn120, %bb.ax ], [ %i.he, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit174

_ZNSt6vectorIdSaIdEED2Ev.exit174:                 ; preds = %.loopexit271, %.loopexit.split-lp272, %.loopexit276, %.loopexit.split-lp277, %bb.ai, %bb.ah, %bb.cl, %bb.g
  %.sroa.29.2 = phi ptr [ %.sroa.29.0.lcssa388, %bb.cl ], [ %.sroa.29.4, %bb.ai ], [ %.sroa.20.0309, %.loopexit.split-lp277 ], [ %.sroa.29.1, %bb.g ], [ %.sroa.29.4, %bb.ah ], [ %.sroa.20.0309, %.loopexit276 ], [ %.sroa.29.4, %.loopexit.split-lp272 ], [ %.sroa.29.4, %.loopexit271 ]
  %.sroa.0241.2 = phi ptr [ %.sroa.0241.0.lcssa389397, %bb.cl ], [ %.sroa.0241.4, %bb.ai ], [ %.sroa.0241.0310, %.loopexit.split-lp277 ], [ %.sroa.0241.1, %bb.g ], [ %.sroa.0241.4, %bb.ah ], [ %.sroa.0241.0310, %.loopexit276 ], [ %.sroa.0241.4, %.loopexit.split-lp272 ], [ %.sroa.0241.4, %.loopexit271 ] ; 3 uses
  %.pn129.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn129.pn.pn.pn.pn.pn.pn, %bb.cl ], [ %.pn115.pn, %bb.ai ], [ %lpad.loopexit.split-lp279, %.loopexit.split-lp277 ], [ %i.aw, %bb.g ], [ %.pn115.pn, %bb.ah ], [ %lpad.loopexit278, %.loopexit276 ], [ %lpad.loopexit.split-lp274, %.loopexit.split-lp272 ], [ %lpad.loopexit273, %.loopexit271 ] ; 2 uses
  %i.nw = load ptr, ptr %12, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i213 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIfSaIfEED2Ev.exit214, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit174
  %i.nx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !206
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = ptrtoint ptr %i.nw to i64
end_hunk_0
