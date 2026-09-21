Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/orb?download=true
inline.NumInlined: 877
inline.NumDeleted: 379
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv8ORB_Impl16detectAndComputeERKNS_11_InputArrayES3_RSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayEb:bb.a
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp sgt i64 %indvars.iv768, %i.hs
  br i1 %i.ht, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.hu = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %40)
          to label %bb.ch unwind label %bb.az     ; 0 uses

bb.ch:                                            ; preds = %bb.cg
  %i.hv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 8 dereferenceable(208) %42)
          to label %bb.ci unwind label %bb.az     ; 0 uses

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 1 ; 2 uses
  %exitcond773.not = icmp eq i64 %indvars.iv.next769, %wide.trip.count772
  br i1 %exitcond773.not, label %._crit_edge714, label %bb.aq, !llvm.loop !92

bb.cj:                                            ; preds = %bb.ce, %bb.cd, %bb.bx, %bb.bw, %bb.bq, %bb.bp, %bb.bo, %bb.bf, %bb.bc, %bb.az
  %.pn228 = phi { ptr, i32 } [ %i.gw, %bb.az ], [ %i.hn, %bb.bx ], [ %i.hm, %bb.bw ], [ %i.hk, %bb.bq ], [ %i.hj, %bb.bp ], [ %i.hi, %bb.bo ], [ %i.hq, %bb.ce ], [ %i.hp, %bb.cd ], [ %.pn204, %bb.bf ], [ %.pn202, %bb.bc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #24
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ay
  %.pn228.pn = phi { ptr, i32 } [ %.pn228, %bb.cj ], [ %i.gv, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #24
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ax
  %.pn228.pn.pn = phi { ptr, i32 } [ %.pn228.pn, %bb.ck ], [ %i.gu, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %.body

._crit_edge714:                                   ; preds = %bb.ci, %.preheader
  br i1 %5, label %bb.fn, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge714
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !49 ; 2 uses
  %i.hy = load double, ptr %i.cl, align 8, !tbaa !48
  %i.hz = load i32, ptr %i.u, align 4, !tbaa !50
  %i.ia = load i32, ptr %i.a, align 4, !tbaa !35  ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !51 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !52
  %i.if = ptrtoint ptr %.0.lcssa.i.i.i.i.i527534 to i64
  %i.ig = ptrtoint ptr %.sroa.0415.0493552 to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 2 uses
  %i.ii = lshr i64 %i.ih, 4                       ; 3 uses
  %i.ij = trunc i64 %i.ii to i32                  ; 6 uses
  %sext.i = shl i64 %i.ih, 28                     ; 4 uses
  %i.ik = ashr exact i64 %sext.i, 32              ; 5 uses
  %i.il = icmp ugt i64 %i.ik, 2305843009213693951
  br i1 %i.il, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc273 unwind label %bb.fm

.noexc273:                                        ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.cm
  %.not.i.i.i.i.i = icmp eq i64 %sext.i, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %.noexc176.i

.noexc176.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.im = ashr exact i64 %sext.i, 30
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #27
          to label %.noexc274 unwind label %bb.fm ; 5 uses

.noexc274:                                        ; preds = %.noexc176.i
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.ik ; 2 uses
  store i32 0, ptr %i.in, align 4, !tbaa !12
  %i.ip = add nsw i64 %i.ik, -1                   ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc274
  %i.ir = getelementptr i8, ptr %i.in, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ip, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ir, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !12
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc274, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.16.0.i = phi ptr [ %i.io, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.io, %.noexc274 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.sroa.043.0.i = phi ptr [ %i.in, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.in, %.noexc274 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 15 uses
  %i.is = fdiv double 1.000000e+00, %i.hy
  %i.it = fptrunc double %i.is to float           ; 7 uses
  %i.iu = fpext float %i.it to double
  %i.iv = sitofp i32 %i.ij to double
  %i.iw = call double @pow(double noundef %i.iu, double noundef %i.iv) #24
  %i.ix = add i32 %i.ij, -1                       ; 2 uses
  %i.iy = icmp sgt i32 %i.ij, 1
  br i1 %i.iy, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.iz = fsub float 1.000000e+00, %i.it
  %i.ja = sitofp i32 %i.hx to float
  %i.jb = fmul float %i.iz, %i.ja
  %i.jc = fptrunc double %i.iw to float
  %i.jd = fsub float 1.000000e+00, %i.jc
  %i.je = fdiv float %i.jb, %i.jd                 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ix to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.jf = add nsw i32 %i.ij, -2
  %i.jg = icmp ult i32 %i.jf, 3
  br i1 %i.jg, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0143121.i = phi float [ %i.je, %.lr.ph.preheader.i.new ], [ %i.kd, %.lr.ph.i ] ; 2 uses
  %.0145120.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.kc, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.jh = insertelement <4 x float> poison, float %.0143121.i, i64 0
  %i.ji = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.jh) ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.043.0.i, i64 %indvars.iv.i
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !12
  %i.jk = add nsw i32 %i.ji, %.0145120.i
  %i.jl = fmul float %.0143121.i, %i.it           ; 2 uses
  %i.jm = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jn = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.jm) ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.043.0.i, i64 %indvars.iv.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  store i32 %i.jn, ptr %i.jp, align 4, !tbaa !12
  %i.jq = add nsw i32 %i.jn, %i.jk
  %i.jr = fmul float %i.jl, %i.it                 ; 2 uses
  %i.js = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.jt = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.js) ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.043.0.i, i64 %indvars.iv.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i32 %i.jt, ptr %i.jv, align 4, !tbaa !12
  %i.jw = add nsw i32 %i.jt, %i.jq
  %i.jx = fmul float %i.jr, %i.it                 ; 2 uses
  %i.jy = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.jz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.jy) ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.043.0.i, i64 %indvars.iv.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !12
  %i.kc = add nsw i32 %i.jz, %i.jw                ; 3 uses
  %i.kd = fmul float %i.jx, %i.it                 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !93

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0143121.i.epil.init = phi float [ %i.je, %.lr.ph.preheader.i ], [ %i.kd, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0145120.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.kc, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod1061 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1061)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.0143121.i.epil = phi float [ %.0143121.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ki, %.lr.ph.i.epil ] ; 2 uses
  %.0145120.i.epil = phi i32 [ %.0145120.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.kh, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ke = insertelement <4 x float> poison, float %.0143121.i.epil, i64 0
  %i.kf = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ke) ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.043.0.i, i64 %indvars.iv.i.epil
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !12
  %i.kh = add nsw i32 %i.kf, %.0145120.i.epil     ; 2 uses
  %i.ki = fmul float %.0143121.i.epil, %i.it
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !94

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %.0145.lcssa.i = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i ], [ %i.kc, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.kh, %.lr.ph.i.epil ]
  %i.kj = sub nsw i32 %i.hx, %.0145.lcssa.i
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.kj, i32 0)
  %i.kk = sext i32 %i.ix to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.043.0.i, i64 %i.kk
  store i32 %.sroa.speculated.i, ptr %i.kl, align 4, !tbaa !12
  %i.km = sdiv i32 %i.ia, 2                       ; 12 uses
  %i.kn = add nsw i32 %i.km, 2                    ; 2 uses
  %i.ko = sext i32 %i.kn to i64                   ; 3 uses
  %i.kp = icmp slt i32 %i.ia, -5
  br i1 %i.kp, label %bb.cn, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i177.i

bb.cn:                                            ; preds = %._crit_edge.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc183.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit251.thread.i

.noexc183.i:                                      ; preds = %bb.cn
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i177.i: ; preds = %._crit_edge.i
  %.not.i.i.i.i178.i = icmp eq i32 %i.kn, 0
  br i1 %.not.i.i.i.i178.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit185.i, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i177.i
  %i.kq = shl nuw nsw i64 %i.ko, 2
  %i.kr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #27
          to label %.noexc184.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit251.thread.i ; 5 uses

.noexc184.i:                                      ; preds = %bb.co
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ko ; 2 uses
  store i32 0, ptr %i.kr, align 4, !tbaa !12
  %i.kt = add nsw i64 %i.ko, -1                   ; 2 uses
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit185.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i179.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i179.i: ; preds = %.noexc184.i
  %i.kv = getelementptr i8, ptr %i.kr, i64 4
  %.idx.i.i.i.i.i.i.i180.i = shl nuw nsw i64 %i.kt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.kv, i8 0, i64 %.idx.i.i.i.i.i.i.i180.i, i1 false), !tbaa !12
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit185.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit185.i:          ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i179.i, %.noexc184.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i177.i
  %.sroa.030.0.i = phi ptr [ %i.kr, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i179.i ], [ %i.kr, %.noexc184.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i177.i ] ; 19 uses
  %.sroa.14.0.i = phi ptr [ %i.ks, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i179.i ], [ %i.ks, %.noexc184.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i177.i ] ; 2 uses
  %i.kw = sitofp i32 %i.km to float
  %i.kx = fmul nnan float %i.kw, f0x3FB504F3
  %i.ky = fmul nnan float %i.kx, 5.000000e-01     ; 2 uses
  %i.kz = fadd float %i.ky, 1.000000e+00
  %i.la = call float @llvm.floor.f32(float %i.kz)
  %i.lb = fptosi float %i.la to i32               ; 3 uses
  %i.lc = call float @llvm.ceil.f32(float %i.ky)
  %i.ld = fptosi float %i.lc to i32               ; 3 uses
  %.not124.i = icmp slt i32 %i.lb, 0
  br i1 %.not124.i, label %.preheader96.i, label %.lr.ph126.i

.lr.ph126.i:                                      ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit185.i
  %i.le = sitofp i32 %i.km to double              ; 6 uses
  %i.lf = add nuw i32 %i.lb, 1                    ; 2 uses
  %wide.trip.count177.i = zext i32 %i.lf to i64   ; 2 uses
  %xtraiter1062 = and i64 %wide.trip.count177.i, 1
  %i.lg = icmp eq i32 %i.lb, 0
  br i1 %i.lg, label %.epil.preheader, label %.lr.ph126.i.new

.lr.ph126.i.new:                                  ; preds = %.lr.ph126.i
  %unroll_iter1066 = and i64 %wide.trip.count177.i, 4294967294
  br label %bb.cp

.preheader96.i.loopexit.unr-lcssa:                ; preds = %bb.cp
  %lcmp.mod1064.not = icmp eq i64 %xtraiter1062, 0
  br i1 %lcmp.mod1064.not, label %.preheader96.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader96.i.loopexit.unr-lcssa, %.lr.ph126.i
  %indvars.iv174.i.epil.init = phi i64 [ 0, %.lr.ph126.i ], [ %indvars.iv.next175.i.1, %.preheader96.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1065 = trunc i32 %i.lf to i1
  call void @llvm.assume(i1 %lcmp.mod1065)
  %i.lh = mul nuw nsw i64 %indvars.iv174.i.epil.init, %indvars.iv174.i.epil.init
  %i.li = trunc nuw i64 %i.lh to i32
  %i.lj = uitofp nneg i32 %i.li to double
  %i.lk = fneg double %i.lj
  %i.ll = call double @llvm.fmuladd.f64(double %i.le, double %i.le, double %i.lk)
  %i.lm = call double @sqrt(double noundef %i.ll) #24
  %i.ln = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lo = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ln)
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv174.i.epil.init
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !12
  br label %.preheader96.i

.preheader96.i:                                   ; preds = %.epil.preheader, %.preheader96.i.loopexit.unr-lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit185.i
  %.not153127.i = icmp slt i32 %i.km, %i.ld
  br i1 %.not153127.i, label %._crit_edge130.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader96.i
  %i.lq = sext i32 %i.km to i64                   ; 3 uses
  %i.lr = sext i32 %i.ld to i64
  %75 = add nsw i64 %i.lq, 1
  %76 = sub nsw i64 %75, %i.lr                    ; 3 uses
  %xtraiter1068 = and i64 %76, 1
  %77 = icmp eq i32 %i.km, %i.ld
  br i1 %77, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter1072 = and i64 %76, -2
  br label %.preheader.i

bb.cp:                                            ; preds = %bb.cp, %.lr.ph126.i.new
  %indvars.iv174.i = phi i64 [ 0, %.lr.ph126.i.new ], [ %indvars.iv.next175.i.1, %bb.cp ] ; 5 uses
  %niter1067 = phi i64 [ 0, %.lr.ph126.i.new ], [ %niter1067.next.1, %bb.cp ]
  %i.ls = mul nuw nsw i64 %indvars.iv174.i, %indvars.iv174.i
  %i.lt = trunc nuw i64 %i.ls to i32
  %i.lu = uitofp nneg i32 %i.lt to double
  %i.lv = fneg double %i.lu
  %i.lw = call double @llvm.fmuladd.f64(double %i.le, double %i.le, double %i.lv)
  %i.lx = call double @sqrt(double noundef %i.lw) #24
  %i.ly = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.lz = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ly)
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv174.i
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !12
  %indvars.iv.next175.i = or disjoint i64 %indvars.iv174.i, 1 ; 3 uses
  %i.mb = mul nuw nsw i64 %indvars.iv.next175.i, %indvars.iv.next175.i
  %i.mc = trunc nuw i64 %i.mb to i32
  %i.md = uitofp nneg i32 %i.mc to double
  %i.me = fneg double %i.md
  %i.mf = call double @llvm.fmuladd.f64(double %i.le, double %i.le, double %i.me)
  %i.mg = call double @sqrt(double noundef %i.mf) #24
  %i.mh = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mi = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.mh)
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv.next175.i
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !12
  %indvars.iv.next175.i.1 = add nuw nsw i64 %indvars.iv174.i, 2 ; 2 uses
  %niter1067.next.1 = add i64 %niter1067, 2       ; 2 uses
  %niter1067.ncmp.1 = icmp eq i64 %niter1067.next.1, %unroll_iter1066
  br i1 %niter1067.ncmp.1, label %.preheader96.i.loopexit.unr-lcssa, label %bb.cp, !llvm.loop !95

_ZNSt6vectorIiSaIiEED2Ev.exit251.thread.i:        ; preds = %bb.co, %bb.cn
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

.preheader.i:                                     ; preds = %bb.cr, %.preheader.preheader.i.new
  %indvars.iv182.i = phi i64 [ %i.lq, %.preheader.preheader.i.new ], [ %indvars.iv.next183.i.1, %bb.cr ] ; 3 uses
  %.0148128.i.a = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next180.i.1, %bb.cr ] ; 2 uses
  %niter1073 = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter1073.next.1, %bb.cr ]
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %.0148128.i.a
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %78

78:                                               ; preds = %78, %.preheader.i
  %indvars.iv179.i = phi i64 [ %.0148128.i.a, %.preheader.i ], [ %indvars.iv.next180.i, %78 ] ; 2 uses
  %indvars.iv.next180.i = add nsw i64 %indvars.iv179.i, 1 ; 4 uses
  %79 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv.next180.i
  %80 = load i32, ptr %79, align 4, !tbaa !12
  %81 = icmp eq i32 %.pre.i, %80
  br i1 %81, label %78, label %.preheader.i.1, !llvm.loop !96

.preheader.i.1:                                   ; preds = %78
  %82 = trunc nsw i64 %indvars.iv179.i to i32
  %83 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv182.i
  store i32 %82, ptr %83, align 4, !tbaa !12
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv.next180.i
  %.pre.i.1 = load i32, ptr %.phi.trans.insert.i.1, align 4, !tbaa !12
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %.preheader.i.1
  %indvars.iv179.i.1 = phi i64 [ %indvars.iv.next180.i, %.preheader.i.1 ], [ %indvars.iv.next180.i.1, %bb.cq ] ; 2 uses
  %indvars.iv.next180.i.1 = add nsw i64 %indvars.iv179.i.1, 1 ; 4 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv.next180.i.1
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !12
  %i.mn = icmp eq i32 %.pre.i.1, %i.mm
  br i1 %i.mn, label %bb.cq, label %bb.cr, !llvm.loop !96

bb.cr:                                            ; preds = %bb.cq
  %i.mo = trunc nsw i64 %indvars.iv179.i.1 to i32
  %i.mp = getelementptr [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv182.i
  %84 = getelementptr i8, ptr %i.mp, i64 -4
  store i32 %i.mo, ptr %84, align 4, !tbaa !12
  %indvars.iv.next183.i.1 = add nsw i64 %indvars.iv182.i, -2 ; 2 uses
  %niter1073.next.1 = add i64 %niter1073, 2       ; 2 uses
  %niter1073.ncmp.1.not = icmp eq i64 %niter1073.next.1, %unroll_iter1072
  br i1 %niter1073.ncmp.1.not, label %._crit_edge130.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !97

._crit_edge130.i.loopexit.unr-lcssa:              ; preds = %bb.cr
  %lcmp.mod1070.not = icmp eq i64 %xtraiter1068, 0
  br i1 %lcmp.mod1070.not, label %._crit_edge130.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %._crit_edge130.i.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv182.i.epil.init = phi i64 [ %i.lq, %.preheader.preheader.i ], [ %indvars.iv.next183.i.1, %._crit_edge130.i.loopexit.unr-lcssa ]
  %.0148128.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next180.i.1, %._crit_edge130.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1071 = trunc i64 %76 to i1
  call void @llvm.assume(i1 %lcmp.mod1071)
  %.phi.trans.insert.i.epil = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %.0148128.i.epil.init
  %.pre.i.epil = load i32, ptr %.phi.trans.insert.i.epil, align 4, !tbaa !12
  br label %85

85:                                               ; preds = %85, %.preheader.i.epil.preheader
  %indvars.iv179.i.epil = phi i64 [ %.0148128.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next180.i.epil, %85 ] ; 2 uses
  %indvars.iv.next180.i.epil = add nsw i64 %indvars.iv179.i.epil, 1 ; 2 uses
  %86 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv.next180.i.epil
  %87 = load i32, ptr %86, align 4, !tbaa !12
  %88 = icmp eq i32 %.pre.i.epil, %87
  br i1 %88, label %85, label %._crit_edge130.i.loopexit.epilog-lcssa, !llvm.loop !96

._crit_edge130.i.loopexit.epilog-lcssa:           ; preds = %85
  %89 = trunc nsw i64 %indvars.iv179.i.epil to i32
  %90 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.i, i64 %indvars.iv182.i.epil.init
  store i32 %89, ptr %90, align 4, !tbaa !12
  br label %._crit_edge130.i

._crit_edge130.i:                                 ; preds = %._crit_edge130.i.loopexit.epilog-lcssa, %._crit_edge130.i.loopexit.unr-lcssa, %.preheader96.i
  %i.mq = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.mr = load ptr, ptr %i.ar, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.mr, %i.mq
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i186.i, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge130.i
  store ptr %i.mq, ptr %i.ar, align 8, !tbaa !39
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i186.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i186.i: ; preds = %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i.i, %._crit_edge130.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit194.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i186.i
  %i.ms = ashr exact i64 %sext.i, 30
  %i.mt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ms) #27
          to label %.noexc193.i unwind label %bb.ds ; 5 uses

.noexc193.i:                                      ; preds = %bb.cs
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.ik ; 2 uses
  store i32 0, ptr %i.mt, align 4, !tbaa !12
  %i.mv = add nsw i64 %i.ik, -1                   ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0
  br i1 %i.mw, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit194.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i188.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i188.i: ; preds = %.noexc193.i
  %i.mx = getelementptr i8, ptr %i.mt, i64 4
  %.idx.i.i.i.i.i.i.i189.i = shl nuw nsw i64 %i.mv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mx, i8 0, i64 %.idx.i.i.i.i.i.i.i189.i, i1 false), !tbaa !12
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit194.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit194.i:          ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i188.i, %.noexc193.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i186.i
  %.sroa.024.0.i = phi ptr [ %i.mt, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i188.i ], [ %i.mt, %.noexc193.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i186.i ] ; 8 uses
  %.sroa.11.0.i = phi ptr [ %i.mu, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i188.i ], [ %i.mu, %.noexc193.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i186.i ] ; 2 uses
  %i.my = load i32, ptr %.sroa.043.0.i, align 4, !tbaa !12 ; 2 uses
  %i.mz = shl nsw i32 %i.my, 1
  %i.na = sext i32 %i.mz to i64                   ; 3 uses
  %i.nb = icmp slt i32 %i.my, 0
  br i1 %i.nb, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit194.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #26
          to label %.noexc196.i unwind label %bb.dt

.noexc196.i:                                      ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit194.i
  %i.nc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !54
  %i.ne = load ptr, ptr %13, align 8, !tbaa !40
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64               ; 2 uses
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = sdiv exact i64 %i.nh, 28
  %i.nj = icmp ult i64 %i.ni, %i.na
  br i1 %i.nj, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit.i

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.cu
  %i.nk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !39
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = sub i64 %i.nm, %i.ng
  %i.no = mul nuw nsw i64 %i.na, 28
  %i.np = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.no) #27
          to label %.noexc197.i unwind label %bb.dt ; 4 uses

.noexc197.i:                                      ; preds = %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i.i
  %i.nq = load ptr, ptr %13, align 8, !tbaa !40   ; 5 uses
  %i.nr = load ptr, ptr %i.nk, align 8, !tbaa !39 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.nq, %i.nr
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc197.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i ], [ %i.np, %.noexc197.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i ], [ %i.nq, %.noexc197.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !55, !alias.scope !161
  %i.ns = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 28 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 28
  %.not.i.i.i.i195.i = icmp eq ptr %i.ns, %i.nr
  br i1 %.not.i.i.i.i195.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc197.i
  %.not.i8.i.i = icmp eq ptr %i.nq, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %i.nu = load ptr, ptr %i.nc, align 8, !tbaa !54
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %i.nq to i64
  %i.nx = sub i64 %i.nv, %i.nw
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.nx) #25
  br label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.cv, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.np, ptr %13, align 8, !tbaa !40
  %i.ny = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nn
  store ptr %i.ny, ptr %i.nk, align 8, !tbaa !39
  %i.nz = getelementptr inbounds nuw [28 x i8], ptr %i.np, i64 %i.na
  store ptr %i.nz, ptr %i.nc, align 8, !tbaa !54
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit.i

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, %bb.cu
  %i.oa = icmp sgt i32 %i.ij, 0                   ; 2 uses
  br i1 %i.oa, label %.lr.ph136.i, label %._crit_edge137.i

.lr.ph136.i:                                      ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.od = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.of = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.og = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.oj = getelementptr inbounds nuw i8, ptr %14, i64 84
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %14, i64 88
  %i.ok = icmp eq i32 %i.ic, 0
  %i.ol = zext i1 %i.ok to i32
  %i.om = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.on = sitofp i32 %i.ia to float
  %wide.trip.count193.i = and i64 %i.ii, 2147483647
  br label %bb.cw

bb.cw:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS7_EET0_T_SC_SB_.exit.i, %.lr.ph136.i
  %indvars.iv190.i = phi i64 [ 0, %.lr.ph136.i ], [ %indvars.iv.next191.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS7_EET0_T_SC_SB_.exit.i ] ; 6 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.043.0.i, i64 %indvars.iv190.i
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0415.0493552, i64 %indvars.iv190.i ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 4 dereferenceable(16) %i.oq)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i unwind label %bb.du

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i:             ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.or = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %32)
          to label %bb.cx unwind label %bb.dv

bb.cx:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i
  br i1 %i.or, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #24
  br label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit200.i

bb.cz:                                            ; preds = %bb.cx
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 4 dereferenceable(16) %i.oq)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit200.i unwind label %bb.dv

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit200.i:          ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZN2cv19FastFeatureDetector6createEibNS0_12DetectorTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.38") align 8 %16, i32 noundef %i.ie, i1 noundef zeroext true, i32 noundef 2)
          to label %bb.da unwind label %bb.dw

bb.da:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit200.i
  %i.os = load ptr, ptr %16, align 8, !tbaa !164  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  store i32 0, ptr %i.ob, align 8, !tbaa !159
  store i32 0, ptr %i.oc, align 4, !tbaa !160
  store i32 16842752, ptr %17, align 8, !tbaa !143
  store ptr %14, ptr %i.od, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store i32 0, ptr %i.oe, align 8, !tbaa !159
  store i32 0, ptr %i.of, align 4, !tbaa !160
  store i32 16842752, ptr %18, align 8, !tbaa !143
  store ptr %15, ptr %i.og, align 8, !tbaa !141
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !16
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 64
  %i.ov = load ptr, ptr %i.ou, align 8
  invoke void %i.ov(ptr noundef nonnull align 8 dereferenceable(8) %i.os, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.db unwind label %bb.dx

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.ow = load ptr, ptr %i.oh, align 8, !tbaa !56 ; 8 uses
  %.not.i.i201.i = icmp eq ptr %i.ow, null
  br i1 %.not.i.i201.i, label %_ZNSt12__shared_ptrIN2cv19FastFeatureDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 4 uses
  %i.oy = load atomic i64, ptr %i.ox acquire, align 8 ; 2 uses
  %i.oz = icmp eq i64 %i.oy, 4294967297
  %i.pa = trunc i64 %i.oy to i32                  ; 2 uses
  br i1 %i.oz, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.ox, align 8, !tbaa !58
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 12
  store i32 0, ptr %i.pb, align 4, !tbaa !59
  %i.pc = load ptr, ptr %i.ow, align 8, !tbaa !16
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(16) %i.ow) #24, !inline_history !101
  %i.pf = load ptr, ptr %i.ow, align 8, !tbaa !16
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(16) %i.ow) #24, !inline_history !101
  br label %_ZNSt12__shared_ptrIN2cv19FastFeatureDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
end_hunk_0
