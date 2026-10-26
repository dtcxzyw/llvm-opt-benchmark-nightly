Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vhdx?download=true
inline.NumInlined: 64
inline.NumDeleted: 24
begin_hunk_0_@vhdx_co_readv:bb.a
  %i.n = and i32 %i.m, 2
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %vhdx_block_translate.exit, label %._crit_edge

vhdx_block_translate.exit:                        ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 8              ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = ashr i64 %.02031, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = shl i32 %i.r, %i.o
  %i.t = trunc i64 %.02031 to i32
  %i.u = sub i32 %i.t, %i.s                       ; 2 uses
  %i.v = load i32, ptr %i.h, align 8
  %i.w = lshr i32 %i.r, %i.v
  %i.x = add i32 %i.w, %i.r
  %i.y = load i32, ptr %i.i, align 4
  %i.z = sub i32 %i.y, %i.u
  %i.aa = load i32, ptr %i.j, align 4             ; 2 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.z, i32 %.02130) ; 4 uses
  %i.ab = shl i32 %spec.select, %i.aa
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = zext i32 %i.x to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8
  call void @qemu_iovec_reset(ptr noundef nonnull %4) #16
  %i.ag = zext i32 %i.ab to i64                   ; 3 uses
  call void @qemu_iovec_concat(ptr noundef nonnull %4, ptr noundef %3, i64 noundef %.032, i64 noundef %i.ag) #16
  %i.ah = load ptr, ptr %i.k, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 7
  switch i64 %i.ak, label %default.unreachable42 [
    i64 0, label %bb.c
    i64 1, label %bb.c
    i64 3, label %bb.c
    i64 5, label %bb.c
    i64 2, label %bb.c
    i64 6, label %bb.d
    i64 7, label %._crit_edge
    i64 4, label %._crit_edge
  ]

bb.c:                                             ; preds = %vhdx_block_translate.exit, %vhdx_block_translate.exit, %vhdx_block_translate.exit, %vhdx_block_translate.exit, %vhdx_block_translate.exit
  %i.al = call i64 @qemu_iovec_memset(ptr noundef nonnull %4, i64 noundef 0, i32 noundef 0, i64 noundef %i.ag) #16 ; 0 uses
  %.pre = zext nneg i32 %spec.select to i64
  br label %bb.e

bb.d:                                             ; preds = %vhdx_block_translate.exit
  %i.am = and i64 %i.af, -1048576                 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = shl i32 %i.u, %i.aa
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add i64 %i.am, %i.ap
  %.sroa.15.0 = select i1 %i.an, i64 0, i64 %i.aq
  call void @qemu_co_mutex_unlock(ptr noundef nonnull %i.b) #16
  %i.ar = load ptr, ptr %i.l, align 8
  %i.as = zext nneg i32 %spec.select to i64       ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 9
  %i.au = call i32 @bdrv_co_preadv(ptr noundef %i.ar, i64 noundef %.sroa.15.0, i64 noundef %i.at, ptr noundef nonnull %4, i32 noundef 0) #16 ; 2 uses
  call void @qemu_co_mutex_lock(ptr noundef nonnull %i.b) #16
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %._crit_edge, label %bb.e

default.unreachable42:                            ; preds = %vhdx_block_translate.exit
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i64 [ %i.as, %bb.d ], [ %.pre, %bb.c ]
  %i.aw = sub nsw i32 %.02130, %spec.select       ; 2 uses
  %i.ax = add i64 %.02031, %.pre-phi
  %i.ay = add i64 %.032, %i.ag
  %i.az = icmp sgt i32 %i.aw, 0
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.d, %bb.b, %vhdx_block_translate.exit, %vhdx_block_translate.exit, %bb.e, %bb.a
  %.019 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ -95, %bb.b ], [ -5, %vhdx_block_translate.exit ], [ -5, %vhdx_block_translate.exit ], [ %i.au, %bb.d ]
  call void @qemu_co_mutex_unlock(ptr noundef %i.b) #16
  call void @qemu_iovec_destroy(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i32 %.019
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @vhdx_co_writev(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.QEMUIOVector, align 8       ; 11 uses
  %6 = alloca %struct.iovec, align 8              ; 7 uses
  %7 = alloca %struct.iovec, align 8              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8
  call void @qemu_iovec_init(ptr noundef nonnull %5, i32 noundef %i.e) #16
  call void @qemu_co_mutex_lock(ptr noundef %i.c) #16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 464 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !9, !noundef !10
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %vhdx_user_visible_write.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 8
  %i.i = call i32 @vhdx_update_headers(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.c, i1 noundef zeroext true, ptr noundef null)
  br label %vhdx_user_visible_write.exit

vhdx_user_visible_write.exit:                     ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.j = icmp sgt i32 %.0.i, -1
  %i.k = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %.preheader, label %.thread

.preheader:                                       ; preds = %vhdx_user_visible_write.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 382
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 396
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 436
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 448 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 388 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.v, %bb.u
  %.059 = phi i32 [ %i.dp, %bb.v ], [ %i.dn, %bb.u ]
  %i.w = sub nsw i32 %.065, %spec.select          ; 2 uses
  %i.x = zext nneg i32 %spec.select to i64
  %i.y = add i64 %.063, %i.x
  %i.z = zext i32 %i.aq to i64
  %i.aa = add i64 %.057, %i.z
  %.old1 = icmp sgt i32 %i.w, 0
  br i1 %.old1, label %bb.d, label %.thread

bb.d:                                             ; preds = %.preheader, %bb.c
  %.0106 = phi i64 [ %.1107, %bb.c ], [ 0, %.preheader ]
  %.065 = phi i32 [ %i.w, %bb.c ], [ %2, %.preheader ] ; 2 uses
  %.063 = phi i64 [ %i.y, %bb.c ], [ %1, %.preheader ] ; 3 uses
  %.057 = phi i64 [ %i.aa, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %.051 = phi i64 [ %.152, %bb.c ], [ 0, %.preheader ]
  %i.ab = load i32, ptr %i.l, align 2
  %i.ac = and i32 %i.ab, 2
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %vhdx_block_translate.exit, label %.thread

vhdx_block_translate.exit:                        ; preds = %bb.d
  %i.ad = load i32, ptr %i.m, align 8             ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = ashr i64 %.063, %i.ae
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %i.ah = shl i32 %i.ag, %i.ad
  %i.ai = trunc i64 %.063 to i32
  %i.aj = sub i32 %i.ai, %i.ah                    ; 2 uses
  %i.ak = load i32, ptr %i.n, align 8
  %i.al = lshr i32 %i.ag, %i.ak
  %i.am = add i32 %i.al, %i.ag
  %i.an = load i32, ptr %i.o, align 4
  %i.ao = sub i32 %i.an, %i.aj
  %i.ap = load i32, ptr %i.p, align 4             ; 2 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ao, i32 %.065) ; 7 uses
  %i.aq = shl i32 %spec.select, %i.ap             ; 3 uses
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = zext i32 %i.am to i64                   ; 9 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -1048576                 ; 2 uses
  %i.aw = shl i32 %i.aj, %i.ap                    ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 6 uses
  %i.ay = icmp eq i64 %i.av, 0
  %i.az = add i64 %i.av, %i.ax
  %.sroa.18.1 = select i1 %i.ay, i64 0, i64 %i.az ; 5 uses
  call void @qemu_iovec_reset(ptr noundef nonnull %5) #16
  %i.ba = load ptr, ptr %i.q, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.as
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 7                        ; 2 uses
  switch i32 %i.be, label %.thread [
    i32 2, label %bb.e
    i32 0, label %bb.f
    i32 3, label %bb.f
    i32 5, label %bb.f
    i32 1, label %bb.f
    i32 6, label %bb.q
  ]

bb.e:                                             ; preds = %vhdx_block_translate.exit
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %vhdx_block_translate.exit, %vhdx_block_translate.exit, %vhdx_block_translate.exit, %vhdx_block_translate.exit
  %.0103 = phi i8 [ 1, %bb.e ], [ 0, %vhdx_block_translate.exit ], [ 0, %vhdx_block_translate.exit ], [ 0, %vhdx_block_translate.exit ], [ 0, %vhdx_block_translate.exit ] ; 3 uses
  %i.bf = load ptr, ptr %i.r, align 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i64 @bdrv_co_getlength(ptr noundef %i.bg) #16 ; 3 uses
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = trunc i64 %i.bh to i32
  br label %vhdx_allocate_block.exit

bb.h:                                             ; preds = %bb.f
  %i.bk = add nuw i64 %i.bh, 1048575              ; 2 uses
  %i.bl = and i64 %i.bk, -1048576                 ; 4 uses
  %i.bm = icmp slt i64 %i.bk, 0
  br i1 %i.bm, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %8 = trunc nuw i8 %.0103 to i1
  br i1 %8, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.r, align 8
  %i.bo = load i32, ptr %i.s, align 4
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nuw i64 %i.bl, %i.bp
  %i.br = call i32 @bdrv_co_truncate(ptr noundef %i.bn, i64 noundef %i.bq, i1 noundef zeroext false, i32 noundef 0, i32 noundef 2, ptr noundef null) #16 ; 2 uses
  %.not.i = icmp eq i32 %i.br, -95
  br i1 %.not.i, label %.critedge.i, label %vhdx_allocate_block.exit

.critedge.i:                                      ; preds = %bb.j, %bb.i
  %i.bs = load ptr, ptr %i.r, align 8
  %i.bt = load i32, ptr %i.s, align 4
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nuw i64 %i.bl, %i.bu
  %i.bw = call i32 @bdrv_co_truncate(ptr noundef %i.bs, i64 noundef %i.bv, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  br label %vhdx_allocate_block.exit

vhdx_allocate_block.exit:                         ; preds = %bb.j, %bb.g, %.critedge.i
  %.sroa.18.2 = phi i64 [ %.sroa.18.1, %bb.g ], [ %i.bl, %bb.j ], [ %i.bl, %.critedge.i ] ; 4 uses
  %.2105 = phi i8 [ %.0103, %bb.g ], [ 0, %bb.j ], [ %.0103, %.critedge.i ]
  %.1.i = phi i32 [ %i.bj, %bb.g ], [ %i.br, %bb.j ], [ %i.bw, %.critedge.i ] ; 2 uses
  %i.bx = icmp slt i32 %.1.i, 0
  br i1 %i.bx, label %.thread, label %bb.k

bb.k:                                             ; preds = %vhdx_allocate_block.exit
  %i.by = load ptr, ptr %i.q, align 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.as
  store i64 %.sroa.18.2, ptr %i.bz, align 8
  %i.ca = load ptr, ptr %i.q, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.as ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = or i64 %i.cc, 6
  store i64 %i.cd, ptr %i.cb, align 8
  %i.ce = load ptr, ptr %i.q, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.as
  %i.cg = load i64, ptr %i.cf, align 8
  store i64 %i.cg, ptr %i.a, align 8
  %i.ch = load i64, ptr %i.t, align 8
  %i.ci = shl nuw nsw i64 %i.as, 3
  %i.cj = add i64 %i.ch, %i.ci                    ; 3 uses
  %9 = trunc nuw i8 %.2105 to i1
  br i1 %9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = add i64 %.sroa.18.2, %i.ax
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %.not75 = icmp eq i32 %i.aw, 0
  br i1 %.not75, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.ax, ptr %i.u, align 8
  %i.cl = call ptr @qemu_blockalign(ptr noundef nonnull %0, i64 noundef %i.ax) #16 ; 2 uses
  store ptr %i.cl, ptr %6, align 8
  %i.cm = load i64, ptr %i.u, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cl, i8 noundef 0, i64 noundef %i.cm, i1 noundef false) #16
  %i.cn = load i64, ptr %i.u, align 8
  %i.co = call i64 @qemu_iovec_concat_iov(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1, i64 noundef 0, i64 noundef %i.cn) #16 ; 0 uses
  %i.cp = load i64, ptr %i.u, align 8
  %i.cq = lshr i64 %i.cp, 9
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = add i32 %spec.select, %i.cr
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.055 = phi i32 [ %i.cs, %bb.n ], [ %spec.select, %bb.m ] ; 2 uses
  %i.ct = zext i32 %i.aq to i64                   ; 3 uses
  call void @qemu_iovec_concat(ptr noundef nonnull %5, ptr noundef %3, i64 noundef %.057, i64 noundef %i.ct) #16
  %i.cu = sub nsw i64 %i.ct, %i.ax
  %i.cv = load i32, ptr %i.s, align 4
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = icmp ult i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = add nuw nsw i64 %i.ct, %i.ax
  %i.cz = sub nsw i64 %i.cw, %i.cy                ; 2 uses
  store i64 %i.cz, ptr %i.v, align 8
  %i.da = call ptr @qemu_blockalign(ptr noundef nonnull %0, i64 noundef %i.cz) #16 ; 2 uses
  store ptr %i.da, ptr %7, align 8
  %i.db = load i64, ptr %i.v, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.da, i8 noundef 0, i64 noundef %i.db, i1 noundef false) #16
  %i.dc = load i64, ptr %i.v, align 8
  %i.dd = call i64 @qemu_iovec_concat_iov(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 1, i64 noundef 0, i64 noundef %i.dc) #16 ; 0 uses
  %i.de = load i64, ptr %i.v, align 8
  %i.df = lshr i64 %i.de, 9
  %i.dg = trunc i64 %i.df to i32
  %i.dh = add i32 %.055, %i.dg
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %bb.o, %vhdx_block_translate.exit
  %.sroa.18.0 = phi i64 [ %.sroa.18.2, %bb.p ], [ %.sroa.18.2, %bb.o ], [ %i.ck, %bb.l ], [ %.sroa.18.1, %vhdx_block_translate.exit ] ; 2 uses
  %.1107 = phi i64 [ %i.cj, %bb.p ], [ %i.cj, %bb.o ], [ %i.cj, %bb.l ], [ %.0106, %vhdx_block_translate.exit ] ; 2 uses
  %.1104 = phi i1 [ true, %bb.p ], [ true, %bb.o ], [ false, %bb.l ], [ false, %vhdx_block_translate.exit ]
  %.156 = phi i32 [ %i.dh, %bb.p ], [ %.055, %bb.o ], [ %spec.select, %bb.l ], [ %spec.select, %vhdx_block_translate.exit ]
  %.152 = phi i64 [ %.sroa.18.1, %bb.p ], [ %.sroa.18.1, %bb.o ], [ %.sroa.18.1, %bb.l ], [ %.051, %vhdx_block_translate.exit ] ; 2 uses
  %.050 = phi i1 [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.l ], [ false, %vhdx_block_translate.exit ] ; 2 uses
  %i.di = icmp ult i64 %.sroa.18.0, 1048576
  br i1 %i.di, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.1104, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = zext i32 %i.aq to i64
  call void @qemu_iovec_concat(ptr noundef nonnull %5, ptr noundef %3, i64 noundef %.057, i64 noundef %i.dj) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @qemu_co_mutex_unlock(ptr noundef %i.c) #16
  %i.dk = load ptr, ptr %i.r, align 8
  %i.dl = sext i32 %.156 to i64
  %i.dm = shl nsw i64 %i.dl, 9
  %i.dn = call i32 @bdrv_co_pwritev(ptr noundef %i.dk, i64 noundef %.sroa.18.0, i64 noundef %i.dm, ptr noundef nonnull %5, i32 noundef 0) #16 ; 3 uses
  call void @qemu_co_mutex_lock(ptr noundef %i.c) #16
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.050, label %bb.v, label %bb.c

bb.v:                                             ; preds = %bb.u
  %i.dp = call i32 @vhdx_log_write_and_flush(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef 8, i64 noundef %.1107) #16 ; 3 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %.thread, label %bb.c

bb.w:                                             ; preds = %bb.t, %bb.q
  %.160.ph123 = phi i32 [ -14, %bb.q ], [ %i.dn, %bb.t ] ; 2 uses
  br i1 %.050, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %or.cond5.i = icmp samesign ult i32 %i.be, 4
  %i.dr = load ptr, ptr %i.q, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.as
  %..16.val.i = select i1 %or.cond5.i, i64 0, i64 %.152
  store i64 %..16.val.i, ptr %i.ds, align 8
  %i.dt = and i64 %i.bc, 7
  %i.du = load ptr, ptr %i.q, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.as ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = or i64 %i.dw, %i.dt
  store i64 %i.dx, ptr %i.dv, align 8
  %i.dy = load ptr, ptr %i.q, align 8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.as
  %i.ea = load i64, ptr %i.dz, align 8
  store i64 %i.ea, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.v, %vhdx_block_translate.exit, %vhdx_allocate_block.exit, %bb.d, %bb.c, %bb.w, %bb.x, %vhdx_user_visible_write.exit
  %.261 = phi i32 [ %.0.i, %vhdx_user_visible_write.exit ], [ %.160.ph123, %bb.x ], [ %.160.ph123, %bb.w ], [ -22, %bb.h ], [ %.1.i, %vhdx_allocate_block.exit ], [ -5, %vhdx_block_translate.exit ], [ %i.dp, %bb.v ], [ -95, %bb.d ], [ %.059, %bb.c ]
  %i.eb = load ptr, ptr %6, align 8
  call void @qemu_vfree(ptr noundef %i.eb) #16
  %i.ec = load ptr, ptr %7, align 8
  call void @qemu_vfree(ptr noundef %i.ec) #16
  call void @qemu_co_mutex_unlock(ptr noundef %i.c) #16
  call void @qemu_iovec_destroy(ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.261
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @vhdx_co_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 388
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @vhdx_co_check(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call i32 @vhdx_check_bat_entries(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  ret i32 0
}

declare zeroext i1 @qemu_in_main_thread() local_unnamed_addr #3

declare i32 @bdrv_open_file_child(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @qemu_co_mutex_init(ptr noundef) local_unnamed_addr #3

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vhdx_parse_log(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @vhdx_calc_bat_entries(ptr nofree noundef captures(none) initializes((440, 444)) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = add i64 %i.b, -1
  %i.g = add i64 %i.f, %i.e
  %i.h = udiv i64 %i.g, %i.e                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = and i64 %i.h, 4294967295
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = add i64 %i.n, %i.m
  %i.p = udiv i64 %i.o, %i.m
  %i.q = add i64 %i.m, 1
  %i.r = mul i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.h to i32                    ; 2 uses
  %i.u = add i32 %i.t, -1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.u, %i.w
  %i.y = add i32 %i.x, %i.t
end_hunk_0
