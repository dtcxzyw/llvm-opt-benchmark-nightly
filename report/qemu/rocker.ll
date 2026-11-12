Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/rocker?download=true
inline.NumInlined: 210
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tx_consume:bb.a
  %i.dj = load ptr, ptr %i.di, align 16
  call void @g_free(ptr noundef %i.dj) #10
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dl = load ptr, ptr %i.dk, align 16
  call void @g_free(ptr noundef %i.dl) #10
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dn = load ptr, ptr %i.dm, align 16
  call void @g_free(ptr noundef %i.dn) #10
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dp = load ptr, ptr %i.do, align 16
  call void @g_free(ptr noundef %i.dp) #10
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.dr = load ptr, ptr %i.dq, align 16
  call void @g_free(ptr noundef %i.dr) #10
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dt = load ptr, ptr %i.ds, align 16
  call void @g_free(ptr noundef %i.dt) #10
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.dv = load ptr, ptr %i.du, align 16
  call void @g_free(ptr noundef %i.dv) #10
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.dx = load ptr, ptr %i.dw, align 16
  call void @g_free(ptr noundef %i.dx) #10
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.dz = load ptr, ptr %i.dy, align 16
  call void @g_free(ptr noundef %i.dz) #10
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.eb = load ptr, ptr %i.ea, align 16
  call void @g_free(ptr noundef %i.eb) #10
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.ed = load ptr, ptr %i.ec, align 16
  call void @g_free(ptr noundef %i.ed) #10
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ef = load ptr, ptr %i.ee, align 16
  call void @g_free(ptr noundef %i.ef) #10
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.eh = load ptr, ptr %i.eg, align 16
  call void @g_free(ptr noundef %i.eh) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.thread69, %bb.j, %bb.i, %bb.f, %rocker_tlv_parse.exit, %bb.a
  %.044 = phi i32 [ -22, %bb.j ], [ -6, %bb.a ], [ -22, %bb.f ], [ -22, %bb.i ], [ -22, %rocker_tlv_parse.exit ], [ %.2, %.thread69 ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.044
}

declare ptr @fp_port_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @fp_port_set_world(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @object_unparent(ptr noundef) local_unnamed_addr #5

declare void @world_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rocker_mmio_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #4 {
bb.a:
  switch i32 %2, label %rocker_io_readq.exit [
    i32 4, label %bb.b
    i32 8, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 3328       ; 5 uses
  %.val.i = load i32, ptr %i.a, align 16          ; 6 uses
  %i.b = shl i32 %.val.i, 6
  %i.c = add i32 %i.b, 64
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i64 %i.d, 4096
  %i.f = icmp ugt i64 %1, 4095
  %i.g = icmp ult i64 %1, %i.e
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %1 to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 5
  %i.k = and i32 %i.j, 127                        ; 6 uses
  %i.l = and i32 %i.i, 31
  switch i32 %i.l, label %rocker_io_readl.exit [
    i32 0, label %bb.d
    i32 4, label %bb.e
    i32 8, label %bb.f
    i32 12, label %bb.g
    i32 16, label %bb.h
    i32 24, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext nneg i32 %i.k to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 @desc_ring_get_base_addr(ptr noundef %i.q) #10
  %i.s = trunc i64 %i.r to i32
  br label %rocker_io_readl.exit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = zext nneg i32 %i.k to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i64 @desc_ring_get_base_addr(ptr noundef %i.x) #10
  %i.z = lshr i64 %i.y, 32
  %i.aa = trunc nuw i64 %i.z to i32
  br label %rocker_io_readl.exit

bb.f:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = zext nneg i32 %i.k to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 @desc_ring_get_size(ptr noundef %i.af) #10
  br label %rocker_io_readl.exit

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = zext nneg i32 %i.k to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 @desc_ring_get_head(ptr noundef %i.al) #10
  br label %rocker_io_readl.exit

bb.h:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = zext nneg i32 %i.k to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call i32 @desc_ring_get_tail(ptr noundef %i.ar) #10
  br label %rocker_io_readl.exit

bb.i:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = zext nneg i32 %i.k to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call i32 @desc_ring_get_credits(ptr noundef %i.ax) #10
  br label %rocker_io_readl.exit

bb.j:                                             ; preds = %bb.b
  switch i64 %1, label %bb.ab [
    i64 0, label %rocker_io_readl.exit
    i64 4, label %rocker_io_readl.exit
    i64 8, label %rocker_io_readl.exit
    i64 12, label %rocker_io_readl.exit
    i64 16, label %bb.k
    i64 24, label %bb.l
    i64 28, label %bb.m
    i64 48, label %bb.n
    i64 40, label %bb.o
    i64 44, label %bb.p
    i64 772, label %bb.q
    i64 784, label %bb.r
    i64 788, label %bb.t
    i64 792, label %bb.v
    i64 796, label %bb.x
    i64 800, label %bb.z
    i64 804, label %bb.aa
  ]

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3856
  %i.ba = load i32, ptr %i.az, align 16
  %i.bb = shl i32 %i.ba, 1
  br label %rocker_io_readl.exit

bb.l:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.bd = load i64, ptr %i.bc, align 8
  %.tr.i = trunc i64 %i.bd to i32
  %i.be = shl i32 %.tr.i, 1
  br label %rocker_io_readl.exit

bb.m:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i64 %i.bg, 31
  %i.bi = trunc i64 %i.bh to i32
  br label %rocker_io_readl.exit

bb.n:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.bk = load i32, ptr %i.bj, align 8
  br label %rocker_io_readl.exit

bb.o:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.bm = load i64, ptr %i.bl, align 16
  %i.bn = trunc i64 %i.bm to i32
  br label %rocker_io_readl.exit

bb.p:                                             ; preds = %bb.j
  %i.bo = getelementptr i8, ptr %0, i64 3876
  %3 = load i32, ptr %i.bo, align 4
  br label %rocker_io_readl.exit

bb.q:                                             ; preds = %bb.j
  br label %rocker_io_readl.exit

bb.r:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i.i, label %rocker_io_readl.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3360
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.010.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.s ]
  %.089.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bu, %bb.s ] ; 2 uses
  %i.bq = sext i32 %.089.i.i to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call zeroext i1 @fp_port_get_link_up(ptr noundef %i.bs) #10
  %i.bu = add nuw i32 %.089.i.i, 1                ; 3 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = select i1 %i.bt, i64 %i.bw, i64 0
  %.1.i.i = or i64 %i.bx, %.010.i.i               ; 2 uses
  %i.by = load i32, ptr %i.a, align 16
  %i.bz = icmp ult i32 %i.bu, %i.by
  br i1 %i.bz, label %bb.s, label %rocker_port_phys_link_status.exit.loopexit.i, !llvm.loop !23

rocker_port_phys_link_status.exit.loopexit.i:     ; preds = %bb.s
  %i.ca = trunc i64 %.1.i.i to i32
  br label %rocker_io_readl.exit

bb.t:                                             ; preds = %bb.j
  %.not.i39.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i39.i, label %rocker_io_readl.exit, label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3360
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i40.i
  %.010.i41.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %.1.i43.i, %bb.u ]
  %.089.i42.i = phi i32 [ 0, %.lr.ph.i40.i ], [ %i.cg, %bb.u ] ; 2 uses
  %i.cc = sext i32 %.089.i42.i to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call zeroext i1 @fp_port_get_link_up(ptr noundef %i.ce) #10
  %i.cg = add nuw i32 %.089.i42.i, 1              ; 3 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = select i1 %i.cf, i64 %i.ci, i64 0
  %.1.i43.i = or i64 %i.cj, %.010.i41.i           ; 2 uses
  %i.ck = load i32, ptr %i.a, align 16
  %i.cl = icmp ult i32 %i.cg, %i.ck
  br i1 %i.cl, label %bb.u, label %rocker_port_phys_link_status.exit45.loopexit.i, !llvm.loop !23

rocker_port_phys_link_status.exit45.loopexit.i:   ; preds = %bb.u
  %i.cm = lshr i64 %.1.i43.i, 32
  %i.cn = trunc nuw i64 %i.cm to i32
  br label %rocker_io_readl.exit

bb.v:                                             ; preds = %bb.j
  %.not.i46.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i46.i, label %rocker_io_readl.exit, label %.lr.ph.i47.i

.lr.ph.i47.i:                                     ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3360
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i47.i
  %.010.i48.i = phi i64 [ 0, %.lr.ph.i47.i ], [ %.1.i50.i, %bb.w ]
  %.089.i49.i = phi i32 [ 0, %.lr.ph.i47.i ], [ %i.ct, %bb.w ] ; 2 uses
  %i.cp = sext i32 %.089.i49.i to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call zeroext i1 @fp_port_enabled(ptr noundef %i.cr) #10
  %i.ct = add nuw i32 %.089.i49.i, 1              ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = select i1 %i.cs, i64 %i.cv, i64 0
  %.1.i50.i = or i64 %i.cw, %.010.i48.i           ; 2 uses
  %i.cx = load i32, ptr %i.a, align 16
  %i.cy = icmp ult i32 %i.ct, %i.cx
  br i1 %i.cy, label %bb.w, label %rocker_port_phys_enable_read.exit.loopexit.i, !llvm.loop !24

rocker_port_phys_enable_read.exit.loopexit.i:     ; preds = %bb.w
  %i.cz = trunc i64 %.1.i50.i to i32
  br label %rocker_io_readl.exit

bb.x:                                             ; preds = %bb.j
  %.not.i52.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i52.i, label %rocker_io_readl.exit, label %.lr.ph.i53.i

.lr.ph.i53.i:                                     ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3360
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i53.i
  %.010.i54.i = phi i64 [ 0, %.lr.ph.i53.i ], [ %.1.i56.i, %bb.y ]
  %.089.i55.i = phi i32 [ 0, %.lr.ph.i53.i ], [ %i.df, %bb.y ] ; 2 uses
  %i.db = sext i32 %.089.i55.i to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call zeroext i1 @fp_port_enabled(ptr noundef %i.dd) #10
  %i.df = add nuw i32 %.089.i55.i, 1              ; 3 uses
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = select i1 %i.de, i64 %i.dh, i64 0
  %.1.i56.i = or i64 %i.di, %.010.i54.i           ; 2 uses
  %i.dj = load i32, ptr %i.a, align 16
  %i.dk = icmp ult i32 %i.df, %i.dj
  br i1 %i.dk, label %bb.y, label %rocker_port_phys_enable_read.exit58.loopexit.i, !llvm.loop !24

rocker_port_phys_enable_read.exit58.loopexit.i:   ; preds = %bb.y
  %i.dl = lshr i64 %.1.i56.i, 32
  %i.dm = trunc nuw i64 %i.dl to i32
  br label %rocker_io_readl.exit

bb.z:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = trunc i64 %i.do to i32
  br label %rocker_io_readl.exit

bb.aa:                                            ; preds = %bb.j
  %i.dq = getelementptr i8, ptr %0, i64 3356
  %4 = load i32, ptr %i.dq, align 4
  br label %rocker_io_readl.exit

bb.ab:                                            ; preds = %bb.j
  br label %rocker_io_readl.exit

rocker_io_readl.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.j, %bb.j, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %rocker_port_phys_link_status.exit.loopexit.i, %bb.t, %rocker_port_phys_link_status.exit45.loopexit.i, %bb.v, %rocker_port_phys_enable_read.exit.loopexit.i, %bb.x, %rocker_port_phys_enable_read.exit58.loopexit.i, %bb.z, %bb.aa, %bb.ab
  %.038.i = phi i32 [ %i.ay, %bb.i ], [ -559039810, %bb.j ], [ %i.s, %bb.d ], [ %i.aa, %bb.e ], [ %i.ag, %bb.f ], [ %i.am, %bb.g ], [ %i.as, %bb.h ], [ 0, %bb.ab ], [ %4, %bb.aa ], [ %i.bb, %bb.k ], [ %i.be, %bb.l ], [ %i.bi, %bb.m ], [ %i.bk, %bb.n ], [ %i.bn, %bb.o ], [ %3, %bb.p ], [ %.val.i, %bb.q ], [ 0, %bb.c ], [ %i.ca, %rocker_port_phys_link_status.exit.loopexit.i ], [ %i.cn, %rocker_port_phys_link_status.exit45.loopexit.i ], [ %i.cz, %rocker_port_phys_enable_read.exit.loopexit.i ], [ %i.dp, %bb.z ], [ -559039810, %bb.j ], [ -559039810, %bb.j ], [ -559039810, %bb.j ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.x ], [ %i.dm, %rocker_port_phys_enable_read.exit58.loopexit.i ]
  %i.dr = zext i32 %.038.i to i64
  br label %rocker_io_readq.exit

bb.ac:                                            ; preds = %bb.a
  %i.ds = getelementptr i8, ptr %0, i64 3328      ; 3 uses
  %.val.i9 = load i32, ptr %i.ds, align 16        ; 3 uses
  %i.dt = shl i32 %.val.i9, 6
  %i.du = add i32 %i.dt, 64
  %i.dv = sext i32 %i.du to i64
  %i.dw = add nsw i64 %i.dv, 4096
  %i.dx = icmp ugt i64 %1, 4095
  %i.dy = icmp ult i64 %1, %i.dw
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ea = and i64 %1, 31
  %cond.i = icmp eq i64 %i.ea, 0
  br i1 %cond.i, label %bb.ae, label %rocker_io_readq.exit

bb.ae:                                            ; preds = %bb.ad
  %i.eb = lshr exact i64 %1, 5
  %i.ec = and i64 %i.eb, 127
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = tail call i64 @desc_ring_get_base_addr(ptr noundef %i.eg) #10
  br label %rocker_io_readq.exit

bb.af:                                            ; preds = %bb.ac
  switch i64 %1, label %bb.an [
    i64 0, label %rocker_io_readq.exit
    i64 8, label %rocker_io_readq.exit
    i64 24, label %bb.ag
    i64 40, label %bb.ah
    i64 784, label %bb.ai
    i64 792, label %bb.ak
    i64 800, label %bb.am
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = shl i64 %i.ej, 1
  br label %rocker_io_readq.exit

bb.ah:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.em = load i64, ptr %i.el, align 16
  br label %rocker_io_readq.exit

bb.ai:                                            ; preds = %bb.af
  %.not.i.i10 = icmp eq i32 %.val.i9, 0
  br i1 %.not.i.i10, label %rocker_io_readq.exit, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3360
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i.i11
  %.010.i.i12 = phi i64 [ 0, %.lr.ph.i.i11 ], [ %.1.i.i14, %bb.aj ]
  %.089.i.i13 = phi i32 [ 0, %.lr.ph.i.i11 ], [ %i.es, %bb.aj ] ; 2 uses
  %i.eo = sext i32 %.089.i.i13 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = tail call zeroext i1 @fp_port_get_link_up(ptr noundef %i.eq) #10
  %i.es = add nuw i32 %.089.i.i13, 1              ; 3 uses
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = select i1 %i.er, i64 %i.eu, i64 0
  %.1.i.i14 = or i64 %i.ev, %.010.i.i12           ; 2 uses
  %i.ew = load i32, ptr %i.ds, align 16
  %i.ex = icmp ult i32 %i.es, %i.ew
  br i1 %i.ex, label %bb.aj, label %rocker_io_readq.exit, !llvm.loop !23

bb.ak:                                            ; preds = %bb.af
  %.not.i21.i = icmp eq i32 %.val.i9, 0
  br i1 %.not.i21.i, label %rocker_io_readq.exit, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 3360
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i22.i
  %.010.i23.i = phi i64 [ 0, %.lr.ph.i22.i ], [ %.1.i25.i, %bb.al ]
  %.089.i24.i = phi i32 [ 0, %.lr.ph.i22.i ], [ %i.fd, %bb.al ] ; 2 uses
  %i.ez = sext i32 %.089.i24.i to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = tail call zeroext i1 @fp_port_enabled(ptr noundef %i.fb) #10
  %i.fd = add nuw i32 %.089.i24.i, 1              ; 3 uses
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = select i1 %i.fc, i64 %i.ff, i64 0
  %.1.i25.i = or i64 %i.fg, %.010.i23.i           ; 2 uses
  %i.fh = load i32, ptr %i.ds, align 16
  %i.fi = icmp ult i32 %i.fd, %i.fh
  br i1 %i.fi, label %bb.al, label %rocker_io_readq.exit, !llvm.loop !24

bb.am:                                            ; preds = %bb.af
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.fk = load i64, ptr %i.fj, align 8
  br label %rocker_io_readq.exit

bb.an:                                            ; preds = %bb.af
  br label %rocker_io_readq.exit

rocker_io_readq.exit:                             ; preds = %bb.al, %bb.aj, %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.af, %bb.ae, %bb.ad, %bb.a, %rocker_io_readl.exit
  %.0 = phi i64 [ -1, %bb.a ], [ %i.dr, %rocker_io_readl.exit ], [ -2401057697376126274, %bb.af ], [ %i.eh, %bb.ae ], [ 0, %bb.an ], [ %i.fk, %bb.am ], [ %i.ek, %bb.ag ], [ %i.em, %bb.ah ], [ 0, %bb.ad ], [ %.1.i.i14, %bb.aj ], [ -2401057697376126274, %bb.af ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ %.1.i25.i, %bb.al ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @rocker_mmio_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #4 {
bb.a:
  switch i32 %3, label %rocker_io_writel.exit [
    i32 4, label %bb.b
    i32 8, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %2 to i32                      ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 3328       ; 6 uses
  %.val.i = load i32, ptr %i.b, align 16          ; 2 uses
  %i.c = shl i32 %.val.i, 6
  %i.d = add i32 %i.c, 64
  %i.e = sext i32 %i.d to i64
  %i.f = add nsw i64 %i.e, 4096
  %i.g = icmp ugt i64 %1, 4095
  %i.h = icmp ult i64 %1, %i.f
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %1 to i32                      ; 2 uses
  %i.k = lshr i32 %i.j, 5
  %i.l = and i32 %i.k, 127                        ; 5 uses
  %i.m = and i32 %i.j, 31
  switch i32 %i.m, label %rocker_io_writel.exit [
    i32 0, label %bb.d
    i32 4, label %bb.e
    i32 8, label %bb.f
    i32 12, label %bb.g
    i32 20, label %bb.j
    i32 24, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %2, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3888
  store i64 %i.n, ptr %i.o, align 16
  br label %rocker_io_writel.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = zext nneg i32 %i.l to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = shl i64 %2, 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 2 uses
  %i.w = load i64, ptr %i.v, align 16
  %i.x = or i64 %i.w, %i.u
  %i.y = tail call zeroext i1 @desc_ring_set_base_addr(ptr noundef %i.t, i64 noundef %i.x) #10 ; 0 uses
  store i64 0, ptr %i.v, align 16
  br label %rocker_io_writel.exit

bb.f:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = zext nneg i32 %i.l to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call zeroext i1 @desc_ring_set_size(ptr noundef %i.ad, i32 noundef %i.a) #10 ; 0 uses
  br label %rocker_io_writel.exit

bb.g:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3896 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = zext nneg i32 %i.l to i64               ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call zeroext i1 @desc_ring_set_head(ptr noundef %i.aj, i32 noundef %i.a) #10
  br i1 %i.ak, label %bb.h, label %rocker_io_writel.exit

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ah
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i32 @desc_ring_get_msix_vector(ptr noundef %i.an) #10 ; 2 uses
  %i.ap = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #10
  %i.aq = load i32, ptr %i.b, align 16
  %i.ar = shl i32 %i.aq, 1
  %i.as = add i32 %i.ar, 4
  %.not.i.i = icmp ult i32 %i.ao, %i.as
  br i1 %.not.i.i, label %bb.i, label %rocker_io_writel.exit

bb.i:                                             ; preds = %bb.h
  tail call void @msix_notify(ptr noundef %i.ap, i32 noundef %i.ao) #10
end_hunk_0
