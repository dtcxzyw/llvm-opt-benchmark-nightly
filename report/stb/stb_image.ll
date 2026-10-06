Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__create_png_image:bb.a
stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.d
  %i.l = mul nuw nsw i32 %i.g, %i.e               ; 3 uses
  %i.m = or i32 %i.l, %i.c
  %or.cond.not.i10.i.i = icmp sgt i32 %i.m, -1
  br i1 %or.cond.not.i10.i.i, label %bb.e, label %stbi__malloc_mad3.exit.thread

bb.e:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.n = icmp eq i32 %i.c, 0
  br i1 %i.n, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.e
  %i.o = udiv i32 2147483647, %i.c
  %.not.i.i = icmp sgt i32 %i.l, %i.o
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.e, %stbi__mul2sizes_valid.exit12.i.i
  %i.p = mul nuw nsw i32 %i.l, %i.c
  %i.q = sext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #38 ; 4 uses
  %.not92 = icmp eq ptr %i.r, null
  br i1 %.not92, label %stbi__malloc_mad3.exit.thread, label %.preheader100

.preheader100:                                    ; preds = %stbi__malloc_mad3.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = sext i32 %i.c to i64                     ; 9 uses
  br label %bb.f

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.c, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.u, align 8, !tbaa !39
  br label %.critedge

bb.f:                                             ; preds = %.preheader100, %bb.h
  %indvars.iv112 = phi i64 [ 0, %.preheader100 ], [ %indvars.iv.next113, %bb.h ] ; 5 uses
  %.076106 = phi ptr [ %1, %.preheader100 ], [ %.379, %bb.h ] ; 3 uses
  %.085104 = phi i32 [ %2, %.preheader100 ], [ %.388, %bb.h ] ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !40  ; 4 uses
  %i.ab = xor i32 %i.y, -1
  %i.ac = add i32 %i.w, %i.ab
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  %i.ae = udiv i32 %i.ad, %i.aa                   ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40 ; 4 uses
  %i.al = xor i32 %i.ai, -1
  %i.am = add i32 %i.ag, %i.al
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %i.ao = udiv i32 %i.an, %i.ak                   ; 4 uses
  %i.ap = icmp ule i32 %i.aa, %i.ad
  %i.aq = icmp ule i32 %i.ak, %i.an
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !64
  %i.at = mul i32 %i.ae, %4
  %i.au = mul i32 %i.at, %i.as
  %i.av = add nsw i32 %i.au, 7
  %i.aw = ashr i32 %i.av, 3
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = mul nsw i32 %i.ax, %i.ao                ; 2 uses
  %i.az = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106, i32 noundef %.085104, i32 noundef %3, i32 noundef %i.ae, i32 noundef %i.ao, i32 noundef %4, i32 noundef %5)
  %.not93.not = icmp eq i32 %i.az, 0
  br i1 %.not93.not, label %.thread, label %.preheader99

.preheader99:                                     ; preds = %bb.g
  %i.ba = icmp sgt i32 %i.ao, 0
  %i.bb = icmp sgt i32 %i.ae, 0
  %or.cond107 = and i1 %i.ba, %i.bb
  %.pre115 = load ptr, ptr %i.s, align 8, !tbaa !139 ; 4 uses
  br i1 %or.cond107, label %.preheader.lr.ph.split, label %._crit_edge103.split

.preheader.lr.ph.split:                           ; preds = %.preheader99
  %i.bc = load ptr, ptr %0, align 8, !tbaa !44
  %i.bd = sext i32 %i.aa to i64                   ; 3 uses
  %i.be = sext i32 %i.y to i64                    ; 3 uses
  %i.bf = zext nneg i32 %i.ae to i64              ; 3 uses
  %i.bg = zext nneg i32 %i.ao to i64
  %.pre.pre = load i32, ptr %i.bc, align 8, !tbaa !55
  %factor.op.mul = mul i32 %i.c, %.pre.pre
  %xtraiter = and i64 %i.bf, 1
  %i.bh = icmp eq i32 %i.ae, 1
  %unroll_iter = and i64 %i.bf, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i32 %i.ae to i1
  br label %.preheader

.thread:                                          ; preds = %bb.g
  tail call void @free(ptr noundef %i.r) #37
  br label %.critedge

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv109 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next110, %._crit_edge ] ; 3 uses
  %i.bi = trunc i64 %indvars.iv109 to i32
  %i.bj = mul i32 %i.ak, %i.bi
  %i.bk = add i32 %i.bj, %i.ai
  %.reass = mul i32 %i.bk, %factor.op.mul
  %i.bl = mul nuw nsw i64 %indvars.iv109, %i.bf   ; 3 uses
  %i.bm = zext i32 %.reass to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bm ; 3 uses
  br i1 %i.bh, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bo = mul nsw i64 %indvars.iv, %i.bd
  %i.bp = add nsw i64 %i.bo, %i.be
  %i.bq = mul nsw i64 %i.bp, %i.t
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  %i.bs = add nuw nsw i64 %indvars.iv, %i.bl
  %i.bt = mul nsw i64 %i.bs, %i.t
  %i.bu = getelementptr inbounds i8, ptr %.pre115, i64 %i.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bu, i64 %i.t, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv.next, %i.bd
  %i.bw = add nsw i64 %i.bv, %i.be
  %i.bx = mul nsw i64 %i.bw, %i.t
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 %i.bx
  %i.bz = add nuw nsw i64 %indvars.iv.next, %i.bl
  %i.ca = mul nsw i64 %i.bz, %i.t
  %i.cb = getelementptr inbounds i8, ptr %.pre115, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.cb, i64 %i.t, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !487

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.cc = mul nsw i64 %indvars.iv.epil.init, %i.bd
  %i.cd = add nsw i64 %i.cc, %i.be
  %i.ce = mul nsw i64 %i.cd, %i.t
  %i.cf = getelementptr inbounds i8, ptr %i.bn, i64 %i.ce
  %i.cg = add nuw nsw i64 %indvars.iv.epil.init, %i.bl
  %i.ch = mul nsw i64 %i.cg, %i.t
  %i.ci = getelementptr inbounds i8, ptr %.pre115, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.ci, i64 %i.t, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.cj = icmp samesign ult i64 %indvars.iv.next110, %i.bg
  br i1 %i.cj, label %.preheader, label %._crit_edge103.split, !llvm.loop !488

._crit_edge103.split:                             ; preds = %._crit_edge, %.preheader99
  tail call void @free(ptr noundef %.pre115) #37
  %i.ck = zext i32 %i.ay to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.076106, i64 %i.ck
  %i.cm = sub i32 %.085104, %i.ay
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge103.split, %bb.f
  %.388 = phi i32 [ %.085104, %bb.f ], [ %i.cm, %._crit_edge103.split ]
  %.379 = phi ptr [ %.076106, %bb.f ], [ %i.cl, %._crit_edge103.split ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, 7
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !489

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.s, align 8, !tbaa !139
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.i, %stbi__malloc_mad3.exit.thread, %bb.b
  %.4 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.i ], [ 0, %stbi__malloc_mad3.exit.thread ], [ 0, %.thread ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = mul i32 %i.d, %i.b                       ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 3 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.e, 4
  br i1 %i.k, label %.lr.ph30.epil.preheader, label %.lr.ph30.preheader.new

.lr.ph30.preheader.new:                           ; preds = %.lr.ph30.preheader
  %unroll_iter = and i32 %i.e, -4
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30, %.lr.ph30.preheader.new
  %.029 = phi ptr [ %i.g, %.lr.ph30.preheader.new ], [ %i.ai, %.lr.ph30 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph30.preheader.new ], [ %niter.next.3, %.lr.ph30 ]
  %i.l = load i8, ptr %.029, align 1, !tbaa !37
  %i.m = load i8, ptr %1, align 1, !tbaa !37
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37
  %i.s = load i8, ptr %1, align 1, !tbaa !37
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.029, i64 3
  store i8 %i.u, ptr %i.v, align 1, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37
  %i.y = load i8, ptr %1, align 1, !tbaa !37
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.029, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %.029, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = load i8, ptr %1, align 1, !tbaa !37
  %i.af = icmp ne i8 %i.ad, %i.ae
  %i.ag = sext i1 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.029, i64 7
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph30, !llvm.loop !490

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.127 = phi ptr [ %i.g, %.lr.ph ], [ %i.au, %bb.f ] ; 5 uses
  %.12326 = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.f ]
  %3 = load i8, ptr %.127, align 1, !tbaa !37
  %i.aj = load i8, ptr %1, align 1, !tbaa !37
  %i.ak = icmp eq i8 %3, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %.127, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = load i8, ptr %i.i, align 1, !tbaa !37
  %i.ao = icmp eq i8 %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.127, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = load i8, ptr %i.j, align 1, !tbaa !37
  %i.as = icmp eq i8 %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.127, i64 3
  store i8 0, ptr %i.at, align 1, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.av = add nuw i32 %.12326, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !491

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph30
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph30.epil.preheader

.lr.ph30.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph30.preheader
  %.029.epil.init = phi ptr [ %i.g, %.lr.ph30.preheader ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph30.epil

.lr.ph30.epil:                                    ; preds = %.lr.ph30.epil, %.lr.ph30.epil.preheader
  %.029.epil = phi ptr [ %i.bb, %.lr.ph30.epil ], [ %.029.epil.init, %.lr.ph30.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph30.epil ], [ 0, %.lr.ph30.epil.preheader ]
  %i.aw = load i8, ptr %.029.epil, align 1, !tbaa !37
  %i.ax = load i8, ptr %1, align 1, !tbaa !37
  %i.ay = icmp ne i8 %i.aw, %i.ax
  %i.az = sext i1 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.029.epil, i64 1
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %.029.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph30.epil, !llvm.loop !492

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.unr-lcssa, %.lr.ph30.epil, %.preheader24, %.preheader
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = mul i32 %i.d, %i.b                       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 10 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 25
  br i1 %min.iters.check, label %.lr.ph30.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph30.preheader
  %i.l = add i32 %i.e, -1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = getelementptr i8, ptr %1, i64 2
  %bound0 = icmp ult ptr %i.g, %i.q
  %bound1 = icmp ult ptr %1, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph30.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.r = and i64 %i.k, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.k, %i.t                 ; 3 uses
  %i.u = shl nsw i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = trunc i64 %n.vec to i32
  %i.x = load i16, ptr %1, align 2, !tbaa !74, !alias.scope !500
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %i.g, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.g, i64 %i.y
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ac = icmp ne <4 x i16> %strided.vec, %broadcast.splat
  %i.ad = sext <4 x i1> %i.ac to <4 x i16>        ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.af = getelementptr i8, ptr %i.z, i64 6
  %i.ag = getelementptr i8, ptr %i.aa, i64 10
  %i.ah = getelementptr i8, ptr %i.ab, i64 14
  %i.ai = extractelement <4 x i16> %i.ad, i64 0
  store i16 %i.ai, ptr %i.ae, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %i.aj = extractelement <4 x i16> %i.ad, i64 1
  store i16 %i.aj, ptr %i.af, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %i.ak = extractelement <4 x i16> %i.ad, i64 2
  store i16 %i.ak, ptr %i.ag, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %i.al = extractelement <4 x i16> %i.ad, i64 3
  store i16 %i.al, ptr %i.ah, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %.lr.ph30.preheader42, label %vector.body, !llvm.loop !496

.lr.ph30.preheader42:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph30.preheader
  %.029.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph30.preheader ], [ %i.v, %vector.body ] ; 2 uses
  %.02228.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph30.preheader ], [ %i.w, %vector.body ] ; 4 uses
  %i.an = sub i32 %i.e, %.02228.ph
  %xtraiter = and i32 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader42, %.lr.ph30.prol
  %.029.prol = phi ptr [ %i.at, %.lr.ph30.prol ], [ %.029.ph, %.lr.ph30.preheader42 ] ; 3 uses
  %.02228.prol = phi i32 [ %i.au, %.lr.ph30.prol ], [ %.02228.ph, %.lr.ph30.preheader42 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph30.prol ], [ 0, %.lr.ph30.preheader42 ]
  %i.ao = load i16, ptr %.029.prol, align 2, !tbaa !74
  %i.ap = load i16, ptr %1, align 2, !tbaa !74
  %i.aq = icmp ne i16 %i.ao, %i.ap
  %i.ar = sext i1 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %.029.prol, i64 2
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %.029.prol, i64 4 ; 2 uses
  %i.au = add nuw i32 %.02228.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol, !llvm.loop !497

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader42
  %.029.unr = phi ptr [ %.029.ph, %.lr.ph30.preheader42 ], [ %i.at, %.lr.ph30.prol ]
  %.02228.unr = phi i32 [ %.02228.ph, %.lr.ph30.preheader42 ], [ %i.au, %.lr.ph30.prol ]
  %i.av = sub i32 %.02228.ph, %i.e
  %i.aw = icmp ugt i32 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %.029 = phi ptr [ %i.bu, %.lr.ph30 ], [ %.029.unr, %.lr.ph30.prol.loopexit ] ; 9 uses
  %.02228 = phi i32 [ %i.bv, %.lr.ph30 ], [ %.02228.unr, %.lr.ph30.prol.loopexit ]
  %i.ax = load i16, ptr %.029, align 2, !tbaa !74
  %i.ay = load i16, ptr %1, align 2, !tbaa !74
  %i.az = icmp ne i16 %i.ax, %i.ay
  %i.ba = sext i1 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %.029, i64 2
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !74
  %i.be = load i16, ptr %1, align 2, !tbaa !74
  %i.bf = icmp ne i16 %i.bd, %i.be
  %i.bg = sext i1 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %.029, i64 6
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !74
  %i.bi = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !74
  %i.bk = load i16, ptr %1, align 2, !tbaa !74
  %i.bl = icmp ne i16 %i.bj, %i.bk
  %i.bm = sext i1 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.029, i64 10
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !74
  %i.bq = load i16, ptr %1, align 2, !tbaa !74
  %i.br = icmp ne i16 %i.bp, %i.bq
  %i.bs = sext i1 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %.029, i64 14
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.bv = add nuw i32 %.02228, 4                  ; 2 uses
  %exitcond33.not.3 = icmp eq i32 %i.bv, %i.e
  br i1 %exitcond33.not.3, label %.loopexit, label %.lr.ph30, !llvm.loop !498

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.127 = phi ptr [ %i.g, %.lr.ph ], [ %i.ch, %bb.f ] ; 5 uses
  %.12326 = phi i32 [ 0, %.lr.ph ], [ %i.ci, %bb.f ]
  %3 = load i16, ptr %.127, align 2, !tbaa !74
  %i.bw = load i16, ptr %1, align 2, !tbaa !74
  %i.bx = icmp eq i16 %3, %i.bw
  br i1 %i.bx, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %.127, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !74
  %i.ca = load i16, ptr %i.i, align 2, !tbaa !74
  %i.cb = icmp eq i16 %i.bz, %i.ca
  br i1 %i.cb, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !74
  %i.ce = load i16, ptr %i.j, align 2, !tbaa !74
  %i.cf = icmp eq i16 %i.cd, %i.ce
  br i1 %i.cf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %.127, i64 6
  store i16 0, ptr %i.cg, align 2, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %.127, i64 8
  %i.ci = add nuw i32 %.12326, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ci, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !499

.loopexit:                                        ; preds = %bb.f, %.lr.ph30.prol.loopexit, %.lr.ph30, %.preheader24, %.preheader
  ret i32 1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__expand_png_palette(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = mul i32 %i.d, %i.b                       ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 9 uses
  %i.h = or i32 %i.e, %3
  %or.cond.not.i.i.i = icmp sgt i32 %i.h, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %stbi__malloc_mad2.exit, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.j = udiv i32 2147483647, %3
  %.not11.i.i = icmp sgt i32 %i.e, %i.j
  br i1 %.not11.i.i, label %stbi__malloc_mad2.exit.thread, label %stbi__malloc_mad2.exit

stbi__malloc_mad2.exit:                           ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i
  %i.k = mul nuw nsw i32 %i.e, %3
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef %i.l) #38 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %stbi__malloc_mad2.exit.thread, label %bb.c

stbi__malloc_mad2.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.a, %stbi__malloc_mad2.exit
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.o, align 8, !tbaa !39
  br label %bb.d

bb.c:                                             ; preds = %stbi__malloc_mad2.exit
  %i.p = icmp eq i32 %3, 3
  %.not56 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.c
  br i1 %.not56, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader49
  %wide.trip.count = zext i32 %i.e to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %i.e, 4
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not56, label %.loopexit, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.preheader
  %wide.trip.count62 = zext i32 %i.e to i64       ; 2 uses
  %xtraiter71 = and i64 %wide.trip.count62, 1
  %i.r = icmp eq i32 %i.e, 1
  br i1 %i.r, label %.lr.ph55.epil.preheader, label %.lr.ph55.preheader.new

.lr.ph55.preheader.new:                           ; preds = %.lr.ph55.preheader
  %unroll_iter75 = and i64 %wide.trip.count62, 4294967294
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55, %.lr.ph55.preheader.new
  %indvars.iv59 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %indvars.iv.next60.1, %.lr.ph55 ] ; 3 uses
  %.04553 = phi ptr [ %i.m, %.lr.ph55.preheader.new ], [ %i.as, %.lr.ph55 ] ; 7 uses
  %niter76 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %niter76.next.1, %.lr.ph55 ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37
  store i8 %i.x, ptr %.04553, align 1, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %.04553, i64 1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %.04553, i64 2
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %.04553, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  store i8 %i.al, ptr %i.ae, align 1, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %.04553, i64 4
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.04553, i64 5
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %.04553, i64 6 ; 2 uses
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %niter76.next.1 = add i64 %niter76, 2           ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph55, !llvm.loop !502

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.14651 = phi ptr [ %i.m, %.lr.ph.preheader.new ], [ %i.bx, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load <4 x i8>, ptr %i.ax, align 1, !tbaa !37
  store <4 x i8> %i.ay, ptr %.14651, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %.14651, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !37
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load <4 x i8>, ptr %i.bf, align 1, !tbaa !37
  store <4 x i8> %i.bg, ptr %i.az, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %.14651, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  %i.bo = load <4 x i8>, ptr %i.bn, align 1, !tbaa !37
  store <4 x i8> %i.bo, ptr %i.bh, align 1, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %.14651, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu
  %i.bw = load <4 x i8>, ptr %i.bv, align 1, !tbaa !37
  store <4 x i8> %i.bw, ptr %i.bp, align 1, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %.14651, i64 16 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit69.unr-lcssa, label %.lr.ph, !llvm.loop !503

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph55
  %lcmp.mod73.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod73.not, label %.loopexit, label %.lr.ph55.epil.preheader

.lr.ph55.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55.preheader
  %indvars.iv59.epil.init = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next60.1, %.loopexit.loopexit.unr-lcssa ]
  %.04553.epil.init = phi ptr [ %i.m, %.lr.ph55.preheader ], [ %i.as, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59.epil.init
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !37
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !37
  store i8 %i.cd, ptr %.04553.epil.init, align 1, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !37
  %i.cj = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !37
  br label %.loopexit

.loopexit.loopexit69.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit69.unr-lcssa ]
  %.14651.epil.init = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.bx, %.loopexit.loopexit69.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
end_hunk_0
begin_hunk_1_@stbi__process_gif_raster:bb.a
bb.aq:                                            ; preds = %stbi__get8.exit138
  %i.gu = zext i8 %.0.i137 to i32                 ; 2 uses
  %i.gv = load ptr, ptr %i.bm, align 8, !tbaa !25
  %.not.i139 = icmp eq ptr %i.gv, null
  br i1 %.not.i139, label %.thread.i140, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = ptrtoint ptr %.pre.i143 to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = trunc i64 %i.gy to i32                  ; 2 uses
  %i.ha = icmp sgt i32 %i.gu, %i.gz
  br i1 %i.ha, label %bb.as, label %.thread.i140

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gt, ptr %i.a, align 8, !tbaa !29
  %i.hb = load ptr, ptr %i.fw, align 8, !tbaa !67
  %i.hc = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.hd = sub nsw i32 %i.gu, %i.gz
  tail call void %i.hb(ptr noundef %i.hc, i32 noundef %i.hd) #37, !inline_history !68
  br label %stbi__skip.exit144.backedge

stbi__skip.exit144.backedge:                      ; preds = %bb.as, %.thread.i140
  br label %stbi__skip.exit144, !llvm.loop !539

.thread.i140:                                     ; preds = %bb.aq, %bb.ar
  %i.he = zext i8 %.0.i137 to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %.pre.i143, i64 %i.he
  store ptr %i.hf, ptr %i.a, align 8, !tbaa !29
  br label %stbi__skip.exit144.backedge

stbi__get8.exit138.thread:                        ; preds = %bb.am, %stbi__get8.exit138
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !48
  br label %.thread

bb.at:                                            ; preds = %bb.af
  %.not = icmp sgt i32 %i.ez, %.082
  br i1 %.not, label %.loopexit235, label %bb.au

.loopexit242:                                     ; preds = %bb.l
  %i.hi = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.93, ptr %i.hi, align 8, !tbaa !39
  br label %.thread

bb.au:                                            ; preds = %bb.at
  %i.hj = icmp sgt i32 %.080, -1
  br i1 %i.hj, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hk = icmp sgt i32 %.082, 8191
  br i1 %i.hk, label %.loopexit238, label %bb.aw

.loopexit238:                                     ; preds = %bb.o, %bb.av
  %i.hl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.94, ptr %i.hl, align 8, !tbaa !39
  br label %.thread

bb.aw:                                            ; preds = %bb.av
  %i.hm = sext i32 %.082 to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.hm ; 3 uses
  %i.ho = add nsw i32 %.082, 1
  %i.hp = trunc i32 %.080 to i16
  store i16 %i.hp, ptr %i.hn, align 2, !tbaa !148
  %i.hq = zext nneg i32 %.080 to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ht = load i8, ptr %i.hs, align 2, !tbaa !540
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  store i8 %i.ht, ptr %i.hu, align 2, !tbaa !540
  %i.hv = sext i32 %i.ez to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !540
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !153
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %i.ia = icmp eq i32 %i.ez, %.082
  br i1 %i.ia, label %.loopexit237, label %bb.ay

.loopexit237:                                     ; preds = %bb.n, %bb.ax
  %i.ib = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.95, ptr %i.ib, align 8, !tbaa !39
  br label %.thread

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.183 = phi i32 [ %i.ho, %bb.aw ], [ %.082, %bb.ax ] ; 3 uses
  %i.ic = trunc i32 %i.ez to i16
  tail call void @stbi__out_gif_code(ptr noundef %1, i16 noundef zeroext %i.ic)
  %i.id = and i32 %.183, %.086
  %i.ie = icmp eq i32 %i.id, 0
  %i.if = icmp slt i32 %.183, 4096
  %or.cond = and i1 %i.if, %i.ie                  ; 2 uses
  %i.ig = add nsw i32 %.091, 1                    ; 2 uses
  %notmask = shl nsw i32 -1, %i.ig
  %i.ih = xor i32 %notmask, -1
  %.192 = select i1 %or.cond, i32 %i.ig, i32 %.091
  %.187 = select i1 %or.cond, i32 %i.ih, i32 %.086
  br label %.backedge

.loopexit235:                                     ; preds = %bb.k, %bb.at
  %i.ii = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.95, ptr %i.ii, align 8, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %.loopexit237, %.loopexit238, %.loopexit242, %stbi__get8.exit138.thread, %.loopexit235, %stbi__get8.exit, %stbi__get8.exit124.thread
  %.3108 = phi ptr [ null, %stbi__get8.exit ], [ %i.dx, %stbi__get8.exit124.thread ], [ null, %.loopexit237 ], [ null, %.loopexit238 ], [ null, %.loopexit242 ], [ %i.hh, %stbi__get8.exit138.thread ], [ null, %.loopexit235 ]
  ret ptr %.3108
}

; Function Attrs: nounwind uwtable
define ptr @stbi__gif_load_next(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %.not179 = icmp eq ptr %i.b, null               ; 2 uses
  br i1 %.not179, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @stbi__gif_header(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0)
  %.not166 = icmp eq i32 %i.c, 0
  br i1 %.not166, label %stbi__skip.exit219.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 8, !tbaa !46     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47   ; 4 uses
  %.not24.i = icmp ugt i32 %i.d, 536870911
  br i1 %.not24.i, label %stbi__skip.exit219.thread.sink.split, label %stbi__mul2sizes_valid.exit.thread16.i

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %bb.c
  %i.g = shl nuw nsw i32 %i.d, 2
  %or.cond.not.i10.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i, label %bb.d, label %stbi__skip.exit219.thread.sink.split

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %stbi__mad3sizes_valid.exit, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.d
  %i.i = udiv i32 2147483647, %i.f
  %.not.i = icmp samesign ugt i32 %i.g, %i.i
  br i1 %.not.i, label %stbi__skip.exit219.thread.sink.split, label %stbi__mad3sizes_valid.exit

stbi__mad3sizes_valid.exit:                       ; preds = %stbi__mul2sizes_valid.exit12.i, %bb.d
  %i.j = mul nuw nsw i32 %i.f, %i.d               ; 3 uses
  %i.k = shl nsw i32 %i.j, 2
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef %i.l) #38 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !48
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef %i.l) #38 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !50
  %i.p = zext nneg i32 %i.j to i64                ; 2 uses
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef %i.p) #38 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !49
  %.not168 = icmp eq ptr %i.m, null
  br i1 %.not168, label %stbi__skip.exit219.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %stbi__mad3sizes_valid.exit
  %.not169 = icmp eq ptr %i.n, null
  %.not170 = icmp eq ptr %i.q, null
  %or.cond180 = or i1 %.not169, %.not170
  br i1 %or.cond180, label %stbi__skip.exit219.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.p, i1 false)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !545
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = load i32, ptr %1, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  %i.z = mul i32 %i.y, %i.w                       ; 8 uses
  %i.aa = icmp eq i32 %i.v, 3
  %i.ab = icmp eq ptr %4, null
  %or.cond = and i1 %i.ab, %i.aa
  %spec.store.select = select i1 %or.cond, i32 2, i32 %i.v
  switch i32 %spec.store.select, label %.loopexit [
    i32 3, label %.preheader247
    i32 2, label %.preheader248
  ]

.preheader248:                                    ; preds = %bb.g
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader248
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.z, 1
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.m

.preheader247:                                    ; preds = %bb.g
  %i.ag = icmp sgt i32 %i.z, 0
  br i1 %i.ag, label %.lr.ph257, label %.loopexit

.lr.ph257:                                        ; preds = %.preheader247
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %wide.trip.count268 = zext nneg i32 %i.z to i64 ; 2 uses
  %xtraiter330 = and i64 %wide.trip.count268, 1
  %i.ai = icmp eq i32 %i.z, 1
  br i1 %i.ai, label %.epil.preheader329, label %.lr.ph257.new

.lr.ph257.new:                                    ; preds = %.lr.ph257
  %unroll_iter333 = and i64 %wide.trip.count268, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph257.new
  %indvars.iv265 = phi i64 [ 0, %.lr.ph257.new ], [ %indvars.iv.next266.1, %bb.l ] ; 4 uses
  %niter334 = phi i64 [ 0, %.lr.ph257.new ], [ %niter334.next.1, %bb.l ]
  %5 = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv265
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %.not165 = icmp eq i8 %i.ak, 0
  br i1 %.not165, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.am = shl nuw nsw i64 %indvars.iv265, 2       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.am
  %i.ap = load i32, ptr %i.ao, align 1
  store i32 %i.ap, ptr %i.an, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next266 = or disjoint i64 %indvars.iv265, 1 ; 2 uses
  %6 = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.next266
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %.not165.1 = icmp eq i8 %i.ar, 0
  br i1 %.not165.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.at = shl nuw nsw i64 %indvars.iv.next266, 2  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 1
  store i32 %i.aw, ptr %i.au, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next266.1 = add nuw nsw i64 %indvars.iv265, 2 ; 2 uses
  %niter334.next.1 = add i64 %niter334, 2         ; 2 uses
  %niter334.ncmp.1 = icmp eq i64 %niter334.next.1, %unroll_iter333
  br i1 %niter334.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !541

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 4 uses
  %niter.a = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %7 = load ptr, ptr %i.ad, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.ba = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 1
  store i32 %i.be, ptr %i.bb, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %8 = load ptr, ptr %i.ad, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.next
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !37
  %.not.1 = icmp eq i8 %i.bg, 0
  br i1 %.not.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.bi = shl nuw nsw i64 %indvars.iv.next, 2     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  %i.bm = load i32, ptr %i.bl, align 1
  store i32 %i.bm, ptr %i.bj, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter.a, 2             ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit327.unr-lcssa, label %bb.m, !llvm.loop !542

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.loopexit, label %.epil.preheader329

.epil.preheader329:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph257
  %indvars.iv265.epil.init = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next266.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod332 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod332)
  %9 = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv265.epil.init
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37
  %.not165.epil = icmp eq i8 %i.bo, 0
  br i1 %.not165.epil, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.epil.preheader329
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.bq = shl nuw nsw i64 %indvars.iv265.epil.init, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 %i.bq
  %i.bt = load i32, ptr %i.bs, align 1
  store i32 %i.bt, ptr %i.br, align 1
  br label %.loopexit

.loopexit.loopexit327.unr-lcssa:                  ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit327.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit327.unr-lcssa ] ; 2 uses
  %lcmp.mod328 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod328)
  %10 = load ptr, ptr %i.ad, align 8, !tbaa !49
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 %indvars.iv.epil.init
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37
  %.not.epil = icmp eq i8 %i.bv, 0
  br i1 %.not.epil, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.epil.preheader
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.bx = shl nuw nsw i64 %indvars.iv.epil.init, 2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  %i.cb = load i32, ptr %i.ca, align 1
  store i32 %i.cb, ptr %i.by, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit327.unr-lcssa, %bb.s, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.r, %.epil.preheader329, %.preheader248, %.preheader247, %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !50
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.cf = load i32, ptr %1, align 8, !tbaa !46
  %i.cg = shl nsw i32 %i.cf, 2
  %i.ch = load i32, ptr %i.x, align 4, !tbaa !47
  %i.ci = mul nsw i32 %i.cg, %i.ch
  %i.cj = sext i32 %i.ci to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %i.ce, i64 %i.cj, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.pre275.a = load i32, ptr %1, align 8, !tbaa !46
  %.pre277.a = load i32, ptr %i.x, align 4, !tbaa !47
  %.pre280 = mul nsw i32 %.pre277.a, %.pre275.a
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.f
  %.pre-phi = phi i32 [ %.pre280, %.loopexit ], [ %i.j, %bb.f ]
  %i.ck = phi ptr [ %.pre.a, %.loopexit ], [ %i.q, %bb.f ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cn = sext i32 %.pre-phi to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ck, i8 0, i64 %i.cn, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 33 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 12 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 28 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 18 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 34920
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  br label %stbi__skip.exit219

stbi__skip.exit219:                               ; preds = %stbi__skip.exit219.backedge, %bb.t
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !29 ; 3 uses
  %i.dd = load ptr, ptr %i.cp, align 8, !tbaa !31 ; 2 uses
  %i.de = icmp ult ptr %i.dc, %i.dd
  br i1 %i.de, label %bb.u, label %bb.v

bb.u:                                             ; preds = %stbi__skip.exit219
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  store ptr %i.df, ptr %i.co, align 8, !tbaa !29
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.v:                                             ; preds = %stbi__skip.exit219
  %i.dh = load i32, ptr %i.cq, align 8, !tbaa !26
  %.not.i181 = icmp eq i32 %i.dh, 0
  br i1 %.not.i181, label %stbi__skip.exit219.thread.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !34
  %i.dk = load i32, ptr %i.cu, align 4, !tbaa !35
  %i.dl = tail call i32 %i.di(ptr noundef %i.dj, ptr noundef nonnull %i.ct, i32 noundef %i.dk) #37, !inline_history !65 ; 2 uses
  %i.dm = load ptr, ptr %i.co, align 8, !tbaa !29
  %i.dn = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = load i32, ptr %i.cw, align 8, !tbaa !27
  %i.dt = add nsw i32 %i.ds, %i.dr
  store i32 %i.dt, ptr %i.cw, align 8, !tbaa !27
  %i.du = icmp eq i32 %i.dl, 0
  br i1 %i.du, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cq, align 8, !tbaa !26
  store i8 0, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.y:                                             ; preds = %bb.w
  %i.dv = sext i32 %i.dl to i64
  %i.dw = getelementptr inbounds i8, ptr %i.ct, i64 %i.dv
  %.pre.i = load i8, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.y, %bb.x
  %i.dx = phi i8 [ 0, %bb.x ], [ %.pre.i, %bb.y ]
  %.sink.i.i = phi ptr [ %i.cx, %bb.x ], [ %i.dw, %bb.y ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.cp, align 8, !tbaa !31
  store ptr %i.cx, ptr %i.co, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.u, %stbi__refill_buffer.exit.i
  %i.dy = phi ptr [ %i.dd, %bb.u ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ] ; 2 uses
  %i.dz = phi ptr [ %i.df, %bb.u ], [ %i.cx, %stbi__refill_buffer.exit.i ] ; 3 uses
  %.0.i = phi i8 [ %i.dg, %bb.u ], [ %i.dx, %stbi__refill_buffer.exit.i ]
  switch i8 %.0.i, label %stbi__skip.exit219.thread.sink.split [
    i8 44, label %bb.z
    i8 33, label %bb.at
    i8 59, label %stbi__skip.exit219.thread
  ]

bb.z:                                             ; preds = %stbi__get8.exit
  %i.ea = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 2 uses
  %i.eb = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 2 uses
  %i.ec = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 2 uses
  %i.ed = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.ee = add nuw nsw i32 %i.ec, %i.ea            ; 2 uses
  %i.ef = load i32, ptr %1, align 8, !tbaa !46    ; 2 uses
  %i.eg = icmp sgt i32 %i.ee, %i.ef
  br i1 %i.eg, label %stbi__skip.exit219.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = add nuw nsw i32 %i.ed, %i.eb            ; 2 uses
  %i.ei = load i32, ptr %i.cm, align 4, !tbaa !47
  %i.ej = icmp sgt i32 %i.eh, %i.ei
  br i1 %i.ej, label %stbi__skip.exit219.thread.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ek = shl nsw i32 %i.ef, 2                    ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 34916 ; 2 uses
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !158
  %i.em = shl nuw nsw i32 %i.ea, 2                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 34892
  store i32 %i.em, ptr %i.en, align 4, !tbaa !155
  %i.eo = mul nsw i32 %i.ek, %i.eb                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 34896
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !159
  %i.eq = shl nuw nsw i32 %i.ee, 2
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 34900
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !154
  %i.es = mul i32 %i.ek, %i.eh                    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 34904
  store i32 %i.es, ptr %i.et, align 8, !tbaa !150
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 34908
  store i32 %i.em, ptr %i.eu, align 4, !tbaa !151
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 34912
  %i.ew = icmp eq i32 %i.ec, 0
  %spec.store.select244 = select i1 %i.ew, i32 %i.es, i32 %i.eo
  store i32 %spec.store.select244, ptr %i.ev, align 8, !tbaa !149
  %i.ex = load ptr, ptr %i.co, align 8, !tbaa !29 ; 3 uses
  %i.ey = load ptr, ptr %i.cp, align 8, !tbaa !31
  %i.ez = icmp ult ptr %i.ex, %i.ey
  br i1 %i.ez, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  store ptr %i.fa, ptr %i.co, align 8, !tbaa !29
  %i.fb = load i8, ptr %i.ex, align 1, !tbaa !37
  br label %stbi__get8.exit187

bb.ad:                                            ; preds = %bb.ab
  %i.fc = load i32, ptr %i.cq, align 8, !tbaa !26
  %.not.i182 = icmp eq i32 %i.fc, 0
  br i1 %.not.i182, label %stbi__get8.exit187.thread, label %bb.ae

stbi__get8.exit187.thread:                        ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 34888
  store i32 0, ptr %i.fd, align 8, !tbaa !546
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.fe = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.ff = load ptr, ptr %i.cs, align 8, !tbaa !34
  %i.fg = load i32, ptr %i.cu, align 4, !tbaa !35
  %i.fh = tail call i32 %i.fe(ptr noundef %i.ff, ptr noundef nonnull %i.ct, i32 noundef %i.fg) #37, !inline_history !65 ; 2 uses
  %i.fi = load ptr, ptr %i.co, align 8, !tbaa !29
  %i.fj = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = load i32, ptr %i.cw, align 8, !tbaa !27
  %i.fp = add nsw i32 %i.fo, %i.fn
  store i32 %i.fp, ptr %i.cw, align 8, !tbaa !27
  %i.fq = icmp eq i32 %i.fh, 0
  br i1 %i.fq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cq, align 8, !tbaa !26
  store i8 0, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i184

bb.ag:                                            ; preds = %bb.ae
  %i.fr = sext i32 %i.fh to i64
  %i.fs = getelementptr inbounds i8, ptr %i.ct, i64 %i.fr
  %.pre.i183 = load i8, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i184

stbi__refill_buffer.exit.i184:                    ; preds = %bb.ag, %bb.af
  %i.ft = phi i8 [ 0, %bb.af ], [ %.pre.i183, %bb.ag ]
  %.sink.i.i185 = phi ptr [ %i.cx, %bb.af ], [ %i.fs, %bb.ag ]
  store ptr %.sink.i.i185, ptr %i.cp, align 8, !tbaa !31
  store ptr %i.cx, ptr %i.co, align 8, !tbaa !29
  %.pre278.pre = load i32, ptr %i.el, align 4, !tbaa !158
  br label %stbi__get8.exit187

stbi__get8.exit187:                               ; preds = %bb.ac, %stbi__refill_buffer.exit.i184
  %.pre278 = phi i32 [ %i.ek, %bb.ac ], [ %.pre278.pre, %stbi__refill_buffer.exit.i184 ] ; 2 uses
  %.0.i186 = phi i8 [ %i.fb, %bb.ac ], [ %i.ft, %stbi__refill_buffer.exit.i184 ]
  %i.fu = zext i8 %.0.i186 to i32                 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 34888
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !546
  %i.fw = and i32 %i.fu, 64
  %.not173 = icmp eq i32 %i.fw, 0                 ; 2 uses
  %i.fx = shl nsw i32 %.pre278, 3
  %spec.select = select i1 %.not173, i32 %.pre278, i32 %i.fx
  %spec.select323 = select i1 %.not173, i32 0, i32 3
  br label %bb.ah

bb.ah:                                            ; preds = %stbi__get8.exit187, %stbi__get8.exit187.thread
  %.sink318 = phi i32 [ %spec.select, %stbi__get8.exit187 ], [ %i.ek, %stbi__get8.exit187.thread ]
  %.sink = phi i32 [ %spec.select323, %stbi__get8.exit187 ], [ 0, %stbi__get8.exit187.thread ]
  %i.fy = phi i32 [ %i.fu, %stbi__get8.exit187 ], [ 0, %stbi__get8.exit187.thread ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 34884
  store i32 %.sink318, ptr %i.fz, align 4, !tbaa !156
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 34880
  store i32 %.sink, ptr %i.ga, align 8, !tbaa !157
  %.not174 = icmp samesign ult i32 %i.fy, 128
  br i1 %.not174, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 1076 ; 2 uses
  %i.gc = and i32 %i.fy, 7
  %i.gd = shl nuw nsw i32 2, %i.gc
  %i.ge = load i32, ptr %i.cz, align 8, !tbaa !545
  %i.gf = and i32 %i.ge, 1
  %.not176 = icmp eq i32 %i.gf, 0
  br i1 %.not176, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gg = load i32, ptr %i.db, align 4, !tbaa !146
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.gh = phi i32 [ %i.gg, %bb.aj ], [ -1, %bb.ai ]
  tail call void @stbi__gif_parse_colortable(ptr noundef nonnull %0, ptr noundef nonnull %i.gb, i32 noundef %i.gd, i32 noundef %i.gh)
  br label %bb.an

bb.al:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !144
  %i.gk = and i32 %i.gj, 128
  %.not175 = icmp eq i32 %i.gk, 0
  br i1 %.not175, label %stbi__skip.exit219.thread.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 52
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.sink320 = phi ptr [ %i.gl, %bb.am ], [ %i.gb, %bb.ak ]
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 34872
  store ptr %.sink320, ptr %i.gm, align 8, !tbaa !152
  %i.gn = tail call ptr @stbi__process_gif_raster(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 4 uses
  %.not177 = icmp eq ptr %i.gn, null
  br i1 %.not177, label %stbi__skip.exit219.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.go = load i32, ptr %1, align 8, !tbaa !46
  %i.gp = load i32, ptr %i.cm, align 4, !tbaa !47
  %i.gq = mul i32 %i.gp, %i.go                    ; 2 uses
  br i1 %.not179, label %bb.ap, label %stbi__skip.exit219.thread

bb.ap:                                            ; preds = %bb.ao
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !145
  %i.gt = icmp sgt i32 %i.gs, 0
  %i.gu = icmp sgt i32 %i.gq, 0
  %or.cond261 = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %or.cond261, label %.lr.ph259, label %stbi__skip.exit219.thread

.lr.ph259:                                        ; preds = %bb.ap
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %wide.trip.count273 = zext nneg i32 %i.gq to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph259, %bb.as
  %indvars.iv270 = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next271, %bb.as ] ; 3 uses
  %11 = load ptr, ptr %i.cl, align 8, !tbaa !49
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 %indvars.iv270
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !37
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gz = load i32, ptr %i.gr, align 4, !tbaa !145
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 3
  store i8 -1, ptr %i.hc, align 1, !tbaa !37
  %i.hd = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.he = shl nuw nsw i64 %indvars.iv270, 2
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.he
  %i.hg = load i32, ptr %i.gr, align 4, !tbaa !145
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4
  store i32 %i.hj, ptr %i.hf, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  br i1 %exitcond274.not, label %stbi__skip.exit219.thread, label %bb.aq, !llvm.loop !543

bb.at:                                            ; preds = %stbi__get8.exit
  %i.hk = icmp ult ptr %i.dz, %i.dy
  br i1 %i.hk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 2 uses
  store ptr %i.hl, ptr %i.co, align 8, !tbaa !29
  %i.hm = load i8, ptr %i.dz, align 1, !tbaa !37
  br label %stbi__get8.exit193

bb.av:                                            ; preds = %bb.at
  %i.hn = load i32, ptr %i.cq, align 8, !tbaa !26
  %.not.i188 = icmp eq i32 %i.hn, 0
  br i1 %.not.i188, label %stbi__get8.exit193.thread.preheader, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ho = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.hp = load ptr, ptr %i.cs, align 8, !tbaa !34
  %i.hq = load i32, ptr %i.cu, align 4, !tbaa !35
  %i.hr = tail call i32 %i.ho(ptr noundef %i.hp, ptr noundef nonnull %i.ct, i32 noundef %i.hq) #37, !inline_history !65 ; 2 uses
  %i.hs = load ptr, ptr %i.co, align 8, !tbaa !29
  %i.ht = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = load i32, ptr %i.cw, align 8, !tbaa !27
  %i.hz = add nsw i32 %i.hy, %i.hx
  store i32 %i.hz, ptr %i.cw, align 8, !tbaa !27
  %i.ia = icmp eq i32 %i.hr, 0
  br i1 %i.ia, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.cq, align 8, !tbaa !26
  store i8 0, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i190

bb.ay:                                            ; preds = %bb.aw
  %i.ib = sext i32 %i.hr to i64
  %i.ic = getelementptr inbounds i8, ptr %i.ct, i64 %i.ib
  %.pre.i189 = load i8, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i190

stbi__refill_buffer.exit.i190:                    ; preds = %bb.ay, %bb.ax
  %i.id = phi i8 [ 0, %bb.ax ], [ %.pre.i189, %bb.ay ]
  %.sink.i.i191 = phi ptr [ %i.cx, %bb.ax ], [ %i.ic, %bb.ay ] ; 2 uses
  store ptr %.sink.i.i191, ptr %i.cp, align 8, !tbaa !31
  store ptr %i.cx, ptr %i.co, align 8, !tbaa !29
  br label %stbi__get8.exit193

stbi__get8.exit193:                               ; preds = %bb.au, %stbi__refill_buffer.exit.i190
  %i.ie = phi ptr [ %i.dy, %bb.au ], [ %.sink.i.i191, %stbi__refill_buffer.exit.i190 ] ; 2 uses
  %i.if = phi ptr [ %i.hl, %bb.au ], [ %i.cx, %stbi__refill_buffer.exit.i190 ] ; 3 uses
  %.0.i192 = phi i8 [ %i.hm, %bb.au ], [ %i.id, %stbi__refill_buffer.exit.i190 ]
  %i.ig = icmp eq i8 %.0.i192, -7
  br i1 %i.ig, label %bb.az, label %stbi__get8.exit193.thread.preheader

stbi__get8.exit193.thread.preheader:              ; preds = %bb.av, %stbi__get8.exit211, %stbi__skip.exit, %stbi__get8.exit193
  br label %stbi__get8.exit193.thread

bb.az:                                            ; preds = %stbi__get8.exit193
  %i.ih = icmp ult ptr %i.if, %i.ie
  br i1 %i.ih, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 1 ; 2 uses
  store ptr %i.ii, ptr %i.co, align 8, !tbaa !29
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !37
  br label %stbi__get8.exit199

bb.bb:                                            ; preds = %bb.az
  %i.ik = load i32, ptr %i.cq, align 8, !tbaa !26
  %.not.i194 = icmp eq i32 %i.ik, 0
  br i1 %.not.i194, label %stbi__skip.exit219.backedge, label %bb.bc

stbi__skip.exit219.backedge:                      ; preds = %stbi__get8.exit225, %bb.cb, %bb.bb, %.thread.i215, %bb.bz, %bb.bw
  br label %stbi__skip.exit219

bb.bc:                                            ; preds = %bb.bb
  %i.il = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.im = load ptr, ptr %i.cs, align 8, !tbaa !34
  %i.in = load i32, ptr %i.cu, align 4, !tbaa !35
  %i.io = tail call i32 %i.il(ptr noundef %i.im, ptr noundef nonnull %i.ct, i32 noundef %i.in) #37, !inline_history !65 ; 2 uses
  %i.ip = load ptr, ptr %i.co, align 8, !tbaa !29
  %i.iq = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = trunc i64 %i.it to i32
  %i.iv = load i32, ptr %i.cw, align 8, !tbaa !27
  %i.iw = add nsw i32 %i.iv, %i.iu
  store i32 %i.iw, ptr %i.cw, align 8, !tbaa !27
  %i.ix = icmp eq i32 %i.io, 0
  br i1 %i.ix, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.cq, align 8, !tbaa !26
  store i8 0, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i196

bb.be:                                            ; preds = %bb.bc
  %i.iy = sext i32 %i.io to i64
  %i.iz = getelementptr inbounds i8, ptr %i.ct, i64 %i.iy
  %.pre.i195 = load i8, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i196

stbi__refill_buffer.exit.i196:                    ; preds = %bb.be, %bb.bd
  %i.ja = phi i8 [ 0, %bb.bd ], [ %.pre.i195, %bb.be ]
  %.sink.i.i197 = phi ptr [ %i.cx, %bb.bd ], [ %i.iz, %bb.be ] ; 2 uses
  store ptr %.sink.i.i197, ptr %i.cp, align 8, !tbaa !31
  store ptr %i.cx, ptr %i.co, align 8, !tbaa !29
  br label %stbi__get8.exit199

stbi__get8.exit199:                               ; preds = %bb.ba, %stbi__refill_buffer.exit.i196
  %i.jb = phi ptr [ %i.ii, %bb.ba ], [ %i.cx, %stbi__refill_buffer.exit.i196 ] ; 5 uses
  %i.jc = phi ptr [ %i.ie, %bb.ba ], [ %.sink.i.i197, %stbi__refill_buffer.exit.i196 ] ; 3 uses
  %.0.i198 = phi i8 [ %i.ij, %bb.ba ], [ %i.ja, %stbi__refill_buffer.exit.i196 ] ; 4 uses
  %i.jd = icmp eq i8 %.0.i198, 4
  br i1 %i.jd, label %bb.bf, label %bb.bw

bb.bf:                                            ; preds = %stbi__get8.exit199
  %i.je = icmp ult ptr %i.jb, %i.jc
  br i1 %i.je, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  store ptr %i.jf, ptr %i.co, align 8, !tbaa !29
  %i.jg = load i8, ptr %i.jb, align 1, !tbaa !37
  br label %stbi__get8.exit205

bb.bh:                                            ; preds = %bb.bf
  %i.jh = load i32, ptr %i.cq, align 8, !tbaa !26
  %.not.i200 = icmp eq i32 %i.jh, 0
  br i1 %.not.i200, label %stbi__get8.exit205, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ji = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.jj = load ptr, ptr %i.cs, align 8, !tbaa !34
  %i.jk = load i32, ptr %i.cu, align 4, !tbaa !35
  %i.jl = tail call i32 %i.ji(ptr noundef %i.jj, ptr noundef nonnull %i.ct, i32 noundef %i.jk) #37, !inline_history !65 ; 2 uses
  %i.jm = load ptr, ptr %i.co, align 8, !tbaa !29
  %i.jn = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = trunc i64 %i.jq to i32
  %i.js = load i32, ptr %i.cw, align 8, !tbaa !27
  %i.jt = add nsw i32 %i.js, %i.jr
  store i32 %i.jt, ptr %i.cw, align 8, !tbaa !27
  %i.ju = icmp eq i32 %i.jl, 0
  br i1 %i.ju, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.cq, align 8, !tbaa !26
  store i8 0, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i202

bb.bk:                                            ; preds = %bb.bi
  %i.jv = sext i32 %i.jl to i64
  %i.jw = getelementptr inbounds i8, ptr %i.ct, i64 %i.jv
  %.pre.i201 = load i8, ptr %i.ct, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i202

stbi__refill_buffer.exit.i202:                    ; preds = %bb.bk, %bb.bj
  %i.jx = phi i8 [ 0, %bb.bj ], [ %.pre.i201, %bb.bk ]
  %.sink.i.i203 = phi ptr [ %i.cx, %bb.bj ], [ %i.jw, %bb.bk ]
  store ptr %.sink.i.i203, ptr %i.cp, align 8, !tbaa !31
  store ptr %i.cx, ptr %i.co, align 8, !tbaa !29
  br label %stbi__get8.exit205

stbi__get8.exit205:                               ; preds = %bb.bg, %bb.bh, %stbi__refill_buffer.exit.i202
  %.0.i204 = phi i8 [ %i.jg, %bb.bg ], [ %i.jx, %stbi__refill_buffer.exit.i202 ], [ 0, %bb.bh ]
  %i.jy = zext i8 %.0.i204 to i32
  store i32 %i.jy, ptr %i.cz, align 8, !tbaa !545
  %i.jz = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.ka = mul nuw nsw i32 %i.jz, 10
  store i32 %i.ka, ptr %i.da, align 8, !tbaa !92
  %i.kb = load i32, ptr %i.db, align 4, !tbaa !146 ; 2 uses
  %i.kc = icmp sgt i32 %i.kb, -1
  br i1 %i.kc, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %stbi__get8.exit205
  %i.kd = zext nneg i32 %i.kb to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 55
  store i8 -1, ptr %i.kf, align 1, !tbaa !37
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %stbi__get8.exit205
  %i.kg = load i32, ptr %i.cz, align 8, !tbaa !545
  %i.kh = and i32 %i.kg, 1
  %.not171 = icmp eq i32 %i.kh, 0
  br i1 %.not171, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ki = load ptr, ptr %i.co, align 8, !tbaa !29 ; 3 uses
end_hunk_1
