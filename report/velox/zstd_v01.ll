inline.NumInlined: 186
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ZSTD_decompressBlock:bb.a
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = and i32 %i.ad, 458752
  %i.af = or disjoint i32 %i.ae, %i.x
  %i.ag = or disjoint i32 %i.af, %i.ab            ; 3 uses
  %i.ah = lshr i32 %i.ac, 6                       ; 2 uses
  switch i32 %i.ah, label %bb.c [
    i32 3, label %ZSTD_decompressSequences.exit
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ai = zext nneg i32 %i.ag to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.ph.i = phi i64 [ %i.ai, %bb.c ], [ 1, %bb.b ] ; 6 uses
  %i.aj = add i64 %4, -3
  %i.ak = icmp ugt i64 %.0.i.ph.i, %i.aj
  br i1 %i.ak, label %ZSTD_decompressSequences.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 5 uses
  switch i32 %i.ah, label %default.unreachable.i [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 0, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.i.ph.i
  br label %ZSTDv01_decodeLiteralsBlock.exit

bb.g:                                             ; preds = %bb.e
  %i.an = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ao = icmp ult i64 %2, %i.an
  br i1 %i.ao, label %ZSTD_decompressSequences.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not60.i = icmp eq i32 %i.ag, 0
  br i1 %.not60.i, label %.thread12.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = sub nsw i64 0, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.s, i64 %i.ap
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 %i.ar, i64 %i.an, i1 false)
  br label %.thread12.i

.thread12.i:                                      ; preds = %bb.i, %bb.h
  %.pre-phi.i = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.h ]
  %i.as = getelementptr inbounds i8, ptr %i.s, i64 %.pre-phi.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %ZSTDv01_decodeLiteralsBlock.exit

bb.j:                                             ; preds = %bb.e
  %i.au = icmp samesign ult i64 %.0.i.ph.i, 4
  br i1 %i.au, label %ZSTD_decompressSequences.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !7
  %i.ax = zext i8 %i.aw to i64
  %i.ay = load i8, ptr %i.al, align 1, !tbaa !7
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = or disjoint i64 %i.ba, %i.ax
  %i.bc = lshr i8 %i.u, 3
  %i.bd = and i8 %i.bc, 7
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 16
  %i.bg = or disjoint i64 %i.bb, %i.bf            ; 5 uses
  %i.bh = icmp ugt i64 %i.bg, %2
  br i1 %i.bh, label %ZSTD_decompressSequences.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = sub nsw i64 0, %i.bg
  %i.bj = getelementptr inbounds i8, ptr %i.s, i64 %i.bi ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.bl = add nsw i64 %.0.i.ph.i, -2              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.r, i8 0, i64 8194, i1 false)
  store i16 12, ptr %i.r, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 21 uses
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !7   ; 4 uses
  %i.bo = zext i8 %i.bn to i64                    ; 12 uses
  %i.bp = icmp slt i8 %i.bn, 0
  br i1 %i.bp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bq = icmp samesign ugt i8 %i.bn, -15
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr [4 x i8], ptr @HUF_readDTable.l, i64 %i.bo
  %i.bs = getelementptr i8, ptr %i.br, i64 -968
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = sext i32 %i.bt to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.p, i8 1, i64 256, i1 false)
  br label %.loopexit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bv = add nsw i64 %i.bo, -127                 ; 5 uses
  %i.bw = add nsw i64 %i.bo, -126
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  %.not98.i.i.i.i = icmp samesign ult i64 %i.bx, %i.bl
  br i1 %.not98.i.i.i.i, label %iter.check, label %HUF_readDTable.exit.thread.i.i.i

iter.check:                                       ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 2)
  %i.bz = add nsw i64 %umax, -1
  %i.ca = lshr i64 %i.bz, 1
  %i.cb = add nuw i64 %i.ca, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bv, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check520 = icmp ult i64 %i.bv, 31
  br i1 %min.iters.check520, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cb, 12
  %n.vec = and i64 %i.cb, -16                     ; 4 uses
  %i.cc = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = shl i64 %index, 1                       ; 2 uses
  %i.ce = and i64 %index, 9223372036854775792
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %wide.load = load <8 x i8>, ptr %i.cf, align 1, !tbaa !7 ; 2 uses
  %wide.load521 = load <8 x i8>, ptr %i.cg, align 1, !tbaa !7 ; 2 uses
  %i.ch = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.ci = lshr <8 x i8> %wide.load521, splat (i8 4)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cd
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = and <8 x i8> %wide.load, splat (i8 15)
  %i.cn = and <8 x i8> %wide.load521, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.ch, <8 x i8> %i.cm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.cj, align 16, !tbaa !7
  %interleaved.vec522 = shufflevector <8 x i8> %i.ci, <8 x i8> %i.cn, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec522, ptr %i.cl, align 16, !tbaa !7
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec524 = and i64 %i.cb, -4                   ; 3 uses
  %i.cp = shl i64 %n.vec524, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index525 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next528, %vec.epilog.vector.body ] ; 3 uses
  %i.cq = shl i64 %index525, 1
  %i.cr = and i64 %index525, 9223372036854775804
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cr
  %wide.load526 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !7 ; 2 uses
  %i.ct = lshr <4 x i8> %wide.load526, splat (i8 4)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cq
  %i.cv = and <4 x i8> %wide.load526, splat (i8 15)
  %interleaved.vec527 = shufflevector <4 x i8> %i.ct, <4 x i8> %i.cv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec527, ptr %i.cu, align 8, !tbaa !7
  %index.next528 = add nuw i64 %index525, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next528, %n.vec524
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n529 = icmp eq i64 %i.cb, %n.vec524
  br i1 %cmp.n529, label %.loopexit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.a = phi i64 [ %indvars.iv.next.i.i.i.i.a, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.cx = lshr exact i64 %indvars.iv.i.i.i.i.a, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !7   ; 2 uses
  %i.da = lshr i8 %i.cz, 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i.i.i.i.a ; 2 uses
  store i8 %i.da, ptr %i.db, align 2, !tbaa !7
  %i.dc = and i8 %i.cz, 15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !7
  %indvars.iv.next.i.i.i.i.a = add nuw nsw i64 %indvars.iv.i.i.i.i.a, 2 ; 2 uses
  %7 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.a, %i.bv
  br i1 %7, label %.lr.ph.i.i.i.i, label %.loopexit.thread.i.i.i.i, !llvm.loop !14

.loopexit.thread.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.q, i8 0, i64 68, i1 false)
  br label %.lr.ph187.preheader.i.i.i.i

bb.p:                                             ; preds = %bb.l
  %.not96.i.i.i.i = icmp samesign ugt i64 %i.bl, %i.bo
  br i1 %.not96.i.i.i.i, label %bb.q, label %HUF_readDTable.exit.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  store i32 255, ptr %i.o, align 4, !tbaa !3
  %i.df = icmp samesign ult i8 %i.bn, 2
  br i1 %i.df, label %FSE_decompress.exit.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = call fastcc i64 @FSE_readNCount(ptr noundef %i.l, ptr noundef %i.o, ptr noundef %i.n, ptr noundef nonnull %i.de, i64 noundef range(i64 0, 128) %i.bo) ; 4 uses
  %i.dh = icmp ult i64 %i.dg, -7
  %.not21.i.i.i.i.i = icmp ult i64 %i.dg, %i.bo
  %or.cond.i.i = and i1 %i.dh, %.not21.i.i.i.i.i
  br i1 %or.cond.i.i, label %bb.s, label %FSE_decompress.exit.thread.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.di = load i32, ptr %i.o, align 4, !tbaa !3   ; 3 uses
  %i.dj = load i32, ptr %i.n, align 4, !tbaa !3   ; 11 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 19 uses
  %i.dl = shl nuw i32 1, %i.dj                    ; 5 uses
  %i.dm = add i32 %i.dl, -1                       ; 5 uses
  %i.dn = lshr i32 %i.dl, 1
  %i.do = lshr i32 %i.dl, 3
  %i.dp = add nuw nsw i32 %i.do, 3
  %i.dq = add nuw nsw i32 %i.dp, %i.dn            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.dr = icmp ugt i32 %i.di, 255
  %i.ds = icmp ugt i32 %i.dj, 12
  %or.cond337.i.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond337.i.i, label %FSE_buildDTable.exit.thread.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = trunc nuw nsw i32 %i.dj to i16
  store i16 %i.dt, ptr %i.m, align 16, !tbaa !15
  %sext.i.i.i.i.i.i = shl nuw nsw i32 32768, %i.dj
  %i.du = lshr exact i32 %sext.i.i.i.i.i.i, 16    ; 3 uses
  %i.dv = add nuw nsw i32 %i.di, 1                ; 2 uses
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %i.dv to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i.i, 1
  %i.dw = icmp eq i32 %i.di, 0
  br i1 %i.dw, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.t
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i.i.i, 510
  br label %bb.u

bb.u:                                             ; preds = %bb.aa, %.new
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.i.i.i.1, %bb.aa ] ; 5 uses
  %.06984.i.i.i.i.i.i = phi i16 [ 1, %.new ], [ %.271.i.i.i.i.i.i.1, %bb.aa ] ; 2 uses
  %.07283.i.i.i.i.i.i = phi i32 [ %i.dm, %.new ], [ %.173.i.i.i.i.i.i.1, %bb.aa ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.aa ]
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i.i.i
  %i.dy = load i16, ptr %i.dx, align 4, !tbaa !18 ; 3 uses
  %i.dz = icmp eq i16 %i.dy, -1
  br i1 %i.dz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ea = trunc i64 %indvars.iv.i.i.i.i.i.i to i8
  %i.eb = add i32 %.07283.i.i.i.i.i.i, -1
  %i.ec = zext i32 %.07283.i.i.i.i.i.i to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store i8 %i.ea, ptr %i.ee, align 2, !tbaa !19
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ef = sext i16 %i.dy to i32
  %.not80.i.i.i.i.i.i = icmp sgt i32 %i.du, %i.ef
  %spec.select.i.i.i.i.i.i = select i1 %.not80.i.i.i.i.i.i, i16 %.06984.i.i.i.i.i.i, i16 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i.i.i.i.i.i = phi i16 [ 1, %bb.v ], [ %i.dy, %bb.w ]
  %.173.i.i.i.i.i.i = phi i32 [ %i.eb, %bb.v ], [ %.07283.i.i.i.i.i.i, %bb.w ] ; 3 uses
  %.271.i.i.i.i.i.i = phi i16 [ %.06984.i.i.i.i.i.i, %bb.v ], [ %spec.select.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.i.i.i
  store i16 %.sink.i.i.i.i.i.i, ptr %i.eg, align 4, !tbaa !18
  %indvars.iv.next.i.i.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i.i.i, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !18 ; 3 uses
  %i.ej = icmp eq i16 %i.ei, -1
  br i1 %i.ej, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = sext i16 %i.ei to i32
  %.not80.i.i.i.i.i.i.1 = icmp sgt i32 %i.du, %i.ek
  %spec.select.i.i.i.i.i.i.1 = select i1 %.not80.i.i.i.i.i.i.1, i16 %.271.i.i.i.i.i.i, i16 0
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.el = trunc i64 %indvars.iv.next.i.i.i.i.i.i to i8
  %i.em = add i32 %.173.i.i.i.i.i.i, -1
  %i.en = zext i32 %.173.i.i.i.i.i.i to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store i8 %i.el, ptr %i.ep, align 2, !tbaa !19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i.i.i.i.i.i.1 = phi i16 [ 1, %bb.z ], [ %i.ei, %bb.y ]
  %.173.i.i.i.i.i.i.1 = phi i32 [ %i.em, %bb.z ], [ %.173.i.i.i.i.i.i, %bb.y ] ; 3 uses
  %.271.i.i.i.i.i.i.1 = phi i16 [ %.271.i.i.i.i.i.i, %bb.z ], [ %spec.select.i.i.i.i.i.i.1, %bb.y ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.i.i.i
  store i16 %.sink.i.i.i.i.i.i.1, ptr %i.eq, align 2, !tbaa !18
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa, label %bb.u, !llvm.loop !21

.preheader81.i.i.i.i.i.i.preheader.unr-lcssa:     ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader81.i.i.i.i.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa, %bb.t
  %indvars.iv.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.t ], [ %indvars.iv.next.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06984.i.i.i.i.i.i.epil.init = phi i16 [ 1, %bb.t ], [ %.271.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ] ; 2 uses
  %.07283.i.i.i.i.i.i.epil.init = phi i32 [ %i.dm, %bb.t ], [ %.173.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod730 = trunc i32 %i.dv to i1
  tail call void @llvm.assume(i1 %lcmp.mod730)
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i.i.i.epil.init
  %i.es = load i16, ptr %i.er, align 2, !tbaa !18 ; 3 uses
  %i.et = icmp eq i16 %i.es, -1
  br i1 %i.et, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.epil.preheader
  %i.eu = sext i16 %i.es to i32
  %.not80.i.i.i.i.i.i.epil = icmp sgt i32 %i.du, %i.eu
  %spec.select.i.i.i.i.i.i.epil = select i1 %.not80.i.i.i.i.i.i.epil, i16 %.06984.i.i.i.i.i.i.epil.init, i16 0
  br label %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa

bb.ac:                                            ; preds = %.epil.preheader
  %i.ev = trunc i64 %indvars.iv.i.i.i.i.i.i.epil.init to i8
  %i.ew = add i32 %.07283.i.i.i.i.i.i.epil.init, -1
  %i.ex = zext i32 %.07283.i.i.i.i.i.i.epil.init to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store i8 %i.ev, ptr %i.ez, align 2, !tbaa !19
  br label %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa

.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa:  ; preds = %bb.ac, %bb.ab
  %.sink.i.i.i.i.i.i.epil = phi i16 [ 1, %bb.ac ], [ %i.es, %bb.ab ]
  %.173.i.i.i.i.i.i.epil = phi i32 [ %i.ew, %bb.ac ], [ %.07283.i.i.i.i.i.i.epil.init, %bb.ab ]
  %.271.i.i.i.i.i.i.epil = phi i16 [ %.06984.i.i.i.i.i.i.epil.init, %bb.ac ], [ %spec.select.i.i.i.i.i.i.epil, %bb.ab ]
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.i.i.i.epil.init
  store i16 %.sink.i.i.i.i.i.i.epil, ptr %i.fa, align 2, !tbaa !18
  br label %.preheader81.i.i.i.i.i.i.preheader

.preheader81.i.i.i.i.i.i.preheader:               ; preds = %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa, %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa
  %.173.i.i.i.i.i.i.lcssa = phi i32 [ %.173.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ], [ %.173.i.i.i.i.i.i.epil, %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.271.i.i.i.i.i.i.lcssa = phi i16 [ %.271.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ], [ %.271.i.i.i.i.i.i.epil, %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa ] ; 2 uses
  br label %.preheader81.i.i.i.i.i.i

.preheader81.i.i.i.i.i.i:                         ; preds = %.preheader81.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i
  %indvars.iv92.i.i.i.i.i.i = phi i64 [ %indvars.iv.next93.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %.preheader81.i.i.i.i.i.i.preheader ] ; 3 uses
  %.06489.i.i.i.i.i.i = phi i32 [ %.1.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %.preheader81.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv92.i.i.i.i.i.i
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !18 ; 5 uses
  %i.fd = icmp sgt i16 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader81.i.i.i.i.i.i
  %i.fe = trunc i64 %indvars.iv92.i.i.i.i.i.i to i8 ; 3 uses
  %i.ff = icmp eq i16 %i.fc, 1
  br i1 %i.ff, label %.epil.preheader731, label %.lr.ph.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.new:                           ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fg = and i16 %i.fc, 32766
  %unroll_iter736 = zext nneg i16 %i.fg to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i.new
  %.187.i.i.i.i.i.i = phi i32 [ %.06489.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.new ], [ %.2.i.i.i.i.i.i.1, %bb.ah ] ; 2 uses
  %niter737 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.new ], [ %niter737.next.1, %bb.ah ]
  %i.fh = zext nneg i32 %.187.i.i.i.i.i.i to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i8 %i.fe, ptr %i.fj, align 2, !tbaa !19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.1.pn.i.i.i.i.i.i = phi i32 [ %.187.i.i.i.i.i.i, %bb.ad ], [ %.2.i.i.i.i.i.i, %bb.ae ]
  %.pn.i.i.i.i.i.i = add nuw i32 %i.dq, %.1.pn.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = and i32 %.pn.i.i.i.i.i.i, %i.dm ; 4 uses
  %i.fk = icmp ugt i32 %.2.i.i.i.i.i.i, %.173.i.i.i.i.i.i.lcssa
  br i1 %i.fk, label %bb.ae, label %bb.af, !llvm.loop !22

bb.af:                                            ; preds = %bb.ae
  %i.fl = zext nneg i32 %.2.i.i.i.i.i.i to i64
end_hunk_0
