Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gemm_layer?download=true
inline.NumInlined: 875
inline.NumDeleted: 387
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv3dnn13GemmLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
.preheader309:                                    ; preds = %bb.cn
  %i.hf = icmp sgt i32 %i.cd, 0
  br i1 %i.hf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader309
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.cd to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.cd, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hh = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fh, i64 %i.hh ; 2 uses
  %scevgep395 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %scevgep396 = getelementptr i8, ptr %i.fk, i64 %i.hh
  %bound0 = icmp ult ptr %i.fh, %scevgep395
  %bound1 = icmp ult ptr %i.hg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0397 = icmp ult ptr %i.fh, %scevgep396
  %bound1398 = icmp ult ptr %i.fk, %scevgep
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx = or i1 %found.conflict, %found.conflict399
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.hi = load float, ptr %i.hg, align 4, !tbaa !80, !alias.scope !123
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hi, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %index ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %wide.load = load <4 x float>, ptr %i.hj, align 4, !tbaa !118, !alias.scope !126
  %wide.load400 = load <4 x float>, ptr %i.hk, align 4, !tbaa !118, !alias.scope !126
  %i.hl = fmul <4 x float> %broadcast.splat, %wide.load
  %i.hm = fmul <4 x float> %broadcast.splat, %wide.load400
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <4 x float> %i.hl, ptr %i.hn, align 4, !tbaa !118, !alias.scope !128, !noalias !130
  store <4 x float> %i.hm, ptr %i.ho, align 4, !tbaa !118, !alias.scope !128, !noalias !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hq = load float, ptr %i.hg, align 4, !tbaa !80
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.prol
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !118
  %i.ht = fmul float %i.hq, %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.prol
  store float %i.ht, ptr %i.hu, align 4, !tbaa !118
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !132

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.hv = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %._crit_edge, label %scalar.ph

bb.co:                                            ; preds = %bb.cn
  %i.hx = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.fi)
          to label %bb.cp unwind label %bb.by

bb.cp:                                            ; preds = %bb.co
  %i.hy = trunc i64 %i.hx to i32
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.hy, i32 noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn13GemmLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E15__cv_check__411) #23
          to label %bb.cq unwind label %bb.by

bb.cq:                                            ; preds = %bb.cp
  unreachable

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader309
  %i.hz = icmp sgt i32 %i.cp, 1
  br i1 %i.hz, label %bb.cr, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ia = load float, ptr %i.hg, align 4, !tbaa !80
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !118
  %i.id = fmul float %i.ia, %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv
  store float %i.id, ptr %i.ie, align 4, !tbaa !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.if = load float, ptr %i.hg, align 4, !tbaa !80
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !118
  %i.ii = fmul float %i.if, %i.ih
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next
  store float %i.ii, ptr %i.ij, align 4, !tbaa !118
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ik = load float, ptr %i.hg, align 4, !tbaa !80
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.1
  %i.im = load float, ptr %i.il, align 4, !tbaa !118
  %i.in = fmul float %i.ik, %i.im
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next.1
  store float %i.in, ptr %i.io, align 4, !tbaa !118
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ip = load float, ptr %i.hg, align 4, !tbaa !80
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.2
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !118
  %i.is = fmul float %i.ip, %i.ir
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next.2
  store float %i.is, ptr %i.it, align 4, !tbaa !118
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !134

bb.cr:                                            ; preds = %._crit_edge
  %i.iu = sext i32 %i.cd to i64                   ; 6 uses
  %i.iv = shl nsw i64 %i.iu, 2                    ; 6 uses
  %i.iw = icmp samesign ult i32 %i.cp, 33
  br i1 %i.iw, label %.lr.ph312.preheader, label %bb.cs

.lr.ph312.preheader:                              ; preds = %bb.cr
  %wide.trip.count318 = zext nneg i32 %i.cp to i64
  %i.ix = add nsw i64 %wide.trip.count318, -1     ; 2 uses
  %xtraiter414 = and i64 %i.ix, 3                 ; 3 uses
  %i.iy = add nsw i32 %i.cp, -2
  %i.iz = icmp ult i32 %i.iy, 3
  br i1 %i.iz, label %.lr.ph312.epil.preheader, label %.lr.ph312.preheader.new

.lr.ph312.preheader.new:                          ; preds = %.lr.ph312.preheader
  %unroll_iter = and i64 %i.ix, -4
  br label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312, %.lr.ph312.preheader.new
  %indvars.iv315 = phi i64 [ 1, %.lr.ph312.preheader.new ], [ %indvars.iv.next316.3, %.lr.ph312 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph312.preheader.new ], [ %niter.next.3, %.lr.ph312 ]
  %i.ja = mul nsw i64 %indvars.iv315, %i.iu
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ja
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jb, ptr align 4 %i.fh, i64 %i.iv, i1 false)
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1
  %i.jc = mul nsw i64 %indvars.iv.next316, %i.iu
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.jc
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jd, ptr align 4 %i.fh, i64 %i.iv, i1 false)
  %indvars.iv.next316.1 = add nuw nsw i64 %indvars.iv315, 2
  %i.je = mul nsw i64 %indvars.iv.next316.1, %i.iu
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.je
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jf, ptr align 4 %i.fh, i64 %i.iv, i1 false)
  %indvars.iv.next316.2 = add nuw nsw i64 %indvars.iv315, 3
  %i.jg = mul nsw i64 %indvars.iv.next316.2, %i.iu
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jh, ptr align 4 %i.fh, i64 %i.iv, i1 false)
  %indvars.iv.next316.3 = add nuw nsw i64 %indvars.iv315, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit413.unr-lcssa, label %.lr.ph312, !llvm.loop !135

bb.cs:                                            ; preds = %bb.cr
  %i.ji = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.ct unwind label %bb.db

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  store i32 1, ptr %23, align 4, !tbaa !110
  %i.jj = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 %i.cp, ptr %i.jj, align 4, !tbaa !112
  %i.jk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false)
  %i.jl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.cx unwind label %bb.cu     ; 4 uses

bb.cu:                                            ; preds = %bb.ct
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = load ptr, ptr %i.jk, align 8, !tbaa !113 ; 2 uses
  %.not.i.i239 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i239, label %.body241, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jo = invoke noundef zeroext i1 %i.jn(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3)
          to label %.body241 unwind label %bb.cw  ; 0 uses

bb.cw:                                            ; preds = %bb.cv
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #22
  unreachable

bb.cx:                                            ; preds = %bb.ct
  %i.jr = add nsw i32 %i.cp, -1
  %.sroa.speculated277 = call i32 @llvm.smax.i32(i32 %i.ji, i32 1)
  %.sroa.speculated275.v = call i32 @llvm.umin.i32(i32 %.sroa.speculated277, i32 %i.jr)
  %.sroa.speculated275 = uitofp nneg i32 %.sroa.speculated275.v to double
  %i.js = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %i.fh, ptr %i.jl, align 16, !tbaa !109
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i32 %i.cd, ptr %.sroa.5272.0..sroa_idx, align 8, !tbaa !99
  %.sroa.6274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store i64 %i.iv, ptr %.sroa.6274.0..sroa_idx, align 16, !tbaa !86
  store ptr %i.jl, ptr %24, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E1_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.js, align 8, !tbaa !116
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.jk, align 8, !tbaa !113
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef align 8 %24, double noundef %.sroa.speculated275)
          to label %bb.cy unwind label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !113 ; 2 uses
  %.not.i243 = icmp eq ptr %i.jt, null
  br i1 %.not.i243, label %_ZNSt14_Function_baseD2Ev.exit244, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ju = invoke noundef zeroext i1 %i.jt(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit244 unwind label %bb.da ; 0 uses

bb.da:                                            ; preds = %bb.cz
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit244:                ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit

bb.db:                                            ; preds = %bb.cs
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body190

bb.dc:                                            ; preds = %bb.cx
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %i.jk, align 8, !tbaa !113 ; 2 uses
  %.not.i245 = icmp eq ptr %i.jz, null
  br i1 %.not.i245, label %.body241, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ka = invoke noundef zeroext i1 %i.jz(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3)
          to label %.body241 unwind label %bb.de  ; 0 uses

bb.de:                                            ; preds = %bb.dd
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #22
  unreachable

.body241:                                         ; preds = %bb.dd, %bb.dc, %bb.cv, %bb.cu
  %.pn155 = phi { ptr, i32 } [ %i.jm, %bb.cu ], [ %i.jy, %bb.dd ], [ %i.jm, %bb.cv ], [ %i.jy, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %.body190

bb.df:                                            ; preds = %bb.al
  %i.kd = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.aj)
          to label %bb.dg unwind label %bb.di     ; 3 uses

bb.dg:                                            ; preds = %bb.df
  %i.ke = icmp ult i64 %i.kd, 16384
  br i1 %i.ke, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.kf = shl nuw nsw i64 %i.kd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cy, i8 0, i64 %i.kf, i1 false)
  br label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit

bb.di:                                            ; preds = %bb.df
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.body190

bb.dj:                                            ; preds = %bb.dg
  %i.kh = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.dk unwind label %bb.ds

bb.dk:                                            ; preds = %bb.dj
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.kh, i32 1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  store i32 0, ptr %25, align 4, !tbaa !110
  %i.ki = getelementptr inbounds nuw i8, ptr %25, i64 4
  store i32 %.sroa.speculated, ptr %i.ki, align 4, !tbaa !112
  %i.kj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 32, i1 false)
  %i.kk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.do unwind label %bb.dl     ; 4 uses

bb.dl:                                            ; preds = %bb.dk
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = load ptr, ptr %i.kj, align 8, !tbaa !113 ; 2 uses
  %.not.i.i248 = icmp eq ptr %i.km, null
  br i1 %.not.i.i248, label %.body250, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.kn = invoke noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %.body250 unwind label %bb.dn  ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.ko = landingpad { ptr, i32 }
          catch ptr null
  %i.kp = extractvalue { ptr, i32 } %i.ko, 0
  call void @__clang_call_terminate(ptr %i.kp) #22
  unreachable

bb.do:                                            ; preds = %bb.dk
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i64 %i.kd, ptr %i.kk, align 16, !tbaa !86
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i32 %.sroa.speculated, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !99
  %.sroa.6267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store ptr %i.cy, ptr %.sroa.6267.0..sroa_idx, align 16, !tbaa !109
  store ptr %i.kk, ptr %26, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E2_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.kq, align 8, !tbaa !116
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.kj, align 8, !tbaa !113
  %i.kr = uitofp nneg i32 %.sroa.speculated to double
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef align 8 %26, double noundef %i.kr)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %bb.do
  %i.ks = load ptr, ptr %i.kj, align 8, !tbaa !113 ; 2 uses
  %.not.i252 = icmp eq ptr %i.ks, null
  br i1 %.not.i252, label %_ZNSt14_Function_baseD2Ev.exit253, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.kt = invoke noundef zeroext i1 %i.ks(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit253 unwind label %bb.dr ; 0 uses

bb.dr:                                            ; preds = %bb.dq
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit253:                ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit

bb.ds:                                            ; preds = %bb.dj
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.body190

bb.dt:                                            ; preds = %bb.do
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = load ptr, ptr %i.kj, align 8, !tbaa !113 ; 2 uses
  %.not.i254 = icmp eq ptr %i.ky, null
  br i1 %.not.i254, label %.body250, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kz = invoke noundef zeroext i1 %i.ky(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %.body250 unwind label %bb.dv  ; 0 uses

bb.dv:                                            ; preds = %bb.du
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #22
  unreachable

.body250:                                         ; preds = %bb.du, %bb.dt, %bb.dm, %bb.dl
  %.pn = phi { ptr, i32 } [ %i.kl, %bb.dl ], [ %i.kx, %bb.du ], [ %i.kl, %bb.dm ], [ %i.kx, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %.body190

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit413.unr-lcssa: ; preds = %.lr.ph312
  %lcmp.mod415.not = icmp eq i64 %xtraiter414, 0
  br i1 %lcmp.mod415.not, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit, label %.lr.ph312.epil.preheader

.lr.ph312.epil.preheader:                         ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit413.unr-lcssa, %.lr.ph312.preheader
  %indvars.iv315.epil.init = phi i64 [ 1, %.lr.ph312.preheader ], [ %indvars.iv.next316.3, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit413.unr-lcssa ]
  %lcmp.mod416 = icmp ne i64 %xtraiter414, 0
  call void @llvm.assume(i1 %lcmp.mod416)
  br label %.lr.ph312.epil

.lr.ph312.epil:                                   ; preds = %.lr.ph312.epil, %.lr.ph312.epil.preheader
  %indvars.iv315.epil = phi i64 [ %indvars.iv315.epil.init, %.lr.ph312.epil.preheader ], [ %indvars.iv.next316.epil, %.lr.ph312.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph312.epil.preheader ], [ %epil.iter.next, %.lr.ph312.epil ]
  %i.lc = mul nsw i64 %indvars.iv315.epil, %i.iu
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.lc
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ld, ptr align 4 %i.fh, i64 %i.iv, i1 false)
  %indvars.iv.next316.epil = add nuw nsw i64 %indvars.iv315.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter414
  br i1 %epil.iter.cmp.not, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit, label %.lr.ph312.epil, !llvm.loop !136

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit:              ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit413.unr-lcssa, %.lr.ph312.epil, %.lr.ph.i.i.i.i, %middle.block410, %_ZNSt14_Function_baseD2Ev.exit234, %bb.bw, %bb.dh, %_ZNSt14_Function_baseD2Ev.exit253, %_ZNSt14_Function_baseD2Ev.exit, %bb.be, %_ZNSt14_Function_baseD2Ev.exit244, %._crit_edge
  %switch.i256 = icmp samesign ult i32 %.011.i, 2
  br i1 %switch.i256, label %bb.dw, label %bb.ei

bb.dw:                                            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 224
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_:bb.a

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, %bb.e
  %.pre-phi22 = phi i64 [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ 0, %bb.e ]
  %i.aa = phi ptr [ %.pre16, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ %i.s, %bb.e ] ; 2 uses
  %i.ab = add i64 %.pre-phi22, %1                 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not13.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.aa, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ] ; 2 uses
  %.01114.i.i.i.i = phi i64 [ %i.ac, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ]
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.015.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i11
  %i.ac = add i64 %.01114.i.i.i.i, -1             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i12 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i12, label %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i11, !llvm.loop !245

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #21 ; 0 uses
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ah

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aa, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ], [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.r, align 8, !tbaa !139
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.k:                                             ; preds = %bb.d
  %i.ak = icmp eq i64 %1, 0
  br i1 %i.ak, label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.idx.i.i = mul nuw nsw i64 %1, 52
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %.lr.ph.i.i.i.i13, %bb.l
  %.06.i.i.i.i14 = phi ptr [ %i.an, %.lr.ph.i.i.i.i13 ], [ %i.c, %bb.l ] ; 2 uses
  %i.am = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.06.i.i.i.i14, ptr noundef nonnull align 4 dereferenceable(52) %2) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i14, i64 52 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i.i.i15, label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i13, !llvm.loop !244

_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i13
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !139
  br label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit

_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit, %bb.k
  %i.ao = phi ptr [ %i.s, %bb.k ], [ %.pre, %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit ]
  %.0.i.i = phi ptr [ %i.c, %bb.k ], [ %i.al, %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.r, align 8, !tbaa !139
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i, %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit, %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 177372539170284150
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_S_check_init_lenEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
  unreachable

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_S_check_init_lenEmRKS2_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread, label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread: ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit: ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.c = mul nuw nsw i64 %1, 52
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #19 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw [52 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !243
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit ] ; 2 uses
  %.01114.i.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit ]
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.015.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = add nsw i64 %.01114.i.i.i.i.i, -1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !245

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #21 ; 0 uses
  invoke void @__cxa_rethrow() #23
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #22
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread
  %i.p = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.p, align 8, !tbaa !139
  ret void

.body:                                            ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !142    ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !243
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #20
  br label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.m
}

declare noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11}
!9 = distinct !{!9, !10, !"_ZSt11make_sharedIN2cv3dnn13GemmLayerImplEJRKNS1_14dnn5_v2026060511LayerParamsEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!10 = distinct !{!10, !"_ZSt11make_sharedIN2cv3dnn13GemmLayerImplEJRKNS1_14dnn5_v2026060511LayerParamsEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!11 = distinct !{!11, !12, !"_ZN2cvL7makePtrINS_3dnn13GemmLayerImplEJNS1_14dnn5_v2026060511LayerParamsEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!12 = distinct !{!12, !"_ZN2cvL7makePtrINS_3dnn13GemmLayerImplEJNS1_14dnn5_v2026060511LayerParamsEEEENS_3PtrIT_EEDpRKT0_"}
!13 = !{!14, !5, i64 8}
!14 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!15 = !{!14, !5, i64 12}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !7, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v202606059GemmLayerELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !22, i64 8}
!20 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606059GemmLayerE", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!23 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!24 = !{!22, !23, i64 0}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 float", !21, i64 0}
!28 = !{!26, !27, i64 16}
!29 = !{!30, !31, i64 8}
!30 = !{!"_ZTSSt9type_info", !31, i64 8}
!31 = !{!"p1 omnipotent char", !21, i64 0}
!32 = !{!6, !6, i64 0}
!33 = !{!34, !5, i64 432}
!34 = !{!"_ZTSN2cv3dnn13GemmLayerImplE", !35, i64 0, !51, i64 169, !51, i64 170, !51, i64 171, !53, i64 176, !53, i64 200, !56, i64 224, !5, i64 432, !5, i64 436, !5, i64 440, !53, i64 448, !5, i64 472, !62, i64 476, !31, i64 488}
!35 = !{!"_ZTSN2cv3dnn14dnn5_v202606059GemmLayerE", !36, i64 0, !51, i64 156, !51, i64 157, !52, i64 160, !52, i64 164, !51, i64 168}
!36 = !{!"_ZTSN2cv3dnn14dnn5_v202606055LayerE", !37, i64 0, !38, i64 8, !43, i64 32, !43, i64 56, !21, i64 80, !48, i64 88, !48, i64 120, !5, i64 152}
!37 = !{!"_ZTSN2cv9AlgorithmE"}
!38 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSN2cv3MatE", !21, i64 0}
!43 = !{!"_ZTSSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !44, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_Vector_implE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053ArgE", !21, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !50, i64 8, !6, i64 16}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!50 = !{!"long", !6, i64 0}
!51 = !{!"bool", !6, i64 0}
!52 = !{!"float", !6, i64 0}
!53 = !{!"_ZTSSt6vectorIfSaIfEE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !26, i64 0}
!56 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !57, i64 56, !58, i64 64, !59, i64 72, !61, i64 128}
!57 = !{!"p1 _ZTSN2cv12MatAllocatorE", !21, i64 0}
!58 = !{!"p1 _ZTSN2cv8UMatDataE", !21, i64 0}
!59 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !60, i64 4, !5, i64 8, !6, i64 12}
!60 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!61 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!62 = !{!"_ZTSN2cv3dnn11FastGemmOptE", !51, i64 0, !51, i64 1, !51, i64 2, !51, i64 3, !51, i64 4}
!63 = !{!34, !5, i64 436}
!64 = !{!34, !5, i64 440}
!65 = !{!34, !31, i64 488}
!66 = !{!49, !31, i64 0}
!67 = !{!48, !50, i64 8}
!68 = !{!69, !72, i64 8}
!69 = !{!"_ZTSSt15_Rb_tree_header", !70, i64 0, !50, i64 32}
!70 = !{!"_ZTSSt18_Rb_tree_node_base", !71, i64 0, !72, i64 8, !72, i64 16, !72, i64 24}
!71 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!72 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!73 = !{!48, !31, i64 0}
!74 = !{!72, !72, i64 0}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!35, !51, i64 156}
!78 = !{!35, !51, i64 157}
!79 = !{!35, !52, i64 160}
!80 = !{!35, !52, i64 164}
!81 = !{!35, !51, i64 168}
!82 = !{!34, !51, i64 169}
!83 = !{!34, !51, i64 170}
!84 = !{!34, !51, i64 171}
!85 = !{!34, !5, i64 472}
!86 = !{!50, !50, i64 0}
!87 = !{!62, !51, i64 0}
!88 = !{!62, !51, i64 1}
!89 = !{!62, !51, i64 2}
!90 = !{!62, !51, i64 3}
!91 = !{!62, !51, i64 4}
!92 = !{!41, !42, i64 8}
!93 = !{!41, !42, i64 0}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = !{!56, !31, i64 24}
!97 = !{!26, !27, i64 8}
!98 = !{!59, !5, i64 0}
!99 = !{!5, !5, i64 0}
!100 = !{!56, !5, i64 4}
!101 = !{!34, !31, i64 248}
!102 = distinct !{!102, !76}
!103 = !{!41, !42, i64 16}
!104 = !{!56, !5, i64 0}
!105 = !{!42, !42, i64 0}
!106 = !{!107, !108, i64 0}
!107 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !108, i64 0, !5, i64 8}
!108 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !21, i64 0}
!109 = !{!27, !27, i64 0}
!110 = !{!111, !5, i64 0}
!111 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!112 = !{!111, !5, i64 4}
!113 = !{!114, !21, i64 16}
!114 = !{!"_ZTSSt14_Function_base", !6, i64 0, !21, i64 16}
!115 = !{!21, !21, i64 0}
!116 = !{!117, !21, i64 24}
!117 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !114, i64 0, !21, i64 24}
!118 = !{!52, !52, i64 0}
!119 = distinct !{!119, !76, !120, !121}
!120 = !{!"llvm.loop.isvectorized", i32 1}
!121 = !{!"llvm.loop.unroll.runtime.disable"}
!122 = distinct !{!122, !76, !121, !120}
!123 = !{!124}
!124 = distinct !{!124, !125}
!125 = distinct !{!125, !"LVerDomain"}
!126 = !{!127}
!127 = distinct !{!127, !125}
!128 = !{!129}
!129 = distinct !{!129, !125}
!130 = !{!124, !127}
!131 = distinct !{!131, !76, !120, !121}
!132 = distinct !{!132, !133}
!133 = !{!"llvm.loop.unroll.disable"}
!134 = distinct !{!134, !76, !120}
!135 = distinct !{!135, !76}
!136 = distinct !{!136, !133}
!137 = !{!34, !51, i64 480}
!138 = !{!107, !5, i64 8}
!139 = !{!140, !141, i64 8}
!140 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!141 = !{!"p1 _ZTSN2cv8MatShapeE", !21, i64 0}
!142 = !{!140, !141, i64 0}
!143 = !{!141, !141, i64 0}
!144 = distinct !{!144, !76, !120, !121}
!145 = distinct !{!145, !76, !121, !120}
!146 = distinct !{!146, !76}
!147 = !{!148, !149, i64 0}
!148 = !{!"_ZTSN2cv3dnn14dnn5_v202606059DictValueE", !149, i64 0, !6, i64 8}
!149 = !{!"_ZTSN2cv5ParamE", !6, i64 0}
!150 = !{!151, !152, i64 0}
!151 = !{!"_ZTSN2cv10AutoBufferIlLm1EEE", !152, i64 0, !50, i64 8, !6, i64 16}
!152 = !{!"p1 long", !21, i64 0}
!153 = !{!154, !155, i64 0}
!154 = !{!"_ZTSN2cv10AutoBufferIdLm1EEE", !155, i64 0, !50, i64 8, !6, i64 16}
!155 = !{!"p1 double", !21, i64 0}
!156 = !{!157, !157, i64 0}
!157 = !{!"double", !6, i64 0}
!158 = !{!159, !160, i64 0}
!159 = !{!"_ZTSN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE", !160, i64 0, !50, i64 8, !6, i64 16}
!160 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!161 = distinct !{null}
!162 = distinct !{null}
!163 = !{!164}
!164 = distinct !{!164, !165}
!165 = distinct !{!165, !"LVerDomain"}
!166 = !{!167}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !76, !120, !121}
end_hunk_1
