Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.0?download=true
inline.NumInlined: 163
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB4_11HuffmanTree14build_implicit:bb.a
  %.sroa.0.0147 = phi ptr [ %i.f, %bb.a ], [ %i.l, %bb.bw ]
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %i.hs, %bb.bw ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi ptr [ %i.l, %bb.d ], [ %.sroa.0.0147, %bb.b ] ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.i
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  %i.m = load i16, ptr %i.j, align 2, !noalias !86, !noundef !4 ; 3 uses
  %.not.i = icmp eq i16 %i.m, 0
  br i1 %.not.i, label %bb.c, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB1K_11HuffmanTree14build_implicit0EB1M_.exit

.body123:                                         ; preds = %bb.bk, %bb.bl, %bb.e, %.body
  %.pn92 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.n, %bb.e ], [ %i.gn, %bb.bl ], [ %i.gn, %bb.bk ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %common.resume unwind label %bb.bv

bb.e:                                             ; preds = %.invoke, %bb.ag, %bb.bx, %bb.ak
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body123

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB1K_11HuffmanTree14build_implicit0EB1M_.exit: ; preds = %bb.d
  %i.o = zext i16 %i.m to i64                     ; 2 uses
  %i.p = icmp ult i16 %i.m, 16
  br i1 %i.p, label %bb.bw, label %bb.bx

bb.f:                                             ; preds = %bb.c
  switch i32 %.sroa.0.0, label %bb.j [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 14, ptr %i.q, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.r = icmp eq i64 %i.h, 0
  br i1 %i.r, label %.invoke, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.sroa.02.07.i = phi i64 [ %i.u, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.s = phi ptr [ %i.t, %bb.i ], [ %i.f, %bb.h ] ; 2 uses
  %.val.i = load i16, ptr %i.s, align 2, !noalias !87, !noundef !4
  %.not.i94 = icmp eq i16 %.val.i, 0
  br i1 %.not.i94, label %bb.i, label %bb.z

bb.i:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  %i.u = add nuw i64 %.sroa.02.07.i, 1
  %i.v = icmp eq ptr %i.t, %i.i
  br i1 %i.v, label %.invoke, label %.lr.ph.i

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  %.val.i96 = load i16, ptr %i.w, align 2, !noalias !88, !noundef !4
  %.not.i97 = icmp eq i16 %.val.i96, 0
  br i1 %.not.i97, label %bb.k, label %.lr.ph.preheader

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.val.i96.1 = load i16, ptr %i.x, align 2, !noalias !88, !noundef !4
  %.not.i97.1 = icmp eq i16 %.val.i96.1, 0
  br i1 %.not.i97.1, label %bb.l, label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  %.val.i96.2 = load i16, ptr %i.y, align 2, !noalias !88, !noundef !4
  %.not.i97.2 = icmp eq i16 %.val.i96.2, 0
  br i1 %.not.i97.2, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i96.3 = load i16, ptr %i.z, align 2, !noalias !88, !noundef !4
  %.not.i97.3 = icmp eq i16 %.val.i96.3, 0
  br i1 %.not.i97.3, label %bb.n, label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %.val.i96.4 = load i16, ptr %i.aa, align 2, !noalias !88, !noundef !4
  %.not.i97.4 = icmp eq i16 %.val.i96.4, 0
  br i1 %.not.i97.4, label %bb.o, label %.lr.ph.preheader

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.val.i96.5 = load i16, ptr %i.ab, align 2, !noalias !88, !noundef !4
  %.not.i97.5 = icmp eq i16 %.val.i96.5, 0
  br i1 %.not.i97.5, label %bb.p, label %.lr.ph.preheader

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %.val.i96.6 = load i16, ptr %i.ac, align 2, !noalias !88, !noundef !4
  %.not.i97.6 = icmp eq i16 %.val.i96.6, 0
  br i1 %.not.i97.6, label %bb.q, label %.lr.ph.preheader

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i96.7 = load i16, ptr %i.ad, align 2, !noalias !88, !noundef !4
  %.not.i97.7 = icmp eq i16 %.val.i96.7, 0
  br i1 %.not.i97.7, label %bb.r, label %.lr.ph.preheader

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %.val.i96.8 = load i16, ptr %i.ae, align 2, !noalias !88, !noundef !4
  %.not.i97.8 = icmp eq i16 %.val.i96.8, 0
  br i1 %.not.i97.8, label %bb.s, label %.lr.ph.preheader

bb.s:                                             ; preds = %bb.r
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.val.i96.9 = load i16, ptr %i.af, align 2, !noalias !88, !noundef !4
  %.not.i97.9 = icmp eq i16 %.val.i96.9, 0
  br i1 %.not.i97.9, label %bb.t, label %.lr.ph.preheader

bb.t:                                             ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %.val.i96.10 = load i16, ptr %i.ag, align 2, !noalias !88, !noundef !4
  %.not.i97.10 = icmp eq i16 %.val.i96.10, 0
  br i1 %.not.i97.10, label %bb.u, label %.lr.ph.preheader

bb.u:                                             ; preds = %bb.t
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i96.11 = load i16, ptr %i.ah, align 2, !noalias !88, !noundef !4
  %.not.i97.11 = icmp eq i16 %.val.i96.11, 0
  br i1 %.not.i97.11, label %bb.v, label %.lr.ph.preheader

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %.val.i96.12 = load i16, ptr %i.ai, align 2, !noalias !88, !noundef !4
  %.not.i97.12 = icmp eq i16 %.val.i96.12, 0
  br i1 %.not.i97.12, label %bb.w, label %.lr.ph.preheader

bb.w:                                             ; preds = %bb.v
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.val.i96.13 = load i16, ptr %i.aj, align 2, !noalias !88, !noundef !4
  %.not.i97.13 = icmp eq i16 %.val.i96.13, 0
  br i1 %.not.i97.13, label %bb.x, label %.lr.ph.preheader

bb.x:                                             ; preds = %bb.w
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.val.i96.14 = load i16, ptr %i.ak, align 2, !noalias !88, !noundef !4
  %.not.i97.14 = icmp eq i16 %.val.i96.14, 0
  br i1 %.not.i97.14, label %bb.y, label %.lr.ph.preheader

bb.y:                                             ; preds = %bb.x
  %.val.i96.15 = load i16, ptr %i.d, align 2, !noalias !88, !noundef !4
  %.not.i97.15 = icmp eq i16 %.val.i96.15, 0
  br i1 %.not.i97.15, label %.invoke, label %._crit_edge

bb.z:                                             ; preds = %.lr.ph.i
  %i.al = icmp ult i64 %.sroa.02.07.i, %i.h
  tail call void @llvm.assume(i1 %i.al)
  %i.am = trunc i64 %.sroa.02.07.i to i16
  store i64 -1, ptr %0, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.am, ptr %.sroa.466.0..sroa_idx, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.bx, %bb.ak
  unreachable

bb.ab:                                            ; preds = %bb.g, %bb.z, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %1, align 8, !alias.scope !89 ; 2 uses
  %i.ao = icmp eq i64 %.val2.i, 0
  br i1 %i.ao, label %common.resume, label %common.resume.sink.split

bb.ad:                                            ; preds = %bb.ab
  %.val.i100 = load i64, ptr %1, align 8, !alias.scope !89 ; 2 uses
  %i.ap = icmp eq i64 %.val.i100, 0
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.ac, %bb.ao
  %.val2.i108.sink = phi i64 [ %.val2.i108, %bb.ao ], [ %.val2.i, %bb.ac ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dy, %bb.ao ], [ %i.an, %bb.ac ]
  %.val3.i109 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.aq = shl nuw i64 %.val2.i108.sink, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i109, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 2) #22
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body123, %bb.ao, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.dy, %bb.ao ], [ %i.an, %bb.ac ], [ %.pn92, %.body123 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

.lr.ph.preheader:                                 ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %i.ar = phi i1 [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ]
  %.lcssa307.ph = phi i64 [ 1, %bb.x ], [ 2, %bb.w ], [ 3, %bb.v ], [ 4, %bb.u ], [ 5, %bb.t ], [ 6, %bb.s ], [ 7, %bb.r ], [ 8, %bb.q ], [ 9, %bb.p ], [ 10, %bb.o ], [ 11, %bb.n ], [ 12, %bb.m ], [ 13, %bb.l ], [ 14, %bb.k ], [ 15, %bb.j ] ; 3 uses
  %.sroa.03.0.i.lcssa306.ph = phi i64 [ 2, %bb.x ], [ 3, %bb.w ], [ 4, %bb.v ], [ 5, %bb.u ], [ 6, %bb.t ], [ 7, %bb.s ], [ 8, %bb.r ], [ 9, %bb.q ], [ 10, %bb.p ], [ 11, %bb.o ], [ 12, %bb.n ], [ 13, %bb.m ], [ 14, %bb.l ], [ 15, %bb.k ], [ 16, %bb.j ] ; 2 uses
  %2 = trunc nuw nsw i64 %.lcssa307.ph to i16     ; 2 uses
  %xtraiter = and i64 %.lcssa307.ph, 3            ; 3 uses
  br i1 %i.ar, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.lcssa307.ph, 12
  br label %.lr.ph

.invoke:                                          ; preds = %bb.i, %bb.y, %bb.h
  %i.as = phi ptr [ @2, %bb.h ], [ @3, %bb.y ], [ @2, %bb.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as) #23
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.09.0236.epil.init = phi i16 [ 0, %.lr.ph.preheader ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.068.0235.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod473 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod473)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.09.0236.epil = phi i16 [ %i.ay, %.lr.ph.epil ], [ %.sroa.09.0236.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.068.0235.epil = phi i64 [ %i.at, %.lr.ph.epil ], [ %.sroa.068.0235.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.at = add nuw i64 %.sroa.068.0235.epil, 1
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.sroa.068.0235.epil
  store i16 %.sroa.09.0236.epil, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.sroa.068.0235.epil
  %i.aw = load i16, ptr %i.av, align 2, !noundef !4
  %i.ax = add i16 %i.aw, %.sroa.09.0236.epil
  %i.ay = shl i16 %i.ax, 1                        ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !61

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.y
  %3 = phi i16 [ 0, %bb.y ], [ %2, %.lr.ph.epil ], [ %2, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.03.0.i.lcssa306345 = phi i64 [ 1, %bb.y ], [ %.sroa.03.0.i.lcssa306.ph, %.lr.ph.epil ], [ %.sroa.03.0.i.lcssa306.ph, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.sroa.09.0.lcssa = phi i16 [ 0, %bb.y ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.epil ]
  %i.az = shl i16 2, %3
  %.not87 = icmp eq i16 %.sroa.09.0.lcssa, %i.az
  br i1 %.not87, label %bb.af, label %bb.ae

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.09.0236 = phi i16 [ 0, %.lr.ph.preheader.new ], [ %i.bx, %.lr.ph ] ; 2 uses
  %.sroa.068.0235 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.bs, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ba = add nuw nsw i64 %.sroa.068.0235, 1      ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.sroa.068.0235
  store i16 %.sroa.09.0236, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.sroa.068.0235
  %i.bd = load i16, ptr %i.bc, align 2, !noundef !4
  %i.be = add i16 %i.bd, %.sroa.09.0236
  %i.bf = shl i16 %i.be, 1                        ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.068.0235, 2      ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ba
  store i16 %i.bf, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ba
  %i.bj = load i16, ptr %i.bi, align 2, !noundef !4
  %i.bk = add i16 %i.bj, %i.bf
  %i.bl = shl i16 %i.bk, 1                        ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.068.0235, 3      ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bg
  store i16 %i.bl, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bg
  %i.bp = load i16, ptr %i.bo, align 2, !noundef !4
  %i.bq = add i16 %i.bp, %i.bl
  %i.br = shl i16 %i.bq, 1                        ; 2 uses
  %i.bs = add nuw nsw i64 %.sroa.068.0235, 4      ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bm
  store i16 %i.br, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bm
  %i.bv = load i16, ptr %i.bu, align 2, !noundef !4
  %i.bw = add i16 %i.bv, %i.br
  %i.bx = shl i16 %i.bw, 1                        ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.ae:                                            ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 14, ptr %i.by, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.bo

bb.af:                                            ; preds = %._crit_edge
  %..i = tail call noundef range(i16 0, 11) i16 @llvm.umin.i16(i16 %3, i16 10) ; 4 uses
  %i.bz = zext nneg i16 %..i to i32
  %i.ca = shl nuw nsw i32 1, %i.bz                ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64              ; 5 uses
  %i.cc = trunc nuw nsw i32 %i.ca to i16
  %i.cd = add nsw i16 %i.cc, -1                   ; 2 uses
  %narrow = add nuw nsw i16 %..i, 1
  %i.ce = zext nneg i16 %narrow to i64            ; 5 uses
  %i.cf = icmp samesign ult i64 %.sroa.03.0.i.lcssa306345, %i.ce
  br i1 %i.cf, label %bb.ag, label %bb.ah, !prof !10

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ce, i64 noundef %.sroa.03.0.i.lcssa306345, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %.idx169 = shl nuw nsw i64 %i.ce, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx169 ; 3 uses
  %i.ch = icmp samesign eq i64 %.sroa.03.0.i.lcssa306345, %i.ce
  br i1 %i.ch, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread, label %iter.check

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit

iter.check:                                       ; preds = %bb.ah
  %i.ci = sub nuw nsw i64 %.sroa.03.0.i.lcssa306345, %i.ce ; 8 uses
  %min.iters.check = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check434 = icmp ult i64 %i.ci, 16
  br i1 %min.iters.check434, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %4 = and i64 %i.ci, 12
  %n.vec = and i64 %i.ci, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.cl, %vector.body ]
  %vec.phi435 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.cm, %vector.body ]
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <8 x i16>, ptr %i.cj, align 2
  %wide.load436 = load <8 x i16>, ptr %i.ck, align 2
  %i.cl = add <8 x i16> %wide.load, %vec.phi      ; 2 uses
  %i.cm = add <8 x i16> %wide.load436, %vec.phi435 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.cm, %i.cl
  %i.co = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.co, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec437 = and i64 %i.ci, -4                   ; 3 uses
  %i.cp = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index438 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next441, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi439 = phi <4 x i16> [ %i.cp, %vec.epilog.ph ], [ %i.cr, %vec.epilog.vector.body ]
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %index438
  %wide.load440 = load <4 x i16>, ptr %i.cq, align 2
  %i.cr = add <4 x i16> %wide.load440, %vec.phi439 ; 2 uses
  %index.next441 = add nuw i64 %index438, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next441, %n.vec437
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ct = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.cr) ; 2 uses
  %cmp.n442 = icmp eq i64 %i.ci, %n.vec437
  br i1 %cmp.n442, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec437, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.cw, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.cv, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %.sroa.04.0.i
  %.val.i103 = load i16, ptr %i.cu, align 2, !noundef !4
  %i.cv = add i16 %.val.i103, %.sroa.02.0.i       ; 2 uses
  %i.cw = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.ci
  br i1 %i.cx, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit, label %vec.epilog.scalar.ph, !llvm.loop !64

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa427 = phi i16 [ %i.ct, %vec.epilog.middle.block ], [ %i.co, %middle.block ], [ %i.cv, %vec.epilog.scalar.ph ] ; 2 uses
  %i.cy = zext i16 %.lcssa427 to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cz = shl nuw nsw i64 %i.cy, 1                ; 3 uses
  %i.da = shl nuw nsw i64 %i.cy, 5                ; 2 uses
  %i.db = icmp eq i16 %.lcssa427, 0
  br i1 %i.db, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit, label %bb.ai

bb.ai:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !94
  %i.dc = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !94 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = ptrtoint ptr %i.dc to i64
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.da) #23
          to label %bb.aa unwind label %bb.e

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit, %bb.aj
  %i.df = phi i64 [ %i.cz, %bb.aj ], [ %i.cz, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit ], [ 0, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread ]
  %.sroa.4143.0 = phi i64 [ %i.cz, %bb.aj ], [ 0, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit ], [ 0, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.de, %bb.aj ], [ 8, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit ], [ 8, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread ]
  %i.dg = inttoptr i64 %.sroa.10.0 to ptr
  %i.dh = icmp samesign ule i64 %i.df, %.sroa.4143.0
  tail call void @llvm.assume(i1 %i.dh)
  store i64 %.sroa.4143.0, ptr %i.b, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  store ptr %i.dg, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  store i64 0, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.dk = shl nuw nsw i64 %i.cb, 2                ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !96
  %i.dl = tail call noundef align 4 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.dk, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !96 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.al, label %bb.an

bb.al:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.dk) #23
          to label %.noexc106 unwind label %bb.am

.noexc106:                                        ; preds = %bb.al
  unreachable

.body:                                            ; preds = %bb.bc, %bb.bd, %bb.am, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.dn, %bb.am ], [ %i.fy, %bb.bd ], [ %i.fy, %bb.bc ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %.body123 unwind label %bb.bv

bb.am:                                            ; preds = %bb.al
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit
  store i64 %i.cb, ptr %i.a, align 8, !alias.scope !95
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %i.dl, ptr %i.do, align 8, !alias.scope !95
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %i.cb, ptr %i.dp, align 8, !alias.scope !95
  %i.dq = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dr = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %.idx252 = shl nuw nsw i64 %i.dr, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx252
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %._crit_edge251, label %.lr.ph250

.loopexit:                                        ; preds = %bb.bq, %bb.bs
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aw
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke406
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit171, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %.body unwind label %bb.bv

.lr.ph250:                                        ; preds = %bb.an, %.backedge
  %.sroa.0134.0248 = phi ptr [ %i.du, %.backedge ], [ %i.dq, %bb.an ] ; 2 uses
  %.sroa.8136.0247 = phi i64 [ %i.dv, %.backedge ], [ 0, %bb.an ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0134.0248, i64 2 ; 2 uses
  %i.dv = add nuw i64 %.sroa.8136.0247, 1
  %i.dw = load i16, ptr %.sroa.0134.0248, align 2, !noundef !4 ; 7 uses
  %i.dx = icmp eq i16 %i.dw, 0
  br i1 %i.dx, label %.backedge, label %bb.aq

._crit_edge251:                                   ; preds = %.backedge, %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.057, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.057.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.057, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.057.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.057, i64 48, i1 false)
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %i.cd, ptr %.sroa.460.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %._crit_edge251
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i108 = load i64, ptr %1, align 8, !alias.scope !97 ; 2 uses
  %i.dz = icmp eq i64 %.val2.i108, 0
  br i1 %i.dz, label %common.resume, label %common.resume.sink.split

bb.ap:                                            ; preds = %._crit_edge251
  %.val.i111 = load i64, ptr %1, align 8, !alias.scope !97 ; 2 uses
  %i.ea = icmp eq i64 %.val.i111, 0
  br i1 %i.ea, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit.sink.split: ; preds = %bb.ap, %bb.ad
  %.val.i111.sink = phi i64 [ %.val.i100, %bb.ad ], [ %.val.i111, %bb.ap ]
  %.val1.i112 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.eb = shl nuw i64 %.val.i111.sink, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i112, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 2) #22
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit.sink.split, %bb.ap, %bb.ad
  ret void

bb.aq:                                            ; preds = %.lr.ph250
  %i.ec = zext i16 %i.dw to i64                   ; 3 uses
  %i.ed = icmp ult i16 %i.dw, 16
  br i1 %i.ed, label %bb.ar, label %.invoke406

bb.ar:                                            ; preds = %bb.aq
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ec ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !noundef !4 ; 3 uses
  %i.eg = add i16 %i.ef, 1
  store i16 %i.eg, ptr %i.ee, align 2
  %.not89 = icmp ugt i16 %i.dw, %..i
  %i.eh = tail call i16 @llvm.bitreverse.i16(i16 %i.ef)
  %i.ei = sub nsw i16 0, %i.dw
  %i.ej = and i16 %i.ei, 15
  %i.ek = lshr i16 %i.eh, %i.ej                   ; 2 uses
  br i1 %.not89, label %bb.as, label %bb.at
end_hunk_0
