Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_compress?download=true
inline.NumInlined: 64
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 117
begin_hunk_0_@libdeflate_alloc_compressor_ex
define ptr @libdeflate_alloc_compressor_ex(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !77
  %.not = icmp eq i64 %i.a, 24
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, -1
  %spec.store.select = select i1 %i.b, i32 6, i32 %0 ; 7 uses
  %or.cond = icmp ugt i32 %spec.store.select, 12
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i32 %spec.store.select, 9
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ugt i32 %spec.store.select, 1
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %spec.store.select, 1
  %spec.select = select i1 %i.e, i64 202720, i64 6080
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.e ], [ 9011712, %bb.c ], [ 668256, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  %.not81 = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr @libdeflate_default_malloc_func, align 8
  %i.i = select i1 %.not81, ptr %i.h, ptr %i.g
  %i.j = tail call ptr @libdeflate_aligned_malloc(ptr noundef %i.i, i64 noundef 32, i64 noundef %.0) #16 ; 131 uses
  %.not82 = icmp eq ptr %i.j, null
  br i1 %.not82, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79   ; 2 uses
  %.not83 = icmp eq ptr %i.l, null
  %i.m = load ptr, ptr @libdeflate_default_free_func, align 8
  %i.n = select i1 %.not83, ptr %i.m, ptr %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %spec.store.select, ptr %i.p, align 16, !tbaa !25
  %i.q = shl nuw nsw i32 %spec.store.select, 2
  %i.r = sub nuw nsw i32 55, %i.q
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !26
  switch i32 %spec.store.select, label %bb.t [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.m
    i32 6, label %bb.n
    i32 7, label %bb.o
    i32 8, label %bb.p
    i32 9, label %bb.q
    i32 10, label %bb.r
    i32 11, label %bb.s
  ]

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.t, align 8, !tbaa !26
  store ptr null, ptr %i.j, align 32, !tbaa !27
  br label %deflate_init_offset_slot_full.exit

bb.i:                                             ; preds = %bb.g
  store ptr @deflate_compress_fastest, ptr %i.j, align 32, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 32, ptr %i.u, align 4, !tbaa !28
  br label %deflate_init_offset_slot_full.exit

bb.j:                                             ; preds = %bb.g
  store ptr @deflate_compress_greedy, ptr %i.j, align 32, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 6, ptr %i.v, align 32, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 10, ptr %i.w, align 4, !tbaa !28
  br label %deflate_init_offset_slot_full.exit

bb.k:                                             ; preds = %bb.g
  store ptr @deflate_compress_greedy, ptr %i.j, align 32, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 12, ptr %i.x, align 32, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 14, ptr %i.y, align 4, !tbaa !28
  br label %deflate_init_offset_slot_full.exit

bb.l:                                             ; preds = %bb.g
  store ptr @deflate_compress_greedy, ptr %i.j, align 32, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 16, ptr %i.z, align 32, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 30, ptr %i.aa, align 4, !tbaa !28
  br label %deflate_init_offset_slot_full.exit

bb.m:                                             ; preds = %bb.g
  store ptr @deflate_compress_lazy, ptr %i.j, align 32, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 16, ptr %i.ab, align 32, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 30, ptr %i.ac, align 4, !tbaa !28
  br label %deflate_init_offset_slot_full.exit

bb.n:                                             ; preds = %bb.g
  store ptr @deflate_compress_lazy, ptr %i.j, align 32, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 35, ptr %i.ad, align 32, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 65, ptr %i.ae, align 4, !tbaa !28
  br label %deflate_init_offset_slot_full.exit

bb.o:                                             ; preds = %bb.g
  store ptr @deflate_compress_lazy, ptr %i.j, align 32, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 100, ptr %i.af, align 32, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 130, ptr %i.ag, align 4, !tbaa !28
  br label %deflate_init_offset_slot_full.exit

bb.p:                                             ; preds = %bb.g
  store ptr @deflate_compress_lazy2, ptr %i.j, align 32, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 300, ptr %i.ah, align 32, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 258, ptr %i.ai, align 4, !tbaa !28
  br label %deflate_init_offset_slot_full.exit

bb.q:                                             ; preds = %bb.g
  store ptr @deflate_compress_lazy2, ptr %i.j, align 32, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 600, ptr %i.aj, align 32, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 258, ptr %i.ak, align 4, !tbaa !28
  br label %deflate_init_offset_slot_full.exit

bb.r:                                             ; preds = %bb.g
  store ptr @deflate_compress_near_optimal, ptr %i.j, align 32, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 35, ptr %i.al, align 32, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 75, ptr %i.am, align 4, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 9011684
  store <4 x i32> <i32 2, i32 32, i32 32, i32 0>, ptr %i.an, align 4, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8976796 ; 11 uses
  br label %iter.check130

iter.check130:                                    ; preds = %middle.block127, %bb.r
  %indvars.iv.i = phi i64 [ 0, %bb.r ], [ %indvars.iv.next.i, %middle.block127 ] ; 8 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !30
  %i.at = zext nneg i8 %i.as to i32
  %i.au = shl nuw i32 1, %i.at                    ; 5 uses
  %i.av = add i32 %i.au, %i.aq
  %i.aw = trunc i64 %indvars.iv.i to i8           ; 11 uses
  %min.iters.check117 = icmp samesign ult i64 %indvars.iv.i, 8
  %i.ax = sub i32 0, %i.au
  %i.ay = icmp ugt i32 %i.aq, %i.ax
  %or.cond185 = select i1 %min.iters.check117, i1 true, i1 %i.ay
  br i1 %or.cond185, label %vec.epilog.scalar.ph131.preheader, label %vector.main.loop.iter.check118

vec.epilog.scalar.ph131.preheader:                ; preds = %iter.check130
  %xtraiter198 = and i32 %i.au, 7
  %i.az = add nsw i64 %indvars.iv.i, -8
  %lcmp.mod199.not = icmp ult i64 %i.az, 22
  br i1 %lcmp.mod199.not, label %vec.epilog.scalar.ph131.prol.loopexit, label %vec.epilog.scalar.ph131.prol

vec.epilog.scalar.ph131.prol:                     ; preds = %vec.epilog.scalar.ph131.preheader, %vec.epilog.scalar.ph131.prol
  %.0.i.prol = phi i32 [ %i.bc, %vec.epilog.scalar.ph131.prol ], [ %i.aq, %vec.epilog.scalar.ph131.preheader ] ; 2 uses
  %prol.iter200 = phi i32 [ %prol.iter200.next, %vec.epilog.scalar.ph131.prol ], [ 0, %vec.epilog.scalar.ph131.preheader ]
  %i.ba = zext i32 %.0.i.prol to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ba
  store i8 %i.aw, ptr %i.bb, align 1, !tbaa !30
  %i.bc = add i32 %.0.i.prol, 1                   ; 2 uses
  %prol.iter200.next = add i32 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i32 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %vec.epilog.scalar.ph131.prol.loopexit, label %vec.epilog.scalar.ph131.prol, !llvm.loop !63

vec.epilog.scalar.ph131.prol.loopexit:            ; preds = %vec.epilog.scalar.ph131.prol, %vec.epilog.scalar.ph131.preheader
  %.0.i.unr = phi i32 [ %i.aq, %vec.epilog.scalar.ph131.preheader ], [ %i.bc, %vec.epilog.scalar.ph131.prol ]
  %i.bd = icmp samesign ult i64 %indvars.iv.i, 8
  br i1 %i.bd, label %middle.block127, label %vec.epilog.scalar.ph131

vector.main.loop.iter.check118:                   ; preds = %iter.check130
  %min.iters.check119 = icmp samesign ult i64 %indvars.iv.i, 12
  br i1 %min.iters.check119, label %vec.epilog.ph134, label %vector.ph120

vector.ph120:                                     ; preds = %vector.main.loop.iter.check118
  %n.vec121 = and i32 %i.au, -32
  %broadcast.splatinsert122 = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %broadcast.splat123 = shufflevector <16 x i8> %broadcast.splatinsert122, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph120
  %index125 = phi i32 [ 0, %vector.ph120 ], [ %index.next126, %vector.body124 ] ; 2 uses
  %i.be = add i32 %i.aq, %index125
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <16 x i8> %broadcast.splat123, ptr %i.bg, align 1, !tbaa !30
  store <16 x i8> %broadcast.splat123, ptr %i.bh, align 1, !tbaa !30
  %index.next126 = add nuw i32 %index125, 32      ; 2 uses
  %i.bi = icmp eq i32 %index.next126, %n.vec121
  br i1 %i.bi, label %middle.block127, label %vector.body124, !llvm.loop !64

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check118
  %n.vec135 = and i32 %i.au, -8
  %broadcast.splatinsert136 = insertelement <8 x i8> poison, i8 %i.aw, i64 0
  %broadcast.splat137 = shufflevector <8 x i8> %broadcast.splatinsert136, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body138

vec.epilog.vector.body138:                        ; preds = %vec.epilog.vector.body138, %vec.epilog.ph134
  %index139 = phi i32 [ 0, %vec.epilog.ph134 ], [ %index.next140, %vec.epilog.vector.body138 ] ; 2 uses
  %i.bj = add i32 %i.aq, %index139
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bk
  store <8 x i8> %broadcast.splat137, ptr %i.bl, align 1, !tbaa !30
  %index.next140 = add nuw i32 %index139, 8       ; 2 uses
  %i.bm = icmp eq i32 %index.next140, %n.vec135
  br i1 %i.bm, label %middle.block127, label %vec.epilog.vector.body138, !llvm.loop !65

vec.epilog.scalar.ph131:                          ; preds = %vec.epilog.scalar.ph131.prol.loopexit, %vec.epilog.scalar.ph131
  %.0.i = phi i32 [ %i.ck, %vec.epilog.scalar.ph131 ], [ %.0.i.unr, %vec.epilog.scalar.ph131.prol.loopexit ] ; 9 uses
  %i.bn = zext i32 %.0.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bn
  store i8 %i.aw, ptr %i.bo, align 1, !tbaa !30
  %i.bp = add i32 %.0.i, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bq
  store i8 %i.aw, ptr %i.br, align 1, !tbaa !30
  %i.bs = add i32 %.0.i, 2
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bt
  store i8 %i.aw, ptr %i.bu, align 1, !tbaa !30
  %i.bv = add i32 %.0.i, 3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bw
  store i8 %i.aw, ptr %i.bx, align 1, !tbaa !30
  %i.by = add i32 %.0.i, 4
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bz
  store i8 %i.aw, ptr %i.ca, align 1, !tbaa !30
  %i.cb = add i32 %.0.i, 5
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cc
  store i8 %i.aw, ptr %i.cd, align 1, !tbaa !30
  %i.ce = add i32 %.0.i, 6
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cf
  store i8 %i.aw, ptr %i.cg, align 1, !tbaa !30
  %i.ch = add i32 %.0.i, 7
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ci
  store i8 %i.aw, ptr %i.cj, align 1, !tbaa !30
  %i.ck = add i32 %.0.i, 8                        ; 2 uses
  %.not.i.7 = icmp eq i32 %i.ck, %i.av
  br i1 %.not.i.7, label %middle.block127, label %vec.epilog.scalar.ph131, !llvm.loop !66

middle.block127:                                  ; preds = %vector.body124, %vec.epilog.vector.body138, %vec.epilog.scalar.ph131.prol.loopexit, %vec.epilog.scalar.ph131
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 30
  br i1 %exitcond.not.i, label %deflate_init_offset_slot_full.exit, label %iter.check130, !llvm.loop !67

bb.s:                                             ; preds = %bb.g
  store ptr @deflate_compress_near_optimal, ptr %i.j, align 32, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 100, ptr %i.cl, align 32, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 150, ptr %i.cm, align 4, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 9011684
  store <4 x i32> <i32 4, i32 16, i32 16, i32 1000>, ptr %i.cn, align 4, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 8976796 ; 11 uses
  br label %iter.check

iter.check:                                       ; preds = %middle.block, %bb.s
  %indvars.iv.i84 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i87, %middle.block ] ; 8 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %indvars.iv.i84
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !31 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.i84
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !30
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = shl nuw i32 1, %i.ct                    ; 5 uses
  %i.cv = add i32 %i.cu, %i.cq
  %i.cw = trunc i64 %indvars.iv.i84 to i8         ; 11 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv.i84, 8
  %i.cx = sub i32 0, %i.cu
  %i.cy = icmp ugt i32 %i.cq, %i.cx
  %or.cond187 = select i1 %min.iters.check, i1 true, i1 %i.cy
  br i1 %or.cond187, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check
  %xtraiter = and i32 %i.cu, 7
  %i.cz = add nsw i64 %indvars.iv.i84, -8
  %lcmp.mod.not = icmp ult i64 %i.cz, 22
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0.i85.prol = phi i32 [ %i.dc, %vec.epilog.scalar.ph.prol ], [ %i.cq, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.da = zext i32 %.0.i85.prol to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.da
  store i8 %i.cw, ptr %i.db, align 1, !tbaa !30
  %i.dc = add i32 %.0.i85.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !68

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0.i85.unr = phi i32 [ %i.cq, %vec.epilog.scalar.ph.preheader ], [ %i.dc, %vec.epilog.scalar.ph.prol ]
  %i.dd = icmp samesign ult i64 %indvars.iv.i84, 8
  br i1 %i.dd, label %middle.block, label %vec.epilog.scalar.ph

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp samesign ult i64 %indvars.iv.i84, 12
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i32 %i.cu, -32
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = add i32 %i.cq, %index
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.dg, align 1, !tbaa !30
  store <16 x i8> %broadcast.splat, ptr %i.dh, align 1, !tbaa !30
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.di = icmp eq i32 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec109 = and i32 %i.cu, -8
  %broadcast.splatinsert110 = insertelement <8 x i8> poison, i8 %i.cw, i64 0
  %broadcast.splat111 = shufflevector <8 x i8> %broadcast.splatinsert110, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i32 [ 0, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 2 uses
  %i.dj = add i32 %i.cq, %index112
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dk
  store <8 x i8> %broadcast.splat111, ptr %i.dl, align 1, !tbaa !30
  %index.next113 = add nuw i32 %index112, 8       ; 2 uses
  %i.dm = icmp eq i32 %index.next113, %n.vec109
  br i1 %i.dm, label %middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0.i85 = phi i32 [ %i.ek, %vec.epilog.scalar.ph ], [ %.0.i85.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.dn = zext i32 %.0.i85 to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dn
  store i8 %i.cw, ptr %i.do, align 1, !tbaa !30
  %i.dp = add i32 %.0.i85, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dq
  store i8 %i.cw, ptr %i.dr, align 1, !tbaa !30
  %i.ds = add i32 %.0.i85, 2
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dt
  store i8 %i.cw, ptr %i.du, align 1, !tbaa !30
  %i.dv = add i32 %.0.i85, 3
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dw
  store i8 %i.cw, ptr %i.dx, align 1, !tbaa !30
  %i.dy = add i32 %.0.i85, 4
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dz
  store i8 %i.cw, ptr %i.ea, align 1, !tbaa !30
  %i.eb = add i32 %.0.i85, 5
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ec
  store i8 %i.cw, ptr %i.ed, align 1, !tbaa !30
  %i.ee = add i32 %.0.i85, 6
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ef
  store i8 %i.cw, ptr %i.eg, align 1, !tbaa !30
  %i.eh = add i32 %.0.i85, 7
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ei
  store i8 %i.cw, ptr %i.ej, align 1, !tbaa !30
  %i.ek = add i32 %.0.i85, 8                      ; 2 uses
  %.not.i86.7 = icmp eq i32 %i.ek, %i.cv
  br i1 %.not.i86.7, label %middle.block, label %vec.epilog.scalar.ph, !llvm.loop !71

middle.block:                                     ; preds = %vector.body, %vec.epilog.vector.body, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, 30
  br i1 %exitcond.not.i88, label %deflate_init_offset_slot_full.exit, label %iter.check, !llvm.loop !67

bb.t:                                             ; preds = %bb.g
  store ptr @deflate_compress_near_optimal, ptr %i.j, align 32, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 300, ptr %i.el, align 32, !tbaa !29
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 258, ptr %i.em, align 4, !tbaa !28
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 9011684
  store <4 x i32> <i32 10, i32 1, i32 1, i32 10000>, ptr %i.en, align 4, !tbaa !30
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 8976796 ; 11 uses
  br label %iter.check158

iter.check158:                                    ; preds = %middle.block155, %bb.t
  %indvars.iv.i90 = phi i64 [ 0, %bb.t ], [ %indvars.iv.next.i93, %middle.block155 ] ; 8 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %indvars.iv.i90
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !31 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.i90
  %i.es = load i8, ptr %i.er, align 1, !tbaa !30
  %i.et = zext nneg i8 %i.es to i32
  %i.eu = shl nuw i32 1, %i.et                    ; 5 uses
  %i.ev = add i32 %i.eu, %i.eq
  %i.ew = trunc i64 %indvars.iv.i90 to i8         ; 11 uses
  %min.iters.check145 = icmp samesign ult i64 %indvars.iv.i90, 8
  %i.ex = sub i32 0, %i.eu
  %i.ey = icmp ugt i32 %i.eq, %i.ex
  %or.cond189 = select i1 %min.iters.check145, i1 true, i1 %i.ey
  br i1 %or.cond189, label %vec.epilog.scalar.ph159.preheader, label %vector.main.loop.iter.check146

vec.epilog.scalar.ph159.preheader:                ; preds = %iter.check158
  %xtraiter201 = and i32 %i.eu, 7
  %i.ez = add nsw i64 %indvars.iv.i90, -8
  %lcmp.mod202.not = icmp ult i64 %i.ez, 22
  br i1 %lcmp.mod202.not, label %vec.epilog.scalar.ph159.prol.loopexit, label %vec.epilog.scalar.ph159.prol

vec.epilog.scalar.ph159.prol:                     ; preds = %vec.epilog.scalar.ph159.preheader, %vec.epilog.scalar.ph159.prol
  %.0.i91.prol = phi i32 [ %i.fc, %vec.epilog.scalar.ph159.prol ], [ %i.eq, %vec.epilog.scalar.ph159.preheader ] ; 2 uses
  %prol.iter203 = phi i32 [ %prol.iter203.next, %vec.epilog.scalar.ph159.prol ], [ 0, %vec.epilog.scalar.ph159.preheader ]
  %i.fa = zext i32 %.0.i91.prol to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fa
  store i8 %i.ew, ptr %i.fb, align 1, !tbaa !30
  %i.fc = add i32 %.0.i91.prol, 1                 ; 2 uses
  %prol.iter203.next = add i32 %prol.iter203, 1   ; 2 uses
  %prol.iter203.cmp.not = icmp eq i32 %prol.iter203.next, %xtraiter201
  br i1 %prol.iter203.cmp.not, label %vec.epilog.scalar.ph159.prol.loopexit, label %vec.epilog.scalar.ph159.prol, !llvm.loop !72

vec.epilog.scalar.ph159.prol.loopexit:            ; preds = %vec.epilog.scalar.ph159.prol, %vec.epilog.scalar.ph159.preheader
  %.0.i91.unr = phi i32 [ %i.eq, %vec.epilog.scalar.ph159.preheader ], [ %i.fc, %vec.epilog.scalar.ph159.prol ]
  %i.fd = icmp samesign ult i64 %indvars.iv.i90, 8
  br i1 %i.fd, label %middle.block155, label %vec.epilog.scalar.ph159

vector.main.loop.iter.check146:                   ; preds = %iter.check158
  %min.iters.check147 = icmp samesign ult i64 %indvars.iv.i90, 12
  br i1 %min.iters.check147, label %vec.epilog.ph162, label %vector.ph148

vector.ph148:                                     ; preds = %vector.main.loop.iter.check146
  %n.vec149 = and i32 %i.eu, -32
  %broadcast.splatinsert150 = insertelement <16 x i8> poison, i8 %i.ew, i64 0
  %broadcast.splat151 = shufflevector <16 x i8> %broadcast.splatinsert150, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph148
  %index153 = phi i32 [ 0, %vector.ph148 ], [ %index.next154, %vector.body152 ] ; 2 uses
  %i.fe = add i32 %i.eq, %index153
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <16 x i8> %broadcast.splat151, ptr %i.fg, align 1, !tbaa !30
  store <16 x i8> %broadcast.splat151, ptr %i.fh, align 1, !tbaa !30
  %index.next154 = add nuw i32 %index153, 32      ; 2 uses
  %i.fi = icmp eq i32 %index.next154, %n.vec149
  br i1 %i.fi, label %middle.block155, label %vector.body152, !llvm.loop !73

vec.epilog.ph162:                                 ; preds = %vector.main.loop.iter.check146
  %n.vec163 = and i32 %i.eu, -8
  %broadcast.splatinsert164 = insertelement <8 x i8> poison, i8 %i.ew, i64 0
  %broadcast.splat165 = shufflevector <8 x i8> %broadcast.splatinsert164, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph162
  %index167 = phi i32 [ 0, %vec.epilog.ph162 ], [ %index.next168, %vec.epilog.vector.body166 ] ; 2 uses
  %i.fj = add i32 %i.eq, %index167
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fk
  store <8 x i8> %broadcast.splat165, ptr %i.fl, align 1, !tbaa !30
  %index.next168 = add nuw i32 %index167, 8       ; 2 uses
  %i.fm = icmp eq i32 %index.next168, %n.vec163
  br i1 %i.fm, label %middle.block155, label %vec.epilog.vector.body166, !llvm.loop !74

vec.epilog.scalar.ph159:                          ; preds = %vec.epilog.scalar.ph159.prol.loopexit, %vec.epilog.scalar.ph159
  %.0.i91 = phi i32 [ %i.gk, %vec.epilog.scalar.ph159 ], [ %.0.i91.unr, %vec.epilog.scalar.ph159.prol.loopexit ] ; 9 uses
  %i.fn = zext i32 %.0.i91 to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fn
  store i8 %i.ew, ptr %i.fo, align 1, !tbaa !30
  %i.fp = add i32 %.0.i91, 1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fq
  store i8 %i.ew, ptr %i.fr, align 1, !tbaa !30
  %i.fs = add i32 %.0.i91, 2
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ft
  store i8 %i.ew, ptr %i.fu, align 1, !tbaa !30
  %i.fv = add i32 %.0.i91, 3
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fw
  store i8 %i.ew, ptr %i.fx, align 1, !tbaa !30
  %i.fy = add i32 %.0.i91, 4
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fz
  store i8 %i.ew, ptr %i.ga, align 1, !tbaa !30
  %i.gb = add i32 %.0.i91, 5
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gc
  store i8 %i.ew, ptr %i.gd, align 1, !tbaa !30
  %i.ge = add i32 %.0.i91, 6
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gf
  store i8 %i.ew, ptr %i.gg, align 1, !tbaa !30
  %i.gh = add i32 %.0.i91, 7
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gi
  store i8 %i.ew, ptr %i.gj, align 1, !tbaa !30
  %i.gk = add i32 %.0.i91, 8                      ; 2 uses
  %.not.i92.7 = icmp eq i32 %i.gk, %i.ev
  br i1 %.not.i92.7, label %middle.block155, label %vec.epilog.scalar.ph159, !llvm.loop !75

middle.block155:                                  ; preds = %vector.body152, %vec.epilog.vector.body166, %vec.epilog.scalar.ph159.prol.loopexit, %vec.epilog.scalar.ph159
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, 30
  br i1 %exitcond.not.i94, label %deflate_init_offset_slot_full.exit, label %iter.check158, !llvm.loop !67

deflate_init_offset_slot_full.exit:               ; preds = %middle.block, %middle.block127, %middle.block155, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store <4 x i32> splat (i32 2), ptr %i.gl, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.gm, align 8, !tbaa !31
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store <4 x i32> splat (i32 2), ptr %i.gn, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.go, align 8, !tbaa !31
  %i.gp = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.gq = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store <4 x i32> splat (i32 2), ptr %i.gp, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.gq, align 8, !tbaa !31
  %i.gr = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store <4 x i32> splat (i32 2), ptr %i.gr, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.gs, align 8, !tbaa !31
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.gu = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  store <4 x i32> splat (i32 2), ptr %i.gt, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.gu, align 8, !tbaa !31
  %i.gv = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.gw = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  store <4 x i32> splat (i32 2), ptr %i.gv, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.gw, align 8, !tbaa !31
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  store <4 x i32> splat (i32 2), ptr %i.gx, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.gy, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.ha = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  store <4 x i32> splat (i32 2), ptr %i.gz, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.ha, align 8, !tbaa !31
  %i.hb = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  store <4 x i32> splat (i32 2), ptr %i.hb, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hc, align 8, !tbaa !31
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  %i.he = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  store <4 x i32> splat (i32 2), ptr %i.hd, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.he, align 8, !tbaa !31
  %i.hf = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %i.hg = getelementptr inbounds nuw i8, ptr %i.j, i64 376
  store <4 x i32> splat (i32 2), ptr %i.hf, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hg, align 8, !tbaa !31
  %i.hh = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  %i.hi = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  store <4 x i32> splat (i32 2), ptr %i.hh, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hi, align 8, !tbaa !31
  %i.hj = getelementptr inbounds nuw i8, ptr %i.j, i64 424
  %i.hk = getelementptr inbounds nuw i8, ptr %i.j, i64 440
  store <4 x i32> splat (i32 2), ptr %i.hj, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hk, align 8, !tbaa !31
  %i.hl = getelementptr inbounds nuw i8, ptr %i.j, i64 456
  %i.hm = getelementptr inbounds nuw i8, ptr %i.j, i64 472
  store <4 x i32> splat (i32 2), ptr %i.hl, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hm, align 8, !tbaa !31
  %i.hn = getelementptr inbounds nuw i8, ptr %i.j, i64 488
  %i.ho = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  store <4 x i32> splat (i32 2), ptr %i.hn, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.ho, align 8, !tbaa !31
  %i.hp = getelementptr inbounds nuw i8, ptr %i.j, i64 520
  %i.hq = getelementptr inbounds nuw i8, ptr %i.j, i64 536
  store <4 x i32> splat (i32 2), ptr %i.hp, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hq, align 8, !tbaa !31
  %i.hr = getelementptr inbounds nuw i8, ptr %i.j, i64 552
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 568
  store <4 x i32> splat (i32 2), ptr %i.hr, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hs, align 8, !tbaa !31
  %i.ht = getelementptr inbounds nuw i8, ptr %i.j, i64 584
  %i.hu = getelementptr inbounds nuw i8, ptr %i.j, i64 600
  store <4 x i32> splat (i32 2), ptr %i.ht, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hu, align 8, !tbaa !31
  %i.hv = getelementptr inbounds nuw i8, ptr %i.j, i64 616
  %i.hw = getelementptr inbounds nuw i8, ptr %i.j, i64 632
  store <4 x i32> splat (i32 1), ptr %i.hv, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.hw, align 8, !tbaa !31
  %i.hx = getelementptr inbounds nuw i8, ptr %i.j, i64 648
  %i.hy = getelementptr inbounds nuw i8, ptr %i.j, i64 664
  store <4 x i32> splat (i32 1), ptr %i.hx, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.hy, align 8, !tbaa !31
  %i.hz = getelementptr inbounds nuw i8, ptr %i.j, i64 680
  %i.ia = getelementptr inbounds nuw i8, ptr %i.j, i64 696
  store <4 x i32> splat (i32 1), ptr %i.hz, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ia, align 8, !tbaa !31
  %i.ib = getelementptr inbounds nuw i8, ptr %i.j, i64 712
  %i.ic = getelementptr inbounds nuw i8, ptr %i.j, i64 728
  store <4 x i32> splat (i32 1), ptr %i.ib, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ic, align 8, !tbaa !31
  %i.id = getelementptr inbounds nuw i8, ptr %i.j, i64 744
  %i.ie = getelementptr inbounds nuw i8, ptr %i.j, i64 760
  store <4 x i32> splat (i32 1), ptr %i.id, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ie, align 8, !tbaa !31
  %i.if = getelementptr inbounds nuw i8, ptr %i.j, i64 776
  %i.ig = getelementptr inbounds nuw i8, ptr %i.j, i64 792
  store <4 x i32> splat (i32 1), ptr %i.if, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ig, align 8, !tbaa !31
  %i.ih = getelementptr inbounds nuw i8, ptr %i.j, i64 808
  %i.ii = getelementptr inbounds nuw i8, ptr %i.j, i64 824
  store <4 x i32> splat (i32 1), ptr %i.ih, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ii, align 8, !tbaa !31
  %i.ij = getelementptr inbounds nuw i8, ptr %i.j, i64 840
  %i.ik = getelementptr inbounds nuw i8, ptr %i.j, i64 856
  store <4 x i32> splat (i32 1), ptr %i.ij, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ik, align 8, !tbaa !31
  %i.il = getelementptr inbounds nuw i8, ptr %i.j, i64 872
  %i.im = getelementptr inbounds nuw i8, ptr %i.j, i64 888
  store <4 x i32> splat (i32 1), ptr %i.il, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.im, align 8, !tbaa !31
  %i.in = getelementptr inbounds nuw i8, ptr %i.j, i64 904
  %i.io = getelementptr inbounds nuw i8, ptr %i.j, i64 920
  store <4 x i32> splat (i32 1), ptr %i.in, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.io, align 8, !tbaa !31
  %i.ip = getelementptr inbounds nuw i8, ptr %i.j, i64 936
  %i.iq = getelementptr inbounds nuw i8, ptr %i.j, i64 952
  store <4 x i32> splat (i32 1), ptr %i.ip, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.iq, align 8, !tbaa !31
  %i.ir = getelementptr inbounds nuw i8, ptr %i.j, i64 968
  %i.is = getelementptr inbounds nuw i8, ptr %i.j, i64 984
  store <4 x i32> splat (i32 1), ptr %i.ir, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.is, align 8, !tbaa !31
  %i.it = getelementptr inbounds nuw i8, ptr %i.j, i64 1000
  %i.iu = getelementptr inbounds nuw i8, ptr %i.j, i64 1016
  store <4 x i32> splat (i32 1), ptr %i.it, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.iu, align 8, !tbaa !31
  %i.iv = getelementptr inbounds nuw i8, ptr %i.j, i64 1032
  %i.iw = getelementptr inbounds nuw i8, ptr %i.j, i64 1048
  store <4 x i32> splat (i32 1), ptr %i.iv, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.iw, align 8, !tbaa !31
  %i.ix = getelementptr inbounds nuw i8, ptr %i.j, i64 1064
  store <4 x i32> splat (i32 4), ptr %i.ix, align 8, !tbaa !31
end_hunk_0
