inline.NumInlined: 289
inline.NumDeleted: 63
begin_hunk_0_@llvm.memcpy.p0.p0.i64

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [256 x i16], align 16             ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca [128 x i16], align 16             ; 12 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = icmp ult i64 %4, 11
  br i1 %i.j, label %ZSTD_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %3, align 1, !tbaa !9
  %i.l = and i8 %i.k, 3
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.j
    i8 2, label %bb.n
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 7 uses
  %.val16.i.i = load i32, ptr %3, align 1
  %i.n = lshr i32 %.val16.i.i, 2
  %i.o = and i32 %i.n, 524287                     ; 7 uses
  %i.p = zext nneg i32 %i.o to i64                ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.val.i.i = load i32, ptr %i.q, align 1         ; 2 uses
  %i.r = lshr i32 %.val.i.i, 5
  %i.s = and i32 %i.r, 524287                     ; 5 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp samesign ugt i32 %i.o, 131072
  %i.v = lshr i32 %.val.i.i, 24
  %i.w = trunc nuw i32 %i.v to i8
  br i1 %i.u, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add nuw nsw i64 %i.t, 5                  ; 2 uses
  %i.y = icmp ugt i64 %i.x, %4
  br i1 %i.y, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.aa = lshr i32 %i.o, 8                        ; 2 uses
  %i.ab = icmp eq i32 %i.o, 0
  %i.ac = icmp samesign ugt i32 %i.s, %i.o
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i.i, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i32 %i.s, %i.o
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.z, i64 range(i64 0, 524288) %i.p, i1 false)
  br label %ZSTD_decodeLiteralsBlock.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.s, 1
  br i1 %i.ae, label %bb.i, label %HUF_decompress.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 %i.w, i64 range(i64 0, 524288) %i.p, i1 false)
  br label %ZSTD_decodeLiteralsBlock.exit

HUF_decompress.exit.i.i:                          ; preds = %bb.h
  %.lhs.trunc.i.i.i = shl nuw nsw i32 %i.s, 4
  %i.af = udiv i32 %.lhs.trunc.i.i.i, %i.o
  %.zext.i.i.i = zext nneg i32 %i.af to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr @algoTime, i64 %.zext.i.i.i ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22
  %i.ak = mul i32 %i.aj, %i.aa
  %i.al = add i32 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = add i32 %i.aq, %i.an                    ; 2 uses
  %i.as = lshr i32 %i.ar, 4
  %i.at = add i32 %i.as, %i.ar
  %i.au = icmp ult i32 %i.at, %i.al
  %spec.select.i.i.i = zext i1 %i.au to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @HUF_decompress.decompress, i64 %spec.select.i.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.ax = tail call i64 %i.aw(ptr noundef nonnull %i.m, i64 noundef range(i64 0, 524288) %i.p, ptr noundef nonnull %i.z, i64 noundef range(i64 0, 524288) %i.t) #18, !inline_history !24
  %i.ay = icmp ult i64 %i.ax, -119
  br i1 %i.ay, label %ZSTD_decodeLiteralsBlock.exit, label %ZSTD_decodeLiteralsBlock.exit.thread25

bb.j:                                             ; preds = %bb.b
  %.val47.i = load i32, ptr %3, align 1
  %i.az = lshr i32 %.val47.i, 2
  %i.ba = and i32 %i.az, 4194303                  ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 10 uses
  %i.bc = add i64 %4, -11
  %i.bd = icmp ult i64 %i.bc, %i.bb
  br i1 %i.bd, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.be = icmp samesign ugt i32 %i.ba, 131072
  %i.bf = add nsw i64 %4, -3
  %i.bg = icmp samesign ult i64 %i.bf, %i.bb
  %or.cond.i = or i1 %i.be, %i.bg
  br i1 %or.cond.i, label %ZSTD_decompressSequences.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 1 %3, i64 %i.bb, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.bb, ptr %i.bj, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  store i64 0, ptr %i.bk, align 1
  %i.bl = add nuw nsw i64 %i.bb, 3
  br label %ZSTD_decodeLiteralsBlock.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.bb, ptr %i.bo, align 8, !tbaa !26
  %i.bp = add nuw nsw i64 %i.bb, 3
  br label %ZSTD_decodeLiteralsBlock.exit.thread

bb.n:                                             ; preds = %bb.b
  %.val.i = load i32, ptr %3, align 1             ; 2 uses
  %i.bq = lshr i32 %.val.i, 2
  %i.br = and i32 %i.bq, 4194303                  ; 2 uses
  %i.bs = icmp samesign ugt i32 %i.br, 131072
  br i1 %i.bs, label %ZSTD_decompressSequences.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = lshr i32 %.val.i, 24
  %i.bu = trunc nuw i32 %i.bt to i8
  %i.bv = zext nneg i32 %i.br to i64              ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 3 uses
  %i.bx = add nuw nsw i64 %i.bv, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i8 %i.bu, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.bv, ptr %i.bz, align 8, !tbaa !26
  br label %ZSTD_decodeLiteralsBlock.exit.thread

ZSTD_decodeLiteralsBlock.exit.thread25:           ; preds = %bb.c, %bb.d, %bb.e, %HUF_decompress.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.m, ptr %i.ca, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 131072, ptr %i.cb, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 141376
  store i64 0, ptr %i.cc, align 8
  br label %ZSTD_decompressSequences.exit

ZSTD_decodeLiteralsBlock.exit:                    ; preds = %bb.g, %bb.i, %HUF_decompress.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.m, ptr %i.cd, align 8, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.p, ptr %i.ce, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  store i64 0, ptr %i.cf, align 1
  br label %ZSTD_decodeLiteralsBlock.exit.thread

ZSTD_decodeLiteralsBlock.exit.thread:             ; preds = %bb.o, %bb.l, %bb.m, %ZSTD_decodeLiteralsBlock.exit
  %i.cg = phi i64 [ %i.p, %ZSTD_decodeLiteralsBlock.exit ], [ %i.bv, %bb.o ], [ %i.bb, %bb.l ], [ %i.bb, %bb.m ]
  %i.ch = phi ptr [ %i.m, %ZSTD_decodeLiteralsBlock.exit ], [ %i.bw, %bb.o ], [ %i.bh, %bb.l ], [ %i.bm, %bb.m ] ; 2 uses
  %.2.i19 = phi i64 [ %i.x, %ZSTD_decodeLiteralsBlock.exit ], [ 4, %bb.o ], [ %i.bl, %bb.l ], [ %i.bp, %bb.m ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %.2.i19 ; 8 uses
  %i.cj = sub i64 %4, %.2.i19                     ; 5 uses
  %i.ck = getelementptr i8, ptr %1, i64 %2        ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 10264
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !12 ; 2 uses
  %i.cq = getelementptr i8, ptr %3, i64 %4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.cr = icmp ult i64 %i.cj, 5
  br i1 %i.cr, label %ZSTD_decodeSeqHeaders.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %ZSTD_decodeLiteralsBlock.exit.thread
  %.val.i.i15 = load i16, ptr %i.ci, align 1
  %i.cs = zext i16 %.val.i.i15 to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !9
  %i.cv = zext i8 %i.cu to i32                    ; 5 uses
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = and i32 %i.cv, 2
  %.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9
  %i.dd = zext i8 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 8
  %i.df = or disjoint i64 %i.de, %i.da
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !9
  %i.di = shl nuw nsw i32 %i.cv, 8
  %i.dj = and i32 %i.di, 256
  %i.dk = zext i8 %i.dh to i32
  %i.dl = or disjoint i32 %i.dj, %i.dk
  %i.dm = zext nneg i32 %i.dl to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i = phi i64 [ 4, %bb.r ], [ 5, %bb.q ] ; 2 uses
  %.074.i.i = phi i64 [ %i.dm, %bb.r ], [ %i.df, %bb.q ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink.i.i ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.074.i.i ; 12 uses
  %i.dp = add nuw nsw i64 %.074.i.i, %.sink.i.i   ; 2 uses
  %i.dq = add nsw i64 %i.cj, -3
  %i.dr = icmp sgt i64 %i.dp, %i.dq
  br i1 %i.dr, label %ZSTD_decodeSeqHeaders.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  switch i32 %i.cw, label %bb.x [
    i32 2, label %bb.u
    i32 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dt = load i8, ptr %i.do, align 1, !tbaa !9
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 2, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.dv, align 2, !tbaa !30
  store i16 0, ptr %i.du, align 2, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.dt, ptr %i.dw, align 2, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.dx, align 1, !tbaa !34
  br label %FSE_buildDTable_raw.exit.i.i

bb.v:                                             ; preds = %bb.t
  store i32 6, ptr %i.c, align 4, !tbaa !3
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i16 6, ptr %0, align 2, !tbaa !27
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.dz, align 2, !tbaa !30
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.v ], [ %indvars.iv.next.i.i.i.3, %bb.w ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i ; 3 uses
  store i16 0, ptr %i.ea, align 2, !tbaa !31
  %i.eb = trunc i64 %indvars.iv.i.i.i to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i8 %i.eb, ptr %i.ec, align 2, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 3
  store i8 6, ptr %i.ed, align 1, !tbaa !34
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i16 0, ptr %i.ee, align 2, !tbaa !31
  %i.ef = trunc i64 %indvars.iv.next.i.i.i to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i8 %i.ef, ptr %i.eg, align 2, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  store i8 6, ptr %i.eh, align 1, !tbaa !34
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i.i.i.1 ; 3 uses
  store i16 0, ptr %i.ei, align 2, !tbaa !31
  %i.ej = trunc i64 %indvars.iv.next.i.i.i.1 to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i8 %i.ej, ptr %i.ek, align 2, !tbaa !33
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 3
  store i8 6, ptr %i.el, align 1, !tbaa !34
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i.i.i.2 ; 3 uses
  store i16 0, ptr %i.em, align 2, !tbaa !31
  %i.en = trunc i64 %indvars.iv.next.i.i.i.2 to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i8 %i.en, ptr %i.eo, align 2, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  store i8 6, ptr %i.ep, align 1, !tbaa !34
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, 64
  br i1 %exitcond.not.i.i.3, label %FSE_buildDTable_raw.exit.i.i, label %bb.w, !llvm.loop !35

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i32 63, ptr %i.g, align 4, !tbaa !3
  %gepdiff.i.i = sub nsw i64 %i.cj, %i.dp
  %i.eq = call fastcc i64 @FSE_readNCount(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.c, ptr noundef nonnull %i.do, i64 noundef %gepdiff.i.i) ; 2 uses
  %i.er = icmp ult i64 %i.eq, -119
  br i1 %i.er, label %bb.y, label %.thread.i.i

bb.y:                                             ; preds = %bb.x
  %i.es = load i32, ptr %i.c, align 4, !tbaa !3   ; 5 uses
  %i.et = icmp ugt i32 %i.es, 10
  br i1 %i.et, label %.thread.i.i, label %bb.z

.thread.i.i:                                      ; preds = %bb.y, %bb.x
  %.075.ph.i.i = phi i64 [ -20, %bb.y ], [ -1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %ZSTD_decodeSeqHeaders.exit.thread.sink.split.i

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eq
  %i.ev = load i32, ptr %i.g, align 4, !tbaa !3   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.ex = shl nuw nsw i32 1, %i.es                ; 5 uses
  %i.ey = add nsw i32 %i.ex, -1                   ; 5 uses
  %i.ez = lshr i32 %i.ex, 1
  %i.fa = lshr i32 %i.ex, 3
  %i.fb = add nuw nsw i32 %i.fa, 3
  %i.fc = add nuw nsw i32 %i.fb, %i.ez            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.fd = icmp ugt i32 %i.ev, 255
  br i1 %i.fd, label %FSE_buildDTable.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %sext.i.i = shl nuw nsw i32 32768, %i.es
  %i.fe = lshr exact i32 %sext.i.i, 16            ; 3 uses
  %i.ff = add nuw nsw i32 %i.ev, 1                ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ff to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.fg = icmp eq i32 %i.ev, 0
  br i1 %i.fg, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.aa
  %unroll_iter = and i64 %wide.trip.count.i.i, 510
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.ah ] ; 5 uses
  %.06782.i.i = phi i16 [ 1, %.new ], [ %.269.i.i.1, %bb.ah ] ; 2 uses
  %.07081.i.i = phi i32 [ %i.ey, %.new ], [ %.171.i.i.1, %bb.ah ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.ah ]
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.fi = load i16, ptr %i.fh, align 4, !tbaa !37 ; 3 uses
  %i.fj = icmp eq i16 %i.fi, -1
  br i1 %i.fj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fk = trunc i64 %indvars.iv.i.i to i8
  %i.fl = add i32 %.07081.i.i, -1
  %i.fm = zext i32 %.07081.i.i to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  store i8 %i.fk, ptr %i.fo, align 2, !tbaa !33
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fp = sext i16 %i.fi to i32
  %.not78.i102.i = icmp sgt i32 %i.fe, %i.fp
  %spec.select.i103.i = select i1 %.not78.i102.i, i16 %.06782.i.i, i16 0
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink.i104.i = phi i16 [ 1, %bb.ac ], [ %i.fi, %bb.ad ]
  %.171.i.i = phi i32 [ %i.fl, %bb.ac ], [ %.07081.i.i, %bb.ad ] ; 3 uses
  %.269.i.i = phi i16 [ %.06782.i.i, %bb.ac ], [ %spec.select.i103.i, %bb.ad ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i16 %.sink.i104.i, ptr %i.fq, align 4, !tbaa !37
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next.i.i
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !37 ; 3 uses
  %i.ft = icmp eq i16 %i.fs, -1
  br i1 %i.ft, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fu = sext i16 %i.fs to i32
  %.not78.i102.i.1 = icmp sgt i32 %i.fe, %i.fu
  %spec.select.i103.i.1 = select i1 %.not78.i102.i.1, i16 %.269.i.i, i16 0
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fv = trunc i64 %indvars.iv.next.i.i to i8
  %i.fw = add i32 %.171.i.i, -1
  %i.fx = zext i32 %.171.i.i to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  store i8 %i.fv, ptr %i.fz, align 2, !tbaa !33
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i104.i.1 = phi i16 [ 1, %bb.ag ], [ %i.fs, %bb.af ]
  %.171.i.i.1 = phi i32 [ %i.fw, %bb.ag ], [ %.171.i.i, %bb.af ] ; 3 uses
  %.269.i.i.1 = phi i16 [ %.269.i.i, %bb.ag ], [ %spec.select.i103.i.1, %bb.af ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  store i16 %.sink.i104.i.1, ptr %i.ga, align 2, !tbaa !37
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.i.i.preheader.unr-lcssa, label %bb.ab, !llvm.loop !38

.preheader79.i.i.preheader.unr-lcssa:             ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader79.i.i.preheader.unr-lcssa, %bb.aa
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06782.i.i.epil.init = phi i16 [ 1, %bb.aa ], [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 2 uses
  %.07081.i.i.epil.init = phi i32 [ %i.ey, %bb.aa ], [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod183 = trunc i32 %i.ff to i1
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i.i.epil.init
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !37 ; 3 uses
  %i.gd = icmp eq i16 %i.gc, -1
  br i1 %i.gd, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.epil.preheader
  %i.ge = sext i16 %i.gc to i32
  %.not78.i102.i.epil = icmp sgt i32 %i.fe, %i.ge
  %spec.select.i103.i.epil = select i1 %.not78.i102.i.epil, i16 %.06782.i.i.epil.init, i16 0
  br label %.preheader79.i.i.preheader.epilog-lcssa

bb.aj:                                            ; preds = %.epil.preheader
  %i.gf = trunc i64 %indvars.iv.i.i.epil.init to i8
  %i.gg = add i32 %.07081.i.i.epil.init, -1
  %i.gh = zext i32 %.07081.i.i.epil.init to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store i8 %i.gf, ptr %i.gj, align 2, !tbaa !33
  br label %.preheader79.i.i.preheader.epilog-lcssa

.preheader79.i.i.preheader.epilog-lcssa:          ; preds = %bb.aj, %bb.ai
  %.sink.i104.i.epil = phi i16 [ 1, %bb.aj ], [ %i.gc, %bb.ai ]
  %.171.i.i.epil = phi i32 [ %i.gg, %bb.aj ], [ %.07081.i.i.epil.init, %bb.ai ]
  %.269.i.i.epil = phi i16 [ %.06782.i.i.epil.init, %bb.aj ], [ %spec.select.i103.i.epil, %bb.ai ]
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil.init
  store i16 %.sink.i104.i.epil, ptr %i.gk, align 2, !tbaa !37
  br label %.preheader79.i.i.preheader

.preheader79.i.i.preheader:                       ; preds = %.preheader79.i.i.preheader.unr-lcssa, %.preheader79.i.i.preheader.epilog-lcssa
  %.171.i.i.lcssa = phi i32 [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.171.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.269.i.i.lcssa = phi i16 [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.269.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ]
  br label %.preheader79.i.i

.preheader79.i.i:                                 ; preds = %.preheader79.i.i.preheader, %._crit_edge.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %.06287.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv90.i.i
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !37 ; 5 uses
  %i.gn = icmp sgt i16 %i.gm, 0
  br i1 %i.gn, label %.lr.ph.i109.i, label %._crit_edge.i.i

.lr.ph.i109.i:                                    ; preds = %.preheader79.i.i
  %i.go = trunc i64 %indvars.iv90.i.i to i8       ; 3 uses
  %i.gp = icmp eq i16 %i.gm, 1
  br i1 %i.gp, label %.epil.preheader184, label %.lr.ph.i109.i.new

.lr.ph.i109.i.new:                                ; preds = %.lr.ph.i109.i
  %i.gq = and i16 %i.gm, 32766
  %unroll_iter189 = zext nneg i16 %i.gq to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i109.i.new
  %.185.i.i = phi i32 [ %.06287.i.i, %.lr.ph.i109.i.new ], [ %.2.i110.i.1, %bb.ao ] ; 2 uses
  %niter190 = phi i32 [ 0, %.lr.ph.i109.i.new ], [ %niter190.next.1, %bb.ao ]
  %i.gr = zext nneg i32 %.185.i.i to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  store i8 %i.go, ptr %i.gt, align 2, !tbaa !33
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.1.pn.i.i = phi i32 [ %.185.i.i, %bb.ak ], [ %.2.i110.i, %bb.al ]
  %.pn.i.i = add nuw nsw i32 %i.fc, %.1.pn.i.i
  %.2.i110.i = and i32 %.pn.i.i, %i.ey            ; 4 uses
  %i.gu = icmp ugt i32 %.2.i110.i, %.171.i.i.lcssa
  br i1 %i.gu, label %bb.al, label %bb.am, !llvm.loop !39

bb.am:                                            ; preds = %bb.al
  %i.gv = zext nneg i32 %.2.i110.i to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  store i8 %i.go, ptr %i.gx, align 2, !tbaa !33
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.1.pn.i.i.1 = phi i32 [ %.2.i110.i, %bb.am ], [ %.2.i110.i.1, %bb.an ]
  %.pn.i.i.1 = add nuw nsw i32 %i.fc, %.1.pn.i.i.1
  %.2.i110.i.1 = and i32 %.pn.i.i.1, %i.ey        ; 5 uses
  %i.gy = icmp ugt i32 %.2.i110.i.1, %.171.i.i.lcssa
  br i1 %i.gy, label %bb.an, label %bb.ao, !llvm.loop !39

bb.ao:                                            ; preds = %bb.an
  %niter190.next.1 = add i32 %niter190, 2         ; 2 uses
  %niter190.ncmp.1 = icmp eq i32 %niter190.next.1, %unroll_iter189
  br i1 %niter190.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !40

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.ao
  %i.gz = and i16 %i.gm, 1
  %lcmp.mod186.not = icmp eq i16 %i.gz, 0
  br i1 %lcmp.mod186.not, label %._crit_edge.i.i, label %.epil.preheader184

.epil.preheader184:                               ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i109.i
  %.185.i.i.epil.init = phi i32 [ %.06287.i.i, %.lr.ph.i109.i ], [ %.2.i110.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod188 = trunc i16 %i.gm to i1
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.ha = zext nneg i32 %.185.i.i.epil.init to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  store i8 %i.go, ptr %i.hc, align 2, !tbaa !33
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader184
  %.1.pn.i.i.epil = phi i32 [ %.185.i.i.epil.init, %.epil.preheader184 ], [ %.2.i110.i.epil, %bb.ap ]
  %.pn.i.i.epil = add nuw nsw i32 %i.fc, %.1.pn.i.i.epil
  %.2.i110.i.epil = and i32 %.pn.i.i.epil, %i.ey  ; 3 uses
  %i.hd = icmp ugt i32 %.2.i110.i.epil, %.171.i.i.lcssa
  br i1 %i.hd, label %bb.ap, label %._crit_edge.i.i, !llvm.loop !39

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.ap, %.preheader79.i.i
  %.1.lcssa.i.i = phi i32 [ %.06287.i.i, %.preheader79.i.i ], [ %.2.i110.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.2.i110.i.epil, %bb.ap ] ; 2 uses
  %indvars.iv.next91.i.i = add nuw nsw i64 %indvars.iv90.i.i, 1 ; 2 uses
  %exitcond94.not.i.i = icmp eq i64 %indvars.iv.next91.i.i, %wide.trip.count.i.i
  br i1 %exitcond94.not.i.i, label %bb.aq, label %.preheader79.i.i, !llvm.loop !41

bb.aq:                                            ; preds = %._crit_edge.i.i
  %i.he = trunc nuw nsw i32 %i.es to i16
  %.not77.i106.i = icmp eq i32 %.1.lcssa.i.i, 0
  br i1 %.not77.i106.i, label %.preheader.preheader.i.i, label %FSE_buildDTable.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.aq
  %wide.trip.count98.i.i = zext nneg i32 %i.ex to i64
  br label %.preheader.i108.i

.preheader.i108.i:                                ; preds = %.preheader.i108.i, %.preheader.preheader.i.i
  %indvars.iv95.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next96.i.i, %.preheader.i108.i ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv95.i.i ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.hh = load i8, ptr %i.hg, align 2, !tbaa !33
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.hi ; 2 uses
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !37 ; 2 uses
  %i.hl = add i16 %i.hk, 1
  store i16 %i.hl, ptr %i.hj, align 2, !tbaa !37
  %i.hm = zext i16 %i.hk to i32                   ; 2 uses
  %i.hn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hm, i1 true)
  %i.ho = xor i32 %i.hn, 31
  %i.hp = sub nsw i32 %i.es, %i.ho                ; 2 uses
  %i.hq = trunc nsw i32 %i.hp to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hf, i64 3
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !34
  %i.hs = and i32 %i.hp, 255
  %i.ht = shl i32 %i.hm, %i.hs
  %i.hu = sub i32 %i.ht, %i.ex
  %i.hv = trunc i32 %i.hu to i16
  store i16 %i.hv, ptr %i.hf, align 2, !tbaa !31
  %indvars.iv.next96.i.i = add nuw nsw i64 %indvars.iv95.i.i, 1 ; 2 uses
  %exitcond99.not.i.i = icmp eq i64 %indvars.iv.next96.i.i, %wide.trip.count98.i.i
  br i1 %exitcond99.not.i.i, label %bb.ar, label %.preheader.i108.i, !llvm.loop !42

bb.ar:                                            ; preds = %.preheader.i108.i
  store i16 %i.he, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.269.i.i.lcssa, ptr %.sroa.4.0..sroa_idx.i.i, align 2
  br label %FSE_buildDTable.exit.i

FSE_buildDTable.exit.i:                           ; preds = %bb.ar, %bb.aq, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %FSE_buildDTable_raw.exit.i.i

FSE_buildDTable_raw.exit.i.i:                     ; preds = %bb.w, %FSE_buildDTable.exit.i, %bb.u
  %.281.i.i = phi ptr [ %i.eu, %FSE_buildDTable.exit.i ], [ %i.ds, %bb.u ], [ %i.do, %bb.w ] ; 7 uses
  %5 = and i32 %i.cv, 48
  switch i32 %5, label %bb.au [
    i32 32, label %bb.as
    i32 16, label %FSE_buildDTable_raw.exit98.loopexit.i.i
  ]

bb.as:                                            ; preds = %FSE_buildDTable_raw.exit.i.i
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.hw = getelementptr inbounds i8, ptr %i.cq, i64 -2
  %i.hx = icmp ugt ptr %.281.i.i, %i.hw
  br i1 %i.hx, label %ZSTD_decodeSeqHeaders.exit.thread.sink.split.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hy = getelementptr inbounds nuw i8, ptr %.281.i.i, i64 1
  %i.hz = load i8, ptr %.281.i.i, align 1, !tbaa !9
  %i.ia = and i8 %i.hz, 31
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 4104
  store i16 0, ptr %i.cn, align 2, !tbaa !27
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 4102
  store i16 0, ptr %i.ic, align 2, !tbaa !30
  store i16 0, ptr %i.ib, align 2, !tbaa !31
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 4106
  store i8 %i.ia, ptr %i.id, align 2, !tbaa !33
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 4107
  store i8 0, ptr %i.ie, align 1, !tbaa !34
  br label %FSE_buildDTable_raw.exit98.i.i

FSE_buildDTable_raw.exit98.loopexit.i.i:          ; preds = %FSE_buildDTable_raw.exit.i.i
  store i32 5, ptr %i.d, align 4, !tbaa !3
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 4104
  store i16 5, ptr %i.cn, align 2, !tbaa !27
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 4102
  store i16 1, ptr %i.ig, align 2, !tbaa !30
  store i16 0, ptr %i.if, align 2, !tbaa !31
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 4106
  store i8 0, ptr %i.ih, align 2, !tbaa !33
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 4107
  store i8 5, ptr %i.ii, align 1, !tbaa !34
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 4108
  store i16 0, ptr %i.ij, align 2, !tbaa !31
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 4110
  store i8 1, ptr %i.ik, align 2, !tbaa !33
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 4111
  store i8 5, ptr %i.il, align 1, !tbaa !34
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 4112
  store i16 0, ptr %i.im, align 2, !tbaa !31
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 4114
  store i8 2, ptr %i.in, align 2, !tbaa !33
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 4115
  store i8 5, ptr %i.io, align 1, !tbaa !34
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 4116
  store i16 0, ptr %i.ip, align 2, !tbaa !31
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 4118
  store i8 3, ptr %i.iq, align 2, !tbaa !33
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 4119
  store i8 5, ptr %i.ir, align 1, !tbaa !34
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 4120
  store i16 0, ptr %i.is, align 2, !tbaa !31
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4122
  store i8 4, ptr %i.it, align 2, !tbaa !33
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 4123
  store i8 5, ptr %i.iu, align 1, !tbaa !34
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4124
  store i16 0, ptr %i.iv, align 2, !tbaa !31
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 4126
  store i8 5, ptr %i.iw, align 2, !tbaa !33
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 4127
  store i8 5, ptr %i.ix, align 1, !tbaa !34
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 4128
  store i16 0, ptr %i.iy, align 2, !tbaa !31
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 4130
  store i8 6, ptr %i.iz, align 2, !tbaa !33
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 4131
  store i8 5, ptr %i.ja, align 1, !tbaa !34
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 4132
  store i16 0, ptr %i.jb, align 2, !tbaa !31
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 4134
  store i8 7, ptr %i.jc, align 2, !tbaa !33
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 4135
  store i8 5, ptr %i.jd, align 1, !tbaa !34
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 4136
  store i16 0, ptr %i.je, align 2, !tbaa !31
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 4138
  store i8 8, ptr %i.jf, align 2, !tbaa !33
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 4139
  store i8 5, ptr %i.jg, align 1, !tbaa !34
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 4140
  store i16 0, ptr %i.jh, align 2, !tbaa !31
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 4142
  store i8 9, ptr %i.ji, align 2, !tbaa !33
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 4143
  store i8 5, ptr %i.jj, align 1, !tbaa !34
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 4144
  store i16 0, ptr %i.jk, align 2, !tbaa !31
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 4146
  store i8 10, ptr %i.jl, align 2, !tbaa !33
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4147
  store i8 5, ptr %i.jm, align 1, !tbaa !34
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4148
  store i16 0, ptr %i.jn, align 2, !tbaa !31
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 4150
  store i8 11, ptr %i.jo, align 2, !tbaa !33
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 4151
  store i8 5, ptr %i.jp, align 1, !tbaa !34
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 4152
  store i16 0, ptr %i.jq, align 2, !tbaa !31
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 4154
  store i8 12, ptr %i.jr, align 2, !tbaa !33
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 4155
  store i8 5, ptr %i.js, align 1, !tbaa !34
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 4156
  store i16 0, ptr %i.jt, align 2, !tbaa !31
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 4158
  store i8 13, ptr %i.ju, align 2, !tbaa !33
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4159
  store i8 5, ptr %i.jv, align 1, !tbaa !34
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 4160
  store i16 0, ptr %i.jw, align 2, !tbaa !31
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 4162
  store i8 14, ptr %i.jx, align 2, !tbaa !33
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 4163
  store i8 5, ptr %i.jy, align 1, !tbaa !34
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 4164
  store i16 0, ptr %i.jz, align 2, !tbaa !31
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 4166
  store i8 15, ptr %i.ka, align 2, !tbaa !33
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 4167
  store i8 5, ptr %i.kb, align 1, !tbaa !34
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 4168
  store i16 0, ptr %i.kc, align 2, !tbaa !31
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 4170
  store i8 16, ptr %i.kd, align 2, !tbaa !33
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 4171
  store i8 5, ptr %i.ke, align 1, !tbaa !34
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 4172
  store i16 0, ptr %i.kf, align 2, !tbaa !31
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 4174
  store i8 17, ptr %i.kg, align 2, !tbaa !33
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 4175
  store i8 5, ptr %i.kh, align 1, !tbaa !34
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 4176
  store i16 0, ptr %i.ki, align 2, !tbaa !31
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4178
  store i8 18, ptr %i.kj, align 2, !tbaa !33
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4179
  store i8 5, ptr %i.kk, align 1, !tbaa !34
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 4180
  store i16 0, ptr %i.kl, align 2, !tbaa !31
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 4182
  store i8 19, ptr %i.km, align 2, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 4183
  store i8 5, ptr %i.kn, align 1, !tbaa !34
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 4184
  store i16 0, ptr %i.ko, align 2, !tbaa !31
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 4186
  store i8 20, ptr %i.kp, align 2, !tbaa !33
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 4187
  store i8 5, ptr %i.kq, align 1, !tbaa !34
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4188
  store i16 0, ptr %i.kr, align 2, !tbaa !31
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4190
  store i8 21, ptr %i.ks, align 2, !tbaa !33
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 4191
  store i8 5, ptr %i.kt, align 1, !tbaa !34
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 4192
  store i16 0, ptr %i.ku, align 2, !tbaa !31
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 4194
  store i8 22, ptr %i.kv, align 2, !tbaa !33
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 4195
  store i8 5, ptr %i.kw, align 1, !tbaa !34
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 4196
  store i16 0, ptr %i.kx, align 2, !tbaa !31
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 4198
  store i8 23, ptr %i.ky, align 2, !tbaa !33
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 4199
  store i8 5, ptr %i.kz, align 1, !tbaa !34
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 4200
  store i16 0, ptr %i.la, align 2, !tbaa !31
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4202
  store i8 24, ptr %i.lb, align 2, !tbaa !33
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 4203
  store i8 5, ptr %i.lc, align 1, !tbaa !34
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 4204
  store i16 0, ptr %i.ld, align 2, !tbaa !31
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 4206
  store i8 25, ptr %i.le, align 2, !tbaa !33
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 4207
  store i8 5, ptr %i.lf, align 1, !tbaa !34
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 4208
  store i16 0, ptr %i.lg, align 2, !tbaa !31
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 4210
  store i8 26, ptr %i.lh, align 2, !tbaa !33
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 4211
  store i8 5, ptr %i.li, align 1, !tbaa !34
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 4212
  store i16 0, ptr %i.lj, align 2, !tbaa !31
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 4214
  store i8 27, ptr %i.lk, align 2, !tbaa !33
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 4215
  store i8 5, ptr %i.ll, align 1, !tbaa !34
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 4216
  store i16 0, ptr %i.lm, align 2, !tbaa !31
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 4218
  store i8 28, ptr %i.ln, align 2, !tbaa !33
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 4219
  store i8 5, ptr %i.lo, align 1, !tbaa !34
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 4220
  store i16 0, ptr %i.lp, align 2, !tbaa !31
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 4222
  store i8 29, ptr %i.lq, align 2, !tbaa !33
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 4223
  store i8 5, ptr %i.lr, align 1, !tbaa !34
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 4224
  store i16 0, ptr %i.ls, align 2, !tbaa !31
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 4226
  store i8 30, ptr %i.lt, align 2, !tbaa !33
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 4227
  store i8 5, ptr %i.lu, align 1, !tbaa !34
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 4228
  store i16 0, ptr %i.lv, align 2, !tbaa !31
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 4230
  store i8 31, ptr %i.lw, align 2, !tbaa !33
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4231
  store i8 5, ptr %i.lx, align 1, !tbaa !34
  br label %FSE_buildDTable_raw.exit98.i.i

bb.au:                                            ; preds = %FSE_buildDTable_raw.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i32 31, ptr %i.h, align 4, !tbaa !3
  %i.ly = ptrtoint ptr %i.cq to i64
  %i.lz = ptrtoint ptr %.281.i.i to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = call fastcc i64 @FSE_readNCount(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.d, ptr noundef nonnull %.281.i.i, i64 noundef %i.ma) ; 2 uses
  %i.mc = icmp ult i64 %i.mb, -119
  br i1 %i.mc, label %bb.av, label %.thread108.i.i

bb.av:                                            ; preds = %bb.au
  %i.md = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.me = icmp ugt i32 %i.md, 9
  br i1 %i.me, label %.thread108.i.i, label %bb.aw

.thread108.i.i:                                   ; preds = %bb.av, %bb.au
  %.277.ph.i.i = phi i64 [ -20, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %ZSTD_decodeSeqHeaders.exit.thread.sink.split.i

bb.aw:                                            ; preds = %bb.av
  %i.mf = getelementptr inbounds nuw i8, ptr %.281.i.i, i64 %i.mb
  %i.mg = load i32, ptr %i.h, align 4, !tbaa !3
  call fastcc void @FSE_buildDTable(ptr noundef nonnull %i.cn, ptr noundef %i.f, i32 noundef %i.mg, i32 noundef %i.md)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %FSE_buildDTable_raw.exit98.i.i

FSE_buildDTable_raw.exit98.i.i:                   ; preds = %bb.aw, %FSE_buildDTable_raw.exit98.loopexit.i.i, %bb.at
  %.483.i.i = phi ptr [ %i.mf, %bb.aw ], [ %i.hy, %bb.at ], [ %.281.i.i, %FSE_buildDTable_raw.exit98.loopexit.i.i ] ; 7 uses
  %6 = and i32 %i.cv, 12
  switch i32 %6, label %bb.bb [
    i32 8, label %bb.ax
    i32 4, label %bb.az
  ]

bb.ax:                                            ; preds = %FSE_buildDTable_raw.exit98.i.i
  store i32 0, ptr %i.e, align 4, !tbaa !3
  %i.mh = getelementptr inbounds i8, ptr %i.cq, i64 -2
  %i.mi = icmp ugt ptr %.483.i.i, %i.mh
  br i1 %i.mi, label %ZSTD_decodeSeqHeaders.exit.thread.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mj = getelementptr inbounds nuw i8, ptr %.483.i.i, i64 1
  %i.mk = load i8, ptr %.483.i.i, align 1, !tbaa !9
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 6156
  store i16 0, ptr %i.cm, align 2, !tbaa !27
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 6154
  store i16 0, ptr %i.mm, align 2, !tbaa !30
  store i16 0, ptr %i.ml, align 2, !tbaa !31
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 6158
  store i8 %i.mk, ptr %i.mn, align 2, !tbaa !33
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 6159
  store i8 0, ptr %i.mo, align 1, !tbaa !34
  br label %ZSTD_decodeSeqHeaders.exit.i

bb.az:                                            ; preds = %FSE_buildDTable_raw.exit98.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 6156 ; 4 uses
  store i16 7, ptr %i.cm, align 2, !tbaa !27
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 6154
  store i16 1, ptr %i.mq, align 2, !tbaa !30
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %indvars.iv.i99.i.i = phi i64 [ 0, %bb.az ], [ %indvars.iv.next.i100.i.i.3, %bb.ba ] ; 6 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.i99.i.i ; 3 uses
  store i16 0, ptr %i.mr, align 2, !tbaa !31
  %i.ms = trunc i64 %indvars.iv.i99.i.i to i8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  store i8 %i.ms, ptr %i.mt, align 2, !tbaa !33
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 3
  store i8 7, ptr %i.mu, align 1, !tbaa !34
  %indvars.iv.next.i100.i.i = or disjoint i64 %indvars.iv.i99.i.i, 1 ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next.i100.i.i ; 3 uses
  store i16 0, ptr %i.mv, align 2, !tbaa !31
  %i.mw = trunc i64 %indvars.iv.next.i100.i.i to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 2
  store i8 %i.mw, ptr %i.mx, align 2, !tbaa !33
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 3
  store i8 7, ptr %i.my, align 1, !tbaa !34
  %indvars.iv.next.i100.i.i.1 = or disjoint i64 %indvars.iv.i99.i.i, 2 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next.i100.i.i.1 ; 3 uses
  store i16 0, ptr %i.mz, align 2, !tbaa !31
  %i.na = trunc i64 %indvars.iv.next.i100.i.i.1 to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  store i8 %i.na, ptr %i.nb, align 2, !tbaa !33
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 3
  store i8 7, ptr %i.nc, align 1, !tbaa !34
  %indvars.iv.next.i100.i.i.2 = or disjoint i64 %indvars.iv.i99.i.i, 3 ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next.i100.i.i.2 ; 3 uses
  store i16 0, ptr %i.nd, align 2, !tbaa !31
  %i.ne = trunc i64 %indvars.iv.next.i100.i.i.2 to i8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 2
  store i8 %i.ne, ptr %i.nf, align 2, !tbaa !33
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 3
  store i8 7, ptr %i.ng, align 1, !tbaa !34
  %indvars.iv.next.i100.i.i.3 = add nuw nsw i64 %indvars.iv.i99.i.i, 4 ; 2 uses
  %exitcond127.not.i.i.3 = icmp eq i64 %indvars.iv.next.i100.i.i.3, 128
  br i1 %exitcond127.not.i.i.3, label %ZSTD_decodeSeqHeaders.exit.i, label %bb.ba, !llvm.loop !35

bb.bb:                                            ; preds = %FSE_buildDTable_raw.exit98.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store i32 127, ptr %i.i, align 4, !tbaa !3
  %i.nh = ptrtoint ptr %i.cq to i64
  %i.ni = ptrtoint ptr %.483.i.i to i64
  %i.nj = sub i64 %i.nh, %i.ni
  %i.nk = call fastcc i64 @FSE_readNCount(ptr noundef %i.f, ptr noundef %i.i, ptr noundef %i.e, ptr noundef %.483.i.i, i64 noundef %i.nj) ; 2 uses
  %i.nl = icmp ult i64 %i.nk, -119
  br i1 %i.nl, label %bb.bc, label %FSE_buildDTable_raw.exit103.thread122.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.nm = load i32, ptr %i.e, align 4, !tbaa !3   ; 2 uses
  %i.nn = icmp ugt i32 %i.nm, 10
  br i1 %i.nn, label %FSE_buildDTable_raw.exit103.thread122.i.i, label %FSE_buildDTable_raw.exit103.i.i

FSE_buildDTable_raw.exit103.thread122.i.i:        ; preds = %bb.bc, %bb.bb
  %.4.ph.i.i = phi i64 [ -20, %bb.bc ], [ -1, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %ZSTD_decodeSeqHeaders.exit.thread.sink.split.i

FSE_buildDTable_raw.exit103.i.i:                  ; preds = %bb.bc
  %i.no = getelementptr inbounds nuw i8, ptr %.483.i.i, i64 %i.nk
  %i.np = load i32, ptr %i.i, align 4, !tbaa !3
  call fastcc void @FSE_buildDTable(ptr noundef nonnull %i.cm, ptr noundef %i.f, i32 noundef %i.np, i32 noundef %i.nm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %ZSTD_decodeSeqHeaders.exit.i

ZSTD_decodeSeqHeaders.exit.thread.sink.split.i:   ; preds = %FSE_buildDTable_raw.exit103.thread122.i.i, %bb.ax, %.thread108.i.i, %bb.as, %.thread.i.i
  %.7.i.ph.ph.i = phi i64 [ %.4.ph.i.i, %FSE_buildDTable_raw.exit103.thread122.i.i ], [ %.075.ph.i.i, %.thread.i.i ], [ %.277.ph.i.i, %.thread108.i.i ], [ -72, %bb.as ], [ -72, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %ZSTD_decodeSeqHeaders.exit.thread.i

ZSTD_decodeSeqHeaders.exit.thread.i:              ; preds = %ZSTD_decodeSeqHeaders.exit.thread.sink.split.i, %bb.s, %ZSTD_decodeLiteralsBlock.exit.thread
  %.7.i.ph.i = phi i64 [ -72, %ZSTD_decodeLiteralsBlock.exit.thread ], [ -72, %bb.s ], [ %.7.i.ph.ph.i, %ZSTD_decodeSeqHeaders.exit.thread.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %ZSTD_decompressSequences.exit

ZSTD_decodeSeqHeaders.exit.i:                     ; preds = %bb.ba, %FSE_buildDTable_raw.exit103.i.i, %bb.ay
  %.786120.i.i = phi ptr [ %i.no, %FSE_buildDTable_raw.exit103.i.i ], [ %i.mj, %bb.ay ], [ %.483.i.i, %bb.ba ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.nq = ptrtoint ptr %.786120.i.i to i64        ; 5 uses
  %i.nr = ptrtoint ptr %i.ci to i64
  %i.ns = sub i64 %i.nq, %i.nr                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.nt = icmp ult i64 %i.ns, -119
  br i1 %i.nt, label %bb.bd, label %ZSTD_decompressSequences.exit

bb.bd:                                            ; preds = %ZSTD_decodeSeqHeaders.exit.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ns ; 11 uses
  %gepdiff.i = sub nsw i64 %i.cj, %i.ns           ; 4 uses
  %i.nv = icmp eq i64 %i.cj, %i.ns
  br i1 %i.nv, label %ZSTD_decompressSequences.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nw = icmp ugt i64 %gepdiff.i, 7
  br i1 %i.nw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.nx = getelementptr i8, ptr %i.cq, i64 -1
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !9   ; 2 uses
  %i.nz = icmp eq i8 %i.ny, 0
  br i1 %i.nz, label %ZSTD_decompressSequences.exit, label %BIT_initDStream.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.oa = load i8, ptr %i.nu, align 1, !tbaa !9
  %i.ob = zext i8 %i.oa to i64                    ; 7 uses
  switch i64 %gepdiff.i, label %bb.bn [
    i64 7, label %bb.bh
    i64 6, label %bb.bi
    i64 5, label %bb.bj
    i64 4, label %bb.bk
    i64 3, label %bb.bl
    i64 2, label %bb.bm
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 6
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !9
  %i.oe = zext i8 %i.od to i64
  %i.of = shl nuw nsw i64 %i.oe, 48
  %i.og = or disjoint i64 %i.of, %i.ob
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.oh = phi i64 [ %i.og, %bb.bh ], [ %i.ob, %bb.bg ]
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nu, i64 5
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !9
  %i.ok = zext i8 %i.oj to i64
  %i.ol = shl nuw nsw i64 %i.ok, 40
  %i.om = add nuw nsw i64 %i.ol, %i.oh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %i.on = phi i64 [ %i.om, %bb.bi ], [ %i.ob, %bb.bg ]
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !9
  %i.oq = zext i8 %i.op to i64
  %i.or = shl nuw nsw i64 %i.oq, 32
  %i.os = add nuw nsw i64 %i.or, %i.on
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %i.ot = phi i64 [ %i.os, %bb.bj ], [ %i.ob, %bb.bg ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nu, i64 3
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !9
  %i.ow = zext i8 %i.ov to i64
  %i.ox = shl nuw nsw i64 %i.ow, 24
  %i.oy = add nuw nsw i64 %i.ox, %i.ot
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bg
  %i.oz = phi i64 [ %i.oy, %bb.bk ], [ %i.ob, %bb.bg ]
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !9
  %i.pc = zext i8 %i.pb to i64
  %i.pd = shl nuw nsw i64 %i.pc, 16
  %i.pe = add nuw nsw i64 %i.pd, %i.oz
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %i.pf = phi i64 [ %i.pe, %bb.bl ], [ %i.ob, %bb.bg ]
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !9
  %i.pi = zext i8 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 8
  %i.pk = add nuw nsw i64 %i.pj, %i.pf
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bg
  %.sroa.0.1.i = phi i64 [ %i.ob, %bb.bg ], [ %i.pk, %bb.bm ]
end_hunk_0
