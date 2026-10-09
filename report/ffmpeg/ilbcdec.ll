Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ilbcdec?download=true
inline.NumInlined: 150
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0_@get_lsp_poly:bb.a
  %factor.op.mul.3 = mul nsw i32 %i.bv, -4        ; 4 uses
  %i.bw = ashr i32 %i.az, 16
  %i.bx = lshr exact i32 %i.az, 1
  %i.by = and i32 %i.bx, 32767
  %i.bz = mul nsw i32 %i.by, %i.bv
  %i.ca = ashr i32 %i.bz, 13
  %i.cb = and i32 %i.ca, -4
  %.reass.3 = mul i32 %i.bw, %factor.op.mul.3
  %.neg41.3 = shl i32 %i.bh, 1
  %i.cc = add i32 %.neg41.3, %.reass.3
  %i.cd = sub i32 %i.cc, %i.cb
  store i32 %i.cd, ptr %i.bs, align 4, !tbaa !34
  %i.ce = ashr i32 %i.bh, 16
  %i.cf = lshr i32 %i.bh, 1
  %i.cg = and i32 %i.cf, 32767
  %i.ch = mul nsw i32 %i.cg, %i.bv
  %i.ci = ashr i32 %i.ch, 13
  %i.cj = and i32 %i.ci, -4
  %.reass.3.1 = mul i32 %i.ce, %factor.op.mul.3
  %.neg41.3.1 = add i32 %i.az, %i.bp
  %i.ck = add i32 %.neg41.3.1, %.reass.3.1
  %i.cl = sub i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.ao, align 4, !tbaa !34
  %i.cm = ashr i32 %i.bp, 16
  %i.cn = lshr i32 %i.bp, 1
  %i.co = and i32 %i.cn, 32767
  %i.cp = mul nsw i32 %i.co, %i.bv
  %i.cq = ashr i32 %i.cp, 13
  %i.cr = and i32 %i.cq, -4
  %.reass.3.2 = mul i32 %i.cm, %factor.op.mul.3
  %.neg41.3.2 = add i32 %i.bh, %i.br
  %i.cs = add i32 %.neg41.3.2, %.reass.3.2
  %i.ct = sub i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %i.s, align 4, !tbaa !34
  %i.cu = ashr i32 %i.br, 16
  %i.cv = lshr exact i32 %i.br, 1
  %i.cw = and i32 %i.cv, 32256
  %i.cx = mul nsw i32 %i.cw, %i.bv
  %i.cy = ashr i32 %i.cx, 13
  %i.cz = and i32 %i.cy, -4
  %i.da = load i32, ptr %1, align 4, !tbaa !34
  %.reass.3.3 = mul nsw i32 %i.cu, %factor.op.mul.3
  %.neg41.3.3 = add i32 %i.bp, %i.da
  %i.db = add i32 %.neg41.3.3, %.reass.3.3
  %i.dc = sub i32 %i.db, %i.cz
  store i32 %i.dc, ptr %i.e, align 4, !tbaa !34
  %i.dd = shl nsw i32 %i.bv, 10
  %i.de = sub nsw i32 %i.br, %i.dd
  store i32 %i.de, ptr %i.d, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @construct_vector(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i16 noundef signext range(i16 85, 148) %4, i16 noundef signext %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [40 x i16], align 16              ; 5 uses
  %i.b = alloca [40 x i16], align 16              ; 5 uses
  %i.c = alloca [40 x i16], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = load i16, ptr %2, align 2, !tbaa !39
  %i.e = sext i16 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr @gain5, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39
  %i.j = sext i16 %i.g to i32                     ; 3 uses
  %i.k = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32768) %i.j, i1 true) ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, 1638
  %i.m = shl nuw i32 %i.k, 16
  %i.n = ashr exact i32 %i.m, 16
  %i.o = select i1 %i.l, i32 1638, i32 %i.n
  %i.p = sext i16 %i.i to i64
  %i.q = getelementptr inbounds [2 x i8], ptr @gain4, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !39
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !39
  %i.v = shl nsw i32 %i.s, 2
  %i.w = mul i32 %i.v, %i.o
  %i.x = add i32 %i.w, 32768
  %i.y = ashr i32 %i.x, 16                        ; 3 uses
  %i.z = sext i16 %i.u to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr @gain3, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !39
  %i.ac = load i16, ptr %1, align 2, !tbaa !39
  call fastcc void @get_codebook(ptr noundef %i.a, ptr noundef %3, i16 noundef signext %i.ac, i16 noundef signext %4, i16 noundef signext %5)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !39
  call fastcc void @get_codebook(ptr noundef %i.b, ptr noundef %3, i16 noundef signext %i.ae, i16 noundef signext %4, i16 noundef signext %5)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !39
  call fastcc void @get_codebook(ptr noundef %i.c, ptr noundef %3, i16 noundef signext %i.ag, i16 noundef signext %4, i16 noundef signext %5)
  %i.ah = icmp sgt i16 %5, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i16 %5 to i64      ; 3 uses
  %i.ai = sext i16 %i.ab to i32
  %i.aj = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32768) %i.y, i1 true) ; 2 uses
  %i.ak = icmp samesign ult i32 %i.aj, 1638
  %i.al = shl nuw i32 %i.aj, 16
  %i.am = ashr exact i32 %i.al, 16
  %i.an = select i1 %i.ak, i32 1638, i32 %i.am
  %factor.op.mul = mul nsw i32 %i.an, %i.ai
  %.reass = shl i32 %factor.op.mul, 2
  %i.ao = add i32 %.reass, 32768
  %i.ap = ashr i32 %i.ao, 16                      ; 2 uses
  %min.iters.check = icmp ult i16 %5, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 32760        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat33 = shufflevector <8 x i32> %broadcast.splatinsert32, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %wide.load = load <8 x i16>, ptr %i.aq, align 16, !tbaa !39
  %i.ar = sext <8 x i16> %wide.load to <8 x i32>
  %i.as = mul nsw <8 x i32> %broadcast.splat33, %i.ar
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index
  %wide.load36 = load <8 x i16>, ptr %i.at, align 16, !tbaa !39
  %i.au = sext <8 x i16> %wide.load36 to <8 x i32>
  %i.av = mul nsw <8 x i32> %broadcast.splat35, %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index
  %wide.load37 = load <8 x i16>, ptr %i.aw, align 16, !tbaa !39
  %i.ax = sext <8 x i16> %wide.load37 to <8 x i32>
  %i.ay = mul nsw <8 x i32> %broadcast.splat, %i.ax
  %i.az = add nsw <8 x i32> %i.as, splat (i32 8192)
  %i.ba = add <8 x i32> %i.az, %i.av
  %i.bb = add <8 x i32> %i.ba, %i.ay
  %i.bc = lshr <8 x i32> %i.bb, splat (i32 14)
  %i.bd = trunc <8 x i32> %i.bc to <8 x i16>
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.bd, ptr %i.be, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !39
  %i.bi = sext i16 %i.bh to i32
  %i.bj = mul nsw i32 %i.bi, %i.j
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !39
  %i.bm = sext i16 %i.bl to i32
  %i.bn = mul nsw i32 %i.y, %i.bm
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !39
  %i.bq = sext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.ap, %i.bq
  %i.bs = add nsw i32 %i.bj, 8192
  %i.bt = add i32 %i.bs, %i.bn
  %i.bu = add i32 %i.bt, %i.br
  %i.bv = lshr i32 %i.bu, 14
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @get_codebook(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i16 noundef signext %2, i16 noundef signext range(i16 85, 148) %3, i16 noundef signext %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [4 x i16], align 2                ; 10 uses
  %i.b = alloca [4 x i16], align 2                ; 5 uses
  %i.c = alloca [45 x i16], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(90) %i.c, i8 0, i64 90, i1 false)
  %i.d = zext nneg i16 %3 to i32                  ; 2 uses
  %i.e = sext i16 %4 to i32                       ; 4 uses
  %i.f = sub nsw i32 %i.d, %i.e                   ; 5 uses
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  %i.h = icmp eq i16 %4, 40
  %i.i = add nsw i32 %i.f, 21
  %spec.select = select i1 %i.h, i32 %i.i, i32 %i.g ; 2 uses
  %i.j = sext i16 %2 to i32                       ; 4 uses
  %.not = icmp slt i32 %i.f, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i16 %4, %2
  %i.l = zext nneg i16 %3 to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l
  %i.n = sext i16 %i.k to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.o
  %i.q = shl nsw i32 %i.e, 1
  %i.r = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull align 2 %i.p, i64 %i.r, i1 false)
  br label %filter_mafq12.exit

bb.c:                                             ; preds = %bb.a
  %sext = shl i32 %spec.select, 16
  %i.s = ashr exact i32 %sext, 16                 ; 2 uses
  %i.t = icmp sgt i32 %i.s, %i.j
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = shl nsw i32 %i.e, 1
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %0, i8 0, i64 %i.v, i1 false)
  %i.w = trunc nsw i32 %i.g to i16
  %i.x = sub i16 %2, %i.w
  %i.y = shl i16 %i.x, 1
  %i.z = add i16 %i.y, %4                         ; 4 uses
  %i.aa = sdiv i16 %i.z, 2                        ; 2 uses
  %i.ab = sext i16 %i.aa to i32                   ; 5 uses
  %i.ac = zext nneg i16 %3 to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 4) ; 4 uses
  %i.af = sub i32 %i.ab, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = sext i16 %i.aa to i64                   ; 2 uses
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ai ; 3 uses
  %i.ak = shl nsw i32 %i.ab, 1
  %i.al = sext i32 %i.ak to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull readonly align 2 %i.aj, i64 %i.al, i1 false)
  %sext.i = shl i64 %i.ag, 48
  %i.am = ashr exact i64 %sext.i, 47
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am ; 5 uses
  %i.ao = sext i32 %i.ae to i64                   ; 2 uses
  %i.ap = sub nsw i64 0, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i16 %i.z, 1
  br i1 %i.ar, label %.lr.ph.preheader.i.i, label %create_augmented_vector.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.ae to i64 ; 6 uses
  %xtraiter181 = and i64 %wide.trip.count.i.i, 1
  %i.as = and i16 %i.z, 32766
  %i.at = icmp eq i16 %i.as, 2
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter185 = and i64 %wide.trip.count.i.i, 6
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 5 uses
  %niter186 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter186.next.1, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  %i.av = load i16, ptr %i.au, align 2, !tbaa !39
  %i.aw = sext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @alpha, i64 %indvars.iv.i.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !39
  %i.az = sext i16 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.aw
  %i.bb = lshr i32 %i.ba, 15
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !39
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !39
  %i.bg = sext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr @alpha, i64 %indvars.iv.next.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !39
  %i.bj = sext i16 %i.bi to i32
  %i.bk = mul nsw i32 %i.bj, %i.bg
  %i.bl = lshr i32 %i.bk, 15
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.next.i.i
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !39
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %.lr.ph.preheader.i30.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !99

.lr.ph.preheader.i30.i.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %.lr.ph.preheader.i30.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i30.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %.lr.ph.preheader.i30.i.unr-lcssa ] ; 3 uses
  %lcmp.mod184 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i.epil.init
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !39
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @alpha, i64 %indvars.iv.i.i.epil.init
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !39
  %i.bt = sext i16 %i.bs to i32
  %i.bu = mul nsw i32 %i.bt, %i.bq
  %i.bv = lshr i32 %i.bu, 15
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i.epil.init
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !39
  br label %.lr.ph.preheader.i30.i

.lr.ph.preheader.i30.i:                           ; preds = %.lr.ph.preheader.i30.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %i.by = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ap
  %i.bz = getelementptr [2 x i8], ptr @alpha, i64 %i.ao
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.preheader.i30.i, %.lr.ph.i32.i
  %indvars.iv.i33.i = phi i64 [ 0, %.lr.ph.preheader.i30.i ], [ %indvars.iv.next.i34.i, %.lr.ph.i32.i ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.i33.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !39
  %i.cd = sext i16 %i.cc to i32
  %i.ce = sub nsw i64 0, %indvars.iv.i33.i
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !39
  %i.ch = sext i16 %i.cg to i32
  %i.ci = mul nsw i32 %i.ch, %i.cd
  %i.cj = lshr i32 %i.ci, 15
  %i.ck = trunc i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i33.i
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !39
  %indvars.iv.next.i34.i = add nuw nsw i64 %indvars.iv.i33.i, 1 ; 2 uses
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i34.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i35.i, label %iter.check, label %.lr.ph.i32.i, !llvm.loop !100

iter.check:                                       ; preds = %.lr.ph.i32.i
  %min.iters.check155 = icmp slt i16 %i.z, 8
  br i1 %min.iters.check155, label %.lr.ph.i38.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.vec168 = and i64 %wide.trip.count.i.i, 4     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index169 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next172, %vec.epilog.vector.body ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index169 ; 2 uses
  %wide.load170 = load <4 x i16>, ptr %i.cm, align 2, !tbaa !39
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index169
  %wide.load171 = load <4 x i16>, ptr %i.cn, align 2, !tbaa !39
  %i.co = add <4 x i16> %wide.load171, %wide.load170
  store <4 x i16> %i.co, ptr %i.cm, align 2, !tbaa !39
  %index.next172 = add nuw i64 %index169, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next172, %n.vec168
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n173 = icmp eq i64 %n.vec168, %wide.trip.count.i.i
  br i1 %cmp.n173, label %create_augmented_vector.exit, label %.lr.ph.i38.i.preheader

.lr.ph.i38.i.preheader:                           ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv.i39.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec168, %vec.epilog.middle.block ]
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader, %.lr.ph.i38.i
  %indvars.iv.i39.i = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph.i38.i ], [ %indvars.iv.i39.i.ph, %.lr.ph.i38.i.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i39.i ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !39
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i39.i
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !39
  %i.cu = add i16 %i.ct, %i.cr
  store i16 %i.cu, ptr %i.cq, align 2, !tbaa !39
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %exitcond.not.i41.i = icmp eq i64 %indvars.iv.next.i40.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i41.i, label %create_augmented_vector.exit, label %.lr.ph.i38.i, !llvm.loop !102

create_augmented_vector.exit:                     ; preds = %.lr.ph.i38.i, %vec.epilog.middle.block, %bb.d
  %i.cv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ah
  %i.cw = sub nsw i32 40, %i.ab
  %i.cx = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 range(i32 -32768, 32768) %i.ab)
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cv, ptr nonnull readonly align 2 %i.aj, i64 %i.cz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %filter_mafq12.exit

bb.e:                                             ; preds = %bb.c
  %i.da = sub nsw i32 %i.j, %i.s                  ; 2 uses
  %.not62 = icmp sgt i32 %i.da, %i.f
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %5 = trunc i32 %i.da to i16
  %6 = add i16 %4, %5
  %7 = sub i16 %3, %6
  %i.db = getelementptr inbounds i8, ptr %1, i64 -8
  store i64 0, ptr %i.db, align 2
  %8 = zext nneg i16 %3 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %8
  store i64 0, ptr %9, align 2
  %i.dc = sext i16 %7 to i64                      ; 2 uses
  %i.dd = getelementptr [2 x i8], ptr %1, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 8      ; 2 uses
  %i.df = icmp sgt i16 %4, 0
  br i1 %i.df, label %.lr.ph.i, label %filter_mafq12.exit

.lr.ph.i:                                         ; preds = %bb.f
  %wide.trip.count27.i = zext nneg i16 %4 to i64  ; 4 uses
  %min.iters.check = icmp ult i16 %4, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.dg = shl nuw nsw i64 %wide.trip.count27.i, 1 ; 2 uses
  %i.dh = getelementptr i8, ptr %0, i64 %i.dg
  %i.di = shl nsw i64 %i.dc, 1                    ; 2 uses
  %i.dj = getelementptr i8, ptr %1, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 -6
  %i.dl = getelementptr i8, ptr %1, i64 %i.di
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.dg
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %bound0 = icmp ult ptr %0, %i.dn
  %bound1 = icmp ult ptr %i.dk, %i.dh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count27.i, 32760    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %index ; 8 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -2
  %wide.load = load <8 x i16>, ptr %i.do, align 2, !tbaa !39, !alias.scope !113
  %i.dq = sext <8 x i16> %wide.load to <8 x i32>
  %i.dr = mul nsw <8 x i32> %i.dq, splat (i32 -140)
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 -4
  %wide.load104.a = load <8 x i16>, ptr %i.dp, align 2, !tbaa !39, !alias.scope !113
  %i.dt = sext <8 x i16> %wide.load104.a to <8 x i32>
  %i.du = mul nsw <8 x i32> %i.dt, splat (i32 446)
  %i.dv = add nsw <8 x i32> %i.du, %i.dr
  %i.dw = getelementptr inbounds i8, ptr %i.do, i64 -6
  %wide.load105.a = load <8 x i16>, ptr %i.ds, align 2, !tbaa !39, !alias.scope !113
  %i.dx = sext <8 x i16> %wide.load105.a to <8 x i32>
  %i.dy = mul nsw <8 x i32> %i.dx, splat (i32 -755)
  %i.dz = add nsw <8 x i32> %i.dy, %i.dv
  %i.ea = getelementptr inbounds i8, ptr %i.do, i64 -8
  %wide.load106.a = load <8 x i16>, ptr %i.dw, align 2, !tbaa !39, !alias.scope !113
  %i.eb = sext <8 x i16> %wide.load106.a to <8 x i32>
  %i.ec = mul nsw <8 x i32> %i.eb, splat (i32 3302)
  %i.ed = add nsw <8 x i32> %i.ec, %i.dz
  %i.ee = getelementptr inbounds i8, ptr %i.do, i64 -10
  %wide.load107.a = load <8 x i16>, ptr %i.ea, align 2, !tbaa !39, !alias.scope !113
  %i.ef = sext <8 x i16> %wide.load107.a to <8 x i32>
  %i.eg = mul nsw <8 x i32> %i.ef, splat (i32 2922)
  %i.eh = add nsw <8 x i32> %i.eg, %i.ed
  %i.ei = getelementptr inbounds i8, ptr %i.do, i64 -12
  %wide.load108.a = load <8 x i16>, ptr %i.ee, align 2, !tbaa !39, !alias.scope !113
  %i.ej = sext <8 x i16> %wide.load108.a to <8 x i32>
  %i.ek = mul nsw <8 x i32> %i.ej, splat (i32 -590)
  %i.el = add nsw <8 x i32> %i.ek, %i.eh
  %i.em = getelementptr inbounds i8, ptr %i.do, i64 -14
  %wide.load109 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !39, !alias.scope !113
  %i.en = sext <8 x i16> %wide.load109 to <8 x i32>
  %i.eo = mul nsw <8 x i32> %i.en, splat (i32 343)
  %i.ep = add nsw <8 x i32> %i.eo, %i.el
  %wide.load110 = load <8 x i16>, ptr %i.em, align 2, !tbaa !39, !alias.scope !113
  %i.eq = sext <8 x i16> %wide.load110 to <8 x i32>
  %i.er = mul nsw <8 x i32> %i.eq, splat (i32 -138)
  %i.es = add nsw <8 x i32> %i.er, %i.ep
  %i.et = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.es, <8 x i32> splat (i32 -134217728))
  %i.eu = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.et, <8 x i32> splat (i32 134215679))
  %i.ev = add nsw <8 x i32> %i.eu, splat (i32 2048)
  %i.ew = lshr <8 x i32> %i.ev, splat (i32 12)
  %i.ex = trunc <8 x i32> %i.ew to <8 x i16>
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.ex, ptr %i.ey, align 2, !tbaa !39, !alias.scope !114, !noalias !113
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27.i
  br i1 %cmp.n, label %filter_mafq12.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %scalar.ph ], [ %indvars.iv24.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %indvars.iv24.i
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -14
  %i.fc = load <8 x i16>, ptr %i.fb, align 2, !tbaa !39
  %i.fd = sext <8 x i16> %i.fc to <8 x i32>
  %i.fe = mul nsw <8 x i32> %i.fd, <i32 -138, i32 343, i32 -590, i32 2922, i32 3302, i32 -755, i32 446, i32 -140>
  %i.ff = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fe)
  %i.fg = tail call i32 @llvm.smax.i32(i32 %i.ff, i32 -134217728)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.fg, i32 134215679)
  %i.fh = add nsw i32 %.0.i.i, 2048
  %i.fi = lshr i32 %i.fh, 12
  %i.fj = trunc i32 %i.fi to i16
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv24.i
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !39
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %filter_mafq12.exit, label %scalar.ph, !llvm.loop !107

bb.g:                                             ; preds = %bb.e
  %i.fl = shl nsw i32 %i.e, 1                     ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %0, i8 0, i64 %i.fm, i1 false)
  %10 = zext nneg i16 %3 to i64
  %11 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %10
  store i64 0, ptr %11, align 2
  %i.fn = shl nsw i32 %i.f, 16
  %sext63 = add nsw i32 %i.fn, -524288
  %i.fo = ashr exact i32 %sext63, 16
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [2 x i8], ptr %1, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 14     ; 2 uses
  %i.fs = add i16 %4, 5                           ; 3 uses
  %i.ft = icmp sgt i16 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.i64, label %filter_mafq12.exit75

.lr.ph.i64:                                       ; preds = %bb.g
  %wide.trip.count27.i65 = zext nneg i16 %i.fs to i64 ; 3 uses
  %min.iters.check112 = icmp ult i16 %i.fs, 8
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i64
  %n.vec114 = and i64 %wide.trip.count27.i65, 32760 ; 3 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next125, %vector.body115 ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %index116 ; 8 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -2
  %wide.load117.a = load <8 x i16>, ptr %i.fu, align 2, !tbaa !39
  %i.fw = sext <8 x i16> %wide.load117.a to <8 x i32>
  %i.fx = mul nsw <8 x i32> %i.fw, splat (i32 -140)
  %i.fy = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %wide.load118.a = load <8 x i16>, ptr %i.fv, align 2, !tbaa !39
  %i.fz = sext <8 x i16> %wide.load118.a to <8 x i32>
  %i.ga = mul nsw <8 x i32> %i.fz, splat (i32 446)
  %i.gb = add nsw <8 x i32> %i.ga, %i.fx
  %i.gc = getelementptr inbounds i8, ptr %i.fu, i64 -6
  %wide.load119.a = load <8 x i16>, ptr %i.fy, align 2, !tbaa !39
  %i.gd = sext <8 x i16> %wide.load119.a to <8 x i32>
  %i.ge = mul nsw <8 x i32> %i.gd, splat (i32 -755)
  %i.gf = add nsw <8 x i32> %i.ge, %i.gb
  %i.gg = getelementptr inbounds i8, ptr %i.fu, i64 -8
  %wide.load120.a = load <8 x i16>, ptr %i.gc, align 2, !tbaa !39
  %i.gh = sext <8 x i16> %wide.load120.a to <8 x i32>
  %i.gi = mul nsw <8 x i32> %i.gh, splat (i32 3302)
  %i.gj = add nsw <8 x i32> %i.gi, %i.gf
  %i.gk = getelementptr inbounds i8, ptr %i.fu, i64 -10
  %wide.load121.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !39
  %i.gl = sext <8 x i16> %wide.load121.a to <8 x i32>
  %i.gm = mul nsw <8 x i32> %i.gl, splat (i32 2922)
  %i.gn = add nsw <8 x i32> %i.gm, %i.gj
  %i.go = getelementptr inbounds i8, ptr %i.fu, i64 -12
  %wide.load122.a = load <8 x i16>, ptr %i.gk, align 2, !tbaa !39
  %i.gp = sext <8 x i16> %wide.load122.a to <8 x i32>
  %i.gq = mul nsw <8 x i32> %i.gp, splat (i32 -590)
  %i.gr = add nsw <8 x i32> %i.gq, %i.gn
  %i.gs = getelementptr inbounds i8, ptr %i.fu, i64 -14
  %wide.load123 = load <8 x i16>, ptr %i.go, align 2, !tbaa !39
  %i.gt = sext <8 x i16> %wide.load123 to <8 x i32>
  %i.gu = mul nsw <8 x i32> %i.gt, splat (i32 343)
  %i.gv = add nsw <8 x i32> %i.gu, %i.gr
  %wide.load124 = load <8 x i16>, ptr %i.gs, align 2, !tbaa !39
  %i.gw = sext <8 x i16> %wide.load124 to <8 x i32>
  %i.gx = mul nsw <8 x i32> %i.gw, splat (i32 -138)
  %i.gy = add nsw <8 x i32> %i.gx, %i.gv
  %i.gz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 -134217728))
  %i.ha = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gz, <8 x i32> splat (i32 134215679))
  %i.hb = add nsw <8 x i32> %i.ha, splat (i32 2048)
  %i.hc = lshr <8 x i32> %i.hb, splat (i32 12)
  %i.hd = trunc <8 x i32> %i.hc to <8 x i16>
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index116
  store <8 x i16> %i.hd, ptr %i.he, align 16, !tbaa !39
  %index.next125 = add nuw i64 %index116, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next125, %n.vec114
  br i1 %i.hf, label %middle.block126, label %vector.body115, !llvm.loop !108

middle.block126:                                  ; preds = %vector.body115
  %cmp.n127 = icmp eq i64 %n.vec114, %wide.trip.count27.i65
  br i1 %cmp.n127, label %filter_mafq12.exit75, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %.lr.ph.i64, %middle.block126
  %indvars.iv24.i66.ph = phi i64 [ 0, %.lr.ph.i64 ], [ %n.vec114, %middle.block126 ]
  br label %scalar.ph111

scalar.ph111:                                     ; preds = %scalar.ph111.preheader, %scalar.ph111
  %indvars.iv24.i66 = phi i64 [ %indvars.iv.next25.i73, %scalar.ph111 ], [ %indvars.iv24.i66.ph, %scalar.ph111.preheader ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv24.i66
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -14
  %i.hi = load <8 x i16>, ptr %i.hh, align 2, !tbaa !39
  %i.hj = sext <8 x i16> %i.hi to <8 x i32>
  %i.hk = mul nsw <8 x i32> %i.hj, <i32 -138, i32 343, i32 -590, i32 2922, i32 3302, i32 -755, i32 446, i32 -140>
  %i.hl = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.hk)
  %i.hm = tail call i32 @llvm.smax.i32(i32 %i.hl, i32 -134217728)
  %.0.i.i72 = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 134215679)
  %i.hn = add nsw i32 %.0.i.i72, 2048
  %i.ho = lshr i32 %i.hn, 12
  %i.hp = trunc i32 %i.ho to i16
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv24.i66
  store i16 %i.hp, ptr %i.hq, align 2, !tbaa !39
  %indvars.iv.next25.i73 = add nuw nsw i64 %indvars.iv24.i66, 1 ; 2 uses
  %exitcond28.not.i74 = icmp eq i64 %indvars.iv.next25.i73, %wide.trip.count27.i65
  br i1 %exitcond28.not.i74, label %filter_mafq12.exit75, label %scalar.ph111, !llvm.loop !109

filter_mafq12.exit75:                             ; preds = %scalar.ph111, %middle.block126, %bb.g
  %i.hr = add nsw i32 %spec.select, %i.d
  %i.hs = xor i32 %i.hr, -1
  %i.ht = add nsw i32 %i.j, 65516
  %i.hu = add nsw i32 %i.ht, %i.fl
  %i.hv = add nsw i32 %i.hu, %i.hs                ; 2 uses
  %i.hw = shl i32 %i.hv, 16                       ; 6 uses
  %i.hx = ashr exact i32 %i.hw, 16                ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 90 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.hz = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.hx, i32 4) ; 4 uses
  %i.ia = sub nsw i32 %i.hv, %i.hz
  %i.ib = zext i32 %i.ia to i64
  %i.ic = sext i32 %i.hx to i64                   ; 2 uses
  %i.id = sub nsw i64 0, %i.ic
  %i.ie = getelementptr inbounds [2 x i8], ptr %i.hy, i64 %i.id ; 3 uses
  %i.if = ashr exact i32 %i.hw, 15
  %i.ig = sext i32 %i.if to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull readonly align 2 %i.ie, i64 %i.ig, i1 false)
  %sext.i76 = shl i64 %i.ib, 48
  %i.ih = ashr exact i64 %sext.i76, 47
  %i.ii = getelementptr inbounds i8, ptr %0, i64 %i.ih ; 9 uses
  %i.ij = sext i32 %i.hz to i64                   ; 2 uses
  %i.ik = sub nsw i64 0, %i.ij                    ; 2 uses
  %i.il = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.ik ; 4 uses
  %i.im = icmp sgt i32 %i.hx, 0
  br i1 %i.im, label %.lr.ph.preheader.i.i77, label %create_augmented_vector.exit92

.lr.ph.preheader.i.i77:                           ; preds = %filter_mafq12.exit75
  %wide.trip.count.i.i78 = zext nneg i32 %i.hz to i64 ; 4 uses
  %i.in = load i16, ptr %i.il, align 2, !tbaa !39
  %i.io = sext i16 %i.in to i32
  %i.ip = mul nsw i32 %i.io, 6554
  %i.iq = lshr i32 %i.ip, 15
  %i.ir = trunc i32 %i.iq to i16
  store i16 %i.ir, ptr %i.ii, align 2, !tbaa !39
  %exitcond.not.i.i82 = icmp eq i32 %i.hw, 65536
  br i1 %exitcond.not.i.i82, label %.lr.ph.preheader.i30.i83, label %.lr.ph.i.i79.1

.lr.ph.i.i79.1:                                   ; preds = %.lr.ph.preheader.i.i77
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.it = load i16, ptr %i.is, align 2, !tbaa !39
  %i.iu = sext i16 %i.it to i32
  %i.iv = mul nsw i32 %i.iu, 13107
  %i.iw = lshr i32 %i.iv, 15
  %i.ix = trunc i32 %i.iw to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !39
  %exitcond.not.i.i82.1 = icmp eq i32 %i.hw, 131072
  br i1 %exitcond.not.i.i82.1, label %.lr.ph.preheader.i30.i83, label %.lr.ph.i.i79.2

.lr.ph.i.i79.2:                                   ; preds = %.lr.ph.i.i79.1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !39
  %i.jb = sext i16 %i.ja to i32
  %i.jc = mul nsw i32 %i.jb, 19661
  %i.jd = lshr i32 %i.jc, 15
  %i.je = trunc i32 %i.jd to i16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !39
  %exitcond.not.i.i82.2 = icmp eq i32 %i.hw, 196608
  br i1 %exitcond.not.i.i82.2, label %.lr.ph.preheader.i30.i83, label %.lr.ph.i.i79.3

.lr.ph.i.i79.3:                                   ; preds = %.lr.ph.i.i79.2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.il, i64 6
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !39
  %i.ji = sext i16 %i.jh to i32
  %i.jj = mul nsw i32 %i.ji, 26214
  %i.jk = lshr i32 %i.jj, 15
  %i.jl = trunc i32 %i.jk to i16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ii, i64 6
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !39
  br label %.lr.ph.preheader.i30.i83

.lr.ph.preheader.i30.i83:                         ; preds = %.lr.ph.i.i79.3, %.lr.ph.i.i79.2, %.lr.ph.i.i79.1, %.lr.ph.preheader.i.i77
  %i.jn = getelementptr inbounds [2 x i8], ptr %i.hy, i64 %i.ik ; 3 uses
  %i.jo = getelementptr [2 x i8], ptr @alpha, i64 %i.ij
  %i.jp = getelementptr i8, ptr %i.jo, i64 -2     ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i78, 1
  %i.jq = icmp eq i32 %i.hw, 65536
  br i1 %i.jq, label %.lr.ph.i32.i84.epil.preheader, label %.lr.ph.preheader.i30.i83.new

.lr.ph.preheader.i30.i83.new:                     ; preds = %.lr.ph.preheader.i30.i83
  %unroll_iter = and i64 %wide.trip.count.i.i78, 6
  br label %.lr.ph.i32.i84

.lr.ph.i32.i84:                                   ; preds = %.lr.ph.i32.i84, %.lr.ph.preheader.i30.i83.new
  %indvars.iv.i33.i85 = phi i64 [ 0, %.lr.ph.preheader.i30.i83.new ], [ %indvars.iv.next.i34.i86.1, %.lr.ph.i32.i84 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i30.i83.new ], [ %niter.next.1, %.lr.ph.i32.i84 ]
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv.i33.i85
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !39
  %i.jt = sext i16 %i.js to i32
  %i.ju = sub nsw i64 0, %indvars.iv.i33.i85
  %i.jv = getelementptr inbounds [2 x i8], ptr %i.jp, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !39
  %i.jx = sext i16 %i.jw to i32
  %i.jy = mul nsw i32 %i.jx, %i.jt
  %i.jz = lshr i32 %i.jy, 15
  %i.ka = trunc i32 %i.jz to i16
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i33.i85
  store i16 %i.ka, ptr %i.kb, align 2, !tbaa !39
  %indvars.iv.next.i34.i86 = or disjoint i64 %indvars.iv.i33.i85, 1 ; 2 uses
end_hunk_0
