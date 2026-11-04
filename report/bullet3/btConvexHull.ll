Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHull?download=true
inline.NumInlined: 616
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult:bb.a
  %.071209.epil.init = phi ptr [ %i.ci, %.lr.ph213.preheader ], [ %i.gm, %.loopexit.loopexit273.unr-lcssa ] ; 3 uses
  %lcmp.mod294 = trunc i32 %i.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.ks = getelementptr inbounds nuw i8, ptr %.071209.epil.init, i64 8
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !41
  store i32 %i.kt, ptr %.070210.epil.init, align 4, !tbaa !41
  %i.ku = getelementptr inbounds nuw i8, ptr %.071209.epil.init, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !41
  %i.kw = getelementptr inbounds nuw i8, ptr %.070210.epil.init, i64 4
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !41
  %i.kx = load i32, ptr %.071209.epil.init, align 4, !tbaa !41
  %i.ky = getelementptr inbounds nuw i8, ptr %.070210.epil.init, i64 8
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph213.epil.preheader, %.loopexit.loopexit273.unr-lcssa, %bb.al, %bb.v, %.loopexit201, %bb.w
  %i.kz = load i32, ptr %i.e, align 4, !tbaa !66
  %.not.i186 = icmp eq i32 %i.kz, 0
  br i1 %.not.i186, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.la = load i8, ptr %i.c, align 8, !range !36
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.an, label %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i

bb.an:                                            ; preds = %bb.am
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ci)
          to label %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i unwind label %bb.ai

_ZN20btAlignedObjectArrayIjE5clearEv.exit.i:      ; preds = %bb.an, %bb.am
  store i8 1, ptr %i.c, align 8, !tbaa !69
  store ptr null, ptr %i.d, align 8, !tbaa !68
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i, %.loopexit
  %i.lc = load i8, ptr %i.ca, align 8, !range !36
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ch)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  tail call void @__clang_call_terminate(ptr %i.lf) #20
  unreachable

.thread:                                          ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.pre227 = load i8, ptr %i.l, align 8, !range !36
  %i.lg = trunc nuw i8 %.pre227 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.lg, label %bb.as, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193

bb.as:                                            ; preds = %.thread, %bb.ar
  %.072248 = phi i32 [ 1, %.thread ], [ 0, %bb.ar ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.s)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  tail call void @__clang_call_terminate(ptr %i.li) #20
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193: ; preds = %bb.ar, %bb.as
  %.072247 = phi i32 [ 0, %bb.ar ], [ %.072248, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.lj = load ptr, ptr %i.d, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.lj, null
  %i.lk = load i8, ptr %i.c, align 8, !range !36
  %i.ll = trunc nuw i8 %i.lk to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ll, i1 false
  br i1 %or.cond.i.i.i, label %bb.au, label %_ZN11PHullResultD2Ev.exit

bb.au:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lj)
          to label %_ZN11PHullResultD2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  tail call void @__clang_call_terminate(ptr %i.ln) #20
  unreachable

_ZN11PHullResultD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.072247

bb.aw:                                            ; preds = %bb.ai, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jy, %bb.ai ], [ %i.bh, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aw ], [ %i.bg, %bb.e ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN11PHullResultD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef captures(none) %5, float noundef %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !62   ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  %i.g = icmp slt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 3 uses
  br i1 %i.g, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !36
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond369 = select i1 %.not.i5.i.i, i1 %i.l, i1 false
  br i1 %or.cond369, label %bb.d, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  store i8 1, ptr %i.j, align 8, !tbaa !61
  store ptr null, ptr %i.h, align 8, !tbaa !60
  store i32 0, ptr %i.e, align 8, !tbaa !63
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.i, %bb.c ]
  %i.n = sext i32 %i.c to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !62
  store i32 0, ptr %4, align 4, !tbaa !41
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !12
  %i.r = zext i32 %3 to i64                       ; 3 uses
  %xtraiter = and i32 %1, 1
  %i.s = icmp eq i32 %1, 1
  br i1 %i.s, label %.epil.preheader, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter = and i32 %1, -2
  br label %bb.f

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.loopexit
  %.0282384.epil.init = phi ptr [ %2, %.loopexit ], [ %i.au, %.unr-lcssa ]
  %.epil.init = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit ], [ %i.at, %.unr-lcssa ] ; 2 uses
  %.epil.init538 = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit ], [ %i.as, %.unr-lcssa ] ; 2 uses
  %lcmp.mod541 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod541)
  %i.t = load <3 x float>, ptr %.0282384.epil.init, align 4, !tbaa !12
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.v = fcmp olt <4 x float> %i.u, %.epil.init538
  %i.w = fcmp ogt <4 x float> %i.u, %.epil.init
  %i.x = select <4 x i1> %i.v, <4 x float> %i.u, <4 x float> %.epil.init538
  %i.y = select <4 x i1> %i.w, <4 x float> %i.u, <4 x float> %.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa536.a = phi <4 x float> [ %i.as, %.unr-lcssa ], [ %i.x, %.epil.preheader ] ; 2 uses
  %.lcssa535 = phi <4 x float> [ %i.at, %.unr-lcssa ], [ %i.y, %.epil.preheader ]
  %i.z = fsub <4 x float> %.lcssa535, %.lcssa536.a ; 5 uses
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 5.000000e-01), <4 x float> %.lcssa536.a) ; 5 uses
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 4 uses
  %8 = fcmp olt <2 x float> %i.ab, splat (float f0x358637BD) ; 3 uses
  %9 = extractelement <2 x i1> %8, i64 0
  %10 = extractelement <2 x i1> %8, i64 1
  %or.cond = select i1 %9, i1 true, i1 %10
  %i.ac = extractelement <4 x float> %i.z, i64 2  ; 7 uses
  %i.ad = fcmp olt float %i.ac, f0x358637BD       ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ad
  %i.ae = icmp ult i32 %1, 3
  %or.cond5 = or i1 %i.ae, %or.cond3
  br i1 %or.cond5, label %bb.g, label %bb.k

bb.f:                                             ; preds = %bb.f, %.loopexit.new
  %.0282384 = phi ptr [ %2, %.loopexit.new ], [ %i.au, %bb.f ] ; 2 uses
  %i.af = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit.new ], [ %i.at, %bb.f ] ; 2 uses
  %i.ag = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit.new ], [ %i.as, %bb.f ] ; 2 uses
  %niter = phi i32 [ 0, %.loopexit.new ], [ %niter.next.1, %bb.f ]
  %i.ah = load <3 x float>, ptr %.0282384, align 4, !tbaa !12
  %i.ai = shufflevector <3 x float> %i.ah, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.aj = fcmp olt <4 x float> %i.ai, %i.ag
  %i.ak = fcmp ogt <4 x float> %i.ai, %i.af
  %i.al = select <4 x i1> %i.aj, <4 x float> %i.ai, <4 x float> %i.ag ; 2 uses
  %i.am = select <4 x i1> %i.ak, <4 x float> %i.ai, <4 x float> %i.af ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0282384, i64 %i.r ; 2 uses
  %i.ao = load <3 x float>, ptr %i.an, align 4, !tbaa !12
  %i.ap = shufflevector <3 x float> %i.ao, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.aq = fcmp olt <4 x float> %i.ap, %i.al
  %i.ar = fcmp ogt <4 x float> %i.ap, %i.am
  %i.as = select <4 x i1> %i.aq, <4 x float> %i.ap, <4 x float> %i.al ; 3 uses
  %i.at = select <4 x i1> %i.ar, <4 x float> %i.ap, <4 x float> %i.am ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.r ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !155

bb.g:                                             ; preds = %bb.e
  %i.av = extractelement <4 x float> %i.z, i64 0  ; 3 uses
  %i.aw = fcmp ogt float %i.av, f0x358637BD
  %i.ax = fcmp olt float %i.av, f0x7F7FFFFF
  %or.cond332 = and i1 %i.aw, %i.ax
  %.0308 = select i1 %or.cond332, float %i.av, float f0x7F7FFFFF ; 2 uses
  %i.ay = extractelement <4 x float> %i.z, i64 1  ; 3 uses
  %i.az = fcmp ogt float %i.ay, f0x358637BD
  %i.ba = fcmp olt float %i.ay, %.0308
  %or.cond333 = and i1 %i.az, %i.ba
  %.1309 = select i1 %or.cond333, float %i.ay, float %.0308 ; 2 uses
  %i.bb = fcmp ogt float %i.ac, f0x358637BD
  %i.bc = fcmp olt float %i.ac, %.1309
  %or.cond334 = select i1 %i.bb, i1 %i.bc, i1 false
  %.2310 = select i1 %or.cond334, float %i.ac, float %.1309 ; 2 uses
  %i.bd = fcmp oeq float %.2310, f0x7F7FFFFF
  br i1 %i.bd, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = fmul float %.2310, 5.000000e-02         ; 2 uses
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = select <2 x i1> %8, <2 x float> %i.bg, <2 x float> %i.ab ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0307 = phi float [ %i.ac, %bb.h ], [ %i.be, %bb.i ], [ f0x3C23D70A, %bb.g ] ; 2 uses
  %i.bi = phi <2 x float> [ %i.bh, %bb.h ], [ %i.bh, %bb.i ], [ splat (float f0x3C23D70A), %bb.g ] ; 2 uses
  %i.bj = extractelement <4 x float> %i.aa, i64 1
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  %i.bl = fsub float %i.bj, %i.bk
  %i.bm = extractelement <4 x float> %i.aa, i64 2
  %i.bn = fsub float %i.bm, %.0307
  %i.bo = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bp = insertelement <4 x float> %i.bo, float %.0307, i64 2
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.br = fadd <4 x float> %i.aa, %i.bq
  %i.bs = fsub <4 x float> %i.aa, %i.bq
  %i.bt = shufflevector <4 x float> %i.br, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %.sink.split

bb.k:                                             ; preds = %bb.e
  store <2 x float> %i.ab, ptr %7, align 4, !tbaa !12
  store float %i.ac, ptr %i.q, align 4, !tbaa !12
  %i.bu = fdiv <2 x float> splat (float 1.000000e+00), %i.ab ; 2 uses
  %i.bv = fdiv float 1.000000e+00, %i.ac          ; 2 uses
  %i.bw = shufflevector <4 x float> %i.aa, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.bx = shufflevector <2 x float> %i.bu, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.by = insertelement <3 x float> %i.bx, float %i.bv, i64 2
  %i.bz = fmul <3 x float> %i.bw, %i.by           ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cd = shufflevector <3 x float> %i.bz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ce = shufflevector <3 x float> %i.bz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <3 x float> %i.bz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = insertelement <2 x float> poison, float %6, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %i.ci = load i32, ptr %4, align 4, !tbaa !41    ; 3 uses
  %.not395 = icmp eq i32 %i.ci, 0
  br i1 %.not395, label %._crit_edge, label %.lr.ph393.preheader

.lr.ph393.preheader:                              ; preds = %bb.l
  %wide.trip.count416 = zext i32 %i.ci to i64
  br label %.lr.ph393

bb.m:                                             ; preds = %bb.k, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %.1283390 = phi ptr [ %2, %bb.k ], [ %i.cj, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ] ; 3 uses
  %.0301389 = phi i32 [ 0, %bb.k ], [ %i.fr, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.1283390, i64 %i.r
  %i.ck = load <2 x float>, ptr %.1283390, align 4, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %.1283390, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = fmul <2 x float> %i.bu, %i.ck           ; 5 uses
  %i.co = fmul float %i.bv, %i.cm                 ; 4 uses
  %i.cp = load i32, ptr %4, align 4, !tbaa !41    ; 6 uses
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i32 %i.cp to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load <2 x float>, ptr %i.cq, align 4, !tbaa !12 ; 3 uses
  %i.ct = load float, ptr %i.cr, align 4, !tbaa !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !12 ; 2 uses
  %i.cw = fsub float %i.cv, %i.co
  %i.cx = tail call noundef float @llvm.fabs.f32(float %i.cw)
  %i.cy = insertelement <2 x float> %i.cs, float %i.ct, i64 1
  %i.cz = fsub <2 x float> %i.cy, %i.cn
  %i.da = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cz)
  %i.db = fcmp uge <2 x float> %i.da, %i.ch
  %i.dc = bitcast <2 x i1> %i.db to i2
  %i.dd = icmp eq i2 %i.dc, 0
  %i.de = fcmp olt float %i.cx, %6
  %or.cond336 = and i1 %i.dd, %i.de
  br i1 %or.cond336, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.df = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dg = insertelement <2 x float> poison, float %i.co, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.cv, i64 1
  %i.di = fsub <2 x float> %i.dh, %i.cd           ; 2 uses
  %i.dj = shufflevector <2 x float> %i.cn, <2 x float> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.dk = fsub <2 x float> %i.dj, %i.ce           ; 2 uses
  %i.dl = shufflevector <2 x float> %i.cn, <2 x float> %i.cs, <2 x i32> <i32 1, i32 3>
  %i.dm = fsub <2 x float> %i.dl, %i.cf           ; 2 uses
  %i.dn = fmul <2 x float> %i.dm, %i.dm
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dk, <2 x float> %i.dn)
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.di, <2 x float> %i.do) ; 2 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0
  %i.dr = extractelement <2 x float> %i.dp, i64 1
  %i.ds = fcmp ogt float %i.dq, %i.dr
  br i1 %i.ds, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store <2 x float> %i.cn, ptr %i.cq, align 4, !tbaa !12
  store float %i.co, ptr %i.dt, align 4, !tbaa !12
  br label %.thread

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond407.not, label %.thread.thread, label %.lr.ph, !llvm.loop !156

.thread:                                          ; preds = %bb.m, %bb.o, %bb.n
  %.0297375 = phi i32 [ %i.df, %bb.n ], [ %i.df, %bb.o ], [ 0, %bb.m ] ; 3 uses
  %i.du = icmp eq i32 %.0297375, %i.cp
  br i1 %i.du, label %.thread.thread, label %bb.q

.thread.thread:                                   ; preds = %bb.p, %.thread
  %.0297375454 = phi i32 [ %.0297375, %.thread ], [ %i.cp, %bb.p ]
  %i.dv = zext i32 %i.cp to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dv ; 2 uses
  store <2 x float> %i.cn, ptr %i.dw, align 4, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store float %i.co, ptr %i.dx, align 4, !tbaa !12
  %i.dy = add i32 %i.cp, 1
  store i32 %i.dy, ptr %4, align 4, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %.thread.thread, %.thread
  %.0297375453 = phi i32 [ %.0297375454, %.thread.thread ], [ %.0297375, %.thread ]
  %i.dz = load i32, ptr %i.b, align 4, !tbaa !62  ; 7 uses
  %i.ea = load i32, ptr %i.ca, align 8, !tbaa !63
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.r, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp eq i32 %i.dz, 0
  %i.ec = shl nsw i32 %i.dz, 1
  %i.ed = select i1 %.not.i.i, i32 1, i32 %i.ec   ; 4 uses
  %i.ee = icmp slt i32 %i.dz, %i.ed
  br i1 %i.ee, label %bb.s, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = sext i32 %i.ed to i64
  %i.eg = shl nsw i64 %i.ef, 2
  %i.eh = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.eg, i32 noundef 16)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !62
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ei = phi i32 [ %.pre.i, %bb.t ], [ %i.dz, %bb.s ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.eh, %bb.t ], [ null, %bb.s ] ; 8 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  %i.ek = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 9 uses
  br i1 %i.ej, label %.lr.ph.i.i.i346, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342

.lr.ph.i.i.i346:                                  ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.el = ptrtoaddr ptr %i.ek to i64
  %.0.i.i.i524 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i347 = zext nneg i32 %i.ei to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ei, 8
  %i.em = sub i64 %i.el, %.0.i.i.i524
  %diff.check = icmp ugt i64 %i.em, -32
  %or.cond526 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond526, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i346
  %n.vec = and i64 %wide.trip.count.i.i.i347, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load = load <4 x i32>, ptr %i.eo, align 4, !tbaa !41
  %wide.load525 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x i32> %wide.load, ptr %i.en, align 4, !tbaa !41
  store <4 x i32> %wide.load525, ptr %i.eq, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i347
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i346, %middle.block
  %indvars.iv.i.i.i348.ph = phi i64 [ 0, %.lr.ph.i.i.i346 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter542 = and i64 %wide.trip.count.i.i.i347, 3 ; 2 uses
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0
  br i1 %lcmp.mod543.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i348.prol = phi i64 [ %indvars.iv.next.i.i.i349.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i348.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i348.prol
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i348.prol
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !41
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349.prol = add nuw nsw i64 %indvars.iv.i.i.i348.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter542
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !158

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i348.unr = phi i64 [ %indvars.iv.i.i.i348.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i349.prol, %scalar.ph.prol ]
  %i.ev = sub nsw i64 %indvars.iv.i.i.i348.ph, %wide.trip.count.i.i.i347
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i348 = phi i64 [ %indvars.iv.next.i.i.i349.3, %scalar.ph ], [ %indvars.iv.i.i.i348.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i348
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i348
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !41
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349 = add nuw nsw i64 %indvars.iv.i.i.i348, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i349
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next.i.i.i349
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !41
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349.1 = add nuw nsw i64 %indvars.iv.i.i.i348, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i349.1
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next.i.i.i349.1
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349.2 = add nuw nsw i64 %indvars.iv.i.i.i348, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i349.2
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next.i.i.i349.2
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !41
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349.3 = add nuw nsw i64 %indvars.iv.i.i.i348, 4 ; 2 uses
  %exitcond.not.i.i.i350.3 = icmp eq i64 %indvars.iv.next.i.i.i349.3, %wide.trip.count.i.i.i347
  br i1 %exitcond.not.i.i.i350.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344, label %scalar.ph, !llvm.loop !159

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i343 = icmp eq ptr %i.ek, null
  br i1 %.not.i5.i.i343, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342
  %i.fj = load i8, ptr %i.cc, align 8, !tbaa !61, !range !36, !noundef !37
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ek)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344
  %.pre2.pre.i = load i32, ptr %i.b, align 4, !tbaa !62
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345: ; preds = %bb.v, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.v ], [ %i.ei, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342 ]
  store i8 1, ptr %i.cc, align 8, !tbaa !61
  store ptr %.0.i.i.i, ptr %i.cb, align 8, !tbaa !60
  store i32 %i.ed, ptr %i.ca, align 8, !tbaa !63
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %bb.q, %bb.r, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345
  %i.fl = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345 ], [ %i.dz, %bb.r ], [ %i.dz, %bb.q ]
  %i.fm = load ptr, ptr %i.cb, align 8, !tbaa !60
  %i.fn = sext i32 %i.fl to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fn
  store i32 %.0297375453, ptr %i.fo, align 4, !tbaa !41
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !62
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.b, align 4, !tbaa !62
  %i.fr = add nuw i32 %.0301389, 1                ; 2 uses
  %exitcond408.not = icmp eq i32 %i.fr, %1
  br i1 %exitcond408.not, label %bb.l, label %bb.m, !llvm.loop !160

._crit_edge:                                      ; preds = %.lr.ph393, %bb.l
  %.sroa.10425.0 = phi float [ f0x7F7FFFFF, %bb.l ], [ %spec.store.select370.2, %.lr.ph393 ] ; 2 uses
  %.sroa.10.0 = phi float [ f0xFF7FFFFF, %bb.l ], [ %spec.store.select371.2, %.lr.ph393 ]
  %i.fs = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.l ], [ %i.ge, %.lr.ph393 ]
  %i.ft = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.l ], [ %i.gd, %.lr.ph393 ] ; 2 uses
  %i.fu = fsub <2 x float> %i.fs, %i.ft           ; 5 uses
  %11 = fsub float %.sroa.10.0, %.sroa.10425.0    ; 6 uses
  %12 = fcmp olt <2 x float> %i.fu, splat (float f0x358637BD) ; 3 uses
  %13 = extractelement <2 x i1> %12, i64 0
  %14 = extractelement <2 x i1> %12, i64 1
  %or.cond7 = select i1 %13, i1 true, i1 %14
  %i.fv = fcmp olt float %11, f0x358637BD         ; 2 uses
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.fv
  %i.fw = icmp ult i32 %i.ci, 3
  %or.cond337 = or i1 %i.fw, %or.cond9
  br i1 %or.cond337, label %bb.w, label %bb.z

.lr.ph393:                                        ; preds = %.lr.ph393.preheader, %.lr.ph393
  %.sroa.10425.1 = phi float [ f0x7F7FFFFF, %.lr.ph393.preheader ], [ %spec.store.select370.2, %.lr.ph393 ] ; 2 uses
  %.sroa.10.1 = phi float [ f0xFF7FFFFF, %.lr.ph393.preheader ], [ %spec.store.select371.2, %.lr.ph393 ] ; 2 uses
  %indvars.iv413 = phi i64 [ 0, %.lr.ph393.preheader ], [ %indvars.iv.next414, %.lr.ph393 ] ; 2 uses
  %i.fx = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph393.preheader ], [ %i.ge, %.lr.ph393 ] ; 2 uses
  %i.fy = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph393.preheader ], [ %i.gd, %.lr.ph393 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv413 ; 2 uses
  %i.ga = load <2 x float>, ptr %i.fz, align 4, !tbaa !12 ; 4 uses
  %i.gb = fcmp olt <2 x float> %i.ga, %i.fy
  %i.gc = fcmp ogt <2 x float> %i.ga, %i.fx
  %i.gd = select <2 x i1> %i.gb, <2 x float> %i.ga, <2 x float> %i.fy ; 2 uses
  %i.ge = select <2 x i1> %i.gc, <2 x float> %i.ga, <2 x float> %i.fx ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !12 ; 4 uses
  %i.gh = fcmp olt float %i.gg, %.sroa.10425.1
  %spec.store.select370.2 = select i1 %i.gh, float %i.gg, float %.sroa.10425.1 ; 2 uses
  %i.gi = fcmp ogt float %i.gg, %.sroa.10.1
  %spec.store.select371.2 = select i1 %i.gi, float %i.gg, float %.sroa.10.1 ; 2 uses
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge, label %.lr.ph393, !llvm.loop !161

bb.w:                                             ; preds = %._crit_edge
  %i.gj = extractelement <2 x float> %i.fu, i64 0 ; 3 uses
  %i.gk = extractelement <2 x float> %i.fu, i64 1 ; 3 uses
  %i.gl = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gm = insertelement <4 x float> %i.gl, float %11, i64 2
  %i.gn = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.go = insertelement <4 x float> %i.gn, float %.sroa.10425.0, i64 2
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> splat (float 5.000000e-01), <4 x float> %i.go) ; 4 uses
  %i.gq = fcmp oge float %i.gj, f0x358637BD
  %i.gr = fcmp olt float %i.gj, f0x7F7FFFFF
  %or.cond338 = and i1 %i.gq, %i.gr
  %.0285 = select i1 %or.cond338, float %i.gj, float f0x7F7FFFFF ; 2 uses
  %i.gs = fcmp oge float %i.gk, f0x358637BD
  %i.gt = fcmp olt float %i.gk, %.0285
  %or.cond339 = and i1 %i.gs, %i.gt
  %.1286 = select i1 %or.cond339, float %i.gk, float %.0285 ; 2 uses
  %i.gu = fcmp oge float %11, f0x358637BD
  %i.gv = fcmp olt float %11, %.1286
  %or.cond340 = select i1 %i.gu, i1 %i.gv, i1 false
  %.2287 = select i1 %or.cond340, float %11, float %.1286 ; 2 uses
  %i.gw = fcmp oeq float %.2287, f0x7F7FFFFF
  br i1 %i.gw, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gx = fmul float %.2287, 5.000000e-02         ; 2 uses
  %i.gy = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = select <2 x i1> %12, <2 x float> %i.gz, <2 x float> %i.fu ; 2 uses
  br i1 %i.fv, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.x, %bb.y
  %.0288 = phi float [ %11, %bb.x ], [ %i.gx, %bb.y ], [ f0x3C23D70A, %bb.w ] ; 2 uses
  %i.hb = phi <2 x float> [ %i.ha, %bb.x ], [ %i.ha, %bb.y ], [ splat (float f0x3C23D70A), %bb.w ] ; 2 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 1
  %i.hd = extractelement <4 x float> %i.gp, i64 1
  %i.he = fsub float %i.hd, %i.hc
  %i.hf = extractelement <4 x float> %i.gp, i64 2
  %i.hg = fsub float %i.hf, %.0288
  %i.hh = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.hi = insertelement <4 x float> %i.hh, float %.0288, i64 2 ; 2 uses
  %i.hj = fadd <4 x float> %i.gp, %i.hi
  %i.hk = fsub <4 x float> %i.gp, %i.hi
  %i.hl = shufflevector <4 x float> %i.hj, <4 x float> %i.hk, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.j
  %.sink512 = phi float [ %i.bl, %bb.j ], [ %i.he, %.critedge ] ; 4 uses
  %.sink510 = phi float [ %i.bn, %bb.j ], [ %i.hg, %.critedge ] ; 4 uses
  %i.hm = phi <4 x float> [ %i.bt, %bb.j ], [ %i.hl, %.critedge ] ; 4 uses
  %i.hn = extractelement <4 x float> %i.hm, i64 3 ; 4 uses
  store float %i.hn, ptr %5, align 4, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %.sink512, ptr %i.ho, align 4, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sink510, ptr %i.hp, align 4, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hr = extractelement <4 x float> %i.hm, i64 0 ; 4 uses
  store float %i.hr, ptr %i.hq, align 4, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sink512, ptr %i.hs, align 4, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %.sink510, ptr %i.ht, align 4, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %i.hr, ptr %i.hu, align 4, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.hw = extractelement <4 x float> %i.hm, i64 1 ; 4 uses
  store float %i.hw, ptr %i.hv, align 4, !tbaa !12
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %.sink510, ptr %i.hx, align 4, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float %i.hn, ptr %i.hy, align 4, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 52
  store float %i.hw, ptr %i.hz, align 4, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %.sink510, ptr %i.ia, align 4, !tbaa !12
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float %i.hn, ptr %i.ib, align 4, !tbaa !12
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 68
  store float %.sink512, ptr %i.ic, align 4, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ie = extractelement <4 x float> %i.hm, i64 2 ; 4 uses
  store float %i.ie, ptr %i.id, align 4, !tbaa !12
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 80
  store float %i.hr, ptr %i.if, align 4, !tbaa !12
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 84
  store float %.sink512, ptr %i.ig, align 4, !tbaa !12
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %i.ie, ptr %i.ih, align 4, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 96
  store float %i.hr, ptr %i.ii, align 4, !tbaa !12
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 100
  store float %i.hw, ptr %i.ij, align 4, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 104
  store float %i.ie, ptr %i.ik, align 4, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 112
  store float %i.hn, ptr %i.il, align 4, !tbaa !12
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 116
  store float %i.hw, ptr %i.im, align 4, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 120
  store float %i.ie, ptr %i.in, align 4, !tbaa !12
  store i32 8, ptr %4, align 4, !tbaa !41
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %._crit_edge, %bb.a
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.btAlignedObjectArray.6, align 8 ; 8 uses
  %8 = alloca %class.btAlignedObjectArray.8, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62   ; 5 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.loopexit75.thread

.loopexit75.thread:                               ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 4, !tbaa !62
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
          to label %.loopexit75 unwind label %bb.d ; 5 uses

.loopexit75:                                      ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !61
  store ptr %i.j, ptr %i.b, align 8, !tbaa !60
  store i32 %i.f, ptr %i.d, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !41
  %.pre = load i32, ptr %i.e, align 4, !tbaa !62
  %i.k = icmp sgt i32 %.pre, 0
  store i32 %i.f, ptr %i.c, align 4, !tbaa !62
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit75
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.o, ptr %i.p, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !62
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge, !llvm.loop !162

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge:                                      ; preds = %bb.c, %.loopexit75.thread, %.loopexit75
  %i.u = phi ptr [ null, %.loopexit75.thread ], [ %i.j, %.loopexit75 ], [ %i.j, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i8 1, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !67
  %i.z = icmp sgt i32 %2, 0
  %i.aa = zext i32 %2 to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  br i1 %i.z, label %bb.e, label %.loopexit.thread

bb.e:                                             ; preds = %._crit_edge
  %i.ac = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ab, i32 noundef 16)
          to label %.loopexit unwind label %bb.h  ; 5 uses

.loopexit:                                        ; preds = %bb.e
  store i8 1, ptr %i.v, align 8, !tbaa !69
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !68
  store i32 %2, ptr %i.y, align 8, !tbaa !67
  store i32 %2, ptr %i.x, align 4, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  store i32 0, ptr %4, align 4, !tbaa !41
  %i.ad = icmp sgt i32 %6, 0
  br i1 %i.ad, label %.lr.ph83, label %._crit_edge84

.loopexit.thread:                                 ; preds = %._crit_edge
  store i32 %2, ptr %i.x, align 4, !tbaa !66
  %i.ae = icmp eq i32 %2, 0
  tail call void @llvm.assume(i1 %i.ae)
  store i32 0, ptr %4, align 4, !tbaa !41
  %i.af = icmp sgt i32 %6, 0
  br i1 %i.af, label %.lr.ph83, label %_ZN20btAlignedObjectArrayIjED2Ev.exit

.lr.ph83:                                         ; preds = %.loopexit.thread, %.loopexit
  %i.ag = phi ptr [ null, %.loopexit.thread ], [ %i.ac, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph83, %bb.l
  %indvars.iv89 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next90, %bb.l ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv89 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !41
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
end_hunk_0
