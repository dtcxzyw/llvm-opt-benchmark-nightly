Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/nary_eltwise_layers?download=true
inline.NumInlined: 39349
inline.NumDeleted: 7373
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1195
loop-unroll.NumUnrolled: 1197
begin_hunk_0_@_ZZN2cv3dnn20NaryEltwiseLayerImpl17nary_forward_implImZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E20_EEvRKT0_SA_iiRKS4_IiSaIiEEPPKcPcRKS4_IS4_ImSaImEESaISV_EEmENKUlRKNS_5RangeEE0_clES12_:bb.a

.lr.ph139:                                        ; preds = %.preheader109
  %i.iv = load ptr, ptr %0, align 8, !tbaa !10636, !nonnull !138, !align !163
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !58
  %i.ix = load ptr, ptr %i.ao, align 8, !tbaa !10646, !nonnull !138, !align !163 ; 3 uses
  %xtraiter291 = and i32 %i.ij, 1
  %i.iy = icmp eq i32 %i.io, 0
  %unroll_iter295 = and i32 %i.ij, 2147483646
  %lcmp.mod292.not = icmp eq i32 %xtraiter291, 0
  %lcmp.mod294 = trunc i32 %i.ij to i1
  br label %.lr.ph135

bb.i:                                             ; preds = %bb.i, %.lr.ph129.new
  %.091126 = phi ptr [ %i.cb, %.lr.ph129.new ], [ %i.jq, %bb.i ] ; 2 uses
  %.092125 = phi ptr [ %i.cd, %.lr.ph129.new ], [ %i.ju, %bb.i ] ; 2 uses
  %.093124 = phi ptr [ %i.cc, %.lr.ph129.new ], [ %i.js, %bb.i ] ; 2 uses
  %niter289 = phi i32 [ 0, %.lr.ph129.new ], [ %niter289.next.1, %bb.i ]
  %i.iz = load i64, ptr %.093124, align 8, !tbaa !32
  %i.ja = load i64, ptr %.092125, align 8, !tbaa !32
  %i.jb = add i64 %i.ja, %i.iz
  %i.jc = load i64, ptr %i.il, align 8, !tbaa !32
  %i.jd = mul i64 %i.jc, %i.jb
  store i64 %i.jd, ptr %.091126, align 8, !tbaa !32
  %i.je = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.091126, i64 %i.je ; 2 uses
  %i.jg = load i64, ptr %i.im, align 8, !tbaa !32
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.093124, i64 %i.jg ; 2 uses
  %i.ji = load i64, ptr %i.in, align 8, !tbaa !32
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.092125, i64 %i.ji ; 2 uses
  %i.jk = load i64, ptr %i.jh, align 8, !tbaa !32
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !32
  %i.jm = add i64 %i.jl, %i.jk
  %i.jn = load i64, ptr %i.il, align 8, !tbaa !32
  %i.jo = mul i64 %i.jn, %i.jm
  store i64 %i.jo, ptr %i.jf, align 8, !tbaa !32
  %i.jp = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jp ; 2 uses
  %i.jr = load i64, ptr %i.im, align 8, !tbaa !32
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jr ; 2 uses
  %i.jt = load i64, ptr %i.in, align 8, !tbaa !32
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jt ; 2 uses
  %niter289.next.1 = add nuw nsw i32 %niter289, 2 ; 2 uses
  %niter289.ncmp.1 = icmp eq i32 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.preheader109.unr-lcssa, label %bb.i, !llvm.loop !10631

..loopexit105_crit_edge.unr-lcssa:                ; preds = %.lr.ph135.new
  br i1 %lcmp.mod292.not, label %..loopexit105_crit_edge, label %.epil.preheader290

.epil.preheader290:                               ; preds = %..loopexit105_crit_edge.unr-lcssa, %.lr.ph135
  %.083132.epil.init = phi ptr [ %i.kj, %.lr.ph135 ], [ %i.kz, %..loopexit105_crit_edge.unr-lcssa ]
  %.2131.epil.init = phi ptr [ %.1137, %.lr.ph135 ], [ %i.ky, %..loopexit105_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod294)
  %i.jv = load i64, ptr %.083132.epil.init, align 8, !tbaa !32
  %i.jw = load i64, ptr %i.ix, align 8, !tbaa !32
  %i.jx = mul i64 %i.jw, %i.jv
  %i.jy = load i64, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.jz = add i64 %i.jx, %i.jy
  store i64 %i.jz, ptr %.2131.epil.init, align 8, !tbaa !32
  %i.ka = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.2131.epil.init, i64 %i.ka
  br label %..loopexit105_crit_edge

..loopexit105_crit_edge:                          ; preds = %..loopexit105_crit_edge.unr-lcssa, %.epil.preheader290
  %.lcssa = phi ptr [ %i.ky, %..loopexit105_crit_edge.unr-lcssa ], [ %i.kb, %.epil.preheader290 ]
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit107, label %.lr.ph135, !llvm.loop !10632

.lr.ph135:                                        ; preds = %.lr.ph139, %..loopexit105_crit_edge
  %indvars.iv166 = phi i64 [ 2, %.lr.ph139 ], [ %indvars.iv.next167, %..loopexit105_crit_edge ]
  %.1137 = phi ptr [ %i.cb, %.lr.ph139 ], [ %.lcssa, %..loopexit105_crit_edge ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %i.iw, i64 %indvars.iv.next167
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !131
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 -8
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !32
  %i.kh = lshr i64 %i.kg, 3                       ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !141 ; 2 uses
  br i1 %i.iy, label %.epil.preheader290, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135, %.lr.ph135.new
  %.083132 = phi ptr [ %i.kz, %.lr.ph135.new ], [ %i.kj, %.lr.ph135 ] ; 2 uses
  %.2131 = phi ptr [ %i.ky, %.lr.ph135.new ], [ %.1137, %.lr.ph135 ] ; 3 uses
  %niter296 = phi i32 [ %niter296.next.1, %.lr.ph135.new ], [ 0, %.lr.ph135 ]
  %i.kk = load i64, ptr %.083132, align 8, !tbaa !32
  %i.kl = load i64, ptr %i.ix, align 8, !tbaa !32
  %i.km = mul i64 %i.kl, %i.kk
  %i.kn = load i64, ptr %.2131, align 8, !tbaa !32
  %i.ko = add i64 %i.km, %i.kn
  store i64 %i.ko, ptr %.2131, align 8, !tbaa !32
  %i.kp = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.2131, i64 %i.kp ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.083132, i64 %i.kh ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !32
  %i.kt = load i64, ptr %i.ix, align 8, !tbaa !32
  %i.ku = mul i64 %i.kt, %i.ks
  %i.kv = load i64, ptr %i.kq, align 8, !tbaa !32
  %i.kw = add i64 %i.ku, %i.kv
  store i64 %i.kw, ptr %i.kq, align 8, !tbaa !32
  %i.kx = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kx ; 3 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kh ; 2 uses
  %niter296.next.1 = add i32 %niter296, 2         ; 2 uses
  %niter296.ncmp.1 = icmp eq i32 %niter296.next.1, %unroll_iter295
  br i1 %niter296.ncmp.1, label %..loopexit105_crit_edge.unr-lcssa, label %.lr.ph135.new, !llvm.loop !10633

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
  %.055169 = phi i1 [ true, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %.063166 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 3 uses
  %.0165 = phi i32 [ %i.q, %.lr.ph.preheader.new ], [ %.sroa.speculated119.1, %.lr.ph ]
  %i.t = phi <2 x i1> [ splat (i1 true), %.lr.ph.preheader.new ], [ %13, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.063166 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !87   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load <2 x i32>, ptr %i.w, align 4
  %i.y = icmp eq <2 x i32> %i.x, %i.r
  %12 = select <2 x i1> %i.t, <2 x i1> %i.y, <2 x i1> zeroinitializer
  %i.z = icmp eq i32 %i.v, %i.q
  %i.aa = select i1 %.055169, i1 %i.z, i1 false
  %.sroa.speculated119 = tail call i32 @llvm.smax.i32(i32 %.0165, i32 %i.v)
  %i.ab = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.063166 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !87 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.af = load <2 x i32>, ptr %i.ae, align 4
  %i.ag = icmp eq <2 x i32> %i.af, %i.r
  %13 = select <2 x i1> %12, <2 x i1> %i.ag, <2 x i1> zeroinitializer ; 3 uses
  %i.ah = icmp eq i32 %i.ad, %i.q
  %i.ai = select i1 %i.aa, i1 %i.ah, i1 false     ; 3 uses
  %.sroa.speculated119.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated119, i32 %i.ad) ; 3 uses
  %i.aj = add nuw i64 %.063166, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !10656

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.055169.epil.init = phi i1 [ true, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ]
  %.063166.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %.0165.epil.init = phi i32 [ %i.q, %.lr.ph.preheader ], [ %.sroa.speculated119.1, %._crit_edge.unr-lcssa ]
  %.epil.init = phi <2 x i1> [ splat (i1 true), %.lr.ph.preheader ], [ %13, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.ak = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.063166.epil.init ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !87 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load <2 x i32>, ptr %i.am, align 4
  %i.ao = icmp eq <2 x i32> %i.an, %i.r
  %14 = select <2 x i1> %.epil.init, <2 x i1> %i.ao, <2 x i1> zeroinitializer
  %i.ap = icmp eq i32 %i.al, %i.q
  %i.aq = select i1 %.055169.epil.init, i1 %i.ap, i1 false
  %.sroa.speculated119.epil = tail call i32 @llvm.smax.i32(i32 %.0165.epil.init, i32 %i.al)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa213 = phi <2 x i1> [ %13, %._crit_edge.unr-lcssa ], [ %14, %.lr.ph.epil.preheader ] ; 2 uses
  %.lcssa = phi i1 [ %i.ai, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil.preheader ]
  %.sroa.speculated119.lcssa = phi i32 [ %.sroa.speculated119.1, %._crit_edge.unr-lcssa ], [ %.sroa.speculated119.epil, %.lr.ph.epil.preheader ] ; 4 uses
  tail call void @_ZN2cv8MatShapeC1EiiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %0, i32 noundef %.sroa.speculated119.lcssa, i32 noundef 1, i32 noundef 0)
  %15 = extractelement <2 x i1> %.lcssa213, i64 0
  %16 = extractelement <2 x i1> %.lcssa213, i64 1
  %or.cond = select i1 %15, i1 %16, i1 false
  %or.cond3 = select i1 %or.cond, i1 %.lcssa, i1 false
  br i1 %or.cond3, label %bb.g, label %.lr.ph179

bb.g:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 7, ptr %i.ar, align 4, !tbaa !10664
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.p, ptr %i.as, align 4, !tbaa !10663
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %._crit_edge, %bb.g
  %i.at = icmp sgt i32 %.sroa.speculated119.lcssa, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 344
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 352
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 353
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 360
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24    ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br i1 %i.at, label %.lr.ph175.preheader, label %._crit_edge180.split

.lr.ph175.preheader:                              ; preds = %.lr.ph179
  %wide.trip.count = zext nneg i32 %.sroa.speculated119.lcssa to i64
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %._crit_edge176
  %.164177 = phi i64 [ %i.ch, %._crit_edge176 ], [ 0, %.lr.ph175.preheader ] ; 2 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !94
  %i.cc = getelementptr inbounds nuw [52 x i8], ptr %i.cb, i64 %.164177 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !87
  %i.ce = sub nsw i32 %.sroa.speculated119.lcssa, %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cg = sext i32 %i.ce to i64
  br label %bb.h

._crit_edge176:                                   ; preds = %bb.ao
  %i.ch = add nuw i64 %.164177, 1                 ; 2 uses
  %exitcond186.not = icmp eq i64 %i.ch, %i.g
  br i1 %exitcond186.not, label %._crit_edge180.split, label %.lr.ph175, !llvm.loop !10657

bb.h:                                             ; preds = %.lr.ph175, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next, %bb.ao ] ; 7 uses
  %i.ci = icmp slt i64 %indvars.iv, %i.cg
  br i1 %i.ci, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ck = sub nsw i32 %i.cj, %i.ce                ; 2 uses
  %i.cl = load i32, ptr %i.cc, align 4, !tbaa !87
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.cl, i32 1)
  %i.cm = icmp ult i32 %i.ck, %narrow.i
  br i1 %i.cm, label %_ZNK2cv8MatShapeixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.43, i32 noundef 103) #27
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !30
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100, %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77 ], [ %.pn.pn.i, %.body.i ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100 ], [ %.pn69.pn, %bb.aj ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.i
  %i.ct = zext nneg i32 %i.ck to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !88
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZNK2cv8MatShapeixEm.exit
  %i.cw = phi i32 [ %i.cv, %_ZNK2cv8MatShapeixEm.exit ], [ 1, %bb.h ] ; 6 uses
  %i.cx = load i32, ptr %0, align 4, !tbaa !87
  %narrow.i74 = call i32 @llvm.smax.i32(i32 %i.cx, i32 1)
  %i.cy = zext nneg i32 %narrow.i74 to i64
  %i.cz = icmp samesign ult i64 %indvars.iv, %i.cy
  br i1 %i.cz, label %_ZN2cv8MatShapeixEm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.43, i32 noundef 97) #27
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.p
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !88 ; 6 uses
  %i.di = icmp eq i32 %i.cw, %i.dh
  %i.dj = icmp eq i32 %i.cw, 1                    ; 2 uses
  %i.dk = icmp eq i32 %i.dh, 1
  %i.dl = or i1 %i.di, %i.dk
  %or.cond7 = or i1 %i.dj, %i.dl
  br i1 %or.cond7, label %_ZN2cv8MatShapeixEm.exit84, label %bb.q

_ZN2cv8MatShapeixEm.exit84:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.dm = select i1 %i.dj, i32 %i.dh, i32 %i.cw
  br label %bb.ao

bb.q:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.dn = call noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() ; 3 uses
  %.not68 = icmp eq ptr %i.dn, null               ; 2 uses
  br i1 %.not68, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !10667
  %i.dq = icmp slt i32 %i.dp, 3
  br i1 %i.dq, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.av) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.av, align 8, !tbaa !23
  store ptr null, ptr %i.aw, align 8, !tbaa !10673
  store i8 0, ptr %i.ax, align 8, !tbaa !10674
  store i8 0, ptr %i.ay, align 1, !tbaa !10675
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  store ptr %i.ba, ptr %10, align 8, !tbaa !23
  %i.dr = load i64, ptr %i.bc, align 8
  %i.ds = getelementptr inbounds i8, ptr %10, i64 %i.dr
  store ptr %i.bb, ptr %i.ds, align 8, !tbaa !23
  store i64 0, ptr %i.bd, align 8, !tbaa !10677
  %i.dt = load ptr, ptr %10, align 8, !tbaa !23
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %10, i64 %i.dv
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.dw, ptr noundef null)
          to label %.noexc.i unwind label %bb.v

end_hunk_0
