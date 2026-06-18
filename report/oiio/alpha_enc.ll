inline.NumInlined: 12
inline.NumDeleted: 11
begin_hunk_0_@VP8EncInitAlpha:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @WebPInitAlphaProcessing() local_unnamed_addr #1

declare i32 @WebPPictureHasTransparency(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @WebPGetWorkerInterface() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CompressAlphaJob(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 72 uses
  %2 = alloca %struct.FilterTrial, align 8        ; 15 uses
  %3 = alloca %struct.FilterTrial, align 8        ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %i.g, 1
  %i.j = select i1 %i.i, i32 6, i32 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7    ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !42   ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45   ; 8 uses
  %i.u = mul nsw i32 %i.t, %i.r
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8, !tbaa !46
  %i.w = icmp slt i32 %i.l, 100                   ; 2 uses
  %i.x = zext i1 %i.w to i32                      ; 2 uses
  %or.cond.i = icmp ugt i32 %i.l, 100
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %i.p, i32 noundef 4) #6
  br label %EncodeAlpha.exit

bb.c:                                             ; preds = %bb.a
  %or.cond3.i = icmp ugt i32 %i.n, 1
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %i.p, i32 noundef 4) #6
  br label %EncodeAlpha.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %i.n, 0
  %i.ab = select i1 %i.aa, i1 true, i1 %i.h
  %spec.select.i = select i1 %i.ab, i32 0, i32 %i.j
  %i.ac = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.v) #6 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %i.p, i32 noundef 1) #6
  br label %EncodeAlpha.exit

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !48
  tail call void @WebPCopyPlane(ptr noundef %i.ag, i32 noundef %i.ai, ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.r, i32 noundef %i.t) #6
  br i1 %i.w, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp samesign ult i32 %i.l, 71
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.lhs.trunc.i = trunc nuw nsw i32 %i.l to i8
  %i.ak = udiv i8 %.lhs.trunc.i, 5
  %narrow.i = add nuw nsw i8 %i.ak, 2
  %i.al = zext nneg i8 %narrow.i to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = shl nuw nsw i32 %i.l, 3
  %i.an = add nsw i32 %i.am, -544
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = phi i32 [ %i.al, %bb.i ], [ %i.an, %bb.j ]
  %i.ap = call i32 @QuantizeLevels(ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.ao, ptr noundef nonnull %i.b) #6
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.af, label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %bb.g
  call void @VP8FiltersInit() #6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  switch i32 %spec.select.i, label %GetFilterMap.exit.thread60.i.i [
    i32 6, label %bb.l
    i32 0, label %GetFilterMap.exit.thread.i.i
  ]

GetFilterMap.exit.thread.i.i:                     ; preds = %.critedge.i
  store i64 4294967295, ptr %2, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.au = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.at, i64 noundef 0) #6 ; 0 uses
  br label %bb.x

bb.l:                                             ; preds = %.critedge.i
  %i.av = icmp sgt i32 %i.e, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.aw = icmp sgt i32 %i.t, 0
  %i.ax = icmp sgt i32 %i.r, 0
  %or.cond.i.i.i.i = and i1 %i.ax, %i.aw
  br i1 %or.cond.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %vector.body.preheader

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %i.ay = zext nneg i32 %i.r to i64               ; 3 uses
  %wide.trip.count28.i.i.i.i = zext nneg i32 %i.t to i64
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.az = icmp ult i32 %i.r, 4
  %unroll_iter = and i64 %i.ay, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv25.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next26.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ba = mul nuw nsw i64 %indvars.iv25.i.i.i.i, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ba ; 5 uses
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i.new ], [ 0, %.lr.ph.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.new ], [ 0, %.lr.ph.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !53
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  store i8 1, ptr %i.bf, align 1, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !53
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  store i8 1, ptr %i.bk, align 1, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !53
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  store i8 1, ptr %i.bp, align 1, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !53
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  store i8 1, ptr %i.bu, align 1, !tbaa !53
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.new, !llvm.loop !54

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %.lr.ph.i.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.3, %._crit_edge.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.i.epil, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.i.i.epil
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !53
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  store i8 1, ptr %i.by, align 1, !tbaa !53
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i, label %bb.m, !llvm.loop !56

._crit_edge.i.i.i.i:                              ; preds = %bb.m, %._crit_edge.i.i.i.i.unr-lcssa
  %indvars.iv.next26.i.i.i.i = add nuw nsw i64 %indvars.iv25.i.i.i.i, 1 ; 2 uses
  %exitcond29.not.i.i.i.i = icmp eq i64 %indvars.iv.next26.i.i.i.i, %wide.trip.count28.i.i.i.i
  br i1 %exitcond29.not.i.i.i.i, label %vector.body.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !58

vector.body.preheader:                            ; preds = %._crit_edge.i.i.i.i, %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.load = load <4 x i8>, ptr %i.a, align 16, !tbaa !53
  %wide.load30 = load <4 x i8>, ptr %i.bz, align 4, !tbaa !53
  %i.ca = icmp ne <4 x i8> %wide.load, zeroinitializer
  %i.cb = icmp ne <4 x i8> %wide.load30, zeroinitializer
  %i.cc = zext <4 x i1> %i.ca to <4 x i32>
  %i.cd = zext <4 x i1> %i.cb to <4 x i32>
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.ce, align 8, !tbaa !53
  %wide.load30.1 = load <4 x i8>, ptr %i.cf, align 4, !tbaa !53
  %i.cg = icmp ne <4 x i8> %wide.load.1, zeroinitializer
  %i.ch = icmp ne <4 x i8> %wide.load30.1, zeroinitializer
  %i.ci = zext <4 x i1> %i.cg to <4 x i32>
  %i.cj = zext <4 x i1> %i.ch to <4 x i32>
  %i.ck = add nuw nsw <4 x i32> %i.cc, %i.ci
  %i.cl = add nuw nsw <4 x i32> %i.cd, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %wide.load.2 = load <4 x i8>, ptr %i.cm, align 16, !tbaa !53
  %wide.load30.2 = load <4 x i8>, ptr %i.cn, align 4, !tbaa !53
  %i.co = icmp ne <4 x i8> %wide.load.2, zeroinitializer
  %i.cp = icmp ne <4 x i8> %wide.load30.2, zeroinitializer
  %i.cq = zext <4 x i1> %i.co to <4 x i32>
  %i.cr = zext <4 x i1> %i.cp to <4 x i32>
  %i.cs = add nuw nsw <4 x i32> %i.ck, %i.cq
  %i.ct = add nuw nsw <4 x i32> %i.cl, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %wide.load.3 = load <4 x i8>, ptr %i.cu, align 8, !tbaa !53
  %wide.load30.3 = load <4 x i8>, ptr %i.cv, align 4, !tbaa !53
  %i.cw = icmp ne <4 x i8> %wide.load.3, zeroinitializer
  %i.cx = icmp ne <4 x i8> %wide.load30.3, zeroinitializer
  %i.cy = zext <4 x i1> %i.cw to <4 x i32>
  %i.cz = zext <4 x i1> %i.cx to <4 x i32>
  %i.da = add nuw nsw <4 x i32> %i.cs, %i.cy
  %i.db = add nuw nsw <4 x i32> %i.ct, %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %wide.load.4 = load <4 x i8>, ptr %i.dc, align 16, !tbaa !53
  %wide.load30.4 = load <4 x i8>, ptr %i.dd, align 4, !tbaa !53
  %i.de = icmp ne <4 x i8> %wide.load.4, zeroinitializer
  %i.df = icmp ne <4 x i8> %wide.load30.4, zeroinitializer
  %i.dg = zext <4 x i1> %i.de to <4 x i32>
  %i.dh = zext <4 x i1> %i.df to <4 x i32>
  %i.di = add nuw nsw <4 x i32> %i.da, %i.dg
  %i.dj = add nuw nsw <4 x i32> %i.db, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %wide.load.5 = load <4 x i8>, ptr %i.dk, align 8, !tbaa !53
  %wide.load30.5 = load <4 x i8>, ptr %i.dl, align 4, !tbaa !53
  %i.dm = icmp ne <4 x i8> %wide.load.5, zeroinitializer
  %i.dn = icmp ne <4 x i8> %wide.load30.5, zeroinitializer
  %i.do = zext <4 x i1> %i.dm to <4 x i32>
  %i.dp = zext <4 x i1> %i.dn to <4 x i32>
  %i.dq = add nuw nsw <4 x i32> %i.di, %i.do
  %i.dr = add nuw nsw <4 x i32> %i.dj, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %wide.load.6 = load <4 x i8>, ptr %i.ds, align 16, !tbaa !53
  %wide.load30.6 = load <4 x i8>, ptr %i.dt, align 4, !tbaa !53
  %i.du = icmp ne <4 x i8> %wide.load.6, zeroinitializer
  %i.dv = icmp ne <4 x i8> %wide.load30.6, zeroinitializer
  %i.dw = zext <4 x i1> %i.du to <4 x i32>
  %i.dx = zext <4 x i1> %i.dv to <4 x i32>
  %i.dy = add nuw nsw <4 x i32> %i.dq, %i.dw
  %i.dz = add nuw nsw <4 x i32> %i.dr, %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %wide.load.7 = load <4 x i8>, ptr %i.ea, align 8, !tbaa !53
  %wide.load30.7 = load <4 x i8>, ptr %i.eb, align 4, !tbaa !53
  %i.ec = icmp ne <4 x i8> %wide.load.7, zeroinitializer
  %i.ed = icmp ne <4 x i8> %wide.load30.7, zeroinitializer
  %i.ee = zext <4 x i1> %i.ec to <4 x i32>
  %i.ef = zext <4 x i1> %i.ed to <4 x i32>
  %i.eg = add <4 x i32> %i.dy, %i.ee
  %i.eh = add <4 x i32> %i.dz, %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %wide.load.8 = load <4 x i8>, ptr %i.ei, align 16, !tbaa !53
  %wide.load30.8 = load <4 x i8>, ptr %i.ej, align 4, !tbaa !53
  %i.ek = icmp ne <4 x i8> %wide.load.8, zeroinitializer
  %i.el = icmp ne <4 x i8> %wide.load30.8, zeroinitializer
  %i.em = zext <4 x i1> %i.ek to <4 x i32>
  %i.en = zext <4 x i1> %i.el to <4 x i32>
  %i.eo = add <4 x i32> %i.eg, %i.em
  %i.ep = add <4 x i32> %i.eh, %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %wide.load.9 = load <4 x i8>, ptr %i.eq, align 8, !tbaa !53
  %wide.load30.9 = load <4 x i8>, ptr %i.er, align 4, !tbaa !53
  %i.es = icmp ne <4 x i8> %wide.load.9, zeroinitializer
  %i.et = icmp ne <4 x i8> %wide.load30.9, zeroinitializer
  %i.eu = zext <4 x i1> %i.es to <4 x i32>
  %i.ev = zext <4 x i1> %i.et to <4 x i32>
  %i.ew = add <4 x i32> %i.eo, %i.eu
  %i.ex = add <4 x i32> %i.ep, %i.ev
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %wide.load.10 = load <4 x i8>, ptr %i.ey, align 16, !tbaa !53
  %wide.load30.10 = load <4 x i8>, ptr %i.ez, align 4, !tbaa !53
  %i.fa = icmp ne <4 x i8> %wide.load.10, zeroinitializer
  %i.fb = icmp ne <4 x i8> %wide.load30.10, zeroinitializer
  %i.fc = zext <4 x i1> %i.fa to <4 x i32>
  %i.fd = zext <4 x i1> %i.fb to <4 x i32>
  %i.fe = add <4 x i32> %i.ew, %i.fc
  %i.ff = add <4 x i32> %i.ex, %i.fd
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %wide.load.11 = load <4 x i8>, ptr %i.fg, align 8, !tbaa !53
  %wide.load30.11 = load <4 x i8>, ptr %i.fh, align 4, !tbaa !53
  %i.fi = icmp ne <4 x i8> %wide.load.11, zeroinitializer
  %i.fj = icmp ne <4 x i8> %wide.load30.11, zeroinitializer
  %i.fk = zext <4 x i1> %i.fi to <4 x i32>
  %i.fl = zext <4 x i1> %i.fj to <4 x i32>
  %i.fm = add <4 x i32> %i.fe, %i.fk
  %i.fn = add <4 x i32> %i.ff, %i.fl
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %wide.load.12 = load <4 x i8>, ptr %i.fo, align 16, !tbaa !53
  %wide.load30.12 = load <4 x i8>, ptr %i.fp, align 4, !tbaa !53
  %i.fq = icmp ne <4 x i8> %wide.load.12, zeroinitializer
  %i.fr = icmp ne <4 x i8> %wide.load30.12, zeroinitializer
  %i.fs = zext <4 x i1> %i.fq to <4 x i32>
  %i.ft = zext <4 x i1> %i.fr to <4 x i32>
  %i.fu = add <4 x i32> %i.fm, %i.fs
  %i.fv = add <4 x i32> %i.fn, %i.ft
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %wide.load.13 = load <4 x i8>, ptr %i.fw, align 8, !tbaa !53
  %wide.load30.13 = load <4 x i8>, ptr %i.fx, align 4, !tbaa !53
  %i.fy = icmp ne <4 x i8> %wide.load.13, zeroinitializer
  %i.fz = icmp ne <4 x i8> %wide.load30.13, zeroinitializer
  %i.ga = zext <4 x i1> %i.fy to <4 x i32>
  %i.gb = zext <4 x i1> %i.fz to <4 x i32>
  %i.gc = add <4 x i32> %i.fu, %i.ga
  %i.gd = add <4 x i32> %i.fv, %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %wide.load.14 = load <4 x i8>, ptr %i.ge, align 16, !tbaa !53
  %wide.load30.14 = load <4 x i8>, ptr %i.gf, align 4, !tbaa !53
  %i.gg = icmp ne <4 x i8> %wide.load.14, zeroinitializer
  %i.gh = icmp ne <4 x i8> %wide.load30.14, zeroinitializer
  %i.gi = zext <4 x i1> %i.gg to <4 x i32>
  %i.gj = zext <4 x i1> %i.gh to <4 x i32>
  %i.gk = add <4 x i32> %i.gc, %i.gi
  %i.gl = add <4 x i32> %i.gd, %i.gj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %wide.load.15 = load <4 x i8>, ptr %i.gm, align 8, !tbaa !53
  %wide.load30.15 = load <4 x i8>, ptr %i.gn, align 4, !tbaa !53
  %i.go = icmp ne <4 x i8> %wide.load.15, zeroinitializer
  %i.gp = icmp ne <4 x i8> %wide.load30.15, zeroinitializer
  %i.gq = zext <4 x i1> %i.go to <4 x i32>
  %i.gr = zext <4 x i1> %i.gp to <4 x i32>
  %i.gs = add <4 x i32> %i.gk, %i.gq
  %i.gt = add <4 x i32> %i.gl, %i.gr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %wide.load.16 = load <4 x i8>, ptr %i.gu, align 16, !tbaa !53
  %wide.load30.16 = load <4 x i8>, ptr %i.gv, align 4, !tbaa !53
  %i.gw = icmp ne <4 x i8> %wide.load.16, zeroinitializer
  %i.gx = icmp ne <4 x i8> %wide.load30.16, zeroinitializer
  %i.gy = zext <4 x i1> %i.gw to <4 x i32>
  %i.gz = zext <4 x i1> %i.gx to <4 x i32>
  %i.ha = add <4 x i32> %i.gs, %i.gy
  %i.hb = add <4 x i32> %i.gt, %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %wide.load.17 = load <4 x i8>, ptr %i.hc, align 8, !tbaa !53
  %wide.load30.17 = load <4 x i8>, ptr %i.hd, align 4, !tbaa !53
  %i.he = icmp ne <4 x i8> %wide.load.17, zeroinitializer
  %i.hf = icmp ne <4 x i8> %wide.load30.17, zeroinitializer
  %i.hg = zext <4 x i1> %i.he to <4 x i32>
  %i.hh = zext <4 x i1> %i.hf to <4 x i32>
  %i.hi = add <4 x i32> %i.ha, %i.hg
  %i.hj = add <4 x i32> %i.hb, %i.hh
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %wide.load.18 = load <4 x i8>, ptr %i.hk, align 16, !tbaa !53
  %wide.load30.18 = load <4 x i8>, ptr %i.hl, align 4, !tbaa !53
  %i.hm = icmp ne <4 x i8> %wide.load.18, zeroinitializer
  %i.hn = icmp ne <4 x i8> %wide.load30.18, zeroinitializer
  %i.ho = zext <4 x i1> %i.hm to <4 x i32>
  %i.hp = zext <4 x i1> %i.hn to <4 x i32>
  %i.hq = add <4 x i32> %i.hi, %i.ho
  %i.hr = add <4 x i32> %i.hj, %i.hp
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %wide.load.19 = load <4 x i8>, ptr %i.hs, align 8, !tbaa !53
  %wide.load30.19 = load <4 x i8>, ptr %i.ht, align 4, !tbaa !53
  %i.hu = icmp ne <4 x i8> %wide.load.19, zeroinitializer
  %i.hv = icmp ne <4 x i8> %wide.load30.19, zeroinitializer
  %i.hw = zext <4 x i1> %i.hu to <4 x i32>
  %i.hx = zext <4 x i1> %i.hv to <4 x i32>
  %i.hy = add <4 x i32> %i.hq, %i.hw
  %i.hz = add <4 x i32> %i.hr, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %wide.load.20 = load <4 x i8>, ptr %i.ia, align 16, !tbaa !53
end_hunk_0
