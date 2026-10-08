Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_gemm?download=true
inline.NumInlined: 936
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %.not.i.i.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit
  %i.p = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = load <2 x ptr>, ptr %i.a, align 8, !tbaa !39
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !39
  br label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %.body.i unwind label %bb.j    ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.h
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %3) #23
  br label %.body

_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit: ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread, %bb.g, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit
  %i.w = phi ptr [ %i.e, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread ], [ %i.o, %bb.g ], [ %i.o, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit ]
  %i.x = phi ptr [ %i.d, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread ], [ %i.n, %bb.g ], [ %i.n, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit ] ; 2 uses
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %2)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %3, align 8, !tbaa !45
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !43   ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i.i5, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.m, !inline_history !46 ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #25, !inline_history !46
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %3) #23, !inline_history !46
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.p:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.r, %.body.i ]
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %.not.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS3_mmfPcmmbENK3$_0clERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 %.0.val, i32 %.4.val) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !129, !nonnull !47
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25, !range !48, !noundef !47 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130, !nonnull !47, !align !49
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = alloca i8, i64 %i.f, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131, !nonnull !47, !align !49
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !132, !nonnull !47, !align !49
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = mul i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !133, !nonnull !47, !align !49
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20
  %i.t = mul i64 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t ; 2 uses
  %i.v = sext i32 %.4.val to i64
  %i.w = icmp ult i32 %.0.val, %.4.val
  br i1 %i.w, label %.lr.ph28, label %._crit_edge29

.lr.ph28:                                         ; preds = %bb.d
  %i.x = sext i32 %.0.val to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.e

._crit_edge29.loopexit:                           ; preds = %._crit_edge25
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !129
  %.pre39 = load i8, ptr %.pre38, align 1, !tbaa !25, !range !48
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.d
  %i.an = phi i8 [ %.pre39, %._crit_edge29.loopexit ], [ %i.b, %bb.d ]
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %bb.j

bb.e:                                             ; preds = %.lr.ph28, %._crit_edge25
  %.05826 = phi i64 [ %i.x, %.lr.ph28 ], [ %i.dv, %._crit_edge25 ] ; 3 uses
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !134, !nonnull !47, !align !49
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %i.ar = udiv i64 %.05826, %i.aq
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !132, !nonnull !47, !align !49
  %i.at = load i64, ptr %i.as, align 8, !tbaa !20 ; 2 uses
  %i.au = mul i64 %i.at, %i.ar                    ; 3 uses
  %i.av = urem i64 %.05826, %i.aq
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !135, !nonnull !47, !align !49
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %i.ay = mul i64 %i.ax, %i.av                    ; 3 uses
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !136, !nonnull !47, !align !49
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !20
  %i.bb = sub i64 %i.ba, %i.au
  %. = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.at) ; 10 uses
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !137, !nonnull !47, !align !49
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !20
  %i.be = sub i64 %i.bd, %i.ay
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.ax) ; 10 uses
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !138, !nonnull !47, !align !49
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20 ; 8 uses
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !139, !nonnull !47, !align !49
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 2 uses
  %i.bk = mul i64 %i.bh, %i.au
  %i.bl = add i64 %i.bk, %i.ay
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !133, !nonnull !47, !align !49
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !20
  %i.bo = mul i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bj, i64 %i.bo  ; 6 uses
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !140, !nonnull !47, !align !50 ; 5 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !18 ; 2 uses
  %i.bs = fcmp oeq float %i.br, 0.000000e+00
  br i1 %i.bs, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq i64 %., 0
  br i1 %.not, label %.loopexit, label %.lr.ph21.preheader

.lr.ph21.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %., 1
  %i.bt = icmp eq i64 %., 1
  br i1 %i.bt, label %.lr.ph21.epil.preheader, label %.lr.ph21.preheader.new

.lr.ph21.preheader.new:                           ; preds = %.lr.ph21.preheader
  %unroll_iter = and i64 %., -2
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21, %.lr.ph21.preheader.new
  %.05720 = phi i64 [ 0, %.lr.ph21.preheader.new ], [ %i.ch, %.lr.ph21 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph21.preheader.new ], [ %niter.next.1, %.lr.ph21 ]
  %i.bu = mul i64 %.05720, %i.bh
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !133, !nonnull !47, !align !49
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !20 ; 2 uses
  %i.bx = mul i64 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bx
  %i.bz = mul i64 %i.bw, %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.by, i8 0, i64 %i.bz, i1 false)
  %i.ca = or disjoint i64 %.05720, 1
  %i.cb = mul i64 %i.ca, %i.bh
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !133, !nonnull !47, !align !49
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !20 ; 2 uses
  %i.ce = mul i64 %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ce
  %i.cg = mul i64 %i.cd, %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cf, i8 0, i64 %i.cg, i1 false)
  %i.ch = add nuw i64 %.05720, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph21, !llvm.loop !119

bb.f:                                             ; preds = %bb.e
  %i.ci = fcmp une float %i.br, 1.000000e+00
  %i.cj = icmp ne i64 %., 0
  %or.cond = select i1 %i.ci, i1 %i.cj, i1 false
  %i.ck = icmp ne i64 %i.bf, 0
  %or.cond30 = select i1 %or.cond, i1 %i.ck, i1 false
  br i1 %or.cond30, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.cl = shl i64 %i.bh, 2
  %i.cm = add i64 %., -1
  %i.cn = mul i64 %i.cl, %i.cm
  %i.co = shl i64 %i.bf, 2
  %i.cp = getelementptr i8, ptr %i.bj, i64 %i.cn
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.bo
  %scevgep53.a = getelementptr i8, ptr %i.cq, i64 %i.co
  %scevgep54 = getelementptr i8, ptr %i.bq, i64 4
  %min.iters.check = icmp ult i64 %i.bf, 8
  %bound0 = icmp ult ptr %i.bp, %scevgep54
  %bound1 = icmp ult ptr %i.bq, %scevgep53.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.bh, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %i.cr = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.bf, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.05618 = phi i64 [ %i.da, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cs = mul i64 %.05618, %i.bh
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cs ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.cr
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.cu = load float, ptr %i.bq, align 4, !tbaa !18, !alias.scope !141
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cv, align 4, !tbaa !18, !alias.scope !142, !noalias !141
  %wide.load55 = load <4 x float>, ptr %i.cw, align 4, !tbaa !18, !alias.scope !142, !noalias !141
  %i.cx = fmul <4 x float> %broadcast.splat, %wide.load
  %i.cy = fmul <4 x float> %broadcast.splat, %wide.load55
  store <4 x float> %i.cx, ptr %i.cv, align 4, !tbaa !18, !alias.scope !142, !noalias !141
  store <4 x float> %i.cy, ptr %i.cw, align 4, !tbaa !18, !alias.scope !142, !noalias !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.05517.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.da = add nuw i64 %.05618, 1                  ; 2 uses
  %i.db = icmp ult i64 %i.da, %.
  br i1 %i.db, label %.lr.ph, label %.loopexit, !llvm.loop !124

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05517 = phi i64 [ %i.dg, %scalar.ph ], [ %.05517.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = load float, ptr %i.bq, align 4, !tbaa !18
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.05517 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !18
  %i.df = fmul float %i.dc, %i.de
  store float %i.df, ptr %i.dd, align 4, !tbaa !18
  %i.dg = add nuw i64 %.05517, 1                  ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.bf
  br i1 %i.dh, label %scalar.ph, label %._crit_edge, !llvm.loop !125

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph21
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph21.epil.preheader

.lr.ph21.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph21.preheader
  %.05720.epil.init = phi i64 [ 0, %.lr.ph21.preheader ], [ %i.ch, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.di = mul i64 %.05720.epil.init, %i.bh
  %i.dj = load ptr, ptr %i.q, align 8, !tbaa !133, !nonnull !47, !align !49
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !20 ; 2 uses
  %i.dl = mul i64 %i.di, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.dl
  %i.dn = mul i64 %i.dk, %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dm, i8 0, i64 %i.dn, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph21.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.f
  %i.do = load ptr, ptr %i.af, align 8, !tbaa !143, !nonnull !47, !align !49
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !20 ; 2 uses
  %.not31 = icmp eq i64 %i.dp, 0
  br i1 %.not31, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %.loopexit
  %i.dq = trunc i64 %. to i32                     ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  %i.ds = and i64 %., 2147483647                  ; 8 uses
  %i.dt = trunc i64 %i.bf to i32                  ; 2 uses
  %i.du = trunc i64 %i.bh to i32
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !131
  %.pre35 = load i64, ptr %.pre, align 8, !tbaa !20
  br label %bb.g

._crit_edge25:                                    ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit, %.loopexit
  %i.dv = add i64 %.05826, 1                      ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.v
  br i1 %i.dw, label %bb.e, label %._crit_edge29.loopexit, !llvm.loop !126

bb.g:                                             ; preds = %.lr.ph24, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit
  %i.dx = phi i64 [ %.pre35, %.lr.ph24 ], [ %i.ij, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %i.dy = phi i64 [ %i.dp, %.lr.ph24 ], [ %i.im, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %.022 = phi i64 [ 0, %.lr.ph24 ], [ %i.ik, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ] ; 4 uses
  %i.dz = sub nuw i64 %i.dy, %.022
  %.67 = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.dx)
  %i.ea = trunc i64 %.67 to i32                   ; 3 uses
  %i.eb = load ptr, ptr %i.ag, align 8, !tbaa !144, !nonnull !47, !align !49
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !23
  %i.ed = load ptr, ptr %i.ah, align 8, !tbaa !145, !nonnull !47, !align !49
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !20 ; 7 uses
  %i.ef = mul i64 %i.ee, %i.au
  %i.eg = load ptr, ptr %i.ai, align 8, !tbaa !146, !nonnull !47, !align !49
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !20 ; 3 uses
  %i.ei = mul i64 %i.eh, %.022
  %i.ej = add i64 %i.ei, %i.ef
  %i.ek = load ptr, ptr %i.q, align 8, !tbaa !133, !nonnull !47, !align !49
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !20 ; 2 uses
  %i.em = mul i64 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.em ; 8 uses
  br i1 %i.dr, label %.lr.ph89.i, label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit

.lr.ph89.i:                                       ; preds = %bb.g
  %i.eo = trunc i64 %i.ee to i32                  ; 2 uses
  %i.ep = trunc i64 %i.eh to i32
  %i.eq = mul nsw i32 %i.ep, %i.ea                ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0                   ; 2 uses
  %i.es = shl nsw i32 %i.eo, 1
  %i.et = shl nsw i32 %i.eo, 2
  %sext = shl i64 %i.eh, 32
  %i.eu = ashr exact i64 %sext, 32                ; 2 uses
  %i.ev = sext i32 %i.eq to i64                   ; 2 uses
  %sext1 = shl i64 %i.ee, 32                      ; 8 uses
  %i.ew = ashr exact i64 %sext1, 32               ; 2 uses
  %i.ex = sext i32 %i.es to i64
  %sext2 = mul i64 %i.ee, 12884901888
  %i.ey = sext i32 %i.et to i64
  %sext3 = mul i64 %i.ee, 21474836480
  %sext4 = mul i64 %i.ee, 25769803776
  %sext5 = mul i64 %i.ee, 30064771072
  %i.ez = ashr exact i64 %sext2, 30
  %i.fa = ashr exact i64 %sext3, 30
  %i.fb = ashr exact i64 %sext4, 30
  %i.fc = ashr exact i64 %sext5, 30
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph89.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next98.i, %.loopexit.i ] ; 16 uses
  %.087.i = phi ptr [ %i.i, %.lr.ph89.i ], [ %.3.i, %.loopexit.i ] ; 4 uses
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 8 ; 2 uses
  %i.fd = or disjoint i64 %indvars.iv97.i, 7
  %i.fe = icmp samesign ult i64 %i.fd, %i.ds
  %i.ff = mul nsw i64 %indvars.iv97.i, %i.ew
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.ff ; 9 uses
  br i1 %i.fe, label %bb.i, label %.preheader.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.er, label %.lr.ph84.preheader.i, label %.loopexit.i

.lr.ph84.preheader.i:                             ; preds = %bb.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.fg, i64 %i.ew
  %invariant.gep104.i = getelementptr [4 x i8], ptr %i.fg, i64 %i.ex
  %invariant.gep106.i = getelementptr i8, ptr %i.fg, i64 %i.ez
  %invariant.gep108.i = getelementptr [4 x i8], ptr %i.fg, i64 %i.ey
  %invariant.gep110.i = getelementptr i8, ptr %i.fg, i64 %i.fa
  %invariant.gep112.i = getelementptr i8, ptr %i.fg, i64 %i.fb
  %invariant.gep114.i = getelementptr i8, ptr %i.fg, i64 %i.fc
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i, %.lr.ph84.preheader.i
  %indvars.iv94.i = phi i64 [ 0, %.lr.ph84.preheader.i ], [ %indvars.iv.next95.i, %.lr.ph84.i ] ; 9 uses
  %.182.i = phi ptr [ %.087.i, %.lr.ph84.preheader.i ], [ %i.fq, %.lr.ph84.i ] ; 9 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv94.i
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !18
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv94.i
  %i.fj = load float, ptr %gep.i, align 4, !tbaa !18
  %gep105.i = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv94.i
  %i.fk = load float, ptr %gep105.i, align 4, !tbaa !18
  %gep107.i = getelementptr [4 x i8], ptr %invariant.gep106.i, i64 %indvars.iv94.i
  %i.fl = load float, ptr %gep107.i, align 4, !tbaa !18
  %gep109.i = getelementptr [4 x i8], ptr %invariant.gep108.i, i64 %indvars.iv94.i
  %i.fm = load float, ptr %gep109.i, align 4, !tbaa !18
  %gep111.i = getelementptr [4 x i8], ptr %invariant.gep110.i, i64 %indvars.iv94.i
  %i.fn = load float, ptr %gep111.i, align 4, !tbaa !18
  %gep113.i = getelementptr [4 x i8], ptr %invariant.gep112.i, i64 %indvars.iv94.i
  %i.fo = load float, ptr %gep113.i, align 4, !tbaa !18
  %gep115.i = getelementptr [4 x i8], ptr %invariant.gep114.i, i64 %indvars.iv94.i
  %i.fp = load float, ptr %gep115.i, align 4, !tbaa !18
  store float %i.fi, ptr %.182.i, align 4
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 4
  store float %i.fj, ptr %.sroa.416.0..sroa_idx.i, align 4
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  store float %i.fk, ptr %.sroa.517.0..sroa_idx.i, align 4
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 12
  store float %i.fl, ptr %.sroa.618.0..sroa_idx.i, align 4
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 16
  store float %i.fm, ptr %.sroa.719.0..sroa_idx.i, align 4
  %.sroa.820.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 20
  store float %i.fn, ptr %.sroa.820.0..sroa_idx.i, align 4
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 24
  store float %i.fo, ptr %.sroa.921.0..sroa_idx.i, align 4
  %.sroa.1022.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 28
  store float %i.fp, ptr %.sroa.1022.0..sroa_idx.i, align 4
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS3_fPcmmb:bb.a
  store ptr %i.j, ptr %i.at, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 80
  store ptr %i.l, ptr %i.au, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 88
  store ptr %i.c, ptr %i.av, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 96
  store ptr %i.i, ptr %i.aw, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr %i.m, ptr %i.ax, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 112
  store ptr %i.p, ptr %i.ay, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 120
  store ptr %i.e, ptr %i.az, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 128
  store ptr %i.f, ptr %i.ba, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 136
  store ptr %i.g, ptr %i.bb, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 144
  store ptr %i.d, ptr %i.bc, align 8, !tbaa !34
  br i1 %12, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmSA_fPcmmbE3$_0vEEOT_.exit", label %bb.h

"_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmSA_fPcmmbE3$_0vEEOT_.exit": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.bd = trunc i64 %i.ak to i32
  store i32 0, ptr %14, align 4, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.bg, align 8
  %i.bh = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #24 ; 2 uses
  %i.bi = udiv i64 %2, %.sroa.speculated
  %.lhs.trunc21 = trunc nuw i64 %i.z to i8
  %i.bj = udiv i8 %.lhs.trunc21, 12
  %.zext22 = zext nneg i8 %i.bj to i64
  %i.bk = shl nuw nsw i64 %i.u, 29
  %i.bl = and i64 %i.bk, 133143986176
  %i.bm = mul nuw nsw i64 %i.bl, %.zext22
  %i.bn = mul i64 %i.bm, %i.bi
  %i.bo = ashr exact i64 %i.bn, 32
  %i.bp = mul i64 %i.bo, %i.ak
  %i.bq = uitofp i64 %i.bp to double
  %i.br = fmul nnan double %i.bq, f0x3F50000000000000
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(152) %13, i64 152, i1 false), !tbaa.struct !53
  store ptr %i.bh, ptr %15, align 8, !tbaa !39
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS8_fPcmmbE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.bs, align 8, !tbaa !42
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS8_fPcmmbE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.bf, align 8, !tbaa !43
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef align 8 %15, double noundef %i.br)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmSA_fPcmmbE3$_0vEEOT_.exit"
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.i

bb.e:                                             ; preds = %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmSA_fPcmmbE3$_0vEEOT_.exit"
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %i.bf, align 8, !tbaa !43 ; 2 uses
  %.not.i18 = icmp eq ptr %i.by, null
  br i1 %.not.i18, label %_ZNSt14_Function_baseD2Ev.exit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit19 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit19:                 ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  resume { ptr, i32 } %i.bx

bb.h:                                             ; preds = %bb.a
  %i.cc = trunc i64 %i.ak to i32
  call fastcc void @"_ZZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS3_fPcmmbENK3$_0clERKNS_5RangeE"(ptr noundef nonnull align 8 dereferenceable(152) %13, i32 0, i32 %i.cc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS3_fPcmmbENK3$_0clERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i32 %.0.val, i32 %.4.val) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !161, !nonnull !47
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25, !range !48, !noundef !47 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162, !nonnull !47, !align !49
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = alloca i8, i64 %i.f, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %.4.val to i64
  %i.l = icmp ult i32 %.0.val, %.4.val
  br i1 %i.l, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %bb.d
  %i.m = sext i32 %.0.val to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !163
  %.pre43 = load i64, ptr %.pre, align 8, !tbaa !20
  br label %bb.e

._crit_edge30.loopexit:                           ; preds = %._crit_edge26
  %.pre52 = load ptr, ptr %0, align 8, !tbaa !161
  %.pre53 = load i8, ptr %.pre52, align 1, !tbaa !25, !range !48
  br label %._crit_edge30

._crit_edge30:                                    ; preds = %._crit_edge30.loopexit, %bb.d
  %i.ad = phi i8 [ %.pre53, %._crit_edge30.loopexit ], [ %i.b, %bb.d ]
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.k, label %bb.j

bb.e:                                             ; preds = %.lr.ph29, %._crit_edge26
  %i.af = phi i64 [ %.pre43, %.lr.ph29 ], [ %i.du, %._crit_edge26 ] ; 4 uses
  %.05727 = phi i64 [ %i.m, %.lr.ph29 ], [ %i.dv, %._crit_edge26 ] ; 3 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !164, !nonnull !47, !align !49
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %i.ai = udiv i64 %.05727, %i.ah
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !165, !nonnull !47, !align !49
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.al = mul i64 %i.ak, %i.ai                    ; 3 uses
  %i.am = urem i64 %.05727, %i.ah
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !166, !nonnull !47, !align !49
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %i.ap = mul i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !167, !nonnull !47, !align !49
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.as = sub i64 %i.ar, %i.al
  %. = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ak) ; 10 uses
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !168, !nonnull !47, !align !49
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20
  %i.av = sub i64 %i.au, %i.ap
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ao) ; 11 uses
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !169, !nonnull !47, !align !49
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !20 ; 8 uses
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !170, !nonnull !47, !align !49
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23 ; 2 uses
  %i.bb = mul i64 %i.ay, %i.al
  %i.bc = add i64 %i.bb, %i.ap
  %i.bd = load ptr, ptr %i.u, align 8, !tbaa !171, !nonnull !47, !align !49
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20 ; 5 uses
  %i.bf = mul i64 %i.be, %i.bc                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ba, i64 %i.bf  ; 6 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !172, !nonnull !47, !align !49
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.bj = mul i64 %i.be, %i.ap
  %i.bk = mul i64 %i.bj, %i.af
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !173, !nonnull !47, !align !50 ; 5 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !18 ; 2 uses
  %i.bo = fcmp oeq float %i.bn, 0.000000e+00
  br i1 %i.bo, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq i64 %., 0
  br i1 %.not, label %.loopexit, label %.lr.ph21.preheader

.lr.ph21.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %., 1
  %i.bp = icmp eq i64 %., 1
  br i1 %i.bp, label %.lr.ph21.epil.preheader, label %.lr.ph21.preheader.new

.lr.ph21.preheader.new:                           ; preds = %.lr.ph21.preheader
  %unroll_iter = and i64 %., -2
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21, %.lr.ph21.preheader.new
  %indvars.iv40 = phi i64 [ 0, %.lr.ph21.preheader.new ], [ %indvars.iv.next41.1, %.lr.ph21 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph21.preheader.new ], [ %niter.next.1, %.lr.ph21 ]
  %i.bq = mul i64 %indvars.iv40, %i.ay
  %i.br = load ptr, ptr %i.u, align 8, !tbaa !171, !nonnull !47, !align !49
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !20 ; 2 uses
  %i.bt = mul i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bt
  %i.bv = mul i64 %i.bs, %i.aw
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bu, i8 0, i64 %i.bv, i1 false)
  %indvars.iv.next41 = or disjoint i64 %indvars.iv40, 1
  %i.bw = mul i64 %indvars.iv.next41, %i.ay
  %i.bx = load ptr, ptr %i.u, align 8, !tbaa !171, !nonnull !47, !align !49
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !20 ; 2 uses
  %i.bz = mul i64 %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bz
  %i.cb = mul i64 %i.by, %i.aw
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ca, i8 0, i64 %i.cb, i1 false)
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph21, !llvm.loop !151

bb.f:                                             ; preds = %bb.e
  %i.cc = fcmp une float %i.bn, 1.000000e+00
  %i.cd = icmp ne i64 %., 0
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  %i.ce = icmp ne i64 %i.aw, 0
  %or.cond31 = select i1 %or.cond, i1 %i.ce, i1 false
  br i1 %or.cond31, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.cf = shl i64 %i.ay, 2
  %i.cg = add i64 %., -1
  %i.ch = mul i64 %i.cf, %i.cg
  %i.ci = shl i64 %i.aw, 2
  %i.cj = getelementptr i8, ptr %i.ba, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.bf
  %scevgep68.a = getelementptr i8, ptr %i.ck, i64 %i.ci
  %scevgep69 = getelementptr i8, ptr %i.bm, i64 4
  %min.iters.check = icmp ult i64 %i.aw, 8
  %bound0 = icmp ult ptr %i.bg, %scevgep69
  %bound1 = icmp ult ptr %i.bm, %scevgep68.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.ay, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %i.cl = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.aw, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cm = mul i64 %indvars.iv37, %i.ay
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.cm ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.cl
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.co = load float, ptr %i.bm, align 4, !tbaa !18, !alias.scope !174
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.co, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cp, align 4, !tbaa !18, !alias.scope !175, !noalias !174
  %wide.load70 = load <4 x float>, ptr %i.cq, align 4, !tbaa !18, !alias.scope !175, !noalias !174
  %i.cr = fmul <4 x float> %broadcast.splat, %wide.load
  %i.cs = fmul <4 x float> %broadcast.splat, %wide.load70
  store <4 x float> %i.cr, ptr %i.cp, align 4, !tbaa !18, !alias.scope !175, !noalias !174
  store <4 x float> %i.cs, ptr %i.cq, align 4, !tbaa !18, !alias.scope !175, !noalias !174
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.cu = icmp ugt i64 %., %indvars.iv.next38
  br i1 %i.cu, label %.lr.ph, label %.loopexit, !llvm.loop !156

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cv = load float, ptr %i.bm, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18
  %i.cy = fmul float %i.cv, %i.cx
  store float %i.cy, ptr %i.cw, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = icmp ugt i64 %i.aw, %indvars.iv.next
  br i1 %i.cz, label %scalar.ph, label %._crit_edge, !llvm.loop !157

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph21
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph21.epil.preheader

.lr.ph21.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph21.preheader
  %indvars.iv40.epil.init = phi i64 [ 0, %.lr.ph21.preheader ], [ %indvars.iv.next41.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod75 = trunc i64 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.da = mul i64 %indvars.iv40.epil.init, %i.ay
  %i.db = load ptr, ptr %i.u, align 8, !tbaa !171, !nonnull !47, !align !49
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !20 ; 2 uses
  %i.dd = mul i64 %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dd
  %i.df = mul i64 %i.dc, %i.aw
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.de, i8 0, i64 %i.df, i1 false)
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph21.epil.preheader
  %.pre44 = load ptr, ptr %i.u, align 8, !tbaa !171
  %.pre45 = load i64, ptr %.pre44, align 8, !tbaa !20
  %.pre46 = load ptr, ptr %i.v, align 8, !tbaa !163
  %.pre47 = load i64, ptr %.pre46, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.loopexit, %.preheader, %bb.f
  %i.dg = phi i64 [ %i.af, %bb.f ], [ %.pre47, %.loopexit.loopexit ], [ %i.af, %.preheader ], [ %i.af, %._crit_edge ] ; 2 uses
  %i.dh = phi i64 [ %i.be, %bb.f ], [ %.pre45, %.loopexit.loopexit ], [ %i.be, %.preheader ], [ %i.be, %._crit_edge ]
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !176, !nonnull !47, !align !49
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !20 ; 2 uses
  %i.dk = add i64 %i.dj, %i.aw
  %.fr70 = freeze i64 %i.dk
  %i.dl = add i64 %.fr70, -1                      ; 2 uses
  %i.dm = urem i64 %i.dl, %i.dj
  %i.dn = sub nuw i64 %i.dl, %i.dm
  %i.do = mul i64 %i.dn, %i.dh
  %.not32 = icmp eq i64 %i.dg, 0
  br i1 %.not32, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.loopexit
  %i.dp = trunc i64 %. to i32                     ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  %i.dr = and i64 %., 2147483647                  ; 8 uses
  %i.ds = trunc i64 %i.aw to i32
  %i.dt = trunc i64 %i.ay to i32
  %.pre48 = load ptr, ptr %i.y, align 8, !tbaa !177
  %.pre49 = load i64, ptr %.pre48, align 8, !tbaa !20
  br label %bb.g

._crit_edge26:                                    ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit, %.loopexit
  %i.du = phi i64 [ 0, %.loopexit ], [ %i.ib, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %i.dv = add i64 %.05727, 1                      ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.k
  br i1 %i.dw, label %bb.e, label %._crit_edge30.loopexit, !llvm.loop !158

bb.g:                                             ; preds = %.lr.ph25, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit
  %i.dx = phi i64 [ %.pre49, %.lr.ph25 ], [ %i.hy, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %i.dy = phi i64 [ %i.dg, %.lr.ph25 ], [ %i.ib, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %.023 = phi i64 [ 0, %.lr.ph25 ], [ %i.hz, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ] ; 3 uses
  %.05822 = phi ptr [ %i.bl, %.lr.ph25 ], [ %i.hw, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ] ; 2 uses
  %i.dz = sub nuw i64 %i.dy, %.023
  %.71 = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.dx) ; 2 uses
  %i.ea = trunc i64 %.71 to i32                   ; 2 uses
  %i.eb = load ptr, ptr %i.z, align 8, !tbaa !178, !nonnull !47, !align !49
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !23
  %i.ed = load ptr, ptr %i.aa, align 8, !tbaa !179, !nonnull !47, !align !49
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !20 ; 7 uses
  %i.ef = mul i64 %i.ee, %i.al
  %i.eg = load ptr, ptr %i.ab, align 8, !tbaa !180, !nonnull !47, !align !49
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !20 ; 3 uses
  %i.ei = mul i64 %i.eh, %.023
  %i.ej = add i64 %i.ei, %i.ef
  %i.ek = load ptr, ptr %i.u, align 8, !tbaa !171, !nonnull !47, !align !49
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !20 ; 2 uses
  %i.em = mul i64 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.em ; 8 uses
  br i1 %i.dq, label %.lr.ph89.i, label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit

.lr.ph89.i:                                       ; preds = %bb.g
  %i.eo = trunc i64 %i.ee to i32                  ; 2 uses
  %i.ep = trunc i64 %i.eh to i32
  %i.eq = mul nsw i32 %i.ep, %i.ea                ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0                   ; 2 uses
  %i.es = shl nsw i32 %i.eo, 1
  %i.et = shl nsw i32 %i.eo, 2
  %sext = shl i64 %i.eh, 32
  %i.eu = ashr exact i64 %sext, 32                ; 2 uses
  %i.ev = sext i32 %i.eq to i64                   ; 2 uses
  %sext1 = shl i64 %i.ee, 32                      ; 8 uses
  %i.ew = ashr exact i64 %sext1, 32               ; 2 uses
  %i.ex = sext i32 %i.es to i64
  %sext2 = mul i64 %i.ee, 12884901888
  %i.ey = sext i32 %i.et to i64
  %sext3 = mul i64 %i.ee, 21474836480
  %sext4 = mul i64 %i.ee, 25769803776
  %sext5 = mul i64 %i.ee, 30064771072
  %i.ez = ashr exact i64 %sext2, 30
  %i.fa = ashr exact i64 %sext3, 30
  %i.fb = ashr exact i64 %sext4, 30
  %i.fc = ashr exact i64 %sext5, 30
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph89.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next98.i, %.loopexit.i ] ; 16 uses
  %.087.i = phi ptr [ %i.i, %.lr.ph89.i ], [ %.3.i, %.loopexit.i ] ; 4 uses
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 8 ; 2 uses
  %i.fd = or disjoint i64 %indvars.iv97.i, 7
  %i.fe = icmp samesign ult i64 %i.fd, %i.dr
  %i.ff = mul nsw i64 %indvars.iv97.i, %i.ew
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.ff ; 9 uses
  br i1 %i.fe, label %bb.i, label %.preheader.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.er, label %.lr.ph84.preheader.i, label %.loopexit.i

.lr.ph84.preheader.i:                             ; preds = %bb.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.fg, i64 %i.ew
  %invariant.gep104.i = getelementptr [4 x i8], ptr %i.fg, i64 %i.ex
  %invariant.gep106.i = getelementptr i8, ptr %i.fg, i64 %i.ez
  %invariant.gep108.i = getelementptr [4 x i8], ptr %i.fg, i64 %i.ey
  %invariant.gep110.i = getelementptr i8, ptr %i.fg, i64 %i.fa
  %invariant.gep112.i = getelementptr i8, ptr %i.fg, i64 %i.fb
  %invariant.gep114.i = getelementptr i8, ptr %i.fg, i64 %i.fc
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i, %.lr.ph84.preheader.i
  %indvars.iv94.i = phi i64 [ 0, %.lr.ph84.preheader.i ], [ %indvars.iv.next95.i, %.lr.ph84.i ] ; 9 uses
  %.182.i = phi ptr [ %.087.i, %.lr.ph84.preheader.i ], [ %i.fq, %.lr.ph84.i ] ; 9 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv94.i
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !18
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv94.i
  %i.fj = load float, ptr %gep.i, align 4, !tbaa !18
  %gep105.i = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv94.i
  %i.fk = load float, ptr %gep105.i, align 4, !tbaa !18
  %gep107.i = getelementptr [4 x i8], ptr %invariant.gep106.i, i64 %indvars.iv94.i
  %i.fl = load float, ptr %gep107.i, align 4, !tbaa !18
  %gep109.i = getelementptr [4 x i8], ptr %invariant.gep108.i, i64 %indvars.iv94.i
  %i.fm = load float, ptr %gep109.i, align 4, !tbaa !18
  %gep111.i = getelementptr [4 x i8], ptr %invariant.gep110.i, i64 %indvars.iv94.i
  %i.fn = load float, ptr %gep111.i, align 4, !tbaa !18
  %gep113.i = getelementptr [4 x i8], ptr %invariant.gep112.i, i64 %indvars.iv94.i
  %i.fo = load float, ptr %gep113.i, align 4, !tbaa !18
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS8_fPcmmbE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS3_fPcmmbE3$_0", ptr %0, align 8, !tbaa !112
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS5_fPcmmbE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS5_fPcmmbE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(152) %.val6, i64 152, i1 false), !tbaa.struct !53
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS5_fPcmmbE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS5_fPcmmbE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 152) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS5_fPcmmbE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS5_fPcmmbE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS8_S8_mmmfPKcmmSA_mmfPcmmE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #21 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !39
  %.val2 = load i32, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4
  tail call fastcc void @"_ZZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS3_S3_mmmfPKcmmS5_mmfPcmmENK3$_0clERKNS_5RangeE"(ptr noundef nonnull readonly align 8 dereferenceable(192) %.val, i32 %.val2, i32 %.val3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS8_S8_mmmfPKcmmSA_mmfPcmmE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_mmfPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS3_S3_mmmfPKcmmS5_mmfPcmmE3$_0", ptr %0, align 8, !tbaa !112
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_mmfPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_mmfPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(192) %.val6, i64 192, i1 false), !tbaa.struct !273
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_mmfPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_mmfPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 192) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_mmfPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_mmfPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS3_S3_mmmfPKcmmS5_mmfPcmmENK3$_0clERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i32 %.0.val, i32 %.4.val) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !284, !nonnull !47
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25, !range !48, !noundef !47 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !285, !nonnull !47, !align !49
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = alloca i8, i64 %i.f, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !286, !nonnull !47, !align !49
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !287, !nonnull !47, !align !49
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = mul i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !288, !nonnull !47, !align !49
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20
  %i.t = mul i64 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t ; 2 uses
  %i.v = sext i32 %.4.val to i64
  %i.w = icmp ult i32 %.0.val, %.4.val
  br i1 %i.w, label %.lr.ph28, label %._crit_edge29

.lr.ph28:                                         ; preds = %bb.d
  %i.x = sext i32 %.0.val to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.e

._crit_edge29.loopexit:                           ; preds = %._crit_edge25
  %.pre45 = load ptr, ptr %0, align 8, !tbaa !284
  %.pre46 = load i8, ptr %.pre45, align 1, !tbaa !25, !range !48
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.d
  %i.ar = phi i8 [ %.pre46, %._crit_edge29.loopexit ], [ %i.b, %bb.d ]
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %bb.j

bb.e:                                             ; preds = %.lr.ph28, %._crit_edge25
  %.06726 = phi i64 [ %i.x, %.lr.ph28 ], [ %i.ew, %._crit_edge25 ] ; 4 uses
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !289, !nonnull !47, !align !49
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20 ; 3 uses
  %i.av = udiv i64 %.06726, %i.au                 ; 4 uses
  %i.aw = mul i64 %i.av, %i.au                    ; 0 uses
  %.recomposed = urem i64 %.06726, %i.au
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !290, !nonnull !47, !align !49
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !20 ; 2 uses
  %i.az = udiv i64 %.recomposed, %i.ay
  %i.ba = urem i64 %.06726, %i.ay
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !287, !nonnull !47, !align !49
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !20 ; 2 uses
  %i.bd = mul i64 %i.bc, %i.az                    ; 3 uses
  %i.be = load ptr, ptr %i.aa, align 8, !tbaa !291, !nonnull !47, !align !49
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !20 ; 2 uses
  %i.bg = mul i64 %i.bf, %i.ba                    ; 4 uses
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !292, !nonnull !47, !align !49
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bj = sub i64 %i.bi, %i.bd
  %. = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bc) ; 10 uses
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !293, !nonnull !47, !align !49
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !20
  %i.bm = sub i64 %i.bl, %i.bg
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bf) ; 10 uses
  %i.bo = load ptr, ptr %i.ad, align 8, !tbaa !294, !nonnull !47, !align !49
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !20 ; 8 uses
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !295, !nonnull !47, !align !49
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23
  %i.bs = load ptr, ptr %i.af, align 8, !tbaa !296, !nonnull !47, !align !49
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.av
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !20
  %i.bw = load ptr, ptr %i.q, align 8, !tbaa !288, !nonnull !47, !align !49
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !20 ; 5 uses
  %i.by = mul i64 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.by
  %i.ca = load ptr, ptr %i.ag, align 8, !tbaa !297, !nonnull !47, !align !49
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !23
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !298, !nonnull !47, !align !49
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.av
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !20
  %i.cg = mul i64 %i.cf, %i.bx
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ai, align 8, !tbaa !299, !nonnull !47, !align !49
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23 ; 2 uses
  %i.ck = load ptr, ptr %i.aj, align 8, !tbaa !300, !nonnull !47, !align !49
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.av
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !20 ; 2 uses
  %i.co = mul i64 %i.cn, %i.bx
  %i.cp = getelementptr i8, ptr %i.cj, i64 %i.co
  %i.cq = mul i64 %i.bp, %i.bd                    ; 2 uses
  %i.cr = add i64 %i.cq, %i.bg
  %i.cs = mul i64 %i.bx, %i.cr
  %i.ct = getelementptr i8, ptr %i.cp, i64 %i.cs  ; 6 uses
  %i.cu = load ptr, ptr %i.ak, align 8, !tbaa !301, !nonnull !47, !align !50 ; 5 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !18 ; 2 uses
  %i.cw = fcmp oeq float %i.cv, 0.000000e+00
  br i1 %i.cw, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq i64 %., 0
  br i1 %.not, label %.loopexit, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %., 1
  %i.cx = icmp eq i64 %., 1
  br i1 %i.cx, label %.lr.ph22.epil.preheader, label %.lr.ph22.preheader.new

.lr.ph22.preheader.new:                           ; preds = %.lr.ph22.preheader
  %unroll_iter = and i64 %., -2
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22, %.lr.ph22.preheader.new
  %indvars.iv39 = phi i64 [ 0, %.lr.ph22.preheader.new ], [ %indvars.iv.next40.1, %.lr.ph22 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph22.preheader.new ], [ %niter.next.1, %.lr.ph22 ]
  %i.cy = mul i64 %indvars.iv39, %i.bp
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !288, !nonnull !47, !align !49
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !20 ; 2 uses
  %i.db = mul i64 %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.db
  %i.dd = mul i64 %i.da, %i.bn
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dc, i8 0, i64 %i.dd, i1 false)
  %indvars.iv.next40 = or disjoint i64 %indvars.iv39, 1
  %i.de = mul i64 %indvars.iv.next40, %i.bp
  %i.df = load ptr, ptr %i.q, align 8, !tbaa !288, !nonnull !47, !align !49
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !20 ; 2 uses
  %i.dh = mul i64 %i.de, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dh
  %i.dj = mul i64 %i.dg, %i.bn
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.di, i8 0, i64 %i.dj, i1 false)
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph22, !llvm.loop !274

bb.f:                                             ; preds = %bb.e
  %i.dk = fcmp une float %i.cv, 1.000000e+00
  %i.dl = icmp ne i64 %., 0
  %or.cond = select i1 %i.dk, i1 %i.dl, i1 false
  %i.dm = icmp ne i64 %i.bn, 0
  %or.cond30 = select i1 %or.cond, i1 %i.dm, i1 false
  br i1 %or.cond30, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %1 = shl i64 %i.bp, 2
  %i.dn = add i64 %., -1
  %i.do = mul i64 %1, %i.dn
  %2 = add i64 %i.cn, %i.cq
  %i.dp = add i64 %2, %i.bg
  %i.dq = mul i64 %i.bx, %i.dp
  %i.dr = shl i64 %i.bn, 2
  %i.ds = getelementptr i8, ptr %i.cj, i64 %i.do
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.dq
  %scevgep59.a = getelementptr i8, ptr %i.dt, i64 %i.dr
  %scevgep60 = getelementptr i8, ptr %i.cu, i64 4
  %min.iters.check = icmp ult i64 %i.bn, 8
  %bound0 = icmp ult ptr %i.ct, %scevgep60
  %bound1 = icmp ult ptr %i.cu, %scevgep59.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.bp, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %i.du = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.bn, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.dv = mul i64 %indvars.iv36, %i.bp
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dv ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.du
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.dx = load float, ptr %i.cu, align 4, !tbaa !18, !alias.scope !302
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.dy, align 4, !tbaa !18, !alias.scope !303, !noalias !302
  %wide.load61 = load <4 x float>, ptr %i.dz, align 4, !tbaa !18, !alias.scope !303, !noalias !302
  %i.ea = fmul <4 x float> %broadcast.splat, %wide.load
  %i.eb = fmul <4 x float> %broadcast.splat, %wide.load61
  store <4 x float> %i.ea, ptr %i.dy, align 4, !tbaa !18, !alias.scope !303, !noalias !302
  store <4 x float> %i.eb, ptr %i.dz, align 4, !tbaa !18, !alias.scope !303, !noalias !302
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.ed = icmp ugt i64 %., %indvars.iv.next37
  br i1 %i.ed, label %.lr.ph, label %.loopexit, !llvm.loop !279

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ee = load float, ptr %i.cu, align 4, !tbaa !18
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !18
  %i.eh = fmul float %i.ee, %i.eg
  store float %i.eh, ptr %i.ef, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ei = icmp ugt i64 %i.bn, %indvars.iv.next
  br i1 %i.ei, label %scalar.ph, label %._crit_edge, !llvm.loop !280

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph22
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph22.epil.preheader

.lr.ph22.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph22.preheader
  %indvars.iv39.epil.init = phi i64 [ 0, %.lr.ph22.preheader ], [ %indvars.iv.next40.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i64 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.ej = mul i64 %indvars.iv39.epil.init, %i.bp
  %i.ek = load ptr, ptr %i.q, align 8, !tbaa !288, !nonnull !47, !align !49
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !20 ; 2 uses
  %i.em = mul i64 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.em
  %i.eo = mul i64 %i.el, %i.bn
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.en, i8 0, i64 %i.eo, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph22.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.f
  %i.ep = load ptr, ptr %i.al, align 8, !tbaa !304, !nonnull !47, !align !49
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !20 ; 2 uses
  %.not31 = icmp eq i64 %i.eq, 0
  br i1 %.not31, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %.loopexit
  %i.er = trunc i64 %. to i32                     ; 2 uses
  %i.es = icmp sgt i32 %i.er, 0
  %i.et = and i64 %., 2147483647                  ; 8 uses
  %i.eu = trunc i64 %i.bn to i32                  ; 2 uses
  %i.ev = trunc i64 %i.bp to i32
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !286
  %.pre42 = load i64, ptr %.pre, align 8, !tbaa !20
  br label %bb.g

._crit_edge25:                                    ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit, %.loopexit
  %i.ew = add i64 %.06726, 1                      ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.v
  br i1 %i.ex, label %bb.e, label %._crit_edge29.loopexit, !llvm.loop !281

bb.g:                                             ; preds = %.lr.ph24, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit
  %i.ey = phi i64 [ %.pre42, %.lr.ph24 ], [ %i.jh, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %i.ez = phi i64 [ %i.eq, %.lr.ph24 ], [ %i.jl, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %i.fa = phi i64 [ 0, %.lr.ph24 ], [ %i.jj, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ] ; 4 uses
  %i.fb = sub nuw i64 %i.ez, %i.fa
  %.80 = tail call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.ey)
  %i.fc = trunc i64 %.80 to i32                   ; 3 uses
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !305, !nonnull !47, !align !49
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !20 ; 7 uses
  %i.ff = mul i64 %i.fe, %i.bd
  %i.fg = load ptr, ptr %i.an, align 8, !tbaa !306, !nonnull !47, !align !49
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !20 ; 3 uses
  %i.fi = mul i64 %i.fh, %i.fa
  %i.fj = add i64 %i.fi, %i.ff
  %i.fk = load ptr, ptr %i.q, align 8, !tbaa !288, !nonnull !47, !align !49
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !20 ; 2 uses
  %i.fm = mul i64 %i.fj, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.fm ; 8 uses
  br i1 %i.es, label %.lr.ph89.i, label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit

.lr.ph89.i:                                       ; preds = %bb.g
  %i.fo = trunc i64 %i.fe to i32                  ; 2 uses
  %i.fp = trunc i64 %i.fh to i32
  %i.fq = mul nsw i32 %i.fp, %i.fc                ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 0                   ; 2 uses
  %i.fs = shl nsw i32 %i.fo, 1
  %i.ft = shl nsw i32 %i.fo, 2
  %sext1 = shl i64 %i.fh, 32
  %i.fu = ashr exact i64 %sext1, 32               ; 2 uses
  %i.fv = sext i32 %i.fq to i64                   ; 2 uses
  %sext2 = shl i64 %i.fe, 32                      ; 8 uses
  %i.fw = ashr exact i64 %sext2, 32               ; 2 uses
  %i.fx = sext i32 %i.fs to i64
  %sext3 = mul i64 %i.fe, 12884901888
  %i.fy = sext i32 %i.ft to i64
  %sext4 = mul i64 %i.fe, 21474836480
  %sext5 = mul i64 %i.fe, 25769803776
  %sext6 = mul i64 %i.fe, 30064771072
  %i.fz = ashr exact i64 %sext3, 30
  %i.ga = ashr exact i64 %sext4, 30
  %i.gb = ashr exact i64 %sext5, 30
  %i.gc = ashr exact i64 %sext6, 30
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph89.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next98.i, %.loopexit.i ] ; 16 uses
  %.087.i = phi ptr [ %i.i, %.lr.ph89.i ], [ %.3.i, %.loopexit.i ] ; 4 uses
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 8 ; 2 uses
  %i.gd = or disjoint i64 %indvars.iv97.i, 7
  %i.ge = icmp samesign ult i64 %i.gd, %i.et
  %i.gf = mul nsw i64 %indvars.iv97.i, %i.fw
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.gf ; 9 uses
  br i1 %i.ge, label %bb.i, label %.preheader.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.fr, label %.lr.ph84.preheader.i, label %.loopexit.i

.lr.ph84.preheader.i:                             ; preds = %bb.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.gg, i64 %i.fw
  %invariant.gep104.i = getelementptr [4 x i8], ptr %i.gg, i64 %i.fx
  %invariant.gep106.i = getelementptr i8, ptr %i.gg, i64 %i.fz
  %invariant.gep108.i = getelementptr [4 x i8], ptr %i.gg, i64 %i.fy
  %invariant.gep110.i = getelementptr i8, ptr %i.gg, i64 %i.ga
  %invariant.gep112.i = getelementptr i8, ptr %i.gg, i64 %i.gb
  %invariant.gep114.i = getelementptr i8, ptr %i.gg, i64 %i.gc
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i, %.lr.ph84.preheader.i
  %indvars.iv94.i = phi i64 [ 0, %.lr.ph84.preheader.i ], [ %indvars.iv.next95.i, %.lr.ph84.i ] ; 9 uses
  %.182.i = phi ptr [ %.087.i, %.lr.ph84.preheader.i ], [ %i.gq, %.lr.ph84.i ] ; 9 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %indvars.iv94.i
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !18
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv94.i
  %i.gj = load float, ptr %gep.i, align 4, !tbaa !18
  %gep105.i = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv94.i
  %i.gk = load float, ptr %gep105.i, align 4, !tbaa !18
  %gep107.i = getelementptr [4 x i8], ptr %invariant.gep106.i, i64 %indvars.iv94.i
  %i.gl = load float, ptr %gep107.i, align 4, !tbaa !18
  %gep109.i = getelementptr [4 x i8], ptr %invariant.gep108.i, i64 %indvars.iv94.i
  %i.gm = load float, ptr %gep109.i, align 4, !tbaa !18
  %gep111.i = getelementptr [4 x i8], ptr %invariant.gep110.i, i64 %indvars.iv94.i
  %i.gn = load float, ptr %gep111.i, align 4, !tbaa !18
  %gep113.i = getelementptr [4 x i8], ptr %invariant.gep112.i, i64 %indvars.iv94.i
  %i.go = load float, ptr %gep113.i, align 4, !tbaa !18
  %gep115.i = getelementptr [4 x i8], ptr %invariant.gep114.i, i64 %indvars.iv94.i
  %i.gp = load float, ptr %gep115.i, align 4, !tbaa !18
  store float %i.gi, ptr %.182.i, align 4
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 4
  store float %i.gj, ptr %.sroa.416.0..sroa_idx.i, align 4
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  store float %i.gk, ptr %.sroa.517.0..sroa_idx.i, align 4
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 12
  store float %i.gl, ptr %.sroa.618.0..sroa_idx.i, align 4
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 16
  store float %i.gm, ptr %.sroa.719.0..sroa_idx.i, align 4
  %.sroa.820.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 20
  store float %i.gn, ptr %.sroa.820.0..sroa_idx.i, align 4
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 24
  store float %i.go, ptr %.sroa.921.0..sroa_idx.i, align 4
  %.sroa.1022.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.182.i, i64 28
  store float %i.gp, ptr %.sroa.1022.0..sroa_idx.i, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %.182.i, i64 32 ; 2 uses
  %indvars.iv.next95.i = add nsw i64 %indvars.iv94.i, %i.fu ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS3_S3_mmmfPKcmmS5_mmfPcmmENK3$_0clERKNS_5RangeE":bb.a
  br label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit

_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit: ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit, %bb.g
  %i.ir = phi i64 [ %.pre44, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit ], [ %i.fl, %bb.g ] ; 2 uses
  %i.is = load ptr, ptr %i.ao, align 8, !tbaa !307, !nonnull !47, !align !49
  %i.it = load i64, ptr %i.is, align 8, !tbaa !20 ; 2 uses
  %i.iu = mul i64 %i.it, %i.fa
  %i.iv = load ptr, ptr %i.ap, align 8, !tbaa !308, !nonnull !47, !align !49
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !20 ; 2 uses
  %i.ix = mul i64 %i.iw, %i.bg
  %i.iy = add i64 %i.ix, %i.iu
  %i.iz = mul i64 %i.iy, %i.ir
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.iz
  %i.jb = trunc i64 %i.iw to i32
  %i.jc = trunc i64 %i.it to i32
  call fastcc void @_ZN2cv3dnn12cpu_baselineL20fast_gemm_pack12_f32EiiPKviiPv(i32 noundef %i.eu, i32 noundef %i.fc, ptr noundef %i.ja, i32 noundef %i.jb, i32 noundef %i.jc, ptr noundef %i.u)
  %i.jd = load ptr, ptr %i.aq, align 8, !tbaa !309, !nonnull !47, !align !50
  %i.je = load float, ptr %i.jd, align 4, !tbaa !18
  %i.jf = trunc i64 %i.ir to i32
  call fastcc void @_ZN2cv3dnn12cpu_baselineL22fast_gemm_macro_kernelEiiiPKcS3_fPcii(i32 noundef %i.er, i32 noundef %i.eu, i32 noundef %i.fc, ptr noundef %i.i, ptr noundef %i.u, float noundef %i.je, ptr noundef %i.ct, i32 noundef %i.ev, i32 noundef %i.jf)
  %i.jg = load ptr, ptr %i.j, align 8, !tbaa !286, !nonnull !47, !align !49
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !20 ; 2 uses
  %i.ji = add i64 %i.jh, %i.fa
  %sext = shl i64 %i.ji, 32
  %i.jj = ashr exact i64 %sext, 32                ; 2 uses
  %i.jk = load ptr, ptr %i.al, align 8, !tbaa !304, !nonnull !47, !align !49
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !20 ; 2 uses
  %i.jm = icmp ult i64 %i.jj, %i.jl
  br i1 %i.jm, label %bb.g, label %._crit_edge25, !llvm.loop !282

bb.j:                                             ; preds = %._crit_edge29
  call void @free(ptr noundef %i.i) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge29
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS8_S8_mmmfPKcmmSA_fPcmmE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #21 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !39
  %.val2 = load i32, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4
  tail call fastcc void @"_ZZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS3_S3_mmmfPKcmmS5_fPcmmENK3$_0clERKNS_5RangeE"(ptr noundef nonnull readonly align 8 dereferenceable(184) %.val, i32 %.val2, i32 %.val3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS8_S8_mmmfPKcmmSA_fPcmmE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_fPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS3_S3_mmmfPKcmmS5_fPcmmE3$_0", ptr %0, align 8, !tbaa !112
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_fPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_fPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(184) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(184) %.val6, i64 184, i1 false), !tbaa.struct !310
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_fPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_fPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 184) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_fPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS5_S5_mmmfPKcmmS7_fPcmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS3_S3_mmmfPKcmmS5_fPcmmENK3$_0clERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, i32 %.0.val, i32 %.4.val) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !321, !nonnull !47
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25, !range !48, !noundef !47 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !322, !nonnull !47, !align !49
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = alloca i8, i64 %i.f, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %.4.val to i64
  %i.l = icmp ult i32 %.0.val, %.4.val
  br i1 %i.l, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %bb.d
  %i.m = sext i32 %.0.val to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !323
  %.pre43 = load i64, ptr %.pre, align 8, !tbaa !20
  br label %bb.e

._crit_edge30.loopexit:                           ; preds = %._crit_edge26
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !321
  %.pre51 = load i8, ptr %.pre50, align 1, !tbaa !25, !range !48
  br label %._crit_edge30

._crit_edge30:                                    ; preds = %._crit_edge30.loopexit, %bb.d
  %i.ah = phi i8 [ %.pre51, %._crit_edge30.loopexit ], [ %i.b, %bb.d ]
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.k, label %bb.j

bb.e:                                             ; preds = %.lr.ph29, %._crit_edge26
  %i.aj = phi i64 [ %.pre43, %.lr.ph29 ], [ %i.ex, %._crit_edge26 ] ; 4 uses
  %.06627 = phi i64 [ %i.m, %.lr.ph29 ], [ %i.ey, %._crit_edge26 ] ; 4 uses
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !324, !nonnull !47, !align !49
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !20 ; 3 uses
  %i.am = udiv i64 %.06627, %i.al                 ; 4 uses
  %i.an = mul i64 %i.am, %i.al                    ; 0 uses
  %.recomposed = urem i64 %.06627, %i.al
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !325, !nonnull !47, !align !49
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !20 ; 2 uses
  %i.aq = udiv i64 %.recomposed, %i.ap
  %i.ar = urem i64 %.06627, %i.ap
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !326, !nonnull !47, !align !49
  %i.at = load i64, ptr %i.as, align 8, !tbaa !20 ; 2 uses
  %i.au = mul i64 %i.at, %i.aq                    ; 3 uses
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !327, !nonnull !47, !align !49
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !20 ; 2 uses
  %i.ax = mul i64 %i.aw, %i.ar                    ; 4 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !328, !nonnull !47, !align !49
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !20
  %i.ba = sub i64 %i.az, %i.au
  %. = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.at) ; 10 uses
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !329, !nonnull !47, !align !49
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.bd = sub i64 %i.bc, %i.ax
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.aw) ; 11 uses
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !330, !nonnull !47, !align !49
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20 ; 8 uses
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !331, !nonnull !47, !align !49
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !332, !nonnull !47, !align !49
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.am
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !20
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !333, !nonnull !47, !align !49
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !20 ; 6 uses
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bp
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !334, !nonnull !47, !align !49
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !23
  %i.bt = load ptr, ptr %i.x, align 8, !tbaa !335, !nonnull !47, !align !49
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.am
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !20
  %i.bx = mul i64 %i.bw, %i.bo
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bx
  %i.bz = mul i64 %i.bo, %i.ax
  %i.ca = mul i64 %i.bz, %i.aj
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca
  %i.cc = load ptr, ptr %i.z, align 8, !tbaa !336, !nonnull !47, !align !49
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23 ; 2 uses
  %i.ce = load ptr, ptr %i.aa, align 8, !tbaa !337, !nonnull !47, !align !49
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.am
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !20 ; 2 uses
  %i.ci = mul i64 %i.ch, %i.bo
  %i.cj = getelementptr i8, ptr %i.cd, i64 %i.ci
  %i.ck = mul i64 %i.bg, %i.au                    ; 2 uses
  %i.cl = add i64 %i.ck, %i.ax
  %i.cm = mul i64 %i.bo, %i.cl
  %i.cn = getelementptr i8, ptr %i.cj, i64 %i.cm  ; 6 uses
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !338, !nonnull !47, !align !50 ; 5 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !18 ; 2 uses
  %i.cq = fcmp oeq float %i.cp, 0.000000e+00
  br i1 %i.cq, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq i64 %., 0
  br i1 %.not, label %.loopexit, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %., 1
  %i.cr = icmp eq i64 %., 1
  br i1 %i.cr, label %.lr.ph22.epil.preheader, label %.lr.ph22.preheader.new

.lr.ph22.preheader.new:                           ; preds = %.lr.ph22.preheader
  %unroll_iter = and i64 %., -2
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22, %.lr.ph22.preheader.new
  %indvars.iv40 = phi i64 [ 0, %.lr.ph22.preheader.new ], [ %indvars.iv.next41.1, %.lr.ph22 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph22.preheader.new ], [ %niter.next.1, %.lr.ph22 ]
  %i.cs = mul i64 %indvars.iv40, %i.bg
  %i.ct = load ptr, ptr %i.w, align 8, !tbaa !333, !nonnull !47, !align !49
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !20 ; 2 uses
  %i.cv = mul i64 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cv
  %i.cx = mul i64 %i.cu, %i.be
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cw, i8 0, i64 %i.cx, i1 false)
  %indvars.iv.next41 = or disjoint i64 %indvars.iv40, 1
  %i.cy = mul i64 %indvars.iv.next41, %i.bg
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !333, !nonnull !47, !align !49
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !20 ; 2 uses
  %i.db = mul i64 %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.db
  %i.dd = mul i64 %i.da, %i.be
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dc, i8 0, i64 %i.dd, i1 false)
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph22, !llvm.loop !311

bb.f:                                             ; preds = %bb.e
  %i.de = fcmp une float %i.cp, 1.000000e+00
  %i.df = icmp ne i64 %., 0
  %or.cond = select i1 %i.de, i1 %i.df, i1 false
  %i.dg = icmp ne i64 %i.be, 0
  %or.cond31 = select i1 %or.cond, i1 %i.dg, i1 false
  br i1 %or.cond31, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %1 = shl i64 %i.bg, 2
  %i.dh = add i64 %., -1
  %i.di = mul i64 %1, %i.dh
  %2 = add i64 %i.ch, %i.ck
  %i.dj = add i64 %2, %i.ax
  %i.dk = mul i64 %i.bo, %i.dj
  %i.dl = shl i64 %i.be, 2
  %i.dm = getelementptr i8, ptr %i.cd, i64 %i.di
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dk
  %scevgep66.a = getelementptr i8, ptr %i.dn, i64 %i.dl
  %scevgep67 = getelementptr i8, ptr %i.co, i64 4
  %min.iters.check = icmp ult i64 %i.be, 8
  %bound0 = icmp ult ptr %i.cn, %scevgep67
  %bound1 = icmp ult ptr %i.co, %scevgep66.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.bg, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %i.do = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.be, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.dp = mul i64 %indvars.iv37, %i.bg
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dp ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.do
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.dr = load float, ptr %i.co, align 4, !tbaa !18, !alias.scope !339
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dr, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %index ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ds, align 4, !tbaa !18, !alias.scope !340, !noalias !339
  %wide.load68 = load <4 x float>, ptr %i.dt, align 4, !tbaa !18, !alias.scope !340, !noalias !339
  %i.du = fmul <4 x float> %broadcast.splat, %wide.load
  %i.dv = fmul <4 x float> %broadcast.splat, %wide.load68
  store <4 x float> %i.du, ptr %i.ds, align 4, !tbaa !18, !alias.scope !340, !noalias !339
  store <4 x float> %i.dv, ptr %i.dt, align 4, !tbaa !18, !alias.scope !340, !noalias !339
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.dx = icmp ugt i64 %., %indvars.iv.next38
  br i1 %i.dx, label %.lr.ph, label %.loopexit, !llvm.loop !316

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dy = load float, ptr %i.co, align 4, !tbaa !18
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !18
  %i.eb = fmul float %i.dy, %i.ea
  store float %i.eb, ptr %i.dz, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ec = icmp ugt i64 %i.be, %indvars.iv.next
  br i1 %i.ec, label %scalar.ph, label %._crit_edge, !llvm.loop !317

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph22
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph22.epil.preheader

.lr.ph22.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph22.preheader
  %indvars.iv40.epil.init = phi i64 [ 0, %.lr.ph22.preheader ], [ %indvars.iv.next41.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod73 = trunc i64 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.ed = mul i64 %indvars.iv40.epil.init, %i.bg
  %i.ee = load ptr, ptr %i.w, align 8, !tbaa !333, !nonnull !47, !align !49
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !20 ; 2 uses
  %i.eg = mul i64 %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.eg
  %i.ei = mul i64 %i.ef, %i.be
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eh, i8 0, i64 %i.ei, i1 false)
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph22.epil.preheader
  %.pre44 = load ptr, ptr %i.y, align 8, !tbaa !323
  %.pre45 = load i64, ptr %.pre44, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.loopexit, %.preheader, %bb.f
  %i.ej = phi i64 [ %i.aj, %bb.f ], [ %.pre45, %.loopexit.loopexit ], [ %i.aj, %.preheader ], [ %i.aj, %._crit_edge ] ; 2 uses
  %.not32 = icmp eq i64 %i.ej, 0
  br i1 %.not32, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.loopexit
  %i.ek = load ptr, ptr %i.w, align 8, !tbaa !333, !nonnull !47, !align !49
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !20
  %i.em = load ptr, ptr %i.ac, align 8, !tbaa !341, !nonnull !47, !align !49
  %i.en = load i64, ptr %i.em, align 8, !tbaa !20 ; 2 uses
  %i.eo = add i64 %i.en, %i.be
  %.fr80 = freeze i64 %i.eo
  %i.ep = add i64 %.fr80, -1                      ; 2 uses
  %i.eq = urem i64 %i.ep, %i.en
  %i.er = sub nuw i64 %i.ep, %i.eq
  %factor.op.mul = mul i64 %i.el, %i.er
  %i.es = trunc i64 %. to i32                     ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  %i.eu = and i64 %., 2147483647                  ; 8 uses
  %i.ev = trunc i64 %i.be to i32
  %i.ew = trunc i64 %i.bg to i32
  %.reass = shl i64 %factor.op.mul, 32
  %.pre46 = load ptr, ptr %i.ad, align 8, !tbaa !342
  %.pre47 = load i64, ptr %.pre46, align 8, !tbaa !20
  br label %bb.g

._crit_edge26:                                    ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit, %.loopexit
  %i.ex = phi i64 [ 0, %.loopexit ], [ %i.je, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %i.ey = add i64 %.06627, 1                      ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.k
  br i1 %i.ez, label %bb.e, label %._crit_edge30.loopexit, !llvm.loop !318

bb.g:                                             ; preds = %.lr.ph25, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit
  %i.fa = phi i64 [ %.pre47, %.lr.ph25 ], [ %i.ja, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %i.fb = phi i64 [ %i.ej, %.lr.ph25 ], [ %i.je, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ]
  %i.fc = phi i64 [ 0, %.lr.ph25 ], [ %i.jc, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ] ; 3 uses
  %.06723 = phi ptr [ %i.cb, %.lr.ph25 ], [ %i.iy, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit ] ; 2 uses
  %i.fd = sub nuw i64 %i.fb, %i.fc
  %.82 = tail call i64 @llvm.umin.i64(i64 %i.fd, i64 %i.fa) ; 2 uses
  %i.fe = trunc i64 %.82 to i32                   ; 2 uses
  %i.ff = load ptr, ptr %i.ae, align 8, !tbaa !343, !nonnull !47, !align !49
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !20 ; 7 uses
  %i.fh = mul i64 %i.fg, %i.au
  %i.fi = load ptr, ptr %i.af, align 8, !tbaa !344, !nonnull !47, !align !49
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !20 ; 3 uses
  %i.fk = mul i64 %i.fj, %i.fc
  %i.fl = add i64 %i.fk, %i.fh
  %i.fm = load ptr, ptr %i.w, align 8, !tbaa !333, !nonnull !47, !align !49
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !20 ; 2 uses
  %i.fo = mul i64 %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.fo ; 8 uses
  br i1 %i.et, label %.lr.ph89.i, label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit

.lr.ph89.i:                                       ; preds = %bb.g
  %i.fq = trunc i64 %i.fg to i32                  ; 2 uses
  %i.fr = trunc i64 %i.fj to i32
  %i.fs = mul nsw i32 %i.fr, %i.fe                ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0                   ; 2 uses
  %i.fu = shl nsw i32 %i.fq, 1
  %i.fv = shl nsw i32 %i.fq, 2
  %sext1 = shl i64 %i.fj, 32
  %i.fw = ashr exact i64 %sext1, 32               ; 2 uses
  %i.fx = sext i32 %i.fs to i64                   ; 2 uses
  %sext2 = shl i64 %i.fg, 32                      ; 8 uses
  %i.fy = ashr exact i64 %sext2, 32               ; 2 uses
  %i.fz = sext i32 %i.fu to i64
  %sext3 = mul i64 %i.fg, 12884901888
  %i.ga = sext i32 %i.fv to i64
  %sext4 = mul i64 %i.fg, 21474836480
  %sext5 = mul i64 %i.fg, 25769803776
  %sext6 = mul i64 %i.fg, 30064771072
  %i.gb = ashr exact i64 %sext3, 30
  %i.gc = ashr exact i64 %sext4, 30
  %i.gd = ashr exact i64 %sext5, 30
  %i.ge = ashr exact i64 %sext6, 30
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph89.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next98.i, %.loopexit.i ] ; 16 uses
  %.087.i = phi ptr [ %i.i, %.lr.ph89.i ], [ %.3.i, %.loopexit.i ] ; 4 uses
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 8 ; 2 uses
  %i.gf = or disjoint i64 %indvars.iv97.i, 7
  %i.gg = icmp samesign ult i64 %i.gf, %i.eu
  %i.gh = mul nsw i64 %indvars.iv97.i, %i.fy
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.gh ; 9 uses
  br i1 %i.gg, label %bb.i, label %.preheader.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.ft, label %.lr.ph84.preheader.i, label %.loopexit.i

.lr.ph84.preheader.i:                             ; preds = %bb.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.gi, i64 %i.fy
  %invariant.gep104.i = getelementptr [4 x i8], ptr %i.gi, i64 %i.fz
  %invariant.gep106.i = getelementptr i8, ptr %i.gi, i64 %i.gb
  %invariant.gep108.i = getelementptr [4 x i8], ptr %i.gi, i64 %i.ga
  %invariant.gep110.i = getelementptr i8, ptr %i.gi, i64 %i.gc
  %invariant.gep112.i = getelementptr i8, ptr %i.gi, i64 %i.gd
  %invariant.gep114.i = getelementptr i8, ptr %i.gi, i64 %i.ge
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i, %.lr.ph84.preheader.i
  %indvars.iv94.i = phi i64 [ 0, %.lr.ph84.preheader.i ], [ %indvars.iv.next95.i, %.lr.ph84.i ] ; 9 uses
  %.182.i = phi ptr [ %.087.i, %.lr.ph84.preheader.i ], [ %i.gs, %.lr.ph84.i ] ; 9 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %indvars.iv94.i
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !18
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv94.i
  %i.gl = load float, ptr %gep.i, align 4, !tbaa !18
  %gep105.i = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv94.i
  %i.gm = load float, ptr %gep105.i, align 4, !tbaa !18
  %gep107.i = getelementptr [4 x i8], ptr %invariant.gep106.i, i64 %indvars.iv94.i
  %i.gn = load float, ptr %gep107.i, align 4, !tbaa !18
  %gep109.i = getelementptr [4 x i8], ptr %invariant.gep108.i, i64 %indvars.iv94.i
  %i.go = load float, ptr %gep109.i, align 4, !tbaa !18
  %gep111.i = getelementptr [4 x i8], ptr %invariant.gep110.i, i64 %indvars.iv94.i
  %i.gp = load float, ptr %gep111.i, align 4, !tbaa !18
  %gep113.i = getelementptr [4 x i8], ptr %invariant.gep112.i, i64 %indvars.iv94.i
  %i.gq = load float, ptr %gep113.i, align 4, !tbaa !18
  %gep115.i = getelementptr [4 x i8], ptr %invariant.gep114.i, i64 %indvars.iv94.i
  %i.gr = load float, ptr %gep115.i, align 4, !tbaa !18
end_hunk_3
begin_hunk_4_@"_ZZN2cv3dnn12cpu_baseline19fastGemmBatchKernelEmPKmS3_S3_mmmfPKcmmS5_fPcmmENK3$_0clERKNS_5RangeE":bb.a

_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit: ; preds = %.loopexit.i
  %.pre48 = load ptr, ptr %i.w, align 8, !tbaa !333
  %.pre49 = load i64, ptr %.pre48, align 8, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit

_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit: ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit, %bb.g
  %i.it = phi i64 [ %.pre49, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit ], [ %i.fn, %bb.g ]
  %i.iu = load ptr, ptr %i.ag, align 8, !tbaa !345, !nonnull !47, !align !50
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !18
  %i.iw = trunc i64 %i.it to i32
  call fastcc void @_ZN2cv3dnn12cpu_baselineL22fast_gemm_macro_kernelEiiiPKcS3_fPcii(i32 noundef %i.es, i32 noundef %i.ev, i32 noundef %i.fe, ptr noundef %i.i, ptr noundef %.06723, float noundef %i.iv, ptr noundef %i.cn, i32 noundef %i.ew, i32 noundef %i.iw)
  %sext81 = mul i64 %.reass, %.82
  %i.ix = ashr exact i64 %sext81, 32
  %i.iy = getelementptr inbounds i8, ptr %.06723, i64 %i.ix
  %i.iz = load ptr, ptr %i.ad, align 8, !tbaa !342, !nonnull !47, !align !49
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !20 ; 2 uses
  %i.jb = add i64 %i.ja, %i.fc
  %sext = shl i64 %i.jb, 32
  %i.jc = ashr exact i64 %sext, 32                ; 2 uses
  %i.jd = load ptr, ptr %i.y, align 8, !tbaa !323, !nonnull !47, !align !49
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !20 ; 3 uses
  %i.jf = icmp ult i64 %i.jc, %i.je
  br i1 %i.jf, label %bb.g, label %._crit_edge26, !llvm.loop !319

bb.j:                                             ; preds = %._crit_edge30
  call void @free(ptr noundef %i.i) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS8_SaIS8_EEPcmmmmmmmfmbE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.27", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 8192, ptr %i.b, align 8, !tbaa !115
  %i.c = load ptr, ptr %.val, align 8, !tbaa !374, !nonnull !47, !align !49
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.d, 8192
  store i64 %i.d, ptr %i.b, align 8, !tbaa !115
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #24
          to label %.noexc.i.i.i unwind label %bb.g ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.b
  store ptr %i.e, ptr %2, align 8, !tbaa !114
  br label %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i

_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i: ; preds = %.noexc.i.i.i, %bb.a
  %i.f = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !36     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !375, !nonnull !47
  %i.n = load i8, ptr %i.m, align 1, !tbaa !25, !range !48, !noundef !47
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !376, !nonnull !47, !align !49
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !377, !nonnull !47, !align !49
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %i.v = mul i64 %i.u, %i.r
  br label %bb.e

bb.d:                                             ; preds = %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !377, !nonnull !47, !align !49
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi i64 [ %i.u, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  %i.aa = phi i64 [ %i.v, %bb.c ], [ %i.y, %bb.d ] ; 7 uses
  %i.ab = icmp ult i32 %i.g, %i.j
  br i1 %i.ab, label %.lr.ph117.i.i.i, label %._crit_edge118.i.i.i

.lr.ph117.i.i.i:                                  ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.aw = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ax = shl i32 %i.aw, 1
  %i.ay = shl i32 %i.aw, 2
  %sext96.i.i.i = shl i64 %i.aa, 32               ; 12 uses
  %i.az = ashr exact i64 %sext96.i.i.i, 32        ; 3 uses
  %i.ba = sext i32 %i.ax to i64                   ; 2 uses
  %sext97.i.i.i = mul i64 %i.aa, 12884901888
  %i.bb = sext i32 %i.ay to i64                   ; 2 uses
  %sext98.i.i.i = mul i64 %i.aa, 21474836480
  %sext99.i.i.i = mul i64 %i.aa, 25769803776
  %sext100.i.i.i = mul i64 %i.aa, 30064771072
  %i.bc = ashr exact i64 %sext97.i.i.i, 30        ; 3 uses
  %i.bd = ashr exact i64 %sext98.i.i.i, 30        ; 3 uses
  %i.be = ashr exact i64 %sext99.i.i.i, 30        ; 3 uses
  %i.bf = ashr exact i64 %sext100.i.i.i, 30       ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.bh = ashr exact i64 %sext96.i.i.i, 27
  %i.bi = ashr exact i64 %sext96.i.i.i, 27        ; 2 uses
  %i.bj = shl nsw i64 %i.bb, 2                    ; 2 uses
  %i.bk = shl nsw i64 %i.ba, 2                    ; 2 uses
  %i.bl = ashr exact i64 %sext96.i.i.i, 30
  %i.bm = ashr exact i64 %sext96.i.i.i, 27
  %stride.check189 = icmp slt i64 %i.bi, 0
  %stride.check71 = icmp slt i64 %i.bi, 0
  br label %bb.h

._crit_edge118.loopexit.i.i.i:                    ; preds = %.loopexit.i.i.i
  %.pre130.i.i.i = load ptr, ptr %2, align 8, !tbaa !114
  br label %._crit_edge118.i.i.i

._crit_edge118.i.i.i:                             ; preds = %._crit_edge118.loopexit.i.i.i, %bb.e
  %i.bn = phi ptr [ %.pre130.i.i.i, %._crit_edge118.loopexit.i.i.i ], [ %i.f, %bb.e ] ; 3 uses
  %.not.i.i86.i.i.i = icmp eq ptr %i.bn, %i.a
  %i.bo = icmp eq ptr %i.bn, null
  %or.cond.i.i.i.i = or i1 %.not.i.i86.i.i.i, %i.bo
  br i1 %or.cond.i.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS4_SaIS4_EEPcmmmmmmmfmbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge118.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #28
  br label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS4_SaIS4_EEPcmmmmmmmfmbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

bb.g:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %2, align 8, !tbaa !114   ; 3 uses
  %.not.i.i88.i.i.i = icmp eq ptr %i.bq, %i.a
  %i.br = icmp eq ptr %i.bq, null
  %or.cond.i89.i.i.i = or i1 %.not.i.i88.i.i.i, %i.br
  br i1 %or.cond.i89.i.i.i, label %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit91.i.i.i, label %bb.o

bb.h:                                             ; preds = %.loopexit.i.i.i, %.lr.ph117.i.i.i
  %i.bs = phi i64 [ %i.z, %.lr.ph117.i.i.i ], [ %i.oj, %.loopexit.i.i.i ] ; 2 uses
  %i.bt = phi i64 [ %i.z, %.lr.ph117.i.i.i ], [ %i.ok, %.loopexit.i.i.i ] ; 3 uses
  %.073115.i.i.i = phi i64 [ %i.h, %.lr.ph117.i.i.i ], [ %i.ol, %.loopexit.i.i.i ] ; 4 uses
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !378, !nonnull !47, !align !49
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !20 ; 3 uses
  %i.bw = udiv i64 %.073115.i.i.i, %i.bv          ; 3 uses
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !376, !nonnull !47, !align !49
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !20 ; 2 uses
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !379, !nonnull !47, !align !49
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20 ; 5 uses
  %i.cb = mul i64 %i.ca, %i.by
  %i.cc = udiv i64 %i.bw, %i.cb                   ; 2 uses
  %i.cd = mul i64 %i.cc, %i.by                    ; 3 uses
  %i.ce = mul i64 %i.cd, %i.ca
  %i.cf = sub i64 %i.bw, %i.ce                    ; 2 uses
  %i.cg = udiv i64 %i.cf, %i.ca                   ; 3 uses
  %i.ch = load ptr, ptr %i.af, align 8, !tbaa !380, !nonnull !47, !align !50
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !59
  %i.cj = sext i32 %i.ci to i64
  %i.ck = udiv i64 %i.cg, %i.cj
  %i.cl = urem i64 %i.cf, %i.ca                   ; 3 uses
  %i.cm = mul i64 %i.bw, %i.bv                    ; 0 uses
  %.recomposed = urem i64 %.073115.i.i.i, %i.bv
  %i.cn = load ptr, ptr %i.ag, align 8, !tbaa !381, !nonnull !47, !align !49
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !20 ; 2 uses
  %i.cp = udiv i64 %.recomposed, %i.co
  %i.cq = urem i64 %.073115.i.i.i, %i.co
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !382, !nonnull !47, !align !49
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !20 ; 2 uses
  %i.ct = mul i64 %i.cs, %i.cp                    ; 3 uses
  %i.cu = load ptr, ptr %i.ai, align 8, !tbaa !383, !nonnull !47, !align !49
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !20 ; 2 uses
  %i.cw = mul i64 %i.cv, %i.cq                    ; 5 uses
  %i.cx = load ptr, ptr %i.aj, align 8, !tbaa !384, !nonnull !47, !align !49
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !20 ; 4 uses
  %i.cz = sub i64 %i.cy, %i.ct
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 %i.cs) ; 7 uses
  %i.da = load ptr, ptr %i.ak, align 8, !tbaa !385, !nonnull !47, !align !49
  %i.db = load i64, ptr %i.da, align 8, !tbaa !20 ; 2 uses
  %i.dc = sub i64 %i.db, %i.cw
  %i.dd = call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.cv) ; 3 uses
  %i.de = add i64 %i.ca, -1
  %i.df = icmp eq i64 %i.cl, %i.de
  br i1 %i.df, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dg = load ptr, ptr %i.al, align 8, !tbaa !386, !nonnull !47, !align !49
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cw, %i.dh
  br i1 %.not.i.i.i, label %bb.j, label %.loopexit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.di = sub nuw i64 %i.dh, %i.cw
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dd)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.072.i.i.i = phi i64 [ %.sroa.speculated.i.i.i, %bb.j ], [ %i.dd, %bb.h ] ; 4 uses
  %i.dj = mul i64 %i.cy, %i.cd
  %i.dk = load ptr, ptr %i.l, align 8, !tbaa !375, !nonnull !47
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !25, !range !48, !noundef !47
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = select i1 %i.dm, i64 1, i64 %i.cy
  %.pn.i.i.i = mul i64 %i.dn, %i.cg
  %i.do = add i64 %.pn.i.i.i, %i.dj
  %i.dp = mul i64 %i.do, %i.bt
  %i.dq = load ptr, ptr %i.an, align 8, !tbaa !387, !nonnull !47, !align !49
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !23 ; 24 uses
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !388, !nonnull !47, !align !49
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !20 ; 4 uses
  %i.du = mul i64 %i.dp, %i.dt                    ; 18 uses
  %i.dv = getelementptr i8, ptr %i.dr, i64 %i.du
  %i.dw = load ptr, ptr %i.ap, align 8, !tbaa !389, !nonnull !47, !align !49
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !20
  %i.dy = mul i64 %i.dx, %i.cc
  %i.dz = load ptr, ptr %i.aq, align 8, !tbaa !390, !nonnull !47, !align !49
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !20
  %i.eb = add i64 %i.dy, %i.ck
  %i.ec = mul i64 %i.eb, %i.ea
  %i.ed = mul i64 %i.cw, %i.bt
  %i.ee = add i64 %i.ec, %i.ed
  %i.ef = load ptr, ptr %i.ar, align 8, !tbaa !391, !nonnull !47, !align !49
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !58
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.cl
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !23
  %i.ej = mul i64 %i.ee, %i.dt
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  %i.el = load ptr, ptr %i.as, align 8, !tbaa !392, !nonnull !47, !align !49
  %i.em = load i64, ptr %i.el, align 8, !tbaa !20
  %i.en = add i64 %i.cd, %i.cg
  %i.eo = mul i64 %i.cy, %i.en
  %i.ep = mul i64 %i.db, %i.cl
  %reass.add.i.i.i = add i64 %i.eo, %i.ct
  %reass.mul.i.i.i = mul i64 %i.em, %reass.add.i.i.i
  %i.eq = add i64 %i.ep, %i.cw
  %i.er = add i64 %i.eq, %reass.mul.i.i.i
  %i.es = load ptr, ptr %i.at, align 8, !tbaa !393, !nonnull !47, !align !49
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !23
  %i.eu = mul i64 %i.er, %i.dt
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eu ; 4 uses
  %.not119.i.i.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not119.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %xtraiter = and i64 %..i.i.i, 1
  %i.ew = icmp eq i64 %..i.i.i, 1
  br i1 %i.ew, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %..i.i.i, -2
  br label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.070110.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.gz, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod217 = trunc i64 %..i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod217)
  %i.ex = load ptr, ptr %i.as, align 8, !tbaa !392, !nonnull !47, !align !49
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !20
  %i.ez = mul i64 %i.ey, %.070110.i.i.i.epil.init
  %i.fa = load ptr, ptr %i.ao, align 8, !tbaa !388, !nonnull !47, !align !49
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !20 ; 2 uses
  %i.fc = mul i64 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fc
  %i.fe = mul i64 %i.fb, %.072.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.fd, i8 0, i64 %i.fe, i1 false)
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %.pre.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !388
  %.pre123.i.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !20
  %.pre124.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !377
  %.pre125.i.i.i = load i64, ptr %.pre124.i.i.i, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.k
  %i.ff = phi i64 [ %.pre125.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bs, %bb.k ] ; 4 uses
  %i.fg = phi i64 [ %.pre123.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dt, %bb.k ]
  %i.fh = load ptr, ptr %i.au, align 8, !tbaa !394, !nonnull !47, !align !49
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !20 ; 2 uses
  %i.fj = add i64 %i.fi, %i.dd
  %.fr83.i.i.i = freeze i64 %i.fj
  %i.fk = add i64 %.fr83.i.i.i, -1                ; 2 uses
  %i.fl = urem i64 %i.fk, %i.fi
  %i.fm = sub nuw i64 %i.fk, %i.fl
  %i.fn = mul i64 %i.fm, %i.fg
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = trunc i64 %i.ff to i32                  ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph114.i.i.i, label %.loopexit.i.i.i

.lr.ph114.i.i.i:                                  ; preds = %._crit_edge.i.i.i
  %i.fr = mul i64 %i.ct, %i.aa
  %i.fs = trunc i64 %..i.i.i to i32               ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  %i.fu = and i64 %..i.i.i, 2147483647            ; 10 uses
  %i.fv = trunc i64 %.072.i.i.i to i32
  %.pre126.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !395
  %.pre127.i.i.i = load i64, ptr %.pre126.i.i.i, align 8, !tbaa !20
  %scevgep23 = getelementptr i8, ptr %i.dr, i64 %i.bf
  %scevgep24 = getelementptr i8, ptr %scevgep23, i64 %i.du
  %scevgep26 = getelementptr i8, ptr %i.dr, i64 %i.bf
  %scevgep29 = getelementptr i8, ptr %i.dr, i64 %i.be
  %scevgep30 = getelementptr i8, ptr %scevgep29, i64 %i.du
  %scevgep32 = getelementptr i8, ptr %i.dr, i64 %i.be
  %scevgep35 = getelementptr i8, ptr %i.dr, i64 %i.bd
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %i.du
  %scevgep38 = getelementptr i8, ptr %i.dr, i64 %i.bd
  %scevgep41 = getelementptr i8, ptr %i.dr, i64 %i.bj
  %scevgep42 = getelementptr i8, ptr %scevgep41, i64 %i.du
  %scevgep44 = getelementptr i8, ptr %i.dr, i64 %i.bj
  %scevgep47 = getelementptr i8, ptr %i.dr, i64 %i.bc
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.du
  %scevgep50 = getelementptr i8, ptr %i.dr, i64 %i.bc
  %scevgep53 = getelementptr i8, ptr %i.dr, i64 %i.bk
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.du
  %scevgep56 = getelementptr i8, ptr %i.dr, i64 %i.bk
  %scevgep59 = getelementptr i8, ptr %i.dr, i64 %i.bl
  %scevgep133.a = getelementptr i8, ptr %scevgep59, i64 %i.du
  %scevgep136 = getelementptr i8, ptr %i.dr, i64 %i.du
  %scevgep139 = getelementptr i8, ptr %i.dr, i64 %i.du
  %scevgep142 = getelementptr i8, ptr %i.dr, i64 %i.du
  %scevgep145 = getelementptr i8, ptr %i.dr, i64 %i.du
  %scevgep148 = getelementptr i8, ptr %i.dr, i64 %i.du
  %scevgep151 = getelementptr i8, ptr %i.dr, i64 %i.du
  %scevgep154 = getelementptr i8, ptr %i.dr, i64 %i.du
  %umax156 = call i64 @llvm.umax.i64(i64 %i.fu, i64 8)
  %i.fw = add nsw i64 %umax156, -1
  %i.fx = lshr i64 %i.fw, 3
  %i.fy = mul i64 %i.bm, %i.fx
  %i.fz = getelementptr i8, ptr %i.dr, i64 %i.du
  %scevgep157 = getelementptr i8, ptr %i.fz, i64 %i.fy
  %umax = call i64 @llvm.umax.i64(i64 %i.fu, i64 8)
  %i.ga = add nsw i64 %umax, -1
  %i.gb = lshr i64 %i.ga, 3                       ; 2 uses
  %i.gc = mul i64 %i.bh, %i.gb
  %i.gd = add i64 %i.du, %i.gc                    ; 7 uses
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %i.gd
  %scevgep33 = getelementptr i8, ptr %scevgep32, i64 %i.gd
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.gd
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %i.gd
  %scevgep51 = getelementptr i8, ptr %scevgep50, i64 %i.gd
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.gd
  %i.ge = shl nuw nsw i64 %i.gb, 5
  %i.gf = or disjoint i64 %i.ge, 4
  %i.gg = mul i64 %i.az, %i.gf
  %i.gh = getelementptr i8, ptr %i.dr, i64 %i.du
  %scevgep62 = getelementptr i8, ptr %i.gh, i64 %i.gg
  %scevgep66 = getelementptr i8, ptr %i.dr, i64 %i.gd
  br label %bb.l

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.070110.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.gz, %.lr.ph.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.gi = load ptr, ptr %i.as, align 8, !tbaa !392, !nonnull !47, !align !49
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !20
  %i.gk = mul i64 %i.gj, %.070110.i.i.i
  %i.gl = load ptr, ptr %i.ao, align 8, !tbaa !388, !nonnull !47, !align !49
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !20 ; 2 uses
  %i.gn = mul i64 %i.gk, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gn
  %i.gp = mul i64 %i.gm, %.072.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.go, i8 0, i64 %i.gp, i1 false)
  %i.gq = or disjoint i64 %.070110.i.i.i, 1
  %i.gr = load ptr, ptr %i.as, align 8, !tbaa !392, !nonnull !47, !align !49
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !20
  %i.gt = mul i64 %i.gs, %i.gq
  %i.gu = load ptr, ptr %i.ao, align 8, !tbaa !388, !nonnull !47, !align !49
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !20 ; 2 uses
  %i.gw = mul i64 %i.gt, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gw
  %i.gy = mul i64 %i.gv, %.072.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.gx, i8 0, i64 %i.gy, i1 false)
  %i.gz = add nuw i64 %.070110.i.i.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !346

bb.l:                                             ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i, %.lr.ph114.i.i.i
  %i.ha = phi i64 [ %.pre127.i.i.i, %.lr.ph114.i.i.i ], [ %i.oc, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i ] ; 2 uses
  %i.hb = phi i32 [ %i.fp, %.lr.ph114.i.i.i ], [ %i.oh, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i ]
  %i.hc = phi i64 [ %i.ff, %.lr.ph114.i.i.i ], [ %i.og, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i ]
  %.0112.i.i.i = phi i32 [ 0, %.lr.ph114.i.i.i ], [ %i.oe, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i ] ; 3 uses
  %.071111.i.i.i = phi ptr [ %i.ek, %.lr.ph114.i.i.i ], [ %i.oa, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i ] ; 2 uses
  %i.hd = sext i32 %.0112.i.i.i to i64            ; 2 uses
  %i.he = sub i64 %i.hc, %i.hd
  %sext.i.i.i = shl i64 %i.ha, 32
  %i.hf = ashr exact i64 %sext.i.i.i, 32
  %i.hg = icmp ult i64 %i.he, %i.hf
  %i.hh = sub nsw i32 %i.hb, %.0112.i.i.i
  %i.hi = trunc i64 %i.ha to i32
  %i.hj = select i1 %i.hg, i32 %i.hh, i32 %i.hi   ; 6 uses
  %i.hk = add i64 %i.fr, %i.hd
  %i.hl = load ptr, ptr %i.ao, align 8, !tbaa !388, !nonnull !47, !align !49
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !20 ; 2 uses
  %i.hn = mul i64 %i.hm, %i.hk                    ; 10 uses
  %i.ho = getelementptr i8, ptr %i.dv, i64 %i.hn  ; 10 uses
  br i1 %i.ft, label %.lr.ph89.i.i.i.i, label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %bb.l
  %i.hp = icmp sgt i32 %i.hj, 0                   ; 2 uses
  %i.hq = sext i32 %i.hj to i64                   ; 10 uses
  %i.hr = shl nsw i64 %i.hq, 5
  %scevgep25 = getelementptr i8, ptr %scevgep24, i64 %i.hn
  %i.hs = shl nsw i64 %i.hq, 2
  %i.ht = add i64 %i.hn, %i.hs                    ; 8 uses
  %scevgep37.a = getelementptr i8, ptr %scevgep30, i64 %i.hn
  %scevgep43.a = getelementptr i8, ptr %scevgep36, i64 %i.hn
  %scevgep49.a = getelementptr i8, ptr %scevgep42, i64 %i.hn
  %scevgep55.a = getelementptr i8, ptr %scevgep48, i64 %i.hn
  %scevgep61.a = getelementptr i8, ptr %scevgep54, i64 %i.hn
  %scevgep65.a = getelementptr i8, ptr %scevgep133.a, i64 %i.hn
  %i.hu = shl nsw i64 %i.hq, 5
  %i.hv = shl nsw i64 %i.hq, 2
  %i.hw = add i64 %i.hn, %i.hv                    ; 8 uses
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %i.hw
  %scevgep140 = getelementptr i8, ptr %scevgep139, i64 %i.hw
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.hw
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.hw
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.hw
  %scevgep152 = getelementptr i8, ptr %scevgep151, i64 %i.hw
  %scevgep155 = getelementptr i8, ptr %scevgep154, i64 %i.hw
  %i.hx = insertelement <8 x ptr> poison, ptr %scevgep37.a, i64 0
  %i.hy = insertelement <8 x ptr> %i.hx, ptr %scevgep25, i64 1
  %i.hz = insertelement <8 x ptr> %i.hy, ptr %scevgep43.a, i64 2
  %i.ia = insertelement <8 x ptr> %i.hz, ptr %scevgep49.a, i64 3
  %i.ib = insertelement <8 x ptr> %i.ia, ptr %scevgep55.a, i64 4
  %i.ic = insertelement <8 x ptr> %i.ib, ptr %scevgep61.a, i64 5
  %i.id = insertelement <8 x ptr> %i.ic, ptr %scevgep65.a, i64 6
  %i.ie = insertelement <8 x ptr> %i.id, ptr %i.ho, i64 7
  %min.iters.check192 = icmp ult i32 %i.hj, 16
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.hw
  %i.if = insertelement <8 x ptr> poison, ptr %scevgep158, i64 7
  %i.ig = insertelement <8 x ptr> poison, ptr %i.ho, i64 7
  %n.vec194 = and i64 %i.hq, 2147483644           ; 4 uses
  %i.ih = shl nuw nsw i64 %n.vec194, 5
  %cmp.n209 = icmp eq i64 %n.vec194, %i.hq
  %min.iters.check = icmp ult i32 %i.hj, 24
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.ht
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %i.ht
  %scevgep40 = getelementptr i8, ptr %scevgep39, i64 %i.ht
  %scevgep46 = getelementptr i8, ptr %scevgep45, i64 %i.ht
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.ht
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.ht
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.ht
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.ht
  %i.ii = insertelement <8 x ptr> poison, ptr %scevgep34, i64 0
  %i.ij = insertelement <8 x ptr> %i.ii, ptr %scevgep28, i64 1
  %i.ik = insertelement <8 x ptr> %i.ij, ptr %scevgep40, i64 2
  %i.il = insertelement <8 x ptr> %i.ik, ptr %scevgep46, i64 3
  %i.im = insertelement <8 x ptr> %i.il, ptr %scevgep52, i64 4
  %i.in = insertelement <8 x ptr> %i.im, ptr %scevgep58, i64 5
  %i.io = insertelement <8 x ptr> %i.in, ptr %scevgep63, i64 6
  %i.ip = insertelement <8 x ptr> %i.io, ptr %scevgep67, i64 7
  %n.vec = and i64 %i.hq, 2147483644              ; 4 uses
  %i.iq = shl nuw nsw i64 %n.vec, 5
  %cmp.n = icmp eq i64 %n.vec, %i.hq
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph89.i.i.i.i
  %indvars.iv97.i.i.i.i = phi i64 [ 0, %.lr.ph89.i.i.i.i ], [ %indvars.iv.next98.i.i.i.i, %.loopexit.i.i.i.i ] ; 16 uses
  %.087.i.i.i.i = phi ptr [ %i.f, %.lr.ph89.i.i.i.i ], [ %.3.i.i.i.i, %.loopexit.i.i.i.i ] ; 14 uses
  %indvars.iv.next98.i.i.i.i = add nuw nsw i64 %indvars.iv97.i.i.i.i, 8 ; 2 uses
  %i.ir = or disjoint i64 %indvars.iv97.i.i.i.i, 7
  %i.is = icmp samesign ult i64 %i.ir, %i.fu
  %i.it = mul nsw i64 %indvars.iv97.i.i.i.i, %i.az
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.it ; 11 uses
  br i1 %i.is, label %bb.n, label %.preheader.i.i.i.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.hp, label %.lr.ph84.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph84.preheader.i.i.i.i:                       ; preds = %bb.n
  %invariant.gep.i.i.i.i = getelementptr [4 x i8], ptr %i.iu, i64 %i.az ; 2 uses
  %invariant.gep104.i.i.i.i = getelementptr [4 x i8], ptr %i.iu, i64 %i.ba ; 2 uses
  %invariant.gep106.i.i.i.i = getelementptr i8, ptr %i.iu, i64 %i.bc ; 2 uses
  %invariant.gep108.i.i.i.i = getelementptr [4 x i8], ptr %i.iu, i64 %i.bb ; 2 uses
  %invariant.gep110.i.i.i.i = getelementptr i8, ptr %i.iu, i64 %i.bd ; 2 uses
  %invariant.gep112.i.i.i.i = getelementptr i8, ptr %i.iu, i64 %i.be ; 2 uses
  %invariant.gep114.i.i.i.i = getelementptr i8, ptr %i.iu, i64 %i.bf ; 2 uses
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i.i.i.i
  %scevgep = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.hr
  %i.iv = insertelement <8 x ptr> poison, ptr %.087.i.i.i.i, i64 0
  %i.iw = shufflevector <8 x ptr> %i.iv, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ix = icmp ult <8 x ptr> %i.iw, %i.ip
  %i.iy = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.iz = shufflevector <8 x ptr> %i.iy, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ja = icmp ult <8 x ptr> %i.ie, %i.iz
  %i.jb = and <8 x i1> %i.ix, %i.ja
  %i.jc = bitcast <8 x i1> %i.jb to i8
  %i.jd = icmp ne i8 %i.jc, 0
  %op.rdx = or i1 %i.jd, %stride.check71
  br i1 %op.rdx, label %.lr.ph84.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.je = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.iq ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.jf = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.jf
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %index
  %wide.load = load <4 x float>, ptr %i.jg, align 4, !tbaa !18, !alias.scope !396
  %i.jh = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i, i64 %index
  %wide.load102.a = load <4 x float>, ptr %i.jh, align 4, !tbaa !18, !alias.scope !397
  %i.ji = getelementptr [4 x i8], ptr %invariant.gep104.i.i.i.i, i64 %index
  %wide.load103.a = load <4 x float>, ptr %i.ji, align 4, !tbaa !18, !alias.scope !398
  %i.jj = getelementptr [4 x i8], ptr %invariant.gep106.i.i.i.i, i64 %index
  %wide.load104.a = load <4 x float>, ptr %i.jj, align 4, !tbaa !18, !alias.scope !399
  %i.jk = getelementptr [4 x i8], ptr %invariant.gep108.i.i.i.i, i64 %index
  %wide.load105.a = load <4 x float>, ptr %i.jk, align 4, !tbaa !18, !alias.scope !400
  %i.jl = getelementptr [4 x i8], ptr %invariant.gep110.i.i.i.i, i64 %index
  %wide.load106.a = load <4 x float>, ptr %i.jl, align 4, !tbaa !18, !alias.scope !401
  %i.jm = getelementptr [4 x i8], ptr %invariant.gep112.i.i.i.i, i64 %index
  %wide.load107 = load <4 x float>, ptr %i.jm, align 4, !tbaa !18, !alias.scope !402
  %i.jn = getelementptr [4 x i8], ptr %invariant.gep114.i.i.i.i, i64 %index
  %wide.load108 = load <4 x float>, ptr %i.jn, align 4, !tbaa !18, !alias.scope !403
  %i.jo = shufflevector <4 x float> %wide.load, <4 x float> %wide.load102.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jp = shufflevector <4 x float> %wide.load103.a, <4 x float> %wide.load104.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jq = shufflevector <4 x float> %wide.load105.a, <4 x float> %wide.load106.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jr = shufflevector <4 x float> %wide.load107, <4 x float> %wide.load108, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.js = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jt = shufflevector <8 x float> %i.jq, <8 x float> %i.jr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.js, <16 x float> %i.jt, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !404, !noalias !405
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i.i.i.i, label %.lr.ph84.i.i.i.i.preheader

.lr.ph84.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph84.preheader.i.i.i.i, %middle.block
  %indvars.iv94.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i.i.i.i ], [ %n.vec, %middle.block ]
  %.182.i.i.i.i.ph = phi ptr [ %.087.i.i.i.i, %vector.memcheck ], [ %.087.i.i.i.i, %.lr.ph84.preheader.i.i.i.i ], [ %i.je, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader, %.lr.ph84.i.i.i.i
  %indvars.iv94.i.i.i.i = phi i64 [ %indvars.iv.next95.i.i.i.i, %.lr.ph84.i.i.i.i ], [ %indvars.iv94.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader ] ; 9 uses
  %.182.i.i.i.i = phi ptr [ %i.ke, %.lr.ph84.i.i.i.i ], [ %.182.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader ] ; 9 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv94.i.i.i.i
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !18
  %gep.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.jx = load float, ptr %gep.i.i.i.i, align 4, !tbaa !18
  %gep105.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep104.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.jy = load float, ptr %gep105.i.i.i.i, align 4, !tbaa !18
  %gep107.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep106.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.jz = load float, ptr %gep107.i.i.i.i, align 4, !tbaa !18
  %gep109.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep108.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.ka = load float, ptr %gep109.i.i.i.i, align 4, !tbaa !18
  %gep111.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep110.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.kb = load float, ptr %gep111.i.i.i.i, align 4, !tbaa !18
  %gep113.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep112.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.kc = load float, ptr %gep113.i.i.i.i, align 4, !tbaa !18
  %gep115.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep114.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.kd = load float, ptr %gep115.i.i.i.i, align 4, !tbaa !18
  store float %i.jw, ptr %.182.i.i.i.i, align 4
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 4
  store float %i.jx, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 4
  %.sroa.517.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 8
  store float %i.jy, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 4
  %.sroa.618.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 12
  store float %i.jz, ptr %.sroa.618.0..sroa_idx.i.i.i.i, align 4
  %.sroa.719.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 16
  store float %i.ka, ptr %.sroa.719.0..sroa_idx.i.i.i.i, align 4
  %.sroa.820.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 20
  store float %i.kb, ptr %.sroa.820.0..sroa_idx.i.i.i.i, align 4
  %.sroa.921.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 24
  store float %i.kc, ptr %.sroa.921.0..sroa_idx.i.i.i.i, align 4
  %.sroa.1022.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 28
  store float %i.kd, ptr %.sroa.1022.0..sroa_idx.i.i.i.i, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 32 ; 2 uses
  %indvars.iv.next95.i.i.i.i = add nuw nsw i64 %indvars.iv94.i.i.i.i, 1 ; 2 uses
  %exitcond122.not.i.i.i = icmp eq i64 %indvars.iv.next95.i.i.i.i, %i.hq
  br i1 %exitcond122.not.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph84.i.i.i.i, !llvm.loop !358

.preheader.i.i.i.i:                               ; preds = %bb.m
  %i.kf = or disjoint i64 %indvars.iv97.i.i.i.i, 1 ; 2 uses
  %i.kg = icmp samesign ult i64 %i.kf, %i.fu
  %i.kh = select i1 %i.kg, i64 %i.kf, i64 %indvars.iv97.i.i.i.i
  %sext101.i.i.i = mul i64 %i.kh, %sext96.i.i.i
  %i.ki = ashr exact i64 %sext101.i.i.i, 30       ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ho, i64 %i.ki  ; 3 uses
  %i.kk = or disjoint i64 %indvars.iv97.i.i.i.i, 2 ; 2 uses
  %i.kl = icmp samesign ult i64 %i.kk, %i.fu
  %i.km = select i1 %i.kl, i64 %i.kk, i64 %indvars.iv97.i.i.i.i
  %sext102.i.i.i = mul i64 %i.km, %sext96.i.i.i
  %i.kn = ashr exact i64 %sext102.i.i.i, 30       ; 2 uses
  %i.ko = getelementptr i8, ptr %i.ho, i64 %i.kn  ; 3 uses
  %i.kp = or disjoint i64 %indvars.iv97.i.i.i.i, 3 ; 2 uses
  %i.kq = icmp samesign ult i64 %i.kp, %i.fu
  %i.kr = select i1 %i.kq, i64 %i.kp, i64 %indvars.iv97.i.i.i.i
  %sext103.i.i.i = mul i64 %i.kr, %sext96.i.i.i
  %i.ks = ashr exact i64 %sext103.i.i.i, 30       ; 2 uses
  %i.kt = getelementptr i8, ptr %i.ho, i64 %i.ks  ; 3 uses
  %i.ku = or disjoint i64 %indvars.iv97.i.i.i.i, 4 ; 2 uses
  %i.kv = icmp samesign ult i64 %i.ku, %i.fu
  %i.kw = select i1 %i.kv, i64 %i.ku, i64 %indvars.iv97.i.i.i.i
  %sext104.i.i.i = mul i64 %i.kw, %sext96.i.i.i
  %i.kx = ashr exact i64 %sext104.i.i.i, 30       ; 2 uses
  %i.ky = getelementptr i8, ptr %i.ho, i64 %i.kx  ; 3 uses
  %i.kz = or disjoint i64 %indvars.iv97.i.i.i.i, 5 ; 2 uses
  %i.la = icmp samesign ult i64 %i.kz, %i.fu
  %i.lb = select i1 %i.la, i64 %i.kz, i64 %indvars.iv97.i.i.i.i
  %sext105.i.i.i = mul i64 %i.lb, %sext96.i.i.i
  %i.lc = ashr exact i64 %sext105.i.i.i, 30       ; 2 uses
  %i.ld = getelementptr i8, ptr %i.ho, i64 %i.lc  ; 3 uses
  %i.le = or disjoint i64 %indvars.iv97.i.i.i.i, 6 ; 2 uses
  %i.lf = icmp samesign ult i64 %i.le, %i.fu
  %i.lg = select i1 %i.lf, i64 %i.le, i64 %indvars.iv97.i.i.i.i
  %sext106.i.i.i = mul i64 %i.lg, %sext96.i.i.i
  %i.lh = ashr exact i64 %sext106.i.i.i, 30       ; 2 uses
  %i.li = getelementptr i8, ptr %i.ho, i64 %i.lh  ; 3 uses
  %sext107.i.i.i = mul i64 %indvars.iv97.i.i.i.i, %sext96.i.i.i
  %i.lj = ashr exact i64 %sext107.i.i.i, 30       ; 2 uses
  %i.lk = getelementptr i8, ptr %i.ho, i64 %i.lj  ; 3 uses
  br i1 %i.hp, label %.lr.ph.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.preheader.i.i.i.i
  br i1 %min.iters.check192, label %.lr.ph.i.i.i.i.preheader213, label %vector.memcheck110

vector.memcheck110:                               ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep111 = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.hu
  %scevgep135 = getelementptr i8, ptr %scevgep137, i64 %i.lj
  %scevgep138 = getelementptr i8, ptr %scevgep140, i64 %i.lh
  %scevgep141 = getelementptr i8, ptr %scevgep143, i64 %i.lc
  %scevgep144 = getelementptr i8, ptr %scevgep146, i64 %i.kx
  %scevgep147 = getelementptr i8, ptr %scevgep149, i64 %i.ks
  %scevgep150 = getelementptr i8, ptr %scevgep152, i64 %i.kn
  %scevgep153 = getelementptr i8, ptr %scevgep155, i64 %i.ki
  %i.ll = insertelement <8 x ptr> poison, ptr %.087.i.i.i.i, i64 0
  %i.lm = shufflevector <8 x ptr> %i.ll, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ln = insertelement <8 x ptr> %i.if, ptr %scevgep135, i64 0
  %i.lo = insertelement <8 x ptr> %i.ln, ptr %scevgep138, i64 1
  %i.lp = insertelement <8 x ptr> %i.lo, ptr %scevgep141, i64 2
  %i.lq = insertelement <8 x ptr> %i.lp, ptr %scevgep144, i64 3
  %i.lr = insertelement <8 x ptr> %i.lq, ptr %scevgep147, i64 4
  %i.ls = insertelement <8 x ptr> %i.lr, ptr %scevgep150, i64 5
  %i.lt = insertelement <8 x ptr> %i.ls, ptr %scevgep153, i64 6
  %i.lu = icmp ult <8 x ptr> %i.lm, %i.lt
  %i.lv = insertelement <8 x ptr> %i.ig, ptr %i.lk, i64 0
  %i.lw = insertelement <8 x ptr> %i.lv, ptr %i.li, i64 1
  %i.lx = insertelement <8 x ptr> %i.lw, ptr %i.ld, i64 2
  %i.ly = insertelement <8 x ptr> %i.lx, ptr %i.ky, i64 3
  %i.lz = insertelement <8 x ptr> %i.ly, ptr %i.kt, i64 4
  %i.ma = insertelement <8 x ptr> %i.lz, ptr %i.ko, i64 5
  %i.mb = insertelement <8 x ptr> %i.ma, ptr %i.kj, i64 6
  %i.mc = insertelement <8 x ptr> poison, ptr %scevgep111, i64 0
  %i.md = shufflevector <8 x ptr> %i.mc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.me = icmp ult <8 x ptr> %i.mb, %i.md
  %i.mf = and <8 x i1> %i.lu, %i.me
  %i.mg = bitcast <8 x i1> %i.mf to i8
  %i.mh = icmp ne i8 %i.mg, 0
  %op.rdx212 = or i1 %i.mh, %stride.check189
  br i1 %op.rdx212, label %.lr.ph.i.i.i.i.preheader213, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck110
  %i.mi = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.ih ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next207, %vector.body195 ] ; 10 uses
  %i.mj = shl i64 %index196, 5
  %next.gep197 = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.mj
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %index196
  %wide.load198 = load <4 x float>, ptr %i.mk, align 4, !tbaa !18, !alias.scope !406
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %index196
  %wide.load199 = load <4 x float>, ptr %i.ml, align 4, !tbaa !18, !alias.scope !407
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %index196
  %wide.load200 = load <4 x float>, ptr %i.mm, align 4, !tbaa !18, !alias.scope !408
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %index196
  %wide.load201 = load <4 x float>, ptr %i.mn, align 4, !tbaa !18, !alias.scope !409
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %index196
  %wide.load202 = load <4 x float>, ptr %i.mo, align 4, !tbaa !18, !alias.scope !410
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %index196
  %wide.load203 = load <4 x float>, ptr %i.mp, align 4, !tbaa !18, !alias.scope !411
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %index196
  %wide.load204 = load <4 x float>, ptr %i.mq, align 4, !tbaa !18, !alias.scope !412
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %index196
  %wide.load205 = load <4 x float>, ptr %i.mr, align 4, !tbaa !18, !alias.scope !413
  %i.ms = shufflevector <4 x float> %wide.load198, <4 x float> %wide.load199, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mt = shufflevector <4 x float> %wide.load200, <4 x float> %wide.load201, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mu = shufflevector <4 x float> %wide.load202, <4 x float> %wide.load203, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mv = shufflevector <4 x float> %wide.load204, <4 x float> %wide.load205, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mw = shufflevector <8 x float> %i.ms, <8 x float> %i.mt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mx = shufflevector <8 x float> %i.mu, <8 x float> %i.mv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec206 = shufflevector <16 x float> %i.mw, <16 x float> %i.mx, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec206, ptr %next.gep197, align 4, !alias.scope !414, !noalias !415
  %index.next207 = add nuw i64 %index196, 4       ; 2 uses
  %i.my = icmp eq i64 %index.next207, %n.vec194
  br i1 %i.my, label %middle.block208, label %vector.body195, !llvm.loop !369

middle.block208:                                  ; preds = %vector.body195
  br i1 %cmp.n209, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader213

.lr.ph.i.i.i.i.preheader213:                      ; preds = %vector.memcheck110, %.lr.ph.i.i.i.i.preheader, %middle.block208
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck110 ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec194, %middle.block208 ]
  %.280.i.i.i.i.ph = phi ptr [ %.087.i.i.i.i, %vector.memcheck110 ], [ %.087.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.mi, %middle.block208 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader213, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader213 ] ; 9 uses
  %.280.i.i.i.i = phi ptr [ %i.np, %.lr.ph.i.i.i.i ], [ %.280.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader213 ] ; 9 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.i.i.i.i
  %i.na = load float, ptr %i.mz, align 4, !tbaa !18
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.i.i.i.i
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !18
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv.i.i.i.i
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !18
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.i.i.i.i
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !18
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i.i.i.i
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !18
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i.i.i
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !18
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.i.i.i.i
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !18
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.i.i.i.i
  %i.no = load float, ptr %i.nn, align 4, !tbaa !18
  store float %i.na, ptr %.280.i.i.i.i, align 4
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 4
  store float %i.nc, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 8
  store float %i.ne, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 12
  store float %i.ng, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 16
  store float %i.ni, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 20
  store float %i.nk, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 4
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 24
  store float %i.nm, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 28
  store float %i.no, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 32 ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.hq
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !370

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %.lr.ph84.i.i.i.i, %middle.block208, %middle.block, %.preheader.i.i.i.i, %bb.n
  %.3.i.i.i.i = phi ptr [ %i.ke, %.lr.ph84.i.i.i.i ], [ %.087.i.i.i.i, %bb.n ], [ %.087.i.i.i.i, %.preheader.i.i.i.i ], [ %i.je, %middle.block ], [ %i.mi, %middle.block208 ], [ %i.np, %.lr.ph.i.i.i.i ]
  %i.nq = icmp samesign ult i64 %indvars.iv.next98.i.i.i.i, %i.fu
  br i1 %i.nq, label %bb.m, label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i, !llvm.loop !4

_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i: ; preds = %.loopexit.i.i.i.i
  %.pre128.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !388
  %.pre129.i.i.i = load i64, ptr %.pre128.i.i.i, align 8, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i

_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i, %bb.l
  %i.nr = phi i64 [ %.pre129.i.i.i, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i ], [ %i.hm, %bb.l ]
  %i.ns = load ptr, ptr %i.bg, align 8, !tbaa !416, !nonnull !47, !align !50
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !18
  %i.nu = load ptr, ptr %i.as, align 8, !tbaa !392, !nonnull !47, !align !49
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !20
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = trunc i64 %i.nr to i32
  call fastcc void @_ZN2cv3dnn12cpu_baselineL22fast_gemm_macro_kernelEiiiPKcS3_fPcii(i32 noundef %i.fs, i32 noundef %i.fv, i32 noundef %i.hj, ptr noundef nonnull %i.f, ptr noundef %.071111.i.i.i, float noundef %i.nt, ptr noundef %i.ev, i32 noundef %i.nw, i32 noundef %i.nx)
  %i.ny = mul nsw i32 %i.hj, %i.fo
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds i8, ptr %.071111.i.i.i, i64 %i.nz
  %i.ob = load ptr, ptr %i.av, align 8, !tbaa !395, !nonnull !47, !align !49
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !20 ; 2 uses
  %i.od = trunc i64 %i.oc to i32
  %i.oe = add nsw i32 %.0112.i.i.i, %i.od         ; 2 uses
  %i.of = load ptr, ptr %i.am, align 8, !tbaa !377, !nonnull !47, !align !49
  %i.og = load i64, ptr %i.of, align 8, !tbaa !20 ; 4 uses
  %i.oh = trunc i64 %i.og to i32                  ; 2 uses
  %i.oi = icmp slt i32 %i.oe, %i.oh
  br i1 %i.oi, label %bb.l, label %.loopexit.i.i.i, !llvm.loop !371

.loopexit.i.i.i:                                  ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i, %._crit_edge.i.i.i, %bb.i
  %i.oj = phi i64 [ %i.bs, %bb.i ], [ %i.ff, %._crit_edge.i.i.i ], [ %i.og, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i ]
  %i.ok = phi i64 [ %i.bt, %bb.i ], [ %i.ff, %._crit_edge.i.i.i ], [ %i.og, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i ]
  %i.ol = add i64 %.073115.i.i.i, 1               ; 2 uses
  %i.om = icmp ult i64 %i.ol, %i.k
  br i1 %i.om, label %bb.h, label %._crit_edge118.loopexit.i.i.i, !llvm.loop !372

bb.o:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #28
  br label %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit91.i.i.i

_ZN2cv10AutoBufferIcLm8192EED2Ev.exit91.i.i.i:    ; preds = %bb.o, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bp

"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS4_SaIS4_EEPcmmmmmmmfmbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %._crit_edge118.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS8_SaIS8_EEPcmmmmmmmfmbE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmfmbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS3_SaIS3_EEPcmmmmmmmfmbE3$_0", ptr %0, align 8, !tbaa !112
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmfmbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmfmbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(184) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(184) %.val6, i64 184, i1 false), !tbaa.struct !417
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmfmbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmfmbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 184) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmfmbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnQKGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmfmbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline21pagedAttnAVGemmKernelEPKcRKSt6vectorIS8_SaIS8_EEPcmmmmmmmmbmE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.27", align 8 ; 9 uses
  %3 = alloca %"class.cv::AutoBuffer.27", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 8192, ptr %i.b, align 8, !tbaa !115
  %i.c = load ptr, ptr %.val, align 8, !tbaa !447, !nonnull !47, !align !49
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.d, 8192
  store i64 %i.d, ptr %i.b, align 8, !tbaa !115
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #24
          to label %.noexc.i.i.i unwind label %bb.i ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.b
  store ptr %i.e, ptr %2, align 8, !tbaa !114
  br label %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i

_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i: ; preds = %.noexc.i.i.i, %bb.a
  %i.f = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 8192, ptr %i.h, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !448, !nonnull !47, !align !49
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !449, !nonnull !47, !align !49
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %i.o = mul i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !450, !nonnull !47, !align !49
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = mul i64 %i.o, %i.r                       ; 3 uses
  %.not.i94.i.i.i = icmp ugt i64 %i.s, 8192
  store i64 %i.s, ptr %i.h, align 8, !tbaa !115
  br i1 %.not.i94.i.i.i, label %bb.c, label %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit98.i.i.i

bb.c:                                             ; preds = %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #24
          to label %.noexc97.i.i.i unwind label %bb.j ; 2 uses

.noexc97.i.i.i:                                   ; preds = %bb.c
  store ptr %i.t, ptr %3, align 8, !tbaa !114
  br label %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit98.i.i.i

_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit98.i.i.i: ; preds = %.noexc97.i.i.i, %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i
  %i.u = phi ptr [ %i.t, %.noexc97.i.i.i ], [ %i.g, %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit.i.i.i ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !36     ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !451, !nonnull !47
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25, !range !48, !noundef !47
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit98.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !452, !nonnull !47, !align !49
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !453, !nonnull !47, !align !49
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ak = mul i64 %i.aj, %i.ag
  br label %bb.f

bb.e:                                             ; preds = %_ZN2cv10AutoBufferIcLm8192EE8allocateEm.exit98.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !453, !nonnull !47, !align !49
  %i.an = load i64, ptr %i.am, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %i.an, %bb.e ] ; 4 uses
  %i.ap = icmp ult i32 %i.v, %i.y
  br i1 %i.ap, label %.lr.ph149.i.i.i, label %._crit_edge150.i.i.i

.lr.ph149.i.i.i:                                  ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.bf = trunc i64 %i.ao to i32
  %.pre.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !454
  %.pre156.i.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !20
  br label %bb.k

._crit_edge150.loopexit.i.i.i:                    ; preds = %._crit_edge.i.i.i
  %.pre165.i.i.i = load ptr, ptr %3, align 8, !tbaa !114
  br label %._crit_edge150.i.i.i

._crit_edge150.i.i.i:                             ; preds = %._crit_edge150.loopexit.i.i.i, %bb.f
  %i.bg = phi ptr [ %.pre165.i.i.i, %._crit_edge150.loopexit.i.i.i ], [ %i.u, %bb.f ] ; 3 uses
  %.not.i.i99.i.i.i = icmp eq ptr %i.bg, %i.g
  %i.bh = icmp eq ptr %i.bg, null
  %or.cond.i.i.i.i = or i1 %.not.i.i99.i.i.i, %i.bh
  br i1 %or.cond.i.i.i.i, label %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge150.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #28
  br label %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit.i.i.i

_ZN2cv10AutoBufferIcLm8192EED2Ev.exit.i.i.i:      ; preds = %bb.g, %._crit_edge150.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bi = load ptr, ptr %2, align 8, !tbaa !114   ; 3 uses
  %.not.i.i101.i.i.i = icmp eq ptr %i.bi, %i.a
  %i.bj = icmp eq ptr %i.bi, null
  %or.cond.i102.i.i.i = or i1 %.not.i.i101.i.i.i, %i.bj
  br i1 %or.cond.i102.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline21pagedAttnAVGemmKernelEPKcRKSt6vectorIS4_SaIS4_EEPcmmmmmmmmbmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.h

bb.h:                                             ; preds = %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #28
  br label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline21pagedAttnAVGemmKernelEPKcRKSt6vectorIS4_SaIS4_EEPcmmmmmmmmbmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

bb.i:                                             ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %3, align 8, !tbaa !114   ; 3 uses
  %.not.i.i106.i.i.i = icmp eq ptr %i.bm, %i.g
  %i.bn = icmp eq ptr %i.bm, null
  %or.cond.i107.i.i.i = or i1 %.not.i.i106.i.i.i, %i.bn
  br i1 %or.cond.i107.i.i.i, label %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit109.i.i.i, label %bb.p

bb.k:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph149.i.i.i
  %i.bo = phi i64 [ %.pre156.i.i.i, %.lr.ph149.i.i.i ], [ %i.fi, %._crit_edge.i.i.i ] ; 2 uses
  %.083147.i.i.i = phi i64 [ %i.w, %.lr.ph149.i.i.i ], [ %i.fj, %._crit_edge.i.i.i ] ; 4 uses
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !455, !nonnull !47, !align !49
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !20 ; 3 uses
  %i.br = udiv i64 %.083147.i.i.i, %i.bq          ; 3 uses
  %i.bs = load ptr, ptr %i.ar, align 8, !tbaa !452, !nonnull !47, !align !49
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !20 ; 4 uses
  %i.bu = udiv i64 %i.br, %i.bt                   ; 2 uses
  %i.bv = urem i64 %i.br, %i.bt                   ; 3 uses
  %i.bw = load ptr, ptr %i.as, align 8, !tbaa !456, !nonnull !47, !align !50
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = sext i32 %i.bx to i64
  %i.bz = udiv i64 %i.bv, %i.by
  %i.ca = mul i64 %i.br, %i.bq                    ; 0 uses
  %.recomposed = urem i64 %.083147.i.i.i, %i.bq
  %i.cb = load ptr, ptr %i.at, align 8, !tbaa !457, !nonnull !47, !align !49
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !20 ; 2 uses
  %i.cd = udiv i64 %.recomposed, %i.cc
  %i.ce = urem i64 %.083147.i.i.i, %i.cc
  %i.cf = load ptr, ptr %i.au, align 8, !tbaa !458, !nonnull !47, !align !49
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !20 ; 2 uses
  %i.ch = mul i64 %i.cg, %i.cd                    ; 3 uses
  %i.ci = load ptr, ptr %i.i, align 8, !tbaa !448, !nonnull !47, !align !49
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !20 ; 2 uses
  %i.ck = mul i64 %i.cj, %i.ce                    ; 3 uses
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !459, !nonnull !47, !align !49
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !20 ; 3 uses
  %i.cn = sub i64 %i.cm, %i.ch
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cg) ; 7 uses
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !453, !nonnull !47, !align !49
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !20 ; 2 uses
  %i.cq = sub i64 %i.cp, %i.ck
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cj) ; 6 uses
  %i.cs = mul i64 %i.bu, %i.bt
  %i.ct = mul i64 %i.cs, %i.cm                    ; 2 uses
  %i.cu = mul i64 %i.cm, %i.bv
  %i.cv = add i64 %i.cu, %i.ch                    ; 2 uses
  %i.cw = add i64 %i.cv, %i.ct
  %i.cx = mul i64 %i.cw, %i.bo
  %i.cy = load ptr, ptr %i.ay, align 8, !tbaa !460, !nonnull !47, !align !49
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !23 ; 24 uses
  %i.da = load ptr, ptr %i.p, align 8, !tbaa !450, !nonnull !47, !align !49
  %i.db = load i64, ptr %i.da, align 8, !tbaa !20 ; 2 uses
  %i.dc = mul i64 %i.cx, %i.db                    ; 24 uses
  %i.dd = getelementptr i8, ptr %i.cz, i64 %i.dc
  %i.de = load ptr, ptr %i.az, align 8, !tbaa !461, !nonnull !47, !align !49
  %i.df = load i64, ptr %i.de, align 8, !tbaa !20
  %i.dg = mul i64 %i.df, %i.bu
  %i.dh = load ptr, ptr %i.ba, align 8, !tbaa !462, !nonnull !47, !align !49
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !20
  %i.dj = add i64 %i.dg, %i.bz
  %i.dk = mul i64 %i.dj, %i.di
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !449, !nonnull !47, !align !49
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !20
  %i.dn = mul i64 %i.dm, %i.ck
  %i.do = add i64 %i.dn, %i.dk
  %i.dp = load ptr, ptr %i.aa, align 8, !tbaa !451, !nonnull !47
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !25, !range !48, !noundef !47
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = mul i64 %i.ch, %i.bt
  %i.dt = add i64 %i.ds, %i.bv
  %.pn90.i.i.i = select i1 %i.dr, i64 %i.dt, i64 %i.cv
  %reass.add.i.i.i = add i64 %.pn90.i.i.i, %i.ct
  %reass.mul.i.i.i = mul i64 %reass.add.i.i.i, %i.cp
  %.082.i.i.i = add i64 %reass.mul.i.i.i, %i.ck
  %i.du = load ptr, ptr %i.bb, align 8, !tbaa !463, !nonnull !47, !align !49
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !23
  %i.dw = mul i64 %.082.i.i.i, %i.db
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw ; 4 uses
  %.not152.i.i.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not152.i.i.i, label %.preheader140.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %xtraiter = and i64 %..i.i.i, 1
  %i.dy = icmp eq i64 %..i.i.i, 1
  br i1 %i.dy, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %..i.i.i, -2
  br label %.lr.ph.i.i.i

.preheader140.loopexit.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader140.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.preheader140.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.081142.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fh, %.preheader140.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod206 = trunc i64 %..i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod206)
  %i.dz = mul i64 %.081142.i.i.i.epil.init, %i.ao
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !450, !nonnull !47, !align !49
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !20 ; 2 uses
  %i.ec = mul i64 %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ec
  %i.ee = mul i64 %i.eb, %i.cr
  call void @llvm.memset.p0.i64(ptr align 1 %i.ed, i8 0, i64 %i.ee, i1 false)
  br label %.preheader140.loopexit.i.i.i

.preheader140.loopexit.i.i.i:                     ; preds = %.preheader140.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %.pre157.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !454
  %.pre158.i.i.i = load i64, ptr %.pre157.i.i.i, align 8, !tbaa !20
  br label %.preheader140.i.i.i

.preheader140.i.i.i:                              ; preds = %.preheader140.loopexit.i.i.i, %bb.k
  %i.ef = phi i64 [ %.pre158.i.i.i, %.preheader140.loopexit.i.i.i ], [ %i.bo, %bb.k ] ; 3 uses
  %i.eg = trunc i64 %i.ef to i32                  ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph146.i.i.i, label %._crit_edge.i.i.i

.lr.ph146.i.i.i:                                  ; preds = %.preheader140.i.i.i
  %i.ei = trunc i64 %..i.i.i to i32               ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  %i.ek = and i64 %..i.i.i, 2147483647            ; 10 uses
  %.not153.i.i.i = icmp eq i64 %i.cr, 0
  %i.el = trunc i64 %i.cr to i32
  %scevgep43.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep45.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep47.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep49.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep51.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep53.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep55 = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep101.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep104.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep107.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep110.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep113.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep116.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep119.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep122.a = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep125 = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep128 = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep131 = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep134 = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep137 = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep140 = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep143 = getelementptr i8, ptr %i.cz, i64 %i.dc
  %scevgep145 = getelementptr i8, ptr %i.cz, i64 %i.dc
  %umax146 = call i64 @llvm.umax.i64(i64 %i.ek, i64 8)
  %i.em = shl nuw nsw i64 %umax146, 2
  %i.en = add nsw i64 %i.em, -4
  %i.eo = and i64 %i.en, -32
  %umax = call i64 @llvm.umax.i64(i64 %i.ek, i64 8)
  %i.ep = add nsw i64 %umax, -1
  %i.eq = lshr i64 %i.ep, 3                       ; 2 uses
  %i.er = shl i64 %i.eq, 5
  %i.es = shl nuw nsw i64 %i.eq, 5
  %i.et = or disjoint i64 %i.es, 4
  br label %bb.l

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.081142.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fh, %.lr.ph.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.eu = mul i64 %.081142.i.i.i, %i.ao
  %i.ev = load ptr, ptr %i.p, align 8, !tbaa !450, !nonnull !47, !align !49
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !20 ; 2 uses
  %i.ex = mul i64 %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ex
  %i.ez = mul i64 %i.ew, %i.cr
  call void @llvm.memset.p0.i64(ptr align 1 %i.ey, i8 0, i64 %i.ez, i1 false)
  %i.fa = or disjoint i64 %.081142.i.i.i, 1
  %i.fb = mul i64 %i.fa, %i.ao
  %i.fc = load ptr, ptr %i.p, align 8, !tbaa !450, !nonnull !47, !align !49
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !20 ; 2 uses
  %i.fe = mul i64 %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.fe
  %i.fg = mul i64 %i.fd, %i.cr
  call void @llvm.memset.p0.i64(ptr align 1 %i.ff, i8 0, i64 %i.fg, i1 false)
  %i.fh = add nuw i64 %.081142.i.i.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader140.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !418

._crit_edge.i.i.i:                                ; preds = %.loopexit.i.i.i, %.preheader140.i.i.i
  %i.fi = phi i64 [ %i.ef, %.preheader140.i.i.i ], [ %i.pd, %.loopexit.i.i.i ]
  %i.fj = add i64 %.083147.i.i.i, 1               ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.z
  br i1 %i.fk, label %bb.k, label %._crit_edge150.loopexit.i.i.i, !llvm.loop !419

bb.l:                                             ; preds = %.loopexit.i.i.i, %.lr.ph146.i.i.i
  %i.fl = phi i32 [ %i.eg, %.lr.ph146.i.i.i ], [ %i.pe, %.loopexit.i.i.i ] ; 3 uses
  %i.fm = phi i64 [ %i.ef, %.lr.ph146.i.i.i ], [ %i.pd, %.loopexit.i.i.i ] ; 5 uses
  %.080145.i.i.i = phi i32 [ 0, %.lr.ph146.i.i.i ], [ %i.pb, %.loopexit.i.i.i ] ; 3 uses
  %i.fn = sext i32 %.080145.i.i.i to i64          ; 3 uses
  %i.fo = load ptr, ptr %i.l, align 8, !tbaa !449, !nonnull !47, !align !49 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !20 ; 3 uses
  %i.fq = udiv i64 %i.fn, %i.fp
  %i.fr = urem i64 %i.fn, %i.fp                   ; 2 uses
  %i.fs = load ptr, ptr %i.bc, align 8, !tbaa !464, !nonnull !47, !align !49
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !20
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = sub i32 %i.fl, %.080145.i.i.i
  %.sroa.speculated116.i.i.i = call i32 @llvm.smin.i32(i32 %i.fv, i32 %i.fu)
  %i.fw = trunc i64 %i.fp to i32                  ; 2 uses
  %i.fx = trunc i64 %i.fr to i32
  %i.fy = sub i32 %i.fw, %i.fx
  %.sroa.speculated.i.i.i = call i32 @llvm.smin.i32(i32 %i.fy, i32 %.sroa.speculated116.i.i.i) ; 8 uses
  %i.fz = load ptr, ptr %i.p, align 8, !tbaa !450 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !20 ; 2 uses
  %i.gb = load ptr, ptr %i.bd, align 8, !tbaa !465, !nonnull !47, !align !49
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !20
  %i.gd = mul i64 %i.gc, %i.fr
  %i.ge = add i64 %i.do, %i.gd
  %i.gf = mul i64 %i.ge, %i.ga
  %i.gg = load ptr, ptr %i.be, align 8, !tbaa !466, !nonnull !47, !align !49
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !58
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.fq
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !23
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gf ; 2 uses
  %i.gl = mul i64 %i.ga, %i.fn                    ; 18 uses
  %i.gm = getelementptr i8, ptr %i.dd, i64 %i.gl  ; 10 uses
  br i1 %i.ej, label %.lr.ph89.i.i.i.i, label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %bb.l
  %i.gn = icmp sgt i32 %.sroa.speculated.i.i.i, 0 ; 2 uses
  %i.go = shl i32 %i.fl, 1
  %i.gp = shl i32 %i.fl, 2
  %i.gq = sext i32 %.sroa.speculated.i.i.i to i64 ; 10 uses
  %sext.i.i.i = shl i64 %i.fm, 32                 ; 11 uses
  %i.gr = ashr exact i64 %sext.i.i.i, 32          ; 5 uses
  %i.gs = sext i32 %i.go to i64                   ; 2 uses
  %sext128.i.i.i = mul i64 %i.fm, 12884901888
  %i.gt = sext i32 %i.gp to i64                   ; 2 uses
  %sext129.i.i.i = mul i64 %i.fm, 21474836480
  %sext130.i.i.i = mul i64 %i.fm, 25769803776
  %sext131.i.i.i = mul i64 %i.fm, 30064771072
  %i.gu = ashr exact i64 %sext128.i.i.i, 30       ; 3 uses
  %i.gv = ashr exact i64 %sext129.i.i.i, 30       ; 3 uses
  %i.gw = ashr exact i64 %sext130.i.i.i, 30       ; 3 uses
  %i.gx = ashr exact i64 %sext131.i.i.i, 30       ; 3 uses
  %i.gy = shl nsw i64 %i.gq, 5
  %i.gz = getelementptr i8, ptr %scevgep43.a, i64 %i.gx
  %scevgep26 = getelementptr i8, ptr %i.gz, i64 %i.gl
  %i.ha = shl nsw i64 %i.gq, 2                    ; 8 uses
  %i.hb = getelementptr i8, ptr %scevgep47.a, i64 %i.gw
  %scevgep30 = getelementptr i8, ptr %i.hb, i64 %i.gl
  %i.hc = getelementptr i8, ptr %scevgep51.a, i64 %i.gv
  %scevgep34 = getelementptr i8, ptr %i.hc, i64 %i.gl
  %i.hd = shl nsw i64 %i.gt, 2                    ; 2 uses
  %i.he = getelementptr i8, ptr %scevgep55, i64 %i.gl
  %scevgep38 = getelementptr i8, ptr %i.he, i64 %i.hd
  %i.hf = getelementptr i8, ptr %scevgep104.a, i64 %i.gu
  %scevgep42 = getelementptr i8, ptr %i.hf, i64 %i.gl
  %i.hg = shl nsw i64 %i.gs, 2                    ; 2 uses
  %i.hh = getelementptr i8, ptr %scevgep110.a, i64 %i.gl
  %scevgep46 = getelementptr i8, ptr %i.hh, i64 %i.hg
  %i.hi = ashr exact i64 %sext.i.i.i, 30
  %scevgep50.a = getelementptr i8, ptr %scevgep116.a, i64 %i.gl
  %scevgep54.a = getelementptr i8, ptr %scevgep50.a, i64 %i.hi
  %i.hj = shl nsw i64 %i.gq, 5
  %i.hk = shl nsw i64 %i.gq, 2                    ; 2 uses
  %i.hl = add i64 %i.gl, %i.hk                    ; 7 uses
  %scevgep126 = getelementptr i8, ptr %scevgep125, i64 %i.hl
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.hl
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.hl
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 %i.hl
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.hl
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.hl
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.hl
  %i.hm = insertelement <8 x ptr> poison, ptr %scevgep30, i64 0
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %scevgep26, i64 1
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %scevgep34, i64 2
  %i.hp = insertelement <8 x ptr> %i.ho, ptr %scevgep38, i64 3
  %i.hq = insertelement <8 x ptr> %i.hp, ptr %scevgep42, i64 4
  %i.hr = insertelement <8 x ptr> %i.hq, ptr %scevgep46, i64 5
  %i.hs = insertelement <8 x ptr> %i.hr, ptr %scevgep54.a, i64 6
  %i.ht = insertelement <8 x ptr> %i.hs, ptr %i.gm, i64 7
  %min.iters.check181 = icmp ult i32 %.sroa.speculated.i.i.i, 20
  %i.hu = mul i64 %i.eo, %i.gr
  %i.hv = getelementptr i8, ptr %scevgep145, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.gl
  %scevgep147 = getelementptr i8, ptr %i.hw, i64 %i.hk
  %i.hx = insertelement <8 x ptr> poison, ptr %scevgep147, i64 7
  %i.hy = insertelement <8 x ptr> poison, ptr %i.gm, i64 7
  %stride.check178 = icmp slt i64 %sext.i.i.i, 0
  %n.vec183 = and i64 %i.gq, 2147483644           ; 4 uses
  %i.hz = shl nuw nsw i64 %n.vec183, 5
  %cmp.n198 = icmp eq i64 %n.vec183, %i.gq
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i.i, 32
  %i.ia = mul i64 %i.er, %i.gr                    ; 7 uses
  %i.ib = getelementptr i8, ptr %scevgep45.a, i64 %i.gx
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.ia
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.gl
  %scevgep28 = getelementptr i8, ptr %i.id, i64 %i.ha
  %i.ie = getelementptr i8, ptr %scevgep49.a, i64 %i.gw
  %i.if = getelementptr i8, ptr %i.ie, i64 %i.ia
  %i.ig = getelementptr i8, ptr %i.if, i64 %i.gl
  %scevgep32 = getelementptr i8, ptr %i.ig, i64 %i.ha
  %i.ih = getelementptr i8, ptr %scevgep53.a, i64 %i.gv
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.ia
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.gl
  %scevgep36 = getelementptr i8, ptr %i.ij, i64 %i.ha
  %i.ik = getelementptr i8, ptr %scevgep101.a, i64 %i.ia
  %i.il = getelementptr i8, ptr %i.ik, i64 %i.gl
  %i.im = getelementptr i8, ptr %i.il, i64 %i.ha
  %scevgep40 = getelementptr i8, ptr %i.im, i64 %i.hd
  %i.in = getelementptr i8, ptr %scevgep107.a, i64 %i.gu
  %i.io = getelementptr i8, ptr %i.in, i64 %i.ia
  %i.ip = getelementptr i8, ptr %i.io, i64 %i.gl
  %scevgep44 = getelementptr i8, ptr %i.ip, i64 %i.ha
  %i.iq = getelementptr i8, ptr %scevgep113.a, i64 %i.ia
  %i.ir = getelementptr i8, ptr %i.iq, i64 %i.gl
  %i.is = getelementptr i8, ptr %i.ir, i64 %i.ha
  %scevgep48 = getelementptr i8, ptr %i.is, i64 %i.hg
  %i.it = mul i64 %i.et, %i.gr
  %i.iu = getelementptr i8, ptr %scevgep119.a, i64 %i.gl
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.it
  %scevgep52 = getelementptr i8, ptr %i.iv, i64 %i.ha
  %i.iw = getelementptr i8, ptr %scevgep122.a, i64 %i.ia
  %i.ix = getelementptr i8, ptr %i.iw, i64 %i.gl
  %scevgep56 = getelementptr i8, ptr %i.ix, i64 %i.ha
  %stride.check60 = icmp slt i64 %sext.i.i.i, 0
  %i.iy = insertelement <8 x ptr> poison, ptr %scevgep32, i64 0
  %i.iz = insertelement <8 x ptr> %i.iy, ptr %scevgep28, i64 1
  %i.ja = insertelement <8 x ptr> %i.iz, ptr %scevgep36, i64 2
  %i.jb = insertelement <8 x ptr> %i.ja, ptr %scevgep40, i64 3
  %i.jc = insertelement <8 x ptr> %i.jb, ptr %scevgep44, i64 4
  %i.jd = insertelement <8 x ptr> %i.jc, ptr %scevgep48, i64 5
  %i.je = insertelement <8 x ptr> %i.jd, ptr %scevgep52, i64 6
  %i.jf = insertelement <8 x ptr> %i.je, ptr %scevgep56, i64 7
  %n.vec = and i64 %i.gq, 2147483644              ; 4 uses
  %i.jg = shl nuw nsw i64 %n.vec, 5
  %cmp.n = icmp eq i64 %n.vec, %i.gq
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph89.i.i.i.i
  %indvars.iv97.i.i.i.i = phi i64 [ 0, %.lr.ph89.i.i.i.i ], [ %indvars.iv.next98.i.i.i.i, %.loopexit.i.i.i.i ] ; 16 uses
  %.087.i.i.i.i = phi ptr [ %i.f, %.lr.ph89.i.i.i.i ], [ %.3.i.i.i.i, %.loopexit.i.i.i.i ] ; 14 uses
  %indvars.iv.next98.i.i.i.i = add nuw nsw i64 %indvars.iv97.i.i.i.i, 8 ; 2 uses
  %i.jh = or disjoint i64 %indvars.iv97.i.i.i.i, 7
  %i.ji = icmp samesign ult i64 %i.jh, %i.ek
  %i.jj = mul nsw i64 %indvars.iv97.i.i.i.i, %i.gr
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.jj ; 11 uses
  br i1 %i.ji, label %bb.n, label %.preheader.i.i.i.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.gn, label %.lr.ph84.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph84.preheader.i.i.i.i:                       ; preds = %bb.n
  %invariant.gep.i.i.i.i = getelementptr [4 x i8], ptr %i.jk, i64 %i.gr ; 2 uses
  %invariant.gep104.i.i.i.i = getelementptr [4 x i8], ptr %i.jk, i64 %i.gs ; 2 uses
  %invariant.gep106.i.i.i.i = getelementptr i8, ptr %i.jk, i64 %i.gu ; 2 uses
  %invariant.gep108.i.i.i.i = getelementptr [4 x i8], ptr %i.jk, i64 %i.gt ; 2 uses
  %invariant.gep110.i.i.i.i = getelementptr i8, ptr %i.jk, i64 %i.gv ; 2 uses
  %invariant.gep112.i.i.i.i = getelementptr i8, ptr %i.jk, i64 %i.gw ; 2 uses
  %invariant.gep114.i.i.i.i = getelementptr i8, ptr %i.jk, i64 %i.gx ; 2 uses
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i.i.i.i
  %scevgep = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.gy
  %i.jl = insertelement <8 x ptr> poison, ptr %.087.i.i.i.i, i64 0
  %i.jm = shufflevector <8 x ptr> %i.jl, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.jn = icmp ult <8 x ptr> %i.jm, %i.jf
  %i.jo = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.jp = shufflevector <8 x ptr> %i.jo, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.jq = icmp ult <8 x ptr> %i.ht, %i.jp
  %i.jr = and <8 x i1> %i.jn, %i.jq
  %i.js = bitcast <8 x i1> %i.jr to i8
  %i.jt = icmp ne i8 %i.js, 0
  %op.rdx = or i1 %i.jt, %stride.check60
  br i1 %op.rdx, label %.lr.ph84.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ju = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.jg ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.jv = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.jv
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %index
  %wide.load = load <4 x float>, ptr %i.jw, align 4, !tbaa !18, !alias.scope !467
  %i.jx = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i, i64 %index
  %wide.load91.a = load <4 x float>, ptr %i.jx, align 4, !tbaa !18, !alias.scope !468
  %i.jy = getelementptr [4 x i8], ptr %invariant.gep104.i.i.i.i, i64 %index
  %wide.load92.a = load <4 x float>, ptr %i.jy, align 4, !tbaa !18, !alias.scope !469
  %i.jz = getelementptr [4 x i8], ptr %invariant.gep106.i.i.i.i, i64 %index
  %wide.load93.a = load <4 x float>, ptr %i.jz, align 4, !tbaa !18, !alias.scope !470
  %i.ka = getelementptr [4 x i8], ptr %invariant.gep108.i.i.i.i, i64 %index
  %wide.load94.a = load <4 x float>, ptr %i.ka, align 4, !tbaa !18, !alias.scope !471
  %i.kb = getelementptr [4 x i8], ptr %invariant.gep110.i.i.i.i, i64 %index
  %wide.load95.a = load <4 x float>, ptr %i.kb, align 4, !tbaa !18, !alias.scope !472
  %i.kc = getelementptr [4 x i8], ptr %invariant.gep112.i.i.i.i, i64 %index
  %wide.load96 = load <4 x float>, ptr %i.kc, align 4, !tbaa !18, !alias.scope !473
  %i.kd = getelementptr [4 x i8], ptr %invariant.gep114.i.i.i.i, i64 %index
  %wide.load97 = load <4 x float>, ptr %i.kd, align 4, !tbaa !18, !alias.scope !474
  %i.ke = shufflevector <4 x float> %wide.load, <4 x float> %wide.load91.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kf = shufflevector <4 x float> %wide.load92.a, <4 x float> %wide.load93.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kg = shufflevector <4 x float> %wide.load94.a, <4 x float> %wide.load95.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kh = shufflevector <4 x float> %wide.load96, <4 x float> %wide.load97, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ki = shufflevector <8 x float> %i.ke, <8 x float> %i.kf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kj = shufflevector <8 x float> %i.kg, <8 x float> %i.kh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ki, <16 x float> %i.kj, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !475, !noalias !476
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i.i.i.i, label %.lr.ph84.i.i.i.i.preheader

.lr.ph84.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph84.preheader.i.i.i.i, %middle.block
  %indvars.iv94.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i.i.i.i ], [ %n.vec, %middle.block ]
  %.182.i.i.i.i.ph = phi ptr [ %.087.i.i.i.i, %vector.memcheck ], [ %.087.i.i.i.i, %.lr.ph84.preheader.i.i.i.i ], [ %i.ju, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader, %.lr.ph84.i.i.i.i
  %indvars.iv94.i.i.i.i = phi i64 [ %indvars.iv.next95.i.i.i.i, %.lr.ph84.i.i.i.i ], [ %indvars.iv94.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader ] ; 9 uses
  %.182.i.i.i.i = phi ptr [ %i.ku, %.lr.ph84.i.i.i.i ], [ %.182.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader ] ; 9 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv94.i.i.i.i
  %i.km = load float, ptr %i.kl, align 4, !tbaa !18
  %gep.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.kn = load float, ptr %gep.i.i.i.i, align 4, !tbaa !18
  %gep105.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep104.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.ko = load float, ptr %gep105.i.i.i.i, align 4, !tbaa !18
  %gep107.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep106.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.kp = load float, ptr %gep107.i.i.i.i, align 4, !tbaa !18
  %gep109.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep108.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.kq = load float, ptr %gep109.i.i.i.i, align 4, !tbaa !18
  %gep111.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep110.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.kr = load float, ptr %gep111.i.i.i.i, align 4, !tbaa !18
  %gep113.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep112.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.ks = load float, ptr %gep113.i.i.i.i, align 4, !tbaa !18
  %gep115.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep114.i.i.i.i, i64 %indvars.iv94.i.i.i.i
  %i.kt = load float, ptr %gep115.i.i.i.i, align 4, !tbaa !18
  store float %i.km, ptr %.182.i.i.i.i, align 4
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 4
  store float %i.kn, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 4
  %.sroa.517.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 8
  store float %i.ko, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 4
  %.sroa.618.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 12
  store float %i.kp, ptr %.sroa.618.0..sroa_idx.i.i.i.i, align 4
  %.sroa.719.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 16
  store float %i.kq, ptr %.sroa.719.0..sroa_idx.i.i.i.i, align 4
  %.sroa.820.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 20
  store float %i.kr, ptr %.sroa.820.0..sroa_idx.i.i.i.i, align 4
  %.sroa.921.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 24
  store float %i.ks, ptr %.sroa.921.0..sroa_idx.i.i.i.i, align 4
  %.sroa.1022.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 28
  store float %i.kt, ptr %.sroa.1022.0..sroa_idx.i.i.i.i, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %.182.i.i.i.i, i64 32 ; 2 uses
  %indvars.iv.next95.i.i.i.i = add nuw nsw i64 %indvars.iv94.i.i.i.i, 1 ; 2 uses
  %i.kv = icmp slt i64 %indvars.iv.next95.i.i.i.i, %i.gq
  br i1 %i.kv, label %.lr.ph84.i.i.i.i, label %.loopexit.i.i.i.i, !llvm.loop !431

.preheader.i.i.i.i:                               ; preds = %bb.m
  %i.kw = or disjoint i64 %indvars.iv97.i.i.i.i, 1 ; 2 uses
  %i.kx = icmp samesign ult i64 %i.kw, %i.ek
  %i.ky = select i1 %i.kx, i64 %i.kw, i64 %indvars.iv97.i.i.i.i
  %sext132.i.i.i = mul i64 %i.ky, %sext.i.i.i
  %i.kz = ashr exact i64 %sext132.i.i.i, 30       ; 2 uses
  %i.la = getelementptr i8, ptr %i.gm, i64 %i.kz  ; 3 uses
  %i.lb = or disjoint i64 %indvars.iv97.i.i.i.i, 2 ; 2 uses
  %i.lc = icmp samesign ult i64 %i.lb, %i.ek
  %i.ld = select i1 %i.lc, i64 %i.lb, i64 %indvars.iv97.i.i.i.i
  %sext133.i.i.i = mul i64 %i.ld, %sext.i.i.i
  %i.le = ashr exact i64 %sext133.i.i.i, 30       ; 2 uses
  %i.lf = getelementptr i8, ptr %i.gm, i64 %i.le  ; 3 uses
  %i.lg = or disjoint i64 %indvars.iv97.i.i.i.i, 3 ; 2 uses
  %i.lh = icmp samesign ult i64 %i.lg, %i.ek
  %i.li = select i1 %i.lh, i64 %i.lg, i64 %indvars.iv97.i.i.i.i
  %sext134.i.i.i = mul i64 %i.li, %sext.i.i.i
  %i.lj = ashr exact i64 %sext134.i.i.i, 30       ; 2 uses
  %i.lk = getelementptr i8, ptr %i.gm, i64 %i.lj  ; 3 uses
  %i.ll = or disjoint i64 %indvars.iv97.i.i.i.i, 4 ; 2 uses
  %i.lm = icmp samesign ult i64 %i.ll, %i.ek
  %i.ln = select i1 %i.lm, i64 %i.ll, i64 %indvars.iv97.i.i.i.i
  %sext135.i.i.i = mul i64 %i.ln, %sext.i.i.i
  %i.lo = ashr exact i64 %sext135.i.i.i, 30       ; 2 uses
  %i.lp = getelementptr i8, ptr %i.gm, i64 %i.lo  ; 3 uses
  %i.lq = or disjoint i64 %indvars.iv97.i.i.i.i, 5 ; 2 uses
  %i.lr = icmp samesign ult i64 %i.lq, %i.ek
  %i.ls = select i1 %i.lr, i64 %i.lq, i64 %indvars.iv97.i.i.i.i
  %sext136.i.i.i = mul i64 %i.ls, %sext.i.i.i
  %i.lt = ashr exact i64 %sext136.i.i.i, 30       ; 2 uses
  %i.lu = getelementptr i8, ptr %i.gm, i64 %i.lt  ; 3 uses
  %i.lv = or disjoint i64 %indvars.iv97.i.i.i.i, 6 ; 2 uses
  %i.lw = icmp samesign ult i64 %i.lv, %i.ek
  %i.lx = select i1 %i.lw, i64 %i.lv, i64 %indvars.iv97.i.i.i.i
  %sext137.i.i.i = mul i64 %i.lx, %sext.i.i.i
  %i.ly = ashr exact i64 %sext137.i.i.i, 30       ; 2 uses
  %i.lz = getelementptr i8, ptr %i.gm, i64 %i.ly  ; 3 uses
  %sext138.i.i.i = mul i64 %indvars.iv97.i.i.i.i, %sext.i.i.i
  %i.ma = ashr exact i64 %sext138.i.i.i, 30       ; 2 uses
  %i.mb = getelementptr i8, ptr %i.gm, i64 %i.ma  ; 3 uses
  br i1 %i.gn, label %.lr.ph.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.preheader.i.i.i.i
  br i1 %min.iters.check181, label %.lr.ph.i.i.i.i.preheader202, label %vector.memcheck99

vector.memcheck99:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep100 = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.hj
  %scevgep124 = getelementptr i8, ptr %scevgep126, i64 %i.ma
  %scevgep127 = getelementptr i8, ptr %scevgep129, i64 %i.ly
  %scevgep130 = getelementptr i8, ptr %scevgep132, i64 %i.lt
  %scevgep133 = getelementptr i8, ptr %scevgep135, i64 %i.lo
  %scevgep136 = getelementptr i8, ptr %scevgep138, i64 %i.lj
  %scevgep139 = getelementptr i8, ptr %scevgep141, i64 %i.le
  %scevgep142 = getelementptr i8, ptr %scevgep144, i64 %i.kz
  %i.mc = insertelement <8 x ptr> poison, ptr %.087.i.i.i.i, i64 0
  %i.md = shufflevector <8 x ptr> %i.mc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.me = insertelement <8 x ptr> %i.hx, ptr %scevgep124, i64 0
  %i.mf = insertelement <8 x ptr> %i.me, ptr %scevgep127, i64 1
  %i.mg = insertelement <8 x ptr> %i.mf, ptr %scevgep130, i64 2
  %i.mh = insertelement <8 x ptr> %i.mg, ptr %scevgep133, i64 3
  %i.mi = insertelement <8 x ptr> %i.mh, ptr %scevgep136, i64 4
  %i.mj = insertelement <8 x ptr> %i.mi, ptr %scevgep139, i64 5
  %i.mk = insertelement <8 x ptr> %i.mj, ptr %scevgep142, i64 6
  %i.ml = icmp ult <8 x ptr> %i.md, %i.mk
  %i.mm = insertelement <8 x ptr> %i.hy, ptr %i.mb, i64 0
  %i.mn = insertelement <8 x ptr> %i.mm, ptr %i.lz, i64 1
  %i.mo = insertelement <8 x ptr> %i.mn, ptr %i.lu, i64 2
  %i.mp = insertelement <8 x ptr> %i.mo, ptr %i.lp, i64 3
  %i.mq = insertelement <8 x ptr> %i.mp, ptr %i.lk, i64 4
  %i.mr = insertelement <8 x ptr> %i.mq, ptr %i.lf, i64 5
  %i.ms = insertelement <8 x ptr> %i.mr, ptr %i.la, i64 6
  %i.mt = insertelement <8 x ptr> poison, ptr %scevgep100, i64 0
  %i.mu = shufflevector <8 x ptr> %i.mt, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.mv = icmp ult <8 x ptr> %i.ms, %i.mu
  %i.mw = and <8 x i1> %i.ml, %i.mv
  %i.mx = bitcast <8 x i1> %i.mw to i8
  %i.my = icmp ne i8 %i.mx, 0
  %op.rdx201 = or i1 %i.my, %stride.check178
  br i1 %op.rdx201, label %.lr.ph.i.i.i.i.preheader202, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck99
  %i.mz = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.hz ; 2 uses
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next196, %vector.body184 ] ; 10 uses
  %i.na = shl i64 %index185, 5
  %next.gep186 = getelementptr i8, ptr %.087.i.i.i.i, i64 %i.na
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %index185
  %wide.load187 = load <4 x float>, ptr %i.nb, align 4, !tbaa !18, !alias.scope !477
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %index185
  %wide.load188 = load <4 x float>, ptr %i.nc, align 4, !tbaa !18, !alias.scope !478
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index185
  %wide.load189 = load <4 x float>, ptr %i.nd, align 4, !tbaa !18, !alias.scope !479
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %index185
  %wide.load190 = load <4 x float>, ptr %i.ne, align 4, !tbaa !18, !alias.scope !480
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %index185
  %wide.load191 = load <4 x float>, ptr %i.nf, align 4, !tbaa !18, !alias.scope !481
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %index185
  %wide.load192 = load <4 x float>, ptr %i.ng, align 4, !tbaa !18, !alias.scope !482
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index185
  %wide.load193 = load <4 x float>, ptr %i.nh, align 4, !tbaa !18, !alias.scope !483
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %index185
  %wide.load194 = load <4 x float>, ptr %i.ni, align 4, !tbaa !18, !alias.scope !484
  %i.nj = shufflevector <4 x float> %wide.load187, <4 x float> %wide.load188, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nk = shufflevector <4 x float> %wide.load189, <4 x float> %wide.load190, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nl = shufflevector <4 x float> %wide.load191, <4 x float> %wide.load192, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nm = shufflevector <4 x float> %wide.load193, <4 x float> %wide.load194, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nn = shufflevector <8 x float> %i.nj, <8 x float> %i.nk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.no = shufflevector <8 x float> %i.nl, <8 x float> %i.nm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec195 = shufflevector <16 x float> %i.nn, <16 x float> %i.no, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec195, ptr %next.gep186, align 4, !alias.scope !485, !noalias !486
  %index.next196 = add nuw i64 %index185, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next196, %n.vec183
  br i1 %i.np, label %middle.block197, label %vector.body184, !llvm.loop !442

middle.block197:                                  ; preds = %vector.body184
  br i1 %cmp.n198, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader202

.lr.ph.i.i.i.i.preheader202:                      ; preds = %vector.memcheck99, %.lr.ph.i.i.i.i.preheader, %middle.block197
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck99 ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec183, %middle.block197 ]
  %.280.i.i.i.i.ph = phi ptr [ %.087.i.i.i.i, %vector.memcheck99 ], [ %.087.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.mz, %middle.block197 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader202, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader202 ] ; 9 uses
  %.280.i.i.i.i = phi ptr [ %i.og, %.lr.ph.i.i.i.i ], [ %.280.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader202 ] ; 9 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.i.i.i.i
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !18
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i.i.i.i
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !18
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i.i.i
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !18
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.i.i.i.i
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !18
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i.i.i.i
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !18
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv.i.i.i.i
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !18
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv.i.i.i.i
  %i.od = load float, ptr %i.oc, align 4, !tbaa !18
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv.i.i.i.i
  %i.of = load float, ptr %i.oe, align 4, !tbaa !18
  store float %i.nr, ptr %.280.i.i.i.i, align 4
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 4
  store float %i.nt, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 8
  store float %i.nv, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 12
  store float %i.nx, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 16
  store float %i.nz, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 20
  store float %i.ob, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 4
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 24
  store float %i.od, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 28
  store float %i.of, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %.280.i.i.i.i, i64 32 ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.oh = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.gq
  br i1 %i.oh, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i, !llvm.loop !443

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %.lr.ph84.i.i.i.i, %middle.block197, %middle.block, %.preheader.i.i.i.i, %bb.n
  %.3.i.i.i.i = phi ptr [ %i.ku, %.lr.ph84.i.i.i.i ], [ %.087.i.i.i.i, %bb.n ], [ %.087.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ju, %middle.block ], [ %i.mz, %middle.block197 ], [ %i.og, %.lr.ph.i.i.i.i ]
  %i.oi = icmp samesign ult i64 %indvars.iv.next98.i.i.i.i, %i.ek
  br i1 %i.oi, label %bb.m, label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i, !llvm.loop !4

_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i: ; preds = %.loopexit.i.i.i.i
  %.pre159.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !449 ; 2 uses
  %.pre160.i.i.i = load i64, ptr %.pre159.i.i.i, align 8, !tbaa !20
  %.pre164.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !450
  %.pre167.i.i.i = trunc i64 %.pre160.i.i.i to i32
  br label %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i

_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i, %bb.l
  %.pre-phi.i.i.i = phi i32 [ %.pre167.i.i.i, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i ], [ %i.fw, %bb.l ]
  %.pre164.i.i.i = phi ptr [ %.pre164.pre.i.i.i, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i ], [ %i.fz, %bb.l ] ; 2 uses
  %i.oj = phi ptr [ %.pre159.i.i.i, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.loopexit.i.i.i ], [ %i.fo, %bb.l ]
  %i.ok = icmp sge i32 %.sroa.speculated.i.i.i, %.pre-phi.i.i.i ; 2 uses
  %brmerge.i.i.i = select i1 %i.ok, i1 true, i1 %.not153.i.i.i
  %.mux.i.i.i = select i1 %i.ok, ptr %i.gk, ptr %i.u
  br i1 %brmerge.i.i.i, label %.loopexit.i.i.i, label %.lr.ph144.i.i.i

.lr.ph144.i.i.i:                                  ; preds = %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i
  %i.ol = sext i32 %.sroa.speculated.i.i.i to i64
  %.pre162.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !465 ; 2 uses
  %.pre163.i.i.i = load i64, ptr %.pre162.i.i.i, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph144.i.i.i
  %i.om = phi i64 [ %.pre163.i.i.i, %.lr.ph144.i.i.i ], [ %i.ow, %bb.o ]
  %.078143.i.i.i = phi i64 [ 0, %.lr.ph144.i.i.i ], [ %i.ox, %bb.o ] ; 3 uses
  %i.on = load i64, ptr %i.oj, align 8, !tbaa !20
  %i.oo = load i64, ptr %.pre164.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.op = mul i64 %i.on, %.078143.i.i.i
  %i.oq = mul i64 %i.op, %i.oo
  %i.or = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.oq
  %i.os = mul i64 %i.oo, %i.ol                    ; 2 uses
  %i.ot = mul i64 %i.os, %.078143.i.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ot
  %i.ov = mul i64 %i.os, %i.om
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ou, ptr align 1 %i.or, i64 %i.ov, i1 false)
  %i.ow = load i64, ptr %.pre162.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.ox = add i64 %i.ow, %.078143.i.i.i           ; 2 uses
  %i.oy = icmp ult i64 %i.ox, %i.cr
  br i1 %i.oy, label %bb.o, label %.loopexit.i.i.i, !llvm.loop !444

.loopexit.i.i.i:                                  ; preds = %bb.o, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i
  %.079.i.i.i = phi ptr [ %.mux.i.i.i, %_ZN2cv3dnn12cpu_baselineL19fast_gemm_pack8_f32EiiPKviiPv.exit.i.i.i ], [ %i.u, %bb.o ]
  %i.oz = load i64, ptr %.pre164.i.i.i, align 8, !tbaa !20
  %i.pa = trunc i64 %i.oz to i32
  call fastcc void @_ZN2cv3dnn12cpu_baselineL22fast_gemm_macro_kernelEiiiPKcS3_fPcii(i32 noundef %i.ei, i32 noundef %i.el, i32 noundef %.sroa.speculated.i.i.i, ptr noundef nonnull %i.f, ptr noundef %.079.i.i.i, float noundef 1.000000e+00, ptr noundef %i.dx, i32 noundef %i.bf, i32 noundef %i.pa)
  %i.pb = add nsw i32 %.sroa.speculated.i.i.i, %.080145.i.i.i ; 2 uses
  %i.pc = load ptr, ptr %i.ax, align 8, !tbaa !454, !nonnull !47, !align !49
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !20 ; 3 uses
  %i.pe = trunc i64 %i.pd to i32                  ; 2 uses
  %i.pf = icmp slt i32 %i.pb, %i.pe
  br i1 %i.pf, label %bb.l, label %._crit_edge.i.i.i, !llvm.loop !445

bb.p:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #28
  br label %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit109.i.i.i

_ZN2cv10AutoBufferIcLm8192EED2Ev.exit109.i.i.i:   ; preds = %bb.p, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.q

bb.q:                                             ; preds = %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit109.i.i.i, %bb.i
  %.pn91.pn.i.i.i = phi { ptr, i32 } [ %i.bl, %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit109.i.i.i ], [ %i.bk, %bb.i ]
  %i.pg = load ptr, ptr %2, align 8, !tbaa !114   ; 3 uses
  %.not.i.i110.i.i.i = icmp eq ptr %i.pg, %i.a
  %i.ph = icmp eq ptr %i.pg, null
  %or.cond.i111.i.i.i = or i1 %.not.i.i110.i.i.i, %i.ph
  br i1 %or.cond.i111.i.i.i, label %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit113.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.pg) #28
  br label %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit113.i.i.i

_ZN2cv10AutoBufferIcLm8192EED2Ev.exit113.i.i.i:   ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn91.pn.i.i.i

"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline21pagedAttnAVGemmKernelEPKcRKSt6vectorIS4_SaIS4_EEPcmmmmmmmmbmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %_ZN2cv10AutoBufferIcLm8192EED2Ev.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline21pagedAttnAVGemmKernelEPKcRKSt6vectorIS8_SaIS8_EEPcmmmmmmmmbmE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnAVGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmmbmE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12cpu_baseline21pagedAttnAVGemmKernelEPKcRKSt6vectorIS3_SaIS3_EEPcmmmmmmmmbmE3$_0", ptr %0, align 8, !tbaa !112
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnAVGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmmbmE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline21pagedAttnAVGemmKernelEPKcRKSt6vectorIS5_SaIS5_EEPcmmmmmmmmbmE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #24 ; 2 uses
end_hunk_4
