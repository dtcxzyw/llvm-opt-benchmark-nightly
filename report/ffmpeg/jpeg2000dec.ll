Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@get_cox:bb.a

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !63
  %i.bk = and i8 %i.bj, 1
  %.not79 = icmp eq i8 %i.bk, 0
  br i1 %.not79, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.bl = load i32, ptr %1, align 4, !tbaa !127   ; 3 uses
  %.not8190 = icmp sgt i32 %i.bl, 0
  br i1 %.not8190, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 50 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bl to i64
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp slt i64 %i.bs, 1
  br i1 %i.bt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !42
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !43
  %i.bw = zext i8 %i.bv to i32
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0.i.peel = phi i32 [ 0, %bb.r ], [ %i.bw, %bb.q ] ; 2 uses
  %i.bx = trunc nuw i32 %.0.i.peel to i8
  %i.by = and i8 %i.bx, 15
  store i8 %i.by, ptr %i.bm, align 4, !tbaa !43
  %i.bz = lshr i32 %.0.i.peel, 4
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  store i8 %i.ca, ptr %i.bn, align 2, !tbaa !43
  %exitcond.peel.not = icmp eq i32 %i.bl, 1
  br i1 %exitcond.peel.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %bb.s, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 1, %bb.s ] ; 5 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp slt i64 %i.cf, 1
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.peel.next
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !38
  br label %bb.v

bb.u:                                             ; preds = %.peel.next
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !42
  %i.ci = load i8, ptr %i.cc, align 1, !tbaa !43
  %i.cj = zext i8 %i.ci to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i = phi i32 [ 0, %bb.t ], [ %i.cj, %bb.u ]  ; 3 uses
  %i.ck = trunc nuw i32 %.0.i to i8
  %i.cl = and i8 %i.ck, 15                        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !43
  %i.cn = lshr i32 %.0.i, 4                       ; 3 uses
  %i.co = trunc nuw nsw i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !43
  %i.cq = icmp eq i8 %i.cl, 0
  %i.cr = icmp eq i32 %i.cn, 0
  %or.cond84 = or i1 %i.cq, %i.cr
  br i1 %or.cond84, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.cu = load ptr, ptr %i.bc, align 8, !tbaa !37
  %i.cv = and i32 %.0.i, 15
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cu, i32 noundef 16, ptr noundef nonnull @.str.60, i32 noundef %i.cv, i32 noundef %i.cn) #10
  store i8 1, ptr %i.ct, align 1, !tbaa !43
  store i8 1, ptr %i.cs, align 1, !tbaa !43
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.peel.next, !llvm.loop !263

bb.x:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.cw, i8 15, i64 68, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.s, %.preheader, %bb.x, %.loopexit, %bb.h, %bb.f, %bb.d, %bb.b
  %.1 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ -22, %bb.f ], [ -1094995529, %bb.h ], [ -1094995529, %.loopexit ], [ 0, %bb.x ], [ 0, %.preheader ], [ 0, %bb.s ], [ 0, %bb.w ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @get_qcx(ptr nofree noundef captures(none) %0, i32 noundef range(i32 1, -2147483648) %1, ptr nofree noundef captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !42
  %i.k = load i8, ptr %i.d, align 1, !tbaa !43    ; 2 uses
  %i.l = lshr i8 %i.k, 5
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 299
  store i8 %i.l, ptr %i.m, align 1, !tbaa !99
  %i.n = and i8 %i.k, 31                          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 298
  store i8 %i.n, ptr %i.o, align 2, !tbaa !273
  switch i8 %i.n, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %1, -3                       ; 4 uses
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = sub i64 %i.e, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp sgt i32 %i.p, %i.s
  %i.u = icmp samesign ugt i32 %1, 102
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %.loopexit, label %.preheader60

.preheader60:                                     ; preds = %bb.c
  %i.v = icmp samesign ugt i32 %1, 3
  br i1 %i.v, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader60
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %i.p, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv70 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next71.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.a, align 8, !tbaa !42
  %i.z = load i8, ptr %i.x, align 1, !tbaa !43
  %i.aa = lshr i8 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv70
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !43
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !42
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !43
  %i.af = lshr i8 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !43
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit97.unr-lcssa, label %.lr.ph, !llvm.loop !266

bb.d:                                             ; preds = %bb.b
  %i.ai = ptrtoint ptr %i.j to i64
  %i.aj = sub i64 %i.e, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp slt i32 %i.ak, 2
  br i1 %i.al, label %.loopexit, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store ptr %i.am, ptr %i.a, align 8, !tbaa !42
  %i.an = load i16, ptr %i.j, align 1, !tbaa !43
  %i.ao = tail call i16 @llvm.bswap.i16(i16 %i.an) ; 2 uses
  %i.ap = lshr i16 %i.ao, 11                      ; 3 uses
  %i.aq = trunc nuw nsw i16 %i.ap to i8
  store i8 %i.aq, ptr %2, align 2, !tbaa !43
  %i.ar = and i16 %i.ao, 2047
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 16 uses
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !61
  %i.at = getelementptr i8, ptr %2, i64 1         ; 2 uses
  %i.au = getelementptr i8, ptr %2, i64 99        ; 2 uses
  %i.av = getelementptr i8, ptr %2, i64 102       ; 2 uses
  %i.aw = getelementptr i8, ptr %2, i64 298
  %bound0 = icmp ult ptr %i.at, %i.aw
  %bound1 = icmp ult ptr %i.av, %i.au
  %found.conflict = and i1 %bound0, %bound1
  %bound092 = icmp ult ptr %i.at, %i.av
  %bound193 = icmp ult ptr %i.as, %i.au
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx = or i1 %found.conflict, %found.conflict94
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 12 uses
  %3 = add nsw <8 x i16> %broadcast.splat, <i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -2, i16 -2>
  %4 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %3, <8 x i16> zeroinitializer)
  %5 = trunc nuw nsw <8 x i16> %4 to <8 x i8>
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store <8 x i8> %5, ptr %6, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %7 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94 = insertelement <8 x i16> poison, i16 %7, i64 0
  %broadcast.splat95 = shufflevector <8 x i16> %broadcast.splatinsert94, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 102
  store <8 x i16> %broadcast.splat95, ptr %i.ax, align 2, !tbaa !61, !alias.scope !277
  %i.ay = add nsw <8 x i16> %broadcast.splat, <i16 -2, i16 -3, i16 -3, i16 -3, i16 -4, i16 -4, i16 -4, i16 -5>
  %i.az = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ay, <8 x i16> zeroinitializer)
  %i.ba = trunc nuw nsw <8 x i16> %i.az to <8 x i8>
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 9
  store <8 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %8 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.1 = insertelement <8 x i16> poison, i16 %8, i64 0
  %broadcast.splat95.1 = shufflevector <8 x i16> %broadcast.splatinsert94.1, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 118
  store <8 x i16> %broadcast.splat95.1, ptr %i.bc, align 2, !tbaa !61, !alias.scope !277
  %i.bd = add nsw <8 x i16> %broadcast.splat, <i16 -5, i16 -5, i16 -6, i16 -6, i16 -6, i16 -7, i16 -7, i16 -7>
  %i.be = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bd, <8 x i16> zeroinitializer)
  %i.bf = trunc nuw nsw <8 x i16> %i.be to <8 x i8>
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 17
  store <8 x i8> %i.bf, ptr %i.bg, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %9 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.2 = insertelement <8 x i16> poison, i16 %9, i64 0
  %broadcast.splat95.2 = shufflevector <8 x i16> %broadcast.splatinsert94.2, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 134
  store <8 x i16> %broadcast.splat95.2, ptr %i.bh, align 2, !tbaa !61, !alias.scope !277
  %i.bi = add nsw <8 x i16> %broadcast.splat, <i16 -8, i16 -8, i16 -8, i16 -9, i16 -9, i16 -9, i16 -10, i16 -10>
  %i.bj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bi, <8 x i16> zeroinitializer)
  %i.bk = trunc nuw nsw <8 x i16> %i.bj to <8 x i8>
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 25
  store <8 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %10 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.3 = insertelement <8 x i16> poison, i16 %10, i64 0
  %broadcast.splat95.3 = shufflevector <8 x i16> %broadcast.splatinsert94.3, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 150
  store <8 x i16> %broadcast.splat95.3, ptr %i.bm, align 2, !tbaa !61, !alias.scope !277
  %i.bn = add nsw <8 x i16> %broadcast.splat, <i16 -10, i16 -11, i16 -11, i16 -11, i16 -12, i16 -12, i16 -12, i16 -13>
  %i.bo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bn, <8 x i16> zeroinitializer)
  %i.bp = trunc nuw nsw <8 x i16> %i.bo to <8 x i8>
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 33
  store <8 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %11 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.4 = insertelement <8 x i16> poison, i16 %11, i64 0
  %broadcast.splat95.4 = shufflevector <8 x i16> %broadcast.splatinsert94.4, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 166
  store <8 x i16> %broadcast.splat95.4, ptr %i.br, align 2, !tbaa !61, !alias.scope !277
  %i.bs = add nsw <8 x i16> %broadcast.splat, <i16 -13, i16 -13, i16 -14, i16 -14, i16 -14, i16 -15, i16 -15, i16 -15>
  %i.bt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bs, <8 x i16> zeroinitializer)
  %i.bu = trunc nuw nsw <8 x i16> %i.bt to <8 x i8>
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 41
  store <8 x i8> %i.bu, ptr %i.bv, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %12 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.5 = insertelement <8 x i16> poison, i16 %12, i64 0
  %broadcast.splat95.5 = shufflevector <8 x i16> %broadcast.splatinsert94.5, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 182
  store <8 x i16> %broadcast.splat95.5, ptr %i.bw, align 2, !tbaa !61, !alias.scope !277
  %i.bx = add nsw <8 x i16> %broadcast.splat, <i16 -16, i16 -16, i16 -16, i16 -17, i16 -17, i16 -17, i16 -18, i16 -18>
  %i.by = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bx, <8 x i16> zeroinitializer)
  %i.bz = trunc nuw nsw <8 x i16> %i.by to <8 x i8>
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 49
  store <8 x i8> %i.bz, ptr %i.ca, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %13 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.6 = insertelement <8 x i16> poison, i16 %13, i64 0
  %broadcast.splat95.6 = shufflevector <8 x i16> %broadcast.splatinsert94.6, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 198
  store <8 x i16> %broadcast.splat95.6, ptr %i.cb, align 2, !tbaa !61, !alias.scope !277
  %i.cc = add nsw <8 x i16> %broadcast.splat, <i16 -18, i16 -19, i16 -19, i16 -19, i16 -20, i16 -20, i16 -20, i16 -21>
  %i.cd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cc, <8 x i16> zeroinitializer)
  %i.ce = trunc nuw nsw <8 x i16> %i.cd to <8 x i8>
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 57
  store <8 x i8> %i.ce, ptr %i.cf, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %14 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.7 = insertelement <8 x i16> poison, i16 %14, i64 0
  %broadcast.splat95.7 = shufflevector <8 x i16> %broadcast.splatinsert94.7, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 214
  store <8 x i16> %broadcast.splat95.7, ptr %i.cg, align 2, !tbaa !61, !alias.scope !277
  %i.ch = add nsw <8 x i16> %broadcast.splat, <i16 -21, i16 -21, i16 -22, i16 -22, i16 -22, i16 -23, i16 -23, i16 -23>
  %i.ci = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ch, <8 x i16> zeroinitializer)
  %i.cj = trunc nuw nsw <8 x i16> %i.ci to <8 x i8>
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 65
  store <8 x i8> %i.cj, ptr %i.ck, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %15 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.8 = insertelement <8 x i16> poison, i16 %15, i64 0
  %broadcast.splat95.8 = shufflevector <8 x i16> %broadcast.splatinsert94.8, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 230
  store <8 x i16> %broadcast.splat95.8, ptr %i.cl, align 2, !tbaa !61, !alias.scope !277
  %i.cm = add nsw <8 x i16> %broadcast.splat, <i16 -24, i16 -24, i16 -24, i16 -25, i16 -25, i16 -25, i16 -26, i16 -26>
  %i.cn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cm, <8 x i16> zeroinitializer)
  %i.co = trunc nuw nsw <8 x i16> %i.cn to <8 x i8>
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 73
  store <8 x i8> %i.co, ptr %i.cp, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %16 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.9 = insertelement <8 x i16> poison, i16 %16, i64 0
  %broadcast.splat95.9 = shufflevector <8 x i16> %broadcast.splatinsert94.9, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 246
  store <8 x i16> %broadcast.splat95.9, ptr %i.cq, align 2, !tbaa !61, !alias.scope !277
  %i.cr = add nsw <8 x i16> %broadcast.splat, <i16 -26, i16 -27, i16 -27, i16 -27, i16 -28, i16 -28, i16 -28, i16 -29>
  %i.cs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cr, <8 x i16> zeroinitializer)
  %i.ct = trunc nuw nsw <8 x i16> %i.cs to <8 x i8>
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 81
  store <8 x i8> %i.ct, ptr %i.cu, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %17 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.10 = insertelement <8 x i16> poison, i16 %17, i64 0
  %broadcast.splat95.10 = shufflevector <8 x i16> %broadcast.splatinsert94.10, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 262
  store <8 x i16> %broadcast.splat95.10, ptr %i.cv, align 2, !tbaa !61, !alias.scope !277
  %i.cw = add nsw <8 x i16> %broadcast.splat, <i16 -29, i16 -29, i16 -30, i16 -30, i16 -30, i16 -31, i16 -31, i16 -31>
  %i.cx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cw, <8 x i16> zeroinitializer)
  %i.cy = trunc nuw nsw <8 x i16> %i.cx to <8 x i8>
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 89
  store <8 x i8> %i.cy, ptr %i.cz, align 1, !tbaa !43, !alias.scope !274, !noalias !275
  %18 = load i16, ptr %i.as, align 2, !tbaa !61, !alias.scope !276
  %broadcast.splatinsert94.11 = insertelement <8 x i16> poison, i16 %18, i64 0
  %broadcast.splat95.11 = shufflevector <8 x i16> %broadcast.splatinsert94.11, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 278
  store <8 x i16> %broadcast.splat95.11, ptr %i.da, align 2, !tbaa !61, !alias.scope !277
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 97, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.db = trunc i64 %indvars.iv to i8
  %.neg.lhs.trunc = add nsw i8 %i.db, -1
  %.neg58 = sdiv i8 %.neg.lhs.trunc, -3
  %.neg.sext = sext i8 %.neg58 to i16
  %i.dc = add nsw i16 %i.ap, %.neg.sext
  %spec.select59 = tail call i16 @llvm.smax.i16(i16 %i.dc, i16 0)
  %spec.select = trunc nuw nsw i16 %spec.select59 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %spec.select, ptr %i.dd, align 1, !tbaa !43
  %i.de = load i16, ptr %i.as, align 2, !tbaa !61
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv
  store i16 %i.de, ptr %i.df, align 2, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 99
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !271

bb.e:                                             ; preds = %bb.b
  %i.dg = add nsw i32 %1, -3                      ; 2 uses
  %i.dh = ashr i32 %i.dg, 1                       ; 5 uses
  %i.di = ptrtoint ptr %i.j to i64
  %i.dj = sub i64 %i.e, %i.di
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = and i32 %i.dg, -2
  %i.dm = icmp sgt i32 %i.dl, %i.dk
  %i.dn = icmp sgt i32 %i.dh, 99
  %or.cond3 = or i1 %i.dn, %i.dm
  br i1 %or.cond3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.do = icmp sgt i32 %i.dh, 0
  br i1 %i.do, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %.preheader
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 3 uses
  %wide.trip.count77 = zext nneg i32 %i.dh to i64 ; 2 uses
  %xtraiter100 = and i64 %wide.trip.count77, 1
  %i.dq = icmp eq i32 %i.dh, 1
  br i1 %i.dq, label %.epil.preheader, label %.lr.ph66.new

.lr.ph66.new:                                     ; preds = %.lr.ph66
  %unroll_iter103 = and i64 %wide.trip.count77, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph66.new
  %indvars.iv74 = phi i64 [ 0, %.lr.ph66.new ], [ %indvars.iv.next75.1, %bb.f ] ; 4 uses
  %niter104 = phi i64 [ 0, %.lr.ph66.new ], [ %niter104.next.1, %bb.f ]
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store ptr %i.ds, ptr %i.a, align 8, !tbaa !42
  %i.dt = load i16, ptr %i.dr, align 1, !tbaa !43
  %i.du = tail call i16 @llvm.bswap.i16(i16 %i.dt) ; 2 uses
  %i.dv = lshr i16 %i.du, 11
  %i.dw = trunc nuw nsw i16 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv74
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !43
  %i.dy = and i16 %i.du, 2047
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv74
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !61
  %indvars.iv.next75 = or disjoint i64 %indvars.iv74, 1 ; 2 uses
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !42
  %i.ec = load i16, ptr %i.ea, align 1, !tbaa !43
  %i.ed = tail call i16 @llvm.bswap.i16(i16 %i.ec) ; 2 uses
  %i.ee = lshr i16 %i.ed, 11
  %i.ef = trunc nuw nsw i16 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next75
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !43
  %i.eh = and i16 %i.ed, 2047
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.next75
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !61
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %niter104.next.1 = add nuw i64 %niter104, 2     ; 2 uses
  %niter104.ncmp.1 = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !272

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph66
  %indvars.iv74.epil.init = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next75.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod102 = trunc i32 %i.dh to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store ptr %i.ek, ptr %i.a, align 8, !tbaa !42
  %i.el = load i16, ptr %i.ej, align 1, !tbaa !43
  %i.em = tail call i16 @llvm.bswap.i16(i16 %i.el) ; 2 uses
  %i.en = lshr i16 %i.em, 11
  %i.eo = trunc nuw nsw i16 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv74.epil.init
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !43
  %i.eq = and i16 %i.em, 2047
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv74.epil.init
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !61
  br label %.loopexit

.loopexit.loopexit97.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit97.unr-lcssa, %.lr.ph.preheader
  %indvars.iv70.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next71.1, %.loopexit.loopexit97.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store ptr %i.et, ptr %i.a, align 8, !tbaa !42
  %i.eu = load i8, ptr %i.es, align 1, !tbaa !43
  %i.ev = lshr i8 %i.eu, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv70.epil.init
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %.lr.ph.epil.preheader, %.loopexit.loopexit97.unr-lcssa, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader60, %.preheader, %bb.e, %bb.d, %bb.c, %bb.a
  %.053 = phi i32 [ -1094995529, %bb.d ], [ -1094995529, %bb.a ], [ -1094995529, %bb.e ], [ -1094995529, %bb.c ], [ 0, %.preheader ], [ 0, %.preheader60 ], [ 0, %.epil.preheader ], [ 0, %.lr.ph.epil.preheader ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.loopexit.loopexit97.unr-lcssa ], [ 0, %scalar.ph ]
  ret i32 %.053
}

declare ptr @av_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_jpeg2000_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @ff_jpeg2000_init_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1163346256, 1) i32 @jpeg2000_decode_packets_po_iteration(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 256) %2, i32 noundef range(i32 0, 65536) %3, i32 noundef range(i32 0, 256) %4, i32 noundef range(i32 0, 256) %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7, ptr nofree noundef nonnull captures(none) %8) unnamed_addr #1 {
bb.a:
  %trunc = trunc nuw i32 %7 to i8
  switch i8 %trunc, label %.thread695 [
    i8 1, label %bb.b
    i8 0, label %bb.g
    i8 4, label %bb.l
    i8 2, label %bb.v
    i8 3, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.78) #10
  %i.c = icmp samesign ult i32 %2, %5
  br i1 %i.c, label %.preheader721.lr.ph, label %.thread695

.preheader721.lr.ph:                              ; preds = %bb.b
  %.not = icmp ne i32 %4, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 364
  %i.f = icmp slt i32 %3, %6
  %or.cond1072 = and i1 %.not, %i.f
  br i1 %or.cond1072, label %.preheader721.us.preheader, label %.thread695

.preheader721.us.preheader:                       ; preds = %.preheader721.lr.ph
  %i.g = zext nneg i32 %3 to i64
  %i.h = zext nneg i32 %2 to i64
  %i.i = zext nneg i32 %5 to i64
  %wide.trip.count957 = zext nneg i32 %6 to i64
  br label %.preheader721.us

.preheader721.us:                                 ; preds = %.preheader721.us.preheader, %._crit_edge861.split.us.us
  %indvars.iv960 = phi i64 [ %i.h, %.preheader721.us.preheader ], [ %indvars.iv.next961, %._crit_edge861.split.us.us ] ; 5 uses
  %.not658.us = icmp eq i64 %indvars.iv960, 0
  %i.j = mul i64 %indvars.iv960, 12884901888
  %sext1039 = add i64 %i.j, -8589934592
  %i.k = ashr exact i64 %sext1039, 32
  %i.l = select i1 %.not658.us, i64 0, i64 %i.k
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge857.us.us, %.preheader721.us
  %.1525860.us.us = phi i32 [ 0, %.preheader721.us ], [ %.4528671.us.us, %._crit_edge857.us.us ]
  %.0549859.us.us = phi i32 [ 0, %.preheader721.us ], [ %i.ak, %._crit_edge857.us.us ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread.us.us, %.preheader.us.us
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %.thread.us.us ], [ %i.g, %.preheader.us.us ] ; 4 uses
  %.2526855.us.us = phi i32 [ %.4528671.us.us, %.thread.us.us ], [ %.1525860.us.us, %.preheader.us.us ]
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %indvars.iv954 ; 2 uses
  %i.n = getelementptr inbounds nuw [300 x i8], ptr %i.e, i64 %indvars.iv954 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !127
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv960, %i.p
  br i1 %i.q, label %bb.d, label %.thread.us.us

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw [408 x i8], ptr %i.r, i64 %indvars.iv954
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %indvars.iv960 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.experimental.cttz.elts.i64.v16i1
!75 = !{!35, !6, i64 56}
!76 = !{!35, !6, i64 48}
!77 = !{!35, !6, i64 40}
!78 = !{!35, !6, i64 1212}
!79 = !{!35, !6, i64 60}
!80 = !{!35, !6, i64 52}
!81 = !{!35, !6, i64 44}
!82 = !{!62, !5, i64 10}
!83 = !{!62, !5, i64 14}
!84 = !{!35, !6, i64 3120}
!85 = !{!27, !6, i64 136}
!86 = !{!"p2 omnipotent char", !25, i64 0}
!87 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!88 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!89 = !{!"AVFrame", !5, i64 0, !5, i64 64, !86, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !87, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !88, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!90 = !{!35, !6, i64 152}
!91 = !{!62, !5, i64 8}
!92 = !{!62, !6, i64 4}
!93 = !{!69, !66, i64 0}
!94 = !{!"p1 _ZTS12Jpeg2000Band", !9, i64 0}
!95 = !{!"Jpeg2000ResLevel", !5, i64 0, !5, i64 4, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 29, !94, i64 32}
!96 = !{!95, !5, i64 0}
!97 = !{!95, !94, i64 32}
!98 = !{!"Jpeg2000QuantStyle", !5, i64 0, !5, i64 100, !5, i64 298, !5, i64 299}
!99 = !{!98, !5, i64 299}
!100 = !{!95, !6, i64 20}
!101 = !{!95, !6, i64 24}
!102 = !{!"p1 _ZTS12Jpeg2000Prec", !9, i64 0}
!103 = !{!"Jpeg2000Band", !5, i64 0, !50, i64 16, !50, i64 18, !6, i64 20, !16, i64 24, !102, i64 32}
!104 = !{!103, !102, i64 32}
!105 = !{!"p1 _ZTS15Jpeg2000TgtNode", !9, i64 0}
!106 = !{!"p1 _ZTS12Jpeg2000Cblk", !9, i64 0}
!107 = !{!"Jpeg2000Prec", !6, i64 0, !6, i64 4, !105, i64 8, !105, i64 16, !106, i64 24, !6, i64 32, !5, i64 36}
!108 = !{!107, !6, i64 0}
!109 = !{!107, !6, i64 4}
!110 = !{!107, !106, i64 24}
!111 = !{!"p1 _ZTS12Jpeg2000Pass", !9, i64 0}
!112 = !{!"p1 _ZTS13Jpeg2000Layer", !9, i64 0}
!113 = !{!"Jpeg2000Cblk", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !50, i64 4, !17, i64 8, !5, i64 16, !5, i64 17, !14, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !24, i64 48, !111, i64 56, !112, i64 64, !5, i64 72, !6, i64 88, !5, i64 92, !5, i64 100, !5, i64 101}
!114 = !{!113, !5, i64 100}
!115 = !{!113, !5, i64 0}
!116 = !{!113, !5, i64 2}
!117 = !{!113, !50, i64 4}
!118 = !{!113, !14, i64 24}
!119 = !{!"llvm.loop.peeled.count", i32 1}
!120 = !{!113, !6, i64 40}
!121 = !{!113, !24, i64 48}
!122 = !{!"llvm.loop.isvectorized", i32 1}
!123 = !{!"llvm.loop.unroll.runtime.disable"}
!124 = !{!"AVPixFmtDescriptor", !14, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !13, i64 16, !5, i64 24, !14, i64 104}
!125 = !{!124, !13, i64 16}
!126 = !{!124, !5, i64 8}
!127 = !{!62, !6, i64 0}
!128 = !{!"llvm.loop.unswitch.partial.disable"}
!129 = distinct !{!129, !47}
!130 = distinct !{!130, !47}
!131 = distinct !{!131, !47}
!132 = distinct !{!132, !47}
!133 = distinct !{!133, !47}
!134 = distinct !{!134, !47}
!135 = distinct !{!135, !47}
!136 = distinct !{!136, !47}
!137 = distinct !{!137, !47}
!138 = distinct !{!138, !47}
!139 = distinct !{!139, !73}
!140 = distinct !{!140, !73}
!141 = distinct !{!141, !47}
!142 = distinct !{!142, !47}
!143 = distinct !{!143, !47}
!144 = distinct !{!144, !47}
!145 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!146 = !{!145, !14, i64 24}
!147 = !{!145, !6, i64 32}
!148 = !{!"Jpeg2000TilePart", !5, i64 0, !14, i64 8, !31, i64 16, !31, i64 40}
!149 = !{!148, !14, i64 8}
!150 = !{!35, !14, i64 16}
!151 = !{!27, !6, i64 516}
!152 = !{!35, !5, i64 3161}
!153 = !{!35, !5, i64 3162}
!154 = !{!35, !5, i64 3163}
!155 = !{!35, !5, i64 3164}
!156 = !{!35, !5, i64 3165}
!157 = !{!62, !5, i64 84}
!158 = !{!62, !5, i64 15}
!159 = !{!62, !5, i64 12}
!160 = !{!32, !6, i64 320}
!161 = !{!"Jpeg2000POCEntry", !50, i64 0, !50, i64 2, !50, i64 4, !5, i64 6, !5, i64 7, !5, i64 8}
!162 = !{!161, !5, i64 6}
!163 = !{!161, !50, i64 2}
!164 = !{!161, !50, i64 0}
!165 = !{!161, !5, i64 7}
!166 = !{!161, !5, i64 8}
!167 = !{!161, !50, i64 4}
!168 = !{!32, !6, i64 324}
!169 = !{i64 0, i64 320, !43, i64 320, i64 4, !46, i64 324, i64 4, !46}
!170 = !{!148, !5, i64 0}
!171 = !{!51, !6, i64 1888}
!172 = !{!35, !6, i64 1228}
!173 = !{!35, !6, i64 1232}
!174 = !{!27, !6, i64 704}
!175 = !{!51, !6, i64 1884}
!176 = !{!27, !9, i64 680}
!177 = !{!89, !6, i64 276}
!178 = distinct !{!178, !47}
!179 = distinct !{!179, !47}
!180 = distinct !{!180, !47}
!181 = distinct !{!181, !47}
!182 = distinct !{!182, !47}
!183 = distinct !{!183, !47}
!184 = distinct !{!184, !47, !230}
!185 = distinct !{!185, !47}
!186 = distinct !{!186, !47}
!187 = distinct !{!187, !47, !119}
!188 = distinct !{!188, !47}
!189 = distinct !{!189, !47}
!190 = distinct !{!190, !47}
!191 = distinct !{!191, !47}
!192 = distinct !{!192, !47}
!193 = distinct !{!193, !47, !122, !123}
!194 = distinct !{!194, !47, !123, !122}
!195 = distinct !{!195, !47}
!196 = distinct !{!196, i1 false, !"LVerDomain"}
!197 = distinct !{!197, !196}
!198 = distinct !{!198, !196}
!199 = distinct !{!199, !196}
!200 = distinct !{!200, !47, !122, !123}
!201 = distinct !{!201, !47, !122}
!202 = distinct !{!202, !47}
!203 = distinct !{!203, i1 false, !"LVerDomain"}
!204 = distinct !{!204, !203}
!205 = distinct !{!205, !203}
!206 = distinct !{!206, !203}
!207 = distinct !{!207, !47, !122, !123}
!208 = distinct !{!208, !47, !122, !123}
!209 = distinct !{!209, !47, !122}
!210 = distinct !{!210, !47, !122}
!211 = distinct !{!211, !47}
!212 = distinct !{!212, !47}
!213 = distinct !{!213, !47}
!214 = distinct !{!214, !47}
!215 = distinct !{!215, !47}
!216 = distinct !{!216, !47}
!217 = distinct !{null}
!218 = distinct !{!218, !47}
!219 = distinct !{!219, !47}
!220 = distinct !{!220, !47}
!221 = distinct !{!221, !47}
!222 = distinct !{!222, !47}
!223 = distinct !{!223, !47}
!224 = distinct !{!224, !47}
!225 = distinct !{!225, !47}
!226 = !{!"MqcState", !14, i64 0, !14, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !6, i64 48}
!227 = !{!"Jpeg2000T1Context", !5, i64 0, !5, i64 24576, !226, i64 36888, !6, i64 36944}
!228 = !{!227, !6, i64 36944}
!229 = !{!227, !6, i64 36936}
!230 = !{!"llvm.loop.peeled.count", i32 4}
!231 = !{!227, !14, i64 36888}
!232 = !{!103, !16, i64 24}
!233 = !{!69, !67, i64 352}
!234 = !{!16, !16, i64 0}
!235 = !{!103, !6, i64 20}
!236 = !{!69, !24, i64 360}
!237 = !{!197}
!238 = !{!198}
!239 = !{!199}
!240 = !{!198, !197}
!241 = !{!204}
!242 = !{!205}
!243 = !{!206}
!244 = !{!205, !204}
!245 = !{!9, !9, i64 0}
!246 = !{!89, !6, i64 116}
!247 = distinct !{!247, !47, !122, !123}
!248 = distinct !{!248, !47, !123, !122}
!249 = distinct !{!249, !47}
!250 = distinct !{!250, !47}
!251 = distinct !{!251, !73}
!252 = distinct !{!252, !47}
!253 = distinct !{!253, !47}
!254 = distinct !{!254, !47}
!255 = distinct !{!255, !47}
!256 = !{!27, !6, i64 688}
!257 = !{!27, !13, i64 792}
!258 = !{!27, !6, i64 652}
!259 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!260 = !{!259, !6, i64 16}
!261 = !{!124, !5, i64 9}
!262 = !{!124, !5, i64 10}
!263 = distinct !{!263, !47, !119}
!264 = !{!62, !5, i64 9}
!265 = !{!27, !6, i64 64}
!266 = distinct !{!266, !47}
!267 = distinct !{!267, i1 false, !"LVerDomain"}
!268 = distinct !{!268, !267}
!269 = distinct !{!269, !267}
!270 = distinct !{!270, !267}
!271 = distinct !{!271, !47, !122}
!272 = distinct !{!272, !47}
!273 = !{!98, !5, i64 298}
!274 = !{!268}
!275 = !{!270, !269}
!276 = !{!269}
!277 = !{!270}
!278 = distinct !{!278, !47}
!279 = distinct !{!279, !47}
!280 = distinct !{!280, !47}
!281 = distinct !{!281, !47}
!282 = distinct !{!282, !47}
!283 = distinct !{!283, !47}
!284 = distinct !{!284, !47}
!285 = distinct !{!285, !47}
!286 = distinct !{!286, !47, !122, !123}
!287 = distinct !{!287, !47, !123, !122}
!288 = distinct !{!288, !47}
!289 = distinct !{!289, !47}
!290 = distinct !{!290, !47}
!291 = distinct !{!291, !47, !128}
!292 = distinct !{!292, !47}
!293 = distinct !{!293, !47}
!294 = distinct !{!294, !47}
!295 = distinct !{!295, !47}
!296 = distinct !{!296, !47}
!297 = distinct !{!297, !47, !128}
!298 = distinct !{!298, !47}
!299 = distinct !{!299, !47, !122, !123}
!300 = distinct !{!300, !47, !123, !122}
!301 = distinct !{!301, !47}
!302 = distinct !{!302, !47}
!303 = distinct !{!303, !47}
!304 = distinct !{!304, !47}
!305 = distinct !{!305, !47}
!306 = distinct !{!306, !47, !128}
!307 = !{!95, !5, i64 28}
!308 = !{!95, !5, i64 29}
!309 = distinct !{!309, !47, !128}
!310 = distinct !{!310, !47}
!311 = distinct !{!311, !47, !122, !123}
!312 = distinct !{!312, !47, !123, !122}
!313 = distinct !{!313, !47}
!314 = distinct !{!314, !47}
!315 = distinct !{!315, !47}
!316 = distinct !{!316, !47}
!317 = distinct !{!317, !47}
!318 = distinct !{!318, !47}
!319 = distinct !{!319, !47}
!320 = distinct !{!320, !47}
!321 = distinct !{!321, !47, !122, !123}
!322 = distinct !{!322, !47, !123, !122}
!323 = distinct !{!323, !47}
!324 = distinct !{!324, !47}
!325 = distinct !{!325, !47}
!326 = distinct !{!326, !47}
!327 = distinct !{!327, !47}
!328 = !{!107, !6, i64 32}
!329 = !{i64 0, i64 8, !42, i64 8, i64 8, !42, i64 16, i64 8, !42}
!330 = !{!113, !5, i64 3}
!331 = !{!113, !5, i64 101}
!332 = !{!107, !105, i64 16}
!333 = !{!107, !105, i64 8}
!334 = !{!113, !6, i64 88}
!335 = !{!113, !5, i64 17}
!336 = !{!113, !5, i64 16}
!337 = !{!113, !6, i64 44}
!338 = !{!113, !17, i64 8}
!339 = !{!113, !13, i64 32}
!340 = distinct !{!340, !47}
!341 = distinct !{!341, !47}
!342 = !{!"Jpeg2000TgtNode", !5, i64 0, !5, i64 1, !5, i64 2, !105, i64 8}
!343 = !{!342, !5, i64 2}
!344 = !{!105, !105, i64 0}
!345 = !{!342, !105, i64 8}
!346 = !{!342, !5, i64 0}
end_hunk_1
