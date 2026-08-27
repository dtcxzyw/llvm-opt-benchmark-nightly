Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@pager_write_pagelist:bb.a
  %i.by = lshr i32 %i.bs, 16
  %i.bz = trunc i32 %i.by to i8                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 25
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !231
  %i.cb = lshr i32 %i.bs, 8
  %i.cc = trunc i32 %i.cb to i8                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 26
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !231
  %i.ce = trunc i32 %i.bs to i8                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 27
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !231
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !527 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 92
  store i8 %i.bx, ptr %i.ch, align 1, !tbaa !231
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 93
  store i8 %i.bz, ptr %i.ci, align 1, !tbaa !231
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 94
  store i8 %i.cc, ptr %i.cj, align 1, !tbaa !231
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 95
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !231
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !527
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store <4 x i8> <i8 0, i8 46, i8 -107, i8 -52>, ptr %i.cm, align 1, !tbaa !231
  %.pre53 = load i64, ptr %i.ah, align 8, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %pager_write_changecounter.exit, %bb.j
  %i.cn = phi i64 [ %.pre53, %pager_write_changecounter.exit ], [ %i.av, %bb.j ]
  %i.co = getelementptr inbounds nuw i8, ptr %.04251, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !527 ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !535 ; 2 uses
  %i.cr = trunc i64 %i.cn to i32
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !483
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !689
  %i.cv = call i32 %i.cu(ptr noundef nonnull %i.cq, ptr noundef %i.cp, i32 noundef %i.cr, i64 noundef %i.aw) #58, !inline_history !690 ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) %i.cw, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = load i32, ptr %i.aj, align 8, !tbaa !739
  %i.cy = icmp ugt i32 %i.an, %i.cx
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !739
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cz = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.ak, align 8, !tbaa !27
  %i.db = load ptr, ptr %i.al, align 8, !tbaa !737 ; 2 uses
  %.not.i47 = icmp eq ptr %i.db, null
  br i1 %.not.i47, label %sqlite3BackupUpdate.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !527
  call fastcc void @backupUpdate(ptr noundef %i.db, i32 noundef %i.an, ptr noundef readonly %i.dc), !inline_history !1715
  br label %sqlite3BackupUpdate.exit

sqlite3BackupUpdate.exit:                         ; preds = %bb.p, %bb.o, %bb.h, %bb.i
  %.2 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ %i.cv, %bb.o ], [ %i.cv, %bb.p ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.04251, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !534 ; 2 uses
  %i.df = icmp eq i32 %.2, 0
  %i.dg = icmp ne ptr %i.de, null
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %bb.h, label %._crit_edge, !llvm.loop !1964

._crit_edge:                                      ; preds = %sqlite3BackupUpdate.exit, %bb.b, %bb.g
  %.1.lcssa = phi i32 [ 0, %bb.g ], [ %i.k, %bb.b ], [ %.2, %sqlite3BackupUpdate.exit ]
  ret i32 %.1.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @walWriteOneFrame(ptr nofree noundef nonnull readonly captures(none) %0, ptr %.8.val, i32 %.48.val, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = load ptr, ptr %0, align 8, !tbaa !1934   ; 6 uses
  %i.c = lshr i32 %.48.val, 24
  %i.d = trunc nuw i32 %i.c to i8
  store i8 %i.d, ptr %i.a, align 16, !tbaa !231
  %i.e = lshr i32 %.48.val, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !231
  %i.h = lshr i32 %.48.val, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.j, align 2, !tbaa !231
  %i.k = trunc i32 %.48.val to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.n = lshr i32 %1, 24
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %i.m, align 4, !tbaa !231
  %i.p = lshr i32 %1, 16
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.q, ptr %i.r, align 1, !tbaa !231
  %i.s = lshr i32 %1, 8
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.t, ptr %i.u, align 2, !tbaa !231
  %i.v = trunc i32 %1 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.v, ptr %i.w, align 1, !tbaa !231
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1645
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 85
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !1860
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %i.ah = zext i1 %i.ag to i32
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27 ; 3 uses
  %i.al = load i32, ptr %i.a, align 16, !tbaa !27 ; 2 uses
  br i1 %i.ag, label %.preheader96.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = add i32 %i.ak, %i.ai
  %i.ao = add i32 %i.an, %i.am
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !27
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  br label %walChecksumBytes.exit.i

.preheader96.i.i:                                 ; preds = %bb.b
  %i.ar = add i32 %i.ak, %i.ai
  %i.as = add i32 %i.ar, %i.al
  %i.at = load i32, ptr %i.m, align 4, !tbaa !27
  br label %walChecksumBytes.exit.i

walChecksumBytes.exit.i:                          ; preds = %.preheader96.i.i, %.preheader.i.i
  %.sink27.i = phi i32 [ %i.aq, %.preheader.i.i ], [ %i.at, %.preheader96.i.i ]
  %.sink26.i = phi i32 [ %i.ao, %.preheader.i.i ], [ %i.as, %.preheader96.i.i ] ; 2 uses
  %i.au = add i32 %.sink27.i, %i.ak
  %i.av = add i32 %i.au, %.sink26.i
  store i32 %.sink26.i, ptr %i.aa, align 8, !tbaa !27
  store i32 %i.av, ptr %i.aj, align 4, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1841
  tail call fastcc void @walChecksumBytes(i32 noundef %i.ah, ptr noundef readonly %.8.val, i32 noundef %i.ax, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aa)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = load i32, ptr %i.aa, align 8, !tbaa !27 ; 4 uses
  %i.ba = lshr i32 %i.az, 24
  %i.bb = trunc nuw i32 %i.ba to i8
  store i8 %i.bb, ptr %i.ay, align 16, !tbaa !231
  %i.bc = lshr i32 %i.az, 16
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !231
  %i.bf = lshr i32 %i.az, 8
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %i.bg, ptr %i.bh, align 2, !tbaa !231
  %i.bi = trunc i32 %i.az to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !231
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bl = load i32, ptr %i.aj, align 4, !tbaa !27 ; 4 uses
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = trunc nuw i32 %i.bm to i8
  store i8 %i.bn, ptr %i.bk, align 4, !tbaa !231
  %i.bo = lshr i32 %i.bl, 16
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !231
  %i.br = lshr i32 %i.bl, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !231
  %i.bu = trunc i32 %i.bl to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !231
  br label %walEncodeFrame.exit

bb.c:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %walEncodeFrame.exit

walEncodeFrame.exit:                              ; preds = %walChecksumBytes.exit.i, %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1937 ; 4 uses
  %i.bz = icmp sge i64 %2, %i.by
  %i.ca = add i64 %2, 24                          ; 7 uses
  %.not.i = icmp slt i64 %i.ca, %i.by
  %or.cond = or i1 %i.bz, %.not.i
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %walEncodeFrame.exit
  %i.cb = sub nsw i64 %i.by, %2                   ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1936 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !483
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !689
  %i.ci = call i32 %i.ch(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.a, i32 noundef %i.cc, i64 noundef %2) #58, !inline_history !1965 ; 2 uses
  %.not43.i = icmp eq i32 %i.ci, 0
  br i1 %.not43.i, label %bb.e, label %walWriteToLog.exit24

bb.e:                                             ; preds = %bb.d
  %i.cj = sub nsw i32 24, %i.cc
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %i.cb
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !1938
  %i.cn = and i32 %i.cm, 3                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !1936 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !483
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !745
  %i.cs = call i32 %i.cr(ptr noundef nonnull %i.co, i32 noundef range(i32 0, 256) %i.cn) #58, !inline_history !1966
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
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1936 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !483
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !689
  %i.db = call i32 %i.da(ptr noundef nonnull %i.cx, ptr noundef nonnull %.135.i, i32 noundef %.133.i, i64 noundef %.1.i) #58, !inline_history !1965
  br label %walWriteToLog.exit

walWriteToLog.exit:                               ; preds = %bb.g, %bb.h
  %.137.i = phi i32 [ %i.db, %bb.h ], [ %i.ct, %bb.g ] ; 2 uses
  %.not = icmp eq i32 %.137.i, 0
  br i1 %.not, label %bb.i, label %walWriteToLog.exit24

bb.i:                                             ; preds = %walWriteToLog.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1939 ; 3 uses
  %i.de = load i64, ptr %i.bx, align 8, !tbaa !1937 ; 3 uses
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
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1936 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !483
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !689
  %i.dp = call i32 %i.do(ptr noundef nonnull %i.dl, ptr noundef %.8.val, i32 noundef %i.dj, i64 noundef %i.ca) #58, !inline_history !1965 ; 2 uses
  %.not43.i20 = icmp eq i32 %i.dp, 0
  br i1 %.not43.i20, label %bb.k, label %walWriteToLog.exit24

bb.k:                                             ; preds = %bb.j
  %sext.i21 = shl i64 %i.di, 32
  %i.dq = ashr exact i64 %sext.i21, 32            ; 2 uses
  %i.dr = add nsw i64 %i.dq, %i.ca
  %i.ds = sub nsw i32 %i.dd, %i.dj                ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.8.val, i64 %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !1938
  %i.dw = and i32 %i.dv, 3                        ; 2 uses
  %.not.i.i22 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !1936 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !483
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !745
  %i.eb = call i32 %i.ea(ptr noundef nonnull %i.dx, i32 noundef range(i32 0, 256) %i.dw) #58, !inline_history !1966
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
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1936 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !483
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !689
  %i.ek = call i32 %i.ej(ptr noundef nonnull %i.eg, ptr noundef %.135.i15, i32 noundef %.133.i16, i64 noundef %.1.i17) #58, !inline_history !1965
  br label %walWriteToLog.exit24

walWriteToLog.exit24:                             ; preds = %bb.d, %bb.n, %bb.m, %bb.j, %walWriteToLog.exit
  %.0 = phi i32 [ %i.dp, %bb.j ], [ %.137.i, %walWriteToLog.exit ], [ %i.ek, %bb.n ], [ %i.ec, %bb.m ], [ %i.ci, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walLimitSize(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = load ptr, ptr @sqlite3Hooks.0, align 8, !tbaa !1236 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3BeginBenignMalloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b() #58, !inline_history !1238
  br label %sqlite3BeginBenignMalloc.exit

sqlite3BeginBenignMalloc.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1811 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !483
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !692
  %i.h = call i32 %i.g(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #58, !inline_history !1658 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %sqlite3BeginBenignMalloc.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !21
  %i.k = icmp sgt i64 %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !1811 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !483
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !694
  %i.p = call i32 %i.o(ptr noundef nonnull %i.l, i64 noundef %1) #58, !inline_history !1711
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %sqlite3BeginBenignMalloc.exit
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ], [ %i.h, %sqlite3BeginBenignMalloc.exit ] ; 2 uses
  %i.q = load ptr, ptr @sqlite3Hooks.1, align 8, !tbaa !1239 ; 2 uses
  %.not.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i9, label %sqlite3EndBenignMalloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.q() #58, !inline_history !1240
  br label %sqlite3EndBenignMalloc.exit

sqlite3EndBenignMalloc.exit:                      ; preds = %bb.e, %bb.f
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3EndBenignMalloc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1873
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef %.0, ptr noundef nonnull @.str.115, ptr noundef %i.s)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sqlite3EndBenignMalloc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walRestartHdr(ptr nofree noundef captures(none) initializes((72, 76), (84, 85), (88, 92), (108, 120)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1582 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !350 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1828
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1828
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.f, align 8, !tbaa !1799
  %i.g = load i8, ptr %i.b, align 8, !tbaa !231
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !231
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2, !tbaa !231
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = or disjoint i32 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !231
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  %i.x = add i32 %i.w, 1                          ; 4 uses
  %i.y = lshr i32 %i.x, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.b, align 8, !tbaa !231
  %i.aa = lshr i32 %i.x, 16
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.j, align 1, !tbaa !231
  %i.ac = lshr i32 %i.x, 8
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.o, align 2, !tbaa !231
  %i.ae = trunc i32 %i.x to i8
  store i8 %i.ae, ptr %i.t, align 1, !tbaa !231
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %1, ptr %i.af, align 4
  %.val.val.i = load ptr, ptr %.val, align 8, !tbaa !350 ; 2 uses
  %.ptr10.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i8 1, ptr %i.ag, align 4, !tbaa !1866
  store i32 3007000, ptr %.ptr10.i, align 8, !tbaa !1867
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 2 uses
  %i.aj = add i32 %i.ai, 3007000
  %.2.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load i32, ptr %.2.i.ptr.1.i, align 8, !tbaa !27
  %i.al = add i32 %i.ai, 6014000
  %i.am = add i32 %i.al, %i.ak                    ; 2 uses
  %i.an = load i32, ptr %i.ag, align 4, !tbaa !27
  %i.ao = add i32 %i.aj, %i.an
end_hunk_0
begin_hunk_1_@wherePathSolver:bb.a

bb.an:                                            ; preds = %bb.am
  %i.fp = add nsw i32 %i.fm, 31
  %i.fq = icmp slt i32 %i.fp, %i.fl
  br i1 %i.fq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fr = add i16 %i.fk, 1
  br label %sqlite3LogEstAdd.exit

bb.ap:                                            ; preds = %bb.an
  %i.fs = sub nsw i32 %i.fl, %i.fm
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !231
  %i.fw = zext i8 %i.fv to i16
  %i.fx = add i16 %i.fk, %i.fw
  br label %sqlite3LogEstAdd.exit

bb.aq:                                            ; preds = %bb.al
  %i.fy = add nsw i32 %i.fl, 49
  %i.fz = icmp slt i32 %i.fy, %i.fm
  br i1 %i.fz, label %sqlite3LogEstAdd.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ga = add nsw i32 %i.fl, 31
  %i.gb = icmp slt i32 %i.ga, %i.fm
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gc = add i16 %i.fi, 1
  br label %sqlite3LogEstAdd.exit

bb.at:                                            ; preds = %bb.ar
  %i.gd = sub nsw i32 %i.fm, %i.fl
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !231
  %i.gh = zext i8 %i.gg to i16
  %i.gi = add i16 %i.fi, %i.gh
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.0271 = phi i16 [ %i.fi, %bb.ak ], [ %i.gi, %bb.at ], [ %i.fr, %bb.ao ], [ %i.fx, %bb.ap ], [ %i.fk, %bb.am ], [ %i.gc, %bb.as ], [ %i.fi, %bb.aq ] ; 5 uses
  %i.gj = load i16, ptr %i.er, align 4, !tbaa !4443 ; 5 uses
  %i.gk = sext i16 %.0271 to i32                  ; 6 uses
  %i.gl = sext i16 %i.gj to i32                   ; 6 uses
  %.not.i359 = icmp slt i16 %.0271, %i.gj
  br i1 %.not.i359, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gm = add nsw i32 %i.gl, 49
  %i.gn = icmp slt i32 %i.gm, %i.gk
  br i1 %i.gn, label %sqlite3LogEstAdd.exit361, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = add nsw i32 %i.gl, 31
  %i.gp = icmp slt i32 %i.go, %i.gk
  br i1 %i.gp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gq = add i16 %.0271, 1
  br label %sqlite3LogEstAdd.exit361

bb.ax:                                            ; preds = %bb.av
  %i.gr = sub nsw i32 %i.gk, %i.gl
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !231
  %i.gv = zext i8 %i.gu to i16
  %i.gw = add i16 %.0271, %i.gv
  br label %sqlite3LogEstAdd.exit361

bb.ay:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gx = add nsw i32 %i.gk, 49
  %i.gy = icmp slt i32 %i.gx, %i.gl
  br i1 %i.gy, label %sqlite3LogEstAdd.exit361, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = add nsw i32 %i.gk, 31
  %i.ha = icmp slt i32 %i.gz, %i.gl
  br i1 %i.ha, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hb = add i16 %i.gj, 1
  br label %sqlite3LogEstAdd.exit361

bb.bb:                                            ; preds = %bb.az
  %i.hc = sub nsw i32 %i.gl, %i.gk
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !231
  %i.hg = zext i8 %i.hf to i16
  %i.hh = add i16 %i.gj, %i.hg
  br label %sqlite3LogEstAdd.exit361

sqlite3LogEstAdd.exit361:                         ; preds = %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.bb
  %.0.i360 = phi i16 [ %i.hh, %bb.bb ], [ %i.gq, %bb.aw ], [ %i.gw, %bb.ax ], [ %.0271, %bb.au ], [ %i.hb, %bb.ba ], [ %i.gj, %bb.ay ] ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0275421, i64 22
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !4261
  %i.hk = add i16 %i.hj, %.pre                    ; 3 uses
  %i.hl = or i64 %i.fa, %i.ew
  %i.hm = load i8, ptr %i.es, align 2, !tbaa !4439 ; 2 uses
  %i.hn = icmp slt i8 %i.hm, 0
  br i1 %i.hn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %sqlite3LogEstAdd.exit361
  store i64 0, ptr %i.a, align 8, !tbaa !21
  %i.ho = load ptr, ptr %i.cp, align 8, !tbaa !3440
  %i.hp = load i16, ptr %i.dy, align 4, !tbaa !338
  %i.hq = call fastcc signext i8 @wherePathSatisfiesOrderBy(ptr noundef nonnull %0, ptr noundef %i.ho, ptr noundef %.1279434, i16 noundef zeroext %i.hp, i16 noundef zeroext %i.ei, ptr noundef nonnull %.0275421, ptr noundef %i.a)
  br label %bb.be

bb.bd:                                            ; preds = %sqlite3LogEstAdd.exit361
  %i.hr = load i64, ptr %i.et, align 8, !tbaa !4444
  store i64 %i.hr, ptr %i.a, align 8, !tbaa !21
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0270 = phi i8 [ %i.hq, %bb.bc ], [ %i.hm, %bb.bd ] ; 6 uses
  %i.hs = sext i8 %.0270 to i32                   ; 2 uses
  %i.ht = icmp sgt i8 %.0270, -1
  %i.hu = icmp sgt i32 %.0298, %i.hs
  %or.cond350 = and i1 %i.ht, %i.hu
  br i1 %or.cond350, label %bb.bf, label %bb.bx

bb.bf:                                            ; preds = %bb.be
  %i.hv = zext nneg i8 %.0270 to i64
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.0273371, i64 %i.hv ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !338 ; 2 uses
  %i.hy = icmp eq i16 %i.hx, 0
  br i1 %i.hy, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.hz = load ptr, ptr %i.dz, align 8, !tbaa !3828
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !2764
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !27
  %i.id = add nsw i32 %i.ic, 59
  %i.ie = sdiv i32 %i.id, 30                      ; 4 uses
  %i.if = sext i32 %i.ie to i64                   ; 3 uses
  %i.ig = icmp ult i32 %i.ie, 8
  br i1 %i.ig, label %bb.bh, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %bb.bg
  %i.ih = icmp ugt i32 %i.ie, 255
  br i1 %i.ih, label %.lr.ph.i.i, label %.preheader21.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ii = icmp samesign ult i32 %i.ie, 2
  br i1 %i.ii, label %sqlite3LogEst.exit.i, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.bh, %.lr.ph34.i.i
  %.033.i.i = phi i16 [ %i.ij, %.lr.ph34.i.i ], [ 40, %bb.bh ]
  %.01432.i.i = phi i64 [ %i.ik, %.lr.ph34.i.i ], [ %i.if, %bb.bh ] ; 2 uses
  %i.ij = add i16 %.033.i.i, -10                  ; 2 uses
  %i.ik = shl nuw nsw i64 %.01432.i.i, 1          ; 2 uses
  %i.il = icmp ult i64 %.01432.i.i, 4
  br i1 %i.il, label %.lr.ph34.i.i, label %.loopexit.i.i, !llvm.loop !1363

.preheader21.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader23.i.i
  %.115.lcssa.i.i = phi i64 [ %i.if, %.preheader23.i.i ], [ %i.io, %.lr.ph.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i16 [ 40, %.preheader23.i.i ], [ %i.in, %.lr.ph.i.i ] ; 2 uses
  %i.im = icmp samesign ugt i64 %.115.lcssa.i.i, 15
  br i1 %i.im, label %.lr.ph29.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader23.i.i, %.lr.ph.i.i
  %.125.i.i = phi i16 [ %i.in, %.lr.ph.i.i ], [ 40, %.preheader23.i.i ]
  %.11524.i.i = phi i64 [ %i.io, %.lr.ph.i.i ], [ %i.if, %.preheader23.i.i ] ; 2 uses
  %i.in = add nuw nsw i16 %.125.i.i, 40           ; 2 uses
  %i.io = lshr i64 %.11524.i.i, 4                 ; 2 uses
  %i.ip = icmp ugt i64 %.11524.i.i, 4095
  br i1 %i.ip, label %.lr.ph.i.i, label %.preheader21.i.i, !llvm.loop !1364

.lr.ph29.i.i:                                     ; preds = %.preheader21.i.i, %.lr.ph29.i.i
  %.228.i.i = phi i16 [ %i.iq, %.lr.ph29.i.i ], [ %.1.lcssa.i.i, %.preheader21.i.i ]
  %.21627.i.i = phi i64 [ %i.ir, %.lr.ph29.i.i ], [ %.115.lcssa.i.i, %.preheader21.i.i ] ; 2 uses
  %i.iq = add nuw nsw i16 %.228.i.i, 10           ; 2 uses
  %i.ir = lshr i64 %.21627.i.i, 1                 ; 2 uses
  %i.is = icmp samesign ugt i64 %.21627.i.i, 31
  br i1 %i.is, label %.lr.ph29.i.i, label %.loopexit.i.i, !llvm.loop !1365

.loopexit.i.i:                                    ; preds = %.lr.ph29.i.i, %.lr.ph34.i.i, %.preheader21.i.i
  %.317.i.i = phi i64 [ %.115.lcssa.i.i, %.preheader21.i.i ], [ %i.ik, %.lr.ph34.i.i ], [ %i.ir, %.lr.ph29.i.i ]
  %.3.i.i = phi i16 [ %.1.lcssa.i.i, %.preheader21.i.i ], [ %i.ij, %.lr.ph34.i.i ], [ %i.iq, %.lr.ph29.i.i ]
  %i.it = and i64 %.317.i.i, 7
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !338
  %i.iw = add i16 %.3.i.i, -10
  %i.ix = add i16 %i.iw, %i.iv
  br label %sqlite3LogEst.exit.i

sqlite3LogEst.exit.i:                             ; preds = %.loopexit.i.i, %bb.bh
  %.018.i.i = phi i16 [ %i.ix, %.loopexit.i.i ], [ 0, %bb.bh ]
  %i.iy = add i16 %.018.i.i, %1                   ; 2 uses
  %.not.i362 = icmp eq i8 %.0270, 0               ; 2 uses
  br i1 %.not.i362, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %sqlite3LogEst.exit.i
  %i.iz = sub nuw nsw i32 %.0298, %i.hs
  %i.ja = mul nuw nsw i32 %i.iz, 100
  %i.jb = sdiv i32 %i.ja, %.0298                  ; 4 uses
  %i.jc = sext i32 %i.jb to i64                   ; 3 uses
  %i.jd = icmp ult i32 %i.jb, 8
  br i1 %i.jd, label %bb.bj, label %.preheader23.i29.i

.preheader23.i29.i:                               ; preds = %bb.bi
  %i.je = icmp ugt i32 %i.jb, 255
  br i1 %i.je, label %.lr.ph.i40.i, label %.preheader21.i30.i

bb.bj:                                            ; preds = %bb.bi
  %i.jf = icmp samesign ult i32 %i.jb, 2
  br i1 %i.jf, label %sqlite3LogEst.exit46.i, label %.lr.ph34.i43.i

.lr.ph34.i43.i:                                   ; preds = %bb.bj, %.lr.ph34.i43.i
  %.033.i44.i = phi i16 [ %i.jg, %.lr.ph34.i43.i ], [ 40, %bb.bj ]
  %.01432.i45.i = phi i64 [ %i.jh, %.lr.ph34.i43.i ], [ %i.jc, %bb.bj ] ; 2 uses
  %i.jg = add i16 %.033.i44.i, -10                ; 2 uses
  %i.jh = shl nuw nsw i64 %.01432.i45.i, 1        ; 2 uses
  %i.ji = icmp ult i64 %.01432.i45.i, 4
  br i1 %i.ji, label %.lr.ph34.i43.i, label %.loopexit.i33.i, !llvm.loop !1363

.preheader21.i30.i:                               ; preds = %.lr.ph.i40.i, %.preheader23.i29.i
  %.115.lcssa.i31.i = phi i64 [ %i.jc, %.preheader23.i29.i ], [ %i.jl, %.lr.ph.i40.i ] ; 3 uses
  %.1.lcssa.i32.i = phi i16 [ 40, %.preheader23.i29.i ], [ %i.jk, %.lr.ph.i40.i ] ; 2 uses
  %i.jj = icmp samesign ugt i64 %.115.lcssa.i31.i, 15
  br i1 %i.jj, label %.lr.ph29.i37.i, label %.loopexit.i33.i

.lr.ph.i40.i:                                     ; preds = %.preheader23.i29.i, %.lr.ph.i40.i
  %.125.i41.i = phi i16 [ %i.jk, %.lr.ph.i40.i ], [ 40, %.preheader23.i29.i ]
  %.11524.i42.i = phi i64 [ %i.jl, %.lr.ph.i40.i ], [ %i.jc, %.preheader23.i29.i ] ; 2 uses
  %i.jk = add nuw nsw i16 %.125.i41.i, 40         ; 2 uses
  %i.jl = lshr i64 %.11524.i42.i, 4               ; 2 uses
  %i.jm = icmp ugt i64 %.11524.i42.i, 4095
  br i1 %i.jm, label %.lr.ph.i40.i, label %.preheader21.i30.i, !llvm.loop !1364

.lr.ph29.i37.i:                                   ; preds = %.preheader21.i30.i, %.lr.ph29.i37.i
  %.228.i38.i = phi i16 [ %i.jn, %.lr.ph29.i37.i ], [ %.1.lcssa.i32.i, %.preheader21.i30.i ]
  %.21627.i39.i = phi i64 [ %i.jo, %.lr.ph29.i37.i ], [ %.115.lcssa.i31.i, %.preheader21.i30.i ] ; 2 uses
  %i.jn = add nuw nsw i16 %.228.i38.i, 10         ; 2 uses
  %i.jo = lshr i64 %.21627.i39.i, 1               ; 2 uses
  %i.jp = icmp samesign ugt i64 %.21627.i39.i, 31
  br i1 %i.jp, label %.lr.ph29.i37.i, label %.loopexit.i33.i, !llvm.loop !1365

.loopexit.i33.i:                                  ; preds = %.lr.ph29.i37.i, %.lr.ph34.i43.i, %.preheader21.i30.i
  %.317.i34.i = phi i64 [ %.115.lcssa.i31.i, %.preheader21.i30.i ], [ %i.jh, %.lr.ph34.i43.i ], [ %i.jo, %.lr.ph29.i37.i ]
  %.3.i35.i = phi i16 [ %.1.lcssa.i32.i, %.preheader21.i30.i ], [ %i.jg, %.lr.ph34.i43.i ], [ %i.jn, %.lr.ph29.i37.i ]
  %i.jq = and i64 %.317.i34.i, 7
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !338
  %i.jt = add i16 %.3.i35.i, -76
  %i.ju = add i16 %i.jt, %i.js
  br label %sqlite3LogEst.exit46.i

sqlite3LogEst.exit46.i:                           ; preds = %.loopexit.i33.i, %bb.bj
  %.018.i36.i = phi i16 [ %i.ju, %.loopexit.i33.i ], [ -66, %bb.bj ]
  %i.jv = add i16 %.018.i36.i, %i.iy
  br label %bb.bk

bb.bk:                                            ; preds = %sqlite3LogEst.exit46.i, %sqlite3LogEst.exit.i
  %.0.i363 = phi i16 [ %i.jv, %sqlite3LogEst.exit46.i ], [ %i.iy, %sqlite3LogEst.exit.i ] ; 2 uses
  %i.jw = load i16, ptr %i.dy, align 4, !tbaa !338
  %i.jx = zext i16 %i.jw to i32                   ; 2 uses
  %i.jy = and i32 %i.jx, 16384
  %.not25.i = icmp eq i32 %i.jy, 0
  br i1 %.not25.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %spec.select.v.i = select i1 %.not.i362, i16 10, i16 16
  %spec.select.i364 = add i16 %.0.i363, %spec.select.v.i
  %i.jz = load i16, ptr %i.ea, align 2, !tbaa !338
  %spec.select28.i = tail call i16 @llvm.smin.i16(i16 %i.jz, i16 range(i16 0, -32767) %1)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ka = and i32 %i.jx, 256
  %i.kb = icmp ne i32 %i.ka, 0
  %or.cond.i365 = and i1 %i.eb, %i.kb
  %spec.select27.i = select i1 %or.cond.i365, i16 %i.ec, i16 %1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.022.i = phi i16 [ %spec.select27.i, %bb.bm ], [ %spec.select28.i, %bb.bl ] ; 4 uses
  %.2.i = phi i16 [ %.0.i363, %bb.bm ], [ %spec.select.i364, %bb.bl ]
  %i.kc = icmp slt i16 %.022.i, 11
  br i1 %i.kc, label %whereSortingCost.exit, label %.preheader23.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.bn
  %i.kd = zext nneg i16 %.022.i to i64            ; 3 uses
  %i.ke = icmp samesign ugt i16 %.022.i, 255
  br i1 %i.ke, label %.lr.ph.i.i.i, label %.preheader21.i.i.i

.preheader21.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.preheader23.i.i.i
  %.115.lcssa.i.i.i = phi i64 [ %i.kd, %.preheader23.i.i.i ], [ %.lcssa35, %.lr.ph.i.i.i ] ; 3 uses
  %.1.lcssa.i.i.i = phi i16 [ 40, %.preheader23.i.i.i ], [ %.lcssa36, %.lr.ph.i.i.i ] ; 2 uses
  %i.kf = icmp samesign ugt i64 %.115.lcssa.i.i.i, 15
  br i1 %i.kf, label %.lr.ph29.i.i.i, label %sqlite3LogEst.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader23.i.i.i
  %i.kg = lshr i64 %i.kd, 4
  %i.kh = icmp ugt i16 %.022.i, 4095              ; 2 uses
  %i.ki = lshr i64 %i.kd, 8
  %.lcssa36 = select i1 %i.kh, i16 120, i16 80
  %.lcssa35 = select i1 %i.kh, i64 %i.ki, i64 %i.kg
  br label %.preheader21.i.i.i

.lr.ph29.i.i.i:                                   ; preds = %.preheader21.i.i.i, %.lr.ph29.i.i.i
  %.228.i.i.i = phi i16 [ %i.kj, %.lr.ph29.i.i.i ], [ %.1.lcssa.i.i.i, %.preheader21.i.i.i ]
  %.21627.i.i.i = phi i64 [ %i.kk, %.lr.ph29.i.i.i ], [ %.115.lcssa.i.i.i, %.preheader21.i.i.i ] ; 2 uses
  %i.kj = add nuw nsw i16 %.228.i.i.i, 10         ; 2 uses
  %i.kk = lshr i64 %.21627.i.i.i, 1               ; 2 uses
  %i.kl = icmp samesign ugt i64 %.21627.i.i.i, 31
  br i1 %i.kl, label %.lr.ph29.i.i.i, label %sqlite3LogEst.exit.i.i, !llvm.loop !1365

sqlite3LogEst.exit.i.i:                           ; preds = %.lr.ph29.i.i.i, %.preheader21.i.i.i
  %.317.i.i.i = phi i64 [ %.115.lcssa.i.i.i, %.preheader21.i.i.i ], [ %i.kk, %.lr.ph29.i.i.i ]
  %.3.i.i.i = phi i16 [ %.1.lcssa.i.i.i, %.preheader21.i.i.i ], [ %i.kj, %.lr.ph29.i.i.i ]
  %i.km = and i64 %.317.i.i.i, 7
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !338
  %i.kp = add i16 %.3.i.i.i, -43
  %i.kq = add i16 %i.kp, %i.ko
  br label %whereSortingCost.exit

whereSortingCost.exit:                            ; preds = %bb.bn, %sqlite3LogEst.exit.i.i
  %i.kr = phi i16 [ %i.kq, %sqlite3LogEst.exit.i.i ], [ 0, %bb.bn ]
  %i.ks = add i16 %i.kr, %.2.i                    ; 2 uses
  store i16 %i.ks, ptr %i.hw, align 2, !tbaa !338
  br label %bb.bo

bb.bo:                                            ; preds = %whereSortingCost.exit, %bb.bf
  %i.kt = phi i16 [ %i.ks, %whereSortingCost.exit ], [ %i.hx, %bb.bf ] ; 5 uses
  %i.ku = sext i16 %.0.i360 to i32                ; 6 uses
  %i.kv = sext i16 %i.kt to i32                   ; 6 uses
  %.not.i366 = icmp slt i16 %.0.i360, %i.kt
  br i1 %.not.i366, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kw = add nsw i32 %i.kv, 49
  %i.kx = icmp slt i32 %i.kw, %i.ku
  br i1 %i.kx, label %sqlite3LogEstAdd.exit368, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ky = add nsw i32 %i.kv, 31
  %i.kz = icmp slt i32 %i.ky, %i.ku
  br i1 %i.kz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.la = add i16 %.0.i360, 1
  br label %sqlite3LogEstAdd.exit368

bb.bs:                                            ; preds = %bb.bq
  %i.lb = sub nsw i32 %i.ku, %i.kv
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !231
  %i.lf = zext i8 %i.le to i16
  %i.lg = add i16 %.0.i360, %i.lf
  br label %sqlite3LogEstAdd.exit368

bb.bt:                                            ; preds = %bb.bo
  %i.lh = add nsw i32 %i.ku, 49
  %i.li = icmp slt i32 %i.lh, %i.kv
  br i1 %i.li, label %sqlite3LogEstAdd.exit368, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lj = add nsw i32 %i.ku, 31
  %i.lk = icmp slt i32 %i.lj, %i.kv
  br i1 %i.lk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ll = add i16 %i.kt, 1
  br label %sqlite3LogEstAdd.exit368

bb.bw:                                            ; preds = %bb.bu
  %i.lm = sub nsw i32 %i.kv, %i.ku
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !231
  %i.lq = zext i8 %i.lp to i16
  %i.lr = add i16 %i.kt, %i.lq
  br label %sqlite3LogEstAdd.exit368

sqlite3LogEstAdd.exit368:                         ; preds = %bb.bp, %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bw
  %.0.i367 = phi i16 [ %i.lr, %bb.bw ], [ %i.la, %bb.br ], [ %i.lg, %bb.bs ], [ %.0.i360, %bb.bp ], [ %i.ll, %bb.bv ], [ %i.kt, %bb.bt ]
  %i.ls = add i16 %.0.i367, 3
  br label %bb.by

bb.bx:                                            ; preds = %bb.be
  %i.lt = add i16 %.0.i360, -2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %sqlite3LogEstAdd.exit368
  %.0272 = phi i16 [ %i.ls, %sqlite3LogEstAdd.exit368 ], [ %.0.i360, %bb.bx ] ; 5 uses
  %.1 = phi i16 [ %.0.i360, %sqlite3LogEstAdd.exit368 ], [ %i.lt, %bb.bx ] ; 4 uses
  %i.lu = icmp sgt i32 %.1284420, 0
  br i1 %i.lu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.by, %bb.ca
  %.0276403 = phi ptr [ %i.mc, %bb.ca ], [ %.0280450, %bb.by ] ; 12 uses
  %.0306402 = phi i32 [ %i.mb, %bb.ca ], [ 0, %bb.by ]
end_hunk_1
