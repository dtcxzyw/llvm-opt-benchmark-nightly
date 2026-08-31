Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cdrom?download=true
inline.NumInlined: 230
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mmc_ioctl_cdrom_read_data:bb.a
  store i8 2, ptr %i.u, align 8
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 1, ptr %i.w, align 8
  store i8 -66, ptr %2, align 8
  %i.x = getelementptr i8, ptr %2, i64 1
  store i8 %.049.a, ptr %i.x, align 1
  %i.y = getelementptr i8, ptr %2, i64 2
  store i8 0, ptr %i.y, align 2
  %i.z = lshr i32 %i.n, 16
  %i.aa = trunc nuw nsw i32 %i.z to i8            ; 3 uses
  %i.ab = getelementptr i8, ptr %2, i64 3         ; 3 uses
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = lshr i32 %i.n, 8
  %i.ad = trunc i32 %i.ac to i8                   ; 3 uses
  %i.ae = getelementptr i8, ptr %2, i64 4         ; 3 uses
  store i8 %i.ad, ptr %i.ae, align 4
  %i.af = trunc i32 %i.n to i8                    ; 3 uses
  %i.ag = getelementptr i8, ptr %2, i64 5         ; 3 uses
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = getelementptr i8, ptr %2, i64 6
  store i8 0, ptr %i.ah, align 2
  %i.ai = getelementptr i8, ptr %2, i64 7
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr i8, ptr %2, i64 24        ; 3 uses
  store i32 %.047, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %2, i64 9
  store i8 %switch.selectcmp65, ptr %i.ak, align 1
  %i.al = getelementptr i8, ptr %i.v, i64 88
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call i32 %i.am(ptr noundef %0, ptr noundef %2) #19, !inline_history !113 ; 2 uses
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 5
  %or.cond = select i1 %i.ao, i1 %i.ar, i1 false
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.at = load i8, ptr %i.as, align 2
  %i.au = icmp eq i8 %i.at, 32
  %or.cond7 = select i1 %or.cond, i1 %i.au, i1 false
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 0
  %or.cond11 = select i1 %or.cond7, i1 %i.ax, i1 false
  br i1 %or.cond11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %cdrom_read_block.exit
  br i1 %.not54.a, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  store ptr null, ptr %i.t, align 8
  %i.ay = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  store i8 40, ptr %2, align 8
  store i8 %i.aa, ptr %i.ab, align 1
  store i8 %i.ad, ptr %i.ae, align 4
  store i8 %i.af, ptr %i.ag, align 1
  store i8 1, ptr %i.w, align 8
  store i32 2048, ptr %i.aj, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i32 %i.ba(ptr noundef %0, ptr noundef %2) #19, !inline_history !114
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %7, i8 0, i64 10, i1 false)
  %i.be = lshr i32 %.047, 8
  %i.bf = trunc nuw nsw i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.bh = trunc i32 %.047 to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  store i8 21, ptr %6, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 16, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 12, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 12, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 1, ptr %i.bn, align 8
  store i8 8, ptr %i.bd, align 1
  store i8 %i.bf, ptr %i.bg, align 1
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bo = getelementptr i8, ptr %i.bc, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call i32 %i.bp(ptr noundef %0, ptr noundef nonnull %6) #19, !inline_history !115 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not55.a = icmp eq i32 %i.bq, 0
  br i1 %.not55.a, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.t, align 8
  %i.br = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  store i8 40, ptr %2, align 8
  store i8 %i.aa, ptr %i.ab, align 1
  store i8 %i.ad, ptr %i.ae, align 4
  store i8 %i.af, ptr %i.ag, align 1
  store i8 1, ptr %i.w, align 8
  store i32 %.047, ptr %i.aj, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call i32 %i.bt(ptr noundef %0, ptr noundef %2) #19, !inline_history !114
  %i.bv = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %5, i8 0, i64 10, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  store i8 21, ptr %4, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 16, ptr %i.bz, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 12, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 12, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %5, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 1, ptr %i.cd, align 8
  store i8 8, ptr %i.bw, align 1
  store i8 8, ptr %i.bx, align 1
  store i8 0, ptr %i.by, align 1
  %i.ce = getelementptr i8, ptr %i.bv, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call i32 %i.cf(ptr noundef %0, ptr noundef nonnull %4) #19, !inline_history !115
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ch = or i32 %i.cg, %i.bu
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h, %cdrom_read_block.exit
  %.050 = phi i32 [ %i.ch, %bb.h ], [ %i.bb, %.thread ], [ %i.an, %cdrom_read_block.exit ] ; 2 uses
  %.not56.a = icmp eq i32 %.050, 0
  br i1 %.not56.a, label %check_copy_size.exit, label %bb.j

check_copy_size.exit:                             ; preds = %bb.i
  %i.ci = load ptr, ptr %i.r, align 8
  %i.cj = call i64 @_copy_to_user(ptr noundef %1, ptr noundef %i.ci, i64 noundef range(i64 0, 176401) %i.p) #19
  %.not57 = icmp eq i64 %i.cj, 0
  %spec.select = select i1 %.not57, i32 0, i32 -14
  br label %bb.j

bb.j:                                             ; preds = %check_copy_size.exit, %bb.i, %bb.g
  %.1 = phi i32 [ %i.bq, %bb.g ], [ %.050, %bb.i ], [ %spec.select, %check_copy_size.exit ]
  %i.ck = load ptr, ptr %i.r, align 8
  call void @kfree(ptr noundef %i.ck) #19
  br label %bb.k

bb.k:                                             ; preds = %_kzalloc_noprof.exit, %bb.e, %copy_from_user.exit, %bb.j
  %.0 = phi i32 [ %.1, %bb.j ], [ -14, %copy_from_user.exit ], [ -22, %bb.e ], [ -12, %_kzalloc_noprof.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @mmc_ioctl_cdrom_read_audio(ptr noundef %0, ptr noundef %1) unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.packet_command, align 8     ; 15 uses
  %3 = alloca %struct.cdrom_read_audio, align 8   ; 17 uses
  %4 = alloca %struct.compat_cdrom_read_audio, align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !52
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #23, !srcloc !116
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 2
  %.not.i.i.not = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.not, label %copy_from_user.exit, label %copy_from_user.exit17

copy_from_user.exit17:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !52
  %i.f = call i64 @_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 16) #19
  %.not15 = icmp eq i64 %i.f, 0
  br i1 %.not15, label %bb.b, label %.critedge

bb.b:                                             ; preds = %copy_from_user.exit17
  %.sroa.0.0.copyload6 = load i32, ptr %4, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = load i8, ptr %i.g, align 4               ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.3.0..sroa_idx, i8 0, i64 3, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  store i32 %.sroa.0.0.copyload6, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.h, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.c

copy_from_user.exit:                              ; preds = %bb.a
  %i.n = call i64 @_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 24) #19
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %copy_from_user.exit._crit_edge, label %cdrom_read_cdda.exit

copy_from_user.exit._crit_edge:                   ; preds = %copy_from_user.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre = load i8, ptr %.phi.trans.insert, align 4
  br label %bb.c

bb.c:                                             ; preds = %copy_from_user.exit._crit_edge, %bb.b
  %i.o = phi i8 [ %.pre, %copy_from_user.exit._crit_edge ], [ %i.h, %bb.b ]
  switch i8 %i.o, label %cdrom_read_cdda.exit [
    i8 2, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.t = load i8, ptr %i.s, align 2
  %i.u = zext i8 %i.p to i32
  %i.v = mul nuw nsw i32 %i.u, 60
  %i.w = zext i8 %i.r to i32
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = mul nuw nsw i32 %i.x, 75
  %i.z = zext i8 %i.t to i32
  %i.aa = add nsw i32 %i.z, -150
  %i.ab = add nsw i32 %i.aa, %i.y
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %3, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.012 = phi i32 [ %i.ab, %bb.d ], [ %i.ac, %bb.e ] ; 5 uses
  %i.ad = icmp slt i32 %.012, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i32, ptr %i.ae, align 8            ; 5 uses
  %i.ag = add i32 %i.af, -76
  %i.ah = icmp ult i32 %i.ag, -75
  %or.cond5 = select i1 %i.ad, i1 true, i1 %i.ah
  br i1 %or.cond5, label %cdrom_read_cdda.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.ak = getelementptr i8, ptr %0, i64 92        ; 6 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %cdrom_read_cdda_bpc.exit.thread.sink.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.an = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 96        ; 6 uses
  %i.ap = icmp samesign ugt i32 %i.af, 1
  br i1 %i.ap, label %.preheader.split.i, label %.preheader.split.us.i

.preheader.split.us.i:                            ; preds = %.preheader.i
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 148
  %.val.i.us.i = load i32, ptr %i.at, align 4
  %.val.i.us.i.fr = freeze i32 %.val.i.us.i
  %i.au = shl i32 %.val.i.us.i.fr, 9
  store i8 0, ptr %i.ao, align 8
  %i.av = icmp ugt i32 %i.au, 2351
  br i1 %i.av, label %.preheader.split.us.i.split.us, label %.preheader.split.us.i.split

.preheader.split.us.i.split.us:                   ; preds = %.preheader.split.us.i
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call i32 %i.ay(ptr noundef %0, ptr noundef %i.aj, i32 noundef %.012, i32 noundef 1, ptr noundef %i.ao) #19, !inline_history !117 ; 2 uses
  %cond = icmp eq i32 %i.az, -5
  br i1 %cond, label %.split.us.i, label %cdrom_read_cdda.exit

.preheader.split.us.i.split:                      ; preds = %.preheader.split.us.i, %bb.h
  %.037.i.us.i = phi ptr [ %i.bi, %bb.h ], [ %i.aj, %.preheader.split.us.i ] ; 2 uses
  %.03135.i.us.i = phi i32 [ %i.bg, %bb.h ], [ %.012, %.preheader.split.us.i ] ; 2 uses
  %i.ba = load i32, ptr %i.ak, align 4
  %i.bb = icmp eq i32 %i.ba, 1                    ; 3 uses
  %.029.i.us.i = zext i1 %i.bb to i32             ; 2 uses
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 96
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call i32 %i.be(ptr noundef %0, ptr noundef %.037.i.us.i, i32 noundef %.03135.i.us.i, i32 noundef %.029.i.us.i, ptr noundef %i.ao) #19, !inline_history !117 ; 2 uses
  switch i32 %i.bf, label %cdrom_read_cdda.exit [
    i32 0, label %bb.h
    i32 -5, label %.split.us.i
  ]

bb.h:                                             ; preds = %.preheader.split.us.i.split
  %i.bg = add nuw nsw i32 %.03135.i.us.i, %.029.i.us.i
  %i.bh = select i1 %i.bb, i64 2352, i64 0
  %i.bi = getelementptr i8, ptr %.037.i.us.i, i64 %i.bh
  br i1 %i.bb, label %cdrom_read_cdda.exit, label %.preheader.split.us.i.split, !llvm.loop !118

.preheader.split.i:                               ; preds = %.preheader.i, %bb.l
  %i.bj = load ptr, ptr %i.an, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 148
  %.val.i.i = load i32, ptr %i.bm, align 4
  %i.bn = shl i32 %.val.i.i, 9
  %i.bo = udiv i32 %i.bn, 2352
  store i8 0, ptr %i.ao, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.preheader.split.i
  %.037.i.i = phi ptr [ %i.aj, %.preheader.split.i ], [ %i.ca, %bb.j ] ; 2 uses
  %.03036.i.i = phi i32 [ %i.af, %.preheader.split.i ], [ %i.bw, %bb.j ] ; 2 uses
  %.03135.i.i = phi i32 [ %.012, %.preheader.split.i ], [ %i.bx, %bb.j ] ; 2 uses
  %i.bp = load i32, ptr %i.ak, align 4
  %i.bq = icmp eq i32 %i.bp, 1
  %i.br = call i32 @llvm.smin.i32(i32 %.03036.i.i, i32 %i.bo)
  %.029.i.i = select i1 %i.bq, i32 1, i32 %i.br   ; 4 uses
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call i32 %i.bu(ptr noundef %0, ptr noundef %.037.i.i, i32 noundef %.03135.i.i, i32 noundef %.029.i.i, ptr noundef %i.ao) #19, !inline_history !117 ; 2 uses
  switch i32 %i.bv, label %cdrom_read_cdda.exit [
    i32 0, label %bb.j
    i32 -5, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bw = sub i32 %.03036.i.i, %.029.i.i          ; 2 uses
  %i.bx = add i32 %.029.i.i, %.03135.i.i
  %i.by = mul i32 %.029.i.i, 2352
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr i8, ptr %.037.i.i, i64 %i.bz
  %.not.i.i22 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i22, label %cdrom_read_cdda.exit, label %bb.i, !llvm.loop !118

bb.k:                                             ; preds = %bb.i
  %i.cb = load i32, ptr %i.ak, align 4
  %i.cc = icmp eq i32 %i.cb, 2
  br i1 %i.cc, label %bb.l, label %.split.us.i

bb.l:                                             ; preds = %bb.k
  %i.cd = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #17 ; 0 uses
  store i32 1, ptr %i.ak, align 4
  br label %.preheader.split.i

.split.us.i:                                      ; preds = %.preheader.split.us.i.split, %bb.k, %.preheader.split.us.i.split.us
  %i.ce = load i8, ptr %i.ao, align 8             ; 2 uses
  switch i8 %i.ce, label %cdrom_read_cdda.exit [
    i8 4, label %bb.m
    i8 11, label %bb.m
  ]

bb.m:                                             ; preds = %.split.us.i, %.split.us.i
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %i.cf) #17 ; 0 uses
  store i32 0, ptr %i.ak, align 4
  br label %cdrom_read_cdda_bpc.exit.thread.sink.split.i

cdrom_read_cdda_bpc.exit.thread.sink.split.i:     ; preds = %bb.m, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ch = getelementptr i8, ptr %0, i64 96
  store i8 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, i8 0, i64 56, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %_kmalloc_array_noprof.exit.i

_kmalloc_array_noprof.exit.i:                     ; preds = %cdrom_read_cdda_bpc.exit.thread.sink.split.i, %bb.n
  %.030.i = phi i32 [ %i.af, %cdrom_read_cdda_bpc.exit.thread.sink.split.i ], [ %i.cm, %bb.n ] ; 3 uses
  %narrow.i = mul nuw nsw i32 %.030.i, 2352
  %i.ck = zext nneg i32 %narrow.i to i64
  %i.cl = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 176401) %i.ck, i32 noundef 3264) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_kmalloc_array_noprof.exit.i
  %i.cm = lshr i32 %.030.i, 1                     ; 2 uses
  %.not38.i = icmp eq i32 %i.cm, 0
  br i1 %.not38.i, label %cdrom_read_cdda_old.exit, label %_kmalloc_array_noprof.exit.i, !llvm.loop !119

bb.o:                                             ; preds = %_kmalloc_array_noprof.exit.i
  store ptr %i.cl, ptr %i.cj, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 2, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.p
end_hunk_0
