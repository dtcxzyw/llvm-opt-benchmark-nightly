Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/nary_eltwise_layers?download=true
inline.NumInlined: 39349
inline.NumDeleted: 7373
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1195
loop-unroll.NumUnrolled: 1197
begin_hunk_0_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E17_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !32
  %i.hd = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.he = mul nsw i64 %i.hd, %i.hc
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !32
  %i.hg = call noundef i64 @llvm.smax.i64(i64 %i.hf, i64 %i.he)
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !32
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !3919

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176 ; 2 uses
  %i.hi = load i64, ptr %.088143, align 8, !tbaa !32
  %i.hj = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hk = mul nsw i64 %i.hj, %i.hi
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hm = call noundef i64 @llvm.smax.i64(i64 %i.hl, i64 %i.hk)
  store i64 %i.hm, ptr %i.hh, align 8, !tbaa !32
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !tbaa !32
  %i.hr = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hs = mul nsw i64 %i.hr, %i.hq
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !32
  %i.hu = call noundef i64 @llvm.smax.i64(i64 %i.ht, i64 %i.hs)
  store i64 %i.hu, ptr %i.hp, align 8, !tbaa !32
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !3920

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load i64, ptr %.088143.epil.init, align 8, !tbaa !32
  %i.hy = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hz = mul nsw i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.ib = call noundef i64 @llvm.smax.i64(i64 %i.ia, i64 %i.hz)
  store i64 %i.ib, ptr %i.hw, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !3921

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.an, align 8, !tbaa !3936, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.ao, align 8, !tbaa !3937, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.al, align 8, !tbaa !3934, !nonnull !138, !align !163 ; 2 uses
  %i.ih = load ptr, ptr %i.am, align 8, !tbaa !3935, !nonnull !138, !align !163 ; 2 uses
  %i.ii = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cb, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jo, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.cc, %.lr.ph129 ], [ %i.jm, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.ik = load i64, ptr %.093124.epil.init, align 8, !tbaa !32
  %i.il = load i64, ptr %.092125.epil.init, align 8, !tbaa !32
  %i.im = call noundef i64 @llvm.smax.i64(i64 %i.ik, i64 %i.il)
  %i.in = load i64, ptr %i.if, align 8, !tbaa !32
  %i.io = mul nsw i64 %i.in, %i.im
  store i64 %i.io, ptr %.091126.epil.init, align 8, !tbaa !32
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ap, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ip = load ptr, ptr %0, align 8, !tbaa !3927, !nonnull !138, !align !163
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !58
  %i.ir = load ptr, ptr %i.ao, align 8, !tbaa !3937, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.is = icmp eq i32 %i.ii, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cb, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jo, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.cc, %.lr.ph129.new ], [ %i.jm, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.it = load i64, ptr %.093124, align 8, !tbaa !32
  %i.iu = load i64, ptr %.092125, align 8, !tbaa !32
  %i.iv = call noundef i64 @llvm.smax.i64(i64 %i.it, i64 %i.iu)
  %i.iw = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ix = mul nsw i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %.091126, align 8, !tbaa !32
  %i.iy = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jb, align 8, !tbaa !32
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !32
  %i.jg = call noundef i64 @llvm.smax.i64(i64 %i.je, i64 %i.jf)
  %i.jh = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ji = mul nsw i64 %i.jh, %i.jg
  store i64 %i.ji, ptr %i.iz, align 8, !tbaa !32
  %i.jj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jj ; 2 uses
  %i.jl = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jn ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !3922

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kd, %.lr.ph135 ], [ %i.kt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jp = load i64, ptr %.083132.epil.init, align 8, !tbaa !32
  %i.jq = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.jr = mul nsw i64 %i.jq, %i.jp
  %i.js = load i64, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.jt = call noundef i64 @llvm.smax.i64(i64 %i.js, i64 %i.jr)
  store i64 %i.jt, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.ju = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.ju
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jv, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !3923

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cb, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv.next167
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !131
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  %i.kb = lshr i64 %i.ka, 3                       ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !141 ; 2 uses
  br i1 %i.is, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.kt, %.lr.ph135.new ], [ %i.kd, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ks, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ke = load i64, ptr %.083132, align 8, !tbaa !32
  %i.kf = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.kg = mul nsw i64 %i.kf, %i.ke
  %i.kh = load i64, ptr %.2131, align 8, !tbaa !32
  %i.ki = call noundef i64 @llvm.smax.i64(i64 %i.kh, i64 %i.kg)
  store i64 %i.ki, ptr %.2131, align 8, !tbaa !32
  %i.kj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kb ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.ko = mul nsw i64 %i.kn, %i.km
  %i.kp = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.kq = call noundef i64 @llvm.smax.i64(i64 %i.kp, i64 %i.ko)
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !32
  %i.kr = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kb ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !3924

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !3925
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 3
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 3
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !3947

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !3948

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS8_10opDispatchIlJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKlSO_E18_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_0
begin_hunk_1_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !32
  %i.hd = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.he = mul nsw i64 %i.hd, %i.hc
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !32
  %i.hg = add nsw i64 %i.he, %i.hf
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !32
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !3994

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176 ; 2 uses
  %i.hi = load i64, ptr %.088143, align 8, !tbaa !32
  %i.hj = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hk = mul nsw i64 %i.hj, %i.hi
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hm = add nsw i64 %i.hk, %i.hl
  store i64 %i.hm, ptr %i.hh, align 8, !tbaa !32
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !tbaa !32
  %i.hr = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hs = mul nsw i64 %i.hr, %i.hq
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !32
  %i.hu = add nsw i64 %i.hs, %i.ht
  store i64 %i.hu, ptr %i.hp, align 8, !tbaa !32
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !3995

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load i64, ptr %.088143.epil.init, align 8, !tbaa !32
  %i.hy = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hz = mul nsw i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.ib = add nsw i64 %i.hz, %i.ia
  store i64 %i.ib, ptr %i.hw, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !3996

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.an, align 8, !tbaa !4011, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.ao, align 8, !tbaa !4012, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.al, align 8, !tbaa !4009, !nonnull !138, !align !163 ; 2 uses
  %i.ih = load ptr, ptr %i.am, align 8, !tbaa !4010, !nonnull !138, !align !163 ; 2 uses
  %i.ii = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cb, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jo, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.cc, %.lr.ph129 ], [ %i.jm, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.ik = load i64, ptr %.093124.epil.init, align 8, !tbaa !32
  %i.il = load i64, ptr %.092125.epil.init, align 8, !tbaa !32
  %i.im = add nsw i64 %i.il, %i.ik
  %i.in = load i64, ptr %i.if, align 8, !tbaa !32
  %i.io = mul nsw i64 %i.in, %i.im
  store i64 %i.io, ptr %.091126.epil.init, align 8, !tbaa !32
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ap, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ip = load ptr, ptr %0, align 8, !tbaa !4002, !nonnull !138, !align !163
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !58
  %i.ir = load ptr, ptr %i.ao, align 8, !tbaa !4012, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.is = icmp eq i32 %i.ii, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cb, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jo, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.cc, %.lr.ph129.new ], [ %i.jm, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.it = load i64, ptr %.093124, align 8, !tbaa !32
  %i.iu = load i64, ptr %.092125, align 8, !tbaa !32
  %i.iv = add nsw i64 %i.iu, %i.it
  %i.iw = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ix = mul nsw i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %.091126, align 8, !tbaa !32
  %i.iy = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jb, align 8, !tbaa !32
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !32
  %i.jg = add nsw i64 %i.jf, %i.je
  %i.jh = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ji = mul nsw i64 %i.jh, %i.jg
  store i64 %i.ji, ptr %i.iz, align 8, !tbaa !32
  %i.jj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jj ; 2 uses
  %i.jl = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jn ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !3997

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kd, %.lr.ph135 ], [ %i.kt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jp = load i64, ptr %.083132.epil.init, align 8, !tbaa !32
  %i.jq = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.jr = mul nsw i64 %i.jq, %i.jp
  %i.js = load i64, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.jt = add nsw i64 %i.jr, %i.js
  store i64 %i.jt, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.ju = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.ju
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jv, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !3998

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cb, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv.next167
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !131
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  %i.kb = lshr i64 %i.ka, 3                       ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !141 ; 2 uses
  br i1 %i.is, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.kt, %.lr.ph135.new ], [ %i.kd, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ks, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ke = load i64, ptr %.083132, align 8, !tbaa !32
  %i.kf = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.kg = mul nsw i64 %i.kf, %i.ke
  %i.kh = load i64, ptr %.2131, align 8, !tbaa !32
  %i.ki = add nsw i64 %i.kg, %i.kh
  store i64 %i.ki, ptr %.2131, align 8, !tbaa !32
  %i.kj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kb ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.ko = mul nsw i64 %i.kn, %i.km
  %i.kp = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.kq = add nsw i64 %i.ko, %i.kp
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !32
  %i.kr = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kb ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !3999

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !4000
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E19_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 3
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 3
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !4022

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !4023

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS8_10opDispatchIlJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKlSO_E19_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_1
begin_hunk_2_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E19_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !32
  %i.hd = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.he = mul nsw i64 %i.hd, %i.hc
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !32
  %i.hg = call noundef i64 @llvm.smin.i64(i64 %i.he, i64 %i.hf)
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !32
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !4068

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176 ; 2 uses
  %i.hi = load i64, ptr %.088143, align 8, !tbaa !32
  %i.hj = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hk = mul nsw i64 %i.hj, %i.hi
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hm = call noundef i64 @llvm.smin.i64(i64 %i.hk, i64 %i.hl)
  store i64 %i.hm, ptr %i.hh, align 8, !tbaa !32
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !tbaa !32
  %i.hr = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hs = mul nsw i64 %i.hr, %i.hq
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !32
  %i.hu = call noundef i64 @llvm.smin.i64(i64 %i.hs, i64 %i.ht)
  store i64 %i.hu, ptr %i.hp, align 8, !tbaa !32
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !4069

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load i64, ptr %.088143.epil.init, align 8, !tbaa !32
  %i.hy = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hz = mul nsw i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.ib = call noundef i64 @llvm.smin.i64(i64 %i.hz, i64 %i.ia)
  store i64 %i.ib, ptr %i.hw, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !4070

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.an, align 8, !tbaa !4085, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.ao, align 8, !tbaa !4086, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.al, align 8, !tbaa !4083, !nonnull !138, !align !163 ; 2 uses
  %i.ih = load ptr, ptr %i.am, align 8, !tbaa !4084, !nonnull !138, !align !163 ; 2 uses
  %i.ii = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cb, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jo, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.cc, %.lr.ph129 ], [ %i.jm, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.ik = load i64, ptr %.092125.epil.init, align 8, !tbaa !32
  %i.il = load i64, ptr %.093124.epil.init, align 8, !tbaa !32
  %i.im = call noundef i64 @llvm.smin.i64(i64 %i.ik, i64 %i.il)
  %i.in = load i64, ptr %i.if, align 8, !tbaa !32
  %i.io = mul nsw i64 %i.in, %i.im
  store i64 %i.io, ptr %.091126.epil.init, align 8, !tbaa !32
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ap, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ip = load ptr, ptr %0, align 8, !tbaa !4076, !nonnull !138, !align !163
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !58
  %i.ir = load ptr, ptr %i.ao, align 8, !tbaa !4086, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.is = icmp eq i32 %i.ii, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cb, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jo, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.cc, %.lr.ph129.new ], [ %i.jm, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.it = load i64, ptr %.092125, align 8, !tbaa !32
  %i.iu = load i64, ptr %.093124, align 8, !tbaa !32
  %i.iv = call noundef i64 @llvm.smin.i64(i64 %i.it, i64 %i.iu)
  %i.iw = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ix = mul nsw i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %.091126, align 8, !tbaa !32
  %i.iy = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !32
  %i.jf = load i64, ptr %i.jb, align 8, !tbaa !32
  %i.jg = call noundef i64 @llvm.smin.i64(i64 %i.je, i64 %i.jf)
  %i.jh = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ji = mul nsw i64 %i.jh, %i.jg
  store i64 %i.ji, ptr %i.iz, align 8, !tbaa !32
  %i.jj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jj ; 2 uses
  %i.jl = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jn ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !4071

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kd, %.lr.ph135 ], [ %i.kt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jp = load i64, ptr %.083132.epil.init, align 8, !tbaa !32
  %i.jq = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.jr = mul nsw i64 %i.jq, %i.jp
  %i.js = load i64, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.jt = call noundef i64 @llvm.smin.i64(i64 %i.jr, i64 %i.js)
  store i64 %i.jt, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.ju = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.ju
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jv, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !4072

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cb, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv.next167
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !131
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  %i.kb = lshr i64 %i.ka, 3                       ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !141 ; 2 uses
  br i1 %i.is, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.kt, %.lr.ph135.new ], [ %i.kd, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ks, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ke = load i64, ptr %.083132, align 8, !tbaa !32
  %i.kf = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.kg = mul nsw i64 %i.kf, %i.ke
  %i.kh = load i64, ptr %.2131, align 8, !tbaa !32
  %i.ki = call noundef i64 @llvm.smin.i64(i64 %i.kg, i64 %i.kh)
  store i64 %i.ki, ptr %.2131, align 8, !tbaa !32
  %i.kj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kb ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.ko = mul nsw i64 %i.kn, %i.km
  %i.kp = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.kq = call noundef i64 @llvm.smin.i64(i64 %i.ko, i64 %i.kp)
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !32
  %i.kr = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kb ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !4073

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !4074
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E20_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 3
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 3
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !4096

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !4097

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS8_10opDispatchIlJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKlSO_E20_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_2
begin_hunk_3_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIlZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E20_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !32
  %i.hd = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.he = mul nsw i64 %i.hd, %i.hc
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !32
  %i.hg = add nsw i64 %i.he, %i.hf
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !32
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !4143

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176 ; 2 uses
  %i.hi = load i64, ptr %.088143, align 8, !tbaa !32
  %i.hj = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hk = mul nsw i64 %i.hj, %i.hi
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hm = add nsw i64 %i.hk, %i.hl
  store i64 %i.hm, ptr %i.hh, align 8, !tbaa !32
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !tbaa !32
  %i.hr = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hs = mul nsw i64 %i.hr, %i.hq
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !32
  %i.hu = add nsw i64 %i.hs, %i.ht
  store i64 %i.hu, ptr %i.hp, align 8, !tbaa !32
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !4144

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load i64, ptr %.088143.epil.init, align 8, !tbaa !32
  %i.hy = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hz = mul nsw i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.ib = add nsw i64 %i.hz, %i.ia
  store i64 %i.ib, ptr %i.hw, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !4145

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.an, align 8, !tbaa !4160, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.ao, align 8, !tbaa !4161, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.al, align 8, !tbaa !4158, !nonnull !138, !align !163 ; 2 uses
  %i.ih = load ptr, ptr %i.am, align 8, !tbaa !4159, !nonnull !138, !align !163 ; 2 uses
  %i.ii = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cb, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jo, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.cc, %.lr.ph129 ], [ %i.jm, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.ik = load i64, ptr %.093124.epil.init, align 8, !tbaa !32
  %i.il = load i64, ptr %.092125.epil.init, align 8, !tbaa !32
  %i.im = add nsw i64 %i.il, %i.ik
  %i.in = load i64, ptr %i.if, align 8, !tbaa !32
  %i.io = mul nsw i64 %i.in, %i.im
  store i64 %i.io, ptr %.091126.epil.init, align 8, !tbaa !32
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ap, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ip = load ptr, ptr %0, align 8, !tbaa !4151, !nonnull !138, !align !163
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !58
  %i.ir = load ptr, ptr %i.ao, align 8, !tbaa !4161, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.is = icmp eq i32 %i.ii, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cb, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jo, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.cc, %.lr.ph129.new ], [ %i.jm, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.it = load i64, ptr %.093124, align 8, !tbaa !32
  %i.iu = load i64, ptr %.092125, align 8, !tbaa !32
  %i.iv = add nsw i64 %i.iu, %i.it
  %i.iw = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ix = mul nsw i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %.091126, align 8, !tbaa !32
  %i.iy = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jb, align 8, !tbaa !32
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !32
  %i.jg = add nsw i64 %i.jf, %i.je
  %i.jh = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ji = mul nsw i64 %i.jh, %i.jg
  store i64 %i.ji, ptr %i.iz, align 8, !tbaa !32
  %i.jj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jj ; 2 uses
  %i.jl = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jn ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !4146

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kd, %.lr.ph135 ], [ %i.kt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jp = load i64, ptr %.083132.epil.init, align 8, !tbaa !32
  %i.jq = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.jr = mul nsw i64 %i.jq, %i.jp
  %i.js = load i64, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.jt = add nsw i64 %i.jr, %i.js
  store i64 %i.jt, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.ju = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.ju
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jv, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !4147

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cb, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv.next167
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !131
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  %i.kb = lshr i64 %i.ka, 3                       ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !141 ; 2 uses
  br i1 %i.is, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.kt, %.lr.ph135.new ], [ %i.kd, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ks, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ke = load i64, ptr %.083132, align 8, !tbaa !32
  %i.kf = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.kg = mul nsw i64 %i.kf, %i.ke
  %i.kh = load i64, ptr %.2131, align 8, !tbaa !32
  %i.ki = add nsw i64 %i.kg, %i.kh
  store i64 %i.ki, ptr %.2131, align 8, !tbaa !32
  %i.kj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kb ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.ko = mul nsw i64 %i.kn, %i.km
  %i.kp = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.kq = add nsw i64 %i.ko, %i.kp
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !32
  %i.kr = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kb ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !4148

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !4149
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIfbZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIfbZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIfbZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E0_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIfbZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E0_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIfbZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E1_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
end_hunk_3
begin_hunk_4_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E14_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.hm = load float, ptr %i.gf, align 4, !tbaa !14
  %i.hn = fmul float %i.hl, %i.hm                 ; 2 uses
  %i.ho = load float, ptr %i.hj, align 4, !tbaa !14 ; 2 uses
  %i.hp = fcmp olt float %i.ho, %i.hn
  %i.hq = select i1 %i.hp, float %i.hn, float %i.ho
  store float %i.hq, ptr %i.hj, align 4, !tbaa !14
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !5309

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.ih, %.lr.ph145.new ], [ %i.gc, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176 ; 2 uses
  %i.hs = load float, ptr %.088143, align 4, !tbaa !14
  %i.ht = load float, ptr %i.ge, align 4, !tbaa !14
  %i.hu = fmul float %i.hs, %i.ht                 ; 2 uses
  %i.hv = load float, ptr %i.hr, align 4, !tbaa !14 ; 2 uses
  %i.hw = fcmp olt float %i.hv, %i.hu
  %i.hx = select i1 %i.hw, float %i.hu, float %i.hv
  store float %i.hx, ptr %i.hr, align 4, !tbaa !14
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.088143, i64 %i.ga ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4 ; 2 uses
  %i.ib = load float, ptr %i.hy, align 4, !tbaa !14
  %i.ic = load float, ptr %i.ge, align 4, !tbaa !14
  %i.id = fmul float %i.ib, %i.ic                 ; 2 uses
  %i.ie = load float, ptr %i.ia, align 4, !tbaa !14 ; 2 uses
  %i.if = fcmp olt float %i.ie, %i.id
  %i.ig = select i1 %i.if, float %i.id, float %i.ie
  store float %i.ig, ptr %i.ia, align 4, !tbaa !14
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ga ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !5310

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gc, %.lr.ph145 ], [ %i.ih, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.ij = load float, ptr %.088143.epil.init, align 4, !tbaa !14
  %i.ik = load float, ptr %i.ge, align 4, !tbaa !14
  %i.il = fmul float %i.ij, %i.ik                 ; 2 uses
  %i.im = load float, ptr %i.ii, align 4, !tbaa !14 ; 2 uses
  %i.in = fcmp olt float %i.im, %i.il
  %i.io = select i1 %i.in, float %i.il, float %i.im
  store float %i.io, ptr %i.ii, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !5311

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ip = load ptr, ptr %i.ap, align 8, !tbaa !5326, !nonnull !138, !align !166
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !88 ; 8 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.is = load ptr, ptr %i.aq, align 8, !tbaa !5327, !nonnull !138, !align !166 ; 3 uses
  %i.it = load ptr, ptr %i.an, align 8, !tbaa !5324, !nonnull !138, !align !163
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !32 ; 2 uses
  %i.iv = load ptr, ptr %i.ao, align 8, !tbaa !5325, !nonnull !138, !align !163
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !32 ; 2 uses
  %i.ix = add nsw i32 %i.iq, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.iq, 1
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.iq, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jy, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.ka, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.jz, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.iq to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.iz = load float, ptr %.093124.epil.init, align 4, !tbaa !14 ; 2 uses
  %i.ja = load float, ptr %.092125.epil.init, align 4, !tbaa !14 ; 2 uses
  %i.jb = fcmp olt float %i.iz, %i.ja
  %i.jc = select i1 %i.jb, float %i.ja, float %i.iz
  %i.jd = load float, ptr %i.is, align 4, !tbaa !14
  %i.je = fmul float %i.jc, %i.jd
  store float %i.je, ptr %.091126.epil.init, align 4, !tbaa !14
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.jf = load ptr, ptr %0, align 8, !tbaa !5317, !nonnull !138, !align !163
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !58
  %i.jh = load ptr, ptr %i.aq, align 8, !tbaa !5327, !nonnull !138, !align !166 ; 3 uses
  %xtraiter275 = and i32 %i.iq, 1
  %i.ji = icmp eq i32 %i.ix, 0
  %unroll_iter279 = and i32 %i.iq, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.iq to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jy, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.ka, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.jz, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.jj = load float, ptr %.093124, align 4, !tbaa !14 ; 2 uses
  %i.jk = load float, ptr %.092125, align 4, !tbaa !14 ; 2 uses
  %i.jl = fcmp olt float %i.jj, %i.jk
  %i.jm = select i1 %i.jl, float %i.jk, float %i.jj
  %i.jn = load float, ptr %i.is, align 4, !tbaa !14
  %i.jo = fmul float %i.jm, %i.jn
  store float %i.jo, ptr %.091126, align 4, !tbaa !14
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.093124, i64 %i.iu ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.092125, i64 %i.iw ; 2 uses
  %i.js = load float, ptr %i.jq, align 4, !tbaa !14 ; 2 uses
  %i.jt = load float, ptr %i.jr, align 4, !tbaa !14 ; 2 uses
  %i.ju = fcmp olt float %i.js, %i.jt
  %i.jv = select i1 %i.ju, float %i.jt, float %i.js
  %i.jw = load float, ptr %i.is, align 4, !tbaa !14
  %i.jx = fmul float %i.jv, %i.jw
  store float %i.jx, ptr %i.jp, align 4, !tbaa !14
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.al ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.iu ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.iw ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !5312

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kp, %.lr.ph135 ], [ %i.lf, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.le, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.kb = load float, ptr %.083132.epil.init, align 4, !tbaa !14
  %i.kc = load float, ptr %i.jh, align 4, !tbaa !14
  %i.kd = fmul float %i.kb, %i.kc                 ; 2 uses
  %i.ke = load float, ptr %.2131.epil.init, align 4, !tbaa !14 ; 2 uses
  %i.kf = fcmp olt float %i.ke, %i.kd
  %i.kg = select i1 %i.kf, float %i.kd, float %i.ke
  store float %i.kg, ptr %.2131.epil.init, align 4, !tbaa !14
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.le, %..loopexit105_crit_edge.unr-lcssa ], [ %i.kh, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !5313

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv.next167
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !131
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = lshr i64 %i.km, 2                       ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ji, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.lf, %.lr.ph135.new ], [ %i.kp, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.le, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.kq = load float, ptr %.083132, align 4, !tbaa !14
  %i.kr = load float, ptr %i.jh, align 4, !tbaa !14
  %i.ks = fmul float %i.kq, %i.kr                 ; 2 uses
  %i.kt = load float, ptr %.2131, align 4, !tbaa !14 ; 2 uses
  %i.ku = fcmp olt float %i.kt, %i.ks
  %i.kv = select i1 %i.ku, float %i.ks, float %i.kt
  store float %i.kv, ptr %.2131, align 4, !tbaa !14
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.083132, i64 %i.kn ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !14
  %i.kz = load float, ptr %i.jh, align 4, !tbaa !14
  %i.la = fmul float %i.ky, %i.kz                 ; 2 uses
  %i.lb = load float, ptr %i.kw, align 4, !tbaa !14 ; 2 uses
  %i.lc = fcmp olt float %i.lb, %i.la
  %i.ld = select i1 %i.lc, float %i.la, float %i.lb
  store float %i.ld, ptr %i.kw, align 4, !tbaa !14
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.al ; 3 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.kn ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !5314

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !5315
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E15_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !14
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 2
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 2
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 2
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !5337

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !5338

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS8_10opDispatchIfJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKfSO_E15_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_4
begin_hunk_5_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E15_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !14
  %i.gw = load float, ptr %i.ga, align 4, !tbaa !14
  %i.gx = fmul float %i.gv, %i.gw
  %i.gy = load float, ptr %i.gt, align 4, !tbaa !14
  %i.gz = fadd float %i.gy, %i.gx
  store float %i.gz, ptr %i.gt, align 4, !tbaa !14
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !14
  %i.hd = load float, ptr %i.ga, align 4, !tbaa !14
  %i.he = fmul float %i.hc, %i.hd
  %i.hf = load float, ptr %i.ha, align 4, !tbaa !14
  %i.hg = fadd float %i.hf, %i.he
  store float %i.hg, ptr %i.ha, align 4, !tbaa !14
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !5385

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176 ; 2 uses
  %i.hi = load float, ptr %.088143, align 4, !tbaa !14
  %i.hj = load float, ptr %i.fz, align 4, !tbaa !14
  %i.hk = fmul float %i.hi, %i.hj
  %i.hl = load float, ptr %i.hh, align 4, !tbaa !14
  %i.hm = fadd float %i.hl, %i.hk
  store float %i.hm, ptr %i.hh, align 4, !tbaa !14
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  %i.hq = load float, ptr %i.hn, align 4, !tbaa !14
  %i.hr = load float, ptr %i.fz, align 4, !tbaa !14
  %i.hs = fmul float %i.hq, %i.hr
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !14
  %i.hu = fadd float %i.ht, %i.hs
  store float %i.hu, ptr %i.hp, align 4, !tbaa !14
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !5386

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load float, ptr %.088143.epil.init, align 4, !tbaa !14
  %i.hy = load float, ptr %i.fz, align 4, !tbaa !14
  %i.hz = fmul float %i.hx, %i.hy
  %i.ia = load float, ptr %i.hw, align 4, !tbaa !14
  %i.ib = fadd float %i.ia, %i.hz
  store float %i.ib, ptr %i.hw, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !5387

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.ap, align 8, !tbaa !5402, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.aq, align 8, !tbaa !5403, !nonnull !138, !align !166 ; 3 uses
  %i.ig = load ptr, ptr %i.an, align 8, !tbaa !5400, !nonnull !138, !align !163
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !32 ; 2 uses
  %i.ii = load ptr, ptr %i.ao, align 8, !tbaa !5401, !nonnull !138, !align !163
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !32 ; 2 uses
  %i.ik = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.ji, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.jj, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.im = load float, ptr %.093124.epil.init, align 4, !tbaa !14
  %i.in = load float, ptr %.092125.epil.init, align 4, !tbaa !14
  %i.io = fadd float %i.im, %i.in
  %i.ip = load float, ptr %i.if, align 4, !tbaa !14
  %i.iq = fmul float %i.io, %i.ip
  store float %i.iq, ptr %.091126.epil.init, align 4, !tbaa !14
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ir = load ptr, ptr %0, align 8, !tbaa !5393, !nonnull !138, !align !163
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !58
  %i.it = load ptr, ptr %i.aq, align 8, !tbaa !5403, !nonnull !138, !align !166 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.iu = icmp eq i32 %i.ik, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.ji, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.jj, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.iv = load float, ptr %.093124, align 4, !tbaa !14
  %i.iw = load float, ptr %.092125, align 4, !tbaa !14
  %i.ix = fadd float %i.iv, %i.iw
  %i.iy = load float, ptr %i.if, align 4, !tbaa !14
  %i.iz = fmul float %i.ix, %i.iy
  store float %i.iz, ptr %.091126, align 4, !tbaa !14
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.093124, i64 %i.ih ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.092125, i64 %i.ij ; 2 uses
  %i.jd = load float, ptr %i.jb, align 4, !tbaa !14
  %i.je = load float, ptr %i.jc, align 4, !tbaa !14
  %i.jf = fadd float %i.jd, %i.je
  %i.jg = load float, ptr %i.if, align 4, !tbaa !14
  %i.jh = fmul float %i.jf, %i.jg
  store float %i.jh, ptr %i.ja, align 4, !tbaa !14
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.al ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.ih ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.ij ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !5388

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.jy, %.lr.ph135 ], [ %i.km, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.kl, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jl = load float, ptr %.083132.epil.init, align 4, !tbaa !14
  %i.jm = load float, ptr %i.it, align 4, !tbaa !14
  %i.jn = fmul float %i.jl, %i.jm
  %i.jo = load float, ptr %.2131.epil.init, align 4, !tbaa !14
  %i.jp = fadd float %i.jo, %i.jn
  store float %i.jp, ptr %.2131.epil.init, align 4, !tbaa !14
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.kl, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jq, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !5389

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %indvars.iv.next167
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !131
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !32
  %i.jw = lshr i64 %i.jv, 2                       ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !141 ; 2 uses
  br i1 %i.iu, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.km, %.lr.ph135.new ], [ %i.jy, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.kl, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.jz = load float, ptr %.083132, align 4, !tbaa !14
  %i.ka = load float, ptr %i.it, align 4, !tbaa !14
  %i.kb = fmul float %i.jz, %i.ka
  %i.kc = load float, ptr %.2131, align 4, !tbaa !14
  %i.kd = fadd float %i.kc, %i.kb
  store float %i.kd, ptr %.2131, align 4, !tbaa !14
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.083132, i64 %i.jw ; 2 uses
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !14
  %i.kh = load float, ptr %i.it, align 4, !tbaa !14
  %i.ki = fmul float %i.kg, %i.kh
  %i.kj = load float, ptr %i.ke, align 4, !tbaa !14
  %i.kk = fadd float %i.kj, %i.ki
  store float %i.kk, ptr %i.ke, align 4, !tbaa !14
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.al ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.jw ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !5390

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !5391
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E16_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !14
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 2
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 2
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 2
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !5413

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !5414

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS8_10opDispatchIfJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKfSO_E16_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_5
begin_hunk_6_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E16_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.hm = load float, ptr %i.gf, align 4, !tbaa !14
  %i.hn = fmul float %i.hl, %i.hm                 ; 2 uses
  %i.ho = load float, ptr %i.hj, align 4, !tbaa !14 ; 2 uses
  %i.hp = fcmp olt float %i.hn, %i.ho
  %i.hq = select i1 %i.hp, float %i.hn, float %i.ho
  store float %i.hq, ptr %i.hj, align 4, !tbaa !14
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !5459

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.ih, %.lr.ph145.new ], [ %i.gc, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176 ; 2 uses
  %i.hs = load float, ptr %.088143, align 4, !tbaa !14
  %i.ht = load float, ptr %i.ge, align 4, !tbaa !14
  %i.hu = fmul float %i.hs, %i.ht                 ; 2 uses
  %i.hv = load float, ptr %i.hr, align 4, !tbaa !14 ; 2 uses
  %i.hw = fcmp olt float %i.hu, %i.hv
  %i.hx = select i1 %i.hw, float %i.hu, float %i.hv
  store float %i.hx, ptr %i.hr, align 4, !tbaa !14
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.088143, i64 %i.ga ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4 ; 2 uses
  %i.ib = load float, ptr %i.hy, align 4, !tbaa !14
  %i.ic = load float, ptr %i.ge, align 4, !tbaa !14
  %i.id = fmul float %i.ib, %i.ic                 ; 2 uses
  %i.ie = load float, ptr %i.ia, align 4, !tbaa !14 ; 2 uses
  %i.if = fcmp olt float %i.id, %i.ie
  %i.ig = select i1 %i.if, float %i.id, float %i.ie
  store float %i.ig, ptr %i.ia, align 4, !tbaa !14
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ga ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !5460

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gc, %.lr.ph145 ], [ %i.ih, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.ij = load float, ptr %.088143.epil.init, align 4, !tbaa !14
  %i.ik = load float, ptr %i.ge, align 4, !tbaa !14
  %i.il = fmul float %i.ij, %i.ik                 ; 2 uses
  %i.im = load float, ptr %i.ii, align 4, !tbaa !14 ; 2 uses
  %i.in = fcmp olt float %i.il, %i.im
  %i.io = select i1 %i.in, float %i.il, float %i.im
  store float %i.io, ptr %i.ii, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !5461

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ip = load ptr, ptr %i.ap, align 8, !tbaa !5476, !nonnull !138, !align !166
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !88 ; 8 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.is = load ptr, ptr %i.aq, align 8, !tbaa !5477, !nonnull !138, !align !166 ; 3 uses
  %i.it = load ptr, ptr %i.an, align 8, !tbaa !5474, !nonnull !138, !align !163
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !32 ; 2 uses
  %i.iv = load ptr, ptr %i.ao, align 8, !tbaa !5475, !nonnull !138, !align !163
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !32 ; 2 uses
  %i.ix = add nsw i32 %i.iq, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.iq, 1
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.iq, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jy, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.ka, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.jz, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.iq to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.iz = load float, ptr %.092125.epil.init, align 4, !tbaa !14 ; 2 uses
  %i.ja = load float, ptr %.093124.epil.init, align 4, !tbaa !14 ; 2 uses
  %i.jb = fcmp olt float %i.iz, %i.ja
  %i.jc = select i1 %i.jb, float %i.iz, float %i.ja
  %i.jd = load float, ptr %i.is, align 4, !tbaa !14
  %i.je = fmul float %i.jc, %i.jd
  store float %i.je, ptr %.091126.epil.init, align 4, !tbaa !14
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.jf = load ptr, ptr %0, align 8, !tbaa !5467, !nonnull !138, !align !163
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !58
  %i.jh = load ptr, ptr %i.aq, align 8, !tbaa !5477, !nonnull !138, !align !166 ; 3 uses
  %xtraiter275 = and i32 %i.iq, 1
  %i.ji = icmp eq i32 %i.ix, 0
  %unroll_iter279 = and i32 %i.iq, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.iq to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jy, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.ka, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.jz, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.jj = load float, ptr %.092125, align 4, !tbaa !14 ; 2 uses
  %i.jk = load float, ptr %.093124, align 4, !tbaa !14 ; 2 uses
  %i.jl = fcmp olt float %i.jj, %i.jk
  %i.jm = select i1 %i.jl, float %i.jj, float %i.jk
  %i.jn = load float, ptr %i.is, align 4, !tbaa !14
  %i.jo = fmul float %i.jm, %i.jn
  store float %i.jo, ptr %.091126, align 4, !tbaa !14
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.093124, i64 %i.iu ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.092125, i64 %i.iw ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !14 ; 2 uses
  %i.jt = load float, ptr %i.jq, align 4, !tbaa !14 ; 2 uses
  %i.ju = fcmp olt float %i.js, %i.jt
  %i.jv = select i1 %i.ju, float %i.js, float %i.jt
  %i.jw = load float, ptr %i.is, align 4, !tbaa !14
  %i.jx = fmul float %i.jv, %i.jw
  store float %i.jx, ptr %i.jp, align 4, !tbaa !14
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.al ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.iu ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.iw ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !5462

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kp, %.lr.ph135 ], [ %i.lf, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.le, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.kb = load float, ptr %.083132.epil.init, align 4, !tbaa !14
  %i.kc = load float, ptr %i.jh, align 4, !tbaa !14
  %i.kd = fmul float %i.kb, %i.kc                 ; 2 uses
  %i.ke = load float, ptr %.2131.epil.init, align 4, !tbaa !14 ; 2 uses
  %i.kf = fcmp olt float %i.kd, %i.ke
  %i.kg = select i1 %i.kf, float %i.kd, float %i.ke
  store float %i.kg, ptr %.2131.epil.init, align 4, !tbaa !14
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.le, %..loopexit105_crit_edge.unr-lcssa ], [ %i.kh, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !5463

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv.next167
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !131
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = lshr i64 %i.km, 2                       ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ji, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.lf, %.lr.ph135.new ], [ %i.kp, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.le, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.kq = load float, ptr %.083132, align 4, !tbaa !14
  %i.kr = load float, ptr %i.jh, align 4, !tbaa !14
  %i.ks = fmul float %i.kq, %i.kr                 ; 2 uses
  %i.kt = load float, ptr %.2131, align 4, !tbaa !14 ; 2 uses
  %i.ku = fcmp olt float %i.ks, %i.kt
  %i.kv = select i1 %i.ku, float %i.ks, float %i.kt
  store float %i.kv, ptr %.2131, align 4, !tbaa !14
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.083132, i64 %i.kn ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !14
  %i.kz = load float, ptr %i.jh, align 4, !tbaa !14
  %i.la = fmul float %i.ky, %i.kz                 ; 2 uses
  %i.lb = load float, ptr %i.kw, align 4, !tbaa !14 ; 2 uses
  %i.lc = fcmp olt float %i.la, %i.lb
  %i.ld = select i1 %i.lc, float %i.la, float %i.lb
  store float %i.ld, ptr %i.kw, align 4, !tbaa !14
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.al ; 3 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.kn ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !5464

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !5465
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E17_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !14
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 2
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 2
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 2
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !5487

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !5488

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS8_10opDispatchIfJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKfSO_E17_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_6
begin_hunk_7_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIfZNS1_10opDispatchIfJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKfSH_E17_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !14
  %i.gw = load float, ptr %i.ga, align 4, !tbaa !14
  %i.gx = fmul float %i.gv, %i.gw
  %i.gy = load float, ptr %i.gt, align 4, !tbaa !14
  %i.gz = fadd float %i.gy, %i.gx
  store float %i.gz, ptr %i.gt, align 4, !tbaa !14
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !14
  %i.hd = load float, ptr %i.ga, align 4, !tbaa !14
  %i.he = fmul float %i.hc, %i.hd
  %i.hf = load float, ptr %i.ha, align 4, !tbaa !14
  %i.hg = fadd float %i.hf, %i.he
  store float %i.hg, ptr %i.ha, align 4, !tbaa !14
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !5535

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176 ; 2 uses
  %i.hi = load float, ptr %.088143, align 4, !tbaa !14
  %i.hj = load float, ptr %i.fz, align 4, !tbaa !14
  %i.hk = fmul float %i.hi, %i.hj
  %i.hl = load float, ptr %i.hh, align 4, !tbaa !14
  %i.hm = fadd float %i.hl, %i.hk
  store float %i.hm, ptr %i.hh, align 4, !tbaa !14
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  %i.hq = load float, ptr %i.hn, align 4, !tbaa !14
  %i.hr = load float, ptr %i.fz, align 4, !tbaa !14
  %i.hs = fmul float %i.hq, %i.hr
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !14
  %i.hu = fadd float %i.ht, %i.hs
  store float %i.hu, ptr %i.hp, align 4, !tbaa !14
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !5536

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load float, ptr %.088143.epil.init, align 4, !tbaa !14
  %i.hy = load float, ptr %i.fz, align 4, !tbaa !14
  %i.hz = fmul float %i.hx, %i.hy
  %i.ia = load float, ptr %i.hw, align 4, !tbaa !14
  %i.ib = fadd float %i.ia, %i.hz
  store float %i.ib, ptr %i.hw, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !5537

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.ap, align 8, !tbaa !5552, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.aq, align 8, !tbaa !5553, !nonnull !138, !align !166 ; 3 uses
  %i.ig = load ptr, ptr %i.an, align 8, !tbaa !5550, !nonnull !138, !align !163
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !32 ; 2 uses
  %i.ii = load ptr, ptr %i.ao, align 8, !tbaa !5551, !nonnull !138, !align !163
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !32 ; 2 uses
  %i.ik = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.ji, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.jj, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.im = load float, ptr %.093124.epil.init, align 4, !tbaa !14
  %i.in = load float, ptr %.092125.epil.init, align 4, !tbaa !14
  %i.io = fadd float %i.im, %i.in
  %i.ip = load float, ptr %i.if, align 4, !tbaa !14
  %i.iq = fmul float %i.io, %i.ip
  store float %i.iq, ptr %.091126.epil.init, align 4, !tbaa !14
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ir = load ptr, ptr %0, align 8, !tbaa !5543, !nonnull !138, !align !163
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !58
  %i.it = load ptr, ptr %i.aq, align 8, !tbaa !5553, !nonnull !138, !align !166 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.iu = icmp eq i32 %i.ik, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.ji, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.jj, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.iv = load float, ptr %.093124, align 4, !tbaa !14
  %i.iw = load float, ptr %.092125, align 4, !tbaa !14
  %i.ix = fadd float %i.iv, %i.iw
  %i.iy = load float, ptr %i.if, align 4, !tbaa !14
  %i.iz = fmul float %i.ix, %i.iy
  store float %i.iz, ptr %.091126, align 4, !tbaa !14
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.093124, i64 %i.ih ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.092125, i64 %i.ij ; 2 uses
  %i.jd = load float, ptr %i.jb, align 4, !tbaa !14
  %i.je = load float, ptr %i.jc, align 4, !tbaa !14
  %i.jf = fadd float %i.jd, %i.je
  %i.jg = load float, ptr %i.if, align 4, !tbaa !14
  %i.jh = fmul float %i.jf, %i.jg
  store float %i.jh, ptr %i.ja, align 4, !tbaa !14
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.al ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.ih ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.ij ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !5538

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.jy, %.lr.ph135 ], [ %i.km, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.kl, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jl = load float, ptr %.083132.epil.init, align 4, !tbaa !14
  %i.jm = load float, ptr %i.it, align 4, !tbaa !14
  %i.jn = fmul float %i.jl, %i.jm
  %i.jo = load float, ptr %.2131.epil.init, align 4, !tbaa !14
  %i.jp = fadd float %i.jo, %i.jn
  store float %i.jp, ptr %.2131.epil.init, align 4, !tbaa !14
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.kl, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jq, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !5539

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %indvars.iv.next167
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !131
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !32
  %i.jw = lshr i64 %i.jv, 2                       ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !141 ; 2 uses
  br i1 %i.iu, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.km, %.lr.ph135.new ], [ %i.jy, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.kl, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.jz = load float, ptr %.083132, align 4, !tbaa !14
  %i.ka = load float, ptr %i.it, align 4, !tbaa !14
  %i.kb = fmul float %i.jz, %i.ka
  %i.kc = load float, ptr %.2131, align 4, !tbaa !14
  %i.kd = fadd float %i.kc, %i.kb
  store float %i.kd, ptr %.2131, align 4, !tbaa !14
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.083132, i64 %i.jw ; 2 uses
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !14
  %i.kh = load float, ptr %i.it, align 4, !tbaa !14
  %i.ki = fmul float %i.kg, %i.kh
  %i.kj = load float, ptr %i.ke, align 4, !tbaa !14
  %i.kk = fadd float %i.kj, %i.ki
  store float %i.kk, ptr %i.ke, align 4, !tbaa !14
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.al ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.jw ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !5540

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !5541
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIdbZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIdbZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIdbZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E0_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIdbZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E0_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIdbZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E1_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
end_hunk_7
begin_hunk_8_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E14_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.hm = load double, ptr %i.gf, align 8, !tbaa !208
  %i.hn = fmul double %i.hl, %i.hm                ; 2 uses
  %i.ho = load double, ptr %i.hj, align 8, !tbaa !208 ; 2 uses
  %i.hp = fcmp olt double %i.ho, %i.hn
  %i.hq = select i1 %i.hp, double %i.hn, double %i.ho
  store double %i.hq, ptr %i.hj, align 8, !tbaa !208
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !6236

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.ih, %.lr.ph145.new ], [ %i.gc, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176 ; 2 uses
  %i.hs = load double, ptr %.088143, align 8, !tbaa !208
  %i.ht = load double, ptr %i.ge, align 8, !tbaa !208
  %i.hu = fmul double %i.hs, %i.ht                ; 2 uses
  %i.hv = load double, ptr %i.hr, align 8, !tbaa !208 ; 2 uses
  %i.hw = fcmp olt double %i.hv, %i.hu
  %i.hx = select i1 %i.hw, double %i.hu, double %i.hv
  store double %i.hx, ptr %i.hr, align 8, !tbaa !208
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.ga ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ib = load double, ptr %i.hy, align 8, !tbaa !208
  %i.ic = load double, ptr %i.ge, align 8, !tbaa !208
  %i.id = fmul double %i.ib, %i.ic                ; 2 uses
  %i.ie = load double, ptr %i.ia, align 8, !tbaa !208 ; 2 uses
  %i.if = fcmp olt double %i.ie, %i.id
  %i.ig = select i1 %i.if, double %i.id, double %i.ie
  store double %i.ig, ptr %i.ia, align 8, !tbaa !208
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ga ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !6237

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gc, %.lr.ph145 ], [ %i.ih, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.ij = load double, ptr %.088143.epil.init, align 8, !tbaa !208
  %i.ik = load double, ptr %i.ge, align 8, !tbaa !208
  %i.il = fmul double %i.ij, %i.ik                ; 2 uses
  %i.im = load double, ptr %i.ii, align 8, !tbaa !208 ; 2 uses
  %i.in = fcmp olt double %i.im, %i.il
  %i.io = select i1 %i.in, double %i.il, double %i.im
  store double %i.io, ptr %i.ii, align 8, !tbaa !208
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !6238

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ip = load ptr, ptr %i.ap, align 8, !tbaa !6253, !nonnull !138, !align !166
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !88 ; 8 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.is = load ptr, ptr %i.aq, align 8, !tbaa !6254, !nonnull !138, !align !163 ; 3 uses
  %i.it = load ptr, ptr %i.an, align 8, !tbaa !6251, !nonnull !138, !align !163
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !32 ; 2 uses
  %i.iv = load ptr, ptr %i.ao, align 8, !tbaa !6252, !nonnull !138, !align !163
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !32 ; 2 uses
  %i.ix = add nsw i32 %i.iq, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.iq, 1
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.iq, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jy, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.ka, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.jz, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.iq to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.iz = load double, ptr %.093124.epil.init, align 8, !tbaa !208 ; 2 uses
  %i.ja = load double, ptr %.092125.epil.init, align 8, !tbaa !208 ; 2 uses
  %i.jb = fcmp olt double %i.iz, %i.ja
  %i.jc = select i1 %i.jb, double %i.ja, double %i.iz
  %i.jd = load double, ptr %i.is, align 8, !tbaa !208
  %i.je = fmul double %i.jc, %i.jd
  store double %i.je, ptr %.091126.epil.init, align 8, !tbaa !208
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.jf = load ptr, ptr %0, align 8, !tbaa !6244, !nonnull !138, !align !163
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !58
  %i.jh = load ptr, ptr %i.aq, align 8, !tbaa !6254, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.iq, 1
  %i.ji = icmp eq i32 %i.ix, 0
  %unroll_iter279 = and i32 %i.iq, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.iq to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jy, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.ka, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.jz, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.jj = load double, ptr %.093124, align 8, !tbaa !208 ; 2 uses
  %i.jk = load double, ptr %.092125, align 8, !tbaa !208 ; 2 uses
  %i.jl = fcmp olt double %i.jj, %i.jk
  %i.jm = select i1 %i.jl, double %i.jk, double %i.jj
  %i.jn = load double, ptr %i.is, align 8, !tbaa !208
  %i.jo = fmul double %i.jm, %i.jn
  store double %i.jo, ptr %.091126, align 8, !tbaa !208
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.iu ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.iw ; 2 uses
  %i.js = load double, ptr %i.jq, align 8, !tbaa !208 ; 2 uses
  %i.jt = load double, ptr %i.jr, align 8, !tbaa !208 ; 2 uses
  %i.ju = fcmp olt double %i.js, %i.jt
  %i.jv = select i1 %i.ju, double %i.jt, double %i.js
  %i.jw = load double, ptr %i.is, align 8, !tbaa !208
  %i.jx = fmul double %i.jv, %i.jw
  store double %i.jx, ptr %i.jp, align 8, !tbaa !208
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.al ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.iu ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.iw ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !6239

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kp, %.lr.ph135 ], [ %i.lf, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.le, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.kb = load double, ptr %.083132.epil.init, align 8, !tbaa !208
  %i.kc = load double, ptr %i.jh, align 8, !tbaa !208
  %i.kd = fmul double %i.kb, %i.kc                ; 2 uses
  %i.ke = load double, ptr %.2131.epil.init, align 8, !tbaa !208 ; 2 uses
  %i.kf = fcmp olt double %i.ke, %i.kd
  %i.kg = select i1 %i.kf, double %i.kd, double %i.ke
  store double %i.kg, ptr %.2131.epil.init, align 8, !tbaa !208
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.le, %..loopexit105_crit_edge.unr-lcssa ], [ %i.kh, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !6240

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv.next167
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !131
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = lshr i64 %i.km, 3                       ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ji, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.lf, %.lr.ph135.new ], [ %i.kp, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.le, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.kq = load double, ptr %.083132, align 8, !tbaa !208
  %i.kr = load double, ptr %i.jh, align 8, !tbaa !208
  %i.ks = fmul double %i.kq, %i.kr                ; 2 uses
  %i.kt = load double, ptr %.2131, align 8, !tbaa !208 ; 2 uses
  %i.ku = fcmp olt double %i.kt, %i.ks
  %i.kv = select i1 %i.ku, double %i.ks, double %i.kt
  store double %i.kv, ptr %.2131, align 8, !tbaa !208
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kn ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !208
  %i.kz = load double, ptr %i.jh, align 8, !tbaa !208
  %i.la = fmul double %i.ky, %i.kz                ; 2 uses
  %i.lb = load double, ptr %i.kw, align 8, !tbaa !208 ; 2 uses
  %i.lc = fcmp olt double %i.lb, %i.la
  %i.ld = select i1 %i.lc, double %i.la, double %i.lb
  store double %i.ld, ptr %i.kw, align 8, !tbaa !208
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.al ; 3 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kn ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !6241

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !6242
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E15_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store double %2, ptr %i.a, align 8, !tbaa !208
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 3
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 3
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !6264

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !6265

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS8_10opDispatchIdJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKdSO_E15_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_8
begin_hunk_9_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E15_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !208
  %i.gw = load double, ptr %i.ga, align 8, !tbaa !208
  %i.gx = fmul double %i.gv, %i.gw
  %i.gy = load double, ptr %i.gt, align 8, !tbaa !208
  %i.gz = fadd double %i.gy, %i.gx
  store double %i.gz, ptr %i.gt, align 8, !tbaa !208
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !208
  %i.hd = load double, ptr %i.ga, align 8, !tbaa !208
  %i.he = fmul double %i.hc, %i.hd
  %i.hf = load double, ptr %i.ha, align 8, !tbaa !208
  %i.hg = fadd double %i.hf, %i.he
  store double %i.hg, ptr %i.ha, align 8, !tbaa !208
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !6312

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176 ; 2 uses
  %i.hi = load double, ptr %.088143, align 8, !tbaa !208
  %i.hj = load double, ptr %i.fz, align 8, !tbaa !208
  %i.hk = fmul double %i.hi, %i.hj
  %i.hl = load double, ptr %i.hh, align 8, !tbaa !208
  %i.hm = fadd double %i.hl, %i.hk
  store double %i.hm, ptr %i.hh, align 8, !tbaa !208
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load double, ptr %i.hn, align 8, !tbaa !208
  %i.hr = load double, ptr %i.fz, align 8, !tbaa !208
  %i.hs = fmul double %i.hq, %i.hr
  %i.ht = load double, ptr %i.hp, align 8, !tbaa !208
  %i.hu = fadd double %i.ht, %i.hs
  store double %i.hu, ptr %i.hp, align 8, !tbaa !208
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !6313

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load double, ptr %.088143.epil.init, align 8, !tbaa !208
  %i.hy = load double, ptr %i.fz, align 8, !tbaa !208
  %i.hz = fmul double %i.hx, %i.hy
  %i.ia = load double, ptr %i.hw, align 8, !tbaa !208
  %i.ib = fadd double %i.ia, %i.hz
  store double %i.ib, ptr %i.hw, align 8, !tbaa !208
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !6314

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.ap, align 8, !tbaa !6329, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.aq, align 8, !tbaa !6330, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.an, align 8, !tbaa !6327, !nonnull !138, !align !163
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !32 ; 2 uses
  %i.ii = load ptr, ptr %i.ao, align 8, !tbaa !6328, !nonnull !138, !align !163
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !32 ; 2 uses
  %i.ik = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.ji, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.jj, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.im = load double, ptr %.093124.epil.init, align 8, !tbaa !208
  %i.in = load double, ptr %.092125.epil.init, align 8, !tbaa !208
  %i.io = fadd double %i.im, %i.in
  %i.ip = load double, ptr %i.if, align 8, !tbaa !208
  %i.iq = fmul double %i.io, %i.ip
  store double %i.iq, ptr %.091126.epil.init, align 8, !tbaa !208
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ir = load ptr, ptr %0, align 8, !tbaa !6320, !nonnull !138, !align !163
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !58
  %i.it = load ptr, ptr %i.aq, align 8, !tbaa !6330, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.iu = icmp eq i32 %i.ik, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.ji, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.jj, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.iv = load double, ptr %.093124, align 8, !tbaa !208
  %i.iw = load double, ptr %.092125, align 8, !tbaa !208
  %i.ix = fadd double %i.iv, %i.iw
  %i.iy = load double, ptr %i.if, align 8, !tbaa !208
  %i.iz = fmul double %i.ix, %i.iy
  store double %i.iz, ptr %.091126, align 8, !tbaa !208
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ih ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.ij ; 2 uses
  %i.jd = load double, ptr %i.jb, align 8, !tbaa !208
  %i.je = load double, ptr %i.jc, align 8, !tbaa !208
  %i.jf = fadd double %i.jd, %i.je
  %i.jg = load double, ptr %i.if, align 8, !tbaa !208
  %i.jh = fmul double %i.jf, %i.jg
  store double %i.jh, ptr %i.ja, align 8, !tbaa !208
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.al ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ih ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.ij ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !6315

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.jy, %.lr.ph135 ], [ %i.km, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.kl, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jl = load double, ptr %.083132.epil.init, align 8, !tbaa !208
  %i.jm = load double, ptr %i.it, align 8, !tbaa !208
  %i.jn = fmul double %i.jl, %i.jm
  %i.jo = load double, ptr %.2131.epil.init, align 8, !tbaa !208
  %i.jp = fadd double %i.jo, %i.jn
  store double %i.jp, ptr %.2131.epil.init, align 8, !tbaa !208
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.kl, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jq, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !6316

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %indvars.iv.next167
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !131
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !32
  %i.jw = lshr i64 %i.jv, 3                       ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !141 ; 2 uses
  br i1 %i.iu, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.km, %.lr.ph135.new ], [ %i.jy, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.kl, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.jz = load double, ptr %.083132, align 8, !tbaa !208
  %i.ka = load double, ptr %i.it, align 8, !tbaa !208
  %i.kb = fmul double %i.jz, %i.ka
  %i.kc = load double, ptr %.2131, align 8, !tbaa !208
  %i.kd = fadd double %i.kc, %i.kb
  store double %i.kd, ptr %.2131, align 8, !tbaa !208
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.jw ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !208
  %i.kh = load double, ptr %i.it, align 8, !tbaa !208
  %i.ki = fmul double %i.kg, %i.kh
  %i.kj = load double, ptr %i.ke, align 8, !tbaa !208
  %i.kk = fadd double %i.kj, %i.ki
  store double %i.kk, ptr %i.ke, align 8, !tbaa !208
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.al ; 3 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.jw ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !6317

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !6318
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E16_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store double %2, ptr %i.a, align 8, !tbaa !208
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 3
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 3
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !6340

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !6341

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS8_10opDispatchIdJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKdSO_E16_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_9
begin_hunk_10_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E16_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.hm = load double, ptr %i.gf, align 8, !tbaa !208
  %i.hn = fmul double %i.hl, %i.hm                ; 2 uses
  %i.ho = load double, ptr %i.hj, align 8, !tbaa !208 ; 2 uses
  %i.hp = fcmp olt double %i.hn, %i.ho
  %i.hq = select i1 %i.hp, double %i.hn, double %i.ho
  store double %i.hq, ptr %i.hj, align 8, !tbaa !208
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !6386

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.ih, %.lr.ph145.new ], [ %i.gc, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176 ; 2 uses
  %i.hs = load double, ptr %.088143, align 8, !tbaa !208
  %i.ht = load double, ptr %i.ge, align 8, !tbaa !208
  %i.hu = fmul double %i.hs, %i.ht                ; 2 uses
  %i.hv = load double, ptr %i.hr, align 8, !tbaa !208 ; 2 uses
  %i.hw = fcmp olt double %i.hu, %i.hv
  %i.hx = select i1 %i.hw, double %i.hu, double %i.hv
  store double %i.hx, ptr %i.hr, align 8, !tbaa !208
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.ga ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ib = load double, ptr %i.hy, align 8, !tbaa !208
  %i.ic = load double, ptr %i.ge, align 8, !tbaa !208
  %i.id = fmul double %i.ib, %i.ic                ; 2 uses
  %i.ie = load double, ptr %i.ia, align 8, !tbaa !208 ; 2 uses
  %i.if = fcmp olt double %i.id, %i.ie
  %i.ig = select i1 %i.if, double %i.id, double %i.ie
  store double %i.ig, ptr %i.ia, align 8, !tbaa !208
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ga ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !6387

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gc, %.lr.ph145 ], [ %i.ih, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.ij = load double, ptr %.088143.epil.init, align 8, !tbaa !208
  %i.ik = load double, ptr %i.ge, align 8, !tbaa !208
  %i.il = fmul double %i.ij, %i.ik                ; 2 uses
  %i.im = load double, ptr %i.ii, align 8, !tbaa !208 ; 2 uses
  %i.in = fcmp olt double %i.il, %i.im
  %i.io = select i1 %i.in, double %i.il, double %i.im
  store double %i.io, ptr %i.ii, align 8, !tbaa !208
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !6388

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ip = load ptr, ptr %i.ap, align 8, !tbaa !6403, !nonnull !138, !align !166
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !88 ; 8 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.is = load ptr, ptr %i.aq, align 8, !tbaa !6404, !nonnull !138, !align !163 ; 3 uses
  %i.it = load ptr, ptr %i.an, align 8, !tbaa !6401, !nonnull !138, !align !163
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !32 ; 2 uses
  %i.iv = load ptr, ptr %i.ao, align 8, !tbaa !6402, !nonnull !138, !align !163
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !32 ; 2 uses
  %i.ix = add nsw i32 %i.iq, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.iq, 1
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.iq, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jy, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.ka, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.jz, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.iq to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.iz = load double, ptr %.092125.epil.init, align 8, !tbaa !208 ; 2 uses
  %i.ja = load double, ptr %.093124.epil.init, align 8, !tbaa !208 ; 2 uses
  %i.jb = fcmp olt double %i.iz, %i.ja
  %i.jc = select i1 %i.jb, double %i.iz, double %i.ja
  %i.jd = load double, ptr %i.is, align 8, !tbaa !208
  %i.je = fmul double %i.jc, %i.jd
  store double %i.je, ptr %.091126.epil.init, align 8, !tbaa !208
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.jf = load ptr, ptr %0, align 8, !tbaa !6394, !nonnull !138, !align !163
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !58
  %i.jh = load ptr, ptr %i.aq, align 8, !tbaa !6404, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.iq, 1
  %i.ji = icmp eq i32 %i.ix, 0
  %unroll_iter279 = and i32 %i.iq, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.iq to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jy, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.ka, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.jz, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.jj = load double, ptr %.092125, align 8, !tbaa !208 ; 2 uses
  %i.jk = load double, ptr %.093124, align 8, !tbaa !208 ; 2 uses
  %i.jl = fcmp olt double %i.jj, %i.jk
  %i.jm = select i1 %i.jl, double %i.jj, double %i.jk
  %i.jn = load double, ptr %i.is, align 8, !tbaa !208
  %i.jo = fmul double %i.jm, %i.jn
  store double %i.jo, ptr %.091126, align 8, !tbaa !208
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.iu ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.iw ; 2 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !208 ; 2 uses
  %i.jt = load double, ptr %i.jq, align 8, !tbaa !208 ; 2 uses
  %i.ju = fcmp olt double %i.js, %i.jt
  %i.jv = select i1 %i.ju, double %i.js, double %i.jt
  %i.jw = load double, ptr %i.is, align 8, !tbaa !208
  %i.jx = fmul double %i.jv, %i.jw
  store double %i.jx, ptr %i.jp, align 8, !tbaa !208
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.al ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.iu ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.iw ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !6389

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kp, %.lr.ph135 ], [ %i.lf, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.le, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.kb = load double, ptr %.083132.epil.init, align 8, !tbaa !208
  %i.kc = load double, ptr %i.jh, align 8, !tbaa !208
  %i.kd = fmul double %i.kb, %i.kc                ; 2 uses
  %i.ke = load double, ptr %.2131.epil.init, align 8, !tbaa !208 ; 2 uses
  %i.kf = fcmp olt double %i.kd, %i.ke
  %i.kg = select i1 %i.kf, double %i.kd, double %i.ke
  store double %i.kg, ptr %.2131.epil.init, align 8, !tbaa !208
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.le, %..loopexit105_crit_edge.unr-lcssa ], [ %i.kh, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !6390

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv.next167
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !131
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = lshr i64 %i.km, 3                       ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ji, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.lf, %.lr.ph135.new ], [ %i.kp, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.le, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.kq = load double, ptr %.083132, align 8, !tbaa !208
  %i.kr = load double, ptr %i.jh, align 8, !tbaa !208
  %i.ks = fmul double %i.kq, %i.kr                ; 2 uses
  %i.kt = load double, ptr %.2131, align 8, !tbaa !208 ; 2 uses
  %i.ku = fcmp olt double %i.ks, %i.kt
  %i.kv = select i1 %i.ku, double %i.ks, double %i.kt
  store double %i.kv, ptr %.2131, align 8, !tbaa !208
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kn ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !208
  %i.kz = load double, ptr %i.jh, align 8, !tbaa !208
  %i.la = fmul double %i.ky, %i.kz                ; 2 uses
  %i.lb = load double, ptr %i.kw, align 8, !tbaa !208 ; 2 uses
  %i.lc = fcmp olt double %i.la, %i.lb
  %i.ld = select i1 %i.lc, double %i.la, double %i.lb
  store double %i.ld, ptr %i.kw, align 8, !tbaa !208
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.al ; 3 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kn ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !6391

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !6392
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E17_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store double %2, ptr %i.a, align 8, !tbaa !208
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 3
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 3
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !6414

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !6415

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS8_10opDispatchIdJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKdSO_E17_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_10
begin_hunk_11_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIdZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E17_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !208
  %i.gw = load double, ptr %i.ga, align 8, !tbaa !208
  %i.gx = fmul double %i.gv, %i.gw
  %i.gy = load double, ptr %i.gt, align 8, !tbaa !208
  %i.gz = fadd double %i.gy, %i.gx
  store double %i.gz, ptr %i.gt, align 8, !tbaa !208
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !208
  %i.hd = load double, ptr %i.ga, align 8, !tbaa !208
  %i.he = fmul double %i.hc, %i.hd
  %i.hf = load double, ptr %i.ha, align 8, !tbaa !208
  %i.hg = fadd double %i.hf, %i.he
  store double %i.hg, ptr %i.ha, align 8, !tbaa !208
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !6462

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176 ; 2 uses
  %i.hi = load double, ptr %.088143, align 8, !tbaa !208
  %i.hj = load double, ptr %i.fz, align 8, !tbaa !208
  %i.hk = fmul double %i.hi, %i.hj
  %i.hl = load double, ptr %i.hh, align 8, !tbaa !208
  %i.hm = fadd double %i.hl, %i.hk
  store double %i.hm, ptr %i.hh, align 8, !tbaa !208
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load double, ptr %i.hn, align 8, !tbaa !208
  %i.hr = load double, ptr %i.fz, align 8, !tbaa !208
  %i.hs = fmul double %i.hq, %i.hr
  %i.ht = load double, ptr %i.hp, align 8, !tbaa !208
  %i.hu = fadd double %i.ht, %i.hs
  store double %i.hu, ptr %i.hp, align 8, !tbaa !208
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !6463

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load double, ptr %.088143.epil.init, align 8, !tbaa !208
  %i.hy = load double, ptr %i.fz, align 8, !tbaa !208
  %i.hz = fmul double %i.hx, %i.hy
  %i.ia = load double, ptr %i.hw, align 8, !tbaa !208
  %i.ib = fadd double %i.ia, %i.hz
  store double %i.ib, ptr %i.hw, align 8, !tbaa !208
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !6464

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.ap, align 8, !tbaa !6479, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.aq, align 8, !tbaa !6480, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.an, align 8, !tbaa !6477, !nonnull !138, !align !163
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !32 ; 2 uses
  %i.ii = load ptr, ptr %i.ao, align 8, !tbaa !6478, !nonnull !138, !align !163
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !32 ; 2 uses
  %i.ik = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.ji, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.jj, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.im = load double, ptr %.093124.epil.init, align 8, !tbaa !208
  %i.in = load double, ptr %.092125.epil.init, align 8, !tbaa !208
  %i.io = fadd double %i.im, %i.in
  %i.ip = load double, ptr %i.if, align 8, !tbaa !208
  %i.iq = fmul double %i.io, %i.ip
  store double %i.iq, ptr %.091126.epil.init, align 8, !tbaa !208
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ir = load ptr, ptr %0, align 8, !tbaa !6470, !nonnull !138, !align !163
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !58
  %i.it = load ptr, ptr %i.aq, align 8, !tbaa !6480, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.iu = icmp eq i32 %i.ik, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.ji, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.jj, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.iv = load double, ptr %.093124, align 8, !tbaa !208
  %i.iw = load double, ptr %.092125, align 8, !tbaa !208
  %i.ix = fadd double %i.iv, %i.iw
  %i.iy = load double, ptr %i.if, align 8, !tbaa !208
  %i.iz = fmul double %i.ix, %i.iy
  store double %i.iz, ptr %.091126, align 8, !tbaa !208
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ih ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.ij ; 2 uses
  %i.jd = load double, ptr %i.jb, align 8, !tbaa !208
  %i.je = load double, ptr %i.jc, align 8, !tbaa !208
  %i.jf = fadd double %i.jd, %i.je
  %i.jg = load double, ptr %i.if, align 8, !tbaa !208
  %i.jh = fmul double %i.jf, %i.jg
  store double %i.jh, ptr %i.ja, align 8, !tbaa !208
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.al ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ih ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.ij ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !6465

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.jy, %.lr.ph135 ], [ %i.km, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.kl, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jl = load double, ptr %.083132.epil.init, align 8, !tbaa !208
  %i.jm = load double, ptr %i.it, align 8, !tbaa !208
  %i.jn = fmul double %i.jl, %i.jm
  %i.jo = load double, ptr %.2131.epil.init, align 8, !tbaa !208
  %i.jp = fadd double %i.jo, %i.jn
  store double %i.jp, ptr %.2131.epil.init, align 8, !tbaa !208
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.kl, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jq, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !6466

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %indvars.iv.next167
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !131
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !32
  %i.jw = lshr i64 %i.jv, 3                       ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !141 ; 2 uses
  br i1 %i.iu, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.km, %.lr.ph135.new ], [ %i.jy, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.kl, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.jz = load double, ptr %.083132, align 8, !tbaa !208
  %i.ka = load double, ptr %i.it, align 8, !tbaa !208
  %i.kb = fmul double %i.jz, %i.ka
  %i.kc = load double, ptr %.2131, align 8, !tbaa !208
  %i.kd = fadd double %i.kc, %i.kb
  store double %i.kd, ptr %.2131, align 8, !tbaa !208
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.jw ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !208
  %i.kh = load double, ptr %i.it, align 8, !tbaa !208
  %i.ki = fmul double %i.kg, %i.kh
  %i.kj = load double, ptr %i.ke, align 8, !tbaa !208
  %i.kk = fadd double %i.kj, %i.ki
  store double %i.kk, ptr %i.ke, align 8, !tbaa !208
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.al ; 3 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.jw ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !6467

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !6468
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIsbZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIsbZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIsbZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E0_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIsbZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E0_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIsbZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E1_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
end_hunk_11
begin_hunk_12_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E17_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.if = trunc nsw i32 %i.ie to i16
  %i.ig = load i16, ptr %i.hx, align 2, !tbaa !218
  %i.ih = call noundef i16 @llvm.smax.i16(i16 %i.ig, i16 %i.if)
  store i16 %i.ih, ptr %i.hx, align 2, !tbaa !218
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.fi ; 2 uses
  %niter282.next.1 = add i64 %niter282, 2         ; 2 uses
  %niter282.ncmp.1 = icmp eq i64 %niter282.next.1, %unroll_iter281
  br i1 %niter282.ncmp.1, label %.loopexit.loopexit259.unr-lcssa, label %.lr.ph145.new, !llvm.loop !7415

.loopexit.loopexit259.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod279.not, label %.loopexit, label %.epil.preheader277

.epil.preheader277:                               ; preds = %.loopexit.loopexit259.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit259.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fk, %.lr.ph145 ], [ %i.ii, %.loopexit.loopexit259.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod280)
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.ik = load i16, ptr %.088143.epil.init, align 2, !tbaa !218
  %i.il = sext i16 %i.ik to i32
  %i.im = load i16, ptr %i.fm, align 2, !tbaa !218
  %i.in = sext i16 %i.im to i32
  %i.io = mul nsw i32 %i.in, %i.il
  %i.ip = call i32 @llvm.smax.i32(i32 %i.io, i32 -32768)
  %i.iq = call i32 @llvm.smin.i32(i32 %i.ip, i32 32767)
  %i.ir = trunc nsw i32 %i.iq to i16
  %i.is = load i16, ptr %i.ij, align 2, !tbaa !218
  %i.it = call noundef i16 @llvm.smax.i16(i16 %i.is, i16 %i.ir)
  store i16 %i.it, ptr %i.ij, align 2, !tbaa !218
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader277, %.loopexit.loopexit259.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !7416

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.iu = load ptr, ptr %i.ap, align 8, !tbaa !7431, !nonnull !138, !align !166
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !88 ; 8 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.ix = load ptr, ptr %i.aq, align 8, !tbaa !7432, !nonnull !138, !align !228 ; 3 uses
  %i.iy = load ptr, ptr %i.an, align 8, !tbaa !7429, !nonnull !138, !align !163
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !32 ; 2 uses
  %i.ja = load ptr, ptr %i.ao, align 8, !tbaa !7430, !nonnull !138, !align !163
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !32 ; 2 uses
  %i.jc = add nsw i32 %i.iv, -1                   ; 2 uses
  %xtraiter265 = and i32 %i.iv, 1
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %.epil.preheader264, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter268 = and i32 %i.iv, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.preheader109, label %.epil.preheader264

.epil.preheader264:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.kp, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.kr, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.kq, %.preheader109.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.iv to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.je = load i16, ptr %.093124.epil.init, align 2, !tbaa !218
  %i.jf = load i16, ptr %.092125.epil.init, align 2, !tbaa !218
  %i.jg = call noundef i16 @llvm.smax.i16(i16 %i.je, i16 %i.jf)
  %i.jh = sext i16 %i.jg to i32
  %i.ji = load i16, ptr %i.ix, align 2, !tbaa !218
  %i.jj = sext i16 %i.ji to i32
  %i.jk = mul nsw i32 %i.jj, %i.jh
  %i.jl = call i32 @llvm.smax.i32(i32 %i.jk, i32 -32768)
  %i.jm = call i32 @llvm.smin.i32(i32 %i.jl, i32 32767)
  %i.jn = trunc nsw i32 %i.jm to i16
  store i16 %i.jn, ptr %.091126.epil.init, align 2, !tbaa !218
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader264
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.jo = load ptr, ptr %0, align 8, !tbaa !7422, !nonnull !138, !align !163
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !58
  %i.jq = load ptr, ptr %i.aq, align 8, !tbaa !7432, !nonnull !138, !align !228 ; 3 uses
  %xtraiter271 = and i32 %i.iv, 1
  %i.jr = icmp eq i32 %i.jc, 0
  %unroll_iter275 = and i32 %i.iv, 2147483646
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod274 = trunc i32 %i.iv to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.kp, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.kr, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.kq, %bb.i ] ; 2 uses
  %niter269 = phi i32 [ 0, %.lr.ph129.new ], [ %niter269.next.1, %bb.i ]
  %i.js = load i16, ptr %.093124, align 2, !tbaa !218
  %i.jt = load i16, ptr %.092125, align 2, !tbaa !218
  %i.ju = call noundef i16 @llvm.smax.i16(i16 %i.js, i16 %i.jt)
  %i.jv = sext i16 %i.ju to i32
  %i.jw = load i16, ptr %i.ix, align 2, !tbaa !218
  %i.jx = sext i16 %i.jw to i32
  %i.jy = mul nsw i32 %i.jx, %i.jv
  %i.jz = call i32 @llvm.smax.i32(i32 %i.jy, i32 -32768)
  %i.ka = call i32 @llvm.smin.i32(i32 %i.jz, i32 32767)
  %i.kb = trunc nsw i32 %i.ka to i16
  store i16 %i.kb, ptr %.091126, align 2, !tbaa !218
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %.093124, i64 %i.iz ; 2 uses
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.092125, i64 %i.jb ; 2 uses
  %i.kf = load i16, ptr %i.kd, align 2, !tbaa !218
  %i.kg = load i16, ptr %i.ke, align 2, !tbaa !218
  %i.kh = call noundef i16 @llvm.smax.i16(i16 %i.kf, i16 %i.kg)
  %i.ki = sext i16 %i.kh to i32
  %i.kj = load i16, ptr %i.ix, align 2, !tbaa !218
  %i.kk = sext i16 %i.kj to i32
  %i.kl = mul nsw i32 %i.kk, %i.ki
  %i.km = call i32 @llvm.smax.i32(i32 %i.kl, i32 -32768)
  %i.kn = call i32 @llvm.smin.i32(i32 %i.km, i32 32767)
  %i.ko = trunc nsw i32 %i.kn to i16
  store i16 %i.ko, ptr %i.kc, align 2, !tbaa !218
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %i.al ; 2 uses
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %i.iz ; 2 uses
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.jb ; 2 uses
  %niter269.next.1 = add nuw nsw i32 %niter269, 2 ; 2 uses
  %niter269.ncmp.1 = icmp eq i32 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !7417

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod272.not, label %..loopexit105_crit_edge, label %.epil.preheader270

.epil.preheader270:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.lk, %.lr.ph135 ], [ %i.mi, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.mh, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.ks = load i16, ptr %.083132.epil.init, align 2, !tbaa !218
  %i.kt = sext i16 %i.ks to i32
  %i.ku = load i16, ptr %i.jq, align 2, !tbaa !218
  %i.kv = sext i16 %i.ku to i32
  %i.kw = mul nsw i32 %i.kv, %i.kt
  %i.kx = call i32 @llvm.smax.i32(i32 %i.kw, i32 -32768)
  %i.ky = call i32 @llvm.smin.i32(i32 %i.kx, i32 32767)
  %i.kz = trunc nsw i32 %i.ky to i16
  %i.la = load i16, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lb = call noundef i16 @llvm.smax.i16(i16 %i.la, i16 %i.kz)
  store i16 %i.lb, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader270
  %.lcssa = phi ptr [ %i.mh, %..loopexit105_crit_edge.unr-lcssa ], [ %i.lc, %.epil.preheader270 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !7418

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %indvars.iv.next167
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !131
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !32
  %i.li = lshr i64 %i.lh, 1                       ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !141 ; 2 uses
  br i1 %i.jr, label %.epil.preheader270, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.mi, %.lr.ph135.new ], [ %i.lk, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.mh, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter276 = phi i32 [ %niter276.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ll = load i16, ptr %.083132, align 2, !tbaa !218
  %i.lm = sext i16 %i.ll to i32
  %i.ln = load i16, ptr %i.jq, align 2, !tbaa !218
  %i.lo = sext i16 %i.ln to i32
  %i.lp = mul nsw i32 %i.lo, %i.lm
  %i.lq = call i32 @llvm.smax.i32(i32 %i.lp, i32 -32768)
  %i.lr = call i32 @llvm.smin.i32(i32 %i.lq, i32 32767)
  %i.ls = trunc nsw i32 %i.lr to i16
  %i.lt = load i16, ptr %.2131, align 2, !tbaa !218
  %i.lu = call noundef i16 @llvm.smax.i16(i16 %i.lt, i16 %i.ls)
  store i16 %i.lu, ptr %.2131, align 2, !tbaa !218
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.083132, i64 %i.li ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !218
  %i.ly = sext i16 %i.lx to i32
  %i.lz = load i16, ptr %i.jq, align 2, !tbaa !218
  %i.ma = sext i16 %i.lz to i32
  %i.mb = mul nsw i32 %i.ma, %i.ly
  %i.mc = call i32 @llvm.smax.i32(i32 %i.mb, i32 -32768)
  %i.md = call i32 @llvm.smin.i32(i32 %i.mc, i32 32767)
  %i.me = trunc nsw i32 %i.md to i16
  %i.mf = load i16, ptr %i.lv, align 2, !tbaa !218
  %i.mg = call noundef i16 @llvm.smax.i16(i16 %i.mf, i16 %i.me)
  store i16 %i.mg, ptr %i.lv, align 2, !tbaa !218
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %i.al ; 3 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %i.li ; 2 uses
  %niter276.next.1 = add i32 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i32 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !7419

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !7420
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i16 noundef signext %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i16 %2, ptr %i.a, align 2, !tbaa !218
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 1
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 1
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !7442

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !7443

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS8_10opDispatchIsJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKsSO_E18_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_12
begin_hunk_13_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  store i16 %i.jn, ptr %i.jd, align 2, !tbaa !218
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jb, i64 %i.go ; 2 uses
  %niter285.next.1 = add i64 %niter285, 2         ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.loopexit.loopexit259.unr-lcssa, label %.lr.ph145.new, !llvm.loop !7492

.loopexit.loopexit259.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod282.not, label %.loopexit, label %.epil.preheader280

.epil.preheader280:                               ; preds = %.loopexit.loopexit259.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit259.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gq, %.lr.ph145 ], [ %i.jo, %.loopexit.loopexit259.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod283)
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.jq = load i16, ptr %.088143.epil.init, align 2, !tbaa !218
  %i.jr = sext i16 %i.jq to i32
  %i.js = load i16, ptr %i.gs, align 2, !tbaa !218
  %i.jt = sext i16 %i.js to i32
  %i.ju = mul nsw i32 %i.jt, %i.jr
  %i.jv = call i32 @llvm.smax.i32(i32 %i.ju, i32 -32768)
  %i.jw = call i32 @llvm.smin.i32(i32 %i.jv, i32 32767)
  %i.jx = load i16, ptr %i.jp, align 2, !tbaa !218
  %i.jy = trunc nsw i32 %i.jw to i16
  %i.jz = add i16 %i.jx, %i.jy
  store i16 %i.jz, ptr %i.jp, align 2, !tbaa !218
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader280, %.loopexit.loopexit259.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !7493

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ka = load ptr, ptr %i.ap, align 8, !tbaa !7508, !nonnull !138, !align !166
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !88 ; 8 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.kd = load ptr, ptr %i.aq, align 8, !tbaa !7509, !nonnull !138, !align !228 ; 3 uses
  %i.ke = load ptr, ptr %i.an, align 8, !tbaa !7506, !nonnull !138, !align !163
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !32 ; 2 uses
  %i.kg = load ptr, ptr %i.ao, align 8, !tbaa !7507, !nonnull !138, !align !163
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !32 ; 2 uses
  %i.ki = add nsw i32 %i.kb, -1                   ; 2 uses
  %xtraiter265 = and i32 %i.kb, 1
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %.epil.preheader264, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter268 = and i32 %i.kb, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.preheader109, label %.epil.preheader264

.epil.preheader264:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.ly, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.ma, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.lz, %.preheader109.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.kb to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.kk = load i16, ptr %.093124.epil.init, align 2, !tbaa !218
  %i.kl = sext i16 %i.kk to i32
  %i.km = load i16, ptr %.092125.epil.init, align 2, !tbaa !218
  %i.kn = sext i16 %i.km to i32
  %i.ko = add nsw i32 %i.kn, %i.kl
  %i.kp = load i16, ptr %i.kd, align 2, !tbaa !218
  %i.kq = sext i16 %i.kp to i32
  %i.kr = mul nsw i32 %i.ko, %i.kq
  %i.ks = call i32 @llvm.smax.i32(i32 %i.kr, i32 -32768)
  %i.kt = call i32 @llvm.smin.i32(i32 %i.ks, i32 32767)
  %i.ku = trunc nsw i32 %i.kt to i16
  store i16 %i.ku, ptr %.091126.epil.init, align 2, !tbaa !218
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader264
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.kv = load ptr, ptr %0, align 8, !tbaa !7499, !nonnull !138, !align !163
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !58
  %i.kx = load ptr, ptr %i.aq, align 8, !tbaa !7509, !nonnull !138, !align !228 ; 3 uses
  %xtraiter271 = and i32 %i.kb, 1
  %i.ky = icmp eq i32 %i.ki, 0
  %unroll_iter275 = and i32 %i.kb, 2147483646
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod274 = trunc i32 %i.kb to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.ly, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.ma, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.lz, %bb.i ] ; 2 uses
  %niter269 = phi i32 [ 0, %.lr.ph129.new ], [ %niter269.next.1, %bb.i ]
  %i.kz = load i16, ptr %.093124, align 2, !tbaa !218
  %i.la = sext i16 %i.kz to i32
  %i.lb = load i16, ptr %.092125, align 2, !tbaa !218
  %i.lc = sext i16 %i.lb to i32
  %i.ld = add nsw i32 %i.lc, %i.la
  %i.le = load i16, ptr %i.kd, align 2, !tbaa !218
  %i.lf = sext i16 %i.le to i32
  %i.lg = mul nsw i32 %i.ld, %i.lf
  %i.lh = call i32 @llvm.smax.i32(i32 %i.lg, i32 -32768)
  %i.li = call i32 @llvm.smin.i32(i32 %i.lh, i32 32767)
  %i.lj = trunc nsw i32 %i.li to i16
  store i16 %i.lj, ptr %.091126, align 2, !tbaa !218
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %.093124, i64 %i.kf ; 2 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.092125, i64 %i.kh ; 2 uses
  %i.ln = load i16, ptr %i.ll, align 2, !tbaa !218
  %i.lo = sext i16 %i.ln to i32
  %i.lp = load i16, ptr %i.lm, align 2, !tbaa !218
  %i.lq = sext i16 %i.lp to i32
  %i.lr = add nsw i32 %i.lq, %i.lo
  %i.ls = load i16, ptr %i.kd, align 2, !tbaa !218
  %i.lt = sext i16 %i.ls to i32
  %i.lu = mul nsw i32 %i.lr, %i.lt
  %i.lv = call i32 @llvm.smax.i32(i32 %i.lu, i32 -32768)
  %i.lw = call i32 @llvm.smin.i32(i32 %i.lv, i32 32767)
  %i.lx = trunc nsw i32 %i.lw to i16
  store i16 %i.lx, ptr %i.lk, align 2, !tbaa !218
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %i.al ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %i.kf ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %i.kh ; 2 uses
  %niter269.next.1 = add nuw nsw i32 %niter269, 2 ; 2 uses
  %niter269.ncmp.1 = icmp eq i32 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !7494

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod272.not, label %..loopexit105_crit_edge, label %.epil.preheader270

.epil.preheader270:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.mt, %.lr.ph135 ], [ %i.nr, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.nq, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.mb = load i16, ptr %.083132.epil.init, align 2, !tbaa !218
  %i.mc = sext i16 %i.mb to i32
  %i.md = load i16, ptr %i.kx, align 2, !tbaa !218
  %i.me = sext i16 %i.md to i32
  %i.mf = mul nsw i32 %i.me, %i.mc
  %i.mg = call i32 @llvm.smax.i32(i32 %i.mf, i32 -32768)
  %i.mh = call i32 @llvm.smin.i32(i32 %i.mg, i32 32767)
  %i.mi = load i16, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.mj = trunc nsw i32 %i.mh to i16
  %i.mk = add i16 %i.mi, %i.mj
  store i16 %i.mk, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader270
  %.lcssa = phi ptr [ %i.nq, %..loopexit105_crit_edge.unr-lcssa ], [ %i.ml, %.epil.preheader270 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !7495

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %indvars.iv.next167
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !131
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !32
  %i.mr = lshr i64 %i.mq, 1                       ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ky, label %.epil.preheader270, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.nr, %.lr.ph135.new ], [ %i.mt, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.nq, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter276 = phi i32 [ %niter276.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.mu = load i16, ptr %.083132, align 2, !tbaa !218
  %i.mv = sext i16 %i.mu to i32
  %i.mw = load i16, ptr %i.kx, align 2, !tbaa !218
  %i.mx = sext i16 %i.mw to i32
  %i.my = mul nsw i32 %i.mx, %i.mv
  %i.mz = call i32 @llvm.smax.i32(i32 %i.my, i32 -32768)
  %i.na = call i32 @llvm.smin.i32(i32 %i.mz, i32 32767)
  %i.nb = load i16, ptr %.2131, align 2, !tbaa !218
  %i.nc = trunc nsw i32 %i.na to i16
  %i.nd = add i16 %i.nb, %i.nc
  store i16 %i.nd, ptr %.2131, align 2, !tbaa !218
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %.083132, i64 %i.mr ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !218
  %i.nh = sext i16 %i.ng to i32
  %i.ni = load i16, ptr %i.kx, align 2, !tbaa !218
  %i.nj = sext i16 %i.ni to i32
  %i.nk = mul nsw i32 %i.nj, %i.nh
  %i.nl = call i32 @llvm.smax.i32(i32 %i.nk, i32 -32768)
  %i.nm = call i32 @llvm.smin.i32(i32 %i.nl, i32 32767)
  %i.nn = load i16, ptr %i.ne, align 2, !tbaa !218
  %i.no = trunc nsw i32 %i.nm to i16
  %i.np = add i16 %i.nn, %i.no
  store i16 %i.np, ptr %i.ne, align 2, !tbaa !218
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.al ; 3 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.nf, i64 %i.mr ; 2 uses
  %niter276.next.1 = add i32 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i32 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !7496

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !7497
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E19_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i16 noundef signext %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i16 %2, ptr %i.a, align 2, !tbaa !218
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 1
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 1
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !7519

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !7520

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS8_10opDispatchIsJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKsSO_E19_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_13
begin_hunk_14_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E19_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.if = trunc nsw i32 %i.ie to i16
  %i.ig = load i16, ptr %i.hx, align 2, !tbaa !218
  %i.ih = call noundef i16 @llvm.smin.i16(i16 %i.if, i16 %i.ig)
  store i16 %i.ih, ptr %i.hx, align 2, !tbaa !218
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.fi ; 2 uses
  %niter282.next.1 = add i64 %niter282, 2         ; 2 uses
  %niter282.ncmp.1 = icmp eq i64 %niter282.next.1, %unroll_iter281
  br i1 %niter282.ncmp.1, label %.loopexit.loopexit259.unr-lcssa, label %.lr.ph145.new, !llvm.loop !7568

.loopexit.loopexit259.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod279.not, label %.loopexit, label %.epil.preheader277

.epil.preheader277:                               ; preds = %.loopexit.loopexit259.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit259.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fk, %.lr.ph145 ], [ %i.ii, %.loopexit.loopexit259.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod280)
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.ik = load i16, ptr %.088143.epil.init, align 2, !tbaa !218
  %i.il = sext i16 %i.ik to i32
  %i.im = load i16, ptr %i.fm, align 2, !tbaa !218
  %i.in = sext i16 %i.im to i32
  %i.io = mul nsw i32 %i.in, %i.il
  %i.ip = call i32 @llvm.smax.i32(i32 %i.io, i32 -32768)
  %i.iq = call i32 @llvm.smin.i32(i32 %i.ip, i32 32767)
  %i.ir = trunc nsw i32 %i.iq to i16
  %i.is = load i16, ptr %i.ij, align 2, !tbaa !218
  %i.it = call noundef i16 @llvm.smin.i16(i16 %i.ir, i16 %i.is)
  store i16 %i.it, ptr %i.ij, align 2, !tbaa !218
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader277, %.loopexit.loopexit259.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !7569

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.iu = load ptr, ptr %i.ap, align 8, !tbaa !7584, !nonnull !138, !align !166
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !88 ; 8 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.ix = load ptr, ptr %i.aq, align 8, !tbaa !7585, !nonnull !138, !align !228 ; 3 uses
  %i.iy = load ptr, ptr %i.an, align 8, !tbaa !7582, !nonnull !138, !align !163
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !32 ; 2 uses
  %i.ja = load ptr, ptr %i.ao, align 8, !tbaa !7583, !nonnull !138, !align !163
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !32 ; 2 uses
  %i.jc = add nsw i32 %i.iv, -1                   ; 2 uses
  %xtraiter265 = and i32 %i.iv, 1
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %.epil.preheader264, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter268 = and i32 %i.iv, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.preheader109, label %.epil.preheader264

.epil.preheader264:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.kp, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.kr, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.kq, %.preheader109.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.iv to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.je = load i16, ptr %.092125.epil.init, align 2, !tbaa !218
  %i.jf = load i16, ptr %.093124.epil.init, align 2, !tbaa !218
  %i.jg = call noundef i16 @llvm.smin.i16(i16 %i.je, i16 %i.jf)
  %i.jh = sext i16 %i.jg to i32
  %i.ji = load i16, ptr %i.ix, align 2, !tbaa !218
  %i.jj = sext i16 %i.ji to i32
  %i.jk = mul nsw i32 %i.jj, %i.jh
  %i.jl = call i32 @llvm.smax.i32(i32 %i.jk, i32 -32768)
  %i.jm = call i32 @llvm.smin.i32(i32 %i.jl, i32 32767)
  %i.jn = trunc nsw i32 %i.jm to i16
  store i16 %i.jn, ptr %.091126.epil.init, align 2, !tbaa !218
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader264
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.jo = load ptr, ptr %0, align 8, !tbaa !7575, !nonnull !138, !align !163
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !58
  %i.jq = load ptr, ptr %i.aq, align 8, !tbaa !7585, !nonnull !138, !align !228 ; 3 uses
  %xtraiter271 = and i32 %i.iv, 1
  %i.jr = icmp eq i32 %i.jc, 0
  %unroll_iter275 = and i32 %i.iv, 2147483646
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod274 = trunc i32 %i.iv to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.kp, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.kr, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.kq, %bb.i ] ; 2 uses
  %niter269 = phi i32 [ 0, %.lr.ph129.new ], [ %niter269.next.1, %bb.i ]
  %i.js = load i16, ptr %.092125, align 2, !tbaa !218
  %i.jt = load i16, ptr %.093124, align 2, !tbaa !218
  %i.ju = call noundef i16 @llvm.smin.i16(i16 %i.js, i16 %i.jt)
  %i.jv = sext i16 %i.ju to i32
  %i.jw = load i16, ptr %i.ix, align 2, !tbaa !218
  %i.jx = sext i16 %i.jw to i32
  %i.jy = mul nsw i32 %i.jx, %i.jv
  %i.jz = call i32 @llvm.smax.i32(i32 %i.jy, i32 -32768)
  %i.ka = call i32 @llvm.smin.i32(i32 %i.jz, i32 32767)
  %i.kb = trunc nsw i32 %i.ka to i16
  store i16 %i.kb, ptr %.091126, align 2, !tbaa !218
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %.093124, i64 %i.iz ; 2 uses
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.092125, i64 %i.jb ; 2 uses
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !218
  %i.kg = load i16, ptr %i.kd, align 2, !tbaa !218
  %i.kh = call noundef i16 @llvm.smin.i16(i16 %i.kf, i16 %i.kg)
  %i.ki = sext i16 %i.kh to i32
  %i.kj = load i16, ptr %i.ix, align 2, !tbaa !218
  %i.kk = sext i16 %i.kj to i32
  %i.kl = mul nsw i32 %i.kk, %i.ki
  %i.km = call i32 @llvm.smax.i32(i32 %i.kl, i32 -32768)
  %i.kn = call i32 @llvm.smin.i32(i32 %i.km, i32 32767)
  %i.ko = trunc nsw i32 %i.kn to i16
  store i16 %i.ko, ptr %i.kc, align 2, !tbaa !218
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %i.al ; 2 uses
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %i.iz ; 2 uses
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.jb ; 2 uses
  %niter269.next.1 = add nuw nsw i32 %niter269, 2 ; 2 uses
  %niter269.ncmp.1 = icmp eq i32 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !7570

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod272.not, label %..loopexit105_crit_edge, label %.epil.preheader270

.epil.preheader270:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.lk, %.lr.ph135 ], [ %i.mi, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.mh, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.ks = load i16, ptr %.083132.epil.init, align 2, !tbaa !218
  %i.kt = sext i16 %i.ks to i32
  %i.ku = load i16, ptr %i.jq, align 2, !tbaa !218
  %i.kv = sext i16 %i.ku to i32
  %i.kw = mul nsw i32 %i.kv, %i.kt
  %i.kx = call i32 @llvm.smax.i32(i32 %i.kw, i32 -32768)
  %i.ky = call i32 @llvm.smin.i32(i32 %i.kx, i32 32767)
  %i.kz = trunc nsw i32 %i.ky to i16
  %i.la = load i16, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lb = call noundef i16 @llvm.smin.i16(i16 %i.kz, i16 %i.la)
  store i16 %i.lb, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader270
  %.lcssa = phi ptr [ %i.mh, %..loopexit105_crit_edge.unr-lcssa ], [ %i.lc, %.epil.preheader270 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !7571

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %indvars.iv.next167
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !131
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !32
  %i.li = lshr i64 %i.lh, 1                       ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !141 ; 2 uses
  br i1 %i.jr, label %.epil.preheader270, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.mi, %.lr.ph135.new ], [ %i.lk, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.mh, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter276 = phi i32 [ %niter276.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ll = load i16, ptr %.083132, align 2, !tbaa !218
  %i.lm = sext i16 %i.ll to i32
  %i.ln = load i16, ptr %i.jq, align 2, !tbaa !218
  %i.lo = sext i16 %i.ln to i32
  %i.lp = mul nsw i32 %i.lo, %i.lm
  %i.lq = call i32 @llvm.smax.i32(i32 %i.lp, i32 -32768)
  %i.lr = call i32 @llvm.smin.i32(i32 %i.lq, i32 32767)
  %i.ls = trunc nsw i32 %i.lr to i16
  %i.lt = load i16, ptr %.2131, align 2, !tbaa !218
  %i.lu = call noundef i16 @llvm.smin.i16(i16 %i.ls, i16 %i.lt)
  store i16 %i.lu, ptr %.2131, align 2, !tbaa !218
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.083132, i64 %i.li ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !218
  %i.ly = sext i16 %i.lx to i32
  %i.lz = load i16, ptr %i.jq, align 2, !tbaa !218
  %i.ma = sext i16 %i.lz to i32
  %i.mb = mul nsw i32 %i.ma, %i.ly
  %i.mc = call i32 @llvm.smax.i32(i32 %i.mb, i32 -32768)
  %i.md = call i32 @llvm.smin.i32(i32 %i.mc, i32 32767)
  %i.me = trunc nsw i32 %i.md to i16
  %i.mf = load i16, ptr %i.lv, align 2, !tbaa !218
  %i.mg = call noundef i16 @llvm.smin.i16(i16 %i.me, i16 %i.mf)
  store i16 %i.mg, ptr %i.lv, align 2, !tbaa !218
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %i.al ; 3 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %i.li ; 2 uses
  %niter276.next.1 = add i32 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i32 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !7572

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !7573
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E20_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i16 noundef signext %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i16 %2, ptr %i.a, align 2, !tbaa !218
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 1
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 1
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !7595

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !7596

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS8_10opDispatchIsJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKsSO_E20_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_14
begin_hunk_15_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIsZNS1_10opDispatchIsJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKsSH_E20_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  store i16 %i.jn, ptr %i.jd, align 2, !tbaa !218
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jb, i64 %i.go ; 2 uses
  %niter285.next.1 = add i64 %niter285, 2         ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.loopexit.loopexit259.unr-lcssa, label %.lr.ph145.new, !llvm.loop !7645

.loopexit.loopexit259.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod282.not, label %.loopexit, label %.epil.preheader280

.epil.preheader280:                               ; preds = %.loopexit.loopexit259.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit259.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gq, %.lr.ph145 ], [ %i.jo, %.loopexit.loopexit259.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod283)
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.jq = load i16, ptr %.088143.epil.init, align 2, !tbaa !218
  %i.jr = sext i16 %i.jq to i32
  %i.js = load i16, ptr %i.gs, align 2, !tbaa !218
  %i.jt = sext i16 %i.js to i32
  %i.ju = mul nsw i32 %i.jt, %i.jr
  %i.jv = call i32 @llvm.smax.i32(i32 %i.ju, i32 -32768)
  %i.jw = call i32 @llvm.smin.i32(i32 %i.jv, i32 32767)
  %i.jx = load i16, ptr %i.jp, align 2, !tbaa !218
  %i.jy = trunc nsw i32 %i.jw to i16
  %i.jz = add i16 %i.jx, %i.jy
  store i16 %i.jz, ptr %i.jp, align 2, !tbaa !218
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader280, %.loopexit.loopexit259.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !7646

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ka = load ptr, ptr %i.ap, align 8, !tbaa !7661, !nonnull !138, !align !166
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !88 ; 8 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.kd = load ptr, ptr %i.aq, align 8, !tbaa !7662, !nonnull !138, !align !228 ; 3 uses
  %i.ke = load ptr, ptr %i.an, align 8, !tbaa !7659, !nonnull !138, !align !163
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !32 ; 2 uses
  %i.kg = load ptr, ptr %i.ao, align 8, !tbaa !7660, !nonnull !138, !align !163
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !32 ; 2 uses
  %i.ki = add nsw i32 %i.kb, -1                   ; 2 uses
  %xtraiter265 = and i32 %i.kb, 1
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %.epil.preheader264, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter268 = and i32 %i.kb, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.preheader109, label %.epil.preheader264

.epil.preheader264:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.ly, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.ma, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.lz, %.preheader109.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.kb to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.kk = load i16, ptr %.093124.epil.init, align 2, !tbaa !218
  %i.kl = sext i16 %i.kk to i32
  %i.km = load i16, ptr %.092125.epil.init, align 2, !tbaa !218
  %i.kn = sext i16 %i.km to i32
  %i.ko = add nsw i32 %i.kn, %i.kl
  %i.kp = load i16, ptr %i.kd, align 2, !tbaa !218
  %i.kq = sext i16 %i.kp to i32
  %i.kr = mul nsw i32 %i.ko, %i.kq
  %i.ks = call i32 @llvm.smax.i32(i32 %i.kr, i32 -32768)
  %i.kt = call i32 @llvm.smin.i32(i32 %i.ks, i32 32767)
  %i.ku = trunc nsw i32 %i.kt to i16
  store i16 %i.ku, ptr %.091126.epil.init, align 2, !tbaa !218
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader264
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.kv = load ptr, ptr %0, align 8, !tbaa !7652, !nonnull !138, !align !163
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !58
  %i.kx = load ptr, ptr %i.aq, align 8, !tbaa !7662, !nonnull !138, !align !228 ; 3 uses
  %xtraiter271 = and i32 %i.kb, 1
  %i.ky = icmp eq i32 %i.ki, 0
  %unroll_iter275 = and i32 %i.kb, 2147483646
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod274 = trunc i32 %i.kb to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.ly, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.ma, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.lz, %bb.i ] ; 2 uses
  %niter269 = phi i32 [ 0, %.lr.ph129.new ], [ %niter269.next.1, %bb.i ]
  %i.kz = load i16, ptr %.093124, align 2, !tbaa !218
  %i.la = sext i16 %i.kz to i32
  %i.lb = load i16, ptr %.092125, align 2, !tbaa !218
  %i.lc = sext i16 %i.lb to i32
  %i.ld = add nsw i32 %i.lc, %i.la
  %i.le = load i16, ptr %i.kd, align 2, !tbaa !218
  %i.lf = sext i16 %i.le to i32
  %i.lg = mul nsw i32 %i.ld, %i.lf
  %i.lh = call i32 @llvm.smax.i32(i32 %i.lg, i32 -32768)
  %i.li = call i32 @llvm.smin.i32(i32 %i.lh, i32 32767)
  %i.lj = trunc nsw i32 %i.li to i16
  store i16 %i.lj, ptr %.091126, align 2, !tbaa !218
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %.093124, i64 %i.kf ; 2 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.092125, i64 %i.kh ; 2 uses
  %i.ln = load i16, ptr %i.ll, align 2, !tbaa !218
  %i.lo = sext i16 %i.ln to i32
  %i.lp = load i16, ptr %i.lm, align 2, !tbaa !218
  %i.lq = sext i16 %i.lp to i32
  %i.lr = add nsw i32 %i.lq, %i.lo
  %i.ls = load i16, ptr %i.kd, align 2, !tbaa !218
  %i.lt = sext i16 %i.ls to i32
  %i.lu = mul nsw i32 %i.lr, %i.lt
  %i.lv = call i32 @llvm.smax.i32(i32 %i.lu, i32 -32768)
  %i.lw = call i32 @llvm.smin.i32(i32 %i.lv, i32 32767)
  %i.lx = trunc nsw i32 %i.lw to i16
  store i16 %i.lx, ptr %i.lk, align 2, !tbaa !218
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %i.al ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %i.kf ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %i.kh ; 2 uses
  %niter269.next.1 = add nuw nsw i32 %niter269, 2 ; 2 uses
  %niter269.ncmp.1 = icmp eq i32 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !7647

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod272.not, label %..loopexit105_crit_edge, label %.epil.preheader270

.epil.preheader270:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.mt, %.lr.ph135 ], [ %i.nr, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.nq, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.mb = load i16, ptr %.083132.epil.init, align 2, !tbaa !218
  %i.mc = sext i16 %i.mb to i32
  %i.md = load i16, ptr %i.kx, align 2, !tbaa !218
  %i.me = sext i16 %i.md to i32
  %i.mf = mul nsw i32 %i.me, %i.mc
  %i.mg = call i32 @llvm.smax.i32(i32 %i.mf, i32 -32768)
  %i.mh = call i32 @llvm.smin.i32(i32 %i.mg, i32 32767)
  %i.mi = load i16, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.mj = trunc nsw i32 %i.mh to i16
  %i.mk = add i16 %i.mi, %i.mj
  store i16 %i.mk, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader270
  %.lcssa = phi ptr [ %i.nq, %..loopexit105_crit_edge.unr-lcssa ], [ %i.ml, %.epil.preheader270 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !7648

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %indvars.iv.next167
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !131
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !32
  %i.mr = lshr i64 %i.mq, 1                       ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ky, label %.epil.preheader270, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.nr, %.lr.ph135.new ], [ %i.mt, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.nq, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter276 = phi i32 [ %niter276.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.mu = load i16, ptr %.083132, align 2, !tbaa !218
  %i.mv = sext i16 %i.mu to i32
  %i.mw = load i16, ptr %i.kx, align 2, !tbaa !218
  %i.mx = sext i16 %i.mw to i32
  %i.my = mul nsw i32 %i.mx, %i.mv
  %i.mz = call i32 @llvm.smax.i32(i32 %i.my, i32 -32768)
  %i.na = call i32 @llvm.smin.i32(i32 %i.mz, i32 32767)
  %i.nb = load i16, ptr %.2131, align 2, !tbaa !218
  %i.nc = trunc nsw i32 %i.na to i16
  %i.nd = add i16 %i.nb, %i.nc
  store i16 %i.nd, ptr %.2131, align 2, !tbaa !218
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %.083132, i64 %i.mr ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !218
  %i.nh = sext i16 %i.ng to i32
  %i.ni = load i16, ptr %i.kx, align 2, !tbaa !218
  %i.nj = sext i16 %i.ni to i32
  %i.nk = mul nsw i32 %i.nj, %i.nh
  %i.nl = call i32 @llvm.smax.i32(i32 %i.nk, i32 -32768)
  %i.nm = call i32 @llvm.smin.i32(i32 %i.nl, i32 32767)
  %i.nn = load i16, ptr %i.ne, align 2, !tbaa !218
  %i.no = trunc nsw i32 %i.nm to i16
  %i.np = add i16 %i.nn, %i.no
  store i16 %i.np, ptr %i.ne, align 2, !tbaa !218
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.al ; 3 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.nf, i64 %i.mr ; 2 uses
  %niter276.next.1 = add i32 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i32 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !7649

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !7650
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardItbZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implItbZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardItbZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E0_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implItbZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E0_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardItbZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E1_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
end_hunk_15
begin_hunk_16_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E17_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2 ; 2 uses
  %i.ir = load i16, ptr %i.io, align 2, !tbaa !218
  %i.is = zext i16 %i.ir to i32
  %i.it = load i16, ptr %i.gk, align 2, !tbaa !218
  %i.iu = zext i16 %i.it to i32
  %i.iv = mul nuw nsw i32 %i.iu, %i.is
  %i.iw = call i32 @llvm.umin.i32(i32 %i.iv, i32 65535)
  %i.ix = trunc nuw i32 %i.iw to i16
  %i.iy = load i16, ptr %i.iq, align 2, !tbaa !218
  %i.iz = call noundef i16 @llvm.umax.i16(i16 %i.iy, i16 %i.ix)
  store i16 %i.iz, ptr %i.iq, align 2, !tbaa !218
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.gg ; 2 uses
  %niter285.next.1 = add i64 %niter285, 2         ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.loopexit.loopexit259.unr-lcssa, label %.lr.ph145.new, !llvm.loop !8608

.loopexit.loopexit259.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod282.not, label %.loopexit, label %.epil.preheader280

.epil.preheader280:                               ; preds = %.loopexit.loopexit259.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit259.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gi, %.lr.ph145 ], [ %i.ja, %.loopexit.loopexit259.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod283)
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.jc = load i16, ptr %.088143.epil.init, align 2, !tbaa !218
  %i.jd = zext i16 %i.jc to i32
  %i.je = load i16, ptr %i.gk, align 2, !tbaa !218
  %i.jf = zext i16 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.jf, %i.jd
  %i.jh = call i32 @llvm.umin.i32(i32 %i.jg, i32 65535)
  %i.ji = trunc nuw i32 %i.jh to i16
  %i.jj = load i16, ptr %i.jb, align 2, !tbaa !218
  %i.jk = call noundef i16 @llvm.umax.i16(i16 %i.jj, i16 %i.ji)
  store i16 %i.jk, ptr %i.jb, align 2, !tbaa !218
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader280, %.loopexit.loopexit259.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !8609

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.jl = load ptr, ptr %i.ap, align 8, !tbaa !8624, !nonnull !138, !align !166
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !88 ; 8 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.jo = load ptr, ptr %i.aq, align 8, !tbaa !8625, !nonnull !138, !align !228 ; 3 uses
  %i.jp = load ptr, ptr %i.an, align 8, !tbaa !8622, !nonnull !138, !align !163
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !32 ; 2 uses
  %i.jr = load ptr, ptr %i.ao, align 8, !tbaa !8623, !nonnull !138, !align !163
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !32 ; 2 uses
  %i.jt = add nsw i32 %i.jm, -1                   ; 2 uses
  %xtraiter265 = and i32 %i.jm, 1
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %.epil.preheader264, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter268 = and i32 %i.jm, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.preheader109, label %.epil.preheader264

.epil.preheader264:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.ld, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.lf, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.le, %.preheader109.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.jm to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.jv = load i16, ptr %.093124.epil.init, align 2, !tbaa !218
  %i.jw = load i16, ptr %.092125.epil.init, align 2, !tbaa !218
  %i.jx = call noundef i16 @llvm.umax.i16(i16 %i.jv, i16 %i.jw)
  %i.jy = zext i16 %i.jx to i32
  %i.jz = load i16, ptr %i.jo, align 2, !tbaa !218
  %i.ka = zext i16 %i.jz to i32
  %i.kb = mul nuw nsw i32 %i.ka, %i.jy
  %i.kc = call i32 @llvm.umin.i32(i32 %i.kb, i32 65535)
  %i.kd = trunc nuw i32 %i.kc to i16
  store i16 %i.kd, ptr %.091126.epil.init, align 2, !tbaa !218
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader264
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ke = load ptr, ptr %0, align 8, !tbaa !8615, !nonnull !138, !align !163
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !58
  %i.kg = load ptr, ptr %i.aq, align 8, !tbaa !8625, !nonnull !138, !align !228 ; 3 uses
  %xtraiter271 = and i32 %i.jm, 1
  %i.kh = icmp eq i32 %i.jt, 0
  %unroll_iter275 = and i32 %i.jm, 2147483646
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod274 = trunc i32 %i.jm to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.ld, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.lf, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.le, %bb.i ] ; 2 uses
  %niter269 = phi i32 [ 0, %.lr.ph129.new ], [ %niter269.next.1, %bb.i ]
  %i.ki = load i16, ptr %.093124, align 2, !tbaa !218
  %i.kj = load i16, ptr %.092125, align 2, !tbaa !218
  %i.kk = call noundef i16 @llvm.umax.i16(i16 %i.ki, i16 %i.kj)
  %i.kl = zext i16 %i.kk to i32
  %i.km = load i16, ptr %i.jo, align 2, !tbaa !218
  %i.kn = zext i16 %i.km to i32
  %i.ko = mul nuw nsw i32 %i.kn, %i.kl
  %i.kp = call i32 @llvm.umin.i32(i32 %i.ko, i32 65535)
  %i.kq = trunc nuw i32 %i.kp to i16
  store i16 %i.kq, ptr %.091126, align 2, !tbaa !218
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %.093124, i64 %i.jq ; 2 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %.092125, i64 %i.js ; 2 uses
  %i.ku = load i16, ptr %i.ks, align 2, !tbaa !218
  %i.kv = load i16, ptr %i.kt, align 2, !tbaa !218
  %i.kw = call noundef i16 @llvm.umax.i16(i16 %i.ku, i16 %i.kv)
  %i.kx = zext i16 %i.kw to i32
  %i.ky = load i16, ptr %i.jo, align 2, !tbaa !218
  %i.kz = zext i16 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.kz, %i.kx
  %i.lb = call i32 @llvm.umin.i32(i32 %i.la, i32 65535)
  %i.lc = trunc nuw i32 %i.lb to i16
  store i16 %i.lc, ptr %i.kr, align 2, !tbaa !218
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %i.al ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.jq ; 2 uses
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.js ; 2 uses
  %niter269.next.1 = add nuw nsw i32 %niter269, 2 ; 2 uses
  %niter269.ncmp.1 = icmp eq i32 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !8610

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod272.not, label %..loopexit105_crit_edge, label %.epil.preheader270

.epil.preheader270:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.lx, %.lr.ph135 ], [ %i.mt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ms, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.lg = load i16, ptr %.083132.epil.init, align 2, !tbaa !218
  %i.lh = zext i16 %i.lg to i32
  %i.li = load i16, ptr %i.kg, align 2, !tbaa !218
  %i.lj = zext i16 %i.li to i32
  %i.lk = mul nuw nsw i32 %i.lj, %i.lh
  %i.ll = call i32 @llvm.umin.i32(i32 %i.lk, i32 65535)
  %i.lm = trunc nuw i32 %i.ll to i16
  %i.ln = load i16, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lo = call noundef i16 @llvm.umax.i16(i16 %i.ln, i16 %i.lm)
  store i16 %i.lo, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader270
  %.lcssa = phi ptr [ %i.ms, %..loopexit105_crit_edge.unr-lcssa ], [ %i.lp, %.epil.preheader270 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !8611

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %indvars.iv.next167
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !131
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !32
  %i.lv = lshr i64 %i.lu, 1                       ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !141 ; 2 uses
  br i1 %i.kh, label %.epil.preheader270, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.mt, %.lr.ph135.new ], [ %i.lx, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ms, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter276 = phi i32 [ %niter276.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ly = load i16, ptr %.083132, align 2, !tbaa !218
  %i.lz = zext i16 %i.ly to i32
  %i.ma = load i16, ptr %i.kg, align 2, !tbaa !218
  %i.mb = zext i16 %i.ma to i32
  %i.mc = mul nuw nsw i32 %i.mb, %i.lz
  %i.md = call i32 @llvm.umin.i32(i32 %i.mc, i32 65535)
  %i.me = trunc nuw i32 %i.md to i16
  %i.mf = load i16, ptr %.2131, align 2, !tbaa !218
  %i.mg = call noundef i16 @llvm.umax.i16(i16 %i.mf, i16 %i.me)
  store i16 %i.mg, ptr %.2131, align 2, !tbaa !218
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.083132, i64 %i.lv ; 2 uses
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !218
  %i.mk = zext i16 %i.mj to i32
  %i.ml = load i16, ptr %i.kg, align 2, !tbaa !218
  %i.mm = zext i16 %i.ml to i32
  %i.mn = mul nuw nsw i32 %i.mm, %i.mk
  %i.mo = call i32 @llvm.umin.i32(i32 %i.mn, i32 65535)
  %i.mp = trunc nuw i32 %i.mo to i16
  %i.mq = load i16, ptr %i.mh, align 2, !tbaa !218
  %i.mr = call noundef i16 @llvm.umax.i16(i16 %i.mq, i16 %i.mp)
  store i16 %i.mr, ptr %i.mh, align 2, !tbaa !218
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %i.al ; 3 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.lv ; 2 uses
  %niter276.next.1 = add i32 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i32 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !8612

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !8613
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i16 %2, ptr %i.a, align 2, !tbaa !218
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 1
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 1
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !8635

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !8636

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS8_10opDispatchItJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKtSO_E18_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_16
begin_hunk_17_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ix = load i16, ptr %i.go, align 2, !tbaa !218
  %i.iy = zext i16 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.iy, %i.iw
  %i.ja = call i32 @llvm.umin.i32(i32 %i.iz, i32 65535)
  %i.jb = load i16, ptr %i.iu, align 2, !tbaa !218
  %i.jc = trunc nuw i32 %i.ja to i16
  %i.jd = add i16 %i.jb, %i.jc
  store i16 %i.jd, ptr %i.iu, align 2, !tbaa !218
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %i.gk ; 2 uses
  %niter285.next.1 = add i64 %niter285, 2         ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.loopexit.loopexit259.unr-lcssa, label %.lr.ph145.new, !llvm.loop !8685

.loopexit.loopexit259.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod282.not, label %.loopexit, label %.epil.preheader280

.epil.preheader280:                               ; preds = %.loopexit.loopexit259.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit259.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gm, %.lr.ph145 ], [ %i.je, %.loopexit.loopexit259.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod283)
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.jg = load i16, ptr %.088143.epil.init, align 2, !tbaa !218
  %i.jh = zext i16 %i.jg to i32
  %i.ji = load i16, ptr %i.go, align 2, !tbaa !218
  %i.jj = zext i16 %i.ji to i32
  %i.jk = mul nuw nsw i32 %i.jj, %i.jh
  %i.jl = call i32 @llvm.umin.i32(i32 %i.jk, i32 65535)
  %i.jm = load i16, ptr %i.jf, align 2, !tbaa !218
  %i.jn = trunc nuw i32 %i.jl to i16
  %i.jo = add i16 %i.jm, %i.jn
  store i16 %i.jo, ptr %i.jf, align 2, !tbaa !218
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader280, %.loopexit.loopexit259.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !8686

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.jp = load ptr, ptr %i.ap, align 8, !tbaa !8701, !nonnull !138, !align !166
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !88 ; 8 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.js = load ptr, ptr %i.aq, align 8, !tbaa !8702, !nonnull !138, !align !228 ; 3 uses
  %i.jt = load ptr, ptr %i.an, align 8, !tbaa !8699, !nonnull !138, !align !163
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !32 ; 2 uses
  %i.jv = load ptr, ptr %i.ao, align 8, !tbaa !8700, !nonnull !138, !align !163
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !32 ; 2 uses
  %i.jx = add nsw i32 %i.jq, -1                   ; 2 uses
  %xtraiter265 = and i32 %i.jq, 1
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %.epil.preheader264, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter268 = and i32 %i.jq, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.preheader109, label %.epil.preheader264

.epil.preheader264:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.lk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.lm, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.ll, %.preheader109.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.jq to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.jz = load i16, ptr %.093124.epil.init, align 2, !tbaa !218
  %i.ka = zext i16 %i.jz to i32
  %i.kb = load i16, ptr %.092125.epil.init, align 2, !tbaa !218
  %i.kc = zext i16 %i.kb to i32
  %i.kd = add nuw nsw i32 %i.kc, %i.ka
  %i.ke = load i16, ptr %i.js, align 2, !tbaa !218
  %i.kf = zext i16 %i.ke to i32
  %i.kg = mul nuw nsw i32 %i.kd, %i.kf
  %i.kh = call i32 @llvm.umin.i32(i32 %i.kg, i32 65535)
  %i.ki = trunc nuw i32 %i.kh to i16
  store i16 %i.ki, ptr %.091126.epil.init, align 2, !tbaa !218
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader264
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.kj = load ptr, ptr %0, align 8, !tbaa !8692, !nonnull !138, !align !163
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !58
  %i.kl = load ptr, ptr %i.aq, align 8, !tbaa !8702, !nonnull !138, !align !228 ; 3 uses
  %xtraiter271 = and i32 %i.jq, 1
  %i.km = icmp eq i32 %i.jx, 0
  %unroll_iter275 = and i32 %i.jq, 2147483646
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod274 = trunc i32 %i.jq to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.lk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.lm, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.ll, %bb.i ] ; 2 uses
  %niter269 = phi i32 [ 0, %.lr.ph129.new ], [ %niter269.next.1, %bb.i ]
  %i.kn = load i16, ptr %.093124, align 2, !tbaa !218
  %i.ko = zext i16 %i.kn to i32
  %i.kp = load i16, ptr %.092125, align 2, !tbaa !218
  %i.kq = zext i16 %i.kp to i32
  %i.kr = add nuw nsw i32 %i.kq, %i.ko
  %i.ks = load i16, ptr %i.js, align 2, !tbaa !218
  %i.kt = zext i16 %i.ks to i32
  %i.ku = mul nuw nsw i32 %i.kr, %i.kt
  %i.kv = call i32 @llvm.umin.i32(i32 %i.ku, i32 65535)
  %i.kw = trunc nuw i32 %i.kv to i16
  store i16 %i.kw, ptr %.091126, align 2, !tbaa !218
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %.093124, i64 %i.ju ; 2 uses
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %.092125, i64 %i.jw ; 2 uses
  %i.la = load i16, ptr %i.ky, align 2, !tbaa !218
  %i.lb = zext i16 %i.la to i32
  %i.lc = load i16, ptr %i.kz, align 2, !tbaa !218
  %i.ld = zext i16 %i.lc to i32
  %i.le = add nuw nsw i32 %i.ld, %i.lb
  %i.lf = load i16, ptr %i.js, align 2, !tbaa !218
  %i.lg = zext i16 %i.lf to i32
  %i.lh = mul nuw nsw i32 %i.le, %i.lg
  %i.li = call i32 @llvm.umin.i32(i32 %i.lh, i32 65535)
  %i.lj = trunc nuw i32 %i.li to i16
  store i16 %i.lj, ptr %i.kx, align 2, !tbaa !218
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.al ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.ju ; 2 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %i.jw ; 2 uses
  %niter269.next.1 = add nuw nsw i32 %niter269, 2 ; 2 uses
  %niter269.ncmp.1 = icmp eq i32 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !8687

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod272.not, label %..loopexit105_crit_edge, label %.epil.preheader270

.epil.preheader270:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.me, %.lr.ph135 ], [ %i.na, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.mz, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.ln = load i16, ptr %.083132.epil.init, align 2, !tbaa !218
  %i.lo = zext i16 %i.ln to i32
  %i.lp = load i16, ptr %i.kl, align 2, !tbaa !218
  %i.lq = zext i16 %i.lp to i32
  %i.lr = mul nuw nsw i32 %i.lq, %i.lo
  %i.ls = call i32 @llvm.umin.i32(i32 %i.lr, i32 65535)
  %i.lt = load i16, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lu = trunc nuw i32 %i.ls to i16
  %i.lv = add i16 %i.lt, %i.lu
  store i16 %i.lv, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader270
  %.lcssa = phi ptr [ %i.mz, %..loopexit105_crit_edge.unr-lcssa ], [ %i.lw, %.epil.preheader270 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !8688

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.kk, i64 %indvars.iv.next167
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !131
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 -8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !32
  %i.mc = lshr i64 %i.mb, 1                       ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !141 ; 2 uses
  br i1 %i.km, label %.epil.preheader270, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.na, %.lr.ph135.new ], [ %i.me, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.mz, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter276 = phi i32 [ %niter276.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.mf = load i16, ptr %.083132, align 2, !tbaa !218
  %i.mg = zext i16 %i.mf to i32
  %i.mh = load i16, ptr %i.kl, align 2, !tbaa !218
  %i.mi = zext i16 %i.mh to i32
  %i.mj = mul nuw nsw i32 %i.mi, %i.mg
  %i.mk = call i32 @llvm.umin.i32(i32 %i.mj, i32 65535)
  %i.ml = load i16, ptr %.2131, align 2, !tbaa !218
  %i.mm = trunc nuw i32 %i.mk to i16
  %i.mn = add i16 %i.ml, %i.mm
  store i16 %i.mn, ptr %.2131, align 2, !tbaa !218
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.083132, i64 %i.mc ; 2 uses
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !218
  %i.mr = zext i16 %i.mq to i32
  %i.ms = load i16, ptr %i.kl, align 2, !tbaa !218
  %i.mt = zext i16 %i.ms to i32
  %i.mu = mul nuw nsw i32 %i.mt, %i.mr
  %i.mv = call i32 @llvm.umin.i32(i32 %i.mu, i32 65535)
  %i.mw = load i16, ptr %i.mo, align 2, !tbaa !218
  %i.mx = trunc nuw i32 %i.mv to i16
  %i.my = add i16 %i.mw, %i.mx
  store i16 %i.my, ptr %i.mo, align 2, !tbaa !218
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.al ; 3 uses
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %i.mc ; 2 uses
  %niter276.next.1 = add i32 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i32 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !8689

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !8690
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E19_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i16 %2, ptr %i.a, align 2, !tbaa !218
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 1
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 1
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !8712

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !8713

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS8_10opDispatchItJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKtSO_E19_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_17
begin_hunk_18_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E19_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2 ; 2 uses
  %i.ir = load i16, ptr %i.io, align 2, !tbaa !218
  %i.is = zext i16 %i.ir to i32
  %i.it = load i16, ptr %i.gk, align 2, !tbaa !218
  %i.iu = zext i16 %i.it to i32
  %i.iv = mul nuw nsw i32 %i.iu, %i.is
  %i.iw = call i32 @llvm.umin.i32(i32 %i.iv, i32 65535)
  %i.ix = trunc nuw i32 %i.iw to i16
  %i.iy = load i16, ptr %i.iq, align 2, !tbaa !218
  %i.iz = call noundef i16 @llvm.umin.i16(i16 %i.ix, i16 %i.iy)
  store i16 %i.iz, ptr %i.iq, align 2, !tbaa !218
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.gg ; 2 uses
  %niter285.next.1 = add i64 %niter285, 2         ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.loopexit.loopexit259.unr-lcssa, label %.lr.ph145.new, !llvm.loop !8761

.loopexit.loopexit259.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod282.not, label %.loopexit, label %.epil.preheader280

.epil.preheader280:                               ; preds = %.loopexit.loopexit259.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit259.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gi, %.lr.ph145 ], [ %i.ja, %.loopexit.loopexit259.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod283)
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.jc = load i16, ptr %.088143.epil.init, align 2, !tbaa !218
  %i.jd = zext i16 %i.jc to i32
  %i.je = load i16, ptr %i.gk, align 2, !tbaa !218
  %i.jf = zext i16 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.jf, %i.jd
  %i.jh = call i32 @llvm.umin.i32(i32 %i.jg, i32 65535)
  %i.ji = trunc nuw i32 %i.jh to i16
  %i.jj = load i16, ptr %i.jb, align 2, !tbaa !218
  %i.jk = call noundef i16 @llvm.umin.i16(i16 %i.ji, i16 %i.jj)
  store i16 %i.jk, ptr %i.jb, align 2, !tbaa !218
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader280, %.loopexit.loopexit259.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !8762

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.jl = load ptr, ptr %i.ap, align 8, !tbaa !8777, !nonnull !138, !align !166
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !88 ; 8 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.jo = load ptr, ptr %i.aq, align 8, !tbaa !8778, !nonnull !138, !align !228 ; 3 uses
  %i.jp = load ptr, ptr %i.an, align 8, !tbaa !8775, !nonnull !138, !align !163
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !32 ; 2 uses
  %i.jr = load ptr, ptr %i.ao, align 8, !tbaa !8776, !nonnull !138, !align !163
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !32 ; 2 uses
  %i.jt = add nsw i32 %i.jm, -1                   ; 2 uses
  %xtraiter265 = and i32 %i.jm, 1
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %.epil.preheader264, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter268 = and i32 %i.jm, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.preheader109, label %.epil.preheader264

.epil.preheader264:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.ld, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.lf, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.le, %.preheader109.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.jm to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.jv = load i16, ptr %.092125.epil.init, align 2, !tbaa !218
  %i.jw = load i16, ptr %.093124.epil.init, align 2, !tbaa !218
  %i.jx = call noundef i16 @llvm.umin.i16(i16 %i.jv, i16 %i.jw)
  %i.jy = zext i16 %i.jx to i32
  %i.jz = load i16, ptr %i.jo, align 2, !tbaa !218
  %i.ka = zext i16 %i.jz to i32
  %i.kb = mul nuw nsw i32 %i.ka, %i.jy
  %i.kc = call i32 @llvm.umin.i32(i32 %i.kb, i32 65535)
  %i.kd = trunc nuw i32 %i.kc to i16
  store i16 %i.kd, ptr %.091126.epil.init, align 2, !tbaa !218
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader264
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ke = load ptr, ptr %0, align 8, !tbaa !8768, !nonnull !138, !align !163
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !58
  %i.kg = load ptr, ptr %i.aq, align 8, !tbaa !8778, !nonnull !138, !align !228 ; 3 uses
  %xtraiter271 = and i32 %i.jm, 1
  %i.kh = icmp eq i32 %i.jt, 0
  %unroll_iter275 = and i32 %i.jm, 2147483646
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod274 = trunc i32 %i.jm to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.ld, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.lf, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.le, %bb.i ] ; 2 uses
  %niter269 = phi i32 [ 0, %.lr.ph129.new ], [ %niter269.next.1, %bb.i ]
  %i.ki = load i16, ptr %.092125, align 2, !tbaa !218
  %i.kj = load i16, ptr %.093124, align 2, !tbaa !218
  %i.kk = call noundef i16 @llvm.umin.i16(i16 %i.ki, i16 %i.kj)
  %i.kl = zext i16 %i.kk to i32
  %i.km = load i16, ptr %i.jo, align 2, !tbaa !218
  %i.kn = zext i16 %i.km to i32
  %i.ko = mul nuw nsw i32 %i.kn, %i.kl
  %i.kp = call i32 @llvm.umin.i32(i32 %i.ko, i32 65535)
  %i.kq = trunc nuw i32 %i.kp to i16
  store i16 %i.kq, ptr %.091126, align 2, !tbaa !218
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %.093124, i64 %i.jq ; 2 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %.092125, i64 %i.js ; 2 uses
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !218
  %i.kv = load i16, ptr %i.ks, align 2, !tbaa !218
  %i.kw = call noundef i16 @llvm.umin.i16(i16 %i.ku, i16 %i.kv)
  %i.kx = zext i16 %i.kw to i32
  %i.ky = load i16, ptr %i.jo, align 2, !tbaa !218
  %i.kz = zext i16 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.kz, %i.kx
  %i.lb = call i32 @llvm.umin.i32(i32 %i.la, i32 65535)
  %i.lc = trunc nuw i32 %i.lb to i16
  store i16 %i.lc, ptr %i.kr, align 2, !tbaa !218
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %i.al ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.jq ; 2 uses
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.js ; 2 uses
  %niter269.next.1 = add nuw nsw i32 %niter269, 2 ; 2 uses
  %niter269.ncmp.1 = icmp eq i32 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !8763

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod272.not, label %..loopexit105_crit_edge, label %.epil.preheader270

.epil.preheader270:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.lx, %.lr.ph135 ], [ %i.mt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ms, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.lg = load i16, ptr %.083132.epil.init, align 2, !tbaa !218
  %i.lh = zext i16 %i.lg to i32
  %i.li = load i16, ptr %i.kg, align 2, !tbaa !218
  %i.lj = zext i16 %i.li to i32
  %i.lk = mul nuw nsw i32 %i.lj, %i.lh
  %i.ll = call i32 @llvm.umin.i32(i32 %i.lk, i32 65535)
  %i.lm = trunc nuw i32 %i.ll to i16
  %i.ln = load i16, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lo = call noundef i16 @llvm.umin.i16(i16 %i.lm, i16 %i.ln)
  store i16 %i.lo, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader270
  %.lcssa = phi ptr [ %i.ms, %..loopexit105_crit_edge.unr-lcssa ], [ %i.lp, %.epil.preheader270 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !8764

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %indvars.iv.next167
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !131
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !32
  %i.lv = lshr i64 %i.lu, 1                       ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !141 ; 2 uses
  br i1 %i.kh, label %.epil.preheader270, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.mt, %.lr.ph135.new ], [ %i.lx, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ms, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter276 = phi i32 [ %niter276.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ly = load i16, ptr %.083132, align 2, !tbaa !218
  %i.lz = zext i16 %i.ly to i32
  %i.ma = load i16, ptr %i.kg, align 2, !tbaa !218
  %i.mb = zext i16 %i.ma to i32
  %i.mc = mul nuw nsw i32 %i.mb, %i.lz
  %i.md = call i32 @llvm.umin.i32(i32 %i.mc, i32 65535)
  %i.me = trunc nuw i32 %i.md to i16
  %i.mf = load i16, ptr %.2131, align 2, !tbaa !218
  %i.mg = call noundef i16 @llvm.umin.i16(i16 %i.me, i16 %i.mf)
  store i16 %i.mg, ptr %.2131, align 2, !tbaa !218
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.083132, i64 %i.lv ; 2 uses
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !218
  %i.mk = zext i16 %i.mj to i32
  %i.ml = load i16, ptr %i.kg, align 2, !tbaa !218
  %i.mm = zext i16 %i.ml to i32
  %i.mn = mul nuw nsw i32 %i.mm, %i.mk
  %i.mo = call i32 @llvm.umin.i32(i32 %i.mn, i32 65535)
  %i.mp = trunc nuw i32 %i.mo to i16
  %i.mq = load i16, ptr %i.mh, align 2, !tbaa !218
  %i.mr = call noundef i16 @llvm.umin.i16(i16 %i.mp, i16 %i.mq)
  store i16 %i.mr, ptr %i.mh, align 2, !tbaa !218
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %i.al ; 3 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.lv ; 2 uses
  %niter276.next.1 = add i32 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i32 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !8765

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !8766
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E20_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i16 %2, ptr %i.a, align 2, !tbaa !218
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 1
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 1
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !8788

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !8789

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS8_10opDispatchItJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKtSO_E20_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_18
begin_hunk_19_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implItZNS1_10opDispatchItJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKtSH_E20_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ix = load i16, ptr %i.go, align 2, !tbaa !218
  %i.iy = zext i16 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.iy, %i.iw
  %i.ja = call i32 @llvm.umin.i32(i32 %i.iz, i32 65535)
  %i.jb = load i16, ptr %i.iu, align 2, !tbaa !218
  %i.jc = trunc nuw i32 %i.ja to i16
  %i.jd = add i16 %i.jb, %i.jc
  store i16 %i.jd, ptr %i.iu, align 2, !tbaa !218
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %i.gk ; 2 uses
  %niter285.next.1 = add i64 %niter285, 2         ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.loopexit.loopexit259.unr-lcssa, label %.lr.ph145.new, !llvm.loop !8838

.loopexit.loopexit259.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod282.not, label %.loopexit, label %.epil.preheader280

.epil.preheader280:                               ; preds = %.loopexit.loopexit259.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit259.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.gm, %.lr.ph145 ], [ %i.je, %.loopexit.loopexit259.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod283)
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv176.epil.init ; 2 uses
  %i.jg = load i16, ptr %.088143.epil.init, align 2, !tbaa !218
  %i.jh = zext i16 %i.jg to i32
  %i.ji = load i16, ptr %i.go, align 2, !tbaa !218
  %i.jj = zext i16 %i.ji to i32
  %i.jk = mul nuw nsw i32 %i.jj, %i.jh
  %i.jl = call i32 @llvm.umin.i32(i32 %i.jk, i32 65535)
  %i.jm = load i16, ptr %i.jf, align 2, !tbaa !218
  %i.jn = trunc nuw i32 %i.jl to i16
  %i.jo = add i16 %i.jm, %i.jn
  store i16 %i.jo, ptr %i.jf, align 2, !tbaa !218
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader280, %.loopexit.loopexit259.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !8839

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.jp = load ptr, ptr %i.ap, align 8, !tbaa !8854, !nonnull !138, !align !166
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !88 ; 8 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.js = load ptr, ptr %i.aq, align 8, !tbaa !8855, !nonnull !138, !align !228 ; 3 uses
  %i.jt = load ptr, ptr %i.an, align 8, !tbaa !8852, !nonnull !138, !align !163
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !32 ; 2 uses
  %i.jv = load ptr, ptr %i.ao, align 8, !tbaa !8853, !nonnull !138, !align !163
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !32 ; 2 uses
  %i.jx = add nsw i32 %i.jq, -1                   ; 2 uses
  %xtraiter265 = and i32 %i.jq, 1
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %.epil.preheader264, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter268 = and i32 %i.jq, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.preheader109, label %.epil.preheader264

.epil.preheader264:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.lk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cf, %.lr.ph129 ], [ %i.lm, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.ce, %.lr.ph129 ], [ %i.ll, %.preheader109.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.jq to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.jz = load i16, ptr %.093124.epil.init, align 2, !tbaa !218
  %i.ka = zext i16 %i.jz to i32
  %i.kb = load i16, ptr %.092125.epil.init, align 2, !tbaa !218
  %i.kc = zext i16 %i.kb to i32
  %i.kd = add nuw nsw i32 %i.kc, %i.ka
  %i.ke = load i16, ptr %i.js, align 2, !tbaa !218
  %i.kf = zext i16 %i.ke to i32
  %i.kg = mul nuw nsw i32 %i.kd, %i.kf
  %i.kh = call i32 @llvm.umin.i32(i32 %i.kg, i32 65535)
  %i.ki = trunc nuw i32 %i.kh to i16
  store i16 %i.ki, ptr %.091126.epil.init, align 2, !tbaa !218
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader264
  br i1 %i.ar, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.kj = load ptr, ptr %0, align 8, !tbaa !8845, !nonnull !138, !align !163
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !58
  %i.kl = load ptr, ptr %i.aq, align 8, !tbaa !8855, !nonnull !138, !align !228 ; 3 uses
  %xtraiter271 = and i32 %i.jq, 1
  %i.km = icmp eq i32 %i.jx, 0
  %unroll_iter275 = and i32 %i.jq, 2147483646
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod274 = trunc i32 %i.jq to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.lk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cf, %.lr.ph129.new ], [ %i.lm, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.ce, %.lr.ph129.new ], [ %i.ll, %bb.i ] ; 2 uses
  %niter269 = phi i32 [ 0, %.lr.ph129.new ], [ %niter269.next.1, %bb.i ]
  %i.kn = load i16, ptr %.093124, align 2, !tbaa !218
  %i.ko = zext i16 %i.kn to i32
  %i.kp = load i16, ptr %.092125, align 2, !tbaa !218
  %i.kq = zext i16 %i.kp to i32
  %i.kr = add nuw nsw i32 %i.kq, %i.ko
  %i.ks = load i16, ptr %i.js, align 2, !tbaa !218
  %i.kt = zext i16 %i.ks to i32
  %i.ku = mul nuw nsw i32 %i.kr, %i.kt
  %i.kv = call i32 @llvm.umin.i32(i32 %i.ku, i32 65535)
  %i.kw = trunc nuw i32 %i.kv to i16
  store i16 %i.kw, ptr %.091126, align 2, !tbaa !218
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %.091126, i64 %i.al ; 2 uses
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %.093124, i64 %i.ju ; 2 uses
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %.092125, i64 %i.jw ; 2 uses
  %i.la = load i16, ptr %i.ky, align 2, !tbaa !218
  %i.lb = zext i16 %i.la to i32
  %i.lc = load i16, ptr %i.kz, align 2, !tbaa !218
  %i.ld = zext i16 %i.lc to i32
  %i.le = add nuw nsw i32 %i.ld, %i.lb
  %i.lf = load i16, ptr %i.js, align 2, !tbaa !218
  %i.lg = zext i16 %i.lf to i32
  %i.lh = mul nuw nsw i32 %i.le, %i.lg
  %i.li = call i32 @llvm.umin.i32(i32 %i.lh, i32 65535)
  %i.lj = trunc nuw i32 %i.li to i16
  store i16 %i.lj, ptr %i.kx, align 2, !tbaa !218
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.al ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.ju ; 2 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %i.jw ; 2 uses
  %niter269.next.1 = add nuw nsw i32 %niter269, 2 ; 2 uses
  %niter269.ncmp.1 = icmp eq i32 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !8840

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod272.not, label %..loopexit105_crit_edge, label %.epil.preheader270

.epil.preheader270:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.me, %.lr.ph135 ], [ %i.na, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.mz, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.ln = load i16, ptr %.083132.epil.init, align 2, !tbaa !218
  %i.lo = zext i16 %i.ln to i32
  %i.lp = load i16, ptr %i.kl, align 2, !tbaa !218
  %i.lq = zext i16 %i.lp to i32
  %i.lr = mul nuw nsw i32 %i.lq, %i.lo
  %i.ls = call i32 @llvm.umin.i32(i32 %i.lr, i32 65535)
  %i.lt = load i16, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lu = trunc nuw i32 %i.ls to i16
  %i.lv = add i16 %i.lt, %i.lu
  store i16 %i.lv, ptr %.2131.epil.init, align 2, !tbaa !218
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.2131.epil.init, i64 %i.al
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader270
  %.lcssa = phi ptr [ %i.mz, %..loopexit105_crit_edge.unr-lcssa ], [ %i.lw, %.epil.preheader270 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !8841

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cd, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.kk, i64 %indvars.iv.next167
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !131
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 -8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !32
  %i.mc = lshr i64 %i.mb, 1                       ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !141 ; 2 uses
  br i1 %i.km, label %.epil.preheader270, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.na, %.lr.ph135.new ], [ %i.me, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.mz, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter276 = phi i32 [ %niter276.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.mf = load i16, ptr %.083132, align 2, !tbaa !218
  %i.mg = zext i16 %i.mf to i32
  %i.mh = load i16, ptr %i.kl, align 2, !tbaa !218
  %i.mi = zext i16 %i.mh to i32
  %i.mj = mul nuw nsw i32 %i.mi, %i.mg
  %i.mk = call i32 @llvm.umin.i32(i32 %i.mj, i32 65535)
  %i.ml = load i16, ptr %.2131, align 2, !tbaa !218
  %i.mm = trunc nuw i32 %i.mk to i16
  %i.mn = add i16 %i.ml, %i.mm
  store i16 %i.mn, ptr %.2131, align 2, !tbaa !218
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.2131, i64 %i.al ; 3 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.083132, i64 %i.mc ; 2 uses
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !218
  %i.mr = zext i16 %i.mq to i32
  %i.ms = load i16, ptr %i.kl, align 2, !tbaa !218
  %i.mt = zext i16 %i.ms to i32
  %i.mu = mul nuw nsw i32 %i.mt, %i.mr
  %i.mv = call i32 @llvm.umin.i32(i32 %i.mu, i32 65535)
  %i.mw = load i16, ptr %i.mo, align 2, !tbaa !218
  %i.mx = trunc nuw i32 %i.mv to i16
  %i.my = add i16 %i.mw, %i.mx
  store i16 %i.my, ptr %i.mo, align 2, !tbaa !218
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.al ; 3 uses
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %i.mc ; 2 uses
  %niter276.next.1 = add i32 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i32 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !8842

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !8843
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIjbZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjbZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIjbZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E0_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  tail call void @_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjbZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E0_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIjbZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E1_EEvRKT1_RKS7_S8_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 72
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 72
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl14binary_forwardIbbZNS1_14boolOpDispatchIJRSt6vectorINS_3MatESaIS5_EES8_EEEvmDpOT_EUlRKbSD_E_EEvRKT1_RKS7_S8_m, ptr noundef nonnull @.str.27, i32 noundef 653) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
end_hunk_19
begin_hunk_20_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E17_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !32
  %i.hd = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.he = mul i64 %i.hd, %i.hc
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !32
  %i.hg = call noundef i64 @llvm.umax.i64(i64 %i.hf, i64 %i.he)
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !32
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !10404

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176 ; 2 uses
  %i.hi = load i64, ptr %.088143, align 8, !tbaa !32
  %i.hj = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hk = mul i64 %i.hj, %i.hi
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hm = call noundef i64 @llvm.umax.i64(i64 %i.hl, i64 %i.hk)
  store i64 %i.hm, ptr %i.hh, align 8, !tbaa !32
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !tbaa !32
  %i.hr = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hs = mul i64 %i.hr, %i.hq
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !32
  %i.hu = call noundef i64 @llvm.umax.i64(i64 %i.ht, i64 %i.hs)
  store i64 %i.hu, ptr %i.hp, align 8, !tbaa !32
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !10405

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load i64, ptr %.088143.epil.init, align 8, !tbaa !32
  %i.hy = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hz = mul i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.ib = call noundef i64 @llvm.umax.i64(i64 %i.ia, i64 %i.hz)
  store i64 %i.ib, ptr %i.hw, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !10406

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.an, align 8, !tbaa !10421, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.ao, align 8, !tbaa !10422, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.al, align 8, !tbaa !10419, !nonnull !138, !align !163 ; 2 uses
  %i.ih = load ptr, ptr %i.am, align 8, !tbaa !10420, !nonnull !138, !align !163 ; 2 uses
  %i.ii = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cb, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jo, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.cc, %.lr.ph129 ], [ %i.jm, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.ik = load i64, ptr %.093124.epil.init, align 8, !tbaa !32
  %i.il = load i64, ptr %.092125.epil.init, align 8, !tbaa !32
  %i.im = call noundef i64 @llvm.umax.i64(i64 %i.ik, i64 %i.il)
  %i.in = load i64, ptr %i.if, align 8, !tbaa !32
  %i.io = mul i64 %i.in, %i.im
  store i64 %i.io, ptr %.091126.epil.init, align 8, !tbaa !32
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ap, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ip = load ptr, ptr %0, align 8, !tbaa !10412, !nonnull !138, !align !163
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !58
  %i.ir = load ptr, ptr %i.ao, align 8, !tbaa !10422, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.is = icmp eq i32 %i.ii, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cb, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jo, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.cc, %.lr.ph129.new ], [ %i.jm, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.it = load i64, ptr %.093124, align 8, !tbaa !32
  %i.iu = load i64, ptr %.092125, align 8, !tbaa !32
  %i.iv = call noundef i64 @llvm.umax.i64(i64 %i.it, i64 %i.iu)
  %i.iw = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ix = mul i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %.091126, align 8, !tbaa !32
  %i.iy = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jb, align 8, !tbaa !32
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !32
  %i.jg = call noundef i64 @llvm.umax.i64(i64 %i.je, i64 %i.jf)
  %i.jh = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ji = mul i64 %i.jh, %i.jg
  store i64 %i.ji, ptr %i.iz, align 8, !tbaa !32
  %i.jj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jj ; 2 uses
  %i.jl = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jn ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !10407

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kd, %.lr.ph135 ], [ %i.kt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jp = load i64, ptr %.083132.epil.init, align 8, !tbaa !32
  %i.jq = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.jr = mul i64 %i.jq, %i.jp
  %i.js = load i64, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.jt = call noundef i64 @llvm.umax.i64(i64 %i.js, i64 %i.jr)
  store i64 %i.jt, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.ju = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.ju
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jv, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !10408

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cb, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv.next167
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !131
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  %i.kb = lshr i64 %i.ka, 3                       ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !141 ; 2 uses
  br i1 %i.is, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.kt, %.lr.ph135.new ], [ %i.kd, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ks, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ke = load i64, ptr %.083132, align 8, !tbaa !32
  %i.kf = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.kg = mul i64 %i.kf, %i.ke
  %i.kh = load i64, ptr %.2131, align 8, !tbaa !32
  %i.ki = call noundef i64 @llvm.umax.i64(i64 %i.kh, i64 %i.kg)
  store i64 %i.ki, ptr %.2131, align 8, !tbaa !32
  %i.kj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kb ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.ko = mul i64 %i.kn, %i.km
  %i.kp = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.kq = call noundef i64 @llvm.umax.i64(i64 %i.kp, i64 %i.ko)
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !32
  %i.kr = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kb ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !10409

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !10410
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 3
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 3
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !10432

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !10433

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS8_10opDispatchImJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKmSO_E18_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_20
begin_hunk_21_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !32
  %i.hd = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.he = mul i64 %i.hd, %i.hc
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !32
  %i.hg = add i64 %i.he, %i.hf
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !32
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !10479

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176 ; 2 uses
  %i.hi = load i64, ptr %.088143, align 8, !tbaa !32
  %i.hj = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hk = mul i64 %i.hj, %i.hi
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hm = add i64 %i.hk, %i.hl
  store i64 %i.hm, ptr %i.hh, align 8, !tbaa !32
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !tbaa !32
  %i.hr = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hs = mul i64 %i.hr, %i.hq
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !32
  %i.hu = add i64 %i.hs, %i.ht
  store i64 %i.hu, ptr %i.hp, align 8, !tbaa !32
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !10480

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load i64, ptr %.088143.epil.init, align 8, !tbaa !32
  %i.hy = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hz = mul i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.ib = add i64 %i.hz, %i.ia
  store i64 %i.ib, ptr %i.hw, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !10481

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.an, align 8, !tbaa !10496, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.ao, align 8, !tbaa !10497, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.al, align 8, !tbaa !10494, !nonnull !138, !align !163 ; 2 uses
  %i.ih = load ptr, ptr %i.am, align 8, !tbaa !10495, !nonnull !138, !align !163 ; 2 uses
  %i.ii = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cb, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jo, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.cc, %.lr.ph129 ], [ %i.jm, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.ik = load i64, ptr %.093124.epil.init, align 8, !tbaa !32
  %i.il = load i64, ptr %.092125.epil.init, align 8, !tbaa !32
  %i.im = add i64 %i.il, %i.ik
  %i.in = load i64, ptr %i.if, align 8, !tbaa !32
  %i.io = mul i64 %i.in, %i.im
  store i64 %i.io, ptr %.091126.epil.init, align 8, !tbaa !32
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ap, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ip = load ptr, ptr %0, align 8, !tbaa !10487, !nonnull !138, !align !163
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !58
  %i.ir = load ptr, ptr %i.ao, align 8, !tbaa !10497, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.is = icmp eq i32 %i.ii, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cb, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jo, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.cc, %.lr.ph129.new ], [ %i.jm, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.it = load i64, ptr %.093124, align 8, !tbaa !32
  %i.iu = load i64, ptr %.092125, align 8, !tbaa !32
  %i.iv = add i64 %i.iu, %i.it
  %i.iw = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ix = mul i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %.091126, align 8, !tbaa !32
  %i.iy = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jb, align 8, !tbaa !32
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !32
  %i.jg = add i64 %i.jf, %i.je
  %i.jh = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ji = mul i64 %i.jh, %i.jg
  store i64 %i.ji, ptr %i.iz, align 8, !tbaa !32
  %i.jj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jj ; 2 uses
  %i.jl = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jn ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !10482

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kd, %.lr.ph135 ], [ %i.kt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jp = load i64, ptr %.083132.epil.init, align 8, !tbaa !32
  %i.jq = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.jr = mul i64 %i.jq, %i.jp
  %i.js = load i64, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.jt = add i64 %i.jr, %i.js
  store i64 %i.jt, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.ju = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.ju
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jv, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !10483

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cb, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv.next167
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !131
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  %i.kb = lshr i64 %i.ka, 3                       ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !141 ; 2 uses
  br i1 %i.is, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.kt, %.lr.ph135.new ], [ %i.kd, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ks, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ke = load i64, ptr %.083132, align 8, !tbaa !32
  %i.kf = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.kg = mul i64 %i.kf, %i.ke
  %i.kh = load i64, ptr %.2131, align 8, !tbaa !32
  %i.ki = add i64 %i.kg, %i.kh
  store i64 %i.ki, ptr %.2131, align 8, !tbaa !32
  %i.kj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kb ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.ko = mul i64 %i.kn, %i.km
  %i.kp = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.kq = add i64 %i.ko, %i.kp
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !32
  %i.kr = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kb ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !10484

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !10485
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E19_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 3
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 3
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !10507

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !10508

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS8_10opDispatchImJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKmSO_E19_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_21
begin_hunk_22_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E19_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !32
  %i.hd = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.he = mul i64 %i.hd, %i.hc
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !32
  %i.hg = call noundef i64 @llvm.umin.i64(i64 %i.he, i64 %i.hf)
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !32
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !10553

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176 ; 2 uses
  %i.hi = load i64, ptr %.088143, align 8, !tbaa !32
  %i.hj = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hk = mul i64 %i.hj, %i.hi
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hm = call noundef i64 @llvm.umin.i64(i64 %i.hk, i64 %i.hl)
  store i64 %i.hm, ptr %i.hh, align 8, !tbaa !32
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !tbaa !32
  %i.hr = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hs = mul i64 %i.hr, %i.hq
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !32
  %i.hu = call noundef i64 @llvm.umin.i64(i64 %i.hs, i64 %i.ht)
  store i64 %i.hu, ptr %i.hp, align 8, !tbaa !32
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !10554

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load i64, ptr %.088143.epil.init, align 8, !tbaa !32
  %i.hy = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hz = mul i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.ib = call noundef i64 @llvm.umin.i64(i64 %i.hz, i64 %i.ia)
  store i64 %i.ib, ptr %i.hw, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !10555

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.an, align 8, !tbaa !10570, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.ao, align 8, !tbaa !10571, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.al, align 8, !tbaa !10568, !nonnull !138, !align !163 ; 2 uses
  %i.ih = load ptr, ptr %i.am, align 8, !tbaa !10569, !nonnull !138, !align !163 ; 2 uses
  %i.ii = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cb, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jo, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.cc, %.lr.ph129 ], [ %i.jm, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.ik = load i64, ptr %.092125.epil.init, align 8, !tbaa !32
  %i.il = load i64, ptr %.093124.epil.init, align 8, !tbaa !32
  %i.im = call noundef i64 @llvm.umin.i64(i64 %i.ik, i64 %i.il)
  %i.in = load i64, ptr %i.if, align 8, !tbaa !32
  %i.io = mul i64 %i.in, %i.im
  store i64 %i.io, ptr %.091126.epil.init, align 8, !tbaa !32
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ap, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ip = load ptr, ptr %0, align 8, !tbaa !10561, !nonnull !138, !align !163
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !58
  %i.ir = load ptr, ptr %i.ao, align 8, !tbaa !10571, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.is = icmp eq i32 %i.ii, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cb, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jo, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.cc, %.lr.ph129.new ], [ %i.jm, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.it = load i64, ptr %.092125, align 8, !tbaa !32
  %i.iu = load i64, ptr %.093124, align 8, !tbaa !32
  %i.iv = call noundef i64 @llvm.umin.i64(i64 %i.it, i64 %i.iu)
  %i.iw = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ix = mul i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %.091126, align 8, !tbaa !32
  %i.iy = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !32
  %i.jf = load i64, ptr %i.jb, align 8, !tbaa !32
  %i.jg = call noundef i64 @llvm.umin.i64(i64 %i.je, i64 %i.jf)
  %i.jh = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ji = mul i64 %i.jh, %i.jg
  store i64 %i.ji, ptr %i.iz, align 8, !tbaa !32
  %i.jj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jj ; 2 uses
  %i.jl = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jn ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !10556

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kd, %.lr.ph135 ], [ %i.kt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jp = load i64, ptr %.083132.epil.init, align 8, !tbaa !32
  %i.jq = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.jr = mul i64 %i.jq, %i.jp
  %i.js = load i64, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.jt = call noundef i64 @llvm.umin.i64(i64 %i.jr, i64 %i.js)
  store i64 %i.jt, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.ju = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.ju
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jv, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !10557

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cb, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv.next167
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !131
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  %i.kb = lshr i64 %i.ka, 3                       ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !141 ; 2 uses
  br i1 %i.is, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.kt, %.lr.ph135.new ], [ %i.kd, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ks, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ke = load i64, ptr %.083132, align 8, !tbaa !32
  %i.kf = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.kg = mul i64 %i.kf, %i.ke
  %i.kh = load i64, ptr %.2131, align 8, !tbaa !32
  %i.ki = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.kh)
  store i64 %i.ki, ptr %.2131, align 8, !tbaa !32
  %i.kj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kb ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.ko = mul i64 %i.kn, %i.km
  %i.kp = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.kq = call noundef i64 @llvm.umin.i64(i64 %i.ko, i64 %i.kp)
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !32
  %i.kr = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kb ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !10558

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !10559
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E20_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.cv::AutoBuffer.178", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 9 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  store i32 %3, ptr %i.b, align 4, !tbaa !88
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  store ptr %6, ptr %i.d, align 8, !tbaa !156
  store ptr %7, ptr %i.e, align 8, !tbaa !141
  %i.k = icmp sgt i32 %4, 1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implIhZNS1_10opDispatchIhJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKhSH_E18_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEm, ptr noundef nonnull @.str.27, i32 noundef 661) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.s = load ptr, ptr %8, align 8, !tbaa !58     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = lshr i64 %i.w, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = lshr i64 %i.ab, 3
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = lshr i64 %i.ag, 3
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88 ; 4 uses
  store i32 %i.al, ptr %i.i, align 4, !tbaa !88
  %i.am = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %.not5.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !88
  %wide.load75 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !88
  %i.ax = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !10581

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader88 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !88
  %i.bc = mul nsw i32 %i.bb, %.07.i               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit, label %.lr.ph.i, !llvm.loop !10582

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = icmp eq i32 %.lcssa, 1
  br i1 %i.be, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS8_10opDispatchImJRSt6vectorINS0_3MatESaISC_EESF_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISH_bEE5valueEvE4typeEmDpOT0_EUlRKmSO_E20_EEvRKT0_SH_iiRKSB_IiSaIiEEPPKcPcRKSB_ISB_ImSaImEESaIS12_EEmEUlS3_E0_vEEOSH_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread: ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.s to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i = icmp ugt i64 %i.bk, 136
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !175
  br i1 %.not.i.i, label %bb.h, label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

bb.h:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread
  %i.bn = icmp ugt i64 %i.bk, 2305843009213693951
  %i.bo = shl nuw nsw i64 %i.bk, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #23 ; 2 uses
  store ptr %i.bq, ptr %12, align 8, !tbaa !174
  %.pre = load i32, ptr %i.b, align 4, !tbaa !88
  br label %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit

_ZN2cv10AutoBufferIPcLm136EEC2Em.exit:            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread, %bb.h
  %i.br = phi i32 [ %3, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SB_SA_T1_.exit.thread ], [ %i.bq, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !156
  store ptr %7, ptr %i.bs, align 8, !tbaa !141
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPcLm136EEC2Em.exit
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.br, 4
end_hunk_22
begin_hunk_23_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E20_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next182 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next182
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !32
  %i.hd = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.he = mul i64 %i.hd, %i.hc
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !32
  %i.hg = add i64 %i.he, %i.hf
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !32
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %exitcond185.not.1 = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184
  br i1 %exitcond185.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !10628

.lr.ph145.new:                                    ; preds = %.lr.ph145, %.lr.ph145.new
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ] ; 3 uses
  %.088143 = phi ptr [ %i.hv, %.lr.ph145.new ], [ %i.fx, %.lr.ph145 ] ; 2 uses
  %niter289 = phi i64 [ %niter289.next.1, %.lr.ph145.new ], [ 0, %.lr.ph145 ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176 ; 2 uses
  %i.hi = load i64, ptr %.088143, align 8, !tbaa !32
  %i.hj = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hk = mul i64 %i.hj, %i.hi
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hm = add i64 %i.hk, %i.hl
  store i64 %i.hm, ptr %i.hh, align 8, !tbaa !32
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.088143, i64 %i.fv ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !tbaa !32
  %i.hr = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hs = mul i64 %i.hr, %i.hq
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !32
  %i.hu = add i64 %i.hs, %i.ht
  store i64 %i.hu, ptr %i.hp, align 8, !tbaa !32
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.fv ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit263.unr-lcssa, label %.lr.ph145.new, !llvm.loop !10629

.loopexit.loopexit263.unr-lcssa:                  ; preds = %.lr.ph145.new
  br i1 %lcmp.mod286.not, label %.loopexit, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.loopexit.loopexit263.unr-lcssa, %.lr.ph145
  %indvars.iv176.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177.1, %.loopexit.loopexit263.unr-lcssa ]
  %.088143.epil.init = phi ptr [ %i.fx, %.lr.ph145 ], [ %i.hv, %.loopexit.loopexit263.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv176.epil.init ; 2 uses
  %i.hx = load i64, ptr %.088143.epil.init, align 8, !tbaa !32
  %i.hy = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.hz = mul i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.ib = add i64 %i.hz, %i.ia
  store i64 %i.ib, ptr %i.hw, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader284, %.loopexit.loopexit263.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader103, %.preheader
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit107, label %bb.g, !llvm.loop !10630

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge123.split
  %i.ic = load ptr, ptr %i.an, align 8, !tbaa !10645, !nonnull !138, !align !166
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !88 ; 8 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph129, label %.loopexit107

.lr.ph129:                                        ; preds = %bb.h
  %i.if = load ptr, ptr %i.ao, align 8, !tbaa !10646, !nonnull !138, !align !163 ; 3 uses
  %i.ig = load ptr, ptr %i.al, align 8, !tbaa !10643, !nonnull !138, !align !163 ; 2 uses
  %i.ih = load ptr, ptr %i.am, align 8, !tbaa !10644, !nonnull !138, !align !163 ; 2 uses
  %i.ii = add nsw i32 %i.id, -1                   ; 2 uses
  %xtraiter269 = and i32 %i.id, 1
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.epil.preheader268, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter272 = and i32 %i.id, 2147483646
  br label %bb.i

.preheader109.unr-lcssa:                          ; preds = %bb.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.preheader109, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader109.unr-lcssa, %.lr.ph129
  %.091126.epil.init = phi ptr [ %i.cb, %.lr.ph129 ], [ %i.jk, %.preheader109.unr-lcssa ]
  %.092125.epil.init = phi ptr [ %i.cd, %.lr.ph129 ], [ %i.jo, %.preheader109.unr-lcssa ]
  %.093124.epil.init = phi ptr [ %i.cc, %.lr.ph129 ], [ %i.jm, %.preheader109.unr-lcssa ]
  %lcmp.mod271 = trunc i32 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.ik = load i64, ptr %.093124.epil.init, align 8, !tbaa !32
  %i.il = load i64, ptr %.092125.epil.init, align 8, !tbaa !32
  %i.im = add i64 %i.il, %i.ik
  %i.in = load i64, ptr %i.if, align 8, !tbaa !32
  %i.io = mul i64 %i.in, %i.im
  store i64 %i.io, ptr %.091126.epil.init, align 8, !tbaa !32
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.unr-lcssa, %.epil.preheader268
  br i1 %i.ap, label %.lr.ph139, label %.loopexit107

.lr.ph139:                                        ; preds = %.preheader109
  %i.ip = load ptr, ptr %0, align 8, !tbaa !10636, !nonnull !138, !align !163
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !58
  %i.ir = load ptr, ptr %i.ao, align 8, !tbaa !10646, !nonnull !138, !align !163 ; 3 uses
  %xtraiter275 = and i32 %i.id, 1
  %i.is = icmp eq i32 %i.ii, 0
  %unroll_iter279 = and i32 %i.id, 2147483646
  %lcmp.mod276.not = icmp eq i32 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.id to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cb, %.lr.ph129.new ], [ %i.jk, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.jo, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.cc, %.lr.ph129.new ], [ %i.jm, %bb.i ] ; 2 uses
  %niter273 = phi i32 [ 0, %.lr.ph129.new ], [ %niter273.next.1, %bb.i ]
  %i.it = load i64, ptr %.093124, align 8, !tbaa !32
  %i.iu = load i64, ptr %.092125, align 8, !tbaa !32
  %i.iv = add i64 %i.iu, %i.it
  %i.iw = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ix = mul i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %.091126, align 8, !tbaa !32
  %i.iy = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jb, align 8, !tbaa !32
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !32
  %i.jg = add i64 %i.jf, %i.je
  %i.jh = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ji = mul i64 %i.jh, %i.jg
  store i64 %i.ji, ptr %i.iz, align 8, !tbaa !32
  %i.jj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jj ; 2 uses
  %i.jl = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jn ; 2 uses
  %niter273.next.1 = add nuw nsw i32 %niter273, 2 ; 2 uses
  %niter273.ncmp.1 = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !10631

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod276.not, label %..loopexit105_crit_edge, label %.epil.preheader274

.epil.preheader274:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kd, %.lr.ph135 ], [ %i.kt, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.jp = load i64, ptr %.083132.epil.init, align 8, !tbaa !32
  %i.jq = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.jr = mul i64 %i.jq, %i.jp
  %i.js = load i64, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.jt = add i64 %i.jr, %i.js
  store i64 %i.jt, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.ju = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.ju
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader274
  %.lcssa = phi ptr [ %i.ks, %..loopexit105_crit_edge.unr-lcssa ], [ %i.jv, %.epil.preheader274 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !10632

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cb, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv.next167
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !131
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  %i.kb = lshr i64 %i.ka, 3                       ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !141 ; 2 uses
  br i1 %i.is, label %.epil.preheader274, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.kt, %.lr.ph135.new ], [ %i.kd, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ks, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter280 = phi i32 [ %niter280.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.ke = load i64, ptr %.083132, align 8, !tbaa !32
  %i.kf = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.kg = mul i64 %i.kf, %i.ke
  %i.kh = load i64, ptr %.2131, align 8, !tbaa !32
  %i.ki = add i64 %i.kg, %i.kh
  store i64 %i.ki, ptr %.2131, align 8, !tbaa !32
  %i.kj = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kb ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.kn = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.ko = mul i64 %i.kn, %i.km
  %i.kp = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.kq = add i64 %i.ko, %i.kp
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !32
  %i.kr = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kb ; 2 uses
  %niter280.next.1 = add i32 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i32 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !10633

.loopexit107:                                     ; preds = %..loopexit105_crit_edge, %.loopexit, %bb.h, %.preheader109, %.preheader106
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge152, label %bb.d, !llvm.loop !10634
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20NaryEltwiseLayerImpl15findCommonShapeERKSt6vectorINS_8MatShapeESaIS3_EE(ptr dead_on_unwind noalias writable sret(%"struct.cv::MatShape") align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 37 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 52                  ; 4 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn20NaryEltwiseLayerImpl15findCommonShapeERKSt6vectorINS_8MatShapeESaIS3_EE, ptr noundef nonnull @.str.27, i32 noundef 297) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %8, align 8, !tbaa !31     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !30
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %common.resume

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10663 ; 2 uses
  %i.q = load i32, ptr %i.c, align 4, !tbaa !87   ; 5 uses
  %i.r = insertelement <2 x i32> <i32 7, i32 poison>, i32 %i.p, i64 1 ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %i.s = icmp eq i64 %i.f, 52
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.055169 = phi i1 [ true, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ]
  %.063166 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 3 uses
  %.0165 = phi i32 [ %i.q, %.lr.ph.preheader.new ], [ %.sroa.speculated119.1, %.lr.ph ]
  %i.t = phi <2 x i1> [ splat (i1 true), %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.063166 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !87   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load <2 x i32>, ptr %i.w, align 4
  %i.y = icmp eq <2 x i32> %i.x, %i.r
  %i.z = select <2 x i1> %i.t, <2 x i1> %i.y, <2 x i1> zeroinitializer
  %i.aa = icmp eq i32 %i.v, %i.q
  %i.ab = select i1 %.055169, i1 %i.aa, i1 false
  %.sroa.speculated119 = tail call i32 @llvm.smax.i32(i32 %.0165, i32 %i.v)
  %i.ac = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.063166 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !87 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ag = load <2 x i32>, ptr %i.af, align 4
  %i.ah = icmp eq <2 x i32> %i.ag, %i.r
  %i.ai = select <2 x i1> %i.z, <2 x i1> %i.ah, <2 x i1> zeroinitializer ; 3 uses
  %i.aj = icmp eq i32 %i.ae, %i.q
  %i.ak = select i1 %i.ab, i1 %i.aj, i1 false     ; 3 uses
  %.sroa.speculated119.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated119, i32 %i.ae) ; 3 uses
  %i.al = add nuw i64 %.063166, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !10656

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.055169.epil.init = phi i1 [ true, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.unr-lcssa ]
  %.063166.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.al, %._crit_edge.unr-lcssa ]
  %.0165.epil.init = phi i32 [ %i.q, %.lr.ph.preheader ], [ %.sroa.speculated119.1, %._crit_edge.unr-lcssa ]
  %.epil.init = phi <2 x i1> [ splat (i1 true), %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.am = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.063166.epil.init ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !87 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = load <2 x i32>, ptr %i.ao, align 4
  %i.aq = icmp eq <2 x i32> %i.ap, %i.r
  %i.ar = select <2 x i1> %.epil.init, <2 x i1> %i.aq, <2 x i1> zeroinitializer
  %i.as = icmp eq i32 %i.an, %i.q
  %i.at = select i1 %.055169.epil.init, i1 %i.as, i1 false
  %.sroa.speculated119.epil = tail call i32 @llvm.smax.i32(i32 %.0165.epil.init, i32 %i.an)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa213 = phi <2 x i1> [ %i.ai, %._crit_edge.unr-lcssa ], [ %i.ar, %.lr.ph.epil.preheader ] ; 2 uses
  %.lcssa = phi i1 [ %i.ak, %._crit_edge.unr-lcssa ], [ %i.at, %.lr.ph.epil.preheader ]
  %.sroa.speculated119.lcssa = phi i32 [ %.sroa.speculated119.1, %._crit_edge.unr-lcssa ], [ %.sroa.speculated119.epil, %.lr.ph.epil.preheader ] ; 4 uses
  tail call void @_ZN2cv8MatShapeC1EiiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %0, i32 noundef %.sroa.speculated119.lcssa, i32 noundef 1, i32 noundef 0)
  %i.au = extractelement <2 x i1> %.lcssa213, i64 0
  %i.av = extractelement <2 x i1> %.lcssa213, i64 1
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  %or.cond3 = select i1 %or.cond, i1 %.lcssa, i1 false
  br i1 %or.cond3, label %bb.g, label %.lr.ph179

bb.g:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 7, ptr %i.aw, align 4, !tbaa !10664
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.p, ptr %i.ax, align 4, !tbaa !10663
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %._crit_edge, %bb.g
  %i.ay = icmp sgt i32 %.sroa.speculated119.lcssa, 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 344
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 352
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 353
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 360
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24    ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ce = getelementptr i8, ptr %i.cc, i64 -24
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br i1 %i.ay, label %.lr.ph175.preheader, label %._crit_edge180.split

.lr.ph175.preheader:                              ; preds = %.lr.ph179
  %wide.trip.count = zext nneg i32 %.sroa.speculated119.lcssa to i64
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %._crit_edge176
  %.164177 = phi i64 [ %i.cm, %._crit_edge176 ], [ 0, %.lr.ph175.preheader ] ; 2 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !94
  %i.ch = getelementptr inbounds nuw [52 x i8], ptr %i.cg, i64 %.164177 ; 3 uses
end_hunk_23
