Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@pager_write_pagelist:bb.a
  %i.by = lshr i32 %i.bs, 16
  %i.bz = trunc i32 %i.by to i8                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 25
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !229
  %i.cb = lshr i32 %i.bs, 8
  %i.cc = trunc i32 %i.cb to i8                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 26
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !229
  %i.ce = trunc i32 %i.bs to i8                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 27
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !229
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !518 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 92
  store i8 %i.bx, ptr %i.ch, align 1, !tbaa !229
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 93
  store i8 %i.bz, ptr %i.ci, align 1, !tbaa !229
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 94
  store i8 %i.cc, ptr %i.cj, align 1, !tbaa !229
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 95
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !229
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !518
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store <4 x i8> <i8 0, i8 46, i8 -111, i8 -32>, ptr %i.cm, align 1, !tbaa !229
  %.pre53 = load i64, ptr %i.ah, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %pager_write_changecounter.exit, %bb.j
  %i.cn = phi i64 [ %.pre53, %pager_write_changecounter.exit ], [ %i.av, %bb.j ]
  %i.co = getelementptr inbounds nuw i8, ptr %.04251, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !518 ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !526 ; 2 uses
  %i.cr = trunc i64 %i.cn to i32
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !475
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !683
  %i.cv = call i32 %i.cu(ptr noundef nonnull %i.cq, ptr noundef %i.cp, i32 noundef %i.cr, i64 noundef %i.aw) #59, !inline_history !684 ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) %i.cw, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = load i32, ptr %i.aj, align 8, !tbaa !729
  %i.cy = icmp ugt i32 %i.an, %i.cx
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !729
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cz = load i32, ptr %i.ak, align 8, !tbaa !24
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.ak, align 8, !tbaa !24
  %i.db = load ptr, ptr %i.al, align 8, !tbaa !727 ; 2 uses
  %.not.i47 = icmp eq ptr %i.db, null
  br i1 %.not.i47, label %sqlite3BackupUpdate.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !518
  call fastcc void @backupUpdate(ptr noundef %i.db, i32 noundef %i.an, ptr noundef readonly %i.dc), !inline_history !2100
  br label %sqlite3BackupUpdate.exit

sqlite3BackupUpdate.exit:                         ; preds = %bb.p, %bb.o, %bb.h, %bb.i
  %.2 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ %i.cv, %bb.o ], [ %i.cv, %bb.p ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.04251, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !525 ; 2 uses
  %i.df = icmp eq i32 %.2, 0
  %i.dg = icmp ne ptr %i.de, null
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %bb.h, label %._crit_edge, !llvm.loop !2342

._crit_edge:                                      ; preds = %sqlite3BackupUpdate.exit, %bb.b, %bb.g
  %.1.lcssa = phi i32 [ 0, %bb.g ], [ %i.k, %bb.b ], [ %.2, %sqlite3BackupUpdate.exit ]
  ret i32 %.1.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @walWriteOneFrame(ptr nofree noundef nonnull readonly captures(none) %0, ptr %.8.val, i32 %.48.val, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.b = load ptr, ptr %0, align 8, !tbaa !2313   ; 6 uses
  %i.c = lshr i32 %.48.val, 24
  %i.d = trunc nuw i32 %i.c to i8
  store i8 %i.d, ptr %i.a, align 16, !tbaa !229
  %i.e = lshr i32 %.48.val, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !229
  %i.h = lshr i32 %.48.val, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.j, align 2, !tbaa !229
  %i.k = trunc i32 %.48.val to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !229
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.n = lshr i32 %1, 24
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %i.m, align 4, !tbaa !229
  %i.p = lshr i32 %1, 16
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.q, ptr %i.r, align 1, !tbaa !229
  %i.s = lshr i32 %1, 8
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.t, ptr %i.u, align 2, !tbaa !229
  %i.v = trunc i32 %1 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.v, ptr %i.w, align 1, !tbaa !229
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !2037
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 85
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !2242
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %i.ah = zext i1 %i.ag to i32
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !24 ; 3 uses
  %i.al = load i32, ptr %i.a, align 16, !tbaa !24 ; 2 uses
  br i1 %i.ag, label %.preheader96.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = add i32 %i.ak, %i.ai
  %i.ao = add i32 %i.an, %i.am
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !24
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  br label %walChecksumBytes.exit.i

.preheader96.i.i:                                 ; preds = %bb.b
  %i.ar = add i32 %i.ak, %i.ai
  %i.as = add i32 %i.ar, %i.al
  %i.at = load i32, ptr %i.m, align 4, !tbaa !24
  br label %walChecksumBytes.exit.i

walChecksumBytes.exit.i:                          ; preds = %.preheader96.i.i, %.preheader.i.i
  %.sink27.i = phi i32 [ %i.aq, %.preheader.i.i ], [ %i.at, %.preheader96.i.i ]
  %.sink26.i = phi i32 [ %i.ao, %.preheader.i.i ], [ %i.as, %.preheader96.i.i ] ; 2 uses
  %i.au = add i32 %.sink27.i, %i.ak
  %i.av = add i32 %i.au, %.sink26.i
  store i32 %.sink26.i, ptr %i.aa, align 8, !tbaa !24
  store i32 %i.av, ptr %i.aj, align 4, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2223
  tail call fastcc void @walChecksumBytes(i32 noundef %i.ah, ptr noundef readonly %.8.val, i32 noundef %i.ax, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aa)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = load i32, ptr %i.aa, align 8, !tbaa !24 ; 4 uses
  %i.ba = lshr i32 %i.az, 24
  %i.bb = trunc nuw i32 %i.ba to i8
  store i8 %i.bb, ptr %i.ay, align 16, !tbaa !229
  %i.bc = lshr i32 %i.az, 16
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !229
  %i.bf = lshr i32 %i.az, 8
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %i.bg, ptr %i.bh, align 2, !tbaa !229
  %i.bi = trunc i32 %i.az to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !229
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bl = load i32, ptr %i.aj, align 4, !tbaa !24 ; 4 uses
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = trunc nuw i32 %i.bm to i8
  store i8 %i.bn, ptr %i.bk, align 4, !tbaa !229
  %i.bo = lshr i32 %i.bl, 16
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !229
  %i.br = lshr i32 %i.bl, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !229
  %i.bu = trunc i32 %i.bl to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !229
  br label %walEncodeFrame.exit

bb.c:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %walEncodeFrame.exit

walEncodeFrame.exit:                              ; preds = %walChecksumBytes.exit.i, %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !2316 ; 4 uses
  %i.bz = icmp sge i64 %2, %i.by
  %i.ca = add i64 %2, 24                          ; 7 uses
  %.not.i = icmp slt i64 %i.ca, %i.by
  %or.cond = or i1 %i.bz, %.not.i
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %walEncodeFrame.exit
  %i.cb = sub nsw i64 %i.by, %2                   ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2315 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !475
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !683
  %i.ci = call i32 %i.ch(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.a, i32 noundef %i.cc, i64 noundef %2) #59, !inline_history !2343 ; 2 uses
  %.not43.i = icmp eq i32 %i.ci, 0
  br i1 %.not43.i, label %bb.e, label %walWriteToLog.exit24

bb.e:                                             ; preds = %bb.d
  %i.cj = sub nsw i32 24, %i.cc
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %i.cb
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !2317
  %i.cn = and i32 %i.cm, 3                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !2315 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !475
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !735
  %i.cs = call i32 %i.cr(ptr noundef nonnull %i.co, i32 noundef range(i32 0, 256) %i.cn) #59, !inline_history !2344
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ct = phi i32 [ %i.cs, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %i.cu = icmp ne i32 %i.cc, 24
  %i.cv = icmp eq i32 %i.ct, 0
  %or.cond.not.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond.not.i, label %bb.h, label %walWriteToLog.exit

bb.h:                                             ; preds = %bb.g, %walEncodeFrame.exit
  %.135.i = phi ptr [ %i.ck, %bb.g ], [ %i.a, %walEncodeFrame.exit ]
  %.133.i = phi i32 [ %i.cj, %bb.g ], [ 24, %walEncodeFrame.exit ]
  %.1.i = phi i64 [ %i.by, %bb.g ], [ %2, %walEncodeFrame.exit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2315 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !475
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !683
  %i.db = call i32 %i.da(ptr noundef nonnull %i.cx, ptr noundef nonnull %.135.i, i32 noundef %.133.i, i64 noundef %.1.i) #59, !inline_history !2343
  br label %walWriteToLog.exit

walWriteToLog.exit:                               ; preds = %bb.g, %bb.h
  %.137.i = phi i32 [ %i.db, %bb.h ], [ %i.ct, %bb.g ] ; 2 uses
  %.not = icmp eq i32 %.137.i, 0
  br i1 %.not, label %bb.i, label %walWriteToLog.exit24

bb.i:                                             ; preds = %walWriteToLog.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !2318 ; 3 uses
  %i.de = load i64, ptr %i.bx, align 8, !tbaa !2316 ; 3 uses
  %i.df = icmp sge i64 %i.ca, %i.de
  %i.dg = sext i32 %i.dd to i64
  %i.dh = add nsw i64 %i.ca, %i.dg
  %.not.i19 = icmp slt i64 %i.dh, %i.de
  %or.cond4 = select i1 %i.df, i1 true, i1 %.not.i19
  br i1 %or.cond4, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = sub nsw i64 %i.de, %i.ca                ; 2 uses
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !2315 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !475
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !683
  %i.dp = call i32 %i.do(ptr noundef nonnull %i.dl, ptr noundef %.8.val, i32 noundef %i.dj, i64 noundef %i.ca) #59, !inline_history !2343 ; 2 uses
  %.not43.i20 = icmp eq i32 %i.dp, 0
  br i1 %.not43.i20, label %bb.k, label %walWriteToLog.exit24

bb.k:                                             ; preds = %bb.j
  %sext.i21 = shl i64 %i.di, 32
  %i.dq = ashr exact i64 %sext.i21, 32            ; 2 uses
  %i.dr = add nsw i64 %i.dq, %i.ca
  %i.ds = sub nsw i32 %i.dd, %i.dj                ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.8.val, i64 %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !2317
  %i.dw = and i32 %i.dv, 3                        ; 2 uses
  %.not.i.i22 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !2315 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !475
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !735
  %i.eb = call i32 %i.ea(ptr noundef nonnull %i.dx, i32 noundef range(i32 0, 256) %i.dw) #59, !inline_history !2344
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ec = phi i32 [ %i.eb, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.ed = icmp ne i32 %i.ds, 0
  %i.ee = icmp eq i32 %i.ec, 0
  %or.cond.not.i23 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.not.i23, label %bb.n, label %walWriteToLog.exit24

bb.n:                                             ; preds = %bb.m, %bb.i
  %.135.i15 = phi ptr [ %i.dt, %bb.m ], [ %.8.val, %bb.i ]
  %.133.i16 = phi i32 [ %i.ds, %bb.m ], [ %i.dd, %bb.i ]
  %.1.i17 = phi i64 [ %i.dr, %bb.m ], [ %i.ca, %bb.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !2315 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !475
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !683
  %i.ek = call i32 %i.ej(ptr noundef nonnull %i.eg, ptr noundef %.135.i15, i32 noundef %.133.i16, i64 noundef %.1.i17) #59, !inline_history !2343
  br label %walWriteToLog.exit24

walWriteToLog.exit24:                             ; preds = %bb.d, %bb.n, %bb.m, %bb.j, %walWriteToLog.exit
  %.0 = phi i32 [ %i.dp, %bb.j ], [ %.137.i, %walWriteToLog.exit ], [ %i.ek, %bb.n ], [ %i.ec, %bb.m ], [ %i.ci, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walLimitSize(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.b = load ptr, ptr @sqlite3Hooks.0, align 8, !tbaa !1227 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3BeginBenignMalloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b() #59, !inline_history !1229
  br label %sqlite3BeginBenignMalloc.exit

sqlite3BeginBenignMalloc.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2194 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !475
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !686
  %i.h = call i32 %i.g(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #59, !inline_history !2048 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %sqlite3BeginBenignMalloc.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !19
  %i.k = icmp sgt i64 %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !2194 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !475
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !688
  %i.p = call i32 %i.o(ptr noundef nonnull %i.l, i64 noundef %1) #59, !inline_history !2096
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %sqlite3BeginBenignMalloc.exit
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ], [ %i.h, %sqlite3BeginBenignMalloc.exit ] ; 2 uses
  %i.q = load ptr, ptr @sqlite3Hooks.1, align 8, !tbaa !1230 ; 2 uses
  %.not.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i9, label %sqlite3EndBenignMalloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.q() #59, !inline_history !1231
  br label %sqlite3EndBenignMalloc.exit

sqlite3EndBenignMalloc.exit:                      ; preds = %bb.e, %bb.f
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3EndBenignMalloc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2254
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef %.0, ptr noundef nonnull @.str.123, ptr noundef %i.s)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sqlite3EndBenignMalloc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walRestartHdr(ptr nofree noundef captures(none) initializes((72, 76), (84, 85), (88, 92), (108, 120)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1978 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !350 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2209
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !2209
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.f, align 8, !tbaa !2182
  %i.g = load i8, ptr %i.b, align 8, !tbaa !229
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !229
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2, !tbaa !229
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = or disjoint i32 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !229
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  %i.x = add i32 %i.w, 1                          ; 4 uses
  %i.y = lshr i32 %i.x, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.b, align 8, !tbaa !229
  %i.aa = lshr i32 %i.x, 16
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.j, align 1, !tbaa !229
  %i.ac = lshr i32 %i.x, 8
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.o, align 2, !tbaa !229
  %i.ae = trunc i32 %i.x to i8
  store i8 %i.ae, ptr %i.t, align 1, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %1, ptr %i.af, align 4
  %.val.val.i = load ptr, ptr %.val, align 8, !tbaa !350 ; 2 uses
  %.ptr10.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i8 1, ptr %i.ag, align 4, !tbaa !2247
  store i32 3007000, ptr %.ptr10.i, align 8, !tbaa !2248
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !24 ; 2 uses
  %i.aj = add i32 %i.ai, 3007000
  %.2.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load i32, ptr %.2.i.ptr.1.i, align 8, !tbaa !24
  %i.al = add i32 %i.ai, 6014000
  %i.am = add i32 %i.al, %i.ak                    ; 2 uses
  %i.an = load i32, ptr %i.ag, align 4, !tbaa !24
  %i.ao = add i32 %i.aj, %i.an
end_hunk_0
begin_hunk_1_@fts5MultiIterNew:bb.a
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %.lr.ph104.split
  %.2.lcssa = phi i32 [ %.176102, %.lr.ph104.split ], [ %i.ki, %._crit_edge.split.loopexit ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.073103, i64 16 ; 2 uses
  %i.kk = icmp ult ptr %i.kj, %i.by
  br i1 %i.kk, label %.lr.ph104.split, label %fts5IterSetOutputCb.exit.thread, !llvm.loop !7165

bb.bo:                                            ; preds = %bb.z
  %i.kl = icmp sgt i32 %.0, 0
  br i1 %i.kl, label %.lr.ph, label %fts5IterSetOutputCb.exit.thread

.lr.ph:                                           ; preds = %bb.bo
  %i.km = zext nneg i32 %6 to i64
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kp = zext nneg i32 %.0 to i64                ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %bb.bp
  %indvars.iv110 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next111, %bb.bp ] ; 2 uses
  %indvars.iv = phi i64 [ %i.kp, %.lr.ph ], [ %indvars.iv.next, %bb.bp ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !6696
  %i.kr = getelementptr inbounds nuw [56 x i8], ptr %i.kq, i64 %indvars.iv.next
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [128 x i8], ptr %i.af, i64 %indvars.iv110
  tail call fastcc void @fts5SegIterInit(ptr noundef nonnull %0, ptr noundef %i.kr, ptr noundef %i.ks)
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %i.kp
  br i1 %exitcond.not, label %fts5IterSetOutputCb.exit.thread, label %bb.bp, !llvm.loop !7167

fts5IterSetOutputCb.exit.thread:                  ; preds = %bb.bp, %._crit_edge.split, %._crit_edge.split.us.us, %bb.bo, %fts5SegIterHashInit.exit
  %.pr92.pr = load i32, ptr %i.a, align 4, !tbaa !6358
  %i.kt = icmp eq i32 %.pr92.pr, 0
  br i1 %i.kt, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %fts5IterSetOutputCb.exit.thread
  tail call fastcc void @fts5MultiIterFinishSetup(ptr noundef nonnull %0, ptr noundef nonnull %i.aa)
  br label %bb.br

.thread:                                          ; preds = %sqlite3_realloc64.exit.thread.i.i, %bb.k, %fts5IterSetOutputCb.exit, %fts5IterSetOutputCb.exit.thread
  tail call fastcc void @fts5MultiIterFree(ptr noundef nonnull %i.aa)
  store ptr null, ptr %8, align 8, !tbaa !6759
  br label %bb.br

bb.br:                                            ; preds = %fts5MultiIterAlloc.exit.thread, %bb.bq, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts5IndexFlush(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [63 x i32], align 16              ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.Fts5SegWriter, align 8      ; 14 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !6685 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.j, ptr %i.k, align 4, !tbaa !6358
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !6683
  %.not15 = icmp eq i32 %i.m, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !6686
  %.not16 = icmp eq i32 %i.o, 0
  br i1 %.not16, label %bb.db, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !6659 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %i.r = tail call fastcc ptr @fts5StructureRead(ptr noundef nonnull %0), !inline_history !7168 ; 11 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !6514
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !6357 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %fts5StructureInvalidate.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @fts5StructureRelease(ptr noundef nonnull %i.t), !inline_history !7168
  store ptr null, ptr %i.s, align 8, !tbaa !6357
  br label %fts5StructureInvalidate.exit.i

fts5StructureInvalidate.exit.i:                   ; preds = %bb.f, %bb.e
  %i.u = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !6674
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %fts5AllocateSegid.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %fts5StructureInvalidate.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 17 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !6358
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %fts5AllocateSegid.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !24
  %i.aa = icmp sgt i32 %i.z, 1999
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 13, ptr %i.v, align 4, !tbaa !6358
  br label %fts5AllocateSegid.exit.thread.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(252) %i.e, i8 0, i64 252, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !24 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader32.lr.ph.i.i, label %.preheader31.i.i.preheader

.preheader32.lr.ph.i.i:                           ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %wide.trip.count39.i.i = zext nneg i32 %i.ac to i64
  br label %.preheader32.i.i

.preheader32.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader32.lr.ph.i.i
  %indvars.iv36.i.i = phi i64 [ 0, %.preheader32.lr.ph.i.i ], [ %indvars.iv.next37.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv36.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !6515 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader32.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !6696
  %wide.trip.count.i.i = zext nneg i32 %i.ah to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.ak, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 8, !tbaa !6697
  %i.an = add i32 %i.am, -1                       ; 3 uses
  %or.cond.i.i = icmp ult i32 %i.an, 2000
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = and i32 %i.an, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = lshr i32 %i.an, 5
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !24
  %i.au = or i32 %i.at, %i.ap
  store i32 %i.au, ptr %i.as, align 4, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.k, !llvm.loop !7169

._crit_edge.i.i:                                  ; preds = %bb.m, %.preheader32.i.i
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1 ; 2 uses
  %exitcond40.not.i.i = icmp eq i64 %indvars.iv.next37.i.i, %wide.trip.count39.i.i
  br i1 %exitcond40.not.i.i, label %.preheader31.i.i.preheader, label %.preheader32.i.i, !llvm.loop !7170

.preheader31.i.i.preheader:                       ; preds = %._crit_edge.i.i, %bb.j
  br label %.preheader31.i.i

.preheader31.i.i:                                 ; preds = %.preheader31.i.i.preheader, %.preheader31.i.i
  %indvars.iv41.i.i = phi i64 [ %indvars.iv.next42.i.i, %.preheader31.i.i ], [ 0, %.preheader31.i.i.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv41.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !24 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1
  br i1 %i.ax, label %.preheader31.i.i, label %.preheader.i.i, !llvm.loop !7171

.preheader.i.i:                                   ; preds = %.preheader31.i.i, %.preheader.i.i
  %.028.i.i = phi i32 [ %i.ba, %.preheader.i.i ], [ 0, %.preheader31.i.i ] ; 3 uses
  %i.ay = shl nuw i32 1, %.028.i.i
  %i.az = and i32 %i.ay, %i.aw
  %.not.i191.i = icmp eq i32 %i.az, 0
  %i.ba = add nuw nsw i32 %.028.i.i, 1
  br i1 %.not.i191.i, label %fts5AllocateSegid.exit.i, label %.preheader.i.i, !llvm.loop !7172

fts5AllocateSegid.exit.i:                         ; preds = %.preheader.i.i
  %i.bb = trunc nuw nsw i64 %indvars.iv41.i.i to i32
  %i.bc = shl nuw nsw i32 %i.bb, 5
  %i.bd = or disjoint i32 %i.bc, 1
  %i.be = add nuw nsw i32 %i.bd, %.028.i.i        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  %i.bf = load ptr, ptr %0, align 8, !tbaa !6427  ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 196
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !6479 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 116
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !6391
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 232
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !6730
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #59
  call fastcc void @fts5WriteInit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.be), !inline_history !7168
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.bn = load i32, ptr %i.v, align 4, !tbaa !6358
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %fts5AllocateSegid.exit.i
  %i.bp = tail call fastcc i32 @sqlite3Fts5HashScanInit(ptr noundef %i.q, ptr noundef null, i32 noundef 0), !inline_history !7168 ; 2 uses
  store i32 %i.bp, ptr %i.v, align 4, !tbaa !6358
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = getelementptr i8, ptr %i.q, i64 24      ; 3 uses
  br i1 %i.bq, label %.lr.ph270.i, label %.critedge.i

.lr.ph270.i:                                      ; preds = %bb.n
  %i.bs = icmp ne i32 %i.bl, 0                    ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bv = xor i1 %i.bs, true
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bj, 1                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.val190.pr.i = load ptr, ptr %i.br, align 8, !tbaa !7149 ; 2 uses
  %.not259.i29 = icmp eq ptr %.val190.pr.i, null
  br i1 %.not259.i29, label %.critedge.i, label %sqlite3Fts5HashScanEntry.exit.i

sqlite3Fts5HashScanEntry.exit.i:                  ; preds = %.lr.ph270.i, %bb.ce
  %.val190.i30 = phi ptr [ %i.kq, %bb.ce ], [ %.val190.pr.i, %.lr.ph270.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val190.i30, i64 48 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val190.i30, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7150 ; 6 uses
  tail call fastcc void @fts5HashAddPoslistSize(ptr noundef nonnull readonly %i.q, ptr noundef nonnull %.val190.i30, ptr noundef null)
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val190.i30, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !7151
  %reass.sub.i.i = sub i32 %i.cg, %i.cc
  %i.ch = add i32 %reass.sub.i.i, -48             ; 4 uses
  br i1 %i.bs, label %sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i, label %bb.o

sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i: ; preds = %sqlite3Fts5HashScanEntry.exit.i
  %.pre.i = load i32, ptr %i.v, align 4, !tbaa !6358
  br label %.thread.i

bb.o:                                             ; preds = %sqlite3Fts5HashScanEntry.exit.i
  call fastcc void @fts5WriteAppendTerm(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cc, ptr noundef nonnull %i.ca), !inline_history !7168
  %i.ci = load i32, ptr %i.v, align 4, !tbaa !6358
  %.not176.i = icmp eq i32 %i.ci, 0
  br i1 %.not176.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.cj = load i32, ptr %i.bt, align 8, !tbaa !6439 ; 2 uses
  %i.ck = load i32, ptr %i.bu, align 8, !tbaa !6439
  %i.cl = add i32 %i.cj, %i.ch                    ; 2 uses
  %i.cm = add i32 %i.cl, %i.ck
  %.not177.not.i = icmp sgt i32 %i.bh, %i.cm
  br i1 %.not177.not.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.bm, align 8, !tbaa !6445
  %i.co = sext i32 %i.cj to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  %i.cq = sext i32 %i.ch to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr nonnull align 1 %i.ce, i64 %i.cq, i1 false)
  store i32 %i.cl, ptr %i.bt, align 8, !tbaa !6439
  %.pr.i = load i32, ptr %i.v, align 4, !tbaa !6358
  br label %.loopexit262.i

.thread.i:                                        ; preds = %bb.p, %sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i
  %i.cr = phi i32 [ %.pre.i, %sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i ], [ 0, %bb.p ] ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = icmp sgt i32 %i.ch, 0
  %i.cu = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %i.cu, label %.lr.ph.i, label %.loopexit262.i

.lr.ph.i:                                         ; preds = %.thread.i, %bb.cd
  %.0156269.i = phi i32 [ %.5.i, %bb.cd ], [ 0, %.thread.i ] ; 2 uses
  %.0157268.i = phi i64 [ %.1158.i, %bb.cd ], [ 0, %.thread.i ] ; 4 uses
  %.0159267.i = phi i64 [ %i.db, %bb.cd ], [ 0, %.thread.i ]
  %.0160266.i = phi i32 [ %.2162.i, %bb.cd ], [ %i.bw, %.thread.i ] ; 5 uses
  %.0241265.i = phi i32 [ %.2243.i, %bb.cd ], [ %i.ch, %.thread.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #59
  %i.cv = sext i32 %.0156269.i to i64
  %i.cw = getelementptr inbounds i8, ptr %i.ce, i64 %i.cv
  %i.cx = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.h), !inline_history !7168
  %i.cy = zext nneg i8 %i.cx to i32
  %i.cz = add nsw i32 %.0156269.i, %i.cy          ; 13 uses
  %i.da = load i64, ptr %i.h, align 8, !tbaa !19
  %i.db = add i64 %i.da, %.0159267.i              ; 14 uses
  br i1 %i.bs, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i
  br i1 %i.bx, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.dc = icmp slt i32 %i.cz, %.0241265.i
  br i1 %i.dc, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.dd = sext i32 %i.cz to i64
  %i.de = getelementptr inbounds i8, ptr %i.ce, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !229
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.dh = tail call fastcc i32 @fts5FlushSecureDelete(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.ca, i32 noundef %i.cc, i64 noundef %i.db), !inline_history !7168
  %.not181.i = icmp eq i32 %i.dh, 0
  br i1 %.not181.i, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.di = add nsw i32 %i.cz, 1                    ; 4 uses
  %i.dj = icmp slt i32 %i.di, %.0241265.i
  br i1 %i.dj, label %bb.w, label %bb.cd, !llvm.loop !7173

bb.w:                                             ; preds = %bb.v
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr inbounds i8, ptr %i.ce, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !229
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.x, label %bb.cd, !llvm.loop !7173

bb.x:                                             ; preds = %bb.w
  %i.do = add nsw i32 %i.cz, 2
  br label %bb.ad

bb.y:                                             ; preds = %bb.r
  %i.dp = sext i32 %i.cz to i64
  %i.dq = getelementptr inbounds i8, ptr %i.ce, i64 %i.dp ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !229
  %i.ds = and i8 %i.dr, 1
  %.not178.i = icmp eq i8 %i.ds, 0
  br i1 %.not178.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = tail call fastcc i32 @fts5FlushSecureDelete(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.ca, i32 noundef %i.cc, i64 noundef %i.db), !inline_history !7168
  %.not179.i = icmp eq i32 %i.dt, 0
  br i1 %.not179.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.du = load i32, ptr %i.v, align 4, !tbaa !6358
  %.not180.i = icmp eq i32 %i.du, 0
  br i1 %.not180.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load i8, ptr %i.dq, align 1, !tbaa !229
  %i.dw = icmp eq i8 %i.dv, 1
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dx = add nsw i32 %i.cz, 1
  br label %bb.cd, !llvm.loop !7173

bb.ad:                                            ; preds = %bb.ab, %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.s, %.lr.ph.i
  %.1242.i = phi i32 [ 0, %bb.x ], [ %.0241265.i, %bb.u ], [ %.0241265.i, %bb.t ], [ %.0241265.i, %bb.s ], [ %.0241265.i, %bb.y ], [ %.0241265.i, %bb.ab ], [ %.0241265.i, %bb.z ], [ %.0241265.i, %.lr.ph.i ] ; 5 uses
  %.1.i = phi i32 [ %i.do, %bb.x ], [ %i.cz, %bb.u ], [ %i.cz, %bb.t ], [ %i.cz, %bb.s ], [ %i.cz, %bb.y ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.z ], [ %i.cz, %.lr.ph.i ] ; 9 uses
  %i.dy = load i32, ptr %i.v, align 4, !tbaa !6358
  %i.dz = icmp eq i32 %i.dy, 0
  %i.ea = icmp eq i32 %.0160266.i, 0
  %or.cond.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @fts5WriteAppendTerm(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cc, ptr noundef nonnull %i.ca), !inline_history !7168
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1161.i = phi i32 [ 1, %bb.ae ], [ %.0160266.i, %bb.ad ] ; 3 uses
  %i.eb = load i8, ptr %i.by, align 1, !tbaa !7174
  %.not182.i = icmp eq i8 %i.eb, 0
  br i1 %.not182.i, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = load ptr, ptr %i.bm, align 8, !tbaa !6445 ; 3 uses
  %i.ed = load i32, ptr %i.bt, align 8, !tbaa !6439 ; 4 uses
  %i.ee = lshr i32 %i.ed, 8
  %i.ef = trunc i32 %i.ee to i8
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !229
  %i.eg = trunc i32 %i.ed to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !229
  %i.ei = sext i32 %i.ed to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ec, i64 %i.ei ; 4 uses
  %i.ek = icmp ult i64 %i.db, 128
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.el = trunc nuw nsw i64 %i.db to i8
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !229
end_hunk_1
begin_hunk_2_@fts5IndexMerge:bb.a
  %i.bj = extractelement <2 x i64> %.lcssa132, i64 0
  %i.bk = mul nsw i64 %i.bj, 100
  %i.bl = sdiv i64 %i.bk, %i.bh
  %i.bm = trunc i64 %i.bl to i32                  ; 3 uses
  %.not37.i = icmp sle i32 %i.ab, %i.bm
  %i.bn = icmp slt i32 %.0317.i, %i.bm
  %or.cond.i = select i1 %.not37.i, i1 %i.bn, i1 false ; 2 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv14.i to i32
  %.134.i = select i1 %or.cond.i, i32 %i.bo, i32 %.0335.i
  %.1.i = select i1 %or.cond.i, i32 %i.bm, i32 %.0317.i
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.j, %._crit_edge.i, %bb.g
  %.235.i = phi i32 [ %.134.i, %bb.j ], [ %.0335.i, %._crit_edge.i ], [ %.0335.i, %bb.g ] ; 3 uses
  %.2.i = phi i32 [ %.1.i, %bb.j ], [ %.0317.i, %._crit_edge.i ], [ %.0317.i, %bb.g ]
  %i.bp = load i32, ptr %i.ae, align 8, !tbaa !6693
  %.not38.i = icmp ne i32 %i.bp, 0
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i, %wide.trip.count17.i
  %or.cond24.i = select i1 %.not38.i, i1 true, i1 %exitcond18.not.i
  br i1 %or.cond24.i, label %fts5IndexFindDeleteMerge.exit, label %bb.g, !llvm.loop !7312

fts5IndexFindDeleteMerge.exit:                    ; preds = %._crit_edge.thread.i
  %i.bq = icmp slt i32 %.235.i, 0
  br i1 %i.bq, label %.critedge, label %fts5IndexFindDeleteMerge.exit.thread53

fts5IndexFindDeleteMerge.exit.thread53:           ; preds = %.loopexit, %fts5IndexFindDeleteMerge.exit
  %.555 = phi i32 [ %.235.i, %fts5IndexFindDeleteMerge.exit ], [ %.435, %.loopexit ] ; 3 uses
  call fastcc void @fts5IndexMergeLevel(ptr noundef %0, ptr noundef %i.b, i32 noundef %.555, ptr noundef nonnull %i.a)
  %i.br = load i32, ptr %i.d, align 4, !tbaa !6358
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %fts5IndexFindDeleteMerge.exit.thread53
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !6514 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = zext nneg i32 %.555 to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !6693
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  %i.bz = add nuw nsw i32 %.555, 1
  call fastcc void @fts5StructurePromote(ptr noundef nonnull %0, i32 noundef %i.bz, ptr noundef nonnull %i.bt)
  br label %thread-pre-split

.critedge:                                        ; preds = %bb.f, %bb.e, %fts5IndexFindDeleteMerge.exit, %.lr.ph78, %.lr.ph78.preheader, %thread-pre-split..critedge.loopexit_crit_edge, %bb.a
  %i.ca = phi ptr [ %i.c, %bb.a ], [ %.pre.pre, %thread-pre-split..critedge.loopexit_crit_edge ], [ %.pre.pre94116, %.lr.ph78.preheader ], [ %.pre.pre94, %.lr.ph78 ], [ %.pre.pre94119, %fts5IndexFindDeleteMerge.exit ], [ %.pre.pre94119, %bb.e ], [ %.pre.pre94119, %bb.f ]
  %.037.lcssa = phi i32 [ 0, %bb.a ], [ 1, %thread-pre-split..critedge.loopexit_crit_edge ], [ 0, %.lr.ph78.preheader ], [ 1, %.lr.ph78 ], [ %.03777117, %fts5IndexFindDeleteMerge.exit ], [ %.03777117, %bb.e ], [ %.03777117, %bb.f ]
  store ptr %i.ca, ptr %1, align 8, !tbaa !6514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.037.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts5IndexMergeLevel(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [63 x i32], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %4 = alloca %struct.Fts5SegWriter, align 8      ; 21 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !6514   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = getelementptr [16 x i8], ptr %i.d, i64 %i.e ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store ptr null, ptr %i.b, align 8, !tbaa !6759
  %.not = icmp ne ptr %3, null                    ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.i = load ptr, ptr %0, align 8, !tbaa !6427
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6391
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %i.l = load i32, ptr %i.f, align 8, !tbaa !6693 ; 2 uses
  %.not133 = icmp eq i32 %i.l, 0
  br i1 %.not133, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %i.n = getelementptr i8, ptr %i.f, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6696
  %i.p = getelementptr i8, ptr %i.f, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !6515
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [56 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -56      ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !6697
  call fastcc void @fts5WriteInit(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %i.u)
  %i.v = getelementptr i8, ptr %i.s, i64 -48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !6700
  %i.x = add nsw i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !7218
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i32 0, ptr %i.z, align 8, !tbaa !7220
  %.phi.trans.insert = getelementptr i8, ptr %i.f, i64 20
  %.pre263 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !6515
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6358 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %fts5AllocateSegid.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp sgt i32 %i.ae, 1999
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 13, ptr %i.aa, align 4, !tbaa !6358
  br label %fts5AllocateSegid.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(252) %i.a, i8 0, i64 252, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.preheader32.lr.ph.i, label %.preheader31.i.preheader

.preheader32.lr.ph.i:                             ; preds = %bb.h
  %wide.trip.count39.i = zext nneg i32 %i.ah to i64
  br label %.preheader32.i

.preheader32.i:                                   ; preds = %._crit_edge.i, %.preheader32.lr.ph.i
  %indvars.iv36.i = phi i64 [ 0, %.preheader32.lr.ph.i ], [ %indvars.iv.next37.i, %._crit_edge.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv36.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !6515 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader32.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !6696
  %wide.trip.count.i = zext nneg i32 %i.al to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !6697
  %i.ar = add i32 %i.aq, -1                       ; 3 uses
  %or.cond.i = icmp ult i32 %i.ar, 2000
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = and i32 %i.ar, 31
  %i.at = shl nuw i32 1, %i.as
  %i.au = lshr i32 %i.ar, 5
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !24
  %i.ay = or i32 %i.ax, %i.at
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !7169

._crit_edge.i:                                    ; preds = %bb.k, %.preheader32.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %.preheader31.i.preheader, label %.preheader32.i, !llvm.loop !7170

.preheader31.i.preheader:                         ; preds = %._crit_edge.i, %bb.h
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %.preheader31.i ], [ 0, %.preheader31.i.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv41.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !24 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  br i1 %i.bb, label %.preheader31.i, label %.preheader.i, !llvm.loop !7171

.preheader.i:                                     ; preds = %.preheader31.i, %.preheader.i
  %.028.i = phi i32 [ %i.be, %.preheader.i ], [ 0, %.preheader31.i ] ; 3 uses
  %i.bc = shl nuw i32 1, %.028.i
  %i.bd = and i32 %i.bc, %i.ba
  %.not.i = icmp eq i32 %i.bd, 0
  %i.be = add nuw nsw i32 %.028.i, 1
  br i1 %.not.i, label %bb.l, label %.preheader.i, !llvm.loop !7172

bb.l:                                             ; preds = %.preheader.i
  %i.bf = trunc nuw nsw i64 %indvars.iv41.i to i32
  %i.bg = shl nuw nsw i32 %i.bf, 5
  %i.bh = or disjoint i32 %i.bg, 1
  %i.bi = add nuw nsw i32 %i.bh, %.028.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %fts5AllocateSegid.exit

fts5AllocateSegid.exit:                           ; preds = %bb.e, %bb.g, %bb.l
  %i.bj = phi i32 [ 13, %bb.g ], [ 0, %bb.l ], [ %i.ab, %bb.e ]
  %.1.i = phi i32 [ 0, %bb.g ], [ %i.bi, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !24
  %i.bm = add nsw i32 %i.bl, -1
  %i.bn = icmp eq i32 %2, %i.bm
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %fts5AllocateSegid.exit
  tail call fastcc void @fts5StructureAddLevel(ptr noundef nonnull %i.aa, ptr noundef %1)
  %i.bo = load ptr, ptr %1, align 8, !tbaa !6514
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %fts5AllocateSegid.exit
  %i.bp = phi i32 [ %.pre, %bb.m ], [ %i.bj, %fts5AllocateSegid.exit ]
  %.0 = phi ptr [ %i.bo, %bb.m ], [ %i.c, %fts5AllocateSegid.exit ] ; 5 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.bs = sext i32 %2 to i64
  %i.bt = getelementptr [16 x i8], ptr %i.br, i64 %i.bs ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 20     ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !6515
  %i.bx = getelementptr i8, ptr %i.bt, i64 24     ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !6696
  %i.bz = tail call i32 @sqlite3_initialize(), !inline_history !7313
  %.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %sqlite3_realloc64.exit.thread.i

sqlite3_realloc64.exit.i:                         ; preds = %bb.o
  %i.ca = add nsw i32 %i.bw, 1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, 56
  %i.cd = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.by, i64 noundef %i.cc), !inline_history !7313 ; 3 uses
  %.not.i145 = icmp eq ptr %i.cd, null
  br i1 %.not.i145, label %sqlite3_realloc64.exit.thread.i, label %fts5StructureExtendLevel.exit

sqlite3_realloc64.exit.thread.i:                  ; preds = %sqlite3_realloc64.exit.i, %bb.o
  store i32 7, ptr %i.aa, align 4, !tbaa !24
  br label %.critedge

fts5StructureExtendLevel.exit:                    ; preds = %sqlite3_realloc64.exit.i
  %i.ce = load i32, ptr %i.bv, align 4, !tbaa !6515
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [56 x i8], ptr %i.cd, i64 %i.cf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, i8 0, i64 56, i1 false)
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !6696
  %.pr = load i32, ptr %i.aa, align 4, !tbaa !6358
  %.not134 = icmp eq i32 %.pr, 0
  br i1 %.not134, label %bb.p, label %.critedge

bb.p:                                             ; preds = %fts5StructureExtendLevel.exit
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.br, i64 %i.e ; 4 uses
  call fastcc void @fts5WriteInit(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %.1.i)
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !6696
  %i.cj = load i32, ptr %i.bv, align 4, !tbaa !6515 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [56 x i8], ptr %i.ci, i64 %i.ck ; 6 uses
  %i.cm = add nsw i32 %i.cj, 1                    ; 3 uses
  store i32 %i.cm, ptr %i.bv, align 4, !tbaa !6515
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !6699
  store i32 %.1.i, ptr %i.cl, align 8, !tbaa !6697
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !24
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !6515 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !19
  %.not135 = icmp eq i64 %i.cu, 0
  br i1 %.not135, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !6696 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !6701
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !6701
  %i.da = sext i32 %i.cs to i64
  %i.db = getelementptr [56 x i8], ptr %i.cw, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 -32
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !6702
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !6702
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.d
  %i.df = phi i32 [ %.pre263, %bb.d ], [ %i.cm, %bb.p ], [ %i.cm, %bb.q ]
  %.1127 = phi ptr [ %i.m, %bb.d ], [ %i.bu, %bb.p ], [ %i.bu, %bb.q ]
  %.1125 = phi i32 [ %i.l, %bb.d ], [ %i.cs, %bb.p ], [ %i.cs, %bb.q ] ; 9 uses
  %.1123 = phi ptr [ %i.t, %bb.d ], [ %i.cl, %bb.p ], [ %i.cl, %bb.q ] ; 2 uses
  %.1116 = phi ptr [ %i.f, %bb.d ], [ %i.ch, %bb.p ], [ %i.ch, %bb.q ] ; 5 uses
  %.1 = phi ptr [ %i.c, %bb.d ], [ %.0, %bb.p ], [ %.0, %bb.q ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1127, i64 4 ; 2 uses
  %i.dh = icmp eq i32 %i.df, 1
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %.1, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24
  %i.dk = add nsw i32 %2, 2
  %i.dl = icmp eq i32 %i.dj, %i.dk
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dm = phi i1 [ false, %bb.r ], [ %i.dl, %bb.s ]
  call fastcc void @fts5MultiIterNew(ptr noundef nonnull %0, ptr noundef nonnull %.1, i32 noundef 32, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %2, i32 noundef %.1125, ptr noundef %i.b)
  %i.dn = getelementptr i8, ptr %0, i64 60        ; 26 uses
  %.val144249 = load i32, ptr %i.dn, align 4, !tbaa !6358
  %.not.i146250 = icmp eq i32 %.val144249, 0
  %.pre266 = load ptr, ptr %i.b, align 8, !tbaa !6759 ; 2 uses
  br i1 %.not.i146250, label %fts5MultiIterEof.exit.lr.ph, label %sqlite3Fts5BufferAppendVarint.exit179

fts5MultiIterEof.exit.lr.ph:                      ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 22 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 73 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 10 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dw = icmp eq i32 %i.k, 1
  br label %fts5MultiIterEof.exit

fts5MultiIterEof.exit:                            ; preds = %fts5MultiIterEof.exit.lr.ph, %bb.cb
  %i.dx = phi ptr [ %.pre266, %fts5MultiIterEof.exit.lr.ph ], [ %i.ld, %bb.cb ] ; 6 uses
  %.0120254 = phi i32 [ 0, %fts5MultiIterEof.exit.lr.ph ], [ %.3.ph, %bb.cb ] ; 2 uses
  %.sroa.14.0253 = phi i32 [ 0, %fts5MultiIterEof.exit.lr.ph ], [ %.sroa.14.1, %bb.cb ] ; 8 uses
  %.sroa.9.0252 = phi i32 [ 0, %fts5MultiIterEof.exit.lr.ph ], [ %.sroa.9.1, %bb.cb ] ; 5 uses
  %.sroa.0.0251 = phi ptr [ null, %fts5MultiIterEof.exit.lr.ph ], [ %.sroa.0.1, %bb.cb ] ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.dz = load i8, ptr %i.dy, align 4, !tbaa !6891
  %.not245 = icmp eq i8 %i.dz, 0
  br i1 %.not245, label %bb.u, label %sqlite3Fts5BufferAppendVarint.exit179

bb.u:                                             ; preds = %fts5MultiIterEof.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 104
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 96
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !6892
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !6894
  %i.ef = zext i16 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw [128 x i8], ptr %i.ea, i64 %i.ef ; 5 uses
  %i.eh = getelementptr inbounds nuw [128 x i8], ptr %i.dx, i64 %i.ef ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 200
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 208
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !7268 ; 7 uses
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !7269 ; 3 uses
  %.not136 = icmp eq i32 %i.ek, %.sroa.9.0252
  br i1 %.not136, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.em = icmp slt i32 %.sroa.9.0252, 1
  br i1 %i.em, label %sqlite3Fts5BufferSet.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = zext nneg i32 %.sroa.9.0252 to i64
  %bcmp = call i32 @bcmp(ptr %i.el, ptr %.sroa.0.0251, i64 %i.en)
  %.not137 = icmp eq i32 %bcmp, 0
  br i1 %.not137, label %sqlite3Fts5BufferSet.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.eo = load i32, ptr %i.do, align 4
  %i.ep = icmp sgt i32 %i.eo, %i.h
  %or.cond143 = select i1 %.not, i1 %i.ep, i1 false
  br i1 %or.cond143, label %sqlite3Fts5BufferAppendVarint.exit179, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i.i147 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i147, label %sqlite3Fts5BufferSet.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not14.i.i = icmp ugt i32 %i.ek, %.sroa.14.0253
  br i1 %.not14.i.i, label %bb.aa, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.z
  %.pre.i = zext i32 %i.ek to i64
  br label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i = icmp eq i32 %.sroa.14.0253, 0
  %narrow.i.i.i = select i1 %.not.i.i.i, i32 64, i32 %.sroa.14.0253
  %spec.select.i.i.i = sext i32 %narrow.i.i.i to i64
  %i.eq = zext i32 %i.ek to i64                   ; 2 uses
  br label %bb.ab

end_hunk_2
