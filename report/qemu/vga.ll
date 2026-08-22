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
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = or i8 %i.ax, 8
  store i8 %i.ay, ptr %i.aw, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 851 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = or i8 %i.ba, 15
  store i8 %i.bb, ptr %i.az, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i8 [ 0, %bb.c ], [ 64, %bb.d ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1111 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = and i8 %i.bd, -97
  %i.bf = or disjoint i8 %i.be, %.0.i
  store i8 %i.bf, ptr %i.bc, align 1
  %i.bg = and i8 %i.ap, 32
  %i.bh = or disjoint i8 %i.bg, 64
  store i8 %i.bh, ptr %i.ao, align 2
  br label %vbe_update_vgaregs.exit

vbe_update_vgaregs.exit:                          ; preds = %bb.a, %bb.e
  tail call fastcc void @vga_update_memory_access(ptr noundef nonnull %0)
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @vga_common_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
vector.ph:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 10 uses
  %i.b = and <4 x i32> %vec.ind, splat (i32 1)
  %i.c = shl <4 x i32> %vec.ind, splat (i32 3)
  %i.d = and <4 x i32> %i.c, splat (i32 16)
  %i.e = or disjoint <4 x i32> %i.d, %i.b
  %i.f = lshr <4 x i32> %vec.ind, splat (i32 2)   ; 2 uses
  %i.g = shl <4 x i32> %i.f, splat (i32 8)
  %i.h = and <4 x i32> %i.g, splat (i32 256)
  %i.i = or disjoint <4 x i32> %i.h, %i.e
  %i.j = shl <4 x i32> %vec.ind, splat (i32 9)
  %i.k = and <4 x i32> %i.j, splat (i32 4096)
  %i.l = or disjoint <4 x i32> %i.k, %i.i
  %i.m = lshr <4 x i32> %vec.ind, splat (i32 4)   ; 2 uses
  %i.n = shl <4 x i32> %i.m, splat (i32 16)
  %i.o = and <4 x i32> %i.n, splat (i32 65536)
  %i.p = or disjoint <4 x i32> %i.o, %i.l
  %i.q = shl <4 x i32> %vec.ind, splat (i32 15)
  %i.r = and <4 x i32> %i.q, splat (i32 1048576)
  %i.s = or disjoint <4 x i32> %i.r, %i.p
  %i.t = lshr <4 x i32> %vec.ind, splat (i32 6)   ; 2 uses
  %i.u = shl <4 x i32> %i.t, splat (i32 24)
  %i.v = and <4 x i32> %i.u, splat (i32 16777216)
  %i.w = or <4 x i32> %i.v, %i.s
  %i.x = shl <4 x i32> %vec.ind, splat (i32 21)
  %i.y = and <4 x i32> %i.x, splat (i32 268435456)
  %i.z = or <4 x i32> %i.y, %i.w
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @expand4, i64 %index
  store <4 x i32> %i.z, ptr %i.aa, align 16
  %i.ab = and <4 x i32> %vec.ind, splat (i32 3)
  %i.ac = shl <4 x i32> %i.f, splat (i32 4)
  %i.ad = and <4 x i32> %i.ac, splat (i32 48)
  %i.ae = or disjoint <4 x i32> %i.ad, %i.ab
  %i.af = shl <4 x i32> %i.m, splat (i32 8)
  %i.ag = and <4 x i32> %i.af, splat (i32 768)
  %i.ah = or disjoint <4 x i32> %i.ag, %i.ae
  %i.ai = shl <4 x i32> %i.t, splat (i32 12)
  %i.aj = and <4 x i32> %i.ai, splat (i32 12288)
  %i.ak = or disjoint <4 x i32> %i.aj, %i.ah
  %i.al = trunc nuw nsw <4 x i32> %i.ak to <4 x i16>
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @expand2, i64 %index
  store <4 x i16> %i.al, ptr %i.am, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.an = icmp eq i64 %index.next, 256
  br i1 %i.an, label %vector.body97, label %vector.body, !llvm.loop !12

vector.body97:                                    ; preds = %vector.body
  store <16 x i8> <i8 0, i8 3, i8 12, i8 15, i8 48, i8 51, i8 60, i8 63, i8 -64, i8 -61, i8 -52, i8 -49, i8 -16, i8 -13, i8 -4, i8 -1>, ptr @expand4to8, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 512)
  %.0.i = select i1 %i.aq, i32 1, i32 %..i
  %i.ar = zext nneg i32 %.0.i to i64
  %i.as = add nsw i64 %i.ar, -1
  %i.at = tail call range(i64 55, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 512) %i.as, i1 false)
  %i.au = add nuw nsw i64 %i.at, 4294967295
  %i.av = and i64 %i.au, 4294967295
  %i.aw = lshr exact i64 -9223372036854775808, %i.av
  %i.ax = trunc nuw nsw i64 %i.aw to i32          ; 2 uses
  store i32 %i.ax, ptr %i.ao, align 4
  %i.ay = shl i32 %i.ax, 20                       ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %vector.body97
end_hunk_0
begin_hunk_1_@vga_precise_retrace:bb.a
  br i1 %.not27, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68104
  %i.y = load i32, ptr %i.x, align 8
  %.not28 = icmp sle i32 %i.p, %i.y
  %i.z = zext i1 %.not28 to i8
  %spec.select = or disjoint i8 %i.c, %i.z
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.aa = xor i8 %i.b, 9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %.022 = phi i8 [ %i.aa, %bb.g ], [ %i.u, %bb.d ], [ %i.c, %bb.e ], [ %spec.select, %bb.f ]
  ret i8 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @vga_precise_update_retrace_info(ptr nofree noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1389
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = add nuw nsw i32 %i.c, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1393
  %i.f = load i8, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1394
  %i.h = load i8, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1395
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32                      ; 4 uses
  %i.o = and i32 %i.n, 1
  %i.p = lshr i32 %i.n, 4
  %i.q = and i32 %i.p, 2
  %i.r = or disjoint i32 %i.q, %i.o
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = add nuw nsw i32 %i.k, 2
  %i.u = add nuw nsw i32 %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1405
  %i.w = load i8, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1406
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr i8, ptr %0, i64 2594
  %.val.i = load i16, ptr %i.z, align 2
  %i.aa = trunc i16 %.val.i to i1
  %i.ab = select i1 %i.aa, i64 850, i64 594
  %.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.in.i = load i8, ptr %.in.in.i, align 1
  %i.ac = lshr i8 %.in.i, 3
  %i.ad = and i8 %i.ac, 1
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1645
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = and i32 %i.ai, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @__const.vga_precise_update_retrace_info.clk_hz, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = shl nuw nsw i32 %i.d, %i.ae             ; 2 uses
  %i.ao = mul nuw nsw i32 %i.an, %i.u
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68088
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68116
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.ap, %i.at
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.av = and i32 %i.ah, 1
  %i.aw = xor i32 %i.av, 9
  %i.ax = sdiv i32 %i.am, %i.aw
  %i.ay = sext i32 %i.ax to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi i64 [ %i.ay, %bb.c ], [ %i.au, %bb.b ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68080
  %storemerge = sdiv i64 1000000000, %.pn
  store i64 %storemerge, ptr %i.az, align 8
  %i.ba = and i8 %i.y, 15
  %i.bb = zext i8 %i.w to i32
  %i.bc = lshr i32 %i.n, 2
  %i.bd = and i32 %i.bc, 1
  %i.be = lshr i32 %i.n, 6
  %i.bf = and i32 %i.be, 2
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = or disjoint i32 %i.bh, %i.bb            ; 2 uses
  %i.bj = zext i8 %i.h to i32                     ; 2 uses
  %i.bk = and i32 %i.bj, 31
  %i.bl = lshr i32 %i.bj, 5
  %i.bm = and i32 %i.bl, 3
  %i.bn = zext i8 %i.f to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 68108
  store i32 %i.bi, ptr %i.bo, align 4
  %narrow = add nuw nsw i8 %i.ba, 1
  %i.bp = zext nneg i8 %narrow to i32
  %i.bq = add nuw nsw i32 %i.bi, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 68112
  store i32 %i.bq, ptr %i.br, align 8
  %i.bs = add nuw nsw i32 %i.bm, %i.bn            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 68100
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = add nuw nsw i32 %i.bk, 1
  %i.bv = add nuw nsw i32 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 68104
  store i32 %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 68096
  store i32 %i.an, ptr %i.bx, align 8
  ret void
}

declare zeroext i1 @target_big_endian() local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @vga_init_io(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @qdev_get_machine() #18
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #18
  %i.c = tail call ptr @object_dynamic_cast(ptr noundef %i.b, ptr noundef nonnull @.str.32) #18
  %.not = icmp eq ptr %i.c, null
  %vbe_portio_list_no_x86.vbe_portio_list_x86 = select i1 %.not, ptr @vbe_portio_list_no_x86, ptr @vbe_portio_list_x86
  store ptr %vbe_portio_list_no_x86.vbe_portio_list_x86, ptr %3, align 8
  store ptr @vga_portio_list, ptr %2, align 8
  %i.d = tail call noalias dereferenceable_or_null(272) ptr @g_malloc(i64 noundef 272) #20 ; 3 uses
  tail call void @memory_region_init_io(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull @vga_mem_ops, ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef 131072) #18
  tail call void @memory_region_set_flush_coalesced(ptr noundef %i.d) #18
  ret ptr %i.d
}

declare ptr @qdev_get_machine() local_unnamed_addr #6

declare ptr @object_dynamic_cast(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #9

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @memory_region_set_flush_coalesced(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vga_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 {
bb.a:
  tail call void @qemu_register_reset(ptr noundef nonnull @vga_reset, ptr noundef %0) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2428
  store i32 0, ptr %i.a, align 4
  store ptr %2, ptr %0, align 16
  %i.b = tail call ptr @qdev_get_machine() #18
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #18
  %i.d = tail call ptr @object_dynamic_cast(ptr noundef %i.c, ptr noundef nonnull @.str.32) #18
  %i.e = tail call noalias dereferenceable_or_null(272) ptr @g_malloc(i64 noundef 272) #20 ; 4 uses
  tail call void @memory_region_init_io(ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull @vga_mem_ops, ptr noundef nonnull %0, ptr noundef nonnull @.str.33, i64 noundef 131072) #18
  tail call void @memory_region_set_flush_coalesced(ptr noundef %i.e) #18
  tail call void @memory_region_add_subregion_overlap(ptr noundef %2, i64 noundef 655360, ptr noundef %i.e, i32 noundef 1) #18
  tail call void @memory_region_set_coalescing(ptr noundef %i.e) #18
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2456 ; 3 uses
  tail call void @portio_list_init(ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef nonnull @vga_portio_list, ptr noundef nonnull %0, ptr noundef nonnull @.str) #18
  tail call void @portio_list_set_flush_coalesced(ptr noundef nonnull %i.f) #18
  tail call void @portio_list_add(ptr noundef nonnull %i.f, ptr noundef %3, i32 noundef 944) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq ptr %i.d, null
  %vbe_portio_list_no_x86.vbe_portio_list_x86.i = select i1 %.not.i, ptr @vbe_portio_list_no_x86, ptr @vbe_portio_list_x86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2520 ; 2 uses
  tail call void @portio_list_init(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef nonnull %vbe_portio_list_no_x86.vbe_portio_list_x86.i, ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #18
  tail call void @portio_list_add(ptr noundef nonnull %i.g, ptr noundef %3, i32 noundef 462) #18
  ret void
}

declare void @qemu_register_reset(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal void @vga_reset(ptr noundef initializes((592, 593)) %0) #1 {
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
  %cond.i = icmp eq i32 %i.an, 1
  br i1 %cond.i, label %bb.b, label %vga_common_reset.exit

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 68080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ao, i8 noundef 0, i64 noundef 40, i1 noundef false) #18
  br label %vga_common_reset.exit

vga_common_reset.exit:                            ; preds = %bb.a, %bb.b
  tail call fastcc void @vga_update_memory_access(ptr noundef nonnull %0)
  ret void
}

declare void @memory_region_add_subregion_overlap(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @memory_region_set_coalescing(ptr noundef) local_unnamed_addr #6

declare void @portio_list_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @portio_list_set_flush_coalesced(ptr noundef) local_unnamed_addr #6

declare void @portio_list_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #6

declare void @memory_region_del_subregion(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @object_unparent(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare void @memory_region_init_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @memory_region_owner(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @vga_endian_state_needed(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2755
  %i.b = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %i.d = load i8, ptr %i.c, align 2, !range !8, !noundef !9
  %i.e = icmp ne i8 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @vga_invalidate_display(ptr nofree noundef writeonly captures(none) initializes((2684, 2692)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2684
  store i32 -1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store i32 -1, ptr %i.b, align 16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @vga_update_display(ptr noundef %0) #1 {
bb.a:
  %1 = alloca %struct.VGADisplayParams, align 4   ; 6 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %2 = alloca %struct.VGADisplayParams, align 4   ; 6 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 14 uses
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = tail call ptr @qemu_console_surface(ptr noundef %i.e) #18 ; 2 uses
  tail call void @qemu_flush_coalesced_mmio_buffer() #18
  %.val2.i = load ptr, ptr %i.f, align 8
  %i.g = tail call i32 @pixman_image_get_format(ptr noundef %.val2.i) #18
  %.val.i = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @pixman_image_get_format(ptr noundef %.val.i) #18 ; 0 uses
  %i.i = icmp ult i32 %i.g, 16777216
  br i1 %i.i, label %vga_draw_blank.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1362
  %i.k = load i8, ptr %i.j, align 2
  %i.l = and i8 %i.k, 32
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.n = load i8, ptr %i.m, align 8
  %i.o = and i8 %i.n, 1
  %i.p = zext nneg i8 %i.o to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ 2, %bb.b ]     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %.not17 = icmp eq i32 %.0, %i.r                 ; 2 uses
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.0, ptr %i.q, align 8
  %i.s = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #18
  %i.t = sdiv i64 %i.s, 1000000
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2712
  store i64 %i.t, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.016 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]      ; 2 uses
  %i.v = load ptr, ptr %i.d, align 16
  %i.w = tail call ptr @qemu_console_surface(ptr noundef %i.v) #18 ; 8 uses
  switch i32 %.0, label %bb.dw [
    i32 0, label %bb.g
    i32 1, label %bb.bh
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.x = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #18
  %i.y = sdiv i64 %i.x, 1000000                   ; 4 uses
  %i.z = getelementptr i8, ptr %0, i64 2594       ; 2 uses
  %.val.i.i = load i16, ptr %i.z, align 2
  %i.aa = trunc i16 %.val.i.i to i1
  %i.ab = select i1 %i.aa, i64 852, i64 596
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.in.i.i = load i8, ptr %.in.in.i.i, align 1
  %i.ac = zext i8 %.in.i.i to i32                 ; 4 uses
  %i.ad = lshr i32 %i.ac, 4
  %i.ae = and i32 %i.ad, 1
  %i.af = shl nuw nsw i32 %i.ac, 1
  %i.ag = and i32 %i.af, 6
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = shl nuw nsw i32 %i.ah, 15
  %i.aj = or disjoint i32 %i.ai, 2                ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %.not.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.aj, ptr %i.ak, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0220.i = phi i32 [ 1, %bb.h ], [ %.016, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store ptr %i.ap, ptr %i.c, align 16
  %i.aq = lshr i32 %i.ac, 5
  %i.ar = and i32 %i.aq, 1
  %i.as = lshr i32 %i.ac, 1
  %i.at = and i32 %i.as, 6
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = shl nuw nsw i32 %i.au, 15
  %i.aw = or disjoint i32 %i.av, 2                ; 3 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2636 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %.not236.i = icmp eq i32 %i.aw, %i.bb
  br i1 %.not236.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.ba, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1221.i = phi i32 [ 1, %bb.j ], [ %.0220.i, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 16
  %i.be = and i32 %i.bd, 4
  %.not237.i = icmp eq i32 %i.be, 0
  br i1 %.not237.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bg = load i8, ptr %i.bf, align 4, !range !8, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 0, ptr %i.bc, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2222.i = phi i32 [ 1, %bb.m ], [ %.1221.i, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull %0, ptr noundef nonnull %2) #18, !inline_history !16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.bl = load i128, ptr %2, align 4
  %i.bm = load i128, ptr %i.bk, align 1
  %i.bn = icmp ne i128 %i.bl, %i.bm
  %i.bo = zext i1 %i.bn to i32
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %update_basic_params.exit.i, label %bb.o

end_hunk_1
begin_hunk_2_@vga_update_display:bb.a
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %i.ado = sext i32 %.2221313331.i to i64
  %i.adp = shl nsw i64 %i.ado, 2
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 2669
  %i.ads = sext i32 %i.ade to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.du, %.lr.ph.i34
  %.0205353.i = phi i32 [ %i.adc, %.lr.ph.i34 ], [ %.3208.i, %bb.du ] ; 5 uses
  %.0212351.i = phi ptr [ %i.add, %.lr.ph.i34 ], [ %i.age, %bb.du ] ; 4 uses
  %.0213350.i = phi i32 [ %i.aaa, %.lr.ph.i34 ], [ %.2215.i, %bb.du ] ; 3 uses
  %.0216349.i = phi i32 [ %.0218.i, %.lr.ph.i34 ], [ %.1217.i, %bb.du ] ; 2 uses
  %.0228348.i = phi i32 [ -1, %.lr.ph.i34 ], [ %.2230.i, %bb.du ] ; 6 uses
  %.0232347.i = phi i32 [ 0, %.lr.ph.i34 ], [ %i.agf, %bb.du ] ; 9 uses
  %.0233346.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.1234.i, %bb.du ] ; 5 uses
  %i.adt = load i8, ptr %i.ub, align 4            ; 2 uses
  %i.adu = zext i8 %i.adt to i32                  ; 2 uses
  %i.adv = and i32 %i.adu, 1
  %.not264.i = icmp eq i32 %i.adv, 0
  br i1 %.not264.i, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.adw = lshr i32 %i.adu, 6
  %i.adx = or i32 %i.adw, 14                      ; 2 uses
  %i.ady = shl nuw nsw i32 1, %i.adx
  %i.adz = xor i32 %i.ady, -1
  %i.aea = and i32 %.0205353.i, %i.adz
  %i.aeb = and i32 %.0233346.i, 1
  %i.aec = shl nuw nsw i32 %i.aeb, %i.adx
  %i.aed = or i32 %i.aea, %i.aec
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.0203.i = phi i32 [ %.0205353.i, %bb.cy ], [ %i.aed, %bb.cz ] ; 2 uses
  %i.aee = and i8 %i.adt, 2
  %.not265.i = icmp eq i8 %i.aee, 0
  %i.aef = and i32 %.0203.i, -32769
  %i.aeg = shl i32 %.0233346.i, 14
  %i.aeh = and i32 %i.aeg, 32768
  %i.aei = or disjoint i32 %i.aef, %i.aeh
  %.1204.i = select i1 %.not265.i, i32 %i.aei, i32 %.0203.i ; 3 uses
  %i.aej = load i32, ptr %i.adk, align 4          ; 2 uses
  %i.aek = and i32 %.1204.i, %i.aej               ; 2 uses
  %i.ael = zext i32 %i.aek to i64                 ; 4 uses
  %i.aem = add i32 %i.adl, %.1204.i
  %i.aen = and i32 %i.aem, %i.aej                 ; 2 uses
  %i.aeo = zext i32 %i.aen to i64                 ; 2 uses
  br i1 %.not261337.i, label %bb.db, label %.thread

bb.db:                                            ; preds = %bb.da
  %i.aep = icmp ult i32 %i.aen, %i.aek
  br i1 %i.aep, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  br i1 %i.aas, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.30, i32 noundef 1715, ptr noundef nonnull @__PRETTY_FUNCTION__.vga_draw_graphic) #19
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.aeq = load i32, ptr %i.aap, align 8
  %i.aer = zext i32 %i.aeq to i64
  %i.aes = sub nsw i64 %i.aer, %i.ael
  %i.aet = call zeroext i1 @memory_region_snapshot_get_dirty(ptr noundef nonnull %i.adm, ptr noundef %.0222.i, i64 noundef %i.ael, i64 noundef %i.aes) #18
  %i.aeu = call zeroext i1 @memory_region_snapshot_get_dirty(ptr noundef nonnull %i.adm, ptr noundef %.0222.i, i64 noundef 0, i64 noundef %i.aeo) #18
  %i.aev = or i1 %i.aet, %i.aeu
  br label %bb.dg

bb.df:                                            ; preds = %bb.db
  %i.aew = sub nsw i64 %i.aeo, %i.ael
  %i.aex = call zeroext i1 @memory_region_snapshot_get_dirty(ptr noundef nonnull %i.adm, ptr noundef %.0222.i, i64 noundef %i.ael, i64 noundef %i.aew) #18
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0231.shrunk.i = phi i1 [ %i.aex, %bb.df ], [ %i.aev, %bb.de ] ; 2 uses
  %i.aey = icmp samesign ugt i32 %.0232347.i, 2047
  br i1 %i.aey, label %vga_scanline_invalidated.exit.i, label %.split.i

.thread:                                          ; preds = %bb.da
  %i.aez = icmp samesign ugt i32 %.0232347.i, 2047
  br i1 %i.aez, label %vga_scanline_invalidated.exit.i.thread, label %.split.i

.split.i:                                         ; preds = %.thread, %bb.dg
  %.0231.shrunk.i52 = phi i1 [ true, %.thread ], [ %.0231.shrunk.i, %bb.dg ]
  %i.afa = lshr i32 %.0232347.i, 5
  %i.afb = zext nneg i32 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %i.afb
  %i.afd = load i32, ptr %i.afc, align 4
  %i.afe = and i32 %.0232347.i, 31
  %i.aff = shl nuw i32 1, %i.afe
  %i.afg = and i32 %i.afd, %i.aff
  %i.afh = icmp ne i32 %i.afg, 0
  %i.afi = or i1 %.0231.shrunk.i52, %i.afh
  br i1 %i.afi, label %vga_scanline_invalidated.exit.i.thread, label %bb.dl

vga_scanline_invalidated.exit.i:                  ; preds = %bb.dg
  br i1 %.0231.shrunk.i, label %vga_scanline_invalidated.exit.i.thread, label %bb.dl

vga_scanline_invalidated.exit.i.thread:           ; preds = %.thread, %vga_scanline_invalidated.exit.i, %.split.i
  %i.afj = icmp slt i32 %.0228348.i, 0
  %spec.select272.i = select i1 %i.afj, i32 %.0232347.i, i32 %.0228348.i ; 3 uses
  %.0235.val275.i = load i8, ptr %i.acx, align 8
  %i.afk = and i8 %.0235.val275.i, 1
  %.not266.i = icmp eq i8 %i.afk, 0
  br i1 %.not266.i, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %vga_scanline_invalidated.exit.i.thread
  %i.afl = load i32, ptr %i.a, align 4
  %i.afm = call ptr %i.acw(ptr noundef nonnull %0, ptr noundef %.0212351.i, i32 noundef %.1204.i, i32 noundef %i.afl, i32 noundef %.0213350.i) #18, !inline_history !23 ; 2 uses
  %.not267.i = icmp eq ptr %i.afm, null
  br i1 %.not267.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0212351.i, ptr noundef nonnull align 1 %i.afm, i64 noundef range(i64 -8589934592, 8589934589) %i.adp, i1 noundef false) #18
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.afn = load ptr, ptr %i.adq, align 8          ; 2 uses
  %.not268.i = icmp eq ptr %i.afn, null
  br i1 %.not268.i, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void %i.afn(ptr noundef nonnull %0, ptr noundef %.0212351.i, i32 noundef %.0232347.i) #18, !inline_history !23
  br label %bb.dn

bb.dl:                                            ; preds = %vga_scanline_invalidated.exit.i, %.split.i
  %i.afo = icmp sgt i32 %.0228348.i, -1
  br i1 %i.afo, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.afp = load ptr, ptr %i.d, align 16
  %i.afq = sub nsw i32 %.0232347.i, %.0228348.i
  call void @qemu_console_update(ptr noundef %i.afp, i32 noundef 0, i32 noundef %.0228348.i, i32 noundef %.2221313331.i, i32 noundef %i.afq) #18
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj, %vga_scanline_invalidated.exit.i.thread
  %.2230.i = phi i32 [ %.0228348.i, %bb.dl ], [ %spec.select272.i, %vga_scanline_invalidated.exit.i.thread ], [ -1, %bb.dm ], [ %spec.select272.i, %bb.dk ], [ %spec.select272.i, %bb.dj ] ; 4 uses
  %.not269.i = icmp eq i32 %.0216349.i, 0
  br i1 %.not269.i, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.afr = load i8, ptr %i.ub, align 4
  %i.afs = or i8 %i.afr, -4
  %i.aft = sext i8 %i.afs to i32
  %i.afu = or i32 %.0233346.i, %i.aft
  %i.afv = icmp eq i32 %i.afu, -1
  br i1 %i.afv, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.afw = load i32, ptr %i.ti, align 16
  %i.afx = add i32 %i.afw, %.0205353.i
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.1206.i = phi i32 [ %i.afx, %bb.dp ], [ %.0205353.i, %bb.do ]
  %i.afy = add i32 %.0233346.i, 1
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dn
  %i.afz = add nsw i32 %.0216349.i, -1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.1234.i = phi i32 [ %.0233346.i, %bb.dr ], [ %i.afy, %bb.dq ]
  %.1217.i = phi i32 [ %i.afz, %bb.dr ], [ %.0218.i, %bb.dq ]
  %.2207.i = phi i32 [ %.0205353.i, %bb.dr ], [ %.1206.i, %bb.dq ]
  %i.aga = load i32, ptr %i.aat, align 8
  %i.agb = icmp eq i32 %.0232347.i, %i.aga
  br i1 %i.agb, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.agc = load i8, ptr %i.adr, align 1, !range !8, !noundef !9
  %i.agd = trunc nuw i8 %i.agc to i1
  %spec.select273.i = select i1 %i.agd, i32 8, i32 %.0213350.i
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.2215.i = phi i32 [ %spec.select273.i, %bb.dt ], [ %.0213350.i, %bb.ds ]
  %.3208.i = phi i32 [ 0, %bb.dt ], [ %.2207.i, %bb.ds ]
  %i.age = getelementptr inbounds i8, ptr %.0212351.i, i64 %i.ads
  %i.agf = add nuw nsw i32 %.0232347.i, 1         ; 3 uses
  %i.agg = load i32, ptr %i.b, align 4
  %i.agh = icmp slt i32 %i.agf, %i.agg
  br i1 %i.agh, label %bb.cy, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %bb.du
  %i.agi = icmp sgt i32 %.2230.i, -1
  br i1 %i.agi, label %bb.dv, label %vga_draw_graphic.exit

bb.dv:                                            ; preds = %._crit_edge.i
  %i.agj = load ptr, ptr %i.d, align 16
  %i.agk = sub nsw i32 %i.agf, %.2230.i
  call void @qemu_console_update(ptr noundef %i.agj, i32 noundef 0, i32 noundef %.2230.i, i32 noundef %.2221313331.i, i32 noundef %i.agk) #18
  br label %vga_draw_graphic.exit

vga_draw_graphic.exit:                            ; preds = %bb.cx, %._crit_edge.i, %bb.dv
  call void @g_free(ptr noundef %.0222.i) #18
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 2760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.agl, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %vga_draw_blank.exit

bb.dw:                                            ; preds = %bb.f
  br i1 %.not17, label %vga_draw_blank.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 2692 ; 2 uses
  %i.agn = load i32, ptr %i.agm, align 4          ; 3 uses
  %i.ago = icmp eq i32 %i.agn, 0
  br i1 %i.ago, label %vga_draw_blank.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.agp = getelementptr inbounds nuw i8, ptr %0, i64 2696 ; 3 uses
  %i.agq = load i32, ptr %i.agp, align 8          ; 2 uses
  %i.agr = icmp eq i32 %i.agq, 0
  br i1 %i.agr, label %vga_draw_blank.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ags = getelementptr i8, ptr %i.w, i64 8
  %.val.i45 = load i8, ptr %i.ags, align 8
  %i.agt = and i8 %.val.i45, 1
  %.not21.i = icmp eq i8 %i.agt, 0
  br i1 %.not21.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.agu = tail call ptr @qemu_create_displaysurface(i32 noundef %i.agn, i32 noundef %i.agq) #18 ; 2 uses
  %i.agv = load ptr, ptr %i.d, align 16
  tail call void @qemu_console_set_surface(ptr noundef %i.agv, ptr noundef %i.agu) #18
  %.pre.i50 = load i32, ptr %i.agm, align 4
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.agw = phi i32 [ %i.agn, %bb.dz ], [ %.pre.i50, %bb.ea ]
  %.020.i = phi ptr [ %i.w, %bb.dz ], [ %i.agu, %bb.ea ] ; 4 uses
  %.val2.i.i46 = load ptr, ptr %.020.i, align 8
  %i.agx = tail call i32 @pixman_image_get_format(ptr noundef %.val2.i.i46) #18
  %.val.i.i47 = load ptr, ptr %.020.i, align 8
  %i.agy = tail call i32 @pixman_image_get_format(ptr noundef %.val.i.i47) #18
  %.020.val.i = load ptr, ptr %.020.i, align 8
  %i.agz = tail call ptr @pixman_image_get_data(ptr noundef %.020.val.i) #18
  %i.aha = load i32, ptr %i.agp, align 8
  %.not25.i = icmp eq i32 %i.aha, 0
  br i1 %.not25.i, label %._crit_edge.i49, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.eb
  %i.ahb = lshr i32 %i.agx, 24
  %i.ahc = lshr i32 %i.agy, 22
  %i.ahd = and i32 %i.ahc, 3
  %i.ahe = shl nuw nsw i32 %i.ahb, %i.ahd
  %i.ahf = add nuw nsw i32 %i.ahe, 7
  %i.ahg = lshr i32 %i.ahf, 3
  %i.ahh = mul i32 %i.ahg, %i.agw
  %i.ahi = sext i32 %i.ahh to i64
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.lr.ph.i48
  %.024.i = phi ptr [ %i.agz, %.lr.ph.i48 ], [ %i.ahl, %bb.ec ] ; 2 uses
  %.01923.i = phi i32 [ 0, %.lr.ph.i48 ], [ %i.ahm, %bb.ec ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.024.i, i8 noundef 0, i64 noundef range(i64 -2147483648, 4294967296) %i.ahi, i1 noundef false) #18
  %.020.val22.i = load ptr, ptr %.020.i, align 8
  %i.ahj = tail call i32 @pixman_image_get_stride(ptr noundef %.020.val22.i) #18
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds i8, ptr %.024.i, i64 %i.ahk
  %i.ahm = add nuw i32 %.01923.i, 1               ; 2 uses
  %i.ahn = load i32, ptr %i.agp, align 8
  %i.aho = icmp ult i32 %i.ahm, %i.ahn
  br i1 %i.aho, label %bb.ec, label %._crit_edge.i49, !llvm.loop !26

._crit_edge.i49:                                  ; preds = %bb.ec, %bb.eb
  %i.ahp = load ptr, ptr %i.d, align 16
  tail call void @qemu_console_update_full(ptr noundef %i.ahp) #18
  br label %vga_draw_blank.exit

vga_draw_blank.exit:                              ; preds = %._crit_edge.i49, %bb.dy, %bb.dx, %bb.dw, %vga_draw_text.exit, %vga_draw_graphic.exit, %bb.a
  ret i1 true
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vga_update_text(ptr noundef %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %struct.VGADisplayParams, align 4   ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca [80 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  tail call void @qemu_flush_coalesced_mmio_buffer() #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1362
  %i.f = load i8, ptr %i.e, align 2
  %i.g = and i8 %i.f, 32
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 1
  %i.k = zext nneg i8 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0166 = phi i32 [ %i.k, %bb.b ], [ 2, %bb.a ]  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %.not171 = icmp eq i32 %.0166, %i.m
  br i1 %.not171, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.0166, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2684 ; 9 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.n, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ 1, %bb.f ], [ %.0, %bb.e ]      ; 3 uses
  store i32 0, ptr %i.b, align 4, !annotation !15
  store i32 0, ptr %i.c, align 4, !annotation !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, i8 0, i64 80, i1 false), !annotation !15
  switch i32 %.0166, label %bb.ai [
    i32 0, label %bb.h
    i32 1, label %bb.ag
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull %0, ptr noundef nonnull %2) #18, !inline_history !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 2 uses
  %i.t = load i128, ptr %2, align 4
  %i.u = load i128, ptr %i.s, align 1
  %i.v = icmp ne i128 %i.t, %i.u
  %i.w = zext i1 %i.v to i32
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %update_basic_params.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  br label %update_basic_params.exit

update_basic_params.exit:                         ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 1, %bb.i ], [ %.1, %bb.h ]    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1398
  %i.y = load i8, ptr %i.x, align 2
  %i.z = and i8 %i.y, 31
  %narrow = add nuw nsw i8 %i.z, 1                ; 4 uses
  %i.aa = zext nneg i8 %narrow to i32
  %i.ab = getelementptr i8, ptr %0, i64 2594
  %.val.i = load i16, ptr %i.ab, align 2
  %i.ac = trunc i16 %.val.i to i1
  %i.ad = select i1 %i.ac, i64 850, i64 594
  %.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %.in.i = load i8, ptr %.in.in.i, align 1        ; 2 uses
  %i.ae = and i8 %.in.i, 1
  %.not173 = icmp eq i8 %i.ae, 0
  %spec.select = select i1 %.not173, i32 9, i32 8
  %i.af = and i8 %.in.i, 8
  %.not174 = icmp eq i8 %i.af, 0
  %.1160 = select i1 %.not174, i32 %spec.select, i32 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1390
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nuw nsw i32 %i.ai, 1                ; 10 uses
  store i32 %i.aj, ptr %i.b, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1395
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 100
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %update_basic_params.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1407
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = zext i8 %i.ar to i16                    ; 2 uses
  %i.at = shl nuw nsw i16 %i.as, 7
  %i.au = and i16 %i.at, 256
  %i.av = or disjoint i16 %i.au, %i.ap
  %i.aw = shl nuw nsw i16 %i.as, 3
  %i.ax = and i16 %i.aw, 512
  %i.ay = or disjoint i16 %i.ax, 1
  %.lhs.trunc = add nuw nsw i16 %i.ay, %i.av
  %.rhs.trunc = zext nneg i8 %narrow to i16
  %i.az = udiv i16 %.lhs.trunc, %.rhs.trunc
end_hunk_2
