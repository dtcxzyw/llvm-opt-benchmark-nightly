Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 206
begin_hunk_0_@res1_class:bb.a
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.172104.us.i
  store i64 0, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.07092.us109.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.172104.us.i
  store i64 0, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.07092.us109.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.172104.us.i
  store i64 0, ptr %i.fq, align 8
  %i.fr = add nuw nsw i64 %.07092.us109.i, 4      ; 2 uses
  %niter57.next.3 = add i64 %niter57, 4           ; 2 uses
  %niter57.ncmp.3 = icmp eq i64 %niter57.next.3, %unroll_iter56
  br i1 %niter57.ncmp.3, label %._crit_edge93.split.split.us110.i.unr-lcssa, label %.preheader.us108.i, !llvm.loop !809

._crit_edge93.split.split.us110.i.unr-lcssa:      ; preds = %.preheader.us108.i
  br i1 %lcmp.mod54.not, label %._crit_edge93.split.split.us110.i, label %.preheader.us108.i.epil.preheader

.preheader.us108.i.epil.preheader:                ; preds = %._crit_edge93.split.split.us110.i.unr-lcssa, %.preheader.lr.ph.us.i
  %.07092.us109.i.epil.init = phi i64 [ 0, %.preheader.lr.ph.us.i ], [ %i.fr, %._crit_edge93.split.split.us110.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod55)
  br label %.preheader.us108.i.epil

.preheader.us108.i.epil:                          ; preds = %.preheader.us108.i.epil, %.preheader.us108.i.epil.preheader
  %.07092.us109.i.epil = phi i64 [ %.07092.us109.i.epil.init, %.preheader.us108.i.epil.preheader ], [ %i.fv, %.preheader.us108.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.us108.i.epil.preheader ], [ %epil.iter.next, %.preheader.us108.i.epil ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.07092.us109.i.epil
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.172104.us.i
  store i64 0, ptr %i.fu, align 8
  %i.fv = add nuw nsw i64 %.07092.us109.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter53
  br i1 %epil.iter.cmp.not, label %._crit_edge93.split.split.us110.i, label %.preheader.us108.i.epil, !llvm.loop !812

._crit_edge93.split.split.us110.i:                ; preds = %.preheader.us108.i.epil, %._crit_edge93.split.split.us110.i.unr-lcssa
  %i.fw = add nuw nsw i64 %.172104.us.i, 1        ; 2 uses
  %exitcond121.not.i = icmp eq i64 %i.fw, %i.bi
  br i1 %exitcond121.not.i, label %_01class.exit, label %.preheader.lr.ph.us.i, !llvm.loop !810

bb.p:                                             ; preds = %_vorbis_block_alloc.exit77.i, %.lr.ph.i
  %.07179.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gn, %_vorbis_block_alloc.exit77.i ] ; 2 uses
  %i.fx = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.fy = add nsw i64 %i.fx, %i.bj
  %i.fz = load i64, ptr %i.an, align 8
  %i.ga = icmp sgt i64 %i.fy, %i.fz
  %i.gb = load ptr, ptr %i.aq, align 8            ; 3 uses
  br i1 %i.ga, label %bb.q, label %_vorbis_block_alloc.exit77.i

bb.q:                                             ; preds = %bb.p
  %.not.i76.i = icmp eq ptr %i.gb, null
  br i1 %.not.i76.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.gd = load i64, ptr %i.bk, align 8
  %i.ge = add nsw i64 %i.gd, %i.fx
  store i64 %i.ge, ptr %i.bk, align 8
  %i.gf = load ptr, ptr %i.bl, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.gf, ptr %i.gg, align 8
  store ptr %i.gb, ptr %i.gc, align 8
  store ptr %i.gc, ptr %i.bl, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 %i.bj, ptr %i.an, align 8
  %i.gh = tail call noalias ptr @malloc(i64 noundef %i.bj) #69 ; 2 uses
  store ptr %i.gh, ptr %i.aq, align 8
  br label %_vorbis_block_alloc.exit77.i

_vorbis_block_alloc.exit77.i:                     ; preds = %bb.s, %bb.p
  %i.gi = phi i64 [ 0, %bb.s ], [ %i.fx, %bb.p ]  ; 2 uses
  %i.gj = phi ptr [ %i.gh, %bb.s ], [ %i.gb, %bb.p ]
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gi ; 2 uses
  %i.gl = add nsw i64 %i.gi, %i.bj
  store i64 %i.gl, ptr %i.ak, align 8
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.07179.i
  store ptr %i.gk, ptr %i.gm, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gk, i8 0, i64 %i.bj, i1 false)
  %i.gn = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gn, %i.ai
  br i1 %exitcond.not.i, label %.preheader78.i, label %bb.p, !llvm.loop !813

_01class.exit:                                    ; preds = %._crit_edge93.split.split.us110.i, %._crit_edge93.split.split.us.us.us.i, %._crit_edge93.split.us.us.us.split.i, %._crit_edge93.split.us.us.us.split.us.us.i, %_vorbis_block_alloc.exit.i, %.preheader78.i
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = add nsw i64 %i.gp, 1
  store i64 %i.gq, ptr %i.go, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %_01class.exit
  %.015 = phi ptr [ %i.bc, %_01class.exit ], [ null, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.015
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @res1_inverse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %4, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %.018 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4
  %.not16 = icmp eq i32 %i.d, 0
  br i1 %.not16, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = add nsw i32 %.018, 1
  %i.h = sext i32 %.018 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.g, %bb.b ], [ %.018, %.lr.ph ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.k = load i32, ptr %i.j, align 4
  %.not16.1 = icmp eq i32 %i.k, 0
  br i1 %.not16.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = add nsw i32 %.1, 1
  %i.o = sext i32 %.1 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o
  store ptr %i.m, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %.1.1 = phi i32 [ %i.n, %bb.c ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !814

._crit_edge.unr-lcssa:                            ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.018.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod23 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.r = load i32, ptr %i.q, align 4
  %.not16.epil = icmp eq i32 %i.r, 0
  br i1 %.not16.epil, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = add nsw i32 %.018.epil.init, 1
  %i.v = sext i32 %.018.epil.init to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.e, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.u, %bb.e ], [ %.018.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.not = icmp eq i32 %.1.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call fastcc void @_01inverse(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.1.lcssa, ptr noundef nonnull @vorbis_book_decodev_add)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.f
  ret i32 0
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @res2_class(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #27 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4
  %wide.load52 = load <4 x i32>, ptr %i.c, align 4
  %i.d = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.e = icmp ne <4 x i32> %wide.load52, zeroinitializer
  %i.f = zext <4 x i1> %i.d to <4 x i32>
  %i.g = zext <4 x i1> %i.e to <4 x i32>
  %i.h = add <4 x i32> %vec.phi, %i.f             ; 2 uses
  %i.i = add <4 x i32> %vec.phi51, %i.g           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !815

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.i, %i.h
  %i.k = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader58

.lr.ph.preheader58:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.021.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader58, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader58 ] ; 2 uses
  %.021 = phi i32 [ %spec.select, %.lr.ph ], [ %.021.ph, %.lr.ph.preheader58 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4
  %.not14 = icmp ne i32 %i.m, 0
  %i.n = zext i1 %.not14 to i32
  %spec.select = add nuw nsw i32 %.021, %i.n      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !816

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.k, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.o = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.o, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = load ptr, ptr %1, align 8                ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = load i64, ptr %i.p, align 8
  %i.x = sub nsw i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = sdiv i32 %i.y, %i.r                      ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = add nsw i64 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp sgt i64 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  br i1 %i.af, label %bb.c, label %_vorbis_block_alloc.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add nsw i64 %i.ak, %i.ab
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  store ptr %i.ai, ptr %i.am, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 8, ptr %i.ad, align 8
  %i.ap = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #69 ; 2 uses
  store ptr %i.ap, ptr %i.ag, align 8
  br label %_vorbis_block_alloc.exit.i

_vorbis_block_alloc.exit.i:                       ; preds = %bb.e, %bb.b
  %i.aq = phi i64 [ 8, %bb.e ], [ %i.ae, %bb.b ]
  %i.ar = phi i64 [ 0, %bb.e ], [ %i.ab, %bb.b ]  ; 2 uses
  %i.as = phi ptr [ %i.ap, %bb.e ], [ %i.ah, %bb.b ] ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ar ; 15 uses
  %i.au = add nsw i64 %i.ar, 8                    ; 3 uses
  %i.av = mul nsw i32 %4, %i.y
  %i.aw = sdiv i32 %i.av, %i.r
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 3                    ; 5 uses
  %i.az = add nsw i64 %i.ay, %i.au
  %i.ba = icmp sgt i64 %i.az, %i.aq
  br i1 %i.ba, label %bb.f, label %_vorbis_block_alloc.exit68.i

bb.f:                                             ; preds = %_vorbis_block_alloc.exit.i
  %.not.i67.i = icmp eq ptr %i.as, null
  br i1 %.not.i67.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = add nsw i64 %i.bd, %i.au
  store i64 %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  store ptr %i.as, ptr %i.bb, align 8
  store ptr %i.bb, ptr %i.bf, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 %i.ay, ptr %i.ad, align 8
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.ay) #69 ; 2 uses
  store ptr %i.bi, ptr %i.ag, align 8
  br label %_vorbis_block_alloc.exit68.i

_vorbis_block_alloc.exit68.i:                     ; preds = %bb.h, %_vorbis_block_alloc.exit.i
  %i.bj = phi i64 [ 0, %bb.h ], [ %i.au, %_vorbis_block_alloc.exit.i ] ; 2 uses
  %i.bk = phi ptr [ %i.bi, %bb.h ], [ %i.as, %_vorbis_block_alloc.exit.i ]
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bj ; 2 uses
  %i.bm = add nsw i64 %i.bj, %i.ay
  store i64 %i.bm, ptr %i.aa, align 8
  store ptr %i.bl, ptr %i.at, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 %i.ay, i1 false)
  %i.bn = load i64, ptr %i.p, align 8
  %i.bo = zext nneg i32 %4 to i64                 ; 2 uses
  %i.bp = sdiv i64 %i.bn, %i.bo                   ; 2 uses
  %i.bq = sext i32 %i.z to i64                    ; 7 uses
  %i.br = icmp sgt i32 %i.z, 0
  br i1 %i.br, label %.preheader69.lr.ph.i, label %_2class.exit

.preheader69.lr.ph.i:                             ; preds = %_vorbis_block_alloc.exit68.i
  %i.bs = sext i32 %i.r to i64                    ; 2 uses
  %i.bt = icmp sgt i32 %i.r, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 1564 ; 3 uses
  %i.bv = add i32 %i.t, -1
  %i.bw = sext i32 %i.bv to i64                   ; 6 uses
  %i.bx = icmp sgt i32 %i.t, 1                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 1308 ; 3 uses
  br i1 %i.bt, label %.preheader69.lr.ph.split.us.i, label %.preheader69.lr.ph.split.i

.preheader69.lr.ph.split.us.i:                    ; preds = %.preheader69.lr.ph.i
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %.preheader69.lr.ph.split.us.split.i, label %.preheader69.us.us.i.preheader

.preheader69.us.us.i.preheader:                   ; preds = %.preheader69.lr.ph.split.us.i
  %i.bz = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter63 = and i64 %i.bz, 1
  %i.ca = icmp eq i32 %4, 2
  %unroll_iter68 = and i64 %i.bz, -2
  %lcmp.mod65.not = icmp eq i64 %xtraiter63, 0
  %lcmp.mod67 = trunc i64 %i.bz to i1
  br label %.preheader69.us.us.i

.preheader69.us.us.i:                             ; preds = %.preheader69.us.us.i.preheader, %._crit_edge.us97.us.i
  %.05886.us.us.i = phi i64 [ %i.dk, %._crit_edge.us97.us.i ], [ %i.bp, %.preheader69.us.us.i.preheader ]
  %.06385.us.us.i = phi i64 [ %i.cl, %._crit_edge.us97.us.i ], [ 0, %.preheader69.us.us.i.preheader ] ; 2 uses
  %i.cb = load ptr, ptr %2, align 8
  br label %.lr.ph.us.us.us.i

.lr.ph.us96.us.i:                                 ; preds = %..preheader_crit_edge.split.us.us.us.i, %bb.j
  %.16282.us.us.i = phi i64 [ %i.ci, %bb.j ], [ 0, %..preheader_crit_edge.split.us.us.us.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.16282.us.us.i
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = fcmp ugt float %.157.us.us.us.i, %i.cd
  br i1 %i.ce, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.us96.us.i
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.16282.us.us.i
  %i.cg = load float, ptr %i.cf, align 4
  %i.ch = fcmp ugt float %.2.us.us.us.i.lcssa, %i.cg
  br i1 %i.ch, label %bb.j, label %._crit_edge.us97.us.i

bb.j:                                             ; preds = %bb.i, %.lr.ph.us96.us.i
  %i.ci = add nuw nsw i64 %.16282.us.us.i, 1      ; 2 uses
  %exitcond127.not.i = icmp eq i64 %i.ci, %i.bw
  br i1 %exitcond127.not.i, label %._crit_edge.us97.us.i, label %.lr.ph.us96.us.i, !llvm.loop !817

._crit_edge.us97.us.i:                            ; preds = %bb.j, %bb.i, %..preheader_crit_edge.split.us.us.us.i
  %.162.lcssa.us.us.i = phi i64 [ 0, %..preheader_crit_edge.split.us.us.us.i ], [ %i.bw, %bb.j ], [ %.16282.us.us.i, %bb.i ]
  %i.cj = load ptr, ptr %i.at, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.06385.us.us.i
  store i64 %.162.lcssa.us.us.i, ptr %i.ck, align 8
  %i.cl = add nuw nsw i64 %.06385.us.us.i, 1      ; 2 uses
  %exitcond128.not.i = icmp eq i64 %i.cl, %i.bq
  br i1 %exitcond128.not.i, label %_2class.exit, label %.preheader69.us.us.i, !llvm.loop !818

.lr.ph.us.us.us.i:                                ; preds = %._crit_edge.us.us.us.i, %.preheader69.us.us.i
  %.075.us.us.us.i = phi float [ 0.000000e+00, %.preheader69.us.us.i ], [ %.2.us.us.us.i.lcssa, %._crit_edge.us.us.us.i ] ; 2 uses
  %.05674.us.us.us.i = phi float [ 0.000000e+00, %.preheader69.us.us.i ], [ %.157.us.us.us.i, %._crit_edge.us.us.us.i ] ; 2 uses
  %.15973.us.us.us.i = phi i64 [ %.05886.us.us.i, %.preheader69.us.us.i ], [ %i.dk, %._crit_edge.us.us.us.i ] ; 5 uses
  %.06172.us.us.us.i = phi i64 [ 0, %.preheader69.us.us.i ], [ %i.dl, %._crit_edge.us.us.us.i ]
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %.15973.us.us.us.i
  %i.cn = load float, ptr %i.cm, align 4
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph.us.us.us.i.new

.lr.ph.us.us.us.i.new:                            ; preds = %.lr.ph.us.us.us.i, %.lr.ph.us.us.us.i.new
  %.171.us.us.us.i = phi float [ %.2.us.us.us.i.1, %.lr.ph.us.us.us.i.new ], [ %.075.us.us.us.i, %.lr.ph.us.us.us.i ] ; 2 uses
  %.06070.us.us.us.i = phi i64 [ %i.db, %.lr.ph.us.us.us.i.new ], [ 1, %.lr.ph.us.us.us.i ] ; 3 uses
  %niter69 = phi i64 [ %niter69.next.1, %.lr.ph.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.i ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06070.us.us.us.i
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %.15973.us.us.us.i
  %i.cr = load float, ptr %i.cq, align 4
  %i.cs = tail call float @llvm.fabs.f32(float %i.cr) ; 2 uses
  %i.ct = fcmp ogt float %i.cs, %.171.us.us.us.i
  %.2.us.us.us.i = select i1 %i.ct, float %i.cs, float %.171.us.us.us.i ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06070.us.us.us.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.15973.us.us.us.i
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = tail call float @llvm.fabs.f32(float %i.cy) ; 2 uses
  %i.da = fcmp ogt float %i.cz, %.2.us.us.us.i
  %.2.us.us.us.i.1 = select i1 %i.da, float %i.cz, float %.2.us.us.us.i ; 3 uses
  %i.db = add nuw nsw i64 %.06070.us.us.us.i, 2   ; 2 uses
  %niter69.next.1 = add nuw i64 %niter69, 2       ; 2 uses
  %niter69.ncmp.1 = icmp eq i64 %niter69.next.1, %unroll_iter68
  br i1 %niter69.ncmp.1, label %._crit_edge.us.us.us.i.unr-lcssa, label %.lr.ph.us.us.us.i.new, !llvm.loop !819

._crit_edge.us.us.us.i.unr-lcssa:                 ; preds = %.lr.ph.us.us.us.i.new
  br i1 %lcmp.mod65.not, label %._crit_edge.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.i.unr-lcssa, %.lr.ph.us.us.us.i
  %.171.us.us.us.i.epil.init = phi float [ %.075.us.us.us.i, %.lr.ph.us.us.us.i ], [ %.2.us.us.us.i.1, %._crit_edge.us.us.us.i.unr-lcssa ] ; 2 uses
  %.06070.us.us.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.us.us.i ], [ %i.db, %._crit_edge.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06070.us.us.us.i.epil.init
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %.15973.us.us.us.i
  %i.df = load float, ptr %i.de, align 4
  %i.dg = tail call float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.dh = fcmp ogt float %i.dg, %.171.us.us.us.i.epil.init
  %.2.us.us.us.i.epil = select i1 %i.dh, float %i.dg, float %.171.us.us.us.i.epil.init
  br label %._crit_edge.us.us.us.i

._crit_edge.us.us.us.i:                           ; preds = %._crit_edge.us.us.us.i.unr-lcssa, %.epil.preheader
  %.2.us.us.us.i.lcssa = phi float [ %.2.us.us.us.i.1, %._crit_edge.us.us.us.i.unr-lcssa ], [ %.2.us.us.us.i.epil, %.epil.preheader ] ; 2 uses
  %i.di = tail call float @llvm.fabs.f32(float %i.cn) ; 2 uses
  %i.dj = fcmp ogt float %i.di, %.05674.us.us.us.i
  %.157.us.us.us.i = select i1 %i.dj, float %i.di, float %.05674.us.us.us.i ; 2 uses
  %i.dk = add nsw i64 %.15973.us.us.us.i, 1       ; 2 uses
  %i.dl = add nuw nsw i64 %.06172.us.us.us.i, %i.bo ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.bs
  br i1 %i.dm, label %.lr.ph.us.us.us.i, label %..preheader_crit_edge.split.us.us.us.i, !llvm.loop !820

..preheader_crit_edge.split.us.us.us.i:           ; preds = %._crit_edge.us.us.us.i
  br i1 %i.bx, label %.lr.ph.us96.us.i, label %._crit_edge.us97.us.i

.preheader69.lr.ph.split.us.split.i:              ; preds = %.preheader69.lr.ph.split.us.i
  br i1 %i.bx, label %.preheader69.us.us105.i.preheader, label %.preheader69.us.i.preheader

.preheader69.us.i.preheader:                      ; preds = %.preheader69.lr.ph.split.us.split.i
  %xtraiter70 = and i64 %i.bq, 3
  %i.dn = icmp ult i32 %i.z, 4
  br i1 %i.dn, label %.preheader69.us.i.epil.preheader, label %.preheader69.us.i.preheader.new

.preheader69.us.i.preheader.new:                  ; preds = %.preheader69.us.i.preheader
  %unroll_iter74 = and i64 %i.bq, 2147483644
  br label %.preheader69.us.i

.preheader69.us.us105.i.preheader:                ; preds = %.preheader69.lr.ph.split.us.split.i
  %5 = add nuw nsw i64 %i.bs, 1
  %6 = sub nuw nsw i64 %5, %wide.trip.count       ; 3 uses
  %unroll_iter83.a = and i64 %6, 1
  %7 = icmp eq i32 %i.r, %4
  %unroll_iter83 = and i64 %6, 4294967294
  %lcmp.mod79.not = icmp eq i64 %unroll_iter83.a, 0
  %lcmp.mod82 = trunc i64 %6 to i1
  br label %.preheader69.us.us105.i

.preheader69.us.us105.i:                          ; preds = %.preheader69.us.us105.i.preheader, %._crit_edge.us97.us111.i
  %.05886.us.us106.i = phi i64 [ %.lcssa, %._crit_edge.us97.us111.i ], [ %i.bp, %.preheader69.us.us105.i.preheader ] ; 2 uses
  %.06385.us.us107.i = phi i64 [ %i.en, %._crit_edge.us97.us111.i ], [ 0, %.preheader69.us.us105.i.preheader ] ; 2 uses
  %i.do = load ptr, ptr %2, align 8               ; 3 uses
  br i1 %7, label %.epil.preheader76, label %.preheader69.us.us105.i.new

.preheader69.us.us105.i.new:                      ; preds = %.preheader69.us.us105.i, %.preheader69.us.us105.i.new
  %.05674.us88.us.i = phi float [ %.157.us91.us.i.1, %.preheader69.us.us105.i.new ], [ 0.000000e+00, %.preheader69.us.us105.i ] ; 2 uses
  %.15973.us89.us.i = phi i64 [ %i.dy, %.preheader69.us.us105.i.new ], [ %.05886.us.us106.i, %.preheader69.us.us105.i ] ; 3 uses
  %niter84 = phi i64 [ %niter84.next.1, %.preheader69.us.us105.i.new ], [ 0, %.preheader69.us.us105.i ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.do, i64 %.15973.us89.us.i
  %i.dq = load float, ptr %i.dp, align 4
  %i.dr = tail call float @llvm.fabs.f32(float %i.dq) ; 2 uses
  %i.ds = fcmp ogt float %i.dr, %.05674.us88.us.i
  %.157.us91.us.i = select i1 %i.ds, float %i.dr, float %.05674.us88.us.i ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.do, i64 %.15973.us89.us.i
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = tail call float @llvm.fabs.f32(float %i.dv) ; 2 uses
  %i.dx = fcmp ogt float %i.dw, %.157.us91.us.i
  %.157.us91.us.i.1 = select i1 %i.dx, float %i.dw, float %.157.us91.us.i ; 3 uses
  %i.dy = add nsw i64 %.15973.us89.us.i, 2        ; 3 uses
  %niter84.next.1 = add i64 %niter84, 2           ; 2 uses
  %niter84.ncmp.1.not = icmp eq i64 %niter84.next.1, %unroll_iter83
  br i1 %niter84.ncmp.1.not, label %..preheader_crit_edge.split.us92.us.i.preheader.unr-lcssa, label %.preheader69.us.us105.i.new, !llvm.loop !820

..preheader_crit_edge.split.us92.us.i.preheader.unr-lcssa: ; preds = %.preheader69.us.us105.i.new
  br i1 %lcmp.mod79.not, label %..preheader_crit_edge.split.us92.us.i.preheader, label %.epil.preheader76

.epil.preheader76:                                ; preds = %..preheader_crit_edge.split.us92.us.i.preheader.unr-lcssa, %.preheader69.us.us105.i
  %.05674.us88.us.i.epil.init = phi float [ 0.000000e+00, %.preheader69.us.us105.i ], [ %.157.us91.us.i.1, %..preheader_crit_edge.split.us92.us.i.preheader.unr-lcssa ] ; 2 uses
  %.15973.us89.us.i.epil.init = phi i64 [ %.05886.us.us106.i, %.preheader69.us.us105.i ], [ %i.dy, %..preheader_crit_edge.split.us92.us.i.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.do, i64 %.15973.us89.us.i.epil.init
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = tail call float @llvm.fabs.f32(float %i.ea) ; 2 uses
  %i.ec = fcmp ogt float %i.eb, %.05674.us88.us.i.epil.init
  %.157.us91.us.i.epil = select i1 %i.ec, float %i.eb, float %.05674.us88.us.i.epil.init
  %i.ed = add nsw i64 %.15973.us89.us.i.epil.init, 1
  br label %..preheader_crit_edge.split.us92.us.i.preheader

..preheader_crit_edge.split.us92.us.i.preheader:  ; preds = %..preheader_crit_edge.split.us92.us.i.preheader.unr-lcssa, %.epil.preheader76
  %.157.us91.us.i.lcssa = phi float [ %.157.us91.us.i.1, %..preheader_crit_edge.split.us92.us.i.preheader.unr-lcssa ], [ %.157.us91.us.i.epil, %.epil.preheader76 ]
  %.lcssa = phi i64 [ %i.dy, %..preheader_crit_edge.split.us92.us.i.preheader.unr-lcssa ], [ %i.ed, %.epil.preheader76 ]
  br label %..preheader_crit_edge.split.us92.us.i

..preheader_crit_edge.split.us92.us.i:            ; preds = %..preheader_crit_edge.split.us92.us.i.preheader, %bb.l
  %.16282.us.us108.i = phi i64 [ %i.ek, %bb.l ], [ 0, %..preheader_crit_edge.split.us92.us.i.preheader ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.16282.us.us108.i
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = fcmp ugt float %.157.us91.us.i.lcssa, %i.ef
  br i1 %i.eg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %..preheader_crit_edge.split.us92.us.i
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.16282.us.us108.i
  %i.ei = load float, ptr %i.eh, align 4
  %i.ej = fcmp ult float %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.l, label %._crit_edge.us97.us111.i

bb.l:                                             ; preds = %bb.k, %..preheader_crit_edge.split.us92.us.i
  %i.ek = add nuw nsw i64 %.16282.us.us108.i, 1   ; 2 uses
  %exitcond124.not.i = icmp eq i64 %i.ek, %i.bw
  br i1 %exitcond124.not.i, label %._crit_edge.us97.us111.i, label %..preheader_crit_edge.split.us92.us.i, !llvm.loop !817

._crit_edge.us97.us111.i:                         ; preds = %bb.l, %bb.k
  %.162.lcssa.us.us109.i = phi i64 [ %.16282.us.us108.i, %bb.k ], [ %i.bw, %bb.l ]
  %i.el = load ptr, ptr %i.at, align 8
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.06385.us.us107.i
  store i64 %.162.lcssa.us.us109.i, ptr %i.em, align 8
  %i.en = add nuw nsw i64 %.06385.us.us107.i, 1   ; 2 uses
  %exitcond125.not.i = icmp eq i64 %i.en, %i.bq
  br i1 %exitcond125.not.i, label %_2class.exit, label %.preheader69.us.us105.i, !llvm.loop !818

.preheader69.us.i:                                ; preds = %.preheader69.us.i, %.preheader69.us.i.preheader.new
  %.06385.us.i = phi i64 [ 0, %.preheader69.us.i.preheader.new ], [ %i.ez, %.preheader69.us.i ] ; 5 uses
  %niter75 = phi i64 [ 0, %.preheader69.us.i.preheader.new ], [ %niter75.next.3, %.preheader69.us.i ]
  %i.eo = load ptr, ptr %i.at, align 8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.06385.us.i
  store i64 0, ptr %i.ep, align 8
  %i.eq = load ptr, ptr %i.at, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.06385.us.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 0, ptr %i.es, align 8
  %i.et = load ptr, ptr %i.at, align 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.06385.us.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 0, ptr %i.ev, align 8
  %i.ew = load ptr, ptr %i.at, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.06385.us.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i64 0, ptr %i.ey, align 8
  %i.ez = add nuw nsw i64 %.06385.us.i, 4         ; 2 uses
  %niter75.next.3 = add i64 %niter75, 4           ; 2 uses
  %niter75.ncmp.3 = icmp eq i64 %niter75.next.3, %unroll_iter74
  br i1 %niter75.ncmp.3, label %_2class.exit.loopexit53.unr-lcssa, label %.preheader69.us.i, !llvm.loop !818

.preheader69.lr.ph.split.i:                       ; preds = %.preheader69.lr.ph.i
  br i1 %i.bx, label %.preheader69.us99.i, label %.preheader69.i.preheader

.preheader69.i.preheader:                         ; preds = %.preheader69.lr.ph.split.i
  %xtraiter = and i64 %i.bq, 3
  %i.fa = icmp ult i32 %i.z, 4
  br i1 %i.fa, label %.preheader69.i.epil.preheader, label %.preheader69.i.preheader.new

.preheader69.i.preheader.new:                     ; preds = %.preheader69.i.preheader
  %unroll_iter = and i64 %i.bq, 2147483644
  br label %.preheader69.i

.preheader69.us99.i:                              ; preds = %.preheader69.lr.ph.split.i, %._crit_edge.us.i
  %.06385.us100.i = phi i64 [ %i.fk, %._crit_edge.us.i ], [ 0, %.preheader69.lr.ph.split.i ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.preheader69.us99.i
  %.16282.us101.i = phi i64 [ 0, %.preheader69.us99.i ], [ %i.fh, %bb.o ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.16282.us101.i
  %i.fc = load float, ptr %i.fb, align 4
  %i.fd = fcmp ult float %i.fc, 0.000000e+00
  br i1 %i.fd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.16282.us101.i
  %i.ff = load float, ptr %i.fe, align 4
  %i.fg = fcmp ult float %i.ff, 0.000000e+00
  br i1 %i.fg, label %bb.o, label %._crit_edge.us.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fh = add nuw nsw i64 %.16282.us101.i, 1      ; 2 uses
  %exitcond121.not.i = icmp eq i64 %i.fh, %i.bw
  br i1 %exitcond121.not.i, label %._crit_edge.us.i, label %bb.m, !llvm.loop !817

._crit_edge.us.i:                                 ; preds = %bb.o, %bb.n
  %.162.lcssa.us102.i = phi i64 [ %.16282.us101.i, %bb.n ], [ %i.bw, %bb.o ]
  %i.fi = load ptr, ptr %i.at, align 8
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.06385.us100.i
  store i64 %.162.lcssa.us102.i, ptr %i.fj, align 8
  %i.fk = add nuw nsw i64 %.06385.us100.i, 1      ; 2 uses
  %exitcond122.not.i = icmp eq i64 %i.fk, %i.bq
  br i1 %exitcond122.not.i, label %_2class.exit, label %.preheader69.us99.i, !llvm.loop !818

.preheader69.i:                                   ; preds = %.preheader69.i, %.preheader69.i.preheader.new
  %.06385.i = phi i64 [ 0, %.preheader69.i.preheader.new ], [ %i.fw, %.preheader69.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader69.i.preheader.new ], [ %niter.next.3, %.preheader69.i ]
  %i.fl = load ptr, ptr %i.at, align 8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.06385.i
  store i64 0, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %i.at, align 8
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.06385.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 0, ptr %i.fp, align 8
  %i.fq = load ptr, ptr %i.at, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.06385.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i64 0, ptr %i.fs, align 8
  %i.ft = load ptr, ptr %i.at, align 8
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.06385.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store i64 0, ptr %i.fv, align 8
  %i.fw = add nuw nsw i64 %.06385.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_2class.exit.loopexit57.unr-lcssa, label %.preheader69.i, !llvm.loop !818

_2class.exit.loopexit53.unr-lcssa:                ; preds = %.preheader69.us.i
  %i.fx = and i32 %i.z, 3
  %lcmp.mod72.not = icmp eq i32 %i.fx, 0
  br i1 %lcmp.mod72.not, label %_2class.exit, label %.preheader69.us.i.epil.preheader

.preheader69.us.i.epil.preheader:                 ; preds = %_2class.exit.loopexit53.unr-lcssa, %.preheader69.us.i.preheader
  %.06385.us.i.epil.init = phi i64 [ 0, %.preheader69.us.i.preheader ], [ %i.ez, %_2class.exit.loopexit53.unr-lcssa ]
  %i.fy = and i32 %i.z, 3
  %lcmp.mod73 = icmp ne i32 %i.fy, 0
  tail call void @llvm.assume(i1 %lcmp.mod73)
  br label %.preheader69.us.i.epil

.preheader69.us.i.epil:                           ; preds = %.preheader69.us.i.epil, %.preheader69.us.i.epil.preheader
  %.06385.us.i.epil = phi i64 [ %i.gb, %.preheader69.us.i.epil ], [ %.06385.us.i.epil.init, %.preheader69.us.i.epil.preheader ] ; 2 uses
  %epil.iter71 = phi i64 [ %epil.iter71.next, %.preheader69.us.i.epil ], [ 0, %.preheader69.us.i.epil.preheader ]
  %i.fz = load ptr, ptr %i.at, align 8
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.06385.us.i.epil
  store i64 0, ptr %i.ga, align 8
  %i.gb = add nuw nsw i64 %.06385.us.i.epil, 1
  %epil.iter71.next = add i64 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i64 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %_2class.exit, label %.preheader69.us.i.epil, !llvm.loop !821

_2class.exit.loopexit57.unr-lcssa:                ; preds = %.preheader69.i
  %i.gc = and i32 %i.z, 3
  %lcmp.mod.not = icmp eq i32 %i.gc, 0
  br i1 %lcmp.mod.not, label %_2class.exit, label %.preheader69.i.epil.preheader

.preheader69.i.epil.preheader:                    ; preds = %_2class.exit.loopexit57.unr-lcssa, %.preheader69.i.preheader
  %.06385.i.epil.init = phi i64 [ 0, %.preheader69.i.preheader ], [ %i.fw, %_2class.exit.loopexit57.unr-lcssa ]
  %i.gd = and i32 %i.z, 3
  %lcmp.mod62 = icmp ne i32 %i.gd, 0
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %.preheader69.i.epil

.preheader69.i.epil:                              ; preds = %.preheader69.i.epil, %.preheader69.i.epil.preheader
  %.06385.i.epil = phi i64 [ %i.gg, %.preheader69.i.epil ], [ %.06385.i.epil.init, %.preheader69.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader69.i.epil ], [ 0, %.preheader69.i.epil.preheader ]
  %i.ge = load ptr, ptr %i.at, align 8
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.06385.i.epil
  store i64 0, ptr %i.gf, align 8
  %i.gg = add nuw nsw i64 %.06385.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_2class.exit, label %.preheader69.i.epil, !llvm.loop !822

_2class.exit:                                     ; preds = %_2class.exit.loopexit57.unr-lcssa, %.preheader69.i.epil, %._crit_edge.us.i, %._crit_edge.us97.us.i, %_2class.exit.loopexit53.unr-lcssa, %.preheader69.us.i.epil, %._crit_edge.us97.us111.i, %_vorbis_block_alloc.exit68.i
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = add nsw i64 %i.gi, 1
  store i64 %i.gj, ptr %i.gh, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %_2class.exit
  %.012 = phi ptr [ %i.at, %_2class.exit ], [ null, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.012
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @res2_forward(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #14 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_0
