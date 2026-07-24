inline.NumInlined: 186
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ZSTDv01_decompressDCtx:bb.a

ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread80_crit_edge: ; preds = %ZSTD_copyUncompressedBlock.exit, %.thread73
  %.pre = ptrtoint ptr %.054110 to i64
  br label %ZSTD_copyUncompressedBlock.exit.thread80

ZSTD_copyUncompressedBlock.exit.thread:           ; preds = %ZSTD_copyUncompressedBlock.exit
  %i.ag = icmp ult i64 %i.ae, -119
  br i1 %i.ag, label %bb.i, label %.thread83

bb.i:                                             ; preds = %ZSTD_copyUncompressedBlock.exit.thread.thread, %ZSTD_copyUncompressedBlock.exit.thread
  %.14879103 = phi i64 [ %.0.i.ph, %ZSTD_copyUncompressedBlock.exit.thread.thread ], [ %i.ae, %ZSTD_copyUncompressedBlock.exit.thread ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.054110, i64 %.14879103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %.0.i.ph ; 2 uses
  %i.aj = sub i64 %i.x, %.0.i.ph
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.e, %i.ak
  %i.am = icmp ult i64 %i.al, 3
  br i1 %i.am, label %.thread83, label %bb.c

ZSTD_copyUncompressedBlock.exit.thread80:         ; preds = %bb.h, %ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread80_crit_edge
  %.pre-phi = phi i64 [ %.pre, %ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread80_crit_edge ], [ %i.z, %bb.h ]
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = sub i64 %.pre-phi, %i.an
  br label %.thread83

.thread83:                                        ; preds = %bb.e, %bb.f, %ZSTD_copyUncompressedBlock.exit.thread, %bb.g, %bb.i, %.thread73, %bb.b, %bb.a, %ZSTD_copyUncompressedBlock.exit.thread80
  %.2 = phi i64 [ %i.ao, %ZSTD_copyUncompressedBlock.exit.thread80 ], [ -72, %bb.a ], [ -10, %bb.b ], [ -72, %.thread73 ], [ -70, %bb.g ], [ %i.ae, %ZSTD_copyUncompressedBlock.exit.thread ], [ -72, %bb.e ], [ -1, %bb.f ], [ -72, %bb.i ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_decompressBlock(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [256 x i16], align 16             ; 6 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca [128 x i16], align 16             ; 12 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.FSE_DStream_t, align 8      ; 17 uses
  %6 = alloca %struct.FSE_DStream_t, align 8      ; 10 uses
  %i.k = alloca [256 x i16], align 16             ; 7 uses
  %i.l = alloca [256 x i16], align 16             ; 8 uses
  %i.m = alloca [4097 x i32], align 16            ; 6 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca [256 x i8], align 16              ; 17 uses
  %i.q = alloca [17 x i32], align 16              ; 12 uses
  %i.r = alloca [4097 x i16], align 16            ; 7 uses
  %i.s = getelementptr i8, ptr %1, i64 %2         ; 12 uses
  %i.t = icmp ult i64 %4, 3
  br i1 %i.t, label %ZSTD_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load i8, ptr %3, align 1, !tbaa !7       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !7
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = zext i8 %i.u to i32                     ; 2 uses
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
  %7 = and i64 %index, 9223372036854775792
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %7 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %wide.load = load <8 x i8>, ptr %i.ce, align 1, !tbaa !7 ; 2 uses
  %wide.load521 = load <8 x i8>, ptr %i.cf, align 1, !tbaa !7 ; 2 uses
  %i.cg = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.ch = lshr <8 x i8> %wide.load521, splat (i8 4)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cd
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = and <8 x i8> %wide.load, splat (i8 15)
  %i.cm = and <8 x i8> %wide.load521, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.cg, <8 x i8> %i.cl, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ci, align 16, !tbaa !7
  %interleaved.vec522 = shufflevector <8 x i8> %i.ch, <8 x i8> %i.cm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec522, ptr %i.ck, align 16, !tbaa !7
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec524 = and i64 %i.cb, -4                   ; 3 uses
  %i.co = shl i64 %n.vec524, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index525 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next528, %vec.epilog.vector.body ] ; 3 uses
  %i.cp = shl i64 %index525, 1
  %8 = and i64 %index525, 9223372036854775804
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 %8
  %wide.load526 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !7 ; 2 uses
  %i.cr = lshr <4 x i8> %wide.load526, splat (i8 4)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cp
  %i.ct = and <4 x i8> %wide.load526, splat (i8 15)
  %interleaved.vec527 = shufflevector <4 x i8> %i.cr, <4 x i8> %i.ct, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec527, ptr %i.cs, align 8, !tbaa !7
  %index.next528 = add nuw i64 %index525, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next528, %n.vec524
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n529 = icmp eq i64 %i.cb, %n.vec524
  br i1 %cmp.n529, label %.loopexit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.cv = phi i64 [ %i.dd, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.cw = lshr exact i64 %i.cv, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !7   ; 2 uses
  %i.cz = lshr i8 %i.cy, 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cv ; 2 uses
  store i8 %i.cz, ptr %i.da, align 2, !tbaa !7
  %i.db = and i8 %i.cy, 15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !7
  %i.dd = add nuw nsw i64 %i.cv, 2                ; 2 uses
  %i.de = icmp samesign ugt i64 %i.bv, %i.dd
  br i1 %i.de, label %.lr.ph.i.i.i.i, label %.loopexit.thread.i.i.i.i, !llvm.loop !14

.loopexit.thread.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.q, i8 0, i64 68, i1 false)
  br label %.lr.ph187.preheader.i.i.i.i

bb.p:                                             ; preds = %bb.l
  %.not96.i.i.i.i = icmp samesign ugt i64 %i.bl, %i.bo
  br i1 %.not96.i.i.i.i, label %bb.q, label %HUF_readDTable.exit.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  store i32 255, ptr %i.o, align 4, !tbaa !3
  %i.dg = icmp samesign ult i8 %i.bn, 2
  br i1 %i.dg, label %FSE_decompress.exit.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = call fastcc i64 @FSE_readNCount(ptr noundef %i.l, ptr noundef %i.o, ptr noundef %i.n, ptr noundef nonnull %i.df, i64 noundef range(i64 0, 128) %i.bo) ; 4 uses
  %i.di = icmp ult i64 %i.dh, -7
  %.not21.i.i.i.i.i = icmp ult i64 %i.dh, %i.bo
  %or.cond.i.i = and i1 %i.di, %.not21.i.i.i.i.i
  br i1 %or.cond.i.i, label %bb.s, label %FSE_decompress.exit.thread.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.dj = load i32, ptr %i.o, align 4, !tbaa !3   ; 3 uses
  %i.dk = load i32, ptr %i.n, align 4, !tbaa !3   ; 11 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 19 uses
  %i.dm = shl nuw i32 1, %i.dk                    ; 5 uses
  %i.dn = add i32 %i.dm, -1                       ; 5 uses
  %i.do = lshr i32 %i.dm, 1
  %i.dp = lshr i32 %i.dm, 3
  %i.dq = add nuw nsw i32 %i.dp, 3
  %i.dr = add nuw nsw i32 %i.dq, %i.do            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.ds = icmp ugt i32 %i.dj, 255
  %i.dt = icmp ugt i32 %i.dk, 12
  %or.cond337.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond337.i.i, label %FSE_buildDTable.exit.thread.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = trunc nuw nsw i32 %i.dk to i16
  store i16 %i.du, ptr %i.m, align 16, !tbaa !15
  %sext.i.i.i.i.i.i = shl nuw nsw i32 32768, %i.dk
  %i.dv = lshr exact i32 %sext.i.i.i.i.i.i, 16    ; 3 uses
  %i.dw = add nuw nsw i32 %i.dj, 1                ; 2 uses
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %i.dw to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i.i, 1
  %i.dx = icmp eq i32 %i.dj, 0
  br i1 %i.dx, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.t
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i.i.i, 510
  br label %bb.u

bb.u:                                             ; preds = %bb.aa, %.new
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.i.i.i.1, %bb.aa ] ; 5 uses
  %.06984.i.i.i.i.i.i = phi i16 [ 1, %.new ], [ %.271.i.i.i.i.i.i.1, %bb.aa ] ; 2 uses
  %.07283.i.i.i.i.i.i = phi i32 [ %i.dn, %.new ], [ %.173.i.i.i.i.i.i.1, %bb.aa ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.aa ]
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i.i.i
  %i.dz = load i16, ptr %i.dy, align 4, !tbaa !18 ; 3 uses
  %i.ea = icmp eq i16 %i.dz, -1
  br i1 %i.ea, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eb = trunc i64 %indvars.iv.i.i.i.i.i.i to i8
  %i.ec = add i32 %.07283.i.i.i.i.i.i, -1
  %i.ed = zext i32 %.07283.i.i.i.i.i.i to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i8 %i.eb, ptr %i.ef, align 2, !tbaa !19
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.eg = sext i16 %i.dz to i32
  %.not80.i.i.i.i.i.i = icmp sgt i32 %i.dv, %i.eg
  %spec.select.i.i.i.i.i.i = select i1 %.not80.i.i.i.i.i.i, i16 %.06984.i.i.i.i.i.i, i16 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i.i.i.i.i.i = phi i16 [ 1, %bb.v ], [ %i.dz, %bb.w ]
  %.173.i.i.i.i.i.i = phi i32 [ %i.ec, %bb.v ], [ %.07283.i.i.i.i.i.i, %bb.w ] ; 3 uses
  %.271.i.i.i.i.i.i = phi i16 [ %.06984.i.i.i.i.i.i, %bb.v ], [ %spec.select.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.i.i.i
  store i16 %.sink.i.i.i.i.i.i, ptr %i.eh, align 4, !tbaa !18
  %indvars.iv.next.i.i.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i.i.i, 1 ; 3 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !18 ; 3 uses
  %i.ek = icmp eq i16 %i.ej, -1
  br i1 %i.ek, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = sext i16 %i.ej to i32
  %.not80.i.i.i.i.i.i.1 = icmp sgt i32 %i.dv, %i.el
  %spec.select.i.i.i.i.i.i.1 = select i1 %.not80.i.i.i.i.i.i.1, i16 %.271.i.i.i.i.i.i, i16 0
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.em = trunc i64 %indvars.iv.next.i.i.i.i.i.i to i8
  %i.en = add i32 %.173.i.i.i.i.i.i, -1
  %i.eo = zext i32 %.173.i.i.i.i.i.i to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i8 %i.em, ptr %i.eq, align 2, !tbaa !19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i.i.i.i.i.i.1 = phi i16 [ 1, %bb.z ], [ %i.ej, %bb.y ]
  %.173.i.i.i.i.i.i.1 = phi i32 [ %i.en, %bb.z ], [ %.173.i.i.i.i.i.i, %bb.y ] ; 3 uses
  %.271.i.i.i.i.i.i.1 = phi i16 [ %.271.i.i.i.i.i.i, %bb.z ], [ %spec.select.i.i.i.i.i.i.1, %bb.y ] ; 3 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.i.i.i
  store i16 %.sink.i.i.i.i.i.i.1, ptr %i.er, align 2, !tbaa !18
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
  %.07283.i.i.i.i.i.i.epil.init = phi i32 [ %i.dn, %bb.t ], [ %.173.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod728 = trunc i32 %i.dw to i1
  tail call void @llvm.assume(i1 %lcmp.mod728)
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i.i.i.epil.init
  %i.et = load i16, ptr %i.es, align 2, !tbaa !18 ; 3 uses
  %i.eu = icmp eq i16 %i.et, -1
  br i1 %i.eu, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.epil.preheader
  %i.ev = sext i16 %i.et to i32
  %.not80.i.i.i.i.i.i.epil = icmp sgt i32 %i.dv, %i.ev
  %spec.select.i.i.i.i.i.i.epil = select i1 %.not80.i.i.i.i.i.i.epil, i16 %.06984.i.i.i.i.i.i.epil.init, i16 0
  br label %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa

bb.ac:                                            ; preds = %.epil.preheader
  %i.ew = trunc i64 %indvars.iv.i.i.i.i.i.i.epil.init to i8
  %i.ex = add i32 %.07283.i.i.i.i.i.i.epil.init, -1
  %i.ey = zext i32 %.07283.i.i.i.i.i.i.epil.init to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  store i8 %i.ew, ptr %i.fa, align 2, !tbaa !19
  br label %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa

.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa:  ; preds = %bb.ac, %bb.ab
  %.sink.i.i.i.i.i.i.epil = phi i16 [ 1, %bb.ac ], [ %i.et, %bb.ab ]
  %.173.i.i.i.i.i.i.epil = phi i32 [ %i.ex, %bb.ac ], [ %.07283.i.i.i.i.i.i.epil.init, %bb.ab ]
  %.271.i.i.i.i.i.i.epil = phi i16 [ %.06984.i.i.i.i.i.i.epil.init, %bb.ac ], [ %spec.select.i.i.i.i.i.i.epil, %bb.ab ]
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.i.i.i.epil.init
  store i16 %.sink.i.i.i.i.i.i.epil, ptr %i.fb, align 2, !tbaa !18
  br label %.preheader81.i.i.i.i.i.i.preheader

.preheader81.i.i.i.i.i.i.preheader:               ; preds = %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa, %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa
  %.173.i.i.i.i.i.i.lcssa = phi i32 [ %.173.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ], [ %.173.i.i.i.i.i.i.epil, %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.271.i.i.i.i.i.i.lcssa = phi i16 [ %.271.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ], [ %.271.i.i.i.i.i.i.epil, %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa ] ; 2 uses
  br label %.preheader81.i.i.i.i.i.i

.preheader81.i.i.i.i.i.i:                         ; preds = %.preheader81.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i
  %indvars.iv92.i.i.i.i.i.i = phi i64 [ %indvars.iv.next93.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %.preheader81.i.i.i.i.i.i.preheader ] ; 3 uses
  %.06489.i.i.i.i.i.i = phi i32 [ %.1.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %.preheader81.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv92.i.i.i.i.i.i
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !18 ; 5 uses
end_hunk_0
begin_hunk_1_@ZSTD_decompressBlock:bb.a
  br label %FSE_reloadDStream.exit170.i.i.i.i.i.i

FSE_reloadDStream.exit170.i.i.i.i.i.i:            ; preds = %bb.cq, %bb.cl, %FSE_reloadDStream.exit170.split.loop.exit476.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit470.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit464.i.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.0.1.lcssa.ph471.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit470.i.i.i.i.i.i ], [ %.sroa.0.1491.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit476.i.i.i.i.i.i ], [ %.sroa.0.1491.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit464.i.i.i.i.i.i ], [ %.sroa.0.1491.i.i.i.i.i.i, %bb.cl ], [ 0, %bb.cq ]
  %.sroa.60232.2.i.i.i.i.i.i = phi ptr [ %.sroa.60232.1.ptr.le.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit470.i.i.i.i.i.i ], [ %.sroa.60232.10.ptr.le.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit476.i.i.i.i.i.i ], [ %.sroa.60232.9.ph.ptr.le.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit464.i.i.i.i.i.i ], [ %i.go, %bb.cl ], [ %i.go, %bb.cq ]
  %.sroa.26.2.i.i.i.i.i.i = phi i32 [ %.sroa.26.2.ph473.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit470.i.i.i.i.i.i ], [ %.sroa.26.10.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit476.i.i.i.i.i.i ], [ %i.vj, %FSE_reloadDStream.exit170.split.loop.exit464.i.i.i.i.i.i ], [ 64, %bb.cl ], [ 64, %bb.cq ]
  %.sroa.0203.2.i.i.i.i.i.i = phi i64 [ %.sroa.0203.2.ph474.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit470.i.i.i.i.i.i ], [ %i.vl, %FSE_reloadDStream.exit170.split.loop.exit476.i.i.i.i.i.i ], [ %i.vl, %FSE_reloadDStream.exit170.split.loop.exit464.i.i.i.i.i.i ], [ 0, %bb.cl ], [ %i.vl, %bb.cq ]
  %.2.idx.i.i.i.i.i.i.i = phi i64 [ %.2.idx.i.ph475.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit470.i.i.i.i.i.i ], [ 255, %FSE_reloadDStream.exit170.split.loop.exit476.i.i.i.i.i.i ], [ %.add51.i.i.i.i.i.i.i, %FSE_reloadDStream.exit170.split.loop.exit464.i.i.i.i.i.i ], [ %.1.idx.i492.i.i.i.i.i.i, %bb.cl ], [ %.add51.i.i.i.i.i.i.i, %bb.cq ]
  %i.wl = icmp eq ptr %.sroa.60232.2.i.i.i.i.i.i, %i.go
  %.not402.i.i.i.i.i.i = icmp eq i32 %.sroa.26.2.i.i.i.i.i.i, 64
  %or.cond413.i.i.i.i.i.i = and i1 %i.wl, %.not402.i.i.i.i.i.i
  %.not403.i.i.i.i.i.i = icmp eq i64 %.sroa.0203.2.i.i.i.i.i.i, 0
  %or.cond414.i.i.i.i.i.i = select i1 %or.cond413.i.i.i.i.i.i, i1 %.not403.i.i.i.i.i.i, i1 false
  %.not404.i.i.i.i.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i.i.i.i.i, 0
  %or.cond415.i.i.i.i.i.i = select i1 %or.cond414.i.i.i.i.i.i, i1 %.not404.i.i.i.i.i.i, i1 false
  br i1 %or.cond415.i.i.i.i.i.i, label %FSE_decompress.exit.i.i.i.i, label %FSE_decompress.exit.thread.i.i.i.i

FSE_decompress.exit.thread.i.i.i.i:               ; preds = %FSE_reloadDStream.exit170.i.i.i.i.i.i, %FSE_initDStream.exit108.i.i.i.i.i.i, %bb.bx, %bb.bp, %FSE_reloadDStream.exit78.i.i.i.i.i.i, %FSE_initDStream.exit.i.i.i.i.i.i, %bb.au, %bb.am, %FSE_buildDTable.exit.thread.i.i.i.i.i, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  br label %HUF_readDTable.exit.thread.i.i.i

FSE_decompress.exit.i.i.i.i:                      ; preds = %FSE_reloadDStream.exit170.i.i.i.i.i.i, %FSE_reloadDStream.exit78.i.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %.2.idx.i.i.i.i.i.i.i, %FSE_reloadDStream.exit170.i.i.i.i.i.i ], [ %.2.idx.i18.i.i.i.i.i.i, %FSE_reloadDStream.exit78.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  %i.wm = icmp ult i64 %.0.i.i.i.i.i, -7
  br i1 %i.wm, label %.loopexit.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i

.loopexit.i.i.i.i:                                ; preds = %FSE_decompress.exit.i.i.i.i, %bb.n
  %.082.i.i.i.i = phi i64 [ %i.bu, %bb.n ], [ %.0.i.i.i.i.i, %FSE_decompress.exit.i.i.i.i ] ; 2 uses
  %.081.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.bo, %FSE_decompress.exit.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.q, i8 0, i64 68, i1 false)
  %.not199.i.i.i.i = icmp eq i64 %.082.i.i.i.i, 0
  br i1 %.not199.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i, label %.lr.ph187.preheader.i.i.i.i

.lr.ph187.preheader.i.i.i.i:                      ; preds = %.loopexit.i.i.i.i, %.loopexit.thread.i.i.i.i
  %.081336.i.i.i.i = phi i64 [ %i.bx, %.loopexit.thread.i.i.i.i ], [ %.081.i.i.i.i, %.loopexit.i.i.i.i ]
  %.082334.i.i.i.i = phi i64 [ %i.bv, %.loopexit.thread.i.i.i.i ], [ %.082.i.i.i.i, %.loopexit.i.i.i.i ] ; 3 uses
  br label %.lr.ph187.i.i.i.i

.lr.ph187.i.i.i.i:                                ; preds = %bb.cr, %.lr.ph187.preheader.i.i.i.i
  %i.wn = phi i64 [ %i.xa, %bb.cr ], [ 0, %.lr.ph187.preheader.i.i.i.i ]
  %.079186.i.i.i.i = phi i32 [ %i.wy, %bb.cr ], [ 0, %.lr.ph187.preheader.i.i.i.i ]
  %.184185.i.i.i.i = phi i32 [ %i.wz, %bb.cr ], [ 0, %.lr.ph187.preheader.i.i.i.i ]
  %i.wo = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !7   ; 3 uses
  %i.wq = icmp ugt i8 %i.wp, 15
  br i1 %i.wq, label %HUF_readDTable.exit.thread.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph187.i.i.i.i
  %i.wr = zext nneg i8 %i.wp to i64
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.wr ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !3
  %i.wu = add i32 %i.wt, 1
  store i32 %i.wu, ptr %i.ws, align 4, !tbaa !3
  %i.wv = zext nneg i8 %i.wp to i32
  %i.ww = shl nuw nsw i32 1, %i.wv
  %i.wx = lshr i32 %i.ww, 1
  %i.wy = add i32 %i.wx, %.079186.i.i.i.i         ; 4 uses
  %i.wz = add i32 %.184185.i.i.i.i, 1             ; 2 uses
  %i.xa = zext i32 %i.wz to i64                   ; 2 uses
  %i.xb = icmp ugt i64 %.082334.i.i.i.i, %i.xa
  br i1 %i.xb, label %.lr.ph187.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i:                              ; preds = %bb.cr
  %i.xc = icmp eq i32 %i.wy, 0
  br i1 %i.xc, label %HUF_readDTable.exit.thread.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge.i.i.i.i
  %i.xd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.wy, i1 true) ; 4 uses
  %i.xe = xor i32 %i.xd, 31                       ; 3 uses
  %.not99.i.i.i.i = icmp samesign ult i32 %i.xe, 12
  br i1 %.not99.i.i.i.i, label %bb.ct, label %HUF_readDTable.exit.thread.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.xf = trunc nuw nsw i32 %i.xd to i16
  %i.xg = sub nuw nsw i16 32, %i.xf               ; 2 uses
  store i16 %i.xg, ptr %i.r, align 16, !tbaa !18
  %i.xh = shl nuw nsw i32 2, %i.xe
  %i.xi = sub i32 %i.xh, %i.wy                    ; 2 uses
  %i.xj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.xi, i1 true) ; 2 uses
  %i.xk = lshr exact i32 -2147483648, %i.xj
  %.not100.i.i.i.i = icmp eq i32 %i.xk, %i.xi
  br i1 %.not100.i.i.i.i, label %bb.cu, label %HUF_readDTable.exit.thread.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.xl = sub nuw nsw i32 32, %i.xj               ; 2 uses
  %i.xm = trunc nuw nsw i32 %i.xl to i8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.p, i64 %.082334.i.i.i.i
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !7
  %i.xo = zext nneg i32 %i.xl to i64
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.xo ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !3
  %i.xr = add i32 %i.xq, 1
  store i32 %i.xr, ptr %i.xp, align 4, !tbaa !3
  %i.xs = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !3  ; 2 uses
  %i.xu = icmp ugt i32 %i.xt, 1
  %i.xv = and i32 %i.xt, 1
  %.not101.i.i.i.i = icmp eq i32 %i.xv, 0
  %or.cond.i.i.i.i = and i1 %i.xu, %.not101.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.preheader108.preheader.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i

.preheader108.preheader.i.i.i.i:                  ; preds = %bb.cu
  %i.xw = sub nuw nsw i32 33, %i.xd
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.xw to i64
  %i.xx = add nsw i64 %wide.trip.count.i.i.i.i, -1 ; 3 uses
  %xtraiter736 = and i64 %i.xx, 1
  %i.xy = icmp eq i32 %i.xd, 31
  br i1 %i.xy, label %.preheader108.i.i.i.i.epil.preheader, label %.preheader108.preheader.i.i.i.i.new

.preheader108.preheader.i.i.i.i.new:              ; preds = %.preheader108.preheader.i.i.i.i
  %unroll_iter739 = and i64 %i.xx, -2
  br label %.preheader108.i.i.i.i

.preheader.i.i.i.i.unr-lcssa:                     ; preds = %.preheader108.i.i.i.i
  %lcmp.mod737.not = icmp eq i64 %xtraiter736, 0
  br i1 %lcmp.mod737.not, label %.preheader.i.i.i.i, label %.preheader108.i.i.i.i.epil.preheader

.preheader108.i.i.i.i.epil.preheader:             ; preds = %.preheader.i.i.i.i.unr-lcssa, %.preheader108.preheader.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 1, %.preheader108.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %.preheader.i.i.i.i.unr-lcssa ]
  %.085188.i.i.i.i.epil.init = phi i32 [ 0, %.preheader108.preheader.i.i.i.i ], [ %i.yn, %.preheader.i.i.i.i.unr-lcssa ]
  %lcmp.mod738 = trunc i64 %i.xx to i1
  tail call void @llvm.assume(i1 %lcmp.mod738)
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.epil.init
  store i32 %.085188.i.i.i.i.epil.init, ptr %i.xz, align 4, !tbaa !3
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.unr-lcssa, %.preheader108.i.i.i.i.epil.preheader
  %i.ya = trunc nuw nsw i32 %i.xe to i8
  %i.yb = add nuw nsw i8 %i.ya, 2
  br label %bb.cv

.preheader108.i.i.i.i:                            ; preds = %.preheader108.i.i.i.i, %.preheader108.preheader.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 1, %.preheader108.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %.preheader108.i.i.i.i ] ; 4 uses
  %.085188.i.i.i.i = phi i32 [ 0, %.preheader108.preheader.i.i.i.i.new ], [ %i.yn, %.preheader108.i.i.i.i ] ; 2 uses
  %niter740 = phi i64 [ 0, %.preheader108.preheader.i.i.i.i.new ], [ %niter740.next.1, %.preheader108.i.i.i.i ]
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !3
  %i.ye = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.yf = add nsw i32 %i.ye, -1
  %i.yg = shl i32 %i.yd, %i.yf
  %i.yh = add i32 %i.yg, %.085188.i.i.i.i         ; 2 uses
  store i32 %.085188.i.i.i.i, ptr %i.yc, align 4, !tbaa !3
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !3
  %i.yk = trunc i64 %indvars.iv.next.i.i.i.i to i32
  %i.yl = add i32 %i.yk, -1
  %i.ym = shl i32 %i.yj, %i.yl
  %i.yn = add i32 %i.ym, %i.yh                    ; 2 uses
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !3
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter740.next.1 = add nuw i64 %niter740, 2     ; 2 uses
  %niter740.ncmp.1 = icmp eq i64 %niter740.next.1, %unroll_iter739
  br i1 %niter740.ncmp.1, label %.preheader.i.i.i.i.unr-lcssa, label %.preheader108.i.i.i.i, !llvm.loop !31

bb.cv:                                            ; preds = %._crit_edge193.i.i.i.i, %.preheader.i.i.i.i
  %indvars.iv282.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %indvars.iv.next283.i.i.i.i, %._crit_edge193.i.i.i.i ] ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv282.i.i.i.i
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !7   ; 3 uses
  %i.yq = zext nneg i8 %i.yp to i32
  %i.yr = shl nuw i32 1, %i.yq
  %i.ys = ashr i32 %i.yr, 1
  %i.yt = trunc i64 %indvars.iv282.i.i.i.i to i8  ; 3 uses
  %i.yu = sub i8 %i.yb, %i.yp                     ; 3 uses
  %i.yv = zext i8 %i.yp to i64
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.yv ; 2 uses
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !3  ; 3 uses
  %i.yy = add i32 %i.ys, %i.yx                    ; 3 uses
  %i.yz = icmp ult i32 %i.yx, %i.yy
  br i1 %i.yz, label %iter.check547, label %._crit_edge193.i.i.i.i

iter.check547:                                    ; preds = %bb.cv
  %i.za = zext i32 %i.yx to i64                   ; 6 uses
  %wide.trip.count280.i.i.i.i = zext i32 %i.yy to i64 ; 2 uses
  %i.zb = sub nsw i64 %wide.trip.count280.i.i.i.i, %i.za ; 7 uses
  %min.iters.check531 = icmp ult i64 %i.zb, 4
  br i1 %min.iters.check531, label %.lr.ph192.i.i.i.i.preheader, label %vector.main.loop.iter.check532

vector.main.loop.iter.check532:                   ; preds = %iter.check547
  %min.iters.check533 = icmp ult i64 %i.zb, 16
  br i1 %min.iters.check533, label %vec.epilog.ph551, label %vector.ph534

vector.ph534:                                     ; preds = %vector.main.loop.iter.check532
  %n.mod.vf535 = and i64 %i.zb, 12
  %n.vec536 = and i64 %i.zb, -16                  ; 4 uses
  %i.zc = add nsw i64 %n.vec536, %i.za
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.yt, i64 0
  %broadcast.splatinsert537 = insertelement <8 x i8> poison, i8 %i.yu, i64 0
  %interleaved.vec541 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert537, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph534
  %index540 = phi i64 [ 0, %vector.ph534 ], [ %index.next543, %vector.body539 ] ; 2 uses
  %i.zd = add i64 %index540, %i.za                ; 2 uses
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.zd
  %i.zf = getelementptr [2 x i8], ptr %i.bm, i64 %i.zd
  %i.zg = getelementptr i8, ptr %i.zf, i64 16
  store <16 x i8> %interleaved.vec541, ptr %i.ze, align 2, !tbaa !7
  store <16 x i8> %interleaved.vec541, ptr %i.zg, align 2, !tbaa !7
  %index.next543 = add nuw i64 %index540, 16      ; 2 uses
  %i.zh = icmp eq i64 %index.next543, %n.vec536
  br i1 %i.zh, label %middle.block544, label %vector.body539, !llvm.loop !32

middle.block544:                                  ; preds = %vector.body539
  %cmp.n545 = icmp eq i64 %i.zb, %n.vec536
  br i1 %cmp.n545, label %._crit_edge193.i.i.i.i, label %vec.epilog.iter.check549

vec.epilog.iter.check549:                         ; preds = %middle.block544
  %min.epilog.iters.check550 = icmp eq i64 %n.mod.vf535, 0
  br i1 %min.epilog.iters.check550, label %.lr.ph192.i.i.i.i.preheader, label %vec.epilog.ph551, !prof !12

vec.epilog.ph551:                                 ; preds = %vector.main.loop.iter.check532, %vec.epilog.iter.check549
  %vec.epilog.resume.val546 = phi i64 [ %n.vec536, %vec.epilog.iter.check549 ], [ 0, %vector.main.loop.iter.check532 ]
  %n.vec553 = and i64 %i.zb, -4                   ; 3 uses
  %i.zi = add nsw i64 %n.vec553, %i.za
  %broadcast.splatinsert554 = insertelement <4 x i8> poison, i8 %i.yt, i64 0
  %broadcast.splatinsert556 = insertelement <4 x i8> poison, i8 %i.yu, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.bm, i64 %i.za
  %interleaved.vec560 = shufflevector <4 x i8> %broadcast.splatinsert554, <4 x i8> %broadcast.splatinsert556, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body558

vec.epilog.vector.body558:                        ; preds = %vec.epilog.vector.body558, %vec.epilog.ph551
  %index559 = phi i64 [ %vec.epilog.resume.val546, %vec.epilog.ph551 ], [ %index.next561, %vec.epilog.vector.body558 ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index559
  store <8 x i8> %interleaved.vec560, ptr %gep, align 2, !tbaa !7
  %index.next561 = add nuw i64 %index559, 4       ; 2 uses
  %i.zj = icmp eq i64 %index.next561, %n.vec553
  br i1 %i.zj, label %vec.epilog.middle.block562, label %vec.epilog.vector.body558, !llvm.loop !33

vec.epilog.middle.block562:                       ; preds = %vec.epilog.vector.body558
  %cmp.n563 = icmp eq i64 %i.zb, %n.vec553
  br i1 %cmp.n563, label %._crit_edge193.i.i.i.i, label %.lr.ph192.i.i.i.i.preheader

.lr.ph192.i.i.i.i.preheader:                      ; preds = %iter.check547, %vec.epilog.iter.check549, %vec.epilog.middle.block562
  %indvars.iv276.i.i.i.i.ph = phi i64 [ %i.za, %iter.check547 ], [ %i.zc, %vec.epilog.iter.check549 ], [ %i.zi, %vec.epilog.middle.block562 ]
  br label %.lr.ph192.i.i.i.i

.lr.ph192.i.i.i.i:                                ; preds = %.lr.ph192.i.i.i.i.preheader, %.lr.ph192.i.i.i.i
  %indvars.iv276.i.i.i.i = phi i64 [ %indvars.iv.next277.i.i.i.i, %.lr.ph192.i.i.i.i ], [ %indvars.iv276.i.i.i.i.ph, %.lr.ph192.i.i.i.i.preheader ] ; 2 uses
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv276.i.i.i.i ; 2 uses
  store i8 %i.yt, ptr %i.zk, align 2, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 1
  store i8 %i.yu, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !tbaa !7
  %indvars.iv.next277.i.i.i.i = add nuw nsw i64 %indvars.iv276.i.i.i.i, 1 ; 2 uses
  %exitcond281.not.i.i.i.i = icmp eq i64 %indvars.iv.next277.i.i.i.i, %wide.trip.count280.i.i.i.i
  br i1 %exitcond281.not.i.i.i.i, label %._crit_edge193.i.i.i.i, label %.lr.ph192.i.i.i.i, !llvm.loop !34

._crit_edge193.i.i.i.i:                           ; preds = %.lr.ph192.i.i.i.i, %middle.block544, %vec.epilog.middle.block562, %bb.cv
  store i32 %i.yy, ptr %i.yw, align 4, !tbaa !3
  %indvars.iv.next283.i.i.i.i = add i64 %indvars.iv282.i.i.i.i, 1 ; 2 uses
  %i.zl = and i64 %indvars.iv.next283.i.i.i.i, 4294967295
  %.not103.i.i.i.i = icmp ult i64 %.082334.i.i.i.i, %i.zl
  br i1 %.not103.i.i.i.i, label %HUF_readDTable.exit.i.i.i, label %bb.cv, !llvm.loop !35

HUF_readDTable.exit.thread.i.i.i:                 ; preds = %.lr.ph187.i.i.i.i, %bb.cu, %bb.ct, %bb.cs, %._crit_edge.i.i.i.i, %.loopexit.i.i.i.i, %FSE_decompress.exit.i.i.i.i, %FSE_decompress.exit.thread.i.i.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  br label %.sink.split.i.i

HUF_readDTable.exit.i.i.i:                        ; preds = %._crit_edge193.i.i.i.i
  %i.zm = add nuw nsw i64 %.081336.i.i.i.i, 1     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  %.not17.i.i.i = icmp ult i64 %i.zm, %i.bl
  br i1 %.not17.i.i.i, label %bb.cw, label %.sink.split.i.i

bb.cw:                                            ; preds = %HUF_readDTable.exit.i.i.i
  %i.zn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.zm ; 12 uses
  %i.zo = sub nuw nsw i64 %i.bl, %i.zm            ; 3 uses
  %i.zp = icmp ult i64 %i.zo, 6
  br i1 %i.zp, label %.sink.split.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.zq = icmp samesign ult i64 %i.bg, 15
  %i.zr = getelementptr inbounds i8, ptr %i.s, i64 -15
  %i.zs = select i1 %i.zq, ptr %i.bj, ptr %i.zr   ; 2 uses
  %i.zt = zext nneg i16 %i.xg to i32              ; 2 uses
  %.val123.i.i.i.i = load i16, ptr %i.zn, align 1 ; 5 uses
  %i.zu = zext i16 %.val123.i.i.i.i to i64        ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zn, i64 2
  %.val122.i.i.i.i = load i16, ptr %i.zv, align 1 ; 5 uses
  %i.zw = zext i16 %.val122.i.i.i.i to i64        ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %.val.i.i.i.i = load i16, ptr %i.zx, align 1    ; 5 uses
  %i.zy = zext i16 %.val.i.i.i.i to i64           ; 2 uses
  %i.zz = add nsw i64 %i.zo, -6
  %i.aaa = add nuw nsw i64 %i.zw, %i.zu
  %i.aab = add nuw nsw i64 %i.aaa, %i.zy          ; 2 uses
  %i.aac = sub nsw i64 %i.zz, %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zn, i64 6 ; 12 uses
  %i.aae = getelementptr i8, ptr %i.aad, i64 %i.zu ; 13 uses
  %i.aaf = getelementptr i8, ptr %i.aae, i64 %i.zw ; 16 uses
  %i.aag = getelementptr i8, ptr %i.aaf, i64 %i.zy ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.aah = add nuw nsw i64 %i.aab, 6
  %.not.i18.i.i.i = icmp uge i64 %i.aah, %i.zo
  %i.aai = icmp eq i16 %.val123.i.i.i.i, 0
  %or.cond.i19.i.i.i = or i1 %i.aai, %.not.i18.i.i.i
  br i1 %or.cond.i19.i.i.i, label %HUF_decompress.exit.thread255.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aaj = icmp ugt i16 %.val123.i.i.i.i, 7
  br i1 %i.aaj, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aak = getelementptr i8, ptr %i.aae, i64 -1
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !7 ; 2 uses
  %i.aam = icmp eq i8 %i.aal, 0
  br i1 %i.aam, label %HUF_decompress.exit.thread255.i.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.cz
  %i.aan = getelementptr inbounds i8, ptr %i.aae, i64 -8 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.aan, align 1
  %i.aao = zext i8 %i.aal to i32
  %i.aap = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aao, i1 true)
  %i.aaq = xor i32 %i.aap, 31
  %i.aar = sub nuw nsw i32 8, %i.aaq
  br label %bb.di

bb.da:                                            ; preds = %bb.cy
  %i.aas = load i8, ptr %i.aad, align 1, !tbaa !7
  %i.aat = zext i8 %i.aas to i64                  ; 7 uses
  switch i16 %.val123.i.i.i.i, label %bb.dh [
    i16 7, label %bb.db
    i16 6, label %bb.dc
    i16 5, label %bb.dd
    i16 4, label %bb.de
    i16 3, label %bb.df
    i16 2, label %bb.dg
  ]

bb.db:                                            ; preds = %bb.da
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zn, i64 12
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !7
  %i.aaw = zext i8 %i.aav to i64
  %i.aax = shl nuw nsw i64 %i.aaw, 48
  %i.aay = or disjoint i64 %i.aax, %i.aat
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.aaz = phi i64 [ %i.aay, %bb.db ], [ %i.aat, %bb.da ]
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zn, i64 11
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !7
  %i.abc = zext i8 %i.abb to i64
  %i.abd = shl nuw nsw i64 %i.abc, 40
  %i.abe = add nuw nsw i64 %i.abd, %i.aaz
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %i.abf = phi i64 [ %i.abe, %bb.dc ], [ %i.aat, %bb.da ]
  %i.abg = getelementptr inbounds nuw i8, ptr %i.zn, i64 10
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !7
  %i.abi = zext i8 %i.abh to i64
  %i.abj = shl nuw nsw i64 %i.abi, 32
  %i.abk = add nuw nsw i64 %i.abj, %i.abf
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %i.abl = phi i64 [ %i.abk, %bb.dd ], [ %i.aat, %bb.da ]
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zn, i64 9
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !7
  %i.abo = zext i8 %i.abn to i64
  %i.abp = shl nuw nsw i64 %i.abo, 24
  %i.abq = add nuw nsw i64 %i.abp, %i.abl
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.da
  %i.abr = phi i64 [ %i.abq, %bb.de ], [ %i.aat, %bb.da ]
  %i.abs = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !7
  %i.abu = zext i8 %i.abt to i64
  %i.abv = shl nuw nsw i64 %i.abu, 16
  %i.abw = add nuw nsw i64 %i.abv, %i.abr
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.da
  %i.abx = phi i64 [ %i.abw, %bb.df ], [ %i.aat, %bb.da ]
  %i.aby = getelementptr inbounds nuw i8, ptr %i.zn, i64 7
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !7
  %i.aca = zext i8 %i.abz to i64
  %i.acb = shl nuw nsw i64 %i.aca, 8
  %i.acc = add nuw nsw i64 %i.acb, %i.abx
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %.sroa.0218.1.i.i.i.i = phi i64 [ %i.aat, %bb.da ], [ %i.acc, %bb.dg ]
  %i.acd = getelementptr i8, ptr %i.aae, i64 -1
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !7 ; 2 uses
  %i.acf = icmp eq i8 %i.ace, 0
  br i1 %i.acf, label %HUF_decompress.exit.thread255.i.i, label %.thread48.i.i.i.i.i

.thread48.i.i.i.i.i:                              ; preds = %bb.dh
  %i.acg = zext i8 %i.ace to i32
end_hunk_1
