inline.NumInlined: 15
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@process:bb.a

bb.i:                                             ; preds = %.loopexit
  %i.da = fcmp reassoc nsz arcp contract afn une float %i.aj, 0.000000e+00
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.db = sext i32 %i.m to i64
  %i.dc = sext i32 %i.o to i64
  call fastcc void @make_noise(ptr noundef %3, float noundef %i.aj, i64 noundef %i.db, i64 noundef %i.dc)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dd = call ptr @dt_gaussian_init(i32 noundef %i.m, i32 noundef %i.o, i32 noundef 4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, float noundef %i.ad, i32 noundef 0) #15 ; 3 uses
  %.not197.not = icmp eq ptr %i.dd, null
  br i1 %.not197.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.dd, ptr noundef %.2, ptr noundef %3) #15
  call void @dt_gaussian_free(ptr noundef nonnull %i.dd) #15
  br label %dt_simd_memcpy.exit

bb.m:                                             ; preds = %.loopexit
  %i.de = sext i32 %i.m to i64
  %i.df = sext i32 %i.o to i64
  %i.dg = mul nsw i64 %i.df, %i.de                ; 2 uses
  %.mask = and i64 %i.dg, 4611686018427387903
  %.not.i = icmp eq i64 %.mask, 0
  br i1 %.not.i, label %dt_simd_memcpy.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.dh = shl i64 %i.dg, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %3, ptr readonly align 4 %.2, i64 %i.dh, i1 false), !tbaa !40, !alias.scope !46
  br label %dt_simd_memcpy.exit

dt_simd_memcpy.exit:                              ; preds = %.lr.ph.preheader.i, %bb.m, %bb.l
  %i.di = fcmp reassoc nsz arcp contract afn une float %i.aj, 0.000000e+00
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %dt_simd_memcpy.exit
  %i.dj = sext i32 %i.m to i64
  %i.dk = sext i32 %i.o to i64
  call fastcc void @make_noise(ptr noundef %3, float noundef %i.aj, i64 noundef %i.dj, i64 noundef %i.dk)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_simd_memcpy.exit
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !41
  call void @free(ptr noundef %i.dl) #15
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.e, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gaussian_blur_4c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @make_noise(ptr nofree noundef captures(none) %0, float noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3) unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i64 %3, 0
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge49.split

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 9
  %i.c = and i64 %2, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub nsw i64 %2, %i.e                   ; 2 uses
  %broadcast.splatinsert57 = insertelement <8 x float> poison, float %1, i64 0
  %broadcast.splat58 = shufflevector <8 x float> %broadcast.splatinsert57, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02748 = phi i64 [ %i.ck, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.f = add i64 %.02748, 3                       ; 2 uses
  %i.g = mul i64 %.02748, %2                      ; 2 uses
  br i1 %min.iters.check, label %gaussian_noise.exit.preheader, label %vector.ph

gaussian_noise.exit.preheader:                    ; preds = %vector.body, %.preheader
  %.02847.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %vector.body ]
  br label %gaussian_noise.exit

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %.02748, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <8 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat54 = shufflevector <8 x i64> %broadcast.splatinsert53, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <8 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat56 = shufflevector <8 x i64> %broadcast.splatinsert55, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.h = add nuw <8 x i64> %vec.ind, splat (i64 1) ; 3 uses
  %i.i = lshr <8 x i64> %i.h, splat (i64 33)
  %i.j = xor <8 x i64> %i.i, %i.h
  %i.k = mul <8 x i64> %i.j, splat (i64 7109453100751455733) ; 2 uses
  %i.l = lshr <8 x i64> %i.k, splat (i64 28)
  %i.m = xor <8 x i64> %i.l, %i.k
  %i.n = mul <8 x i64> %i.m, splat (i64 -3808689974395783757)
  %i.o = lshr <8 x i64> %i.n, splat (i64 32)
  %i.p = trunc nuw <8 x i64> %i.o to <8 x i32>    ; 2 uses
  %i.q = mul <8 x i64> %i.h, %broadcast.splat54   ; 2 uses
  %i.r = lshr <8 x i64> %i.q, splat (i64 33)
  %i.s = xor <8 x i64> %i.r, %i.q
  %i.t = mul <8 x i64> %i.s, splat (i64 7109453100751455733) ; 2 uses
  %i.u = lshr <8 x i64> %i.t, splat (i64 28)
  %i.v = xor <8 x i64> %i.u, %i.t
  %i.w = mul <8 x i64> %i.v, splat (i64 -3808689974395783757)
  %i.x = lshr <8 x i64> %i.w, splat (i64 32)
  %i.y = trunc nuw <8 x i64> %i.x to <8 x i32>    ; 3 uses
  %i.z = shl <8 x i32> %i.y, splat (i32 9)
  %i.aa = xor <8 x i32> %i.p, splat (i32 635086878) ; 2 uses
  %i.ab = xor <8 x i32> %i.y, splat (i32 -1171427716) ; 3 uses
  %i.ac = xor <8 x i32> %i.aa, %i.y               ; 3 uses
  %i.ad = xor <8 x i32> %i.ab, %i.p               ; 2 uses
  %i.ae = xor <8 x i32> %i.z, %i.aa
  %i.af = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ab, <8 x i32> splat (i32 11))
  %i.ag = shl <8 x i32> %i.ac, splat (i32 9)
  %i.ah = xor <8 x i32> %i.ae, %i.ad              ; 2 uses
  %i.ai = xor <8 x i32> %i.af, %i.ac              ; 3 uses
  %i.aj = xor <8 x i32> %i.ah, %i.ac              ; 3 uses
  %i.ak = xor <8 x i32> %i.ai, %i.ad              ; 2 uses
  %i.al = xor <8 x i32> %i.ah, %i.ag
  %i.am = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ai, <8 x i32> %i.ai, <8 x i32> splat (i32 11))
  %i.an = shl <8 x i32> %i.aj, splat (i32 9)
  %i.ao = xor <8 x i32> %i.al, %i.ak              ; 2 uses
  %i.ap = xor <8 x i32> %i.aj, %i.am              ; 3 uses
  %i.aq = xor <8 x i32> %i.ao, %i.aj              ; 2 uses
  %i.ar = xor <8 x i32> %i.ap, %i.ak              ; 2 uses
  %i.as = xor <8 x i32> %i.ao, %i.an
  %i.at = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 11))
  %i.au = xor <8 x i32> %i.as, %i.ar
  %i.av = xor <8 x i32> %i.aq, %i.at              ; 3 uses
  %i.aw = xor <8 x i32> %i.au, %i.aq
  %i.ax = xor <8 x i32> %i.av, %i.ar              ; 2 uses
  %i.ay = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.av, <8 x i32> %i.av, <8 x i32> splat (i32 11)) ; 2 uses
  %i.az = add <8 x i64> %vec.ind, %broadcast.splat56
  %i.ba = shl <8 x i64> %i.az, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.ba ; 4 uses
  %i.bb = extractelement <8 x ptr> %wide.gep, i64 0 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 16) ]
  %wide.gep59 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.vec = load <32 x float>, ptr %i.bb, align 16, !tbaa !40 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec60 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 6 uses
  %strided.vec61 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.bc = or <8 x i64> %vec.ind, %broadcast.splat
  %i.bd = xor <8 x i32> %i.aw, %i.ay              ; 3 uses
  %i.be = xor <8 x i32> %i.bd, %i.ax
  %i.bf = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bd, <8 x i32> %i.bd, <8 x i32> splat (i32 11))
  %i.bg = add <8 x i32> %i.bf, %i.be
  %i.bh = lshr <8 x i32> %i.bg, splat (i32 8)
  %i.bi = uitofp nneg <8 x i32> %i.bh to <8 x float>
  %i.bj = and <8 x i64> %i.bc, splat (i64 1)
  %i.bk = icmp eq <8 x i64> %i.bj, zeroinitializer
  %i.bl = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bi, splat (float f0x34C90FDB)
  %i.bm = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.bl) ; 2 uses
  %i.bn = extractvalue { <8 x float>, <8 x float> } %i.bm, 0
  %i.bo = extractvalue { <8 x float>, <8 x float> } %i.bm, 1
  %i.bp = select <8 x i1> %i.bk, <8 x float> %i.bn, <8 x float> %i.bo
  %i.bq = add <8 x i32> %i.ay, %i.ax
  %i.br = lshr <8 x i32> %i.bq, splat (i32 8)
  %i.bs = uitofp nneg <8 x i32> %i.br to <8 x float>
  %4 = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bs, <8 x float> splat (float f0x0C800000))
  %5 = fmul reassoc nnan nsz arcp contract afn <8 x float> %4, splat (float f0x33800000)
  %i.bt = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.log.v8f32(<8 x float> %5)
  %i.bu = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bt, splat (float -2.000000e+00)
  %i.bv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bu)
  %i.bw = fmul reassoc nsz arcp contract afn <8 x float> %i.bv, %broadcast.splat58
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %i.bw, %i.bp
  %i.by = fmul reassoc nsz arcp contract afn <8 x float> %i.bx, %strided.vec60
  %i.bz = fadd reassoc nsz arcp contract afn <8 x float> %i.by, %strided.vec60 ; 3 uses
  %i.ca = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, %strided.vec
  %i.cb = fdiv reassoc nsz arcp contract afn <8 x float> %i.ca, %strided.vec60
  %i.cc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cb, <8 x float> zeroinitializer)
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cc, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !40
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, %strided.vec60
  %i.ce = fdiv reassoc nsz arcp contract afn <8 x float> %i.cd, %strided.vec60
  %i.cf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ce, <8 x float> zeroinitializer)
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cf, <8 x ptr> align 4 %wide.gep59, <8 x i1> splat (i1 true)), !tbaa !40
  %wide.gep62 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, %strided.vec61
  %i.ch = fdiv reassoc nsz arcp contract afn <8 x float> %i.cg, %strided.vec60
  %i.ci = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ch, <8 x float> zeroinitializer)
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ci, <8 x ptr> align 4 %wide.gep62, <8 x i1> splat (i1 true)), !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %gaussian_noise.exit.preheader, label %vector.body, !llvm.loop !50

._crit_edge49.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %gaussian_noise.exit
  %i.ck = add nuw i64 %.02748, 1                  ; 2 uses
  %exitcond50.not = icmp eq i64 %i.ck, %3
  br i1 %exitcond50.not, label %._crit_edge49.split, label %.preheader

gaussian_noise.exit:                              ; preds = %gaussian_noise.exit.preheader, %gaussian_noise.exit
  %.02847 = phi i64 [ %i.cl, %gaussian_noise.exit ], [ %.02847.ph, %gaussian_noise.exit.preheader ] ; 3 uses
  %i.cl = add nuw i64 %.02847, 1                  ; 5 uses
  %i.cm = lshr i64 %i.cl, 33
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = mul i64 %i.cn, 7109453100751455733      ; 2 uses
  %i.cp = lshr i64 %i.co, 28
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = mul i64 %i.cq, -3808689974395783757
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = trunc nuw i64 %i.cs to i32              ; 2 uses
  %i.cu = mul i64 %i.cl, %i.f                     ; 2 uses
  %i.cv = lshr i64 %i.cu, 33
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = mul i64 %i.cw, 7109453100751455733      ; 2 uses
  %i.cy = lshr i64 %i.cx, 28
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = mul i64 %i.cz, -3808689974395783757
  %i.db = lshr i64 %i.da, 32
  %i.dc = trunc nuw i64 %i.db to i32              ; 3 uses
  %i.dd = shl i32 %i.dc, 9
  %i.de = xor i32 %i.ct, 635086878                ; 2 uses
  %i.df = xor i32 %i.dc, -1171427716              ; 3 uses
  %i.dg = xor i32 %i.de, %i.dc                    ; 3 uses
  %i.dh = xor i32 %i.df, %i.ct                    ; 2 uses
  %i.di = xor i32 %i.dd, %i.de
  %i.dj = tail call noundef i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 11)
  %i.dk = shl i32 %i.dg, 9
  %i.dl = xor i32 %i.di, %i.dh                    ; 2 uses
  %i.dm = xor i32 %i.dj, %i.dg                    ; 3 uses
  %i.dn = xor i32 %i.dl, %i.dg                    ; 3 uses
  %i.do = xor i32 %i.dm, %i.dh                    ; 2 uses
  %i.dp = xor i32 %i.dl, %i.dk
  %i.dq = tail call noundef i32 @llvm.fshl.i32(i32 %i.dm, i32 %i.dm, i32 11)
  %i.dr = shl i32 %i.dn, 9
  %i.ds = xor i32 %i.dp, %i.do                    ; 2 uses
  %i.dt = xor i32 %i.dn, %i.dq                    ; 3 uses
  %i.du = xor i32 %i.ds, %i.dn                    ; 2 uses
  %i.dv = xor i32 %i.dt, %i.do                    ; 2 uses
  %i.dw = xor i32 %i.ds, %i.dr
  %i.dx = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 11)
  %i.dy = xor i32 %i.dw, %i.dv
  %i.dz = xor i32 %i.du, %i.dx                    ; 3 uses
  %i.ea = xor i32 %i.dy, %i.du
  %i.eb = xor i32 %i.dz, %i.dv                    ; 2 uses
  %i.ec = tail call noundef i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 11) ; 2 uses
  %i.ed = add i64 %.02847, %i.g
  %.idx = shl i64 %i.ed, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ee, i64 16) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = or i64 %.02847, %.02748
  %i.eh = xor i32 %i.ea, %i.ec                    ; 3 uses
  %i.ei = xor i32 %i.eh, %i.eb
  %i.ej = tail call noundef i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 11)
  %i.ek = add i32 %i.ej, %i.ei
  %i.el = lshr i32 %i.ek, 8
  %i.em = uitofp reassoc nsz arcp contract afn nneg i32 %i.el to float
  %i.en = and i64 %i.eg, 1
  %.not.i = icmp eq i64 %i.en, 0
  %i.eo = fmul reassoc nnan nsz arcp contract afn float %i.em, f0x34C90FDB
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.eo) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %.sink.i = select i1 %.not.i, float %sin.i, float %cos.i
  %i.ep = add i32 %i.ec, %i.eb
  %i.eq = lshr i32 %i.ep, 8
  %i.er = uitofp reassoc nsz arcp contract afn nneg i32 %i.eq to float
  %6 = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.er, float f0x0C800000)
  %7 = fmul reassoc nnan nsz arcp contract afn float %6, f0x33800000
  %i.es = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %7)
  %i.et = fmul reassoc nnan nsz arcp contract afn float %i.es, -2.000000e+00
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.et)
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, %1
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, %.sink.i
  %i.ex = load float, ptr %i.ef, align 4, !tbaa !40 ; 3 uses
  %i.ey = load <2 x float>, ptr %i.ee, align 16, !tbaa !40 ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ew, %i.ex
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.ex ; 2 uses
  %i.fb = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul reassoc nsz arcp contract afn <2 x float> %i.fc, %i.ey
  %i.fe = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = fdiv reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fe
  %i.fg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ff, <2 x float> zeroinitializer)
  store <2 x float> %i.fg, ptr %i.ee, align 16, !tbaa !40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 8, !tbaa !40
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fa, %i.fi
  %.reass.2 = fdiv reassoc nsz arcp contract afn float %i.fj, %i.ex
  %i.fk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.reass.2, float 0.000000e+00)
  store float %i.fk, ptr %i.fh, align 8, !tbaa !40
  %exitcond.not = icmp eq i64 %i.cl, %2
  br i1 %exitcond.not, label %._crit_edge, label %gaussian_noise.exit, !llvm.loop !51
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 32) #15 ; 8 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !52
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.6) #15
  store ptr %i.c, ptr %i.a, align 8, !tbaa !64
  %i.d = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.7) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !66
  %i.f = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.8) #15
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !67
  %i.h = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.9) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !68
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #15
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.j, ptr noundef %i.k) #15
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #15
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.l, ptr noundef %i.m) #15
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #15
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.n, ptr noundef %i.o) #15
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.q = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #15
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.p, ptr noundef %i.q) #15
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !69
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !73
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !73
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !73
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !73
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !73
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !73
  store ptr @introspection_init.f4, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 424), align 8, !tbaa !73
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.6) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.7) #16
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.8) #16
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.9) #16
  %.not12 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %spec.select = select i1 %.not12, ptr %i.g, ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.f ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.6) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.7) #15
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.8) #15
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.9) #15
  %.not7 = icmp eq i32 %i.d, 0
  %. = select i1 %.not7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ %., %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #6
end_hunk_0
