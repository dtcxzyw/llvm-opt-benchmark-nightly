Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_fma?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  br label %bb.bp

.critedge97:                                      ; preds = %bb.ah, %_ZNK4ncnn3Mat5emptyEv.exit
  %i.hr = load ptr, ptr %i.fo, align 8, !tbaa !57 ; 2 uses
  %.not.i152 = icmp eq ptr %i.hr, null
  br i1 %.not.i152, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %.critedge97
  %i.hs = atomicrmw add ptr %i.hr, i32 -1 acq_rel, align 4
  %i.ht = icmp eq i32 %i.hs, 1
  br i1 %i.ht, label %bb.bk, label %_ZN4ncnn3MatD2Ev.exit

bb.bk:                                            ; preds = %bb.bj
  %i.hu = load ptr, ptr %i.fp, align 8, !tbaa !58 ; 3 uses
  %.not3.i153 = icmp eq ptr %i.hu, null
  %i.hv = load ptr, ptr %6, align 8, !tbaa !52    ; 3 uses
  br i1 %.not3.i153, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !60
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8
  invoke void %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef %i.hv)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bo, !inline_history !0

bb.bm:                                            ; preds = %bb.bk
  %.not.i156 = icmp eq ptr %i.hv, null
  br i1 %.not.i156, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @free(ptr noundef nonnull %i.hv) #7
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bo:                                            ; preds = %bb.bl
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bj, %.critedge97, %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  br label %bb.bp

bb.bp:                                            ; preds = %bb.ap, %bb.aq, %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit101, %_ZN4ncnn3MatD2Ev.exit102, %_ZN4ncnn3MatD2Ev.exit103
  %.7 = phi i32 [ -100, %_ZN4ncnn3MatD2Ev.exit ], [ -100, %_ZN4ncnn3MatD2Ev.exit102 ], [ -100, %_ZN4ncnn3MatD2Ev.exit101 ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ -100, %_ZN4ncnn3MatD2Ev.exit103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL7softmaxEPfii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = mul nsw i32 %2, %1                       ; 22 uses
  %i.b = icmp sgt i32 %i.a, 7                     ; 3 uses
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader215

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -8                     ; 2 uses
  %i.d = lshr i32 %i.c, 3
  %i.e = add nuw nsw i32 %i.d, 1                  ; 2 uses
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i32 %i.c, 24
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.e, 1073741820
  br label %.lr.ph

.preheader215.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader215.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader215.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0218.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.x, %.preheader215.loopexit.unr-lcssa ]
  %.0193216.epil.init = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader ], [ %i.w, %.preheader215.loopexit.unr-lcssa ]
  %lcmp.mod443 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod443)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0218.epil = phi ptr [ %i.i, %.lr.ph.epil ], [ %.0218.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0193216.epil = phi <8 x float> [ %i.h, %.lr.ph.epil ], [ %.0193216.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.g = load <8 x float>, ptr %.0218.epil, align 1, !tbaa !61
  %i.h = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0193216.epil, <8 x float> nofpclass(nan inf) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0218.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader215.loopexit, label %.lr.ph.epil, !llvm.loop !81

.preheader215.loopexit:                           ; preds = %.lr.ph.epil, %.preheader215.loopexit.unr-lcssa
  %.lcssa440 = phi <8 x float> [ %i.w, %.preheader215.loopexit.unr-lcssa ], [ %i.h, %.lr.ph.epil ]
  %.lcssa439 = phi ptr [ %i.x, %.preheader215.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  %i.j = and i32 %i.a, 2147483640
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.loopexit, %bb.a
  %.0193.lcssa = phi <8 x float> [ splat (float f0xFF7FFFFF), %bb.a ], [ %.lcssa440, %.preheader215.loopexit ] ; 5 uses
  %.081.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %.preheader215.loopexit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa439, %.preheader215.loopexit ] ; 2 uses
  %i.k = or disjoint i32 %.081.lcssa, 3
  %i.l = icmp slt i32 %i.k, %i.a
  br i1 %i.l, label %.lr.ph224, label %.preheader214

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0218 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ] ; 5 uses
  %.0193216 = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = load <8 x float>, ptr %.0218, align 1, !tbaa !61
  %i.n = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0193216, <8 x float> nofpclass(nan inf) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %.0218, i64 32
  %i.p = load <8 x float>, ptr %i.o, align 1, !tbaa !61
  %i.q = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.n, <8 x float> nofpclass(nan inf) %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %.0218, i64 64
  %i.s = load <8 x float>, ptr %i.r, align 1, !tbaa !61
  %i.t = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.q, <8 x float> nofpclass(nan inf) %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %.0218, i64 96
  %i.v = load <8 x float>, ptr %i.u, align 1, !tbaa !61
  %i.w = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.t, <8 x float> nofpclass(nan inf) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0218, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader215.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1

.preheader214:                                    ; preds = %.lr.ph224, %.preheader215
  %.0196.lcssa = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader215 ], [ %i.bb, %.lr.ph224 ] ; 4 uses
  %.182.lcssa = phi i32 [ %.081.lcssa, %.preheader215 ], [ %i.bd, %.lr.ph224 ] ; 5 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader215 ], [ %i.bc, %.lr.ph224 ] ; 5 uses
  %i.y = icmp slt i32 %.182.lcssa, %i.a
  br i1 %i.y, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader214
  %i.z = xor i32 %.182.lcssa, -1
  %i.aa = add i32 %i.a, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.aa, 7
  br i1 %min.iters.check, label %.lr.ph231.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check315 = icmp ult i32 %i.aa, 31
  br i1 %min.iters.check315, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, 8589934560              ; 5 uses
  %i.ae = shl nuw nsw i64 %n.vec, 2
  %i.af = getelementptr i8, ptr %.1.lcssa, i64 %i.ae
  %i.ag = trunc i64 %n.vec to i32
  %i.ah = add i32 %.182.lcssa, %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi316 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi317 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi318 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ap, %vector.body ]
  %i.ai = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1.lcssa, i64 %i.ai ; 4 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !65
  %wide.load319 = load <8 x float>, ptr %i.aj, align 4, !tbaa !65
  %wide.load320 = load <8 x float>, ptr %i.ak, align 4, !tbaa !65
  %wide.load321 = load <8 x float>, ptr %i.al, align 4, !tbaa !65
  %i.am = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %wide.load) ; 2 uses
  %i.an = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi316, <8 x float> %wide.load319) ; 2 uses
  %i.ao = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi317, <8 x float> %wide.load320) ; 2 uses
  %i.ap = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi318, <8 x float> %wide.load321) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.am, <8 x float> %i.an)
  %rdx.minmax.select323 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.ao)
  %rdx.minmax.select325 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select323, <8 x float> %i.ap)
  %i.ar = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select325) ; 3 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph231.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.ar, %vec.epilog.iter.check ], [ f0xFF7FFFFF, %vector.main.loop.iter.check ]
  %n.vec327 = and i64 %i.ac, 8589934584           ; 4 uses
  %i.as = shl nuw nsw i64 %n.vec327, 2
  %i.at = getelementptr i8, ptr %.1.lcssa, i64 %i.as
  %i.au = trunc i64 %n.vec327 to i32
  %i.av = add i32 %.182.lcssa, %i.au
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index328 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next332, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi329 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.ax, %vec.epilog.vector.body ]
  %i.aw = shl i64 %index328, 2
  %next.gep330 = getelementptr i8, ptr %.1.lcssa, i64 %i.aw
  %wide.load331 = load <8 x float>, ptr %next.gep330, align 4, !tbaa !65
  %i.ax = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi329, <8 x float> %wide.load331) ; 2 uses
  %index.next332 = add nuw i64 %index328, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next332, %n.vec327
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.az = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ax) ; 2 uses
  %cmp.n333 = icmp eq i64 %i.ac, %n.vec327
  br i1 %cmp.n333, label %._crit_edge, label %.lr.ph231.preheader

.lr.ph231.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2230.ph = phi ptr [ %.1.lcssa, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.283229.ph = phi i32 [ %.182.lcssa, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.0205228.ph = phi float [ f0xFF7FFFFF, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph231

.lr.ph224:                                        ; preds = %.preheader215, %.lr.ph224
  %.1223 = phi ptr [ %i.bc, %.lr.ph224 ], [ %.0.lcssa, %.preheader215 ] ; 2 uses
  %.182222 = phi i32 [ %i.bd, %.lr.ph224 ], [ %.081.lcssa, %.preheader215 ]
  %.0196221 = phi <4 x float> [ %i.bb, %.lr.ph224 ], [ splat (float f0xFF7FFFFF), %.preheader215 ]
  %i.ba = load <4 x float>, ptr %.1223, align 1, !tbaa !61
  %i.bb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196221, <4 x float> nofpclass(nan inf) %i.ba) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1223, i64 16 ; 2 uses
  %i.bd = add nuw nsw i32 %.182222, 4             ; 3 uses
  %i.be = or disjoint i32 %i.bd, 3
  %i.bf = icmp slt i32 %i.be, %i.a
  br i1 %i.bf, label %.lr.ph224, label %.preheader214, !llvm.loop !2

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %.lr.ph231
  %.2230 = phi ptr [ %i.bg, %.lr.ph231 ], [ %.2230.ph, %.lr.ph231.preheader ] ; 2 uses
  %.283229 = phi i32 [ %i.bi, %.lr.ph231 ], [ %.283229.ph, %.lr.ph231.preheader ]
  %.0205228 = phi float [ %.sroa.speculated126, %.lr.ph231 ], [ %.0205228.ph, %.lr.ph231.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.2230, i64 4
  %i.bh = load float, ptr %.2230, align 4, !tbaa !65
  %.sroa.speculated126 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0205228, float %i.bh) ; 2 uses
  %i.bi = add nuw nsw i32 %.283229, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph231, !llvm.loop !84

._crit_edge:                                      ; preds = %.lr.ph231, %middle.block, %vec.epilog.middle.block, %.preheader214
  %.0205.lcssa = phi float [ f0xFF7FFFFF, %.preheader214 ], [ %i.az, %vec.epilog.middle.block ], [ %i.ar, %middle.block ], [ %.sroa.speculated126, %.lr.ph231 ] ; 4 uses
  %i.bj = icmp eq i32 %2, 4                       ; 2 uses
  br i1 %i.bj, label %.thread, label %bb.b

.thread:                                          ; preds = %._crit_edge
  %i.bk = shufflevector <8 x float> %.0193.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bl = shufflevector <8 x float> %.0193.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa, <4 x float> nofpclass(nan inf) %i.bk)
  %i.bn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bm, <4 x float> nofpclass(nan inf) %i.bl) ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.bp = icmp eq i32 %2, 1
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = shufflevector <8 x float> %.0193.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.br = shufflevector <8 x float> %.0193.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bq, <4 x float> nofpclass(nan inf) %i.br) ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bs, <4 x float> nofpclass(nan inf) %i.bt) ; 2 uses
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.bu, <4 x float> nofpclass(nan inf) %i.bv)
  %i.bx = extractelement <4 x float> %i.bw, i64 0 ; 2 uses
  %i.by = fcmp fast olt float %.0205.lcssa, %i.bx
  %.sroa.speculated119 = select i1 %i.by, float %i.bx, float %.0205.lcssa ; 2 uses
  %i.bz = shufflevector <4 x float> %.0196.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ca = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa, <4 x float> nofpclass(nan inf) %i.bz) ; 2 uses
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) %i.cb)
  %i.cd = extractelement <4 x float> %i.cc, i64 0 ; 2 uses
  %i.ce = fcmp fast olt float %.sroa.speculated119, %i.cd
  %.sroa.speculated = select i1 %i.ce, float %i.cd, float %.sroa.speculated119 ; 2 uses
  %i.cf = insertelement <4 x float> poison, float %.sroa.speculated, i64 0 ; 2 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = shufflevector <4 x float> %i.cf, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.ci = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.thread ]
  %.1206 = phi nsz float [ %.sroa.speculated, %bb.c ], [ %.0205.lcssa, %bb.b ], [ %.0205.lcssa, %.thread ] ; 3 uses
  %.2198 = phi nsz <4 x float> [ %i.cg, %bb.c ], [ %.0196.lcssa, %bb.b ], [ %i.bn, %.thread ]
  %.2195 = phi nsz <8 x float> [ %i.ch, %bb.c ], [ %.0193.lcssa, %bb.b ], [ %i.bo, %.thread ]
  br i1 %i.b, label %.lr.ph237, label %.preheader213

.preheader213.loopexit:                           ; preds = %.lr.ph237
  %i.cj = and i32 %i.a, 2147483640
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213.loopexit, %bb.d
  %.0202.lcssa = phi <8 x float> [ zeroinitializer, %bb.d ], [ %i.dl, %.preheader213.loopexit ] ; 5 uses
  %.089.lcssa = phi i32 [ 0, %bb.d ], [ %i.cj, %.preheader213.loopexit ] ; 3 uses
  %.086.lcssa = phi ptr [ %0, %bb.d ], [ %i.dm, %.preheader213.loopexit ] ; 2 uses
  %i.ck = or disjoint i32 %.089.lcssa, 3
  %i.cl = icmp slt i32 %i.ck, %i.a
  br i1 %i.cl, label %.lr.ph244, label %.preheader212

.lr.ph237:                                        ; preds = %bb.d, %.lr.ph237
  %.086235 = phi ptr [ %i.dm, %.lr.ph237 ], [ %0, %bb.d ] ; 3 uses
  %.089234 = phi i32 [ %i.dn, %.lr.ph237 ], [ 0, %bb.d ]
  %.0202233 = phi <8 x float> [ %i.dl, %.lr.ph237 ], [ zeroinitializer, %bb.d ]
  %i.cm = load <8 x float>, ptr %.086235, align 1, !tbaa !61
  %i.cn = fsub fast <8 x float> %i.cm, %.2195
  %i.co = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0x42B0C0A5))
  %i.cp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.co, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cq, i32 1) ; 2 uses
  %i.cs = fcmp fast ogt <8 x float> %i.cr, %i.cq
  %i.ct = select <8 x i1> %i.cs, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cu = fsub fast <8 x float> %i.cr, %i.ct      ; 2 uses
  %i.cv = fneg fast <8 x float> %i.cu             ; 2 uses
  %i.cw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cv, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cp)
  %i.cx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cv, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cw) ; 8 uses
  %i.cy = fmul fast <8 x float> %i.cx, %i.cx
  %i.cz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cx, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.da = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cz, <8 x float> nofpclass(nan inf) %i.cx, <8 x float> splat (float f0x3C088908))
  %i.db = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.da, <8 x float> nofpclass(nan inf) %i.cx, <8 x float> splat (float f0x3D2AA9C1))
  %i.dc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.db, <8 x float> nofpclass(nan inf) %i.cx, <8 x float> splat (float f0x3E2AAAAA))
  %i.dd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dc, <8 x float> nofpclass(nan inf) %i.cx, <8 x float> splat (float 5.000000e-01))
  %i.de = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dd, <8 x float> nofpclass(nan inf) %i.cy, <8 x float> nofpclass(nan inf) %i.cx)
  %i.df = fadd fast <8 x float> %i.de, splat (float 1.000000e+00)
  %i.dg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cu)
  %i.dh = shl <8 x i32> %i.dg, splat (i32 23)
  %i.di = add <8 x i32> %i.dh, splat (i32 1065353216)
  %i.dj = bitcast <8 x i32> %i.di to <8 x float>
  %i.dk = fmul fast <8 x float> %i.df, %i.dj      ; 2 uses
  store <8 x float> %i.dk, ptr %.086235, align 1, !tbaa !61
  %i.dl = fadd fast <8 x float> %i.dk, %.0202233  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.086235, i64 32 ; 2 uses
  %i.dn = add nuw nsw i32 %.089234, 8             ; 2 uses
  %i.do = or disjoint i32 %i.dn, 7
  %i.dp = icmp slt i32 %i.do, %i.a
  br i1 %i.dp, label %.lr.ph237, label %.preheader213.loopexit, !llvm.loop !3

.preheader212:                                    ; preds = %.lr.ph244, %.preheader213
  %.0199.lcssa = phi <4 x float> [ zeroinitializer, %.preheader213 ], [ %i.ge, %.lr.ph244 ] ; 3 uses
  %.190.lcssa = phi i32 [ %.089.lcssa, %.preheader213 ], [ %i.gg, %.lr.ph244 ] ; 5 uses
  %.187.lcssa = phi ptr [ %.086.lcssa, %.preheader213 ], [ %i.gf, %.lr.ph244 ] ; 5 uses
  %i.dq = icmp slt i32 %.190.lcssa, %i.a
  br i1 %i.dq, label %iter.check363, label %._crit_edge252

iter.check363:                                    ; preds = %.preheader212
  %i.dr = xor i32 %.190.lcssa, -1
  %i.ds = add i32 %i.a, %i.dr                     ; 3 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nuw nsw i64 %i.dt, 1                ; 5 uses
  %min.iters.check337.a = icmp ult i32 %i.ds, 3
  br i1 %min.iters.check337.a, label %.lr.ph251.preheader, label %vector.main.loop.iter.check338

vector.main.loop.iter.check338:                   ; preds = %iter.check363
  %min.iters.check339 = icmp ult i32 %i.ds, 31
  br i1 %min.iters.check339, label %vec.epilog.ph367, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check338
  %i.dv = and i64 %i.du, 28
  %n.vec341 = and i64 %i.du, 8589934560           ; 5 uses
  %i.dw = shl nuw nsw i64 %n.vec341, 2
  %i.dx = getelementptr i8, ptr %.187.lcssa, i64 %i.dw
  %i.dy = trunc i64 %n.vec341 to i32
  %i.dz = add i32 %.190.lcssa, %i.dy
  %broadcast.splatinsert342 = insertelement <8 x float> poison, float %.1206, i64 0
  %broadcast.splat343 = shufflevector <8 x float> %broadcast.splatinsert342, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body344

vector.body344:                                   ; preds = %vector.ph340, %vector.body344
  %index345 = phi i64 [ 0, %vector.ph340 ], [ %index.next355, %vector.body344 ] ; 2 uses
  %vec.phi346.a = phi <8 x float> [ zeroinitializer, %vector.ph340 ], [ %i.em, %vector.body344 ]
  %vec.phi347.a = phi <8 x float> [ zeroinitializer, %vector.ph340 ], [ %i.en, %vector.body344 ]
  %vec.phi348 = phi <8 x float> [ zeroinitializer, %vector.ph340 ], [ %i.eo, %vector.body344 ]
  %vec.phi349 = phi <8 x float> [ zeroinitializer, %vector.ph340 ], [ %i.ep, %vector.body344 ]
  %i.ea = shl i64 %index345, 2
  %next.gep350 = getelementptr i8, ptr %.187.lcssa, i64 %i.ea ; 5 uses
  %i.eb = getelementptr i8, ptr %next.gep350, i64 32 ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep350, i64 64 ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep350, i64 96 ; 2 uses
  %wide.load351.a = load <8 x float>, ptr %next.gep350, align 4, !tbaa !65
  %wide.load352.a = load <8 x float>, ptr %i.eb, align 4, !tbaa !65
  %wide.load353 = load <8 x float>, ptr %i.ec, align 4, !tbaa !65
  %wide.load354 = load <8 x float>, ptr %i.ed, align 4, !tbaa !65
  %i.ee = fsub fast <8 x float> %wide.load351.a, %broadcast.splat343
  %i.ef = fsub fast <8 x float> %wide.load352.a, %broadcast.splat343
  %i.eg = fsub fast <8 x float> %wide.load353, %broadcast.splat343
  %i.eh = fsub fast <8 x float> %wide.load354, %broadcast.splat343
  %i.ei = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.ee) ; 2 uses
  %i.ej = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.ef) ; 2 uses
  %i.ek = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.eg) ; 2 uses
  %i.el = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.eh) ; 2 uses
  store <8 x float> %i.ei, ptr %next.gep350, align 4, !tbaa !65
  store <8 x float> %i.ej, ptr %i.eb, align 4, !tbaa !65
  store <8 x float> %i.ek, ptr %i.ec, align 4, !tbaa !65
  store <8 x float> %i.el, ptr %i.ed, align 4, !tbaa !65
end_hunk_0
begin_hunk_1_@_ZNK4ncnn15Softmax_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4:bb.a
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge46, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %4, align 4, !tbaa !33     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge46

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.z, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.t = load ptr, ptr %3, align 8, !tbaa !52, !noalias !200
  %i.u = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !200
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !200
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %.pre = load i32, ptr %5, align 4, !tbaa !33
  %.pre62 = load i32, ptr %6, align 4, !tbaa !33
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4ncnnL7softmaxEPfii.exit, %.noexc
  %i.z = phi i32 [ %i.r, %.noexc ], [ %i.lb, %_ZN4ncnnL7softmaxEPfii.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge46, label %.noexc, !llvm.loop !187

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL7softmaxEPfii.exit
  %i.aa = phi i32 [ %i.kw, %_ZN4ncnnL7softmaxEPfii.exit ], [ %.pre62, %.lr.ph.preheader ] ; 4 uses
  %i.ab = phi i32 [ %i.kv, %_ZN4ncnnL7softmaxEPfii.exit ], [ %.pre, %.lr.ph.preheader ]
  %.043 = phi i32 [ %i.la, %_ZN4ncnnL7softmaxEPfii.exit ], [ 0, %.lr.ph.preheader ]
  %.02042 = phi ptr [ %i.kz, %_ZN4ncnnL7softmaxEPfii.exit ], [ %i.y, %.lr.ph.preheader ] ; 9 uses
  %i.ac = mul nsw i32 %i.aa, %i.ab                ; 22 uses
  %i.ad = icmp sgt i32 %i.ac, 7                   ; 3 uses
  br i1 %i.ad, label %.lr.ph.i.preheader, label %.preheader215.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.ae = add nsw i32 %i.ac, -8                   ; 2 uses
  %i.af = lshr i32 %i.ae, 3
  %i.ag = add nuw nsw i32 %i.af, 1                ; 2 uses
  %xtraiter = and i32 %i.ag, 3                    ; 3 uses
  %i.ah = icmp ult i32 %i.ae, 24
  br i1 %i.ah, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ag, 1073741820
  br label %.lr.ph.i

.preheader215.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader215.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader215.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.0218.i.epil.init = phi ptr [ %.02042, %.lr.ph.i.preheader ], [ %i.az, %.preheader215.loopexit.i.unr-lcssa ]
  %.0193216.i.epil.init = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader ], [ %i.ay, %.preheader215.loopexit.i.unr-lcssa ]
  %lcmp.mod228 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod228)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0218.i.epil = phi ptr [ %i.ak, %.lr.ph.i.epil ], [ %.0218.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0193216.i.epil = phi <8 x float> [ %i.aj, %.lr.ph.i.epil ], [ %.0193216.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ai = load <8 x float>, ptr %.0218.i.epil, align 1, !tbaa !61
  %i.aj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0193216.i.epil, <8 x float> nofpclass(nan inf) %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0218.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader215.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !188

.preheader215.loopexit.i:                         ; preds = %.lr.ph.i.epil, %.preheader215.loopexit.i.unr-lcssa
  %.lcssa202 = phi <8 x float> [ %i.ay, %.preheader215.loopexit.i.unr-lcssa ], [ %i.aj, %.lr.ph.i.epil ]
  %.lcssa = phi ptr [ %i.az, %.preheader215.loopexit.i.unr-lcssa ], [ %i.ak, %.lr.ph.i.epil ]
  %i.al = and i32 %i.ac, 2147483640
  br label %.preheader215.i

.preheader215.i:                                  ; preds = %.preheader215.loopexit.i, %.lr.ph
  %.0193.lcssa.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa202, %.preheader215.loopexit.i ] ; 5 uses
  %.081.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.al, %.preheader215.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.02042, %.lr.ph ], [ %.lcssa, %.preheader215.loopexit.i ] ; 2 uses
  %i.am = or disjoint i32 %.081.lcssa.i, 3
  %i.an = icmp slt i32 %i.am, %i.ac
  br i1 %i.an, label %.lr.ph224.i, label %.preheader214.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0218.i = phi ptr [ %.02042, %.lr.ph.i.preheader.new ], [ %i.az, %.lr.ph.i ] ; 5 uses
  %.0193216.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.ay, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ao = load <8 x float>, ptr %.0218.i, align 1, !tbaa !61
  %i.ap = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0193216.i, <8 x float> nofpclass(nan inf) %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0218.i, i64 32
  %i.ar = load <8 x float>, ptr %i.aq, align 1, !tbaa !61
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %.0218.i, i64 64
  %i.au = load <8 x float>, ptr %i.at, align 1, !tbaa !61
  %i.av = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %.0218.i, i64 96
  %i.ax = load <8 x float>, ptr %i.aw, align 1, !tbaa !61
  %i.ay = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.ax) ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0218.i, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader215.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

.preheader214.i:                                  ; preds = %.lr.ph224.i, %.preheader215.i
  %.0196.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader215.i ], [ %i.cd, %.lr.ph224.i ] ; 4 uses
  %.182.lcssa.i = phi i32 [ %.081.lcssa.i, %.preheader215.i ], [ %i.cf, %.lr.ph224.i ] ; 5 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader215.i ], [ %i.ce, %.lr.ph224.i ] ; 5 uses
  %i.ba = icmp slt i32 %.182.lcssa.i, %i.ac
  br i1 %i.ba, label %iter.check183, label %._crit_edge.i

iter.check183:                                    ; preds = %.preheader214.i
  %i.bb = xor i32 %.182.lcssa.i, -1
  %i.bc = add i32 %i.ac, %i.bb                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 1                ; 5 uses
  %min.iters.check157 = icmp ult i32 %i.bc, 7
  br i1 %min.iters.check157, label %.lr.ph231.i.preheader, label %vector.main.loop.iter.check158

vector.main.loop.iter.check158:                   ; preds = %iter.check183
  %min.iters.check159 = icmp ult i32 %i.bc, 31
  br i1 %min.iters.check159, label %vec.epilog.ph187, label %vector.ph160

vector.ph160:                                     ; preds = %vector.main.loop.iter.check158
  %i.bf = and i64 %i.be, 24
  %n.vec161 = and i64 %i.be, 8589934560           ; 5 uses
  %i.bg = shl nuw nsw i64 %n.vec161, 2
  %i.bh = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bg
  %i.bi = trunc i64 %n.vec161 to i32
  %i.bj = add i32 %.182.lcssa.i, %i.bi
  br label %vector.body162

vector.body162:                                   ; preds = %vector.ph160, %vector.body162
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next173, %vector.body162 ] ; 2 uses
  %vec.phi164.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph160 ], [ %i.bo, %vector.body162 ]
  %vec.phi165 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph160 ], [ %i.bp, %vector.body162 ]
  %vec.phi166 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph160 ], [ %i.bq, %vector.body162 ]
  %vec.phi167 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph160 ], [ %i.br, %vector.body162 ]
  %i.bk = shl i64 %index163, 2
  %next.gep168 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bk ; 4 uses
  %i.bl = getelementptr i8, ptr %next.gep168, i64 32
  %i.bm = getelementptr i8, ptr %next.gep168, i64 64
  %i.bn = getelementptr i8, ptr %next.gep168, i64 96
  %wide.load169.a = load <8 x float>, ptr %next.gep168, align 4, !tbaa !65
  %wide.load170 = load <8 x float>, ptr %i.bl, align 4, !tbaa !65
  %wide.load171 = load <8 x float>, ptr %i.bm, align 4, !tbaa !65
  %wide.load172 = load <8 x float>, ptr %i.bn, align 4, !tbaa !65
  %i.bo = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi164.a, <8 x float> %wide.load169.a) ; 2 uses
  %i.bp = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi165, <8 x float> %wide.load170) ; 2 uses
  %i.bq = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi166, <8 x float> %wide.load171) ; 2 uses
  %i.br = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi167, <8 x float> %wide.load172) ; 2 uses
  %index.next173 = add nuw i64 %index163, 32      ; 2 uses
  %i.bs = icmp eq i64 %index.next173, %n.vec161
  br i1 %i.bs, label %middle.block174, label %vector.body162, !llvm.loop !189

middle.block174:                                  ; preds = %vector.body162
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bo, <8 x float> %i.bp)
  %rdx.minmax.select176 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.bq)
  %rdx.minmax.select178 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select176, <8 x float> %i.br)
  %i.bt = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select178) ; 3 uses
  %cmp.n179 = icmp eq i64 %i.be, %n.vec161
  br i1 %cmp.n179, label %._crit_edge.i, label %vec.epilog.iter.check185

vec.epilog.iter.check185:                         ; preds = %middle.block174
  %min.epilog.iters.check186 = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check186, label %.lr.ph231.i.preheader, label %vec.epilog.ph187, !prof !68

vec.epilog.ph187:                                 ; preds = %vector.main.loop.iter.check158, %vec.epilog.iter.check185
  %vec.epilog.resume.val180 = phi i64 [ %n.vec161, %vec.epilog.iter.check185 ], [ 0, %vector.main.loop.iter.check158 ]
  %bc.merge.rdx182 = phi float [ %i.bt, %vec.epilog.iter.check185 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check158 ]
  %n.vec188 = and i64 %i.be, 8589934584           ; 4 uses
  %i.bu = shl nuw nsw i64 %n.vec188, 2
  %i.bv = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bu
  %i.bw = trunc i64 %n.vec188 to i32
  %i.bx = add i32 %.182.lcssa.i, %i.bw
  %broadcast.splatinsert189 = insertelement <8 x float> poison, float %bc.merge.rdx182, i64 0
  %broadcast.splat190 = shufflevector <8 x float> %broadcast.splatinsert189, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body191

vec.epilog.vector.body191:                        ; preds = %vec.epilog.vector.body191, %vec.epilog.ph187
  %index192 = phi i64 [ %vec.epilog.resume.val180, %vec.epilog.ph187 ], [ %index.next196, %vec.epilog.vector.body191 ] ; 2 uses
  %vec.phi193 = phi <8 x float> [ %broadcast.splat190, %vec.epilog.ph187 ], [ %i.bz, %vec.epilog.vector.body191 ]
  %i.by = shl i64 %index192, 2
  %next.gep194 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.by
  %wide.load195 = load <8 x float>, ptr %next.gep194, align 4, !tbaa !65
  %i.bz = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi193, <8 x float> %wide.load195) ; 2 uses
  %index.next196 = add nuw i64 %index192, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next196, %n.vec188
  br i1 %i.ca, label %vec.epilog.middle.block197, label %vec.epilog.vector.body191, !llvm.loop !190

vec.epilog.middle.block197:                       ; preds = %vec.epilog.vector.body191
  %i.cb = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.bz) ; 2 uses
  %cmp.n198 = icmp eq i64 %i.be, %n.vec188
  br i1 %cmp.n198, label %._crit_edge.i, label %.lr.ph231.i.preheader

.lr.ph231.i.preheader:                            ; preds = %iter.check183, %vec.epilog.iter.check185, %vec.epilog.middle.block197
  %.2230.i.ph = phi ptr [ %.1.lcssa.i, %iter.check183 ], [ %i.bh, %vec.epilog.iter.check185 ], [ %i.bv, %vec.epilog.middle.block197 ]
  %.283229.i.ph = phi i32 [ %.182.lcssa.i, %iter.check183 ], [ %i.bj, %vec.epilog.iter.check185 ], [ %i.bx, %vec.epilog.middle.block197 ]
  %.0205228.i.ph = phi float [ f0xFF7FFFFF, %iter.check183 ], [ %i.bt, %vec.epilog.iter.check185 ], [ %i.cb, %vec.epilog.middle.block197 ]
  br label %.lr.ph231.i

.lr.ph224.i:                                      ; preds = %.preheader215.i, %.lr.ph224.i
  %.1223.i = phi ptr [ %i.ce, %.lr.ph224.i ], [ %.0.lcssa.i, %.preheader215.i ] ; 2 uses
  %.182222.i = phi i32 [ %i.cf, %.lr.ph224.i ], [ %.081.lcssa.i, %.preheader215.i ]
  %.0196221.i = phi <4 x float> [ %i.cd, %.lr.ph224.i ], [ splat (float f0xFF7FFFFF), %.preheader215.i ]
  %i.cc = load <4 x float>, ptr %.1223.i, align 1, !tbaa !61
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196221.i, <4 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1223.i, i64 16 ; 2 uses
  %i.cf = add nuw nsw i32 %.182222.i, 4           ; 3 uses
  %i.cg = or disjoint i32 %i.cf, 3
  %i.ch = icmp slt i32 %i.cg, %i.ac
  br i1 %i.ch, label %.lr.ph224.i, label %.preheader214.i, !llvm.loop !2

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.preheader, %.lr.ph231.i
  %.2230.i = phi ptr [ %i.ci, %.lr.ph231.i ], [ %.2230.i.ph, %.lr.ph231.i.preheader ] ; 2 uses
  %.283229.i = phi i32 [ %i.ck, %.lr.ph231.i ], [ %.283229.i.ph, %.lr.ph231.i.preheader ]
  %.0205228.i = phi float [ %.sroa.speculated126.i, %.lr.ph231.i ], [ %.0205228.i.ph, %.lr.ph231.i.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.2230.i, i64 4
  %i.cj = load float, ptr %.2230.i, align 4, !tbaa !65
  %.sroa.speculated126.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0205228.i, float %i.cj) ; 2 uses
  %i.ck = add nuw nsw i32 %.283229.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ck, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph231.i, !llvm.loop !191

._crit_edge.i:                                    ; preds = %.lr.ph231.i, %middle.block174, %vec.epilog.middle.block197, %.preheader214.i
  %.0205.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader214.i ], [ %i.cb, %vec.epilog.middle.block197 ], [ %i.bt, %middle.block174 ], [ %.sroa.speculated126.i, %.lr.ph231.i ] ; 4 uses
  %i.cl = icmp eq i32 %i.aa, 4                    ; 2 uses
  br i1 %i.cl, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.cm = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cn = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa.i, <4 x float> nofpclass(nan inf) %i.cm)
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.co, <4 x float> nofpclass(nan inf) %i.cn) ; 2 uses
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.cr = icmp eq i32 %i.aa, 1
  br i1 %i.cr, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cs = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ct = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cs, <4 x float> nofpclass(nan inf) %i.ct) ; 2 uses
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cu, <4 x float> nofpclass(nan inf) %i.cv) ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cw, <4 x float> nofpclass(nan inf) %i.cx)
  %i.cz = extractelement <4 x float> %i.cy, i64 0 ; 2 uses
  %i.da = fcmp fast olt float %.0205.lcssa.i, %i.cz
  %.sroa.speculated119.i = select i1 %i.da, float %i.cz, float %.0205.lcssa.i ; 2 uses
  %i.db = shufflevector <4 x float> %.0196.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa.i, <4 x float> nofpclass(nan inf) %i.db) ; 2 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dc, <4 x float> nofpclass(nan inf) %i.dd)
  %i.df = extractelement <4 x float> %i.de, i64 0 ; 2 uses
  %i.dg = fcmp fast olt float %.sroa.speculated119.i, %i.df
  %.sroa.speculated.i = select i1 %i.dg, float %i.df, float %.sroa.speculated119.i ; 2 uses
  %i.dh = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.dk = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1206.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0205.lcssa.i, %bb.c ], [ %.0205.lcssa.i, %.thread.i ] ; 3 uses
  %.2198.i = phi nsz <4 x float> [ %i.di, %bb.d ], [ %.0196.lcssa.i, %bb.c ], [ %i.cp, %.thread.i ]
  %.2195.i = phi nsz <8 x float> [ %i.dj, %bb.d ], [ %.0193.lcssa.i, %bb.c ], [ %i.cq, %.thread.i ]
  br i1 %i.ad, label %.lr.ph237.i, label %.preheader213.i

.preheader213.loopexit.i:                         ; preds = %.lr.ph237.i
  %i.dl = and i32 %i.ac, 2147483640
  br label %.preheader213.i

.preheader213.i:                                  ; preds = %.preheader213.loopexit.i, %bb.e
  %.0202.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.en, %.preheader213.loopexit.i ] ; 5 uses
  %.089.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.dl, %.preheader213.loopexit.i ] ; 3 uses
  %.086.lcssa.i = phi ptr [ %.02042, %bb.e ], [ %i.eo, %.preheader213.loopexit.i ] ; 2 uses
  %i.dm = or disjoint i32 %.089.lcssa.i, 3
  %i.dn = icmp slt i32 %i.dm, %i.ac
  br i1 %i.dn, label %.lr.ph244.i, label %.preheader212.i

.lr.ph237.i:                                      ; preds = %bb.e, %.lr.ph237.i
  %.086235.i = phi ptr [ %i.eo, %.lr.ph237.i ], [ %.02042, %bb.e ] ; 3 uses
  %.089234.i = phi i32 [ %i.ep, %.lr.ph237.i ], [ 0, %bb.e ]
  %.0202233.i = phi <8 x float> [ %i.en, %.lr.ph237.i ], [ zeroinitializer, %bb.e ]
  %i.do = load <8 x float>, ptr %.086235.i, align 1, !tbaa !61
  %i.dp = fsub fast <8 x float> %i.do, %.2195.i
  %i.dq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dp, <8 x float> splat (float f0x42B0C0A5))
  %i.dr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ds = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dr, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dt = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ds, i32 1) ; 2 uses
  %i.du = fcmp fast ogt <8 x float> %i.dt, %i.ds
  %i.dv = select <8 x i1> %i.du, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dw = fsub fast <8 x float> %i.dt, %i.dv      ; 2 uses
  %i.dx = fneg fast <8 x float> %i.dw             ; 2 uses
  %i.dy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dx, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.dr)
  %i.dz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dx, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.dy) ; 8 uses
  %i.ea = fmul fast <8 x float> %i.dz, %i.dz
  %i.eb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> splat (float f0x3C088908))
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> splat (float f0x3D2AA9C1))
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> splat (float f0x3E2AAAAA))
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> splat (float 5.000000e-01))
  %i.eg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.dz)
  %i.eh = fadd fast <8 x float> %i.eg, splat (float 1.000000e+00)
  %i.ei = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dw)
  %i.ej = shl <8 x i32> %i.ei, splat (i32 23)
  %i.ek = add <8 x i32> %i.ej, splat (i32 1065353216)
  %i.el = bitcast <8 x i32> %i.ek to <8 x float>
  %i.em = fmul fast <8 x float> %i.eh, %i.el      ; 2 uses
  store <8 x float> %i.em, ptr %.086235.i, align 1, !tbaa !61
  %i.en = fadd fast <8 x float> %i.em, %.0202233.i ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.086235.i, i64 32 ; 2 uses
  %i.ep = add nuw nsw i32 %.089234.i, 8           ; 2 uses
  %i.eq = or disjoint i32 %i.ep, 7
  %i.er = icmp slt i32 %i.eq, %i.ac
  br i1 %i.er, label %.lr.ph237.i, label %.preheader213.loopexit.i, !llvm.loop !3

.preheader212.i:                                  ; preds = %.lr.ph244.i, %.preheader213.i
  %.0199.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader213.i ], [ %i.hg, %.lr.ph244.i ] ; 3 uses
  %.190.lcssa.i = phi i32 [ %.089.lcssa.i, %.preheader213.i ], [ %i.hi, %.lr.ph244.i ] ; 5 uses
  %.187.lcssa.i = phi ptr [ %.086.lcssa.i, %.preheader213.i ], [ %i.hh, %.lr.ph244.i ] ; 5 uses
  %i.es = icmp slt i32 %.190.lcssa.i, %i.ac
  br i1 %i.es, label %iter.check138, label %._crit_edge252.i

iter.check138:                                    ; preds = %.preheader212.i
  %i.et = xor i32 %.190.lcssa.i, -1
  %i.eu = add i32 %i.ac, %i.et                    ; 3 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 5 uses
  %min.iters.check114.a = icmp ult i32 %i.eu, 3
  br i1 %min.iters.check114.a, label %.lr.ph251.i.preheader, label %vector.main.loop.iter.check115

vector.main.loop.iter.check115:                   ; preds = %iter.check138
  %min.iters.check116 = icmp ult i32 %i.eu, 31
  br i1 %min.iters.check116, label %vec.epilog.ph142, label %vector.ph117

vector.ph117:                                     ; preds = %vector.main.loop.iter.check115
  %i.ex = and i64 %i.ew, 28
  %n.vec118 = and i64 %i.ew, 8589934560           ; 5 uses
  %i.ey = shl nuw nsw i64 %n.vec118, 2
  %i.ez = getelementptr i8, ptr %.187.lcssa.i, i64 %i.ey
  %i.fa = trunc i64 %n.vec118 to i32
  %i.fb = add i32 %.190.lcssa.i, %i.fa
  %broadcast.splatinsert119 = insertelement <8 x float> poison, float %.1206.i, i64 0
  %broadcast.splat120 = shufflevector <8 x float> %broadcast.splatinsert119, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.ph117, %vector.body121
  %index122 = phi i64 [ 0, %vector.ph117 ], [ %index.next131, %vector.body121 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph117 ], [ %i.fo, %vector.body121 ]
  %vec.phi123.a = phi <8 x float> [ zeroinitializer, %vector.ph117 ], [ %i.fp, %vector.body121 ]
  %vec.phi124 = phi <8 x float> [ zeroinitializer, %vector.ph117 ], [ %i.fq, %vector.body121 ]
  %vec.phi125 = phi <8 x float> [ zeroinitializer, %vector.ph117 ], [ %i.fr, %vector.body121 ]
  %i.fc = shl i64 %index122, 2
  %next.gep126 = getelementptr i8, ptr %.187.lcssa.i, i64 %i.fc ; 5 uses
  %i.fd = getelementptr i8, ptr %next.gep126, i64 32 ; 2 uses
  %i.fe = getelementptr i8, ptr %next.gep126, i64 64 ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep126, i64 96 ; 2 uses
  %wide.load127.a = load <8 x float>, ptr %next.gep126, align 4, !tbaa !65
  %wide.load128.a = load <8 x float>, ptr %i.fd, align 4, !tbaa !65
  %wide.load129 = load <8 x float>, ptr %i.fe, align 4, !tbaa !65
  %wide.load130 = load <8 x float>, ptr %i.ff, align 4, !tbaa !65
  %i.fg = fsub fast <8 x float> %wide.load127.a, %broadcast.splat120
  %i.fh = fsub fast <8 x float> %wide.load128.a, %broadcast.splat120
  %i.fi = fsub fast <8 x float> %wide.load129, %broadcast.splat120
  %i.fj = fsub fast <8 x float> %wide.load130, %broadcast.splat120
  %i.fk = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fg) ; 2 uses
  %i.fl = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fh) ; 2 uses
  %i.fm = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fi) ; 2 uses
  %i.fn = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fj) ; 2 uses
  store <8 x float> %i.fk, ptr %next.gep126, align 4, !tbaa !65
  store <8 x float> %i.fl, ptr %i.fd, align 4, !tbaa !65
  store <8 x float> %i.fm, ptr %i.fe, align 4, !tbaa !65
  store <8 x float> %i.fn, ptr %i.ff, align 4, !tbaa !65
  %i.fo = fadd fast <8 x float> %i.fk, %vec.phi   ; 2 uses
  %i.fp = fadd fast <8 x float> %i.fl, %vec.phi123.a ; 2 uses
  %i.fq = fadd fast <8 x float> %i.fm, %vec.phi124 ; 2 uses
  %i.fr = fadd fast <8 x float> %i.fn, %vec.phi125 ; 2 uses
  %index.next131 = add nuw i64 %index122, 32      ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4ncnn15Softmax_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.6:bb.a
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge50
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.af, %._crit_edge50 ] ; 3 uses
  %i.s = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ag, %._crit_edge50 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge50 ] ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.u = load i32, ptr %5, align 4, !tbaa !33     ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader.preheader, label %._crit_edge50

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.w = load ptr, ptr %3, align 8, !tbaa !52, !noalias !223
  %i.x = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !223
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !223
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.ah, %._crit_edge ], [ %i.r, %.preheader.preheader ]
  %i.ad = phi i32 [ %i.ai, %._crit_edge ], [ %i.u, %.preheader.preheader ] ; 2 uses
  %.02349 = phi i32 [ %i.aj, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02448 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ab, %.preheader.preheader ] ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load i32, ptr %6, align 4, !tbaa !33
  %.pre71 = load i32, ptr %7, align 4, !tbaa !33
  br label %.lr.ph

._crit_edge50:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %.noexc
  %i.af = phi i32 [ %i.r, %.noexc ], [ %i.r, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ]
  %i.ag = phi i32 [ %i.s, %.noexc ], [ %i.s, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge53, label %.noexc, !llvm.loop !209

._crit_edge.loopexit:                             ; preds = %_ZN4ncnnL7softmaxEPfii.exit
  %.pre72 = load i32, ptr %4, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ah = phi i32 [ %i.ac, %.preheader ], [ %.pre72, %._crit_edge.loopexit ] ; 4 uses
  %i.ai = phi i32 [ %i.ad, %.preheader ], [ %i.lm, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.02448, %.preheader ], [ %i.lk, %._crit_edge.loopexit ]
  %i.aj = add nuw nsw i32 %.02349, 1              ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.ah
  br i1 %i.ak, label %.preheader, label %._crit_edge50, !llvm.loop !210

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL7softmaxEPfii.exit
  %i.al = phi i32 [ %i.lh, %_ZN4ncnnL7softmaxEPfii.exit ], [ %.pre71, %.lr.ph.preheader ] ; 4 uses
  %i.am = phi i32 [ %i.lg, %_ZN4ncnnL7softmaxEPfii.exit ], [ %.pre, %.lr.ph.preheader ]
  %.047 = phi i32 [ %i.ll, %_ZN4ncnnL7softmaxEPfii.exit ], [ 0, %.lr.ph.preheader ]
  %.146 = phi ptr [ %i.lk, %_ZN4ncnnL7softmaxEPfii.exit ], [ %.02448, %.lr.ph.preheader ] ; 9 uses
  %i.an = mul nsw i32 %i.al, %i.am                ; 22 uses
  %i.ao = icmp sgt i32 %i.an, 7                   ; 3 uses
  br i1 %i.ao, label %.lr.ph.i.preheader, label %.preheader215.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.ap = add nsw i32 %i.an, -8                   ; 2 uses
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 2 uses
  %xtraiter = and i32 %i.ar, 3                    ; 3 uses
  %i.as = icmp ult i32 %i.ap, 24
  br i1 %i.as, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ar, 1073741820
  br label %.lr.ph.i

.preheader215.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader215.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader215.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.0218.i.epil.init = phi ptr [ %.146, %.lr.ph.i.preheader ], [ %i.bk, %.preheader215.loopexit.i.unr-lcssa ]
  %.0193216.i.epil.init = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader ], [ %i.bj, %.preheader215.loopexit.i.unr-lcssa ]
  %lcmp.mod249 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod249)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0218.i.epil = phi ptr [ %i.av, %.lr.ph.i.epil ], [ %.0218.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0193216.i.epil = phi <8 x float> [ %i.au, %.lr.ph.i.epil ], [ %.0193216.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = load <8 x float>, ptr %.0218.i.epil, align 1, !tbaa !61
  %i.au = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0193216.i.epil, <8 x float> nofpclass(nan inf) %i.at) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0218.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader215.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !211

.preheader215.loopexit.i:                         ; preds = %.lr.ph.i.epil, %.preheader215.loopexit.i.unr-lcssa
  %.lcssa221 = phi <8 x float> [ %i.bj, %.preheader215.loopexit.i.unr-lcssa ], [ %i.au, %.lr.ph.i.epil ]
  %.lcssa = phi ptr [ %i.bk, %.preheader215.loopexit.i.unr-lcssa ], [ %i.av, %.lr.ph.i.epil ]
  %i.aw = and i32 %i.an, 2147483640
  br label %.preheader215.i

.preheader215.i:                                  ; preds = %.preheader215.loopexit.i, %.lr.ph
  %.0193.lcssa.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa221, %.preheader215.loopexit.i ] ; 5 uses
  %.081.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.aw, %.preheader215.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.146, %.lr.ph ], [ %.lcssa, %.preheader215.loopexit.i ] ; 2 uses
  %i.ax = or disjoint i32 %.081.lcssa.i, 3
  %i.ay = icmp slt i32 %i.ax, %i.an
  br i1 %i.ay, label %.lr.ph224.i, label %.preheader214.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0218.i = phi ptr [ %.146, %.lr.ph.i.preheader.new ], [ %i.bk, %.lr.ph.i ] ; 5 uses
  %.0193216.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.bj, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.az = load <8 x float>, ptr %.0218.i, align 1, !tbaa !61
  %i.ba = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0193216.i, <8 x float> nofpclass(nan inf) %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0218.i, i64 32
  %i.bc = load <8 x float>, ptr %i.bb, align 1, !tbaa !61
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %.0218.i, i64 64
  %i.bf = load <8 x float>, ptr %i.be, align 1, !tbaa !61
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0218.i, i64 96
  %i.bi = load <8 x float>, ptr %i.bh, align 1, !tbaa !61
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bi) ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0218.i, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader215.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

.preheader214.i:                                  ; preds = %.lr.ph224.i, %.preheader215.i
  %.0196.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader215.i ], [ %i.co, %.lr.ph224.i ] ; 4 uses
  %.182.lcssa.i = phi i32 [ %.081.lcssa.i, %.preheader215.i ], [ %i.cq, %.lr.ph224.i ] ; 5 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader215.i ], [ %i.cp, %.lr.ph224.i ] ; 5 uses
  %i.bl = icmp slt i32 %.182.lcssa.i, %i.an
  br i1 %i.bl, label %iter.check202, label %._crit_edge.i

iter.check202:                                    ; preds = %.preheader214.i
  %i.bm = xor i32 %.182.lcssa.i, -1
  %i.bn = add i32 %i.an, %i.bm                    ; 3 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 5 uses
  %min.iters.check176 = icmp ult i32 %i.bn, 7
  br i1 %min.iters.check176, label %.lr.ph231.i.preheader, label %vector.main.loop.iter.check177

vector.main.loop.iter.check177:                   ; preds = %iter.check202
  %min.iters.check178 = icmp ult i32 %i.bn, 31
  br i1 %min.iters.check178, label %vec.epilog.ph206, label %vector.ph179

vector.ph179:                                     ; preds = %vector.main.loop.iter.check177
  %i.bq = and i64 %i.bp, 24
  %n.vec180 = and i64 %i.bp, 8589934560           ; 5 uses
  %i.br = shl nuw nsw i64 %n.vec180, 2
  %i.bs = getelementptr i8, ptr %.1.lcssa.i, i64 %i.br
  %i.bt = trunc i64 %n.vec180 to i32
  %i.bu = add i32 %.182.lcssa.i, %i.bt
  br label %vector.body181

vector.body181:                                   ; preds = %vector.ph179, %vector.body181
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next192, %vector.body181 ] ; 2 uses
  %vec.phi183.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph179 ], [ %i.bz, %vector.body181 ]
  %vec.phi184 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph179 ], [ %i.ca, %vector.body181 ]
  %vec.phi185 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph179 ], [ %i.cb, %vector.body181 ]
  %vec.phi186 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph179 ], [ %i.cc, %vector.body181 ]
  %i.bv = shl i64 %index182, 2
  %next.gep187 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bv ; 4 uses
  %i.bw = getelementptr i8, ptr %next.gep187, i64 32
  %i.bx = getelementptr i8, ptr %next.gep187, i64 64
  %i.by = getelementptr i8, ptr %next.gep187, i64 96
  %wide.load188.a = load <8 x float>, ptr %next.gep187, align 4, !tbaa !65
  %wide.load189 = load <8 x float>, ptr %i.bw, align 4, !tbaa !65
  %wide.load190 = load <8 x float>, ptr %i.bx, align 4, !tbaa !65
  %wide.load191 = load <8 x float>, ptr %i.by, align 4, !tbaa !65
  %i.bz = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi183.a, <8 x float> %wide.load188.a) ; 2 uses
  %i.ca = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi184, <8 x float> %wide.load189) ; 2 uses
  %i.cb = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi185, <8 x float> %wide.load190) ; 2 uses
  %i.cc = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi186, <8 x float> %wide.load191) ; 2 uses
  %index.next192 = add nuw i64 %index182, 32      ; 2 uses
  %i.cd = icmp eq i64 %index.next192, %n.vec180
  br i1 %i.cd, label %middle.block193, label %vector.body181, !llvm.loop !212

middle.block193:                                  ; preds = %vector.body181
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bz, <8 x float> %i.ca)
  %rdx.minmax.select195 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.cb)
  %rdx.minmax.select197 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select195, <8 x float> %i.cc)
  %i.ce = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select197) ; 3 uses
  %cmp.n198 = icmp eq i64 %i.bp, %n.vec180
  br i1 %cmp.n198, label %._crit_edge.i, label %vec.epilog.iter.check204

vec.epilog.iter.check204:                         ; preds = %middle.block193
  %min.epilog.iters.check205 = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check205, label %.lr.ph231.i.preheader, label %vec.epilog.ph206, !prof !68

vec.epilog.ph206:                                 ; preds = %vector.main.loop.iter.check177, %vec.epilog.iter.check204
  %vec.epilog.resume.val199 = phi i64 [ %n.vec180, %vec.epilog.iter.check204 ], [ 0, %vector.main.loop.iter.check177 ]
  %bc.merge.rdx201 = phi float [ %i.ce, %vec.epilog.iter.check204 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check177 ]
  %n.vec207 = and i64 %i.bp, 8589934584           ; 4 uses
  %i.cf = shl nuw nsw i64 %n.vec207, 2
  %i.cg = getelementptr i8, ptr %.1.lcssa.i, i64 %i.cf
  %i.ch = trunc i64 %n.vec207 to i32
  %i.ci = add i32 %.182.lcssa.i, %i.ch
  %broadcast.splatinsert208 = insertelement <8 x float> poison, float %bc.merge.rdx201, i64 0
  %broadcast.splat209 = shufflevector <8 x float> %broadcast.splatinsert208, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body210

vec.epilog.vector.body210:                        ; preds = %vec.epilog.vector.body210, %vec.epilog.ph206
  %index211 = phi i64 [ %vec.epilog.resume.val199, %vec.epilog.ph206 ], [ %index.next215, %vec.epilog.vector.body210 ] ; 2 uses
  %vec.phi212 = phi <8 x float> [ %broadcast.splat209, %vec.epilog.ph206 ], [ %i.ck, %vec.epilog.vector.body210 ]
  %i.cj = shl i64 %index211, 2
  %next.gep213 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.cj
  %wide.load214 = load <8 x float>, ptr %next.gep213, align 4, !tbaa !65
  %i.ck = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi212, <8 x float> %wide.load214) ; 2 uses
  %index.next215 = add nuw i64 %index211, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next215, %n.vec207
  br i1 %i.cl, label %vec.epilog.middle.block216, label %vec.epilog.vector.body210, !llvm.loop !213

vec.epilog.middle.block216:                       ; preds = %vec.epilog.vector.body210
  %i.cm = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ck) ; 2 uses
  %cmp.n217 = icmp eq i64 %i.bp, %n.vec207
  br i1 %cmp.n217, label %._crit_edge.i, label %.lr.ph231.i.preheader

.lr.ph231.i.preheader:                            ; preds = %iter.check202, %vec.epilog.iter.check204, %vec.epilog.middle.block216
  %.2230.i.ph = phi ptr [ %.1.lcssa.i, %iter.check202 ], [ %i.bs, %vec.epilog.iter.check204 ], [ %i.cg, %vec.epilog.middle.block216 ]
  %.283229.i.ph = phi i32 [ %.182.lcssa.i, %iter.check202 ], [ %i.bu, %vec.epilog.iter.check204 ], [ %i.ci, %vec.epilog.middle.block216 ]
  %.0205228.i.ph = phi float [ f0xFF7FFFFF, %iter.check202 ], [ %i.ce, %vec.epilog.iter.check204 ], [ %i.cm, %vec.epilog.middle.block216 ]
  br label %.lr.ph231.i

.lr.ph224.i:                                      ; preds = %.preheader215.i, %.lr.ph224.i
  %.1223.i = phi ptr [ %i.cp, %.lr.ph224.i ], [ %.0.lcssa.i, %.preheader215.i ] ; 2 uses
  %.182222.i = phi i32 [ %i.cq, %.lr.ph224.i ], [ %.081.lcssa.i, %.preheader215.i ]
  %.0196221.i = phi <4 x float> [ %i.co, %.lr.ph224.i ], [ splat (float f0xFF7FFFFF), %.preheader215.i ]
  %i.cn = load <4 x float>, ptr %.1223.i, align 1, !tbaa !61
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196221.i, <4 x float> nofpclass(nan inf) %i.cn) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1223.i, i64 16 ; 2 uses
  %i.cq = add nuw nsw i32 %.182222.i, 4           ; 3 uses
  %i.cr = or disjoint i32 %i.cq, 3
  %i.cs = icmp slt i32 %i.cr, %i.an
  br i1 %i.cs, label %.lr.ph224.i, label %.preheader214.i, !llvm.loop !2

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.preheader, %.lr.ph231.i
  %.2230.i = phi ptr [ %i.ct, %.lr.ph231.i ], [ %.2230.i.ph, %.lr.ph231.i.preheader ] ; 2 uses
  %.283229.i = phi i32 [ %i.cv, %.lr.ph231.i ], [ %.283229.i.ph, %.lr.ph231.i.preheader ]
  %.0205228.i = phi float [ %.sroa.speculated126.i, %.lr.ph231.i ], [ %.0205228.i.ph, %.lr.ph231.i.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.2230.i, i64 4
  %i.cu = load float, ptr %.2230.i, align 4, !tbaa !65
  %.sroa.speculated126.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0205228.i, float %i.cu) ; 2 uses
  %i.cv = add nuw nsw i32 %.283229.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cv, %i.an
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph231.i, !llvm.loop !214

._crit_edge.i:                                    ; preds = %.lr.ph231.i, %middle.block193, %vec.epilog.middle.block216, %.preheader214.i
  %.0205.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader214.i ], [ %i.cm, %vec.epilog.middle.block216 ], [ %i.ce, %middle.block193 ], [ %.sroa.speculated126.i, %.lr.ph231.i ] ; 4 uses
  %i.cw = icmp eq i32 %i.al, 4                    ; 2 uses
  br i1 %i.cw, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.cx = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cy = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa.i, <4 x float> nofpclass(nan inf) %i.cx)
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.cy) ; 2 uses
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.dc = icmp eq i32 %i.al, 1
  br i1 %i.dc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dd = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.de = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.de) ; 2 uses
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.dg) ; 2 uses
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.di)
  %i.dk = extractelement <4 x float> %i.dj, i64 0 ; 2 uses
  %i.dl = fcmp fast olt float %.0205.lcssa.i, %i.dk
  %.sroa.speculated119.i = select i1 %i.dl, float %i.dk, float %.0205.lcssa.i ; 2 uses
  %i.dm = shufflevector <4 x float> %.0196.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa.i, <4 x float> nofpclass(nan inf) %i.dm) ; 2 uses
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> nofpclass(nan inf) %i.do)
  %i.dq = extractelement <4 x float> %i.dp, i64 0 ; 2 uses
  %i.dr = fcmp fast olt float %.sroa.speculated119.i, %i.dq
  %.sroa.speculated.i = select i1 %i.dr, float %i.dq, float %.sroa.speculated119.i ; 2 uses
  %i.ds = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.dv = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1206.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0205.lcssa.i, %bb.c ], [ %.0205.lcssa.i, %.thread.i ] ; 3 uses
  %.2198.i = phi nsz <4 x float> [ %i.dt, %bb.d ], [ %.0196.lcssa.i, %bb.c ], [ %i.da, %.thread.i ]
  %.2195.i = phi nsz <8 x float> [ %i.du, %bb.d ], [ %.0193.lcssa.i, %bb.c ], [ %i.db, %.thread.i ]
  br i1 %i.ao, label %.lr.ph237.i, label %.preheader213.i

.preheader213.loopexit.i:                         ; preds = %.lr.ph237.i
  %i.dw = and i32 %i.an, 2147483640
  br label %.preheader213.i

.preheader213.i:                                  ; preds = %.preheader213.loopexit.i, %bb.e
  %.0202.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.ey, %.preheader213.loopexit.i ] ; 5 uses
  %.089.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.dw, %.preheader213.loopexit.i ] ; 3 uses
  %.086.lcssa.i = phi ptr [ %.146, %bb.e ], [ %i.ez, %.preheader213.loopexit.i ] ; 2 uses
  %i.dx = or disjoint i32 %.089.lcssa.i, 3
  %i.dy = icmp slt i32 %i.dx, %i.an
  br i1 %i.dy, label %.lr.ph244.i, label %.preheader212.i

.lr.ph237.i:                                      ; preds = %bb.e, %.lr.ph237.i
  %.086235.i = phi ptr [ %i.ez, %.lr.ph237.i ], [ %.146, %bb.e ] ; 3 uses
  %.089234.i = phi i32 [ %i.fa, %.lr.ph237.i ], [ 0, %bb.e ]
  %.0202233.i = phi <8 x float> [ %i.ey, %.lr.ph237.i ], [ zeroinitializer, %bb.e ]
  %i.dz = load <8 x float>, ptr %.086235.i, align 1, !tbaa !61
  %i.ea = fsub fast <8 x float> %i.dz, %.2195.i
  %i.eb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ea, <8 x float> splat (float f0x42B0C0A5))
  %i.ec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ec, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ee = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ed, i32 1) ; 2 uses
  %i.ef = fcmp fast ogt <8 x float> %i.ee, %i.ed
  %i.eg = select <8 x i1> %i.ef, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.eh = fsub fast <8 x float> %i.ee, %i.eg      ; 2 uses
  %i.ei = fneg fast <8 x float> %i.eh             ; 2 uses
  %i.ej = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ei, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ec)
  %i.ek = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ei, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ej) ; 8 uses
  %i.el = fmul fast <8 x float> %i.ek, %i.ek
  %i.em = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.en = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.em, <8 x float> nofpclass(nan inf) %i.ek, <8 x float> splat (float f0x3C088908))
  %i.eo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.en, <8 x float> nofpclass(nan inf) %i.ek, <8 x float> splat (float f0x3D2AA9C1))
  %i.ep = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eo, <8 x float> nofpclass(nan inf) %i.ek, <8 x float> splat (float f0x3E2AAAAA))
  %i.eq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> nofpclass(nan inf) %i.ek, <8 x float> splat (float 5.000000e-01))
  %i.er = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eq, <8 x float> nofpclass(nan inf) %i.el, <8 x float> nofpclass(nan inf) %i.ek)
  %i.es = fadd fast <8 x float> %i.er, splat (float 1.000000e+00)
  %i.et = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eh)
  %i.eu = shl <8 x i32> %i.et, splat (i32 23)
  %i.ev = add <8 x i32> %i.eu, splat (i32 1065353216)
  %i.ew = bitcast <8 x i32> %i.ev to <8 x float>
  %i.ex = fmul fast <8 x float> %i.es, %i.ew      ; 2 uses
  store <8 x float> %i.ex, ptr %.086235.i, align 1, !tbaa !61
  %i.ey = fadd fast <8 x float> %i.ex, %.0202233.i ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.086235.i, i64 32 ; 2 uses
  %i.fa = add nuw nsw i32 %.089234.i, 8           ; 2 uses
  %i.fb = or disjoint i32 %i.fa, 7
  %i.fc = icmp slt i32 %i.fb, %i.an
  br i1 %i.fc, label %.lr.ph237.i, label %.preheader213.loopexit.i, !llvm.loop !3

.preheader212.i:                                  ; preds = %.lr.ph244.i, %.preheader213.i
  %.0199.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader213.i ], [ %i.hr, %.lr.ph244.i ] ; 3 uses
  %.190.lcssa.i = phi i32 [ %.089.lcssa.i, %.preheader213.i ], [ %i.ht, %.lr.ph244.i ] ; 5 uses
  %.187.lcssa.i = phi ptr [ %.086.lcssa.i, %.preheader213.i ], [ %i.hs, %.lr.ph244.i ] ; 5 uses
  %i.fd = icmp slt i32 %.190.lcssa.i, %i.an
  br i1 %i.fd, label %iter.check157, label %._crit_edge252.i

iter.check157:                                    ; preds = %.preheader212.i
  %i.fe = xor i32 %.190.lcssa.i, -1
  %i.ff = add i32 %i.an, %i.fe                    ; 3 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 5 uses
  %min.iters.check133.a = icmp ult i32 %i.ff, 3
  br i1 %min.iters.check133.a, label %.lr.ph251.i.preheader, label %vector.main.loop.iter.check134

vector.main.loop.iter.check134:                   ; preds = %iter.check157
  %min.iters.check135 = icmp ult i32 %i.ff, 31
  br i1 %min.iters.check135, label %vec.epilog.ph161, label %vector.ph136

vector.ph136:                                     ; preds = %vector.main.loop.iter.check134
  %i.fi = and i64 %i.fh, 28
  %n.vec137 = and i64 %i.fh, 8589934560           ; 5 uses
  %i.fj = shl nuw nsw i64 %n.vec137, 2
  %i.fk = getelementptr i8, ptr %.187.lcssa.i, i64 %i.fj
  %i.fl = trunc i64 %n.vec137 to i32
  %i.fm = add i32 %.190.lcssa.i, %i.fl
  %broadcast.splatinsert138 = insertelement <8 x float> poison, float %.1206.i, i64 0
  %broadcast.splat139 = shufflevector <8 x float> %broadcast.splatinsert138, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.ph136, %vector.body140
  %index141 = phi i64 [ 0, %vector.ph136 ], [ %index.next150, %vector.body140 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph136 ], [ %i.fz, %vector.body140 ]
  %vec.phi142.a = phi <8 x float> [ zeroinitializer, %vector.ph136 ], [ %i.ga, %vector.body140 ]
  %vec.phi143 = phi <8 x float> [ zeroinitializer, %vector.ph136 ], [ %i.gb, %vector.body140 ]
  %vec.phi144 = phi <8 x float> [ zeroinitializer, %vector.ph136 ], [ %i.gc, %vector.body140 ]
  %i.fn = shl i64 %index141, 2
  %next.gep145 = getelementptr i8, ptr %.187.lcssa.i, i64 %i.fn ; 5 uses
  %i.fo = getelementptr i8, ptr %next.gep145, i64 32 ; 2 uses
  %i.fp = getelementptr i8, ptr %next.gep145, i64 64 ; 2 uses
  %i.fq = getelementptr i8, ptr %next.gep145, i64 96 ; 2 uses
  %wide.load146.a = load <8 x float>, ptr %next.gep145, align 4, !tbaa !65
  %wide.load147.a = load <8 x float>, ptr %i.fo, align 4, !tbaa !65
  %wide.load148 = load <8 x float>, ptr %i.fp, align 4, !tbaa !65
  %wide.load149 = load <8 x float>, ptr %i.fq, align 4, !tbaa !65
  %i.fr = fsub fast <8 x float> %wide.load146.a, %broadcast.splat139
  %i.fs = fsub fast <8 x float> %wide.load147.a, %broadcast.splat139
  %i.ft = fsub fast <8 x float> %wide.load148, %broadcast.splat139
  %i.fu = fsub fast <8 x float> %wide.load149, %broadcast.splat139
  %i.fv = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fr) ; 2 uses
  %i.fw = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fs) ; 2 uses
  %i.fx = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.ft) ; 2 uses
  %i.fy = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fu) ; 2 uses
  store <8 x float> %i.fv, ptr %next.gep145, align 4, !tbaa !65
  store <8 x float> %i.fw, ptr %i.fo, align 4, !tbaa !65
  store <8 x float> %i.fx, ptr %i.fp, align 4, !tbaa !65
  store <8 x float> %i.fy, ptr %i.fq, align 4, !tbaa !65
  %i.fz = fadd fast <8 x float> %i.fv, %vec.phi   ; 2 uses
  %i.ga = fadd fast <8 x float> %i.fw, %vec.phi142.a ; 2 uses
  %i.gb = fadd fast <8 x float> %i.fx, %vec.phi143 ; 2 uses
  %i.gc = fadd fast <8 x float> %i.fy, %vec.phi144 ; 2 uses
  %index.next150 = add nuw i64 %index141, 32      ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK4ncnn15Softmax_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.6:bb.a

bb.k:                                             ; preds = %._crit_edge53, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ss(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #12

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL17softmax_bf16s_sseEPtii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = mul nsw i32 %2, %1                       ; 22 uses
  %i.b = icmp sgt i32 %i.a, 7                     ; 3 uses
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader229

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -8                     ; 2 uses
  %i.d = lshr i32 %i.c, 3                         ; 2 uses
  %i.e = add nuw nsw i32 %i.d, 1                  ; 2 uses
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph

.preheader229.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %i.g = and i32 %i.c, 8
  %lcmp.mod.not.not = icmp eq i32 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader229.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader229.loopexit.unr-lcssa, %.lr.ph.preheader
  %.076232.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ae, %.preheader229.loopexit.unr-lcssa ] ; 2 uses
  %.0207230.epil.init = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader ], [ %i.ad, %.preheader229.loopexit.unr-lcssa ]
  %lcmp.mod454 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod454)
  %i.h = load <8 x i16>, ptr %.076232.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.i = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.h, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.j = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.h, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.k = shufflevector <8 x i16> %i.i, <8 x i16> %i.j, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.l = bitcast <16 x i16> %i.k to <8 x float>
  %i.m = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.epil.init, <8 x float> nofpclass(nan inf) %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %.076232.epil.init, i64 16
  br label %.preheader229.loopexit

.preheader229.loopexit:                           ; preds = %.preheader229.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa451 = phi <8 x float> [ %i.ad, %.preheader229.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.epil.preheader ]
  %.lcssa450 = phi ptr [ %i.ae, %.preheader229.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil.preheader ]
  %i.o = and i32 %i.a, 2147483640
  br label %.preheader229

.preheader229:                                    ; preds = %.preheader229.loopexit, %bb.a
  %.0207.lcssa = phi <8 x float> [ splat (float f0xFF7FFFFF), %bb.a ], [ %.lcssa451, %.preheader229.loopexit ] ; 5 uses
  %.079.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.preheader229.loopexit ] ; 3 uses
  %.076.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa450, %.preheader229.loopexit ] ; 2 uses
  %i.p = or disjoint i32 %.079.lcssa, 3
  %i.q = icmp slt i32 %i.p, %i.a
  br i1 %i.q, label %.lr.ph238, label %.preheader228

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.076232 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 3 uses
  %.0207230 = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = load <8 x i16>, ptr %.076232, align 1, !tbaa !61 ; 2 uses
  %i.s = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.r, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.t = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.r, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.u = shufflevector <8 x i16> %i.s, <8 x i16> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.v = bitcast <16 x i16> %i.u to <8 x float>
  %i.w = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230, <8 x float> nofpclass(nan inf) %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %.076232, i64 16
  %i.y = load <8 x i16>, ptr %i.x, align 1, !tbaa !61 ; 2 uses
  %i.z = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.y, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aa = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.y, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ab = shufflevector <8 x i16> %i.z, <8 x i16> %i.aa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ac = bitcast <16 x i16> %i.ab to <8 x float>
  %i.ad = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.w, <8 x float> nofpclass(nan inf) %i.ac) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.076232, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader229.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

.preheader228:                                    ; preds = %.lr.ph238, %.preheader229
  %.0210.lcssa = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader229 ], [ %i.cb, %.lr.ph238 ] ; 4 uses
  %.180.lcssa = phi i32 [ %.079.lcssa, %.preheader229 ], [ %i.cd, %.lr.ph238 ] ; 5 uses
  %.177.lcssa = phi ptr [ %.076.lcssa, %.preheader229 ], [ %i.cc, %.lr.ph238 ] ; 5 uses
  %i.af = icmp slt i32 %.180.lcssa, %i.a
  br i1 %i.af, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader228
  %i.ag = xor i32 %.180.lcssa, -1
  %i.ah = add i32 %i.a, %i.ag                     ; 3 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ah, 3
  br i1 %min.iters.check, label %.lr.ph245.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check329 = icmp ult i32 %i.ah, 31
  br i1 %min.iters.check329, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.aj, 28
  %n.vec = and i64 %i.aj, 8589934560              ; 5 uses
  %i.al = shl nuw nsw i64 %n.vec, 1
  %i.am = getelementptr i8, ptr %.177.lcssa, i64 %i.al
  %i.an = trunc i64 %n.vec to i32
  %i.ao = add i32 %.180.lcssa, %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi330 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi331 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi332 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bi, %vector.body ]
  %i.ap = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.177.lcssa, i64 %i.ap ; 4 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  %i.ar = getelementptr i8, ptr %next.gep, i64 32
  %i.as = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !74
  %wide.load333 = load <8 x i16>, ptr %i.aq, align 2, !tbaa !74
  %wide.load334 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !74
  %wide.load335 = load <8 x i16>, ptr %i.as, align 2, !tbaa !74
  %i.at = zext <8 x i16> %wide.load to <8 x i32>
  %i.au = zext <8 x i16> %wide.load333 to <8 x i32>
  %i.av = zext <8 x i16> %wide.load334 to <8 x i32>
  %i.aw = zext <8 x i16> %wide.load335 to <8 x i32>
  %i.ax = shl nuw <8 x i32> %i.at, splat (i32 16)
  %i.ay = shl nuw <8 x i32> %i.au, splat (i32 16)
  %i.az = shl nuw <8 x i32> %i.av, splat (i32 16)
  %i.ba = shl nuw <8 x i32> %i.aw, splat (i32 16)
  %i.bb = bitcast <8 x i32> %i.ax to <8 x float>
  %i.bc = bitcast <8 x i32> %i.ay to <8 x float>
  %i.bd = bitcast <8 x i32> %i.az to <8 x float>
  %i.be = bitcast <8 x i32> %i.ba to <8 x float>
  %i.bf = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.bb) ; 2 uses
  %i.bg = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi330, <8 x float> %i.bc) ; 2 uses
  %i.bh = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi331, <8 x float> %i.bd) ; 2 uses
  %i.bi = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi332, <8 x float> %i.be) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bf, <8 x float> %i.bg)
  %rdx.minmax.select337 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.bh)
  %rdx.minmax.select339 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select337, <8 x float> %i.bi)
  %i.bk = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select339) ; 3 uses
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph245.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.bk, %vec.epilog.iter.check ], [ f0xFF7FFFFF, %vector.main.loop.iter.check ]
  %n.vec341 = and i64 %i.aj, 8589934588           ; 4 uses
  %i.bl = shl nuw nsw i64 %n.vec341, 1
  %i.bm = getelementptr i8, ptr %.177.lcssa, i64 %i.bl
  %i.bn = trunc i64 %n.vec341 to i32
  %i.bo = add i32 %.180.lcssa, %i.bn
  %broadcast.splatinsert = insertelement <4 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index342 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next346, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi343 = phi <4 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bt, %vec.epilog.vector.body ]
  %i.bp = shl i64 %index342, 1
  %next.gep344 = getelementptr i8, ptr %.177.lcssa, i64 %i.bp
  %wide.load345 = load <4 x i16>, ptr %next.gep344, align 2, !tbaa !74
  %i.bq = zext <4 x i16> %wide.load345 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi343, <4 x float> %i.bs) ; 2 uses
  %index.next346 = add nuw i64 %index342, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next346, %n.vec341
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bv = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.bt) ; 2 uses
  %cmp.n347 = icmp eq i64 %i.aj, %n.vec341
  br i1 %cmp.n347, label %._crit_edge, label %.lr.ph245.preheader

.lr.ph245.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.278244.ph = phi ptr [ %.177.lcssa, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.281243.ph = phi i32 [ %.180.lcssa, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  %.0213242.ph = phi float [ f0xFF7FFFFF, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %.lr.ph245

.lr.ph238:                                        ; preds = %.preheader229, %.lr.ph238
  %.177237 = phi ptr [ %i.cc, %.lr.ph238 ], [ %.076.lcssa, %.preheader229 ] ; 2 uses
  %.180236 = phi i32 [ %i.cd, %.lr.ph238 ], [ %.079.lcssa, %.preheader229 ]
  %.0210235 = phi <4 x float> [ %i.cb, %.lr.ph238 ], [ splat (float f0xFF7FFFFF), %.preheader229 ]
  %i.bw = load i64, ptr %.177237, align 1, !tbaa !61
  %i.bx = insertelement <2 x i64> poison, i64 %i.bw, i64 0
  %i.by = bitcast <2 x i64> %i.bx to <8 x i16>
  %i.bz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.by, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ca = bitcast <8 x i16> %i.bz to <4 x float>
  %i.cb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235, <4 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.177237, i64 8 ; 2 uses
  %i.cd = add nuw nsw i32 %.180236, 4             ; 3 uses
  %i.ce = or disjoint i32 %i.cd, 3
  %i.cf = icmp slt i32 %i.ce, %i.a
  br i1 %i.cf, label %.lr.ph238, label %.preheader228, !llvm.loop !8

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %.lr.ph245
  %.278244 = phi ptr [ %i.cg, %.lr.ph245 ], [ %.278244.ph, %.lr.ph245.preheader ] ; 2 uses
  %.281243 = phi i32 [ %i.cl, %.lr.ph245 ], [ %.281243.ph, %.lr.ph245.preheader ]
  %.0213242 = phi float [ %.sroa.speculated133, %.lr.ph245 ], [ %.0213242.ph, %.lr.ph245.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.278244, i64 2
  %i.ch = load i16, ptr %.278244, align 2, !tbaa !74
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl nuw i32 %i.ci, 16
  %i.ck = bitcast i32 %i.cj to float
  %.sroa.speculated133 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242, float %i.ck) ; 2 uses
  %i.cl = add nuw nsw i32 %.281243, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph245, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph245, %middle.block, %vec.epilog.middle.block, %.preheader228
  %.0213.lcssa = phi float [ f0xFF7FFFFF, %.preheader228 ], [ %i.bv, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %.sroa.speculated133, %.lr.ph245 ] ; 4 uses
  %i.cm = icmp eq i32 %2, 4                       ; 2 uses
  br i1 %i.cm, label %.thread, label %bb.b

.thread:                                          ; preds = %._crit_edge
  %i.cn = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa, <4 x float> nofpclass(nan inf) %i.cn)
  %i.cq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cp, <4 x float> nofpclass(nan inf) %i.co) ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.cs = icmp eq i32 %2, 1
  br i1 %i.cs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ct = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cu = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> nofpclass(nan inf) %i.cu) ; 2 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.cy)
  %i.da = extractelement <4 x float> %i.cz, i64 0 ; 2 uses
  %i.db = fcmp fast olt float %.0213.lcssa, %i.da
  %.sroa.speculated129 = select i1 %i.db, float %i.da, float %.0213.lcssa ; 2 uses
  %i.dc = shufflevector <4 x float> %.0210.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa, <4 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.df = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.de)
  %i.dg = extractelement <4 x float> %i.df, i64 0 ; 2 uses
  %i.dh = fcmp fast olt float %.sroa.speculated129, %i.dg
  %.sroa.speculated = select i1 %i.dh, float %i.dg, float %.sroa.speculated129 ; 2 uses
  %i.di = insertelement <4 x float> poison, float %.sroa.speculated, i64 0 ; 2 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.dl = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.thread ]
  %.1214 = phi nsz float [ %.sroa.speculated, %bb.c ], [ %.0213.lcssa, %bb.b ], [ %.0213.lcssa, %.thread ] ; 3 uses
  %.2212 = phi nsz <4 x float> [ %i.dj, %bb.c ], [ %.0210.lcssa, %bb.b ], [ %i.cq, %.thread ]
  %.2209 = phi nsz <8 x float> [ %i.dk, %bb.c ], [ %.0207.lcssa, %bb.b ], [ %i.cr, %.thread ]
  br i1 %i.b, label %.lr.ph251, label %.preheader227

.preheader227.loopexit:                           ; preds = %.lr.ph251
  %i.dm = and i32 %i.a, 2147483640
  br label %.preheader227

.preheader227:                                    ; preds = %.preheader227.loopexit, %bb.d
  %.0215.lcssa = phi <8 x float> [ zeroinitializer, %bb.d ], [ %i.ey, %.preheader227.loopexit ] ; 5 uses
  %.085.lcssa = phi ptr [ %0, %bb.d ], [ %i.ez, %.preheader227.loopexit ] ; 2 uses
  %.082.lcssa = phi i32 [ 0, %bb.d ], [ %i.dm, %.preheader227.loopexit ] ; 3 uses
  %i.dn = or disjoint i32 %.082.lcssa, 3
  %i.do = icmp slt i32 %i.dn, %i.a
  br i1 %i.do, label %.lr.ph258, label %.preheader226

.lr.ph251:                                        ; preds = %bb.d, %.lr.ph251
  %.082249 = phi i32 [ %i.fa, %.lr.ph251 ], [ 0, %bb.d ]
  %.085248 = phi ptr [ %i.ez, %.lr.ph251 ], [ %0, %bb.d ] ; 3 uses
  %.0215247 = phi <8 x float> [ %i.ey, %.lr.ph251 ], [ zeroinitializer, %bb.d ]
  %i.dp = load <8 x i16>, ptr %.085248, align 1, !tbaa !61 ; 2 uses
  %i.dq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.dp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ds = shufflevector <8 x i16> %i.dq, <8 x i16> %i.dr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dt = bitcast <16 x i16> %i.ds to <8 x float>
  %i.du = fsub fast <8 x float> %i.dt, %.2209
  %i.dv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.du, <8 x float> splat (float f0x42B0C0A5))
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dw, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dy = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dx, i32 1) ; 2 uses
  %i.dz = fcmp fast ogt <8 x float> %i.dy, %i.dx
  %i.ea = select <8 x i1> %i.dz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.eb = fsub fast <8 x float> %i.dy, %i.ea      ; 2 uses
  %i.ec = fneg fast <8 x float> %i.eb             ; 2 uses
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ec, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.dw)
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ec, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ed) ; 8 uses
  %i.ef = fmul fast <8 x float> %i.ee, %i.ee
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eg, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> splat (float f0x3C088908))
  %i.ei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eh, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> splat (float f0x3D2AA9C1))
  %i.ej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ei, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> splat (float f0x3E2AAAAA))
  %i.ek = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ej, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> splat (float 5.000000e-01))
  %i.el = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.ee)
  %i.em = fadd fast <8 x float> %i.el, splat (float 1.000000e+00)
  %i.en = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb)
  %i.eo = shl <8 x i32> %i.en, splat (i32 23)
  %i.ep = add <8 x i32> %i.eo, splat (i32 1065353216)
  %i.eq = bitcast <8 x i32> %i.ep to <8 x float>
  %i.er = fmul fast <8 x float> %i.em, %i.eq      ; 2 uses
  %i.es = bitcast <8 x float> %i.er to <8 x i32>  ; 2 uses
  %i.et = shufflevector <8 x i32> %i.es, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eu = shufflevector <8 x i32> %i.es, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ev = lshr <4 x i32> %i.et, splat (i32 16)
  %i.ew = lshr <4 x i32> %i.eu, splat (i32 16)
  %i.ex = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ev, <4 x i32> %i.ew)
  store <8 x i16> %i.ex, ptr %.085248, align 1, !tbaa !61
  %i.ey = fadd fast <8 x float> %i.er, %.0215247  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.085248, i64 16 ; 2 uses
  %i.fa = add nuw nsw i32 %.082249, 8             ; 2 uses
  %i.fb = or disjoint i32 %i.fa, 7
  %i.fc = icmp slt i32 %i.fb, %i.a
  br i1 %i.fc, label %.lr.ph251, label %.preheader227.loopexit, !llvm.loop !9

.preheader226:                                    ; preds = %.lr.ph258, %.preheader227
  %.0218.lcssa = phi <4 x float> [ zeroinitializer, %.preheader227 ], [ %i.je, %.lr.ph258 ] ; 3 uses
  %.186.lcssa = phi ptr [ %.085.lcssa, %.preheader227 ], [ %i.jf, %.lr.ph258 ] ; 5 uses
  %.183.lcssa = phi i32 [ %.082.lcssa, %.preheader227 ], [ %i.jg, %.lr.ph258 ] ; 5 uses
  %i.fd = icmp slt i32 %.183.lcssa, %i.a
  br i1 %i.fd, label %iter.check377, label %._crit_edge266

iter.check377:                                    ; preds = %.preheader226
  %i.fe = xor i32 %.183.lcssa, -1
  %i.ff = add i32 %i.a, %i.fe                     ; 3 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 5 uses
  %min.iters.check351.a = icmp ult i32 %i.ff, 3
  br i1 %min.iters.check351.a, label %.lr.ph265.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %iter.check377
  %min.iters.check353 = icmp ult i32 %i.ff, 15
  br i1 %min.iters.check353, label %vec.epilog.ph381, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.fi = and i64 %i.fh, 12
  %n.vec355 = and i64 %i.fh, 8589934576           ; 5 uses
  %i.fj = trunc i64 %n.vec355 to i32
  %i.fk = add i32 %.183.lcssa, %i.fj
  %i.fl = shl nuw nsw i64 %n.vec355, 1
  %i.fm = getelementptr i8, ptr %.186.lcssa, i64 %i.fl
  %broadcast.splatinsert356 = insertelement <4 x float> poison, float %.1214, i64 0
  %broadcast.splat357 = shufflevector <4 x float> %broadcast.splatinsert356, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body358

vector.body358:                                   ; preds = %vector.ph354, %vector.body358
  %index359 = phi i64 [ 0, %vector.ph354 ], [ %index.next369, %vector.body358 ] ; 2 uses
  %vec.phi360.a = phi <4 x float> [ zeroinitializer, %vector.ph354 ], [ %i.gx, %vector.body358 ]
  %vec.phi361.a = phi <4 x float> [ zeroinitializer, %vector.ph354 ], [ %i.gy, %vector.body358 ]
  %vec.phi362 = phi <4 x float> [ zeroinitializer, %vector.ph354 ], [ %i.gz, %vector.body358 ]
  %vec.phi363 = phi <4 x float> [ zeroinitializer, %vector.ph354 ], [ %i.ha, %vector.body358 ]
  %i.fn = shl i64 %index359, 1
end_hunk_3
begin_hunk_4_@_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.10:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge46, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %4, align 4, !tbaa !33     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge46

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.z, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.t = load ptr, ptr %3, align 8, !tbaa !52, !noalias !311
  %i.u = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !311
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !311
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %.pre = load i32, ptr %5, align 4, !tbaa !33
  %.pre62 = load i32, ptr %6, align 4, !tbaa !33
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, %.noexc
  %i.z = phi i32 [ %i.r, %.noexc ], [ %i.oz, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge46, label %.noexc, !llvm.loop !300

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit
  %i.aa = phi i32 [ %i.ou, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.pre62, %.lr.ph.preheader ] ; 4 uses
  %i.ab = phi i32 [ %i.ot, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.pre, %.lr.ph.preheader ]
  %.043 = phi i32 [ %i.oy, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ 0, %.lr.ph.preheader ]
  %.02042 = phi ptr [ %i.ox, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %i.y, %.lr.ph.preheader ] ; 8 uses
  %i.ac = mul nsw i32 %i.aa, %i.ab                ; 22 uses
  %i.ad = icmp sgt i32 %i.ac, 7                   ; 3 uses
  br i1 %i.ad, label %.lr.ph.i.preheader, label %.preheader229.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.ae = add nsw i32 %i.ac, -8                   ; 2 uses
  %i.af = lshr i32 %i.ae, 3                       ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1                ; 2 uses
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ag, 1073741822
  br label %.lr.ph.i

.preheader229.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %i.ai = and i32 %i.ae, 8
  %lcmp.mod.not.not = icmp eq i32 %i.ai, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %.preheader229.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %.preheader229.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.076232.i.epil.init = phi ptr [ %.02042, %.lr.ph.i.preheader ], [ %i.bg, %.preheader229.loopexit.i.unr-lcssa ] ; 2 uses
  %.0207230.i.epil.init = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader ], [ %i.bf, %.preheader229.loopexit.i.unr-lcssa ]
  %lcmp.mod225 = trunc i32 %i.ag to i1
  call void @llvm.assume(i1 %lcmp.mod225)
  %i.aj = load <8 x i16>, ptr %.076232.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.ak = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.al = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.am = shufflevector <8 x i16> %i.ak, <8 x i16> %i.al, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = bitcast <16 x i16> %i.am to <8 x float>
  %i.ao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.i.epil.init, <8 x float> nofpclass(nan inf) %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %.076232.i.epil.init, i64 16
  br label %.preheader229.loopexit.i

.preheader229.loopexit.i:                         ; preds = %.preheader229.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa199 = phi <8 x float> [ %i.bf, %.preheader229.loopexit.i.unr-lcssa ], [ %i.ao, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi ptr [ %i.bg, %.preheader229.loopexit.i.unr-lcssa ], [ %i.ap, %.lr.ph.i.epil.preheader ]
  %i.aq = and i32 %i.ac, 2147483640
  br label %.preheader229.i

.preheader229.i:                                  ; preds = %.preheader229.loopexit.i, %.lr.ph
  %.0207.lcssa.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa199, %.preheader229.loopexit.i ] ; 5 uses
  %.079.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.aq, %.preheader229.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi ptr [ %.02042, %.lr.ph ], [ %.lcssa, %.preheader229.loopexit.i ] ; 2 uses
  %i.ar = or disjoint i32 %.079.lcssa.i, 3
  %i.as = icmp slt i32 %i.ar, %i.ac
  br i1 %i.as, label %.lr.ph238.i, label %.preheader228.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.076232.i = phi ptr [ %.02042, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ] ; 3 uses
  %.0207230.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.bf, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.at = load <8 x i16>, ptr %.076232.i, align 1, !tbaa !61 ; 2 uses
  %i.au = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.at, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.av = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.at, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aw = shufflevector <8 x i16> %i.au, <8 x i16> %i.av, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ax = bitcast <16 x i16> %i.aw to <8 x float>
  %i.ay = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.i, <8 x float> nofpclass(nan inf) %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %.076232.i, i64 16
  %i.ba = load <8 x i16>, ptr %i.az, align 1, !tbaa !61 ; 2 uses
  %i.bb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ba, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ba, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bd = shufflevector <8 x i16> %i.bb, <8 x i16> %i.bc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.be = bitcast <16 x i16> %i.bd to <8 x float>
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.be) ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.076232.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader229.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

.preheader228.i:                                  ; preds = %.lr.ph238.i, %.preheader229.i
  %.0210.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader229.i ], [ %i.dd, %.lr.ph238.i ] ; 4 uses
  %.180.lcssa.i = phi i32 [ %.079.lcssa.i, %.preheader229.i ], [ %i.df, %.lr.ph238.i ] ; 5 uses
  %.177.lcssa.i = phi ptr [ %.076.lcssa.i, %.preheader229.i ], [ %i.de, %.lr.ph238.i ] ; 5 uses
  %i.bh = icmp slt i32 %.180.lcssa.i, %i.ac
  br i1 %i.bh, label %iter.check180, label %._crit_edge.i

iter.check180:                                    ; preds = %.preheader228.i
  %i.bi = xor i32 %.180.lcssa.i, -1
  %i.bj = add i32 %i.ac, %i.bi                    ; 3 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 5 uses
  %min.iters.check154 = icmp ult i32 %i.bj, 3
  br i1 %min.iters.check154, label %.lr.ph245.i.preheader, label %vector.main.loop.iter.check155

vector.main.loop.iter.check155:                   ; preds = %iter.check180
  %min.iters.check156 = icmp ult i32 %i.bj, 31
  br i1 %min.iters.check156, label %vec.epilog.ph184, label %vector.ph157

vector.ph157:                                     ; preds = %vector.main.loop.iter.check155
  %i.bm = and i64 %i.bl, 28
  %n.vec158 = and i64 %i.bl, 8589934560           ; 5 uses
  %i.bn = shl nuw nsw i64 %n.vec158, 1
  %i.bo = getelementptr i8, ptr %.177.lcssa.i, i64 %i.bn
  %i.bp = trunc i64 %n.vec158 to i32
  %i.bq = add i32 %.180.lcssa.i, %i.bp
  br label %vector.body159

vector.body159:                                   ; preds = %vector.ph157, %vector.body159
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next170, %vector.body159 ] ; 2 uses
  %vec.phi161.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph157 ], [ %i.ch, %vector.body159 ]
  %vec.phi162 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph157 ], [ %i.ci, %vector.body159 ]
  %vec.phi163 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph157 ], [ %i.cj, %vector.body159 ]
  %vec.phi164 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph157 ], [ %i.ck, %vector.body159 ]
  %i.br = shl i64 %index160, 1
  %next.gep165 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.br ; 4 uses
  %i.bs = getelementptr i8, ptr %next.gep165, i64 16
  %i.bt = getelementptr i8, ptr %next.gep165, i64 32
  %i.bu = getelementptr i8, ptr %next.gep165, i64 48
  %wide.load166.a = load <8 x i16>, ptr %next.gep165, align 2, !tbaa !74
  %wide.load167 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !74
  %wide.load168 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !74
  %wide.load169 = load <8 x i16>, ptr %i.bu, align 2, !tbaa !74
  %i.bv = zext <8 x i16> %wide.load166.a to <8 x i32>
  %i.bw = zext <8 x i16> %wide.load167 to <8 x i32>
  %i.bx = zext <8 x i16> %wide.load168 to <8 x i32>
  %i.by = zext <8 x i16> %wide.load169 to <8 x i32>
  %i.bz = shl nuw <8 x i32> %i.bv, splat (i32 16)
  %i.ca = shl nuw <8 x i32> %i.bw, splat (i32 16)
  %i.cb = shl nuw <8 x i32> %i.bx, splat (i32 16)
  %i.cc = shl nuw <8 x i32> %i.by, splat (i32 16)
  %i.cd = bitcast <8 x i32> %i.bz to <8 x float>
  %i.ce = bitcast <8 x i32> %i.ca to <8 x float>
  %i.cf = bitcast <8 x i32> %i.cb to <8 x float>
  %i.cg = bitcast <8 x i32> %i.cc to <8 x float>
  %i.ch = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi161.a, <8 x float> %i.cd) ; 2 uses
  %i.ci = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi162, <8 x float> %i.ce) ; 2 uses
  %i.cj = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi163, <8 x float> %i.cf) ; 2 uses
  %i.ck = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi164, <8 x float> %i.cg) ; 2 uses
  %index.next170 = add nuw i64 %index160, 32      ; 2 uses
  %i.cl = icmp eq i64 %index.next170, %n.vec158
  br i1 %i.cl, label %middle.block171, label %vector.body159, !llvm.loop !301

middle.block171:                                  ; preds = %vector.body159
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ch, <8 x float> %i.ci)
  %rdx.minmax.select173 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.cj)
  %rdx.minmax.select175 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select173, <8 x float> %i.ck)
  %i.cm = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select175) ; 3 uses
  %cmp.n176 = icmp eq i64 %i.bl, %n.vec158
  br i1 %cmp.n176, label %._crit_edge.i, label %vec.epilog.iter.check182

vec.epilog.iter.check182:                         ; preds = %middle.block171
  %min.epilog.iters.check183 = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check183, label %.lr.ph245.i.preheader, label %vec.epilog.ph184, !prof !69

vec.epilog.ph184:                                 ; preds = %vector.main.loop.iter.check155, %vec.epilog.iter.check182
  %vec.epilog.resume.val177 = phi i64 [ %n.vec158, %vec.epilog.iter.check182 ], [ 0, %vector.main.loop.iter.check155 ]
  %bc.merge.rdx179 = phi float [ %i.cm, %vec.epilog.iter.check182 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check155 ]
  %n.vec185 = and i64 %i.bl, 8589934588           ; 4 uses
  %i.cn = shl nuw nsw i64 %n.vec185, 1
  %i.co = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cn
  %i.cp = trunc i64 %n.vec185 to i32
  %i.cq = add i32 %.180.lcssa.i, %i.cp
  %broadcast.splatinsert186 = insertelement <4 x float> poison, float %bc.merge.rdx179, i64 0
  %broadcast.splat187 = shufflevector <4 x float> %broadcast.splatinsert186, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body188

vec.epilog.vector.body188:                        ; preds = %vec.epilog.vector.body188, %vec.epilog.ph184
  %index189 = phi i64 [ %vec.epilog.resume.val177, %vec.epilog.ph184 ], [ %index.next193, %vec.epilog.vector.body188 ] ; 2 uses
  %vec.phi190 = phi <4 x float> [ %broadcast.splat187, %vec.epilog.ph184 ], [ %i.cv, %vec.epilog.vector.body188 ]
  %i.cr = shl i64 %index189, 1
  %next.gep191 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cr
  %wide.load192 = load <4 x i16>, ptr %next.gep191, align 2, !tbaa !74
  %i.cs = zext <4 x i16> %wide.load192 to <4 x i32>
  %i.ct = shl nuw <4 x i32> %i.cs, splat (i32 16)
  %i.cu = bitcast <4 x i32> %i.ct to <4 x float>
  %i.cv = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi190, <4 x float> %i.cu) ; 2 uses
  %index.next193 = add nuw i64 %index189, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next193, %n.vec185
  br i1 %i.cw, label %vec.epilog.middle.block194, label %vec.epilog.vector.body188, !llvm.loop !302

vec.epilog.middle.block194:                       ; preds = %vec.epilog.vector.body188
  %i.cx = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.cv) ; 2 uses
  %cmp.n195 = icmp eq i64 %i.bl, %n.vec185
  br i1 %cmp.n195, label %._crit_edge.i, label %.lr.ph245.i.preheader

.lr.ph245.i.preheader:                            ; preds = %iter.check180, %vec.epilog.iter.check182, %vec.epilog.middle.block194
  %.278244.i.ph = phi ptr [ %.177.lcssa.i, %iter.check180 ], [ %i.bo, %vec.epilog.iter.check182 ], [ %i.co, %vec.epilog.middle.block194 ]
  %.281243.i.ph = phi i32 [ %.180.lcssa.i, %iter.check180 ], [ %i.bq, %vec.epilog.iter.check182 ], [ %i.cq, %vec.epilog.middle.block194 ]
  %.0213242.i.ph = phi float [ f0xFF7FFFFF, %iter.check180 ], [ %i.cm, %vec.epilog.iter.check182 ], [ %i.cx, %vec.epilog.middle.block194 ]
  br label %.lr.ph245.i

.lr.ph238.i:                                      ; preds = %.preheader229.i, %.lr.ph238.i
  %.177237.i = phi ptr [ %i.de, %.lr.ph238.i ], [ %.076.lcssa.i, %.preheader229.i ] ; 2 uses
  %.180236.i = phi i32 [ %i.df, %.lr.ph238.i ], [ %.079.lcssa.i, %.preheader229.i ]
  %.0210235.i = phi <4 x float> [ %i.dd, %.lr.ph238.i ], [ splat (float f0xFF7FFFFF), %.preheader229.i ]
  %i.cy = load i64, ptr %.177237.i, align 1, !tbaa !61
  %i.cz = insertelement <2 x i64> poison, i64 %i.cy, i64 0
  %i.da = bitcast <2 x i64> %i.cz to <8 x i16>
  %i.db = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.da, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dc = bitcast <8 x i16> %i.db to <4 x float>
  %i.dd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235.i, <4 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.177237.i, i64 8 ; 2 uses
  %i.df = add nuw nsw i32 %.180236.i, 4           ; 3 uses
  %i.dg = or disjoint i32 %i.df, 3
  %i.dh = icmp slt i32 %i.dg, %i.ac
  br i1 %i.dh, label %.lr.ph238.i, label %.preheader228.i, !llvm.loop !8

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %.278244.i = phi ptr [ %i.di, %.lr.ph245.i ], [ %.278244.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.281243.i = phi i32 [ %i.dn, %.lr.ph245.i ], [ %.281243.i.ph, %.lr.ph245.i.preheader ]
  %.0213242.i = phi float [ %.sroa.speculated133.i, %.lr.ph245.i ], [ %.0213242.i.ph, %.lr.ph245.i.preheader ]
  %i.di = getelementptr inbounds nuw i8, ptr %.278244.i, i64 2
  %i.dj = load i16, ptr %.278244.i, align 2, !tbaa !74
  %i.dk = zext i16 %i.dj to i32
  %i.dl = shl nuw i32 %i.dk, 16
  %i.dm = bitcast i32 %i.dl to float
  %.sroa.speculated133.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242.i, float %i.dm) ; 2 uses
  %i.dn = add nuw nsw i32 %.281243.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dn, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph245.i, !llvm.loop !303

._crit_edge.i:                                    ; preds = %.lr.ph245.i, %middle.block171, %vec.epilog.middle.block194, %.preheader228.i
  %.0213.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader228.i ], [ %i.cx, %vec.epilog.middle.block194 ], [ %i.cm, %middle.block171 ], [ %.sroa.speculated133.i, %.lr.ph245.i ] ; 4 uses
  %i.do = icmp eq i32 %i.aa, 4                    ; 2 uses
  br i1 %i.do, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.dp = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.dp)
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dr, <4 x float> nofpclass(nan inf) %i.dq) ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.du = icmp eq i32 %i.aa, 1
  br i1 %i.du, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dv = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dw = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) %i.dw) ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> nofpclass(nan inf) %i.dy) ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.ea)
  %i.ec = extractelement <4 x float> %i.eb, i64 0 ; 2 uses
  %i.ed = fcmp fast olt float %.0213.lcssa.i, %i.ec
  %.sroa.speculated129.i = select i1 %i.ed, float %i.ec, float %.0213.lcssa.i ; 2 uses
  %i.ee = shufflevector <4 x float> %.0210.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ee) ; 2 uses
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> nofpclass(nan inf) %i.eg)
  %i.ei = extractelement <4 x float> %i.eh, i64 0 ; 2 uses
  %i.ej = fcmp fast olt float %.sroa.speculated129.i, %i.ei
  %.sroa.speculated.i = select i1 %i.ej, float %i.ei, float %.sroa.speculated129.i ; 2 uses
  %i.ek = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = shufflevector <4 x float> %i.ek, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.en = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1214.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0213.lcssa.i, %bb.c ], [ %.0213.lcssa.i, %.thread.i ] ; 3 uses
  %.2212.i = phi nsz <4 x float> [ %i.el, %bb.d ], [ %.0210.lcssa.i, %bb.c ], [ %i.ds, %.thread.i ]
  %.2209.i = phi nsz <8 x float> [ %i.em, %bb.d ], [ %.0207.lcssa.i, %bb.c ], [ %i.dt, %.thread.i ]
  br i1 %i.ad, label %.lr.ph251.i, label %.preheader227.i

.preheader227.loopexit.i:                         ; preds = %.lr.ph251.i
  %i.eo = and i32 %i.ac, 2147483640
  br label %.preheader227.i

.preheader227.i:                                  ; preds = %.preheader227.loopexit.i, %bb.e
  %.0215.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.ga, %.preheader227.loopexit.i ] ; 5 uses
  %.085.lcssa.i = phi ptr [ %.02042, %bb.e ], [ %i.gb, %.preheader227.loopexit.i ] ; 2 uses
  %.082.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.eo, %.preheader227.loopexit.i ] ; 3 uses
  %i.ep = or disjoint i32 %.082.lcssa.i, 3
  %i.eq = icmp slt i32 %i.ep, %i.ac
  br i1 %i.eq, label %.lr.ph258.i, label %.preheader226.i

.lr.ph251.i:                                      ; preds = %bb.e, %.lr.ph251.i
  %.082249.i = phi i32 [ %i.gc, %.lr.ph251.i ], [ 0, %bb.e ]
  %.085248.i = phi ptr [ %i.gb, %.lr.ph251.i ], [ %.02042, %bb.e ] ; 3 uses
  %.0215247.i = phi <8 x float> [ %i.ga, %.lr.ph251.i ], [ zeroinitializer, %bb.e ]
  %i.er = load <8 x i16>, ptr %.085248.i, align 1, !tbaa !61 ; 2 uses
  %i.es = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.er, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.et = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.er, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eu = shufflevector <8 x i16> %i.es, <8 x i16> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ev = bitcast <16 x i16> %i.eu to <8 x float>
  %i.ew = fsub fast <8 x float> %i.ev, %.2209.i
  %i.ex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> splat (float f0x42B0C0A5))
  %i.ey = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ex, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ey, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fa = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ez, i32 1) ; 2 uses
  %i.fb = fcmp fast ogt <8 x float> %i.fa, %i.ez
  %i.fc = select <8 x i1> %i.fb, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fd = fsub fast <8 x float> %i.fa, %i.fc      ; 2 uses
  %i.fe = fneg fast <8 x float> %i.fd             ; 2 uses
  %i.ff = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fe, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ey)
  %i.fg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fe, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ff) ; 8 uses
  %i.fh = fmul fast <8 x float> %i.fg, %i.fg
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fg, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) %i.fg, <8 x float> splat (float f0x3C088908))
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> nofpclass(nan inf) %i.fg, <8 x float> splat (float f0x3D2AA9C1))
  %i.fl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fk, <8 x float> nofpclass(nan inf) %i.fg, <8 x float> splat (float f0x3E2AAAAA))
  %i.fm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fl, <8 x float> nofpclass(nan inf) %i.fg, <8 x float> splat (float 5.000000e-01))
  %i.fn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fm, <8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.fg)
  %i.fo = fadd fast <8 x float> %i.fn, splat (float 1.000000e+00)
  %i.fp = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fd)
  %i.fq = shl <8 x i32> %i.fp, splat (i32 23)
  %i.fr = add <8 x i32> %i.fq, splat (i32 1065353216)
  %i.fs = bitcast <8 x i32> %i.fr to <8 x float>
  %i.ft = fmul fast <8 x float> %i.fo, %i.fs      ; 2 uses
  %i.fu = bitcast <8 x float> %i.ft to <8 x i32>  ; 2 uses
  %i.fv = shufflevector <8 x i32> %i.fu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fw = shufflevector <8 x i32> %i.fu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fx = lshr <4 x i32> %i.fv, splat (i32 16)
  %i.fy = lshr <4 x i32> %i.fw, splat (i32 16)
  %i.fz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fx, <4 x i32> %i.fy)
  store <8 x i16> %i.fz, ptr %.085248.i, align 1, !tbaa !61
  %i.ga = fadd fast <8 x float> %i.ft, %.0215247.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.085248.i, i64 16 ; 2 uses
  %i.gc = add nuw nsw i32 %.082249.i, 8           ; 2 uses
  %i.gd = or disjoint i32 %i.gc, 7
  %i.ge = icmp slt i32 %i.gd, %i.ac
  br i1 %i.ge, label %.lr.ph251.i, label %.preheader227.loopexit.i, !llvm.loop !9

.preheader226.i:                                  ; preds = %.lr.ph258.i, %.preheader227.i
  %.0218.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader227.i ], [ %i.kg, %.lr.ph258.i ] ; 3 uses
  %.186.lcssa.i = phi ptr [ %.085.lcssa.i, %.preheader227.i ], [ %i.kh, %.lr.ph258.i ] ; 5 uses
  %.183.lcssa.i = phi i32 [ %.082.lcssa.i, %.preheader227.i ], [ %i.ki, %.lr.ph258.i ] ; 5 uses
  %i.gf = icmp slt i32 %.183.lcssa.i, %i.ac
  br i1 %i.gf, label %iter.check135, label %._crit_edge266.i

iter.check135:                                    ; preds = %.preheader226.i
  %i.gg = xor i32 %.183.lcssa.i, -1
  %i.gh = add i32 %i.ac, %i.gg                    ; 3 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 5 uses
  %min.iters.check111.a = icmp ult i32 %i.gh, 3
  br i1 %min.iters.check111.a, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check112

vector.main.loop.iter.check112:                   ; preds = %iter.check135
  %min.iters.check113 = icmp ult i32 %i.gh, 15
  br i1 %min.iters.check113, label %vec.epilog.ph139, label %vector.ph114

vector.ph114:                                     ; preds = %vector.main.loop.iter.check112
  %i.gk = and i64 %i.gj, 12
  %n.vec115 = and i64 %i.gj, 8589934576           ; 5 uses
  %i.gl = trunc i64 %n.vec115 to i32
  %i.gm = add i32 %.183.lcssa.i, %i.gl
  %i.gn = shl nuw nsw i64 %n.vec115, 1
  %i.go = getelementptr i8, ptr %.186.lcssa.i, i64 %i.gn
  %broadcast.splatinsert116 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat117 = shufflevector <4 x float> %broadcast.splatinsert116, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph114, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next128, %vector.body118 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph114 ], [ %i.hz, %vector.body118 ]
  %vec.phi120.a = phi <4 x float> [ zeroinitializer, %vector.ph114 ], [ %i.ia, %vector.body118 ]
  %vec.phi121 = phi <4 x float> [ zeroinitializer, %vector.ph114 ], [ %i.ib, %vector.body118 ]
  %vec.phi122 = phi <4 x float> [ zeroinitializer, %vector.ph114 ], [ %i.ic, %vector.body118 ]
  %i.gp = shl i64 %index119, 1
  %next.gep123 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.gp ; 5 uses
  %i.gq = getelementptr i8, ptr %next.gep123, i64 8 ; 2 uses
  %i.gr = getelementptr i8, ptr %next.gep123, i64 16 ; 2 uses
  %i.gs = getelementptr i8, ptr %next.gep123, i64 24 ; 2 uses
  %wide.load124.a = load <4 x i16>, ptr %next.gep123, align 2, !tbaa !74
end_hunk_4
begin_hunk_5_@_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.12:bb.a
.preheader.lr.ph:                                 ; preds = %.noexc
  %i.u = load i32, ptr %5, align 4, !tbaa !33     ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader.preheader, label %._crit_edge50

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.w = load ptr, ptr %3, align 8, !tbaa !52, !noalias !332
  %i.x = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !332
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !332
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.ah, %._crit_edge ], [ %i.r, %.preheader.preheader ]
  %i.ad = phi i32 [ %i.ai, %._crit_edge ], [ %i.u, %.preheader.preheader ] ; 2 uses
  %.02349 = phi i32 [ %i.aj, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02448 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ab, %.preheader.preheader ] ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load i32, ptr %6, align 4, !tbaa !33
  %.pre71 = load i32, ptr %7, align 4, !tbaa !33
  br label %.lr.ph

._crit_edge50:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %.noexc
  %i.af = phi i32 [ %i.r, %.noexc ], [ %i.r, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ]
  %i.ag = phi i32 [ %i.s, %.noexc ], [ %i.s, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge53, label %.noexc, !llvm.loop !320

._crit_edge.loopexit:                             ; preds = %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit
  %.pre72 = load i32, ptr %4, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ah = phi i32 [ %i.ac, %.preheader ], [ %.pre72, %._crit_edge.loopexit ] ; 4 uses
  %i.ai = phi i32 [ %i.ad, %.preheader ], [ %i.pk, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.02448, %.preheader ], [ %i.pi, %._crit_edge.loopexit ]
  %i.aj = add nuw nsw i32 %.02349, 1              ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.ah
  br i1 %i.ak, label %.preheader, label %._crit_edge50, !llvm.loop !321

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit
  %i.al = phi i32 [ %i.pf, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.pre71, %.lr.ph.preheader ] ; 4 uses
  %i.am = phi i32 [ %i.pe, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.pre, %.lr.ph.preheader ]
  %.047 = phi i32 [ %i.pj, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ 0, %.lr.ph.preheader ]
  %.146 = phi ptr [ %i.pi, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.02448, %.lr.ph.preheader ] ; 8 uses
  %i.an = mul nsw i32 %i.al, %i.am                ; 22 uses
  %i.ao = icmp sgt i32 %i.an, 7                   ; 3 uses
  br i1 %i.ao, label %.lr.ph.i.preheader, label %.preheader229.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.ap = add nsw i32 %i.an, -8                   ; 2 uses
  %i.aq = lshr i32 %i.ap, 3                       ; 2 uses
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ar, 1073741822
  br label %.lr.ph.i

.preheader229.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %i.at = and i32 %i.ap, 8
  %lcmp.mod.not.not = icmp eq i32 %i.at, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %.preheader229.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %.preheader229.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.076232.i.epil.init = phi ptr [ %.146, %.lr.ph.i.preheader ], [ %i.br, %.preheader229.loopexit.i.unr-lcssa ] ; 2 uses
  %.0207230.i.epil.init = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader ], [ %i.bq, %.preheader229.loopexit.i.unr-lcssa ]
  %lcmp.mod246 = trunc i32 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod246)
  %i.au = load <8 x i16>, ptr %.076232.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.av = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.au, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ax = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = bitcast <16 x i16> %i.ax to <8 x float>
  %i.az = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.i.epil.init, <8 x float> nofpclass(nan inf) %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %.076232.i.epil.init, i64 16
  br label %.preheader229.loopexit.i

.preheader229.loopexit.i:                         ; preds = %.preheader229.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa218 = phi <8 x float> [ %i.bq, %.preheader229.loopexit.i.unr-lcssa ], [ %i.az, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi ptr [ %i.br, %.preheader229.loopexit.i.unr-lcssa ], [ %i.ba, %.lr.ph.i.epil.preheader ]
  %i.bb = and i32 %i.an, 2147483640
  br label %.preheader229.i

.preheader229.i:                                  ; preds = %.preheader229.loopexit.i, %.lr.ph
  %.0207.lcssa.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa218, %.preheader229.loopexit.i ] ; 5 uses
  %.079.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.bb, %.preheader229.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi ptr [ %.146, %.lr.ph ], [ %.lcssa, %.preheader229.loopexit.i ] ; 2 uses
  %i.bc = or disjoint i32 %.079.lcssa.i, 3
  %i.bd = icmp slt i32 %i.bc, %i.an
  br i1 %i.bd, label %.lr.ph238.i, label %.preheader228.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.076232.i = phi ptr [ %.146, %.lr.ph.i.preheader.new ], [ %i.br, %.lr.ph.i ] ; 3 uses
  %.0207230.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.bq, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.be = load <8 x i16>, ptr %.076232.i, align 1, !tbaa !61 ; 2 uses
  %i.bf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.be, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.be, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bh = shufflevector <8 x i16> %i.bf, <8 x i16> %i.bg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bi = bitcast <16 x i16> %i.bh to <8 x float>
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.i, <8 x float> nofpclass(nan inf) %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %.076232.i, i64 16
  %i.bl = load <8 x i16>, ptr %i.bk, align 1, !tbaa !61 ; 2 uses
  %i.bm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bn = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bo = shufflevector <8 x i16> %i.bm, <8 x i16> %i.bn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bp = bitcast <16 x i16> %i.bo to <8 x float>
  %i.bq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bj, <8 x float> nofpclass(nan inf) %i.bp) ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.076232.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader229.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

.preheader228.i:                                  ; preds = %.lr.ph238.i, %.preheader229.i
  %.0210.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader229.i ], [ %i.do, %.lr.ph238.i ] ; 4 uses
  %.180.lcssa.i = phi i32 [ %.079.lcssa.i, %.preheader229.i ], [ %i.dq, %.lr.ph238.i ] ; 5 uses
  %.177.lcssa.i = phi ptr [ %.076.lcssa.i, %.preheader229.i ], [ %i.dp, %.lr.ph238.i ] ; 5 uses
  %i.bs = icmp slt i32 %.180.lcssa.i, %i.an
  br i1 %i.bs, label %iter.check199, label %._crit_edge.i

iter.check199:                                    ; preds = %.preheader228.i
  %i.bt = xor i32 %.180.lcssa.i, -1
  %i.bu = add i32 %i.an, %i.bt                    ; 3 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 5 uses
  %min.iters.check173 = icmp ult i32 %i.bu, 3
  br i1 %min.iters.check173, label %.lr.ph245.i.preheader, label %vector.main.loop.iter.check174

vector.main.loop.iter.check174:                   ; preds = %iter.check199
  %min.iters.check175 = icmp ult i32 %i.bu, 31
  br i1 %min.iters.check175, label %vec.epilog.ph203, label %vector.ph176

vector.ph176:                                     ; preds = %vector.main.loop.iter.check174
  %i.bx = and i64 %i.bw, 28
  %n.vec177 = and i64 %i.bw, 8589934560           ; 5 uses
  %i.by = shl nuw nsw i64 %n.vec177, 1
  %i.bz = getelementptr i8, ptr %.177.lcssa.i, i64 %i.by
  %i.ca = trunc i64 %n.vec177 to i32
  %i.cb = add i32 %.180.lcssa.i, %i.ca
  br label %vector.body178

vector.body178:                                   ; preds = %vector.ph176, %vector.body178
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next189, %vector.body178 ] ; 2 uses
  %vec.phi180.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph176 ], [ %i.cs, %vector.body178 ]
  %vec.phi181 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph176 ], [ %i.ct, %vector.body178 ]
  %vec.phi182 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph176 ], [ %i.cu, %vector.body178 ]
  %vec.phi183 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph176 ], [ %i.cv, %vector.body178 ]
  %i.cc = shl i64 %index179, 1
  %next.gep184 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cc ; 4 uses
  %i.cd = getelementptr i8, ptr %next.gep184, i64 16
  %i.ce = getelementptr i8, ptr %next.gep184, i64 32
  %i.cf = getelementptr i8, ptr %next.gep184, i64 48
  %wide.load185.a = load <8 x i16>, ptr %next.gep184, align 2, !tbaa !74
  %wide.load186 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !74
  %wide.load187 = load <8 x i16>, ptr %i.ce, align 2, !tbaa !74
  %wide.load188 = load <8 x i16>, ptr %i.cf, align 2, !tbaa !74
  %i.cg = zext <8 x i16> %wide.load185.a to <8 x i32>
  %i.ch = zext <8 x i16> %wide.load186 to <8 x i32>
  %i.ci = zext <8 x i16> %wide.load187 to <8 x i32>
  %i.cj = zext <8 x i16> %wide.load188 to <8 x i32>
  %i.ck = shl nuw <8 x i32> %i.cg, splat (i32 16)
  %i.cl = shl nuw <8 x i32> %i.ch, splat (i32 16)
  %i.cm = shl nuw <8 x i32> %i.ci, splat (i32 16)
  %i.cn = shl nuw <8 x i32> %i.cj, splat (i32 16)
  %i.co = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cp = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cq = bitcast <8 x i32> %i.cm to <8 x float>
  %i.cr = bitcast <8 x i32> %i.cn to <8 x float>
  %i.cs = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi180.a, <8 x float> %i.co) ; 2 uses
  %i.ct = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi181, <8 x float> %i.cp) ; 2 uses
  %i.cu = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi182, <8 x float> %i.cq) ; 2 uses
  %i.cv = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi183, <8 x float> %i.cr) ; 2 uses
  %index.next189 = add nuw i64 %index179, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next189, %n.vec177
  br i1 %i.cw, label %middle.block190, label %vector.body178, !llvm.loop !322

middle.block190:                                  ; preds = %vector.body178
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cs, <8 x float> %i.ct)
  %rdx.minmax.select192 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.cu)
  %rdx.minmax.select194 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select192, <8 x float> %i.cv)
  %i.cx = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select194) ; 3 uses
  %cmp.n195 = icmp eq i64 %i.bw, %n.vec177
  br i1 %cmp.n195, label %._crit_edge.i, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block190
  %min.epilog.iters.check202 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph245.i.preheader, label %vec.epilog.ph203, !prof !69

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check174, %vec.epilog.iter.check201
  %vec.epilog.resume.val196 = phi i64 [ %n.vec177, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check174 ]
  %bc.merge.rdx198 = phi float [ %i.cx, %vec.epilog.iter.check201 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check174 ]
  %n.vec204 = and i64 %i.bw, 8589934588           ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec204, 1
  %i.cz = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cy
  %i.da = trunc i64 %n.vec204 to i32
  %i.db = add i32 %.180.lcssa.i, %i.da
  %broadcast.splatinsert205 = insertelement <4 x float> poison, float %bc.merge.rdx198, i64 0
  %broadcast.splat206 = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body207

vec.epilog.vector.body207:                        ; preds = %vec.epilog.vector.body207, %vec.epilog.ph203
  %index208 = phi i64 [ %vec.epilog.resume.val196, %vec.epilog.ph203 ], [ %index.next212, %vec.epilog.vector.body207 ] ; 2 uses
  %vec.phi209 = phi <4 x float> [ %broadcast.splat206, %vec.epilog.ph203 ], [ %i.dg, %vec.epilog.vector.body207 ]
  %i.dc = shl i64 %index208, 1
  %next.gep210 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.dc
  %wide.load211 = load <4 x i16>, ptr %next.gep210, align 2, !tbaa !74
  %i.dd = zext <4 x i16> %wide.load211 to <4 x i32>
  %i.de = shl nuw <4 x i32> %i.dd, splat (i32 16)
  %i.df = bitcast <4 x i32> %i.de to <4 x float>
  %i.dg = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi209, <4 x float> %i.df) ; 2 uses
  %index.next212 = add nuw i64 %index208, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next212, %n.vec204
  br i1 %i.dh, label %vec.epilog.middle.block213, label %vec.epilog.vector.body207, !llvm.loop !323

vec.epilog.middle.block213:                       ; preds = %vec.epilog.vector.body207
  %i.di = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.dg) ; 2 uses
  %cmp.n214 = icmp eq i64 %i.bw, %n.vec204
  br i1 %cmp.n214, label %._crit_edge.i, label %.lr.ph245.i.preheader

.lr.ph245.i.preheader:                            ; preds = %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block213
  %.278244.i.ph = phi ptr [ %.177.lcssa.i, %iter.check199 ], [ %i.bz, %vec.epilog.iter.check201 ], [ %i.cz, %vec.epilog.middle.block213 ]
  %.281243.i.ph = phi i32 [ %.180.lcssa.i, %iter.check199 ], [ %i.cb, %vec.epilog.iter.check201 ], [ %i.db, %vec.epilog.middle.block213 ]
  %.0213242.i.ph = phi float [ f0xFF7FFFFF, %iter.check199 ], [ %i.cx, %vec.epilog.iter.check201 ], [ %i.di, %vec.epilog.middle.block213 ]
  br label %.lr.ph245.i

.lr.ph238.i:                                      ; preds = %.preheader229.i, %.lr.ph238.i
  %.177237.i = phi ptr [ %i.dp, %.lr.ph238.i ], [ %.076.lcssa.i, %.preheader229.i ] ; 2 uses
  %.180236.i = phi i32 [ %i.dq, %.lr.ph238.i ], [ %.079.lcssa.i, %.preheader229.i ]
  %.0210235.i = phi <4 x float> [ %i.do, %.lr.ph238.i ], [ splat (float f0xFF7FFFFF), %.preheader229.i ]
  %i.dj = load i64, ptr %.177237.i, align 1, !tbaa !61
  %i.dk = insertelement <2 x i64> poison, i64 %i.dj, i64 0
  %i.dl = bitcast <2 x i64> %i.dk to <8 x i16>
  %i.dm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dn = bitcast <8 x i16> %i.dm to <4 x float>
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235.i, <4 x float> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.177237.i, i64 8 ; 2 uses
  %i.dq = add nuw nsw i32 %.180236.i, 4           ; 3 uses
  %i.dr = or disjoint i32 %i.dq, 3
  %i.ds = icmp slt i32 %i.dr, %i.an
  br i1 %i.ds, label %.lr.ph238.i, label %.preheader228.i, !llvm.loop !8

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %.278244.i = phi ptr [ %i.dt, %.lr.ph245.i ], [ %.278244.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.281243.i = phi i32 [ %i.dy, %.lr.ph245.i ], [ %.281243.i.ph, %.lr.ph245.i.preheader ]
  %.0213242.i = phi float [ %.sroa.speculated133.i, %.lr.ph245.i ], [ %.0213242.i.ph, %.lr.ph245.i.preheader ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.278244.i, i64 2
  %i.du = load i16, ptr %.278244.i, align 2, !tbaa !74
  %i.dv = zext i16 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 16
  %i.dx = bitcast i32 %i.dw to float
  %.sroa.speculated133.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242.i, float %i.dx) ; 2 uses
  %i.dy = add nuw nsw i32 %.281243.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dy, %i.an
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph245.i, !llvm.loop !324

._crit_edge.i:                                    ; preds = %.lr.ph245.i, %middle.block190, %vec.epilog.middle.block213, %.preheader228.i
  %.0213.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader228.i ], [ %i.di, %vec.epilog.middle.block213 ], [ %i.cx, %middle.block190 ], [ %.sroa.speculated133.i, %.lr.ph245.i ] ; 4 uses
  %i.dz = icmp eq i32 %i.al, 4                    ; 2 uses
  br i1 %i.dz, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.ea = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eb = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ea)
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> nofpclass(nan inf) %i.eb) ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.ef = icmp eq i32 %i.al, 1
  br i1 %i.ef, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eg = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eh = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.eh) ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.ej) ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) %i.el)
  %i.en = extractelement <4 x float> %i.em, i64 0 ; 2 uses
  %i.eo = fcmp fast olt float %.0213.lcssa.i, %i.en
  %.sroa.speculated129.i = select i1 %i.eo, float %i.en, float %.0213.lcssa.i ; 2 uses
  %i.ep = shufflevector <4 x float> %.0210.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.eq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ep) ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.eq, <4 x float> nofpclass(nan inf) %i.er)
  %i.et = extractelement <4 x float> %i.es, i64 0 ; 2 uses
  %i.eu = fcmp fast olt float %.sroa.speculated129.i, %i.et
  %.sroa.speculated.i = select i1 %i.eu, float %i.et, float %.sroa.speculated129.i ; 2 uses
  %i.ev = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = shufflevector <4 x float> %i.ev, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.ey = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1214.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0213.lcssa.i, %bb.c ], [ %.0213.lcssa.i, %.thread.i ] ; 3 uses
  %.2212.i = phi nsz <4 x float> [ %i.ew, %bb.d ], [ %.0210.lcssa.i, %bb.c ], [ %i.ed, %.thread.i ]
  %.2209.i = phi nsz <8 x float> [ %i.ex, %bb.d ], [ %.0207.lcssa.i, %bb.c ], [ %i.ee, %.thread.i ]
  br i1 %i.ao, label %.lr.ph251.i, label %.preheader227.i

.preheader227.loopexit.i:                         ; preds = %.lr.ph251.i
  %i.ez = and i32 %i.an, 2147483640
  br label %.preheader227.i

.preheader227.i:                                  ; preds = %.preheader227.loopexit.i, %bb.e
  %.0215.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.gl, %.preheader227.loopexit.i ] ; 5 uses
  %.085.lcssa.i = phi ptr [ %.146, %bb.e ], [ %i.gm, %.preheader227.loopexit.i ] ; 2 uses
  %.082.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ez, %.preheader227.loopexit.i ] ; 3 uses
  %i.fa = or disjoint i32 %.082.lcssa.i, 3
  %i.fb = icmp slt i32 %i.fa, %i.an
  br i1 %i.fb, label %.lr.ph258.i, label %.preheader226.i

.lr.ph251.i:                                      ; preds = %bb.e, %.lr.ph251.i
  %.082249.i = phi i32 [ %i.gn, %.lr.ph251.i ], [ 0, %bb.e ]
  %.085248.i = phi ptr [ %i.gm, %.lr.ph251.i ], [ %.146, %bb.e ] ; 3 uses
  %.0215247.i = phi <8 x float> [ %i.gl, %.lr.ph251.i ], [ zeroinitializer, %bb.e ]
  %i.fc = load <8 x i16>, ptr %.085248.i, align 1, !tbaa !61 ; 2 uses
  %i.fd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ff = shufflevector <8 x i16> %i.fd, <8 x i16> %i.fe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fg = bitcast <16 x i16> %i.ff to <8 x float>
  %i.fh = fsub fast <8 x float> %i.fg, %.2209.i
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> splat (float f0x42B0C0A5))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fl = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fk, i32 1) ; 2 uses
  %i.fm = fcmp fast ogt <8 x float> %i.fl, %i.fk
  %i.fn = select <8 x i1> %i.fm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fo = fsub fast <8 x float> %i.fl, %i.fn      ; 2 uses
  %i.fp = fneg fast <8 x float> %i.fo             ; 2 uses
  %i.fq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fj)
  %i.fr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fq) ; 8 uses
  %i.fs = fmul fast <8 x float> %i.fr, %i.fr
  %i.ft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fr, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float f0x3C088908))
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float f0x3D2AA9C1))
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float f0x3E2AAAAA))
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fw, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float 5.000000e-01))
  %i.fy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fx, <8 x float> nofpclass(nan inf) %i.fs, <8 x float> nofpclass(nan inf) %i.fr)
  %i.fz = fadd fast <8 x float> %i.fy, splat (float 1.000000e+00)
  %i.ga = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fo)
  %i.gb = shl <8 x i32> %i.ga, splat (i32 23)
  %i.gc = add <8 x i32> %i.gb, splat (i32 1065353216)
  %i.gd = bitcast <8 x i32> %i.gc to <8 x float>
  %i.ge = fmul fast <8 x float> %i.fz, %i.gd      ; 2 uses
  %i.gf = bitcast <8 x float> %i.ge to <8 x i32>  ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.gf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gh = shufflevector <8 x i32> %i.gf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gi = lshr <4 x i32> %i.gg, splat (i32 16)
  %i.gj = lshr <4 x i32> %i.gh, splat (i32 16)
  %i.gk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gi, <4 x i32> %i.gj)
  store <8 x i16> %i.gk, ptr %.085248.i, align 1, !tbaa !61
  %i.gl = fadd fast <8 x float> %i.ge, %.0215247.i ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.085248.i, i64 16 ; 2 uses
  %i.gn = add nuw nsw i32 %.082249.i, 8           ; 2 uses
  %i.go = or disjoint i32 %i.gn, 7
  %i.gp = icmp slt i32 %i.go, %i.an
  br i1 %i.gp, label %.lr.ph251.i, label %.preheader227.loopexit.i, !llvm.loop !9

.preheader226.i:                                  ; preds = %.lr.ph258.i, %.preheader227.i
  %.0218.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader227.i ], [ %i.kr, %.lr.ph258.i ] ; 3 uses
  %.186.lcssa.i = phi ptr [ %.085.lcssa.i, %.preheader227.i ], [ %i.ks, %.lr.ph258.i ] ; 5 uses
  %.183.lcssa.i = phi i32 [ %.082.lcssa.i, %.preheader227.i ], [ %i.kt, %.lr.ph258.i ] ; 5 uses
  %i.gq = icmp slt i32 %.183.lcssa.i, %i.an
  br i1 %i.gq, label %iter.check154, label %._crit_edge266.i

iter.check154:                                    ; preds = %.preheader226.i
  %i.gr = xor i32 %.183.lcssa.i, -1
  %i.gs = add i32 %i.an, %i.gr                    ; 3 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 5 uses
  %min.iters.check130.a = icmp ult i32 %i.gs, 3
  br i1 %min.iters.check130.a, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check131

vector.main.loop.iter.check131:                   ; preds = %iter.check154
  %min.iters.check132 = icmp ult i32 %i.gs, 15
  br i1 %min.iters.check132, label %vec.epilog.ph158, label %vector.ph133

vector.ph133:                                     ; preds = %vector.main.loop.iter.check131
  %i.gv = and i64 %i.gu, 12
  %n.vec134 = and i64 %i.gu, 8589934576           ; 5 uses
  %i.gw = trunc i64 %n.vec134 to i32
  %i.gx = add i32 %.183.lcssa.i, %i.gw
  %i.gy = shl nuw nsw i64 %n.vec134, 1
  %i.gz = getelementptr i8, ptr %.186.lcssa.i, i64 %i.gy
  %broadcast.splatinsert135 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat136 = shufflevector <4 x float> %broadcast.splatinsert135, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.ph133, %vector.body137
  %index138 = phi i64 [ 0, %vector.ph133 ], [ %index.next147, %vector.body137 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph133 ], [ %i.ik, %vector.body137 ]
  %vec.phi139.a = phi <4 x float> [ zeroinitializer, %vector.ph133 ], [ %i.il, %vector.body137 ]
  %vec.phi140 = phi <4 x float> [ zeroinitializer, %vector.ph133 ], [ %i.im, %vector.body137 ]
  %vec.phi141 = phi <4 x float> [ zeroinitializer, %vector.ph133 ], [ %i.in, %vector.body137 ]
  %i.ha = shl i64 %index138, 1
  %next.gep142 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.ha ; 5 uses
  %i.hb = getelementptr i8, ptr %next.gep142, i64 8 ; 2 uses
  %i.hc = getelementptr i8, ptr %next.gep142, i64 16 ; 2 uses
  %i.hd = getelementptr i8, ptr %next.gep142, i64 24 ; 2 uses
  %wide.load143.a = load <4 x i16>, ptr %next.gep142, align 2, !tbaa !74
end_hunk_5
