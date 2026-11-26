Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacsbr_fixed?download=true
inline.NumInlined: 254
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@sbr_qmf_synthesis:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 9728
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = lshr exact i32 64, %10                   ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 9 uses
  %i.r = lshr exact i32 192, %10
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = zext nneg i32 %i.p to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = lshr exact i32 256, %10
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = zext nneg i32 %i.b to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  %i.z = lshr exact i32 448, %10
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s
  %i.ac = lshr exact i32 512, %10
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.w
  %i.af = lshr exact i32 704, %10
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr exact i32 320, %10
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai
  %i.ak = lshr exact i32 768, %10
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = lshr exact i32 384, %10
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an
  %i.ap = lshr exact i32 960, %10
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aa
  %i.as = lshr exact i32 1024, %10
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  %i.av = lshr exact i32 1216, %10
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr exact i32 576, %10
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ay
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.0143 = phi ptr [ %4, %bb.a ], [ %i.ef, %bb.f ] ; 20 uses
  %i.ba = load i32, ptr %8, align 4, !tbaa !14    ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.b
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(1) %7, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pn = phi i32 [ %i.e, %bb.c ], [ %i.ba, %bb.b ]
  %storemerge = sub nsw i32 %.pn, %i.b            ; 2 uses
  store i32 %storemerge, ptr %8, align 4, !tbaa !14
  %i.bc = sext i32 %storemerge to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bc ; 12 uses
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %i.j, i64 %indvars.iv ; 10 uses
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw [256 x i8], ptr %5, i64 %indvars.iv ; 18 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bh = load <4 x i32>, ptr %i.bf, align 4, !tbaa !14
  %i.bi = sub nsw <4 x i32> zeroinitializer, %i.bh
  store <4 x i32> %i.bi, ptr %i.bf, align 4, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.bk = load <4 x i32>, ptr %i.bj, align 4, !tbaa !14
  %i.bl = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.bl, ptr %i.bg, align 4, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bo = load <4 x i32>, ptr %i.bm, align 4, !tbaa !14
  %i.bp = sub nsw <4 x i32> zeroinitializer, %i.bo
  store <4 x i32> %i.bp, ptr %i.bm, align 4, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.br = load <4 x i32>, ptr %i.bq, align 4, !tbaa !14
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.bs, ptr %i.bn, align 4, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 160
  %i.bv = load <4 x i32>, ptr %i.bt, align 4, !tbaa !14
  %i.bw = sub nsw <4 x i32> zeroinitializer, %i.bv
  store <4 x i32> %i.bw, ptr %i.bt, align 4, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.by = load <4 x i32>, ptr %i.bx, align 4, !tbaa !14
  %i.bz = shufflevector <4 x i32> %i.by, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.bz, ptr %i.bu, align 4, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 48 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 176
  %i.cc = load <4 x i32>, ptr %i.ca, align 4, !tbaa !14
  %i.cd = sub nsw <4 x i32> zeroinitializer, %i.cc
  store <4 x i32> %i.cd, ptr %i.ca, align 4, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.cf = load <4 x i32>, ptr %i.ce, align 4, !tbaa !14
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.cg, ptr %i.cb, align 4, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 64 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  %i.cj = load <4 x i32>, ptr %i.ch, align 4, !tbaa !14
  %i.ck = sub nsw <4 x i32> zeroinitializer, %i.cj
  store <4 x i32> %i.ck, ptr %i.ch, align 4, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.cm = load <4 x i32>, ptr %i.cl, align 4, !tbaa !14
  %i.cn = shufflevector <4 x i32> %i.cm, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.cn, ptr %i.ci, align 4, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 80 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 208
  %i.cq = load <4 x i32>, ptr %i.co, align 4, !tbaa !14
  %i.cr = sub nsw <4 x i32> zeroinitializer, %i.cq
  store <4 x i32> %i.cr, ptr %i.co, align 4, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.ct = load <4 x i32>, ptr %i.cs, align 4, !tbaa !14
  %i.cu = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.cu, ptr %i.cp, align 4, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bf, i64 96 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.cx = load <4 x i32>, ptr %i.cv, align 4, !tbaa !14
  %i.cy = sub nsw <4 x i32> zeroinitializer, %i.cx
  store <4 x i32> %i.cy, ptr %i.cv, align 4, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.da = load <4 x i32>, ptr %i.cz, align 4, !tbaa !14
  %i.db = shufflevector <4 x i32> %i.da, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.db, ptr %i.cw, align 4, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bf, i64 112 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.de = load <4 x i32>, ptr %i.dc, align 4, !tbaa !14
  %i.df = sub nsw <4 x i32> zeroinitializer, %i.de
  store <4 x i32> %i.df, ptr %i.dc, align 4, !tbaa !14
  %i.dg = load <4 x i32>, ptr %i.be, align 4, !tbaa !14
  %i.dh = shufflevector <4 x i32> %i.dg, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.dh, ptr %i.dd, align 4, !tbaa !14
  tail call void %1(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %i.bf, i64 noundef 4) #12
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !218
  tail call void %i.di(ptr noundef %i.bd, ptr noundef %6) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dj = load ptr, ptr %i.l, align 8, !tbaa !219
  tail call void %i.dj(ptr noundef nonnull %i.be) #12
  %i.dk = getelementptr inbounds nuw [256 x i8], ptr %5, i64 %indvars.iv
  tail call void %1(ptr noundef %0, ptr noundef %6, ptr noundef %i.dk, i64 noundef 4) #12
  tail call void %1(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.be, i64 noundef 4) #12
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !220
  tail call void %i.dl(ptr noundef %i.bd, ptr noundef nonnull %i.m, ptr noundef %6) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !221
  tail call void %i.dm(ptr noundef %.0143, ptr noundef %i.bd, ptr noundef nonnull %i.a, i32 noundef %i.p) #12
  %i.dn = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.s
  tail call void %i.dn(ptr noundef %.0143, ptr noundef nonnull %i.do, ptr noundef nonnull %i.u, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.dp = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.w
  tail call void %i.dp(ptr noundef %.0143, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.y, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.aa
  tail call void %i.dr(ptr noundef %.0143, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.ab, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.dt = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ad
  tail call void %i.dt(ptr noundef %.0143, ptr noundef nonnull %i.du, ptr noundef nonnull %i.ae, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ag
  tail call void %i.dv(ptr noundef %.0143, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.aj, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.al
  tail call void %i.dx(ptr noundef %.0143, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.ao, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.aq
  tail call void %i.dz(ptr noundef %.0143, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ar, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.eb = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  tail call void %i.eb(ptr noundef %.0143, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.au, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.ed = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.aw
  tail call void %i.ed(ptr noundef %.0143, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.az, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0143, i64 %i.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !217

bb.g:                                             ; preds = %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @ff_psdsp_init_fixed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sbr_make_f_tablelim(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [7 x i16], align 2                ; 11 uses
  %i.b = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.d, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @sbr_make_f_tablelim.bands_warped, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 347842 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 347844 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = trunc i32 %i.l to i16                    ; 3 uses
  store i16 %i.m, ptr %i.a, align 2, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 347904 ; 3 uses
  %i.o = load i32, ptr %i.n, align 16, !tbaa !64  ; 3 uses
  %.not190235 = icmp slt i32 %i.o, 1
  br i1 %.not190235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %1 = getelementptr i8, ptr %0, i64 347907       ; 5 uses
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %xtraiter = and i64 %i.p, 3                     ; 3 uses
  %i.q = icmp ult i32 %i.o, 4
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.p, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %i.r = phi i16 [ %i.m, %.lr.ph.new ], [ %i.ak, %bb.c ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = zext i8 %i.t to i16
  %i.v = add i16 %i.r, %i.u                       ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.v, ptr %i.w, align 2, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 %indvars.iv.next
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i16
  %i.aa = add i16 %i.v, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %indvars.iv.next.1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i16
  %i.af = add i16 %i.aa, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr i8, ptr %1, i64 %indvars.iv.next.2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i16
  %i.ak = add i16 %i.af, %i.aj                    ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !223

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i16 [ %i.m, %.lr.ph ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod312 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod312)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.am = phi i16 [ %.epil.init, %.epil.preheader ], [ %i.aq, %bb.d ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.an = getelementptr i8, ptr %1, i64 %indvars.iv.epil
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = zext i8 %i.ao to i16
  %i.aq = add i16 %i.am, %i.ap                    ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.epil
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !58
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !224

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 347682
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 347568 ; 2 uses
  %i.au = load i32, ptr %i.at, align 16, !tbaa !14 ; 3 uses
  %i.av = add nsw i32 %i.au, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.i, ptr nonnull align 2 %i.as, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %i.n, align 16, !tbaa !64 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ba = sext i32 %i.au to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.be = add nsw i32 %i.ay, -1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bc, ptr nonnull align 2 %i.bd, i64 %i.bg, i1 false)
  %.pr = load i32, ptr %i.n, align 16, !tbaa !64
  %.pre = load i32, ptr %i.at, align 16, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.bh = phi i32 [ %i.au, %._crit_edge ], [ %.pre, %bb.e ]
  %i.bi = phi i32 [ %i.ay, %._crit_edge ], [ %.pr, %bb.e ]
  %.fr = freeze i32 %i.bi                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr %i.i, ptr %i.b, align 16, !tbaa !27
  %i.bj = add nsw i32 %i.bh, %.fr                 ; 3 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.0168256 = phi i32 [ 1, %bb.f ], [ %.1169232, %.thread ] ; 2 uses
  %i.bo = add nsw i32 %.0168256, -1               ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !27 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !27 ; 2 uses
  %i.bu = icmp ult ptr %i.br, %i.bt
  br i1 %i.bu, label %.lr.ph251.preheader, label %.thread

.lr.ph251.preheader:                              ; preds = %bb.g
  %i.bv = sext i32 %.0168256 to i64
  %i.bw = add nsw i64 %i.bv, -1
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %.lr.ph251.preheader, %bb.z
  %indvars.iv269 = phi i64 [ %i.bw, %.lr.ph251.preheader ], [ %indvars.iv.next270, %bb.z ] ; 6 uses
  %.0170248 = phi ptr [ %i.br, %.lr.ph251.preheader ], [ %.1171, %bb.z ] ; 12 uses
  %.0173247 = phi ptr [ %i.bt, %.lr.ph251.preheader ], [ %.1174, %bb.z ] ; 13 uses
  %i.bx = getelementptr inbounds i8, ptr %.0173247, i64 -2 ; 5 uses
  %i.by = icmp ult ptr %.0170248, %i.bx
  br i1 %i.by, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %.lr.ph251
  %i.bz = getelementptr inbounds i8, ptr %.0173247, i64 -4 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0170248, i64 2 ; 3 uses
  %i.cb = ptrtoint ptr %.0173247 to i64           ; 2 uses
  %i.cc = ptrtoint ptr %.0170248 to i64           ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr i64 %i.cd, 2
  %i.cf = getelementptr inbounds [2 x i8], ptr %.0170248, i64 %i.ce ; 8 uses
  %.0170.val208 = load i16, ptr %.0170248, align 2, !tbaa !58 ; 5 uses
  %.0173.val209 = load i16, ptr %.0173247, align 2, !tbaa !58 ; 3 uses
  %i.cg = icmp sgt i16 %.0170.val208, %.0173.val209
  %.val207 = load i16, ptr %i.cf, align 2, !tbaa !58 ; 4 uses
  br i1 %i.cg, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ch = icmp sgt i16 %.0173.val209, %.val207
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 %.0170.val208, ptr %i.cf, align 2, !tbaa !58
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  store i16 %.0170.val208, ptr %.0173247, align 2, !tbaa !58
  br label %.sink.split

bb.l:                                             ; preds = %bb.h
  %i.ci = icmp sgt i16 %.0170.val208, %.val207
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i16 %.0170.val208, ptr %i.cf, align 2, !tbaa !58
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.j, %bb.m
  %.val207.sink = phi i16 [ %.val207, %bb.m ], [ %.val207, %bb.j ], [ %.0173.val209, %bb.k ]
  store i16 %.val207.sink, ptr %.0170248, align 2, !tbaa !58
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l
  %.0176 = phi i32 [ 1, %bb.l ], [ 0, %.sink.split ]
  %.val202 = load i16, ptr %i.cf, align 2, !tbaa !58 ; 3 uses
  %.0173.val203 = load i16, ptr %.0173247, align 2, !tbaa !58 ; 3 uses
  %i.cj = icmp sgt i16 %.val202, %.0173.val203
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 %.val202, ptr %.0173247, align 2, !tbaa !58
  store i16 %.0173.val203, ptr %i.cf, align 2, !tbaa !58
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.val201.pre272 = phi i16 [ %.0173.val203, %bb.o ], [ %.val202, %bb.n ] ; 4 uses
  %.1177 = phi i32 [ 0, %bb.o ], [ %.0176, %bb.n ]
  %i.ck = icmp eq ptr %.0170248, %i.bz
  br i1 %i.ck, label %.thread.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = load i16, ptr %i.bx, align 2, !tbaa !58
  store i16 %i.cl, ptr %i.cf, align 2, !tbaa !58
  store i16 %.val201.pre272, ptr %i.bx, align 2, !tbaa !58
  %.not195241 = icmp ugt ptr %i.ca, %i.bz
  br i1 %.not195241, label %._crit_edge244, label %.preheader

.preheader:                                       ; preds = %bb.q, %.critedge199
  %.val200 = phi i16 [ %.val200275, %.critedge199 ], [ %.val201.pre272, %bb.q ] ; 4 uses
  %.val201 = phi i16 [ %.val201273, %.critedge199 ], [ %.val201.pre272, %bb.q ] ; 2 uses
  %.0179243 = phi ptr [ %.2181, %.critedge199 ], [ %i.ca, %bb.q ]
  %.0182242 = phi ptr [ %.2184, %.critedge199 ], [ %i.bz, %bb.q ] ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.s
  %.1180237 = phi ptr [ %.0179243, %.preheader ], [ %i.cn, %bb.s ] ; 3 uses
  %.1180.val = load i16, ptr %.1180237, align 2, !tbaa !58
  %i.cm = icmp slt i16 %.1180.val, %.val201
  br i1 %i.cm, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.1180237, i64 2 ; 3 uses
  %.not197 = icmp ugt ptr %i.cn, %.0182242
  br i1 %.not197, label %.critedge, label %bb.r, !llvm.loop !225

.critedge:                                        ; preds = %bb.s, %bb.r
  %.1180.lcssa = phi ptr [ %i.cn, %bb.s ], [ %.1180237, %bb.r ] ; 7 uses
  %.not198238 = icmp ugt ptr %.1180.lcssa, %.0182242
  br i1 %.not198238, label %.critedge199, label %.lr.ph240

.lr.ph240:                                        ; preds = %.critedge, %bb.t
  %.1183239 = phi ptr [ %i.cp, %bb.t ], [ %.0182242, %.critedge ] ; 4 uses
  %.1183.val = load i16, ptr %.1183239, align 2, !tbaa !58 ; 2 uses
  %i.co = icmp sgt i16 %.1183.val, %.val200
  br i1 %i.co, label %bb.t, label %.critedge2

bb.t:                                             ; preds = %.lr.ph240
  %i.cp = getelementptr inbounds i8, ptr %.1183239, i64 -2 ; 3 uses
  %.not198 = icmp ugt ptr %.1180.lcssa, %i.cp
  br i1 %.not198, label %.critedge199, label %.lr.ph240, !llvm.loop !226

.critedge2:                                       ; preds = %.lr.ph240
  %i.cq = load i16, ptr %.1180.lcssa, align 2, !tbaa !58
  store i16 %i.cq, ptr %.1183239, align 2, !tbaa !58
  store i16 %.1183.val, ptr %.1180.lcssa, align 2, !tbaa !58
  %i.cr = getelementptr inbounds nuw i8, ptr %.1180.lcssa, i64 2
  %i.cs = getelementptr inbounds i8, ptr %.1183239, i64 -2
  %.val201.pre = load i16, ptr %i.bx, align 2, !tbaa !58 ; 2 uses
  br label %.critedge199

.critedge199:                                     ; preds = %bb.t, %.critedge, %.critedge2
  %.val200275 = phi i16 [ %.val201.pre, %.critedge2 ], [ %.val200, %.critedge ], [ %.val200, %bb.t ] ; 2 uses
  %.val201273 = phi i16 [ %.val201.pre, %.critedge2 ], [ %.val201, %.critedge ], [ %.val200, %bb.t ]
  %.2184 = phi ptr [ %i.cs, %.critedge2 ], [ %.0182242, %.critedge ], [ %i.cp, %bb.t ] ; 3 uses
  %.2181 = phi ptr [ %i.cr, %.critedge2 ], [ %.1180.lcssa, %.critedge ], [ %.1180.lcssa, %bb.t ] ; 3 uses
  %.not195 = icmp ugt ptr %.2181, %.2184
  br i1 %.not195, label %._crit_edge244, label %.preheader, !llvm.loop !227

._crit_edge244:                                   ; preds = %.critedge199, %bb.q
  %i.ct = phi i16 [ %.val201.pre272, %bb.q ], [ %.val200275, %.critedge199 ]
  %.0182.lcssa = phi ptr [ %i.bz, %bb.q ], [ %.2184, %.critedge199 ] ; 2 uses
  %.0179.lcssa = phi ptr [ %i.ca, %bb.q ], [ %.2181, %.critedge199 ] ; 7 uses
  %i.cu = load i16, ptr %.0179.lcssa, align 2, !tbaa !58
  store i16 %i.ct, ptr %.0179.lcssa, align 2, !tbaa !58
  store i16 %i.cu, ptr %i.bx, align 2, !tbaa !58
  %.not196 = icmp eq i32 %.1177, 0
  br i1 %.not196, label %bb.w, label %bb.u

bb.u:                                             ; preds = %._crit_edge244
  %i.cv = getelementptr inbounds i8, ptr %.0179.lcssa, i64 -2
end_hunk_0
