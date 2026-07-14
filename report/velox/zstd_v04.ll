inline.NumInlined: 323
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@HUF_decompress4X4:bb.a
BIT_initDStream.exit.thread.i:                    ; preds = %BIT_endOfDStream.exit.i, %bb.bk, %bb.ao, %bb.an, %bb.af, %bb.ad, %bb.ac, %bb.u, %bb.s, %bb.r, %bb.j, %bb.h, %bb.g
  %.0152.i = phi i64 [ %..i, %BIT_endOfDStream.exit.i ], [ -20, %bb.g ], [ -20, %bb.bk ], [ -72, %bb.s ], [ -72, %bb.h ], [ %i.os, %bb.ao ], [ -1, %bb.j ], [ -1, %bb.r ], [ -1, %bb.u ], [ -1, %bb.ac ], [ -1, %bb.af ], [ -1, %bb.an ], [ -72, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %HUF_decompress4X4_usingDTable.exit

HUF_decompress4X4_usingDTable.exit:               ; preds = %BIT_initDStream.exit.thread.i, %bb.f, %HUF_readDTableX4.exit.thread, %HUF_readDTableX4.exit
  %.0 = phi i64 [ %.0.i.ph, %HUF_readDTableX4.exit.thread ], [ -20, %bb.f ], [ -72, %HUF_readDTableX4.exit ], [ %.0152.i, %BIT_initDStream.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 5 uses
  %i.b = alloca [4097 x i32], align 16            ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %4, align 1, !tbaa !9       ; 4 uses
  %i.f = zext i8 %i.e to i64                      ; 12 uses
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i8 %i.e, -15
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr [4 x i8], ptr @HUF_readStats.l, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 -968
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = sext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 1, i64 256, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i64 %i.f, -127                   ; 4 uses
  %i.n = add nsw i64 %i.f, -126
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %.not83 = icmp ult i64 %i.o, %5
  br i1 %.not83, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %i.q = trunc nuw nsw i64 %i.m to i32            ; 3 uses
  %umax76 = tail call i32 @llvm.umax.i32(i32 %i.q, i32 2)
  %i.r = add nsw i32 %umax76, -1
  %i.s = lshr i32 %i.r, 1
  %narrow = add nuw i32 %i.s, 1
  %i.t = zext i32 %narrow to i64                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.m, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i32 @llvm.umax.i32(i32 %i.q, i32 2)
  %i.u = add nsw i32 %umax, -1
  %i.v = lshr i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  %scevgep = getelementptr i8, ptr %i.y, i64 2
  %i.z = getelementptr i8, ptr %4, i64 %i.w
  %scevgep75 = getelementptr i8, ptr %i.z, i64 2
  %bound0 = icmp ult ptr %0, %scevgep75
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.m, 31
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.t, 12
  %n.vec = and i64 %i.t, 4294967280               ; 4 uses
  %i.aa = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = shl i64 %index, 1                       ; 2 uses
  %i.ac = and i64 %index, 9223372036854775792
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.ad, align 1, !tbaa !9, !alias.scope !109
  %wide.load78 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !9, !alias.scope !109
  %i.af = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.ag = lshr <8 x i8> %wide.load78, splat (i8 4)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load79 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !9, !alias.scope !109
  %wide.load80 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !9, !alias.scope !109
  %i.ak = and <8 x i8> %wide.load79, splat (i8 15)
  %i.al = and <8 x i8> %wide.load80, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.af, <8 x i8> %i.ak, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ah, align 1, !tbaa !9, !alias.scope !112, !noalias !109
  %interleaved.vec81 = shufflevector <8 x i8> %i.ag, <8 x i8> %i.al, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec81, ptr %i.aj, align 1, !tbaa !9, !alias.scope !112, !noalias !109
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.t
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %i.t, 4294967292             ; 3 uses
  %i.an = shl nuw nsw i64 %n.vec83, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.ao = shl i64 %index84, 1
  %i.ap = and i64 %index84, 9223372036854775804
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ap
  %wide.load85 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !9, !alias.scope !109 ; 2 uses
  %i.ar = lshr <4 x i8> %wide.load85, splat (i8 4)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.at = and <4 x i8> %wide.load85, splat (i8 15)
  %interleaved.vec87 = shufflevector <4 x i8> %i.ar, <4 x i8> %i.at, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec87, ptr %i.as, align 1, !tbaa !9, !alias.scope !112, !noalias !109
  %index.next88 = add nuw i64 %index84, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !115

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %n.vec83, %i.t
  br i1 %cmp.n89, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.aa, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.av = lshr exact i64 %indvars.iv, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.av ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = lshr i8 %i.ax, 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !9
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.bb = and i8 %i.ba, 15
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !9
  %indvars.iv.next = add nuw i64 %indvars.iv, 2   ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.be = icmp ugt i32 %i.q, %indvars
  br i1 %i.be, label %.lr.ph, label %.loopexit.thread, !llvm.loop !116

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph166.preheader

bb.f:                                             ; preds = %bb.b
  %.not81 = icmp ugt i64 %5, %i.f
  br i1 %.not81, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 255, ptr %i.d, align 4, !tbaa !3
  %i.bg = icmp samesign ult i8 %i.e, 2
  br i1 %i.bg, label %FSE_decompress.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = call fastcc i64 @FSE_readNCount(ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.c, ptr noundef nonnull %i.bf, i64 noundef range(i64 0, 128) %i.f) ; 5 uses
  %i.bi = icmp ult i64 %i.bh, -119
  br i1 %i.bi, label %bb.i, label %FSE_decompress.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not21.i = icmp ult i64 %i.bh, %i.f
  br i1 %.not21.i, label %bb.j, label %FSE_decompress.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !3
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !3
  %i.bl = call fastcc i64 @FSE_buildDTable(ptr noundef nonnull %i.b, ptr noundef %i.a, i32 noundef %i.bj, i32 noundef %i.bk) ; 2 uses
  %i.bm = icmp ult i64 %i.bl, -119
  br i1 %i.bm, label %bb.k, label %FSE_decompress.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bn = sub nsw i64 %i.f, %i.bh                 ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh ; 42 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.3.0.copyload.i.i = load i16, ptr %.sroa.3.0..sroa_idx.i.i, align 2
  %.not.i.i = icmp eq i16 %.sroa.3.0.copyload.i.i, 0
  %6 = icmp ugt i64 %i.bn, 7                      ; 2 uses
  br i1 %.not.i.i, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %6, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.f
  %i.bp = getelementptr i8, ptr %.ptr.i.i, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9   ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.bt = zext i8 %i.bs to i64                    ; 7 uses
  switch i64 %i.bn, label %bb.u [
    i64 7, label %bb.o
    i64 6, label %bb.p
    i64 5, label %bb.q
    i64 4, label %bb.r
    i64 3, label %bb.s
    i64 2, label %bb.t
  ]

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 48
  %i.by = or disjoint i64 %i.bx, %i.bt
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bz = phi i64 [ %i.by, %bb.o ], [ %i.bt, %bb.n ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 40
  %i.ce = add nuw nsw i64 %i.cd, %i.bz
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.cf = phi i64 [ %i.ce, %bb.p ], [ %i.bt, %bb.n ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 32
  %i.ck = add nuw nsw i64 %i.cj, %i.cf
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.cl = phi i64 [ %i.ck, %bb.q ], [ %i.bt, %bb.n ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 24
  %i.cq = add nuw nsw i64 %i.cp, %i.cl
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %i.cr = phi i64 [ %i.cq, %bb.r ], [ %i.bt, %bb.n ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 16
  %i.cw = add nuw nsw i64 %i.cv, %i.cr
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.cx = phi i64 [ %i.cw, %bb.s ], [ %i.bt, %bb.n ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = zext i8 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 8
  %i.dc = add nuw nsw i64 %i.db, %i.cx
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.sroa.0270.2.i.i = phi i64 [ %i.bt, %bb.n ], [ %i.dc, %bb.t ]
  %i.dd = getelementptr i8, ptr %i.bf, i64 %i.f
  %i.de = getelementptr i8, ptr %i.dd, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9   ; 2 uses
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.thread320.i.i

BIT_initDStream.exit.thread320.i.i:               ; preds = %bb.u
  %i.dh = zext i8 %i.df to i32
  %i.di = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.bn to i32
  %i.dk = shl nuw nsw i32 %i.dj, 3
  %reass.sub = sub nsw i32 %i.di, %i.dk
  %i.dl = add nsw i32 %reass.sub, 41
  br label %bb.v

BIT_initDStream.exit.i.i:                         ; preds = %bb.m
  %.add.i.i = add nsw i64 %i.bn, -8               ; 2 uses
  %.ptr378.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.add.i.i
  %.val.i.i.i = load i64, ptr %.ptr378.i.i, align 1
  %i.dm = zext i8 %i.bq to i32
  %i.dn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dm, i1 true)
  %i.do = xor i32 %i.dn, 31
  %i.dp = sub nuw nsw i32 8, %i.do
  %i.dq = icmp ult i64 %i.bn, -119
  br i1 %i.dq, label %bb.v, label %FSE_decompress.exit.thread

bb.v:                                             ; preds = %BIT_initDStream.exit.i.i, %BIT_initDStream.exit.thread320.i.i
  %.sroa.0270.3330.i.i = phi i64 [ %.sroa.0270.2.i.i, %BIT_initDStream.exit.thread320.i.i ], [ %.val.i.i.i, %BIT_initDStream.exit.i.i ] ; 3 uses
  %.sroa.27271.3329.i.i = phi i32 [ %i.dl, %BIT_initDStream.exit.thread320.i.i ], [ %i.dp, %BIT_initDStream.exit.i.i ] ; 2 uses
  %.sroa.61278.3328.idx.i.i = phi i64 [ 0, %BIT_initDStream.exit.thread320.i.i ], [ %.add.i.i, %BIT_initDStream.exit.i.i ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.b, align 16
  %i.dr = zext i16 %.sroa.0.0.copyload.i.i.i to i32 ; 3 uses
  %i.ds = and i32 %.sroa.27271.3329.i.i, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl i64 %.sroa.0270.3330.i.i, %i.dt
  %i.dv = lshr i64 %i.du, 1
  %i.dw = and i32 %i.dr, 63
  %i.dx = xor i32 %i.dw, 63
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = lshr i64 %i.dv, %i.dy                   ; 2 uses
  %i.ea = add nuw nsw i32 %.sroa.27271.3329.i.i, %i.dr ; 7 uses
  %i.eb = icmp samesign ugt i32 %i.ea, 64
  br i1 %i.eb, label %FSE_initDState.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i = icmp slt i64 %.sroa.61278.3328.idx.i.i, 8
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = lshr i32 %i.ea, 3
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = and i32 %i.ea, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ef = icmp eq i64 %.sroa.61278.3328.idx.i.i, 0
  br i1 %i.ef, label %FSE_initDState.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = lshr i32 %i.ea, 3
  %i.eh = zext nneg i32 %i.eg to i64
  %.024.i.i379.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.3328.idx.i.i, i64 %i.eh) ; 2 uses
  %.024.i.i.i.i = trunc nsw i64 %.024.i.i379.i.i to i32
  %i.ei = and i64 %.024.i.i379.i.i, 4294967295
  %i.ej = shl nsw i32 %.024.i.i.i.i, 3
  %i.ek = sub nsw i32 %i.ea, %i.ej
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

BIT_reloadDStream.exit.sink.split.i.i.i:          ; preds = %bb.z, %bb.x
  %.pn380.i.i = phi i64 [ %i.ei, %bb.z ], [ %i.ed, %bb.x ]
  %.sroa.27271.4.i.i = phi i32 [ %i.ek, %bb.z ], [ %i.ee, %bb.x ]
  %.sroa.61278.3328.ptr.add.i.i = sub nsw i64 %.sroa.61278.3328.idx.i.i, %.pn380.i.i ; 2 uses
  %.sroa.61278.4.ptr.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61278.3328.ptr.add.i.i
  %.val30.i.sink.i.i.i = load i64, ptr %.sroa.61278.4.ptr.i.i, align 1
  br label %FSE_initDState.exit.i.i

FSE_initDState.exit.i.i:                          ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i, %bb.y, %bb.v
  %.sroa.61278.5.idx.i.i = phi i64 [ %.sroa.61278.3328.idx.i.i, %bb.v ], [ 0, %bb.y ], [ %.sroa.61278.3328.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 5 uses
  %.sroa.27271.5.i.i = phi i32 [ %i.ea, %bb.v ], [ %i.ea, %bb.y ], [ %.sroa.27271.4.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %.sroa.0270.4.i.i = phi i64 [ %.sroa.0270.3330.i.i, %bb.v ], [ %.sroa.0270.3330.i.i, %bb.y ], [ %.val30.i.sink.i.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 6 uses
  %i.em = and i32 %.sroa.27271.5.i.i, 63
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl i64 %.sroa.0270.4.i.i, %i.en
  %i.ep = lshr i64 %i.eo, 1
  %i.eq = lshr i64 %i.ep, %i.dy                   ; 2 uses
  %i.er = add nsw i32 %.sroa.27271.5.i.i, %i.dr   ; 7 uses
  %i.es = icmp ugt i32 %i.er, 64
  br i1 %i.es, label %FSE_initDState.exit44.i.i, label %bb.aa

bb.aa:                                            ; preds = %FSE_initDState.exit.i.i
  %.not.i.i39.i.i = icmp slt i64 %.sroa.61278.5.idx.i.i, 8
  br i1 %.not.i.i39.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = lshr i32 %i.er, 3
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = and i32 %i.er, 7
  br label %BIT_reloadDStream.exit.sink.split.i40.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ew = icmp eq i64 %.sroa.61278.5.idx.i.i, 0
  br i1 %i.ew, label %.lr.ph.i.preheader, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = lshr i32 %i.er, 3
  %i.ey = zext nneg i32 %i.ex to i64
  %.024.i.i43381.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.5.idx.i.i, i64 %i.ey) ; 2 uses
  %.024.i.i43.i.i = trunc i64 %.024.i.i43381.i.i to i32
  %i.ez = and i64 %.024.i.i43381.i.i, 4294967295
  %i.fa = shl i32 %.024.i.i43.i.i, 3
  %i.fb = sub i32 %i.er, %i.fa
  br label %BIT_reloadDStream.exit.sink.split.i40.i.i

BIT_reloadDStream.exit.sink.split.i40.i.i:        ; preds = %bb.ad, %bb.ab
  %.pn382.i.i = phi i64 [ %i.ez, %bb.ad ], [ %i.eu, %bb.ab ]
  %.sroa.27271.6.i.i = phi i32 [ %i.fb, %bb.ad ], [ %i.ev, %bb.ab ]
  %.sroa.61278.5.ptr.add.i.i = sub nsw i64 %.sroa.61278.5.idx.i.i, %.pn382.i.i ; 2 uses
  %.sroa.61278.6.ptr.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61278.5.ptr.add.i.i
  %.val30.i.sink.i42.i.i = load i64, ptr %.sroa.61278.6.ptr.i.i, align 1
  br label %FSE_initDState.exit44.i.i

FSE_initDState.exit44.i.i:                        ; preds = %BIT_reloadDStream.exit.sink.split.i40.i.i, %FSE_initDState.exit.i.i
  %.sroa.61278.7.idx.i.i = phi i64 [ %.sroa.61278.5.idx.i.i, %FSE_initDState.exit.i.i ], [ %.sroa.61278.5.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i40.i.i ] ; 2 uses
  %.sroa.27271.7.i.i = phi i32 [ %i.er, %FSE_initDState.exit.i.i ], [ %.sroa.27271.6.i.i, %BIT_reloadDStream.exit.sink.split.i40.i.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@HUF_readStats:bb.a
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %i.gl ; 3 uses
  %.sroa.0.0.copyload.i66.i.i = load i16, ptr %i.hc, align 4, !tbaa !58
  %.sroa.4.0..sroa_idx.i67.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %.sroa.4.0.copyload.i68.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i67.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i69.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 3
  %.sroa.5.0.copyload.i70.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i69.i.i, align 1, !tbaa !9
  %i.hd = zext i8 %.sroa.5.0.copyload.i70.i.i to i32 ; 2 uses
  %i.he = and i32 %i.gx, 63
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = shl i64 %.sroa.0270.6.i.i, %i.hf
  %i.hh = sub nsw i32 0, %i.hd
  %i.hi = and i32 %i.hh, 63
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = lshr i64 %i.hg, %i.hj
  %i.hl = add i32 %i.gx, %i.hd                    ; 3 uses
  %i.hm = zext i16 %.sroa.0.0.copyload.i66.i.i to i64
  %i.hn = add i64 %i.hk, %i.hm                    ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i15.i95.i, i64 3
  store i8 %.sroa.4.0.copyload.i68.i.i, ptr %i.ho, align 1, !tbaa !9
  %.036.add.i29.i.i = add nuw nsw i64 %.036.idx.i14.i94.i, 4 ; 2 uses
  %i.hp = icmp ugt i32 %i.hl, 64
  br i1 %i.hp, label %BIT_reloadDStream.exit81.split.loop.exit451.i.i, label %.lr.ph.i, !llvm.loop !117

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %BIT_endOfDStream.exit98.thread.i.i
  %.1.idx.i16473.i.i = phi i64 [ %.add.i28.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.036.idx.i14.i94.i, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.0270.1472.i.i = phi i64 [ %.sroa.0270.8.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.0270.1472.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.27271.1471.i.i = phi i32 [ %i.ji, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.27271.1471.i.i.ph, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.61278.1.idx470.i.i = phi i64 [ %.sroa.61278.10.idx.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.61278.1.idx470.i.i.ph, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.0257.1469.i.i = phi i64 [ %i.jk, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.0257.0.i90.i, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.0263.1468.i.i = phi i64 [ %i.in, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.0263.0.i89.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.1.ptr.ptr.i17474.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i16473.i.i
  %.not.i73.i.i = icmp slt i64 %.sroa.61278.1.idx470.i.i, 8
  br i1 %.not.i73.i.i, label %bb.ai, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.hq = lshr i32 %.sroa.27271.1471.i.i, 3
  %i.hr = zext nneg i32 %i.hq to i64
  %.sroa.61278.1.add388.i.i = sub nuw nsw i64 %.sroa.61278.1.idx470.i.i, %i.hr ; 3 uses
  %.ptr392.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.61278.1.add388.i.i
  %i.hs = and i32 %.sroa.27271.1471.i.i, 7
  %.val30.i74.i.i = load i64, ptr %.ptr392.i.i, align 1
  %i.ht = icmp eq i64 %.sroa.61278.1.add388.i.i, 0
  br label %BIT_endOfDStream.exit.thread.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.hu = icmp eq i64 %.sroa.61278.1.idx470.i.i, 0
  br i1 %i.hu, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hv = lshr i32 %.sroa.27271.1471.i.i, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %.024.i76393.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.1.idx470.i.i, i64 %i.hw) ; 2 uses
  %.024.i76.i.i = trunc i64 %.024.i76393.i.i to i32
  %i.hx = and i64 %.024.i76393.i.i, 4294967295
  %.sroa.61278.1.add.i.i = sub nsw i64 %.sroa.61278.1.idx470.i.i, %i.hx ; 2 uses
  %.ptr391.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61278.1.add.i.i
  %i.hy = shl i32 %.024.i76.i.i, 3
  %i.hz = sub i32 %.sroa.27271.1471.i.i, %i.hy
  %.val.i78.i.i = load i64, ptr %.ptr391.i.i, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.61278.9.ph.idx.i.i = phi i64 [ 0, %bb.ai ], [ %.sroa.61278.1.add.i.i, %bb.aj ] ; 2 uses
  %.sroa.27271.9.ph.i.i = phi i32 [ %.sroa.27271.1471.i.i, %bb.ai ], [ %i.hz, %bb.aj ] ; 2 uses
  %.sroa.0270.7.ph.i.i = phi i64 [ %.sroa.0270.1472.i.i, %bb.ai ], [ %.val.i78.i.i, %bb.aj ]
  %i.ia = icmp eq i64 %.sroa.61278.9.ph.idx.i.i, 0 ; 2 uses
  %.not394.i.i = icmp eq i32 %.sroa.27271.9.ph.i.i, 64
  %or.cond.i.i = and i1 %i.ia, %.not394.i.i
  br i1 %or.cond.i.i, label %BIT_reloadDStream.exit81.i.i, label %BIT_endOfDStream.exit.thread.i.i

BIT_endOfDStream.exit.thread.i.i:                 ; preds = %bb.ak, %.thread.i.i
  %i.ib = phi i1 [ %i.ht, %.thread.i.i ], [ %i.ia, %bb.ak ]
  %.sroa.0270.7.ph630.i.i = phi i64 [ %.val30.i74.i.i, %.thread.i.i ], [ %.sroa.0270.7.ph.i.i, %bb.ak ] ; 2 uses
  %.sroa.27271.9.ph629.i.i = phi i32 [ %i.hs, %.thread.i.i ], [ %.sroa.27271.9.ph.i.i, %bb.ak ] ; 2 uses
  %.sroa.61278.9.ph.idx628.i.i = phi i64 [ %.sroa.61278.1.add388.i.i, %.thread.i.i ], [ %.sroa.61278.9.ph.idx.i.i, %bb.ak ] ; 5 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.sroa.0263.1468.i.i ; 3 uses
  %.sroa.0.0.copyload.i82.i.i = load i16, ptr %i.ic, align 4, !tbaa !58
  %.sroa.4.0..sroa_idx.i83.i.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %.sroa.4.0.copyload.i84.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i83.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i85.i.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 3
  %.sroa.5.0.copyload.i86.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i85.i.i, align 1, !tbaa !9
  %i.id = zext i8 %.sroa.5.0.copyload.i86.i.i to i32 ; 2 uses
  %i.ie = and i32 %.sroa.27271.9.ph629.i.i, 63
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl i64 %.sroa.0270.7.ph630.i.i, %i.if
  %i.ih = sub nsw i32 0, %i.id
  %i.ii = and i32 %i.ih, 63
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = lshr i64 %i.ig, %i.ij
  %i.il = add i32 %.sroa.27271.9.ph629.i.i, %i.id ; 7 uses
  %i.im = zext i16 %.sroa.0.0.copyload.i82.i.i to i64
  %i.in = add i64 %i.ik, %i.im                    ; 5 uses
  %.add51.i24.i.i = or disjoint i64 %.1.idx.i16473.i.i, 1 ; 3 uses
  %.ptr.ptr.i25.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i24.i.i
  store i8 %.sroa.4.0.copyload.i84.i.i, ptr %.1.ptr.ptr.i17474.i.i, align 1, !tbaa !9
  %i.io = icmp ugt i32 %i.il, 64
  br i1 %i.io, label %BIT_reloadDStream.exit81.split.loop.exit445.i.i, label %bb.al

bb.al:                                            ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.not.i89.i.i = icmp slt i64 %.sroa.61278.9.ph.idx628.i.i, 8
  br i1 %.not.i89.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ip = lshr i32 %i.il, 3
  %i.iq = zext nneg i32 %i.ip to i64
  %.sroa.61278.9.ph.add387.i.i = sub nuw nsw i64 %.sroa.61278.9.ph.idx628.i.i, %i.iq ; 2 uses
  %.ptr390.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.61278.9.ph.add387.i.i
  %i.ir = and i32 %i.il, 7
  %.val30.i90.i.i = load i64, ptr %.ptr390.i.i, align 1
  br label %BIT_reloadDStream.exit97.i.i

bb.an:                                            ; preds = %bb.al
  br i1 %i.ib, label %BIT_reloadDStream.exit97.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.is = lshr i32 %i.il, 3
  %i.it = zext nneg i32 %i.is to i64
  %.024.i92395.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.9.ph.idx628.i.i, i64 %i.it) ; 2 uses
  %.024.i92.i.i = trunc i64 %.024.i92395.i.i to i32
  %i.iu = and i64 %.024.i92395.i.i, 4294967295
  %.sroa.61278.9.ph.add.i.i = sub nsw i64 %.sroa.61278.9.ph.idx628.i.i, %i.iu ; 2 uses
  %.ptr389.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61278.9.ph.add.i.i
  %i.iv = shl i32 %.024.i92.i.i, 3
  %i.iw = sub i32 %i.il, %i.iv
  %.val.i94.i.i = load i64, ptr %.ptr389.i.i, align 1
  br label %BIT_reloadDStream.exit97.i.i

BIT_reloadDStream.exit97.i.i:                     ; preds = %bb.ao, %bb.an, %bb.am
  %.sroa.61278.10.idx.i.i = phi i64 [ %.sroa.61278.9.ph.add387.i.i, %bb.am ], [ %.sroa.61278.9.ph.add.i.i, %bb.ao ], [ 0, %bb.an ] ; 4 uses
  %.sroa.27271.10.i.i = phi i32 [ %i.ir, %bb.am ], [ %i.iw, %bb.ao ], [ %i.il, %bb.an ] ; 4 uses
  %.sroa.0270.8.i.i = phi i64 [ %.val30.i90.i.i, %bb.am ], [ %.val.i94.i.i, %bb.ao ], [ %.sroa.0270.7.ph630.i.i, %bb.an ] ; 2 uses
  %i.ix = icmp eq i64 %.1.idx.i16473.i.i, 254
  br i1 %i.ix, label %BIT_reloadDStream.exit81.split.loop.exit457.i.i, label %bb.ap

bb.ap:                                            ; preds = %BIT_reloadDStream.exit97.i.i
  %i.iy = icmp eq i64 %.sroa.61278.10.idx.i.i, 0
  %.not396.i.i = icmp eq i32 %.sroa.27271.10.i.i, 64
  %or.cond426.i.i = and i1 %i.iy, %.not396.i.i
  br i1 %or.cond426.i.i, label %BIT_reloadDStream.exit81.i.i, label %BIT_endOfDStream.exit98.thread.i.i

BIT_endOfDStream.exit98.thread.i.i:               ; preds = %bb.ap
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.sroa.0257.1469.i.i ; 3 uses
  %.sroa.0.0.copyload.i99.i.i = load i16, ptr %i.iz, align 4, !tbaa !58
  %.sroa.4.0..sroa_idx.i100.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %.sroa.4.0.copyload.i101.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i100.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i102.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  %.sroa.5.0.copyload.i103.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i102.i.i, align 1, !tbaa !9
  %i.ja = zext i8 %.sroa.5.0.copyload.i103.i.i to i32 ; 2 uses
  %i.jb = and i32 %.sroa.27271.10.i.i, 63
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = shl i64 %.sroa.0270.8.i.i, %i.jc
  %i.je = sub nsw i32 0, %i.ja
  %i.jf = and i32 %i.je, 63
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = lshr i64 %i.jd, %i.jg
  %i.ji = add i32 %.sroa.27271.10.i.i, %i.ja      ; 3 uses
  %i.jj = zext i16 %.sroa.0.0.copyload.i99.i.i to i64
  %i.jk = add i64 %i.jh, %i.jj                    ; 2 uses
  %.add.i28.i.i = add nuw nsw i64 %.1.idx.i16473.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i101.i.i, ptr %.ptr.ptr.i25.i.i, align 1, !tbaa !9
  %i.jl = icmp ugt i32 %i.ji, 64
  br i1 %i.jl, label %BIT_reloadDStream.exit81.split.loop.exit451.i.i, label %.lr.ph.i.i

BIT_reloadDStream.exit81.split.loop.exit445.i.i:  ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.sroa.61278.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61278.9.ph.idx628.i.i
  br label %BIT_reloadDStream.exit81.i.i

BIT_reloadDStream.exit81.split.loop.exit451.i.i:  ; preds = %bb.ah, %BIT_endOfDStream.exit98.thread.i.i, %.preheader438.i.i, %FSE_initDState.exit44.i.i
  %.sroa.61278.1.idx.lcssa.i.i = phi i64 [ %.sroa.61278.8.idx.i.i, %.preheader438.i.i ], [ %.sroa.61278.10.idx.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.61278.7.idx.i.i, %FSE_initDState.exit44.i.i ], [ %.sroa.61278.8.idx.i.i, %bb.ah ]
  %.sroa.0257.1.lcssa.ph452.i.i = phi i64 [ %.sroa.0257.0.i90.i, %.preheader438.i.i ], [ %i.jk, %BIT_endOfDStream.exit98.thread.i.i ], [ %i.eq, %FSE_initDState.exit44.i.i ], [ %i.hn, %bb.ah ]
  %.sroa.0263.2.ph453.i.i = phi i64 [ %.sroa.0263.0.i89.i, %.preheader438.i.i ], [ %i.in, %BIT_endOfDStream.exit98.thread.i.i ], [ %i.dz, %FSE_initDState.exit44.i.i ], [ %i.gz, %bb.ah ]
  %.sroa.27271.2.ph455.i.i = phi i32 [ %.sroa.27271.8.i.i, %.preheader438.i.i ], [ %i.ji, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.27271.7.i.i, %FSE_initDState.exit44.i.i ], [ %i.hl, %bb.ah ]
  %.2.idx.i19.ph456.i.i = phi i64 [ %.036.idx.i14.i94.i, %.preheader438.i.i ], [ %.add.i28.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ 0, %FSE_initDState.exit44.i.i ], [ %.036.add.i29.i.i, %bb.ah ]
  %.sroa.61278.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61278.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit81.i.i

BIT_reloadDStream.exit81.split.loop.exit457.i.i:  ; preds = %BIT_reloadDStream.exit97.i.i
  %.sroa.61278.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61278.10.idx.i.i
  br label %BIT_reloadDStream.exit81.i.i

BIT_reloadDStream.exit81.i.i:                     ; preds = %bb.ap, %bb.ak, %BIT_reloadDStream.exit81.split.loop.exit457.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i
  %.sroa.0257.1.lcssa.i.i = phi i64 [ %.sroa.0257.1.lcssa.ph452.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %.sroa.0257.1469.i.i, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %.sroa.0257.1469.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %.sroa.0257.1469.i.i, %bb.ak ], [ %.sroa.0257.1469.i.i, %bb.ap ]
  %.sroa.0263.2.i.i = phi i64 [ %.sroa.0263.2.ph453.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %i.in, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %i.in, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %i.in, %bb.ap ], [ %.sroa.0263.1468.i.i, %bb.ak ]
  %.sroa.61278.2.i.i = phi ptr [ %.sroa.61278.1.ptr.le.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %.sroa.61278.10.ptr.le.i.i, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %.sroa.61278.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %i.bo, %bb.ak ], [ %i.bo, %bb.ap ]
  %.sroa.27271.2.i.i = phi i32 [ %.sroa.27271.2.ph455.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %.sroa.27271.10.i.i, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %i.il, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ 64, %bb.ak ], [ 64, %bb.ap ]
  %.2.idx.i19.i.i = phi i64 [ %.2.idx.i19.ph456.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ 255, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %.add51.i24.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %.add51.i24.i.i, %bb.ap ], [ %.1.idx.i16473.i.i, %bb.ak ] ; 2 uses
  %i.jm = icmp eq ptr %.sroa.61278.2.i.i, %i.bo
  %.not397.i.i = icmp eq i32 %.sroa.27271.2.i.i, 64
  %or.cond427.i.i = and i1 %i.jm, %.not397.i.i
  %.not398.i.i = icmp eq i64 %.sroa.0263.2.i.i, 0
  %or.cond428.i.i = select i1 %or.cond427.i.i, i1 %.not398.i.i, i1 false
  %.not399.i.i = icmp eq i64 %.sroa.0257.1.lcssa.i.i, 0
  %or.cond429.i.i = select i1 %or.cond428.i.i, i1 %.not399.i.i, i1 false
  br i1 %or.cond429.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit106.thread.i.i

BIT_endOfDStream.exit106.thread.i.i:              ; preds = %BIT_reloadDStream.exit81.i.i
  %i.jn = icmp eq i64 %.2.idx.i19.i.i, 255
  %..i23.i.i = select i1 %i.jn, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

bb.aq:                                            ; preds = %bb.k
  br i1 %6, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.ptr401.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.f
  %i.jo = getelementptr i8, ptr %.ptr401.i.i, i64 -1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !9   ; 2 uses
  %i.jq = icmp eq i8 %i.jp, 0
  br i1 %i.jq, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit111.i.i

bb.as:                                            ; preds = %bb.aq
  %i.jr = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.js = zext i8 %i.jr to i64                    ; 7 uses
  switch i64 %i.bn, label %bb.az [
    i64 7, label %bb.at
    i64 6, label %bb.au
    i64 5, label %bb.av
    i64 4, label %bb.aw
    i64 3, label %bb.ax
    i64 2, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !9
  %i.jv = zext i8 %i.ju to i64
  %i.jw = shl nuw nsw i64 %i.jv, 48
  %i.jx = or disjoint i64 %i.jw, %i.js
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jy = phi i64 [ %i.jx, %bb.at ], [ %i.js, %bb.as ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !9
  %i.kb = zext i8 %i.ka to i64
  %i.kc = shl nuw nsw i64 %i.kb, 40
  %i.kd = add nuw nsw i64 %i.kc, %i.jy
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.ke = phi i64 [ %i.kd, %bb.au ], [ %i.js, %bb.as ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !9
  %i.kh = zext i8 %i.kg to i64
  %i.ki = shl nuw nsw i64 %i.kh, 32
  %i.kj = add nuw nsw i64 %i.ki, %i.ke
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.kk = phi i64 [ %i.kj, %bb.av ], [ %i.js, %bb.as ]
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !9
  %i.kn = zext i8 %i.km to i64
  %i.ko = shl nuw nsw i64 %i.kn, 24
  %i.kp = add nuw nsw i64 %i.ko, %i.kk
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.as
  %i.kq = phi i64 [ %i.kp, %bb.aw ], [ %i.js, %bb.as ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !9
  %i.kt = zext i8 %i.ks to i64
  %i.ku = shl nuw nsw i64 %i.kt, 16
  %i.kv = add nuw nsw i64 %i.ku, %i.kq
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.as
  %i.kw = phi i64 [ %i.kv, %bb.ax ], [ %i.js, %bb.as ]
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !9
  %i.kz = zext i8 %i.ky to i64
  %i.la = shl nuw nsw i64 %i.kz, 8
  %i.lb = add nuw nsw i64 %i.la, %i.kw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.as
  %.sroa.0216.2.i.i = phi i64 [ %i.js, %bb.as ], [ %i.lb, %bb.ay ]
  %i.lc = getelementptr i8, ptr %i.bf, i64 %i.f
  %i.ld = getelementptr i8, ptr %i.lc, i64 -1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !9   ; 2 uses
  %i.lf = icmp eq i8 %i.le, 0
  br i1 %i.lf, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit111.thread352.i.i

BIT_initDStream.exit111.thread352.i.i:            ; preds = %bb.az
  %i.lg = zext i8 %i.le to i32
  %i.lh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lg, i1 true)
  %i.li = trunc nuw nsw i64 %i.bn to i32
  %i.lj = shl nuw nsw i32 %i.li, 3
  %reass.sub168 = sub nsw i32 %i.lh, %i.lj
  %i.lk = add nsw i32 %reass.sub168, 41
  br label %bb.ba

BIT_initDStream.exit111.i.i:                      ; preds = %bb.ar
  %.add400.i.i = add nsw i64 %i.bn, -8            ; 2 uses
  %.ptr402.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.add400.i.i
  %.val.i109.i.i = load i64, ptr %.ptr402.i.i, align 1
  %i.ll = zext i8 %i.jp to i32
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ll, i1 true)
  %i.ln = xor i32 %i.lm, 31
  %i.lo = sub nuw nsw i32 8, %i.ln
  %i.lp = icmp ult i64 %i.bn, -119
  br i1 %i.lp, label %bb.ba, label %FSE_decompress.exit.thread

bb.ba:                                            ; preds = %BIT_initDStream.exit111.i.i, %BIT_initDStream.exit111.thread352.i.i
  %.sroa.61222.3361.idx.i.i = phi i64 [ 0, %BIT_initDStream.exit111.thread352.i.i ], [ %.add400.i.i, %BIT_initDStream.exit111.i.i ] ; 5 uses
  %.sroa.27.3360.i.i = phi i32 [ %i.lk, %BIT_initDStream.exit111.thread352.i.i ], [ %i.lo, %BIT_initDStream.exit111.i.i ] ; 2 uses
  %.sroa.0216.3359.i.i = phi i64 [ %.sroa.0216.2.i.i, %BIT_initDStream.exit111.thread352.i.i ], [ %.val.i109.i.i, %BIT_initDStream.exit111.i.i ] ; 3 uses
  %.sroa.0.0.copyload.i112.i.i = load i16, ptr %i.b, align 16
  %i.lq = zext i16 %.sroa.0.0.copyload.i112.i.i to i32 ; 3 uses
  %i.lr = and i32 %.sroa.27.3360.i.i, 63
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = shl i64 %.sroa.0216.3359.i.i, %i.ls
  %i.lu = lshr i64 %i.lt, 1
  %i.lv = and i32 %i.lq, 63
  %i.lw = xor i32 %i.lv, 63
  %i.lx = zext nneg i32 %i.lw to i64              ; 2 uses
  %i.ly = lshr i64 %i.lu, %i.lx                   ; 2 uses
  %i.lz = add nuw nsw i32 %.sroa.27.3360.i.i, %i.lq ; 7 uses
  %i.ma = icmp samesign ugt i32 %i.lz, 64
  br i1 %i.ma, label %FSE_initDState.exit120.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i115.i.i = icmp slt i64 %.sroa.61222.3361.idx.i.i, 8
  br i1 %.not.i.i115.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mb = lshr i32 %i.lz, 3
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = and i32 %i.lz, 7
  br label %BIT_reloadDStream.exit.sink.split.i116.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.me = icmp eq i64 %.sroa.61222.3361.idx.i.i, 0
  br i1 %i.me, label %FSE_initDState.exit120.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mf = lshr i32 %i.lz, 3
  %i.mg = zext nneg i32 %i.mf to i64
  %.024.i.i119403.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.3361.idx.i.i, i64 %i.mg) ; 2 uses
  %.024.i.i119.i.i = trunc nsw i64 %.024.i.i119403.i.i to i32
  %i.mh = and i64 %.024.i.i119403.i.i, 4294967295
  %i.mi = shl nsw i32 %.024.i.i119.i.i, 3
  %i.mj = sub nsw i32 %i.lz, %i.mi
  br label %BIT_reloadDStream.exit.sink.split.i116.i.i

BIT_reloadDStream.exit.sink.split.i116.i.i:       ; preds = %bb.be, %bb.bc
  %.sroa.27.4.i.i = phi i32 [ %i.mj, %bb.be ], [ %i.md, %bb.bc ]
  %.pn404.i.i = phi i64 [ %i.mh, %bb.be ], [ %i.mc, %bb.bc ]
  %.sroa.61222.3361.ptr.add.i.i = sub nsw i64 %.sroa.61222.3361.idx.i.i, %.pn404.i.i ; 2 uses
  %.sroa.61222.4.ptr.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61222.3361.ptr.add.i.i
  %.val30.i.sink.i118.i.i = load i64, ptr %.sroa.61222.4.ptr.i.i, align 1
  br label %FSE_initDState.exit120.i.i

FSE_initDState.exit120.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i116.i.i, %bb.bd, %bb.ba
  %.sroa.0216.4.i.i = phi i64 [ %.sroa.0216.3359.i.i, %bb.ba ], [ %.sroa.0216.3359.i.i, %bb.bd ], [ %.val30.i.sink.i118.i.i, %BIT_reloadDStream.exit.sink.split.i116.i.i ] ; 3 uses
  %.sroa.27.5.i.i = phi i32 [ %i.lz, %bb.ba ], [ %i.lz, %bb.bd ], [ %.sroa.27.4.i.i, %BIT_reloadDStream.exit.sink.split.i116.i.i ] ; 2 uses
  %.sroa.61222.5.idx.i.i = phi i64 [ %.sroa.61222.3361.idx.i.i, %bb.ba ], [ 0, %bb.bd ], [ %.sroa.61222.3361.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i116.i.i ] ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 6 uses
  %i.ml = and i32 %.sroa.27.5.i.i, 63
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = shl i64 %.sroa.0216.4.i.i, %i.mm
  %i.mo = lshr i64 %i.mn, 1
  %i.mp = lshr i64 %i.mo, %i.lx                   ; 2 uses
  %i.mq = add nsw i32 %.sroa.27.5.i.i, %i.lq      ; 7 uses
  %i.mr = icmp ugt i32 %i.mq, 64
  br i1 %i.mr, label %FSE_initDState.exit129.i.i, label %bb.bf

bb.bf:                                            ; preds = %FSE_initDState.exit120.i.i
  %.not.i.i124.i.i = icmp slt i64 %.sroa.61222.5.idx.i.i, 8
  br i1 %.not.i.i124.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ms = lshr i32 %i.mq, 3
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = and i32 %i.mq, 7
  br label %BIT_reloadDStream.exit.sink.split.i125.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.mv = icmp eq i64 %.sroa.61222.5.idx.i.i, 0
  br i1 %i.mv, label %.lr.ph107.i.preheader, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mw = lshr i32 %i.mq, 3
  %i.mx = zext nneg i32 %i.mw to i64
  %.024.i.i128405.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.5.idx.i.i, i64 %i.mx) ; 2 uses
  %.024.i.i128.i.i = trunc i64 %.024.i.i128405.i.i to i32
  %i.my = and i64 %.024.i.i128405.i.i, 4294967295
  %i.mz = shl i32 %.024.i.i128.i.i, 3
  %i.na = sub i32 %i.mq, %i.mz
  br label %BIT_reloadDStream.exit.sink.split.i125.i.i

BIT_reloadDStream.exit.sink.split.i125.i.i:       ; preds = %bb.bi, %bb.bg
  %.sroa.27.6.i.i = phi i32 [ %i.na, %bb.bi ], [ %i.mu, %bb.bg ]
  %.pn406.i.i = phi i64 [ %i.my, %bb.bi ], [ %i.mt, %bb.bg ]
  %.sroa.61222.5.ptr.add.i.i = sub nsw i64 %.sroa.61222.5.idx.i.i, %.pn406.i.i ; 2 uses
  %.sroa.61222.6.ptr.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61222.5.ptr.add.i.i
  %.val30.i.sink.i127.i.i = load i64, ptr %.sroa.61222.6.ptr.i.i, align 1
  br label %FSE_initDState.exit129.i.i

FSE_initDState.exit129.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i125.i.i, %FSE_initDState.exit120.i.i
  %.sroa.0216.5.i.i = phi i64 [ %.sroa.0216.4.i.i, %FSE_initDState.exit120.i.i ], [ %.val30.i.sink.i127.i.i, %BIT_reloadDStream.exit.sink.split.i125.i.i ]
  %.sroa.27.7.i.i = phi i32 [ %i.mq, %FSE_initDState.exit120.i.i ], [ %.sroa.27.6.i.i, %BIT_reloadDStream.exit.sink.split.i125.i.i ] ; 3 uses
end_hunk_1
begin_hunk_2_@HUF_readStats:bb.a
  %i.pg = and i32 %i.oz, 63
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl i64 %.sroa.0216.6.i.i, %i.ph
  %i.pj = lshr i64 %i.pi, 1
  %i.pk = and i32 %i.pf, 63
  %i.pl = xor i32 %i.pk, 63
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = lshr i64 %i.pj, %i.pm
  %i.po = add i32 %i.oz, %i.pf                    ; 3 uses
  %i.pp = zext i16 %.sroa.0.0.copyload.i160.i.i to i64
  %i.pq = add nuw i64 %i.pn, %i.pp                ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i106.i, i64 3
  store i8 %.sroa.4.0.copyload.i162.i.i, ptr %i.pr, align 1, !tbaa !9
  %.036.add.i.i.i = add nuw nsw i64 %.036.idx.i.i105.i, 4 ; 2 uses
  %i.ps = icmp ugt i32 %i.po, 64
  br i1 %i.ps, label %BIT_reloadDStream.exit175.split.loop.exit491.i.i, label %.lr.ph107.i, !llvm.loop !117

.lr.ph515.i.i:                                    ; preds = %.lr.ph515.i.i.preheader, %BIT_endOfDStream.exit193.thread.i.i
  %.1.idx.i513.i.i = phi i64 [ %.add.i.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.036.idx.i.i105.i, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.0.1512.i.i = phi i64 [ %i.rp, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.0.0.i104.i, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.0208.1511.i.i = phi i64 [ %i.qr, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.0208.0.i103.i, %.lr.ph515.i.i.preheader ] ; 2 uses
  %.sroa.61222.1.idx510.i.i = phi i64 [ %.sroa.61222.10.idx.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.61222.1.idx510.i.i.ph, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.27.1509.i.i = phi i32 [ %i.rn, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.27.1509.i.i.ph, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.0216.1508.i.i = phi i64 [ %.sroa.0216.8.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.0216.1508.i.i.ph, %.lr.ph515.i.i.preheader ]
  %.1.ptr.ptr.i514.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i513.i.i
  %.not.i167.i.i = icmp slt i64 %.sroa.61222.1.idx510.i.i, 8
  br i1 %.not.i167.i.i, label %bb.bn, label %.thread638.i.i

.thread638.i.i:                                   ; preds = %.lr.ph515.i.i
  %i.pt = lshr i32 %.sroa.27.1509.i.i, 3
  %i.pu = zext nneg i32 %i.pt to i64
  %.sroa.61222.1.add412.i.i = sub nuw nsw i64 %.sroa.61222.1.idx510.i.i, %i.pu ; 3 uses
  %.ptr416.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.61222.1.add412.i.i
  %i.pv = and i32 %.sroa.27.1509.i.i, 7
  %.val30.i168.i.i = load i64, ptr %.ptr416.i.i, align 1
  %i.pw = icmp eq i64 %.sroa.61222.1.add412.i.i, 0
  br label %BIT_endOfDStream.exit176.thread.i.i

bb.bn:                                            ; preds = %.lr.ph515.i.i
  %i.px = icmp eq i64 %.sroa.61222.1.idx510.i.i, 0
  br i1 %i.px, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.py = lshr i32 %.sroa.27.1509.i.i, 3
  %i.pz = zext nneg i32 %i.py to i64
  %.024.i170417.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.1.idx510.i.i, i64 %i.pz) ; 2 uses
  %.024.i170.i.i = trunc i64 %.024.i170417.i.i to i32
  %i.qa = and i64 %.024.i170417.i.i, 4294967295
  %.sroa.61222.1.add.i.i = sub nsw i64 %.sroa.61222.1.idx510.i.i, %i.qa ; 2 uses
  %.ptr415.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61222.1.add.i.i
  %i.qb = shl i32 %.024.i170.i.i, 3
  %i.qc = sub i32 %.sroa.27.1509.i.i, %i.qb
  %.val.i172.i.i = load i64, ptr %.ptr415.i.i, align 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0216.7.ph.i.i = phi i64 [ %.sroa.0216.1508.i.i, %bb.bn ], [ %.val.i172.i.i, %bb.bo ]
  %.sroa.27.9.ph.i.i = phi i32 [ %.sroa.27.1509.i.i, %bb.bn ], [ %i.qc, %bb.bo ] ; 2 uses
  %.sroa.61222.9.ph.idx.i.i = phi i64 [ 0, %bb.bn ], [ %.sroa.61222.1.add.i.i, %bb.bo ] ; 2 uses
  %i.qd = icmp eq i64 %.sroa.61222.9.ph.idx.i.i, 0 ; 2 uses
  %.not418.i.i = icmp eq i32 %.sroa.27.9.ph.i.i, 64
  %or.cond430.i.i = and i1 %.not418.i.i, %i.qd
  %.not419.i.i = icmp eq i64 %.sroa.0208.1511.i.i, 0
  %or.cond431.i.i = select i1 %or.cond430.i.i, i1 %.not419.i.i, i1 false
  br i1 %or.cond431.i.i, label %BIT_reloadDStream.exit175.i.i, label %BIT_endOfDStream.exit176.thread.i.i

BIT_endOfDStream.exit176.thread.i.i:              ; preds = %bb.bp, %.thread638.i.i
  %i.qe = phi i1 [ %i.pw, %.thread638.i.i ], [ %i.qd, %bb.bp ]
  %.sroa.61222.9.ph.idx648.i.i = phi i64 [ %.sroa.61222.1.add412.i.i, %.thread638.i.i ], [ %.sroa.61222.9.ph.idx.i.i, %bb.bp ] ; 5 uses
  %.sroa.27.9.ph647.i.i = phi i32 [ %i.pv, %.thread638.i.i ], [ %.sroa.27.9.ph.i.i, %bb.bp ] ; 2 uses
  %.sroa.0216.7.ph646.i.i = phi i64 [ %.val30.i168.i.i, %.thread638.i.i ], [ %.sroa.0216.7.ph.i.i, %bb.bp ] ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %.sroa.0208.1511.i.i ; 3 uses
  %.sroa.0.0.copyload.i177.i.i = load i16, ptr %i.qf, align 4, !tbaa !58
  %.sroa.4.0..sroa_idx.i178.i.i = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  %.sroa.4.0.copyload.i179.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i178.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i180.i.i = getelementptr inbounds nuw i8, ptr %i.qf, i64 3
  %.sroa.5.0.copyload.i181.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i180.i.i, align 1, !tbaa !9
  %i.qg = zext i8 %.sroa.5.0.copyload.i181.i.i to i32 ; 2 uses
  %i.qh = and i32 %.sroa.27.9.ph647.i.i, 63
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = shl i64 %.sroa.0216.7.ph646.i.i, %i.qi
  %i.qk = lshr i64 %i.qj, 1
  %i.ql = and i32 %i.qg, 63
  %i.qm = xor i32 %i.ql, 63
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = lshr i64 %i.qk, %i.qn
  %i.qp = add i32 %.sroa.27.9.ph647.i.i, %i.qg    ; 7 uses
  %i.qq = zext i16 %.sroa.0.0.copyload.i177.i.i to i64
  %i.qr = add nuw i64 %i.qo, %i.qq                ; 5 uses
  %.add51.i.i.i = or disjoint i64 %.1.idx.i513.i.i, 1 ; 3 uses
  %.ptr.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i.i.i
  store i8 %.sroa.4.0.copyload.i179.i.i, ptr %.1.ptr.ptr.i514.i.i, align 1, !tbaa !9
  %i.qs = icmp ugt i32 %i.qp, 64
  br i1 %i.qs, label %BIT_reloadDStream.exit175.split.loop.exit485.i.i, label %bb.bq

bb.bq:                                            ; preds = %BIT_endOfDStream.exit176.thread.i.i
  %.not.i184.i.i = icmp slt i64 %.sroa.61222.9.ph.idx648.i.i, 8
  br i1 %.not.i184.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qt = lshr i32 %i.qp, 3
  %i.qu = zext nneg i32 %i.qt to i64
  %.sroa.61222.9.ph.add411.i.i = sub nuw nsw i64 %.sroa.61222.9.ph.idx648.i.i, %i.qu ; 2 uses
  %.ptr414.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.61222.9.ph.add411.i.i
  %i.qv = and i32 %i.qp, 7
  %.val30.i185.i.i = load i64, ptr %.ptr414.i.i, align 1
  br label %BIT_reloadDStream.exit192.i.i

bb.bs:                                            ; preds = %bb.bq
  br i1 %i.qe, label %BIT_reloadDStream.exit192.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qw = lshr i32 %i.qp, 3
  %i.qx = zext nneg i32 %i.qw to i64
  %.024.i187420.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.9.ph.idx648.i.i, i64 %i.qx) ; 2 uses
  %.024.i187.i.i = trunc i64 %.024.i187420.i.i to i32
  %i.qy = and i64 %.024.i187420.i.i, 4294967295
  %.sroa.61222.9.ph.add.i.i = sub nsw i64 %.sroa.61222.9.ph.idx648.i.i, %i.qy ; 2 uses
  %.ptr413.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61222.9.ph.add.i.i
  %i.qz = shl i32 %.024.i187.i.i, 3
  %i.ra = sub i32 %i.qp, %i.qz
  %.val.i189.i.i = load i64, ptr %.ptr413.i.i, align 1
  br label %BIT_reloadDStream.exit192.i.i

BIT_reloadDStream.exit192.i.i:                    ; preds = %bb.bt, %bb.bs, %bb.br
  %.sroa.0216.8.i.i = phi i64 [ %.val30.i185.i.i, %bb.br ], [ %.val.i189.i.i, %bb.bt ], [ %.sroa.0216.7.ph646.i.i, %bb.bs ] ; 2 uses
  %.sroa.27.10.i.i = phi i32 [ %i.qv, %bb.br ], [ %i.ra, %bb.bt ], [ %i.qp, %bb.bs ] ; 4 uses
  %.sroa.61222.10.idx.i.i = phi i64 [ %.sroa.61222.9.ph.add411.i.i, %bb.br ], [ %.sroa.61222.9.ph.add.i.i, %bb.bt ], [ 0, %bb.bs ] ; 4 uses
  %i.rb = icmp eq i64 %.1.idx.i513.i.i, 254
  br i1 %i.rb, label %BIT_reloadDStream.exit175.split.loop.exit497.i.i, label %bb.bu

bb.bu:                                            ; preds = %BIT_reloadDStream.exit192.i.i
  %i.rc = icmp eq i64 %.sroa.61222.10.idx.i.i, 0
  %.not421.i.i = icmp eq i32 %.sroa.27.10.i.i, 64
  %or.cond432.i.i = and i1 %.not421.i.i, %i.rc
  %.not422.i.i = icmp eq i64 %.sroa.0.1512.i.i, 0
  %or.cond433.i.i = select i1 %or.cond432.i.i, i1 %.not422.i.i, i1 false
  br i1 %or.cond433.i.i, label %BIT_reloadDStream.exit175.i.i, label %BIT_endOfDStream.exit193.thread.i.i

BIT_endOfDStream.exit193.thread.i.i:              ; preds = %bb.bu
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %.sroa.0.1512.i.i ; 3 uses
  %.sroa.0.0.copyload.i194.i.i = load i16, ptr %i.rd, align 4, !tbaa !58
  %.sroa.4.0..sroa_idx.i195.i.i = getelementptr inbounds nuw i8, ptr %i.rd, i64 2
  %.sroa.4.0.copyload.i196.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i195.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i197.i.i = getelementptr inbounds nuw i8, ptr %i.rd, i64 3
  %.sroa.5.0.copyload.i198.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i197.i.i, align 1, !tbaa !9
  %i.re = zext i8 %.sroa.5.0.copyload.i198.i.i to i32 ; 2 uses
  %i.rf = and i32 %.sroa.27.10.i.i, 63
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = shl i64 %.sroa.0216.8.i.i, %i.rg
  %i.ri = lshr i64 %i.rh, 1
  %i.rj = and i32 %i.re, 63
  %i.rk = xor i32 %i.rj, 63
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = lshr i64 %i.ri, %i.rl
  %i.rn = add i32 %.sroa.27.10.i.i, %i.re         ; 3 uses
  %i.ro = zext i16 %.sroa.0.0.copyload.i194.i.i to i64
  %i.rp = add nuw i64 %i.rm, %i.ro                ; 2 uses
  %.add.i.i.i = add nuw nsw i64 %.1.idx.i513.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i196.i.i, ptr %.ptr.ptr.i.i.i, align 1, !tbaa !9
  %i.rq = icmp ugt i32 %i.rn, 64
  br i1 %i.rq, label %BIT_reloadDStream.exit175.split.loop.exit491.i.i, label %.lr.ph515.i.i

BIT_reloadDStream.exit175.split.loop.exit485.i.i: ; preds = %BIT_endOfDStream.exit176.thread.i.i
  %.sroa.61222.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61222.9.ph.idx648.i.i
  br label %BIT_reloadDStream.exit175.i.i

BIT_reloadDStream.exit175.split.loop.exit491.i.i: ; preds = %bb.bm, %BIT_endOfDStream.exit193.thread.i.i, %.preheader.i.i, %FSE_initDState.exit129.i.i
  %.sroa.61222.1.idx.lcssa.i.i = phi i64 [ %.sroa.61222.8.idx.i.i, %.preheader.i.i ], [ %.sroa.61222.10.idx.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.61222.7.idx.i.i, %FSE_initDState.exit129.i.i ], [ %.sroa.61222.8.idx.i.i, %bb.bm ]
  %.sroa.0.1.lcssa.ph492.i.i = phi i64 [ %.sroa.0.0.i104.i, %.preheader.i.i ], [ %i.rp, %BIT_endOfDStream.exit193.thread.i.i ], [ %i.mp, %FSE_initDState.exit129.i.i ], [ %i.pq, %bb.bm ]
  %.sroa.27.2.ph493.i.i = phi i32 [ %.sroa.27.8.i.i, %.preheader.i.i ], [ %i.rn, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.27.7.i.i, %FSE_initDState.exit129.i.i ], [ %i.po, %bb.bm ]
  %.sroa.0208.2.ph495.i.i = phi i64 [ %.sroa.0208.0.i103.i, %.preheader.i.i ], [ %i.qr, %BIT_endOfDStream.exit193.thread.i.i ], [ %i.ly, %FSE_initDState.exit129.i.i ], [ %i.pb, %bb.bm ]
  %.2.idx.i.ph496.i.i = phi i64 [ %.036.idx.i.i105.i, %.preheader.i.i ], [ %.add.i.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ 0, %FSE_initDState.exit129.i.i ], [ %.036.add.i.i.i, %bb.bm ]
  %.sroa.61222.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61222.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit175.i.i

BIT_reloadDStream.exit175.split.loop.exit497.i.i: ; preds = %BIT_reloadDStream.exit192.i.i
  %.sroa.61222.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bo, i64 %.sroa.61222.10.idx.i.i
  br label %BIT_reloadDStream.exit175.i.i

BIT_reloadDStream.exit175.i.i:                    ; preds = %bb.bu, %bb.bp, %BIT_reloadDStream.exit175.split.loop.exit497.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.1.lcssa.ph492.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %.sroa.0.1512.i.i, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %.sroa.0.1512.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ %.sroa.0.1512.i.i, %bb.bp ], [ 0, %bb.bu ]
  %.sroa.27.2.i.i = phi i32 [ %.sroa.27.2.ph493.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %.sroa.27.10.i.i, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %i.qp, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ 64, %bb.bp ], [ 64, %bb.bu ]
  %.sroa.61222.2.i.i = phi ptr [ %.sroa.61222.1.ptr.le.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %.sroa.61222.10.ptr.le.i.i, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %.sroa.61222.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ %i.bo, %bb.bp ], [ %i.bo, %bb.bu ]
  %.sroa.0208.2.i.i = phi i64 [ %.sroa.0208.2.ph495.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %i.qr, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %i.qr, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ 0, %bb.bp ], [ %i.qr, %bb.bu ]
  %.2.idx.i.i.i = phi i64 [ %.2.idx.i.ph496.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ 255, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %.add51.i.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ %.1.idx.i513.i.i, %bb.bp ], [ %.add51.i.i.i, %bb.bu ] ; 2 uses
  %i.rr = icmp eq ptr %.sroa.61222.2.i.i, %i.bo
  %.not423.i.i = icmp eq i32 %.sroa.27.2.i.i, 64
  %or.cond434.i.i = and i1 %.not423.i.i, %i.rr
  %.not424.i.i = icmp eq i64 %.sroa.0208.2.i.i, 0
  %or.cond435.i.i = select i1 %or.cond434.i.i, i1 %.not424.i.i, i1 false
  %.not425.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i, 0
  %or.cond436.i.i = select i1 %or.cond435.i.i, i1 %.not425.i.i, i1 false
  br i1 %or.cond436.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit201.thread.i.i

BIT_endOfDStream.exit201.thread.i.i:              ; preds = %BIT_reloadDStream.exit175.i.i
  %i.rs = icmp eq i64 %.2.idx.i.i.i, 255
  %..i.i.i = select i1 %i.rs, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

FSE_decompress.exit.thread:                       ; preds = %bb.j, %bb.g, %bb.h, %bb.i, %bb.u, %BIT_initDStream.exit.i.i, %BIT_endOfDStream.exit106.thread.i.i, %BIT_initDStream.exit111.i.i, %BIT_endOfDStream.exit201.thread.i.i, %bb.az, %bb.m, %bb.ar
  %.0.i.ph = phi i64 [ -1, %bb.ar ], [ -1, %bb.m ], [ -1, %bb.az ], [ %..i.i.i, %BIT_endOfDStream.exit201.thread.i.i ], [ %i.bn, %BIT_initDStream.exit111.i.i ], [ %..i23.i.i, %BIT_endOfDStream.exit106.thread.i.i ], [ %i.bn, %BIT_initDStream.exit.i.i ], [ -1, %bb.u ], [ -72, %bb.i ], [ %i.bh, %bb.h ], [ -72, %bb.g ], [ %i.bl, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.critedge

FSE_decompress.exit:                              ; preds = %BIT_reloadDStream.exit81.i.i, %BIT_reloadDStream.exit175.i.i
  %.0.i = phi i64 [ %.2.idx.i.i.i, %BIT_reloadDStream.exit175.i.i ], [ %.2.idx.i19.i.i, %BIT_reloadDStream.exit81.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.rt = icmp ult i64 %.0.i, -119
  br i1 %i.rt, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %FSE_decompress.exit, %bb.d
  %.074 = phi i64 [ %i.l, %bb.d ], [ %.0.i, %FSE_decompress.exit ] ; 2 uses
  %.070 = phi i64 [ 0, %bb.d ], [ %i.f, %FSE_decompress.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  %.not170 = icmp eq i64 %.074, 0
  br i1 %.not170, label %.critedge, label %.lr.ph166.preheader

.lr.ph166.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.070287 = phi i64 [ %i.o, %.loopexit.thread ], [ %.070, %.loopexit ]
  %.074285 = phi i64 [ %i.m, %.loopexit.thread ], [ %.074, %.loopexit ] ; 3 uses
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.bv
  %i.ru = phi i64 [ %i.si, %bb.bv ], [ 0, %.lr.ph166.preheader ]
  %.069165 = phi i32 [ %i.sg, %bb.bv ], [ 0, %.lr.ph166.preheader ]
  %.173164 = phi i32 [ %i.sh, %bb.bv ], [ 0, %.lr.ph166.preheader ]
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 %i.ru ; 2 uses
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !9   ; 2 uses
  %i.rx = icmp ugt i8 %i.rw, 15
  br i1 %i.rx, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph166
  %i.ry = zext nneg i8 %i.rw to i64
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ry ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !3
  %i.sb = add i32 %i.sa, 1
  store i32 %i.sb, ptr %i.rz, align 4, !tbaa !3
  %i.sc = load i8, ptr %i.rv, align 1, !tbaa !9
  %i.sd = zext nneg i8 %i.sc to i32
  %i.se = shl nuw i32 1, %i.sd
  %i.sf = ashr i32 %i.se, 1
  %i.sg = add i32 %i.sf, %.069165                 ; 4 uses
  %i.sh = add i32 %.173164, 1                     ; 2 uses
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = icmp ugt i64 %.074285, %i.si
  br i1 %i.sj, label %.lr.ph166, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.bv
  %i.sk = icmp eq i32 %i.sg, 0
  br i1 %i.sk, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge
  %i.sl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sg, i1 true) ; 2 uses
  %i.sm = xor i32 %i.sl, 31                       ; 2 uses
  %i.sn = sub nuw nsw i32 32, %i.sl
  %i.so = icmp samesign ugt i32 %i.sm, 15
  br i1 %i.so, label %.critedge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sp = shl nuw nsw i32 2, %i.sm
  %i.sq = sub i32 %i.sp, %i.sg                    ; 2 uses
  %i.sr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sq, i1 true) ; 2 uses
  %i.ss = lshr exact i32 -2147483648, %i.sr
  %.not84 = icmp eq i32 %i.ss, %i.sq
  br i1 %.not84, label %bb.by, label %.critedge

bb.by:                                            ; preds = %bb.bx
  %i.st = sub nuw nsw i32 32, %i.sr               ; 2 uses
  %i.su = trunc nuw nsw i32 %i.st to i8
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 %.074285
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !9
  %i.sw = zext nneg i32 %i.st to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sw ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !3
  %i.sz = add i32 %i.sy, 1
  store i32 %i.sz, ptr %i.sx, align 4, !tbaa !3
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !3  ; 2 uses
  %i.tc = icmp ugt i32 %i.tb, 1
  %i.td = and i32 %i.tb, 1
  %.not85 = icmp eq i32 %i.td, 0
  %or.cond = and i1 %i.tc, %.not85
  br i1 %or.cond, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %bb.by
  %i.te = trunc nuw i64 %.074285 to i32
  %i.tf = add i32 %i.te, 1
  store i32 %i.tf, ptr %2, align 4, !tbaa !3
  store i32 %i.sn, ptr %3, align 4, !tbaa !3
  %i.tg = add nuw nsw i64 %.070287, 1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph166, %.loopexit, %FSE_decompress.exit.thread, %bb.bx, %bb.by, %bb.bw, %._crit_edge, %FSE_decompress.exit, %bb.f, %bb.e, %bb.a, %bb.bz
  %.1 = phi i64 [ %.0.i, %FSE_decompress.exit ], [ %.0.i.ph, %FSE_decompress.exit.thread ], [ -20, %._crit_edge ], [ -20, %bb.by ], [ %i.tg, %bb.bz ], [ -20, %bb.bx ], [ -72, %bb.a ], [ -72, %bb.f ], [ -72, %bb.e ], [ -20, %bb.bw ], [ -20, %.loopexit ], [ -20, %.lr.ph166 ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @FSE_readNCount(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ult i64 %4, 4
  br i1 %i.b, label %.critedge158, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val160 = load i32, ptr %3, align 1            ; 2 uses
  %i.c = and i32 %.val160, 15                     ; 4 uses
  %i.d = icmp samesign ugt i32 %i.c, 10
  br i1 %i.d, label %.critedge158, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.b
  %i.e = add nuw nsw i32 %i.c, 5
  store i32 %i.e, ptr %2, align 4, !tbaa !3
  %i.f = shl nuw nsw i32 32, %i.c                 ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = add nuw nsw i32 %i.c, 6
  %i.i = lshr i32 %.val160, 4
  %i.j = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 -5
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -7 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph203, %._crit_edge191
  %.0110201 = phi i1 [ true, %.lr.ph203 ], [ %i.bp, %._crit_edge191 ]
  %.0111200 = phi i32 [ 0, %.lr.ph203 ], [ %i.bm, %._crit_edge191 ] ; 8 uses
  %.0115199 = phi i32 [ 4, %.lr.ph203 ], [ %.8, %._crit_edge191 ] ; 3 uses
  %.0119198 = phi i32 [ %i.i, %.lr.ph203 ], [ %i.cc, %._crit_edge191 ] ; 4 uses
  %.0126197 = phi i32 [ %i.f, %.lr.ph203 ], [ %.1127.lcssa, %._crit_edge191 ] ; 6 uses
  %.0128196 = phi i32 [ %i.g, %.lr.ph203 ], [ %i.bl, %._crit_edge191 ] ; 2 uses
  %.0129195 = phi i32 [ %i.h, %.lr.ph203 ], [ %.1130.lcssa, %._crit_edge191 ] ; 4 uses
  %.0131194 = phi ptr [ %3, %.lr.ph203 ], [ %.6137, %._crit_edge191 ] ; 3 uses
  %.not = icmp ugt i32 %.0111200, %i.j
  br i1 %.not, label %.critedge158, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.0110201, label %bb.i, label %.preheader163

.preheader163:                                    ; preds = %bb.d
  %i.o = and i32 %.0119198, 65535
  %i.p = icmp eq i32 %i.o, 65535
  br i1 %i.p, label %.lr.ph, label %.preheader162

.preheader162:                                    ; preds = %bb.g, %.preheader163
  %.1132.lcssa = phi ptr [ %.0131194, %.preheader163 ], [ %.2133, %bb.g ] ; 4 uses
  %.1120.lcssa = phi i32 [ %.0119198, %.preheader163 ], [ %.2121, %bb.g ] ; 3 uses
  %.1116.lcssa = phi i32 [ %.0115199, %.preheader163 ], [ %.2117, %bb.g ] ; 2 uses
  %.0107.lcssa = phi i32 [ %.0111200, %.preheader163 ], [ %i.s, %bb.g ] ; 2 uses
  %i.q = and i32 %.1120.lcssa, 3                  ; 2 uses
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %.lr.ph178, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader163, %bb.g
  %.0107171 = phi i32 [ %i.s, %bb.g ], [ %.0111200, %.preheader163 ]
  %.1116170 = phi i32 [ %.2117, %bb.g ], [ %.0115199, %.preheader163 ] ; 3 uses
  %.1120169 = phi i32 [ %.2121, %bb.g ], [ %.0119198, %.preheader163 ]
  %.1132168 = phi ptr [ %.2133, %bb.g ], [ %.0131194, %.preheader163 ] ; 3 uses
  %i.s = add i32 %.0107171, 24                    ; 2 uses
  %i.t = icmp ult ptr %.1132168, %i.k
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.1132168, i64 2 ; 2 uses
  %.val159 = load i32, ptr %i.u, align 1
  %i.v = lshr i32 %.val159, %.1116170
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.w = lshr i32 %.1120169, 16
  %i.x = add nsw i32 %.1116170, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2133 = phi ptr [ %i.u, %bb.e ], [ %.1132168, %bb.f ] ; 2 uses
  %.2121 = phi i32 [ %i.v, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %.2117 = phi i32 [ %.1116170, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = and i32 %.2121, 65535
  %i.z = icmp eq i32 %i.y, 65535
  br i1 %i.z, label %.lr.ph, label %.preheader162, !llvm.loop !119

.lr.ph178:                                        ; preds = %.preheader162, %.lr.ph178
  %.1108177 = phi i32 [ %i.aa, %.lr.ph178 ], [ %.0107.lcssa, %.preheader162 ]
  %.3118176 = phi i32 [ %i.ac, %.lr.ph178 ], [ %.1116.lcssa, %.preheader162 ]
  %.3122175 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.1120.lcssa, %.preheader162 ]
  %i.aa = add i32 %.1108177, 3                    ; 2 uses
  %i.ab = lshr i32 %.3122175, 2                   ; 3 uses
  %i.ac = add nsw i32 %.3118176, 2                ; 2 uses
  %i.ad = and i32 %i.ab, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph178, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %.lr.ph178, %.preheader162
  %.3122.lcssa = phi i32 [ %.1120.lcssa, %.preheader162 ], [ %i.ab, %.lr.ph178 ]
  %.3118.lcssa = phi i32 [ %.1116.lcssa, %.preheader162 ], [ %i.ac, %.lr.ph178 ]
end_hunk_2
