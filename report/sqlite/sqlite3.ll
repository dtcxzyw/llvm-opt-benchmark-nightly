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
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1937 ; 3 uses
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
  %sext.i = shl i64 %i.cb, 32
  %3 = ashr exact i64 %sext.i, 32                 ; 2 uses
  %4 = add nsw i64 %3, %2
  %i.cj = sub nsw i32 24, %i.cc
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %3
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
  %.1.i = phi i64 [ %4, %bb.g ], [ %2, %walEncodeFrame.exit ]
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
