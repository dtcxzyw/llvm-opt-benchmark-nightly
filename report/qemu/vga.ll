Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vga?download=true
inline.NumInlined: 165
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@vga_mem_writeb:bb.a
  %.not105 = icmp eq i8 %i.ah, 0
  br i1 %.not105, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = lshr i64 %.198, 2
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aj = and i8 %.in.i115, 4
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1412
  %i.am = load i8, ptr %i.al, align 2
  %i.an = and i8 %i.am, 64
  %i.ao = icmp eq i8 %i.an, 0
  %i.ap = zext i1 %i.ao to i64
  %spec.select = lshr i64 %.198, %i.ap
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.299 = phi i64 [ %i.ai, %bb.j ], [ %.198, %bb.k ], [ %spec.select, %bb.l ] ; 3 uses
  %i.aq = shl i64 %.299, 2                        ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.as = load i32, ptr %i.ar, align 16
  %i.at = zext i32 %i.as to i64
  %.not106 = icmp ult i64 %i.aq, %i.at
  br i1 %.not106, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not108 = icmp eq i32 %.1, 0
  br i1 %.not108, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = trunc i32 %2 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0
  store i8 %i.au, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 16
  %i.bb = or i32 %i.ba, %.1
  store i32 %i.bb, ptr %i.az, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @memory_region_set_dirty(ptr noundef nonnull %i.bc, i64 noundef %.299, i64 noundef 1) #18
  br label %bb.aa

bb.q:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1111
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = and i8 %i.be, 3
  switch i8 %i.bf, label %default.unreachable [
    i8 3, label %bb.u
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 0, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1109
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %i.bi = and i8 %i.bh, 7
  %i.bj = zext nneg i8 %i.bi to i32               ; 2 uses
  %i.bk = lshr i32 %2, %i.bj
  %i.bl = sub nuw nsw i32 8, %i.bj
  %i.bm = shl i32 %2, %i.bl
  %i.bn = or i32 %i.bm, %i.bk
  %i.bo = and i32 %i.bn, 255
  %i.bp = mul nuw i32 %i.bo, 16843009
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1107
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @mask16, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bv = xor i32 %i.bu, -1
  %i.bw = and i32 %i.bp, %i.bv
  %i.bx = load i8, ptr %i.a, align 2
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @mask16, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, %i.bu
  %i.cc = or i32 %i.bw, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1114
  %i.ce = load i8, ptr %i.cd, align 2
  %i.cf = zext i8 %i.ce to i32
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ch = load i32, ptr %i.cg, align 16
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  %i.ci = and i32 %2, 15
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @mask16, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1114
  %i.cn = load i8, ptr %i.cm, align 2
  %i.co = zext i8 %i.cn to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1109
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1109
  %i.cq = load i8, ptr %i.cp, align 1             ; 2 uses
  %i.cr = and i8 %i.cq, 7
  %i.cs = zext nneg i8 %i.cr to i32               ; 2 uses
  %i.ct = lshr i32 %2, %i.cs
  %i.cu = sub nuw nsw i32 8, %i.cs
  %i.cv = shl i32 %2, %i.cu
  %i.cw = or i32 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1114
  %i.cy = load i8, ptr %i.cx, align 2
  %i.cz = zext i8 %i.cy to i32
  %i.da = and i32 %i.cw, %i.cz
  %i.db = load i8, ptr %i.a, align 2
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @mask16, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %i.df = phi i8 [ %i.bh, %bb.r ], [ %i.cq, %bb.u ], [ %.pre, %bb.t ]
  %.095 = phi i32 [ %i.cc, %bb.r ], [ %i.de, %bb.u ], [ %i.cl, %bb.t ] ; 4 uses
  %.093 = phi i32 [ %i.cf, %bb.r ], [ %i.da, %bb.u ], [ %i.co, %bb.t ] ; 2 uses
  %i.dg = lshr i8 %i.df, 3
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.pre132 = load i32, ptr %.phi.trans.insert131, align 16 ; 4 uses
  switch i8 %i.dg, label %._crit_edge [
    i8 3, label %bb.y
    i8 1, label %bb.w
    i8 2, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.dh = and i32 %.pre132, %.095
  br label %._crit_edge

bb.x:                                             ; preds = %bb.v
  %i.di = or i32 %.pre132, %.095
  br label %._crit_edge

bb.y:                                             ; preds = %bb.v
  %i.dj = xor i32 %.pre132, %.095
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.y, %bb.x, %bb.w
  %.196 = phi i32 [ %i.di, %bb.x ], [ %i.dj, %bb.y ], [ %i.dh, %bb.w ], [ %.095, %bb.v ]
  %i.dk = shl nuw nsw i32 %.093, 8
  %i.dl = or i32 %i.dk, %.093                     ; 2 uses
  %i.dm = shl nuw i32 %i.dl, 16
  %i.dn = or i32 %i.dm, %i.dl                     ; 2 uses
  %i.do = and i32 %.196, %i.dn
  %i.dp = xor i32 %i.dn, -1
  %i.dq = and i32 %.pre132, %i.dp
  %i.dr = or i32 %i.dq, %i.do
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.s
  %.2 = phi i32 [ %i.dr, %._crit_edge ], [ %i.ch, %bb.s ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 16
  %i.du = or i32 %i.dt, %.1
  store i32 %i.du, ptr %i.ds, align 16
  %i.dv = zext nneg i32 %.1 to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @mask16, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4            ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.299 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = xor i32 %i.dx, -1
  %i.ed = and i32 %i.eb, %i.ec
  %i.ee = and i32 %i.dx, %.2
  %i.ef = or i32 %i.ed, %i.ee
  store i32 %i.ef, ptr %i.ea, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @memory_region_set_dirty(ptr noundef nonnull %i.eg, i64 noundef %i.aq, i64 noundef 4) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.o, %bb.p, %bb.m, %bb.e, %bb.d, %bb.b, %bb.z
  ret void
}

declare void @memory_region_set_dirty(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @vga_invalidate_scanlines(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %1, 2047
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %2, i32 2048) ; 3 uses
  %i.b = icmp sgt i32 %2, %1
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2760 ; 3 uses
  %3 = sub i32 %spec.store.select, %1
  %.neg = add i32 %1, 1
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %4 = and i32 %1, 31
  %5 = shl nuw i32 1, %4
  %6 = ashr i32 %1, 5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %7 ; 2 uses
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %5
  store i32 %10, ptr %8, align 4
  %11 = add nsw i32 %1, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.09.unr = phi i32 [ %1, %.lr.ph ], [ %11, %.prol.loopexit.unr-lcssa ]
  %12 = icmp eq i32 %spec.store.select, %.neg
  br i1 %12, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.prol.loopexit, %bb.c
  %.09 = phi i32 [ %i.k, %bb.c ], [ %.09.unr, %.prol.loopexit ] ; 4 uses
  %13 = and i32 %.09, 31
  %14 = shl nuw i32 1, %13
  %15 = ashr i32 %.09, 5
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %16 ; 2 uses
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, ptr %17, align 4
  %20 = add nsw i32 %.09, 1                       ; 2 uses
  %i.d = and i32 %20, 31
  %i.e = shl nuw i32 1, %i.d
  %i.f = ashr i32 %20, 5
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.i, %i.e
  store i32 %i.j, ptr %i.h, align 4
  %i.k = add nsw i32 %.09, 2                      ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.k, %spec.store.select
  br i1 %exitcond.not.1, label %.loopexit, label %bb.c, !llvm.loop !10

.loopexit:                                        ; preds = %.prol.loopexit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vga_dirty_log_start(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @memory_region_set_log(ptr noundef nonnull %i.a, i1 noundef zeroext true, i32 noundef 0) #18
  ret void
}

declare void @memory_region_set_log(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vga_dirty_log_stop(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @memory_region_set_log(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0) #18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vga_common_reset(ptr noundef initializes((592, 593)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 0, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 593
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.b, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 849
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.c, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1105
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(256) %i.e, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1362
  store i8 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.g, i8 noundef 0, i64 noundef 21, i1 noundef false) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i8 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1389
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.j, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1645
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1653
  store i64 0, ptr %i.k, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.l, i8 noundef 0, i64 noundef 3, i1 noundef false) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1660
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %i.n, i8 noundef 0, i64 noundef 768, i1 noundef false) #18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2428
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2586 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.q, i8 noundef 0, i64 noundef 20, i1 noundef false) #18
  store i16 -20283, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i32 0, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.u = load i32, ptr %i.t, align 16
  %i.v = lshr i32 %i.u, 16
  %i.w = add nsw i32 %i.v, -1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i32 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2632
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2648
  store i32 -1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2652
  store i8 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2653
  store i8 0, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, i8 noundef 0, i64 noundef 16, i1 noundef false) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2672
  store i32 0, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2680
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2681
  store i8 0, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2706
  store i8 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2707
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2736
  store i32 0, ptr %i.aj, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ak, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.al, i8 noundef 0, i64 noundef 1024, i1 noundef false) #18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4064
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64000) %i.am, i8 noundef 0, i64 noundef 64000, i1 noundef false) #18
  %i.an = load i32, ptr @vga_retrace_method, align 4
  %cond = icmp eq i32 %i.an, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 68080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ao, i8 noundef 0, i64 noundef 40, i1 noundef false) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call fastcc void @vga_update_memory_access(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 256) i64 @vga_mem_read(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 %2) #5 {
bb.a:
  %i.a = tail call i32 @vga_mem_readb(ptr noundef %0, i64 noundef %1)
  %i.b = zext nneg i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vga_mem_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32
  tail call void @vga_mem_writeb(ptr noundef %0, i64 noundef %1, i32 noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @vga_common_post_load(ptr noundef initializes((2648, 2652)) %0, i32 %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2648
  store i32 -1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 2594
  %.val.i = load i16, ptr %i.b, align 2
  %i.c = trunc i16 %.val.i to i1
  br i1 %i.c, label %bb.b, label %vbe_update_vgaregs.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, -14
  %i.g = or disjoint i8 %i.f, 5
  store i8 %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1412 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = or i8 %i.i, 3
  store i8 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2612
  %i.l = load i32, ptr %i.k, align 4
  %i.m = lshr i32 %i.l, 3
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i8 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2588
  %i.q = load i16, ptr %i.p, align 4
  %i.r = lshr i16 %i.q, 3
  %i.s = trunc i16 %i.r to i8
  %i.t = add i8 %i.s, -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1390
  store i8 %i.t, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2590
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i32
  %i.y = add nsw i32 %i.x, -1                     ; 3 uses
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1407
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, -83
  %i.ae = zext i8 %i.ad to i32
  %i.af = lshr i32 %i.y, 7
  %i.ag = and i32 %i.af, 2
  %i.ah = or disjoint i32 %i.ag, %i.ae
  %i.ai = lshr i32 %i.y, 3
  %i.aj = and i32 %i.ai, 64
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = trunc nuw i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1413
  store i8 -1, ptr %i.am, align 1
  %i.an = or disjoint i8 %i.al, 16
  store i8 %i.an, ptr %i.ab, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1398 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.ar = load i16, ptr %i.aq, align 8
  %i.as = icmp eq i16 %i.ar, 4
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 850 ; 2 uses
  %i.au = load i8, ptr %i.at, align 2
  %i.av = and i8 %i.au, -9
  store i8 %i.av, ptr %i.at, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 853 ; 2 uses
end_hunk_0
