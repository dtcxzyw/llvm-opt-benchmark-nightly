Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cdrom?download=true
inline.NumInlined: 230
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mmc_ioctl_cdrom_read_audio:bb.a
  %.03135.i.i = phi i32 [ %.012, %.preheader.split.i ], [ %i.by, %bb.j ] ; 2 uses
  %i.bq = load i32, ptr %i.al, align 4
  %i.br = icmp eq i32 %i.bq, 1
  %i.bs = call i32 @llvm.smin.i32(i32 %.03036.i.i, i32 %i.bp)
  %.029.i.i = select i1 %i.br, i32 1, i32 %i.bs   ; 4 uses
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call i32 %i.bv(ptr noundef %0, ptr noundef %.037.i.i, i32 noundef %.03135.i.i, i32 noundef %.029.i.i, ptr noundef %i.ap) #19, !inline_history !117 ; 2 uses
  switch i32 %i.bw, label %cdrom_read_cdda.exit [
    i32 0, label %bb.j
    i32 -5, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bx = sub i32 %.03036.i.i, %.029.i.i          ; 2 uses
  %i.by = add i32 %.029.i.i, %.03135.i.i
  %i.bz = mul i32 %.029.i.i, 2352
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr i8, ptr %.037.i.i, i64 %i.ca
  %.not.i.i22 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i22, label %cdrom_read_cdda.exit, label %bb.i, !llvm.loop !118

bb.k:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %i.al, align 4
  %i.cd = icmp eq i32 %i.cc, 2
  br i1 %i.cd, label %bb.l, label %.split.us.i

bb.l:                                             ; preds = %bb.k
  %i.ce = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #17 ; 0 uses
  store i32 1, ptr %i.al, align 4
  br label %.preheader.split.i

.split.us.i:                                      ; preds = %.preheader.split.us.i.split, %bb.k, %.preheader.split.us.i.split.us
  %i.cf = load i8, ptr %i.ap, align 8             ; 2 uses
  switch i8 %i.cf, label %cdrom_read_cdda.exit [
    i8 4, label %bb.m
    i8 11, label %bb.m
  ]

bb.m:                                             ; preds = %.split.us.i, %.split.us.i
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %i.cg) #17 ; 0 uses
  store i32 0, ptr %i.al, align 4
  br label %cdrom_read_cdda_bpc.exit.thread.sink.split.i

cdrom_read_cdda_bpc.exit.thread.sink.split.i:     ; preds = %bb.m, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ci = getelementptr i8, ptr %0, i64 96
  store i8 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i8 0, i64 56, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %_kmalloc_array_noprof.exit.i

_kmalloc_array_noprof.exit.i:                     ; preds = %cdrom_read_cdda_bpc.exit.thread.sink.split.i, %bb.n
  %.030.i = phi i32 [ %i.ag, %cdrom_read_cdda_bpc.exit.thread.sink.split.i ], [ %i.cn, %bb.n ] ; 3 uses
  %narrow.i = mul nuw nsw i32 %.030.i, 2352
  %i.cl = zext nneg i32 %narrow.i to i64
  %i.cm = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 176401) %i.cl, i32 noundef 3264) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_kmalloc_array_noprof.exit.i
  %i.cn = lshr i32 %.030.i, 1                     ; 2 uses
  %.not38.i = icmp eq i32 %i.cn, 0
  br i1 %.not38.i, label %cdrom_read_cdda_old.exit, label %_kmalloc_array_noprof.exit.i, !llvm.loop !119

bb.o:                                             ; preds = %_kmalloc_array_noprof.exit.i
  store ptr %i.cm, ptr %i.ck, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 2, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.02754.i = phi ptr [ %i.ak, %bb.o ], [ %i.dn, %bb.q ] ; 2 uses
  %.02953.i = phi i32 [ %.012, %bb.o ], [ %i.dp, %bb.q ] ; 5 uses
  %.252.i = phi i32 [ %.030.i, %bb.o ], [ %spec.select.i, %bb.q ]
  %.03351.i = phi i32 [ %i.ag, %bb.o ], [ %i.do, %bb.q ] ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %.252.i, i32 %.03351.i) ; 5 uses
  %i.cx = load ptr, ptr %0, align 8
  store i32 63488, ptr %i.cj, align 8
  store i8 -66, ptr %2, align 8
  store i8 4, ptr %i.cp, align 1
  %i.cy = lshr i32 %.02953.i, 24
  %i.cz = trunc nuw i32 %i.cy to i8
  store i8 %i.cz, ptr %i.cq, align 2
  %i.da = lshr i32 %.02953.i, 16
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %i.cr, align 1
  %i.dc = lshr i32 %.02953.i, 8
  %i.dd = trunc i32 %i.dc to i8
  store i8 %i.dd, ptr %i.cs, align 4
  %i.de = trunc i32 %.02953.i to i8
  store i8 %i.de, ptr %i.ct, align 1
  store i8 0, ptr %i.cu, align 2
  store i8 0, ptr %i.cv, align 1
  %i.df = trunc nuw nsw i32 %spec.select.i to i8
  store i8 %i.df, ptr %i.cj, align 8
  %i.dg = mul nuw nsw i32 %spec.select.i, 2352    ; 2 uses
  store i32 %i.dg, ptr %i.cw, align 8
  %i.dh = getelementptr i8, ptr %i.cx, i64 88
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call i32 %i.di(ptr noundef %0, ptr noundef nonnull %2) #19, !inline_history !120 ; 2 uses
  %.not40.i = icmp eq i32 %i.dj, 0
  br i1 %.not40.i, label %copy_to_user.exit.i, label %copy_to_user.exit.thread.i

copy_to_user.exit.i:                              ; preds = %bb.p
  %i.dk = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.dl = load ptr, ptr %i.ck, align 8
  %i.dm = call i64 @_copy_to_user(ptr noundef %.02754.i, ptr noundef %i.dl, i64 noundef range(i64 0, 176401) %i.dk) #19
  %.not41.i = icmp eq i64 %i.dm, 0
  br i1 %.not41.i, label %bb.q, label %copy_to_user.exit.thread.i

bb.q:                                             ; preds = %copy_to_user.exit.i
  %i.dn = getelementptr i8, ptr %.02754.i, i64 %i.dk
  %i.do = sub nsw i32 %.03351.i, %spec.select.i   ; 2 uses
  %i.dp = add i32 %spec.select.i, %.02953.i
  %i.dq = icmp sgt i32 %i.do, 0
  br i1 %i.dq, label %bb.p, label %copy_to_user.exit.thread.i, !llvm.loop !121

copy_to_user.exit.thread.i:                       ; preds = %bb.q, %copy_to_user.exit.i, %bb.p
  %.132.i = phi i32 [ -14, %copy_to_user.exit.i ], [ 0, %bb.q ], [ %i.dj, %bb.p ]
  %i.dr = load ptr, ptr %i.ck, align 8
  call void @kfree(ptr noundef %i.dr) #19
  br label %cdrom_read_cdda_old.exit

cdrom_read_cdda_old.exit:                         ; preds = %bb.n, %copy_to_user.exit.thread.i
  %.0.i23 = phi i32 [ %.132.i, %copy_to_user.exit.thread.i ], [ -12, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %cdrom_read_cdda.exit

.critedge:                                        ; preds = %copy_from_user.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %cdrom_read_cdda.exit

cdrom_read_cdda.exit:                             ; preds = %.preheader.split.us.i.split, %bb.h, %bb.j, %bb.i, %.preheader.split.us.i.split.us, %cdrom_read_cdda_old.exit, %.split.us.i, %bb.f, %bb.c, %copy_from_user.exit, %.critedge
  %.1 = phi i32 [ -22, %bb.c ], [ %.0.i23, %cdrom_read_cdda_old.exit ], [ -14, %copy_from_user.exit ], [ -22, %bb.f ], [ -14, %.critedge ], [ -5, %.split.us.i ], [ %i.ba, %.preheader.split.us.i.split.us ], [ 0, %bb.j ], [ %i.bw, %bb.i ], [ 0, %bb.h ], [ %i.bg, %.preheader.split.us.i.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @mmc_ioctl_cdrom_subchannel(ptr noundef %0, ptr noundef %1) unnamed_addr #12 align 16 prefalign(16) {
copy_from_user.exit:
  %2 = alloca %struct.packet_command, align 8     ; 14 uses
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %3 = alloca %struct.cdrom_subchnl, align 4      ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !19
  %i.b = call i64 @_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 16) #19
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.a, label %bb.k

bb.a:                                             ; preds = %copy_from_user.exit
  %i.c = load i8, ptr %3, align 4                 ; 5 uses
  %i.d = add i8 %i.c, -1
  %or.cond = icmp ult i8 %i.d, 2
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !annotation !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 16, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 7000, ptr %i.j, align 8
  store i8 66, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.c, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 64, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 1, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 16, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.e, i64 88
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 %i.p(ptr noundef %0, ptr noundef nonnull %2) #19, !inline_history !122 ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %cdrom_read_subchannel.exit

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.g, align 8              ; 12 uses
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.t, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %i.r, i64 5
  %i.w = load i8, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.y = load i8, ptr %i.x, align 2
  %i.z = shl i8 %i.w, 4
  %i.aa = and i8 %i.y, 15
  %i.ab = or disjoint i8 %i.aa, %i.z
  store i8 %i.ab, ptr %i.x, align 2
  %i.ac = getelementptr i8, ptr %i.r, i64 6
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = getelementptr i8, ptr %i.r, i64 7
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.ag, ptr %i.ah, align 4
  %i.ai = load i8, ptr %3, align 4                ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 1
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr i8, ptr %i.r, i64 8
  %4 = load i32, ptr %i.ak, align 1
  %5 = call i32 @llvm.bswap.i32(i32 %4)           ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %5, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %i.r, i64 12
  %6 = load i32, ptr %i.am, align 1
  %7 = call i32 @llvm.bswap.i32(i32 %6)           ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %7, ptr %i.an, align 4
  %8 = lshr i32 %5, 16
  %9 = trunc i32 %8 to i8
  %10 = lshr i32 %5, 8
  %11 = trunc i32 %10 to i8
  %12 = trunc i32 %5 to i8
  %13 = lshr i32 %7, 16
  %14 = trunc i32 %13 to i8
  %15 = lshr i32 %7, 8
  %16 = trunc i32 %15 to i8
  %17 = trunc i32 %7 to i8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ao = getelementptr i8, ptr %i.r, i64 13
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %i.r, i64 14
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %i.as, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %i.r, i64 15
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.av, ptr %i.aw, align 2
  %i.ax = getelementptr i8, ptr %i.r, i64 9
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %i.r, i64 10
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %i.r, i64 11
  %i.be = load i8, ptr %i.bd, align 1             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %i.be, ptr %i.bf, align 2
  br label %bb.f

cdrom_read_subchannel.exit:                       ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bg = phi i8 [ %17, %bb.d ], [ %i.ap, %bb.e ]
  %i.bh = phi i8 [ %16, %bb.d ], [ %i.as, %bb.e ]
  %i.bi = phi i8 [ %14, %bb.d ], [ %i.av, %bb.e ]
  %i.bj = phi i8 [ %12, %bb.d ], [ %i.ay, %bb.e ]
  %i.bk = phi i8 [ %11, %bb.d ], [ %i.bb, %bb.e ]
  %i.bl = phi i8 [ %9, %bb.d ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bn = icmp eq i8 %i.ai, %i.c
  br i1 %i.bn, label %copy_to_user.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = icmp eq i8 %i.c, 1
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = zext i8 %i.bl to i32
  %i.bq = zext i8 %i.bk to i32
  %i.br = add nsw i32 %i.bq, -2
  %i.bs = zext i8 %i.bj to i32
  %i.bt = mul nuw nsw i32 %i.bs, 60
  %i.bu = add nsw i32 %i.br, %i.bt
  %i.bv = mul nsw i32 %i.bu, 75
  %i.bw = add nsw i32 %i.bv, %i.bp
  store i32 %i.bw, ptr %i.bm, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.by = zext i8 %i.bi to i32
  %i.bz = zext i8 %i.bh to i32
  %i.ca = add nsw i32 %i.bz, -2
  %i.cb = zext i8 %i.bg to i32
  %i.cc = mul nuw nsw i32 %i.cb, 60
  %i.cd = add nsw i32 %i.ca, %i.cc
  %i.ce = mul nsw i32 %i.cd, 75
  %i.cf = add nsw i32 %i.ce, %i.by
  store i32 %i.cf, ptr %i.bx, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cg = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.ch = srem i32 %i.cg, 75
  %i.ci = trunc nsw i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %i.ci, ptr %i.cj, align 2
  %i.ck = sdiv i32 %i.cg, 75
  %i.cl = add nsw i32 %i.ck, 2                    ; 2 uses
  %i.cm = srem i32 %i.cl, 60
  %i.cn = trunc nsw i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = sdiv i32 %i.cl, 60
  %i.cq = trunc i32 %i.cp to i8
  store i8 %i.cq, ptr %i.bm, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4            ; 2 uses
  %i.ct = srem i32 %i.cs, 75
  %i.cu = trunc nsw i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.cu, ptr %i.cv, align 2
  %i.cw = sdiv i32 %i.cs, 75
  %i.cx = add nsw i32 %i.cw, 2                    ; 2 uses
  %i.cy = srem i32 %i.cx, 60
  %i.cz = trunc nsw i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = sdiv i32 %i.cx, 60
  %i.dc = trunc i32 %i.db to i8
  store i8 %i.dc, ptr %i.cr, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.c, ptr %3, align 4
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %bb.f, %bb.j
  %i.dd = call i64 @_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 16) #19
  %.not13 = icmp eq i64 %i.dd, 0
  %. = select i1 %.not13, i32 0, i32 -14
  br label %bb.k

bb.k:                                             ; preds = %cdrom_read_subchannel.exit, %copy_to_user.exit, %bb.a, %copy_from_user.exit
  %.0 = phi i32 [ -14, %copy_from_user.exit ], [ -22, %bb.a ], [ %., %copy_to_user.exit ], [ %i.q, %cdrom_read_subchannel.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @mmc_ioctl_cdrom_play_msf(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 align 16 prefalign(16) {
copy_from_user.exit:
  %3 = alloca %struct.cdrom_msf, align 1          ; 10 uses
  %i.a = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false), !annotation !19
  %i.b = call i64 @_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 6) #19
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %copy_from_user.exit
  store i8 71, ptr %2, align 8
  %i.c = load i8, ptr %3, align 1
  %i.d = getelementptr i8, ptr %2, i64 3
  store i8 %i.c, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = getelementptr i8, ptr %2, i64 4
  store i8 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = getelementptr i8, ptr %2, i64 5
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %2, i64 6
  store i8 %i.l, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %2, i64 7
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr i8, ptr %2, i64 8
  store i8 %i.r, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %2, i64 40
  store i8 3, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.a, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call i32 %i.v(ptr noundef %0, ptr noundef %2) #19
  br label %bb.b

bb.b:                                             ; preds = %copy_from_user.exit, %bb.a
  %.0 = phi i32 [ %i.w, %bb.a ], [ -14, %copy_from_user.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @mmc_ioctl_cdrom_play_blk(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 align 16 prefalign(16) {
copy_from_user.exit:
  %3 = alloca %struct.cdrom_blk, align 8          ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 0, ptr %3, align 8, !annotation !19
  %i.b = call i64 @_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 8) #19
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %copy_from_user.exit
  store i8 69, ptr %2, align 8
  %i.c = load i32, ptr %3, align 8                ; 4 uses
  %i.d = lshr i32 %i.c, 24
  %i.e = trunc nuw i32 %i.d to i8
  %i.f = getelementptr i8, ptr %2, i64 2
  store i8 %i.e, ptr %i.f, align 2
  %i.g = lshr i32 %i.c, 16
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr i8, ptr %2, i64 3
  store i8 %i.h, ptr %i.i, align 1
  %i.j = lshr i32 %i.c, 8
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr i8, ptr %2, i64 4
  store i8 %i.k, ptr %i.l, align 4
  %i.m = trunc i32 %i.c to i8
  %i.n = getelementptr i8, ptr %2, i64 5
  store i8 %i.m, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load i16, ptr %i.o, align 4              ; 2 uses
  %i.q = lshr i16 %i.p, 8
  %i.r = trunc nuw i16 %i.q to i8
  %i.s = getelementptr i8, ptr %2, i64 7
  store i8 %i.r, ptr %i.s, align 1
  %i.t = trunc i16 %i.p to i8
  %i.u = getelementptr i8, ptr %2, i64 8
  store i8 %i.t, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %2, i64 40
  store i8 3, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.a, i64 88
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i32 %i.x(ptr noundef %0, ptr noundef %2) #19
  br label %bb.b

bb.b:                                             ; preds = %copy_from_user.exit, %bb.a
  %.0 = phi i32 [ %i.y, %bb.a ], [ -14, %copy_from_user.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @mmc_ioctl_cdrom_volume(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #12 align 16 prefalign(16) {
copy_from_user.exit:
  %4 = alloca %struct.cdrom_volctrl, align 4      ; 13 uses
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 0, ptr %4, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !annotation !19
  %i.c = call i64 @_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 4) #19
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.a, label %bb.j

bb.a:                                             ; preds = %copy_from_user.exit
  %i.d = getelementptr i8, ptr %2, i64 16         ; 3 uses
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %2, i64 24         ; 6 uses
end_hunk_0
