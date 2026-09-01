Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_cab?download=true
inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@lzx_br_fillup:bb.a
  %i.by = or i64 %i.bu, %i.bx
  store i64 %i.by, ptr %1, align 8, !tbaa !195
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store ptr %i.bz, ptr %0, align 8, !tbaa !197
  %i.ca = add nsw i64 %i.as, -6
  store i64 %i.ca, ptr %i.d, align 8, !tbaa !198
  %i.cb = add nsw i32 %i.e, 48
  store i32 %i.cb, ptr %i.a, align 8, !tbaa !193
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.cc = phi i64 [ %.pre, %._crit_edge ], [ %i.as, %bb.e ], [ %i.g, %bb.c ] ; 3 uses
  %i.cd = icmp slt i64 %i.cc, 2
  br i1 %i.cd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ce = icmp eq i64 %i.cc, 1
  br i1 %i.ce, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.cf = load ptr, ptr %0, align 8, !tbaa !197   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %0, align 8, !tbaa !197
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ch, ptr %i.ci, align 4, !tbaa !196
  store i64 0, ptr %i.d, align 8, !tbaa !198
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 1, ptr %i.cj, align 1, !tbaa !194
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.ck = load i64, ptr %1, align 8, !tbaa !195
  %i.cl = shl i64 %i.ck, 16
  %i.cm = load ptr, ptr %0, align 8, !tbaa !197   ; 2 uses
  %.val = load i16, ptr %i.cm, align 1
  %i.cn = zext i16 %.val to i64
  %i.co = or disjoint i64 %i.cl, %i.cn
  store i64 %i.co, ptr %1, align 8, !tbaa !195
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store ptr %i.cp, ptr %0, align 8, !tbaa !197
  %i.cq = add nsw i64 %i.cc, -2
  store i64 %i.cq, ptr %i.d, align 8, !tbaa !198
  %i.cr = add nsw i32 %i.e, 16                    ; 2 uses
  store i32 %i.cr, ptr %i.a, align 8, !tbaa !193
  %i.cs = add nsw i32 %.0, -16
  br label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.h, %bb.i, %bb.f, %bb.d
  %.040 = phi i32 [ 0, %bb.h ], [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.i ], [ 1, %bb.b ]
  ret i32 %.040
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @lzx_make_huffman_table(ptr nofree noundef captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 22 uses
  %i.b = alloca [17 x i32], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !98   ; 2 uses
  %.not76 = icmp ne i32 %i.f, 0
  %i.g = shl nsw i32 %i.f, 15                     ; 2 uses
  %.165 = zext i1 %.not76 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !98   ; 2 uses
  %.not76.1 = icmp eq i32 %i.j, 0
  %i.k = shl nsw i32 %i.j, 14
  %.165.1 = select i1 %.not76.1, i32 %.165, i32 2
  %.1.1 = add nsw i32 %i.k, %i.g                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.1.1, ptr %i.l, align 4, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 4, !tbaa !98   ; 2 uses
  %.not76.2 = icmp eq i32 %i.n, 0
  %i.o = shl nsw i32 %i.n, 13
  %.165.2 = select i1 %.not76.2, i32 %.165.1, i32 3
  %.1.2 = add nsw i32 %i.o, %.1.1                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.1.2, ptr %i.p, align 16, !tbaa !98
  store <4 x i32> <i32 32768, i32 16384, i32 8192, i32 4096>, ptr %i.d, align 4, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !98   ; 2 uses
  %.not76.3 = icmp eq i32 %i.r, 0
  %i.s = shl nsw i32 %i.r, 12
  %.165.3 = select i1 %.not76.3, i32 %.165.2, i32 4
  %.1.3 = add nsw i32 %i.s, %.1.2                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %.1.3, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !98   ; 2 uses
  %.not76.4 = icmp eq i32 %i.w, 0
  %i.x = shl nsw i32 %i.w, 11
  %.165.4 = select i1 %.not76.4, i32 %.165.3, i32 5
  %.1.4 = add nsw i32 %i.x, %.1.3                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.1.4, ptr %i.y, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !98  ; 2 uses
  %.not76.5 = icmp eq i32 %i.aa, 0
  %i.ab = shl nsw i32 %i.aa, 10
  %.165.5 = select i1 %.not76.5, i32 %.165.4, i32 6
  %.1.5 = add nsw i32 %i.ab, %.1.4                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %.1.5, ptr %i.ac, align 4, !tbaa !98
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !98 ; 2 uses
  %.not76.6 = icmp eq i32 %i.ae, 0
  %i.af = shl nsw i32 %i.ae, 9
  %.165.6 = select i1 %.not76.6, i32 %.165.5, i32 7
  %.1.6 = add nsw i32 %i.af, %.1.5                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %.1.6, ptr %i.ag, align 16, !tbaa !98
  store <4 x i32> <i32 2048, i32 1024, i32 512, i32 256>, ptr %i.u, align 4, !tbaa !98
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !98 ; 2 uses
  %.not76.7 = icmp eq i32 %i.ai, 0
  %i.aj = shl nsw i32 %i.ai, 8
  %.165.7 = select i1 %.not76.7, i32 %.165.6, i32 8
  %.1.7 = add nsw i32 %i.aj, %.1.6                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %.1.7, ptr %i.ak, align 4, !tbaa !98
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load i32, ptr %i.am, align 4, !tbaa !98 ; 2 uses
  %.not76.8 = icmp eq i32 %i.an, 0
  %i.ao = shl nsw i32 %i.an, 7
  %.165.8 = select i1 %.not76.8, i32 %.165.7, i32 9
  %.1.8 = add nsw i32 %i.ao, %.1.7                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %.1.8, ptr %i.ap, align 8, !tbaa !98
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !98 ; 2 uses
  %.not76.9 = icmp eq i32 %i.ar, 0
  %i.as = shl nsw i32 %i.ar, 6
  %.165.9 = select i1 %.not76.9, i32 %.165.8, i32 10
  %.1.9 = add nsw i32 %i.as, %.1.8                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %.1.9, ptr %i.at, align 4, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load i32, ptr %i.au, align 4, !tbaa !98 ; 2 uses
  %.not76.10 = icmp eq i32 %i.av, 0
  %i.aw = shl nsw i32 %i.av, 5
  %.165.10 = select i1 %.not76.10, i32 %.165.9, i32 11
  %.1.10 = add nsw i32 %i.aw, %.1.9               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.1.10, ptr %i.ax, align 16, !tbaa !98
  store <4 x i32> <i32 128, i32 64, i32 32, i32 16>, ptr %i.al, align 4, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !98 ; 2 uses
  %.not76.11 = icmp eq i32 %i.az, 0
  %i.ba = shl nsw i32 %i.az, 4
  %.165.11 = select i1 %.not76.11, i32 %.165.10, i32 12
  %.1.11 = add nsw i32 %i.ba, %.1.10              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %.1.11, ptr %i.bb, align 4, !tbaa !98
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !98 ; 2 uses
  %.not76.12 = icmp eq i32 %i.be, 0
  %i.bf = shl nsw i32 %i.be, 3
  %.165.12 = select i1 %.not76.12, i32 %.165.11, i32 13
  %.1.12 = add nsw i32 %i.bf, %.1.11              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %.1.12, ptr %i.bg, align 8, !tbaa !98
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !98 ; 2 uses
  %.not76.13 = icmp eq i32 %i.bi, 0
  %i.bj = shl nsw i32 %i.bi, 2
  %.165.13 = select i1 %.not76.13, i32 %.165.12, i32 14
  %.1.13 = add nsw i32 %i.bj, %.1.12              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %.1.13, ptr %i.bk, align 4, !tbaa !98
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !98 ; 2 uses
  %.not76.14 = icmp eq i32 %i.bm, 0
  %i.bn = shl nsw i32 %i.bm, 1
  %.165.14 = select i1 %.not76.14, i32 %.165.13, i32 15
  %.1.14 = add nsw i32 %i.bn, %.1.13              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %.1.14, ptr %i.bo, align 16, !tbaa !98
  store <4 x i32> <i32 8, i32 4, i32 2, i32 1>, ptr %i.bc, align 4, !tbaa !98
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !98 ; 2 uses
  %.not76.15 = icmp eq i32 %i.bq, 0
  %.165.15 = select i1 %.not76.15, i32 %.165.14, i32 16 ; 8 uses
  %.1.15 = add nsw i32 %i.bq, %.1.14
  %i.br = and i32 %.1.15, 65535
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !185 ; 3 uses
  %i.bu = icmp sgt i32 %.165.15, %i.bt
  br i1 %i.bu, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.165.15, ptr %i.bv, align 8, !tbaa !219
  %i.bw = icmp samesign ult i32 %.165.15, 16
  br i1 %i.bw, label %bb.d, label %.loopexit78

bb.d:                                             ; preds = %bb.c
  %i.bx = sub nuw nsw i32 16, %.165.15            ; 6 uses
  %.not7583 = icmp eq i32 %.165.15, 0
  br i1 %.not7583, label %.loopexit78, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.by = zext nneg i32 %.165.15 to i64           ; 2 uses
  %xtraiter = and i64 %i.by, 1
  %i.bz = icmp eq i32 %.165.15, 1
  br i1 %i.bz, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.by, 14
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !98
  %i.cc = ashr i32 %i.cb, %i.bx
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !98
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !98
  %i.cf = ashr i32 %i.ce, %i.bx
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !98
  %i.ci = ashr i32 %i.ch, %i.bx
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !98
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !98
  %i.cl = ashr i32 %i.ck, %i.bx
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !98
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit78.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !235

.loopexit78.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit78, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit78.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit78.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod153 = trunc i32 %.165.15 to i1
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !98
  %i.co = ashr i32 %i.cn, %i.bx
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !98
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !98
  %i.cr = ashr i32 %i.cq, %i.bx
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !98
  br label %.loopexit78

.loopexit78:                                      ; preds = %.lr.ph.epil.preheader, %.loopexit78.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.cs = shl nuw i32 1, %i.bt                    ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !127 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !126
  %i.cx = load i32, ptr %0, align 8, !tbaa !184   ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.cy, align 8, !tbaa !236
  %.not95 = icmp eq i32 %i.bt, 31
  br i1 %.not95, label %.preheader, label %iter.check

iter.check:                                       ; preds = %.loopexit78
  %i.cz = trunc i32 %i.cx to i16                  ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %wide.trip.count101 = zext nneg i32 %smax to i64 ; 3 uses
  %min.iters.check = icmp slt i32 %i.cs, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.1, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check115 = icmp slt i32 %i.cs, 16
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count101, 2147483632
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.cz, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.da, align 2, !tbaa !148
  store <8 x i16> %broadcast.splat, ptr %i.db, align 2, !tbaa !148
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %.preheader, label %vector.body, !llvm.loop !237

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec116 = and i64 %wide.trip.count101, 2147483644
  %broadcast.splatinsert117 = insertelement <4 x i16> poison, i16 %i.cz, i64 0
  %broadcast.splat118 = shufflevector <4 x i16> %broadcast.splatinsert117, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.vector.body.1, %vec.epilog.ph
  %index119 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body.1 ] ; 2 uses
  %1 = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index119
  store <4 x i16> %broadcast.splat118, ptr %1, align 2, !tbaa !148
  %index.next120 = add nuw i64 %index119, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next120, %n.vec116
  br i1 %i.dd, label %.preheader, label %vec.epilog.vector.body.1, !llvm.loop !238

.preheader:                                       ; preds = %vector.body, %vec.epilog.vector.body.1, %vec.epilog.scalar.ph.1, %.loopexit78
  %i.de = icmp sgt i32 %i.cx, 0
  br i1 %i.de, label %.lr.ph90.preheader, label %.thread

.lr.ph90.preheader:                               ; preds = %.preheader
  %wide.trip.count109 = zext nneg i32 %i.cx to i64
  br label %.lr.ph90

vec.epilog.scalar.ph.1:                           ; preds = %iter.check, %vec.epilog.scalar.ph.1
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %vec.epilog.scalar.ph.1 ], [ 0, %iter.check ] ; 2 uses
  %2 = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv98
  store i16 %i.cz, ptr %2, align 2, !tbaa !148
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not.1 = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not.1, label %.preheader, label %vec.epilog.scalar.ph.1, !llvm.loop !239

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %.loopexit
  %indvars.iv106 = phi i64 [ 0, %.lr.ph90.preheader ], [ %indvars.iv.next107, %.loopexit ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv106
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !9   ; 3 uses
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph90
  %i.di = zext i8 %i.dg to i32
  %i.dj = icmp slt i32 %i.cs, %i.di
  br i1 %i.dj, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dk = zext i8 %i.dg to i64                    ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !98 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dk
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !98 ; 5 uses
  %i.dp = add nsw i32 %i.do, %i.dm                ; 2 uses
  store i32 %i.dp, ptr %i.dl, align 4, !tbaa !98
  %i.dq = icmp sgt i32 %i.dp, %i.cs
  br i1 %i.dq, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = sext i32 %i.dm to i64
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.dr ; 3 uses
  %i.dt = icmp sgt i32 %i.do, 0
  br i1 %i.dt, label %iter.check136, label %.loopexit

iter.check136:                                    ; preds = %bb.g
  %i.du = trunc i64 %indvars.iv106 to i16         ; 3 uses
  %i.dv = zext nneg i32 %i.do to i64              ; 10 uses
  %min.iters.check122 = icmp ult i32 %i.do, 4
  br i1 %min.iters.check122, label %vec.epilog.scalar.ph137.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %iter.check136
  %min.iters.check124 = icmp ult i32 %i.do, 16
  br i1 %min.iters.check124, label %vec.epilog.ph140, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %i.dw = and i64 %i.dv, 12
  %n.vec126 = and i64 %i.dv, 2147483632           ; 3 uses
  %broadcast.splatinsert127 = insertelement <8 x i16> poison, i16 %i.du, i64 0
  %broadcast.splat128 = shufflevector <8 x i16> %broadcast.splatinsert127, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dx = and i64 %i.dv, 15
  %invariant.gep = getelementptr [2 x i8], ptr %i.ds, i64 %i.dv
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph125
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next131, %vector.body129 ] ; 2 uses
  %i.dy = xor i64 %index130, -1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.dy ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %gep, i64 -14
  %i.ea = getelementptr inbounds i8, ptr %gep, i64 -30
  store <8 x i16> %broadcast.splat128, ptr %i.dz, align 2, !tbaa !148
  store <8 x i16> %broadcast.splat128, ptr %i.ea, align 2, !tbaa !148
  %index.next131 = add nuw i64 %index130, 16      ; 2 uses
  %i.eb = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.eb, label %middle.block132, label %vector.body129, !llvm.loop !240

middle.block132:                                  ; preds = %vector.body129
  %cmp.n133 = icmp eq i64 %n.vec126, %i.dv
  br i1 %cmp.n133, label %.loopexit, label %vec.epilog.iter.check138

vec.epilog.iter.check138:                         ; preds = %middle.block132
  %min.epilog.iters.check139 = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check139, label %vec.epilog.scalar.ph137.preheader, label %vec.epilog.ph140, !prof !241

vec.epilog.ph140:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check138
  %vec.epilog.resume.val134 = phi i64 [ %n.vec126, %vec.epilog.iter.check138 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec141 = and i64 %i.dv, 2147483644           ; 2 uses
  %broadcast.splatinsert142 = insertelement <4 x i16> poison, i16 %i.du, i64 0
  %broadcast.splat143 = shufflevector <4 x i16> %broadcast.splatinsert142, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ec = and i64 %i.dv, 3
  %invariant.gep154 = getelementptr [2 x i8], ptr %i.ds, i64 %i.dv
  br label %vec.epilog.vector.body145

vec.epilog.vector.body145:                        ; preds = %vec.epilog.vector.body145, %vec.epilog.ph140
  %index146 = phi i64 [ %vec.epilog.resume.val134, %vec.epilog.ph140 ], [ %index.next147, %vec.epilog.vector.body145 ] ; 2 uses
  %i.ed = xor i64 %index146, -1
  %gep155 = getelementptr [2 x i8], ptr %invariant.gep154, i64 %i.ed
  %i.ee = getelementptr inbounds i8, ptr %gep155, i64 -6
  store <4 x i16> %broadcast.splat143, ptr %i.ee, align 2, !tbaa !148
  %index.next147 = add nuw i64 %index146, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.ef, label %vec.epilog.middle.block148, label %vec.epilog.vector.body145, !llvm.loop !242

vec.epilog.middle.block148:                       ; preds = %vec.epilog.vector.body145
  %cmp.n149 = icmp eq i64 %n.vec141, %i.dv
  br i1 %cmp.n149, label %.loopexit, label %vec.epilog.scalar.ph137.preheader

vec.epilog.scalar.ph137.preheader:                ; preds = %iter.check136, %vec.epilog.iter.check138, %vec.epilog.middle.block148
  %indvars.iv103.ph = phi i64 [ %i.dv, %iter.check136 ], [ %i.dx, %vec.epilog.iter.check138 ], [ %i.ec, %vec.epilog.middle.block148 ]
  br label %vec.epilog.scalar.ph137

vec.epilog.scalar.ph137:                          ; preds = %vec.epilog.scalar.ph137.preheader, %vec.epilog.scalar.ph137
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %vec.epilog.scalar.ph137 ], [ %indvars.iv103.ph, %vec.epilog.scalar.ph137.preheader ] ; 2 uses
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, -1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %indvars.iv.next104
  store i16 %i.du, ptr %i.eg, align 2, !tbaa !148
  %i.eh = icmp samesign ugt i64 %indvars.iv103, 1
  br i1 %i.eh, label %vec.epilog.scalar.ph137, label %.loopexit, !llvm.loop !243

.loopexit:                                        ; preds = %vec.epilog.scalar.ph137, %middle.block132, %vec.epilog.middle.block148, %bb.g, %.lr.ph90
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %.thread, label %.lr.ph90, !llvm.loop !244

.thread:                                          ; preds = %.loopexit, %bb.f, %bb.e, %.preheader, %bb.a, %bb.b
  %.270 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.preheader ], [ 0, %bb.f ], [ 1, %.loopexit ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.270
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 2) i32 @lzx_read_bitlen(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 -1, 257) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 536 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !214  ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.g, i8 0, i64 68, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp slt i32 %2, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %1, align 8, !tbaa !184
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0127 = phi i32 [ %i.i, %bb.d ], [ %2, %bb.c ] ; 5 uses
  %i.j = icmp slt i32 %i.e, %.0127
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 4 uses
  %i.n = getelementptr i8, ptr %i.b, i64 528      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.loopexit
  %.0125158 = phi i32 [ %i.e, %.lr.ph ], [ %.3, %.loopexit ] ; 13 uses
  store i32 %.0125158, ptr %i.d, align 8, !tbaa !214
  %i.r = load i32, ptr %i.k, align 8, !tbaa !193  ; 2 uses
  %i.s = load i32, ptr %i.m, align 8, !tbaa !245  ; 2 uses
  %.not = icmp slt i32 %i.r, %i.s
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call fastcc i32 @lzx_br_fillup(ptr noundef %0, ptr noundef nonnull %i.c)
  %.not137 = icmp eq i32 %i.t, 0
  %.pre = load i32, ptr %i.k, align 8, !tbaa !193 ; 2 uses
  %.pre179 = load i32, ptr %i.m, align 8, !tbaa !245 ; 2 uses
  %.not138 = icmp slt i32 %.pre, %.pre179
  %or.cond = select i1 %.not137, i1 %.not138, i1 false
  br i1 %or.cond, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi i32 [ %i.s, %bb.f ], [ %.pre179, %bb.g ] ; 3 uses
  %i.v = phi i32 [ %i.r, %bb.f ], [ %.pre, %bb.g ] ; 8 uses
  %i.w = load i64, ptr %i.c, align 8, !tbaa !195
  %i.x = sub nsw i32 %i.v, %i.u
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %i.w, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = sext i32 %i.u to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr @cache_masks, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !98
  %i.ae = and i32 %i.ad, %i.aa
  %.val149 = load i32, ptr %i.l, align 8, !tbaa !184
  %.val150 = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.val150, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !148
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = icmp sgt i32 %.val149, %i.ai
  %..i = select i1 %i.aj, i32 %i.ai, i32 0        ; 3 uses
  %trunc = trunc nuw i32 %..i to i16
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !216 ; 5 uses
  switch i16 %trunc, label %bb.z [
    i16 17, label %bb.i
    i16 18, label %bb.n
    i16 19, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 17
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = add nuw nsw i32 %i.an, 4
  %.not145 = icmp slt i32 %i.v, %i.ao
  br i1 %.not145, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call fastcc i32 @lzx_br_fillup(ptr noundef %0, ptr noundef nonnull %i.c)
  %.not146 = icmp eq i32 %i.ap, 0
  %.pre189 = load ptr, ptr %i.o, align 8, !tbaa !216 ; 2 uses
  br i1 %.not146, label %bb.k, label %._crit_edge190

._crit_edge190:                                   ; preds = %bb.j
  %.phi.trans.insert191 = getelementptr inbounds nuw i8, ptr %.pre189, i64 17
  %.pre192 = load i8, ptr %.phi.trans.insert191, align 1, !tbaa !9
  %.pre193 = load i32, ptr %i.k, align 8, !tbaa !193
  %.pre194 = zext i8 %.pre192 to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load i32, ptr %i.k, align 8, !tbaa !193 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre189, i64 17
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = add nuw nsw i32 %i.at, 4
  %.not147 = icmp slt i32 %i.aq, %i.au
  br i1 %.not147, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %._crit_edge190, %bb.k, %bb.i
  %.pre-phi = phi i32 [ %.pre194, %._crit_edge190 ], [ %i.at, %bb.k ], [ %i.an, %bb.i ]
  %i.av = phi i32 [ %.pre193, %._crit_edge190 ], [ %i.aq, %bb.k ], [ %i.v, %bb.i ]
  %i.aw = sub nsw i32 %i.av, %.pre-phi            ; 2 uses
  store i32 %i.aw, ptr %i.k, align 8, !tbaa !193
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !195
  %i.ay = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.ax, %i.az
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = and i32 %i.bb, 15
  %i.bd = add nuw nsw i32 %i.bc, 4                ; 2 uses
  %i.be = add nsw i32 %i.bd, %.0125158
  %i.bf = icmp sgt i32 %i.be, %.0127
  br i1 %i.bf, label %.loopexit152, label %.new

.new:                                             ; preds = %bb.l
  store i32 %i.ay, ptr %i.k, align 8, !tbaa !193
  %xtraiter = and i32 %i.bb, 3                    ; 4 uses
  %i.bg = sext i32 %.0125158 to i64
  %unroll_iter = sub nuw nsw i32 %i.bd, %xtraiter
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.new
  %indvars.iv175 = phi i64 [ %i.bg, %.new ], [ %indvars.iv.next176.3, %bb.m ] ; 5 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.m ]
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %indvars.iv175
  store i8 0, ptr %i.bi, align 1, !tbaa !9
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.bk = getelementptr i8, ptr %i.bj, i64 %indvars.iv175
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  store i8 0, ptr %i.bl, align 1, !tbaa !9
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.bn = getelementptr i8, ptr %i.bm, i64 %indvars.iv175
  %i.bo = getelementptr i8, ptr %i.bn, i64 2
  store i8 0, ptr %i.bo, align 1, !tbaa !9
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !126
  %indvars.iv.next176.3 = add nsw i64 %indvars.iv175, 4 ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 %indvars.iv175
  %i.br = getelementptr i8, ptr %i.bq, i64 3
  store i8 0, ptr %i.br, align 1, !tbaa !9
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !246

bb.n:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = add nuw nsw i32 %i.bu, 5
  %.not142 = icmp slt i32 %i.v, %i.bv
  br i1 %.not142, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bw = tail call fastcc i32 @lzx_br_fillup(ptr noundef %0, ptr noundef nonnull %i.c)
  %.not143 = icmp eq i32 %i.bw, 0
  %.pre184 = load ptr, ptr %i.o, align 8, !tbaa !216 ; 2 uses
  br i1 %.not143, label %bb.p, label %._crit_edge185

._crit_edge185:                                   ; preds = %bb.o
  %.phi.trans.insert186 = getelementptr inbounds nuw i8, ptr %.pre184, i64 18
  %.pre187 = load i8, ptr %.phi.trans.insert186, align 1, !tbaa !9
  %.pre188 = load i32, ptr %i.k, align 8, !tbaa !193
  %.pre195 = zext i8 %.pre187 to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.k, align 8, !tbaa !193 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre184, i64 18
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = add nuw nsw i32 %i.ca, 5
  %.not144 = icmp slt i32 %i.bx, %i.cb
  br i1 %.not144, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %._crit_edge185, %bb.p, %bb.n
  %.pre-phi196 = phi i32 [ %.pre195, %._crit_edge185 ], [ %i.ca, %bb.p ], [ %i.bu, %bb.n ]
  %i.cc = phi i32 [ %.pre188, %._crit_edge185 ], [ %i.bx, %bb.p ], [ %i.v, %bb.n ]
  %i.cd = sub nsw i32 %i.cc, %.pre-phi196         ; 2 uses
  store i32 %i.cd, ptr %i.k, align 8, !tbaa !193
  %i.ce = load i64, ptr %i.c, align 8, !tbaa !195
  %i.cf = add nsw i32 %i.cd, -5                   ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 %i.ce, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 31
  %i.ck = add nuw nsw i32 %i.cj, 20               ; 2 uses
  %i.cl = add nsw i32 %i.ck, %.0125158            ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, %.0127
  br i1 %i.cm, label %.loopexit152, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.cf, ptr %i.k, align 8, !tbaa !193
  %i.cn = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.co = sext i32 %.0125158 to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  %i.cq = zext nneg i32 %i.ck to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, i8 0, i64 %i.cq, i1 false)
  br label %.loopexit

bb.s:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ak, i64 19
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !9
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = add i32 %i.u, 1
  %i.cv = add i32 %i.cu, %i.ct
  %.not139 = icmp slt i32 %i.v, %i.cv
  br i1 %.not139, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cw = tail call fastcc i32 @lzx_br_fillup(ptr noundef %0, ptr noundef nonnull %i.c)
  %.not140 = icmp eq i32 %i.cw, 0
  %.pre180 = load ptr, ptr %i.o, align 8, !tbaa !216 ; 4 uses
  br i1 %.not140, label %bb.u, label %._crit_edge181

._crit_edge181:                                   ; preds = %bb.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre180, i64 19
  %.pre182 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9
  %.pre183 = load i32, ptr %i.k, align 8, !tbaa !193
  %.pre197 = zext i8 %.pre182 to i32
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = load i32, ptr %i.k, align 8, !tbaa !193 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre180, i64 19
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %i.db = add nuw nsw i32 %i.da, 1
  %i.dc = load i32, ptr %i.m, align 8, !tbaa !245
  %i.dd = add nsw i32 %i.db, %i.dc
  %.not141 = icmp slt i32 %i.cx, %i.dd
  br i1 %.not141, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %._crit_edge181, %bb.u, %bb.s
  %.pre-phi198 = phi i32 [ %.pre197, %._crit_edge181 ], [ %i.da, %bb.u ], [ %i.ct, %bb.s ]
  %i.de = phi i32 [ %.pre183, %._crit_edge181 ], [ %i.cx, %bb.u ], [ %i.v, %bb.s ]
  %i.df = phi ptr [ %.pre180, %._crit_edge181 ], [ %.pre180, %bb.u ], [ %i.ak, %bb.s ]
  %i.dg = sub nsw i32 %i.de, %.pre-phi198         ; 2 uses
  store i32 %i.dg, ptr %i.k, align 8, !tbaa !193
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !195 ; 2 uses
  %i.di = add nsw i32 %i.dg, -1                   ; 4 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = lshr i64 %i.dh, %i.dj
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = and i32 %i.dl, 1                        ; 2 uses
  %i.dn = or disjoint i32 %i.dm, 4                ; 2 uses
  %i.do = add nsw i32 %i.dn, %.0125158
  %i.dp = icmp sgt i32 %i.do, %.0127
  br i1 %i.dp, label %.loopexit152, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.di, ptr %i.k, align 8, !tbaa !193
  %i.dq = load i32, ptr %i.m, align 8, !tbaa !245 ; 2 uses
  %i.dr = sub nsw i32 %i.di, %i.dq
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = lshr i64 %i.dh, %i.ds
  %i.du = trunc i64 %i.dt to i32
  %i.dv = sext i32 %i.dq to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr @cache_masks, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !98
  %i.dy = and i32 %i.dx, %i.du
  %.val = load i32, ptr %i.l, align 8, !tbaa !184
  %.val148 = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.val148, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !148
  %i.ec = zext i16 %i.eb to i32                   ; 2 uses
  %i.ed = icmp sgt i32 %.val, %i.ec
  %..i151 = select i1 %i.ed, i32 %i.ec, i32 0     ; 2 uses
  %i.ee = zext nneg i32 %..i151 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %i.eh = zext i8 %i.eg to i32
  %i.ei = sub nsw i32 %i.di, %i.eh
  store i32 %i.ei, ptr %i.k, align 8, !tbaa !193
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.ek = sext i32 %.0125158 to i64               ; 7 uses
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !9
  %i.en = zext i8 %i.em to i32
  %reass.sub = sub nsw i32 %i.en, %..i151
  %i.eo = add nsw i32 %reass.sub, 17
  %i.ep = srem i32 %i.eo, 17                      ; 3 uses
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %.loopexit152, label %.preheader

.preheader:                                       ; preds = %bb.w
  %i.er = trunc nuw nsw i32 %i.ep to i8           ; 5 uses
  %i.es = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.ek
  store i8 %i.er, ptr %i.et, align 1, !tbaa !9
  %i.eu = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.ek
  %i.ew = getelementptr i8, ptr %i.ev, i64 1
  store i8 %i.er, ptr %i.ew, align 1, !tbaa !9
  %i.ex = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ek
  %i.ez = getelementptr i8, ptr %i.ey, i64 2
  store i8 %i.er, ptr %i.ez, align 1, !tbaa !9
  %i.fa = load ptr, ptr %i.p, align 8, !tbaa !126
  %indvars.iv.next.3 = add nsw i64 %i.ek, 4       ; 2 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ek
  %i.fc = getelementptr i8, ptr %i.fb, i64 3
  store i8 %i.er, ptr %i.fc, align 1, !tbaa !9
  %exitcond.not.3 = icmp eq i32 %i.dm, 0
  br i1 %exitcond.not.3, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader
  %i.fd = load ptr, ptr %i.p, align 8, !tbaa !126
  %indvars.iv.next.4 = add nsw i64 %i.ek, 5
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %indvars.iv.next.3
  store i8 %i.er, ptr %i.fe, align 1, !tbaa !9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.4, %bb.x ], [ %indvars.iv.next.3, %.preheader ]
  %i.ff = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.fg = zext nneg i32 %i.ep to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.fg ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !98
  %i.fj = add nsw i32 %i.fi, %i.dn
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !98
  br label %.loopexit

bb.z:                                             ; preds = %bb.h
  %i.fk = zext nneg i32 %..i to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  %i.fn = zext i8 %i.fm to i32
  %i.fo = sub nsw i32 %i.v, %i.fn
  store i32 %i.fo, ptr %i.k, align 8, !tbaa !193
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.fq = sext i32 %.0125158 to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !9
  %i.ft = zext i8 %i.fs to i32
  %reass.sub172 = sub nsw i32 %i.ft, %..i
  %i.fu = add nsw i32 %reass.sub172, 17
  %i.fv = srem i32 %i.fu, 17                      ; 3 uses
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %.loopexit152, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !98
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !98
  %i.gb = trunc nuw nsw i32 %i.fv to i8
  %i.gc = add nsw i32 %.0125158, 1
  store i8 %i.gb, ptr %i.fr, align 1, !tbaa !9
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.m
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod213 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader
  %indvars.iv175.epil = phi i64 [ %indvars.iv.next176.3, %.epil.preheader ], [ %indvars.iv.next176.epil, %bb.ab ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ab ]
  %i.gd = load ptr, ptr %i.p, align 8, !tbaa !126
  %indvars.iv.next176.epil = add nsw i64 %indvars.iv175.epil, 1 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %indvars.iv175.epil
  store i8 0, ptr %i.ge, align 1, !tbaa !9
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.ab, !llvm.loop !247

.loopexit.loopexit:                               ; preds = %bb.ab, %.loopexit.loopexit.unr-lcssa
  %indvars.iv.next176.lcssa = phi i64 [ %indvars.iv.next176.3, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next176.epil, %bb.ab ]
  %i.gf = trunc nsw i64 %indvars.iv.next176.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aa, %bb.y, %bb.r
  %.3 = phi i32 [ %i.gc, %bb.aa ], [ %i.ff, %bb.y ], [ %i.cl, %bb.r ], [ %i.gf, %.loopexit.loopexit ] ; 3 uses
  %i.gg = icmp slt i32 %.3, %.0127
  br i1 %i.gg, label %bb.f, label %._crit_edge, !llvm.loop !248

._crit_edge:                                      ; preds = %bb.k, %bb.p, %bb.u, %.loopexit, %bb.g, %bb.e
  %.0125.lcssa = phi i32 [ %i.e, %bb.e ], [ %.3, %.loopexit ], [ %.0125158, %bb.u ], [ %.0125158, %bb.p ], [ %.0125158, %bb.k ], [ %.0125158, %bb.g ]
  %.0 = phi i32 [ 1, %bb.e ], [ 1, %.loopexit ], [ 0, %bb.u ], [ 0, %bb.p ], [ 0, %bb.k ], [ 0, %bb.g ]
  store i32 %.0125.lcssa, ptr %i.d, align 8, !tbaa !214
  br label %.loopexit152

.loopexit152:                                     ; preds = %bb.z, %bb.w, %bb.v, %bb.q, %bb.l, %._crit_edge
  %.0128 = phi i32 [ %.0, %._crit_edge ], [ -1, %bb.l ], [ -1, %bb.q ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.z ]
  ret i32 %.0128
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @archive_string_free(ptr noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !26, i64 2072}
!15 = !{!"archive_read", !16, i64 0, !22, i64 144, !6, i64 152, !11, i64 160, !11, i64 168, !23, i64 176, !7, i64 248, !25, i64 632, !6, i64 640, !11, i64 648, !6, i64 656, !6, i64 660, !7, i64 664, !26, i64 2072, !27, i64 2080, !18, i64 2088, !28, i64 2096}
!16 = !{!"archive", !6, i64 0, !6, i64 4, !17, i64 8, !6, i64 16, !19, i64 24, !6, i64 32, !6, i64 36, !19, i64 40, !20, i64 48, !19, i64 72, !6, i64 80, !6, i64 84, !21, i64 88, !19, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !7, i64 128, !11, i64 136}
!17 = !{!"p1 _ZTS14archive_vtable", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"archive_string", !19, i64 0, !11, i64 8, !11, i64 16}
!21 = !{!"p1 _ZTS19archive_string_conv", !18, i64 0}
!22 = !{!"p1 _ZTS13archive_entry", !18, i64 0}
!23 = !{!"archive_read_client", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !6, i64 48, !6, i64 52, !11, i64 56, !24, i64 64}
!24 = !{!"p1 _ZTS22archive_read_data_node", !18, i64 0}
!25 = !{!"p1 _ZTS19archive_read_filter", !18, i64 0}
!26 = !{!"p1 _ZTS25archive_format_descriptor", !18, i64 0}
!27 = !{!"p1 _ZTS20archive_read_extract", !18, i64 0}
!28 = !{!"", !29, i64 0, !30, i64 8, !6, i64 16, !18, i64 24, !18, i64 32}
!29 = !{!"p1 _ZTS23archive_read_passphrase", !18, i64 0}
!30 = !{!"p2 _ZTS23archive_read_passphrase", !31, i64 0}
!31 = !{!"any p2 pointer", !18, i64 0}
!32 = !{!33, !18, i64 0}
!33 = !{!"archive_format_descriptor", !18, i64 0, !19, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80}
!34 = !{!35, !21, i64 184}
!35 = !{!"cab", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !36, i64 40, !37, i64 48, !38, i64 56, !11, i64 64, !39, i64 72, !41, i64 120, !7, i64 144, !7, i64 145, !7, i64 146, !7, i64 147, !7, i64 148, !11, i64 152, !19, i64 160, !11, i64 168, !6, i64 176, !21, i64 184, !21, i64 192, !21, i64 200, !7, i64 208, !43, i64 272, !7, i64 384, !45, i64 392}
!36 = !{!"p1 _ZTS8cffolder", !18, i64 0}
!37 = !{!"p1 _ZTS6cffile", !18, i64 0}
!38 = !{!"p1 _ZTS6cfdata", !18, i64 0}
!39 = !{!"cfheader", !6, i64 0, !6, i64 4, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !40, i64 16, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !36, i64 24, !37, i64 32, !6, i64 40}
!40 = !{!"short", !7, i64 0}
!41 = !{!"archive_wstring", !42, i64 0, !11, i64 8, !11, i64 16}
!42 = !{!"p1 int", !18, i64 0}
!43 = !{!"z_stream_s", !19, i64 0, !6, i64 8, !11, i64 16, !19, i64 24, !6, i64 32, !11, i64 40, !19, i64 48, !44, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !6, i64 88, !11, i64 96, !11, i64 104}
!44 = !{!"p1 _ZTS14internal_state", !18, i64 0}
!45 = !{!"lzx_stream", !19, i64 0, !11, i64 8, !11, i64 16, !19, i64 24, !11, i64 32, !11, i64 40, !46, i64 48}
!46 = !{!"p1 _ZTS7lzx_dec", !18, i64 0}
!47 = !{!35, !7, i64 144}
!48 = !{!15, !6, i64 16}
!49 = !{!15, !19, i64 24}
!50 = distinct !{!50, !13}
!51 = !{!35, !11, i64 64}
!52 = !{!39, !6, i64 0}
!53 = !{!39, !6, i64 4}
!54 = !{!39, !7, i64 19}
!55 = !{!39, !7, i64 18}
!56 = !{!39, !40, i64 8}
!57 = !{!39, !40, i64 10}
!58 = !{!39, !40, i64 12}
!59 = !{!39, !40, i64 14}
!60 = !{!39, !40, i64 16}
!61 = !{!39, !7, i64 20}
!62 = !{!39, !7, i64 21}
!63 = distinct !{!63, !13}
!64 = !{!39, !36, i64 24}
!65 = !{!66, !6, i64 0}
!66 = !{!"cffolder", !6, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !19, i64 16, !67, i64 24, !6, i64 88, !7, i64 92}
!67 = !{!"cfdata", !6, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !11, i64 16, !11, i64 24, !19, i64 32, !6, i64 40, !7, i64 44, !6, i64 48, !18, i64 56}
!68 = !{!66, !40, i64 4}
!69 = !{!66, !40, i64 6}
!70 = !{!66, !40, i64 8}
!71 = !{!19, !19, i64 0}
!72 = !{!66, !19, i64 16}
!73 = !{!66, !7, i64 92}
!74 = distinct !{!74, !13}
!75 = !{!39, !37, i64 32}
!76 = !{!77, !6, i64 0}
!77 = !{!"cffile", !6, i64 0, !6, i64 4, !11, i64 8, !40, i64 16, !7, i64 18, !20, i64 24}
!78 = !{!77, !6, i64 4}
!79 = !{!77, !40, i64 16}
!80 = !{!77, !11, i64 8}
!81 = !{!77, !7, i64 18}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = !{!39, !6, i64 40}
!85 = !{!35, !7, i64 145}
!86 = !{!35, !7, i64 146}
!87 = !{!35, !7, i64 147}
!88 = !{!35, !37, i64 48}
!89 = !{!35, !36, i64 40}
!90 = !{!35, !38, i64 56}
!91 = !{!35, !21, i64 200}
!92 = !{!35, !6, i64 176}
!93 = !{!35, !21, i64 192}
!94 = !{!20, !11, i64 8}
!95 = !{!20, !19, i64 0}
!96 = distinct !{!96, !13}
!97 = !{!77, !19, i64 24}
!98 = !{!6, !6, i64 0}
!99 = !{!35, !11, i64 128}
!100 = !{!35, !42, i64 120}
!101 = distinct !{!101, !13, !102, !103}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = distinct !{!104, !13, !103, !102}
!105 = !{!35, !11, i64 8}
!106 = !{!35, !11, i64 0}
!107 = !{!18, !18, i64 0}
!108 = !{!35, !7, i64 148}
!109 = !{!35, !11, i64 152}
!110 = !{!35, !11, i64 16}
!111 = !{!67, !40, i64 8}
!112 = !{!67, !11, i64 16}
!113 = !{!66, !19, i64 56}
!114 = distinct !{!114, !13}
!115 = !{!35, !40, i64 82}
!116 = distinct !{!116, !13}
!117 = !{!35, !7, i64 384}
!118 = !{!45, !46, i64 48}
!119 = !{!120, !19, i64 16}
!120 = !{!"lzx_dec", !6, i64 0, !6, i64 4, !6, i64 8, !19, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !7, i64 40, !7, i64 41, !11, i64 48, !11, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !7, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !121, i64 96, !122, i64 104, !123, i64 120, !123, i64 224, !123, i64 328, !123, i64 432, !6, i64 536, !6, i64 540}
!121 = !{!"p1 _ZTS11lzx_pos_tbl", !18, i64 0}
!122 = !{!"lzx_br", !11, i64 0, !6, i64 8, !7, i64 12, !7, i64 13}
!123 = !{!"huffman", !6, i64 0, !7, i64 4, !19, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !124, i64 96}
!124 = !{!"p1 short", !18, i64 0}
!125 = !{!120, !121, i64 96}
!126 = !{!123, !19, i64 72}
!127 = !{!123, !124, i64 96}
!128 = !{!35, !19, i64 160}
!129 = !{!130, !6, i64 20}
!130 = !{!"tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !11, i64 40, !19, i64 48}
!131 = !{!130, !6, i64 16}
!132 = !{!130, !6, i64 12}
!133 = !{!130, !6, i64 8}
!134 = !{!130, !6, i64 4}
!135 = !{!130, !6, i64 0}
!136 = !{!130, !6, i64 32}
!137 = !{!67, !40, i64 10}
!138 = !{!66, !6, i64 88}
!139 = !{!35, !40, i64 80}
!140 = !{!67, !6, i64 40}
!141 = !{!67, !6, i64 48}
!142 = !{!67, !18, i64 56}
!143 = !{!35, !40, i64 84}
!144 = !{!35, !7, i64 93}
!145 = !{!67, !6, i64 0}
!146 = !{!67, !40, i64 4}
!147 = !{!67, !40, i64 6}
!148 = !{!40, !40, i64 0}
!149 = !{!67, !11, i64 24}
!150 = !{!67, !19, i64 32}
!151 = !{!67, !40, i64 12}
!152 = distinct !{!152, !13}
!153 = !{!67, !40, i64 14}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !13, !102, !103}
!157 = distinct !{!157, !13, !103, !102}
!158 = distinct !{!158, !13, !102, !103}
!159 = distinct !{!159, !13, !103, !102}
!160 = distinct !{!160, !13, !103, !102}
!161 = !{!35, !11, i64 168}
!162 = !{!35, !19, i64 272}
!163 = !{!35, !6, i64 280}
!164 = !{!35, !11, i64 312}
!165 = !{!35, !19, i64 296}
!166 = !{!35, !6, i64 304}
!167 = !{!35, !11, i64 288}
!168 = distinct !{!168, !13}
!169 = !{!120, !6, i64 540}
!170 = !{!120, !6, i64 4}
!171 = !{!120, !6, i64 8}
!172 = distinct !{!172, !13}
!173 = !{!174, !6, i64 0}
!174 = !{!"lzx_pos_tbl", !6, i64 0, !6, i64 4}
!175 = !{!174, !6, i64 4}
!176 = distinct !{!176, !13}
!177 = !{!120, !6, i64 24}
!178 = !{!120, !6, i64 0}
!179 = !{!120, !11, i64 104}
!180 = !{!120, !6, i64 112}
!181 = !{!120, !6, i64 72}
!182 = !{!120, !6, i64 68}
!183 = !{!120, !6, i64 64}
!184 = !{!123, !6, i64 0}
!185 = !{!123, !6, i64 84}
!186 = !{!120, !7, i64 117}
!187 = !{!35, !11, i64 432}
!188 = !{!35, !19, i64 416}
!189 = !{!35, !11, i64 424}
!190 = !{!35, !19, i64 392}
!191 = !{!35, !11, i64 400}
!192 = !{!35, !11, i64 408}
!193 = !{!122, !6, i64 8}
!194 = !{!122, !7, i64 13}
!195 = !{!122, !11, i64 0}
!196 = !{!122, !7, i64 12}
!197 = !{!45, !19, i64 0}
!198 = !{!45, !11, i64 8}
!199 = !{!120, !7, i64 40}
!200 = !{!120, !6, i64 36}
!201 = !{!120, !7, i64 41}
!202 = !{!120, !11, i64 48}
!203 = !{!120, !11, i64 56}
!204 = !{!120, !6, i64 80}
!205 = !{!120, !7, i64 116}
!206 = distinct !{!206, !13}
!207 = distinct !{!207, !13}
!208 = !{!45, !11, i64 32}
!209 = !{!45, !19, i64 24}
!210 = !{!45, !11, i64 40}
!211 = !{!120, !6, i64 120}
!212 = !{!120, !19, i64 192}
!213 = distinct !{!213, !13}
!214 = !{!120, !6, i64 536}
!215 = !{!120, !6, i64 432}
!216 = !{!120, !19, i64 504}
!217 = distinct !{!217, !13}
!218 = !{i64 0, i64 8, !10, i64 8, i64 4, !98, i64 12, i64 1, !9, i64 13, i64 1, !9}
!219 = !{!123, !6, i64 80}
!220 = !{!120, !6, i64 32}
!221 = !{!120, !6, i64 28}
!222 = !{!120, !6, i64 84}
!223 = !{!120, !6, i64 92}
!224 = !{!120, !6, i64 88}
!225 = distinct !{!225, !13, !102, !103}
!226 = !{!"branch_weights", i32 4, i32 28}
!227 = distinct !{!227, !13, !102, !103}
!228 = distinct !{!228, !229}
!229 = !{!"llvm.loop.unroll.disable"}
!230 = distinct !{!230, !13, !102}
!231 = distinct !{!231, !13}
!232 = !{!45, !11, i64 16}
!233 = distinct !{!233, !13}
!234 = distinct !{!234, !13}
!235 = distinct !{!235, !13}
!236 = !{!123, !6, i64 88}
!237 = distinct !{!237, !13, !102, !103}
!238 = distinct !{!238, !13, !102, !103}
!239 = distinct !{!239, !13, !103, !102}
!240 = distinct !{!240, !13, !102, !103}
!241 = !{!"branch_weights", i32 4, i32 12}
!242 = distinct !{!242, !13, !102, !103}
!243 = distinct !{!243, !13, !103, !102}
!244 = distinct !{!244, !13}
!245 = !{!120, !6, i64 512}
!246 = distinct !{!246, !13}
!247 = distinct !{!247, !229}
!248 = distinct !{!248, !13}
end_hunk_0
