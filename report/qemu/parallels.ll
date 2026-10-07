Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/parallels?download=true
inline.NumInlined: 89
inline.NumDeleted: 37
begin_hunk_0_@qemu_blockalign
declare ptr @qemu_blockalign(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i32 @bdrv_co_pread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #10 {
bb.a:
  %5 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %i.b, align 8
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %2, ptr %i.c, align 8
  call void @assert_bdrv_graph_readable() #13
  %i.d = call i32 @bdrv_co_preadv(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5, i32 noundef %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %i.d
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i32 @bdrv_co_pwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #10 {
bb.a:
  %5 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %i.b, align 8
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %2, ptr %i.c, align 8
  call void @assert_bdrv_graph_readable() #13
  %i.d = call i32 @bdrv_co_pwritev(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5, i32 noundef %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %i.d
}

declare i64 @find_next_zero_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @g_realloc_n(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @bitmap_clear(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @assert_bdrv_graph_readable() local_unnamed_addr #1

declare i32 @bdrv_co_pdiscard(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @parallels_check_data_off(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 @bdrv_co_nb_sectors(ptr noundef %i.e) #13 ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = trunc i64 %i.f to i32
  br label %parallels_test_data_off.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = load i128, ptr %i.m, align 1
  %i.o = icmp ne i128 %i.n, 134768041256367043298119089874370062679
  %i.p = zext i1 %i.o to i32
  %.not.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.r = load i32, ptr %i.q, align 8
  %i.s = shl i32 %i.r, 2
  %i.t = add i32 %i.s, 64
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 508
  %i.w = lshr i64 %i.v, 9                         ; 2 uses
  br i1 %.not.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.y = load i32, ptr %i.x, align 8
  %i.z = lshr i32 %i.y, 9
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = add nuw nsw i64 %i.w, 4294967295
  %i.ac = add nuw nsw i64 %i.ab, %i.aa
  %i.ad = sub nsw i64 0, %i.aa
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ag = load i32, ptr %i.af, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ai = load i32, ptr %i.ah, align 1            ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %parallels_test_data_off.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.0.in = phi i64 [ %i.w, %bb.d ], [ %i.ae, %.thread.i ] ; 2 uses
  %i.ak = phi i32 [ %i.ai, %bb.d ], [ %i.ag, %.thread.i ] ; 2 uses
  %.0 = trunc i64 %.0.in to i32                   ; 2 uses
  %i.al = icmp ult i32 %i.ak, %.0
  %i.am = zext i32 %i.ak to i64
  %i.an = icmp samesign ult i64 %i.f, %i.am
  %or.cond24.i = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond24.i, label %parallels_test_data_off.exit, label %parallels_test_data_off.exit.thread

parallels_test_data_off.exit:                     ; preds = %bb.e
  %i.ao = load i32, ptr %1, align 8
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %1, align 8
  %i.aq = and i32 %2, 2
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %parallels_test_data_off.exit
  %i.ar = load ptr, ptr %i.l, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i32 %.0, ptr %i.as, align 1
  %i.at = and i64 %.0.in, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.at, ptr %i.au, align 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 88
  store i64 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void @g_free(ptr noundef %i.ax) #13
  %i.ay = tail call fastcc i32 @parallels_fill_used_bitmap(ptr noundef nonnull %0)
  %.not22 = icmp eq i32 %i.ay, -12
  br i1 %.not22, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8
  br label %parallels_test_data_off.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %parallels_test_data_off.exit
  %i.bf = phi ptr [ @.str.44, %bb.g ], [ @.str.45, %parallels_test_data_off.exit ]
  %i.bg = load ptr, ptr @stderr, align 8
  %i.bh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bg, i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.bf) #13 ; 0 uses
  br label %parallels_test_data_off.exit.thread

parallels_test_data_off.exit.thread:              ; preds = %bb.e, %bb.d, %.thread, %bb.h, %bb.b
  %.1 = phi i32 [ %i.k, %bb.b ], [ -12, %.thread ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @parallels_check_outside_image(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 @bdrv_co_getlength(ptr noundef %i.e) #13 ; 4 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = trunc i64 %i.f to i32
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 9                          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8              ; 3 uses
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 96       ; 3 uses
  %i.r = getelementptr i8, ptr %i.b, i64 148      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.t = and i32 %2, 2
  %.not = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.x = phi i32 [ %i.ap, %bb.h ], [ %i.p, %.lr.ph ] ; 2 uses
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %.042.us = phi i64 [ %.1.us, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %.val.us = load ptr, ptr %i.q, align 8
  %.val40.us = load i32, ptr %i.r, align 4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val.us, i64 %indvars.iv46
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = zext i32 %.val40.us to i64
  %i.ac = shl nuw nsw i64 %i.ab, 9
  %i.ad = mul i64 %i.ac, %i.aa                    ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.af = icmp slt i64 %i.ad, %i.n
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.s, align 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add i64 %i.ad, %i.ah
  %i.aj = icmp sgt i64 %i.ai, %i.f
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select.us = tail call i64 @llvm.smax.i64(i64 %.042.us, i64 %i.ad)
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ak = load ptr, ptr @stderr, align 8
  %i.al = trunc nuw i64 %indvars.iv46 to i32
  %i.am = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ak, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %i.al) #13 ; 0 uses
  %i.an = load i32, ptr %1, align 8
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %1, align 8
  %.pre49 = load i32, ptr %i.o, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph.split.us
  %i.ap = phi i32 [ %i.x, %.lr.ph.split.us ], [ %i.x, %bb.f ], [ %.pre49, %bb.g ] ; 2 uses
  %.1.us = phi i64 [ %.042.us, %.lr.ph.split.us ], [ %spec.select.us, %bb.f ], [ %.042.us, %bb.g ] ; 2 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next47, %i.aq
  br i1 %i.ar, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !19

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.as = phi i32 [ %i.bu, %bb.m ], [ %i.p, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.lr.ph ] ; 4 uses
  %.042 = phi i64 [ %.1, %bb.m ], [ 0, %.lr.ph ]  ; 3 uses
  %.val = load ptr, ptr %i.q, align 8
  %.val40 = load i32, ptr %i.r, align 4
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = zext i32 %.val40 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 9
  %i.ay = mul i64 %i.ax, %i.av                    ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.ba = icmp slt i64 %i.ay, %i.n
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %i.s, align 8
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add i64 %i.ay, %i.bc
  %i.be = icmp sgt i64 %i.bd, %i.f
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = load ptr, ptr @stderr, align 8
  %i.bg = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bf, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44, i32 noundef %i.bg) #13 ; 0 uses
  %i.bi = load i32, ptr %1, align 8
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %1, align 8
  %i.bk = load ptr, ptr %i.q, align 8
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  store i32 0, ptr %i.bl, align 4
  %i.bm = load ptr, ptr %i.u, align 8
  %i.bn = shl i32 %i.bg, 2
  %i.bo = add i32 %i.bn, 64
  %i.bp = load i32, ptr %i.v, align 8
  %i.bq = udiv i32 %i.bo, %i.bp
  %i.br = zext i32 %i.bq to i64
  tail call void @bitmap_set(ptr noundef %i.bm, i64 noundef %i.br, i64 noundef 1) #13
  %i.bs = load i32, ptr %i.w, align 4
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.w, align 4
  %.pre = load i32, ptr %i.o, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.042, i64 %i.ay)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph.split
  %i.bu = phi i32 [ %i.as, %.lr.ph.split ], [ %.pre, %bb.k ], [ %i.as, %bb.l ] ; 2 uses
  %.1 = phi i64 [ %.042, %.lr.ph.split ], [ %.042, %bb.k ], [ %spec.select, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.next, %i.bv
  br i1 %i.bw, label %.lr.ph.split, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.m, %bb.h
  %.0.lcssa = phi i64 [ %.1.us, %bb.h ], [ %.1, %bb.m ] ; 2 uses
  %i.bx = icmp eq i64 %.0.lcssa, 0
  br i1 %i.bx, label %._crit_edge.thread, label %bb.n

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = shl i64 %i.bz, 9
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ca, ptr %i.cb, align 8
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = zext i32 %i.cd to i64
  %i.cf = add nuw i64 %.0.lcssa, %i.ce            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = ashr i64 %i.cf, 9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %i.ch, ptr %i.ci, align 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread, %bb.n, %bb.b
  %.036 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.n ], [ 0, %._crit_edge.thread ]
  ret i32 %.036
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @parallels_check_leak(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 @bdrv_co_getlength(ptr noundef %i.f) #13 ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = trunc i64 %i.g to i32
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp sgt i64 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 %i.g, %i.n                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = add i64 %i.p, -1
  %i.u = add i64 %i.t, %i.s
  %i.v = sdiv i64 %i.u, %i.s                      ; 2 uses
  br i1 %3, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = and i32 %2, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr @stderr, align 8
  %i.x = and i32 %2, 1                            ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not, ptr @.str.45, ptr @.str.44
  %i.z = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull %i.y, i64 noundef %i.p) #13 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = trunc i64 %i.v to i32
  %i.ad = add i32 %i.ab, %i.ac
  store i32 %i.ad, ptr %i.aa, align 4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.x, %bb.e ]
  %.not34 = icmp eq i32 %.pre-phi, 0
  br i1 %.not34, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = load i64, ptr %i.m, align 8
  %i.ag = call i32 @bdrv_co_truncate(ptr noundef %i.ae, i64 noundef %i.af, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %3, label %bb.i, label %.thread37

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = trunc i64 %i.v to i32
  %i.al = add i32 %i.aj, %i.ak
  store i32 %i.al, ptr %i.ai, align 8
  br label %.thread37

.thread37:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread

bb.j:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.a, align 8
  call void @error_report_err(ptr noundef %i.am) #13
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.c, %.thread37, %bb.j, %bb.b
  %.3 = phi i32 [ %i.l, %bb.b ], [ %i.ag, %bb.j ], [ 0, %.thread37 ], [ 0, %bb.c ], [ 0, %bb.f ]
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @parallels_check_duplicate(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  %4 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 112
  %.val = load i64, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.d, i64 144      ; 6 uses
  %.val90 = load i32, ptr %i.h, align 8
  %i.i = shl i64 %.val, 9
  %i.j = sub i64 %i.f, %i.i
  %i.k = zext i32 %.val90 to i64                  ; 2 uses
  %i.l = sdiv i64 %i.j, %i.k                      ; 2 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.x, label %bitmap_new.exit

bitmap_new.exit:                                  ; preds = %bb.a
  %i.o = srem i64 %i.f, %i.k
  %.not = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not to i64
  %spec.select = add i64 %i.l, %i.p
  %i.q = and i64 %spec.select, 4294967295         ; 7 uses
  %i.r = add nuw nsw i64 %i.q, 63
  %i.s = lshr i64 %i.r, 6
  %i.t = tail call noalias ptr @g_malloc0_n(i64 noundef %i.s, i64 noundef 8) #15 ; 7 uses
  %i.u = load i32, ptr %i.h, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = tail call ptr @qemu_blockalign(ptr noundef nonnull %0, i64 noundef %i.v) #13 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8
  %.not144 = icmp eq i32 %i.y, 0
  br i1 %.not144, label %parallels_check_leak.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bitmap_new.exit
  %i.z = getelementptr i8, ptr %i.d, i64 96       ; 4 uses
  %i.aa = getelementptr i8, ptr %i.d, i64 148     ; 2 uses
  %i.ab = and i32 %2, 2
  %.not89 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  br i1 %.not89, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %.073140.us = phi i32 [ %.174.us, %bb.e ], [ 0, %.lr.ph ]
  %.val91.us = load ptr, ptr %i.z, align 8
  %.val92.us = load i32, ptr %i.aa, align 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val91.us, i64 %indvars.iv162
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = zext i32 %.val92.us to i64
  %i.ar = mul nuw i64 %i.ap, %i.aq                ; 2 uses
  %.mask = and i64 %i.ar, 36028797018963967
  %i.as = icmp eq i64 %.mask, 0
  br i1 %i.as, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %.val94.us = load ptr, ptr %i.c, align 8        ; 2 uses
  %i.at = getelementptr i8, ptr %.val94.us, i64 112
  %.val94.val.us = load i64, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %.val94.us, i64 144
  %.val94.val95.us = load i32, ptr %i.au, align 8
  %i.av = sub i64 %i.ar, %.val94.val.us
  %i.aw = shl i64 %i.av, 9
  %i.ax = zext i32 %.val94.val95.us to i64
  %i.ay = sdiv i64 %i.aw, %i.ax
  %i.az = and i64 %i.ay, 4294967295               ; 4 uses
  %.not106.us = icmp samesign ult i64 %i.az, %i.q
  br i1 %.not106.us, label %bb.c, label %.split.us

bb.c:                                             ; preds = %bb.b
  %i.ba = tail call i64 @find_next_bit(ptr noundef %i.t, i64 noundef %i.q, i64 noundef %i.az) #13
  %.not107.us = icmp ugt i64 %i.ba, %i.az
  br i1 %.not107.us, label %mark_used.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr @stderr, align 8
  %i.bc = trunc nuw i64 %indvars.iv162 to i32
  %i.bd = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bb, i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.45, i32 noundef %i.bc) #13 ; 0 uses
  %i.be = load i32, ptr %1, align 8
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %1, align 8
  br label %bb.e

mark_used.exit.us:                                ; preds = %bb.c
  tail call void @bitmap_set(ptr noundef %i.t, i64 noundef %i.az, i64 noundef 1) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mark_used.exit.us, %.lr.ph.split.us
  %.174.us = phi i32 [ %.073140.us, %.lr.ph.split.us ], [ 0, %mark_used.exit.us ], [ -16, %bb.d ] ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.bg = load i32, ptr %i.x, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next163, %i.bh
  br i1 %i.bi, label %.lr.ph.split.us, label %parallels_check_leak.exit, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph ] ; 6 uses
  %.0141 = phi i1 [ %.1, %bb.q ], [ false, %.lr.ph ] ; 2 uses
  %.073140 = phi i32 [ %.174, %bb.q ], [ 0, %.lr.ph ]
  %.val91 = load ptr, ptr %i.z, align 8
  %.val92 = load i32, ptr %i.aa, align 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.val91, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = zext i32 %i.bk to i64
  %i.bm = zext i32 %.val92 to i64
  %i.bn = mul nuw i64 %i.bl, %i.bm                ; 2 uses
  %i.bo = shl i64 %i.bn, 9                        ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.q, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %.val94 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.bq = getelementptr i8, ptr %.val94, i64 112
  %.val94.val = load i64, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %.val94, i64 144
  %.val94.val95 = load i32, ptr %i.br, align 8
  %i.bs = sub i64 %i.bn, %.val94.val
  %i.bt = shl i64 %i.bs, 9
  %i.bu = zext i32 %.val94.val95 to i64
  %i.bv = sdiv i64 %i.bt, %i.bu
  %i.bw = and i64 %i.bv, 4294967295               ; 4 uses
  %.not106 = icmp samesign ult i64 %i.bw, %i.q
  br i1 %.not106, label %bb.g, label %.split.us

bb.g:                                             ; preds = %bb.f
  %i.bx = call i64 @find_next_bit(ptr noundef %i.t, i64 noundef %i.q, i64 noundef %i.bw) #13
  %.not107 = icmp ugt i64 %i.bx, %i.bw
  br i1 %.not107, label %mark_used.exit, label %bb.h

mark_used.exit:                                   ; preds = %bb.g
  call void @bitmap_set(ptr noundef %i.t, i64 noundef %i.bw, i64 noundef 1) #13
  br label %bb.q

.split.us:                                        ; preds = %bb.f, %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.12, i32 noundef 843, ptr noundef nonnull @__PRETTY_FUNCTION__.parallels_check_duplicate) #16
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.by = load ptr, ptr @stderr, align 8
  %i.bz = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ca = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.by, i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.44, i32 noundef %i.bz) #13 ; 0 uses
  %i.cb = load i32, ptr %1, align 8
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %1, align 8
  %i.cd = load ptr, ptr %i.z, align 8
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  store i32 0, ptr %i.ce, align 4
  %i.cg = load ptr, ptr %i.ac, align 8
  %i.ch = shl i32 %i.bz, 2
  %i.ci = add i32 %i.ch, 64
  %i.cj = load i32, ptr %i.ad, align 8
  %i.ck = udiv i32 %i.ci, %i.cj
  %i.cl = zext i32 %i.ck to i64
  call void @bitmap_set(ptr noundef %i.cg, i64 noundef %i.cl, i64 noundef 1) #13
  %i.cm = load ptr, ptr %i.ae, align 8
  %i.cn = load i32, ptr %i.h, align 8
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.af, ptr %4, align 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %i.ag, align 8
  store ptr %i.w, ptr %i.af, align 8
  store i64 %i.co, ptr %i.ah, align 8
  call void @assert_bdrv_graph_readable() #13
  %i.cp = call i32 @bdrv_co_preadv(ptr noundef %i.cm, i64 noundef %i.bo, i64 noundef %i.co, ptr noundef nonnull %4, i32 noundef 0) #13 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %mark_used.exit99, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = load i32, ptr %i.h, align 8
  %i.cs = zext i32 %i.cr to i64
  %i.ct = mul nuw i64 %indvars.iv, %i.cs
  %i.cu = ashr i64 %i.ct, 9
  %i.cv = load i32, ptr %i.ai, align 4
  %i.cw = call i64 @allocate_clusters(ptr noundef nonnull %0, i64 noundef %i.cu, i32 noundef %i.cv, ptr noundef nonnull %i.b) ; 3 uses
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %mark_used.exit99, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = shl i64 %i.cw, 9                        ; 2 uses
  %i.cz = load ptr, ptr %i.ae, align 8
  %i.da = load i32, ptr %i.h, align 8
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.aj, ptr %3, align 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %i.ak, align 8
  store ptr %i.w, ptr %i.aj, align 8
  store i64 %i.db, ptr %i.al, align 8
  call void @assert_bdrv_graph_readable() #13
  %i.dc = call i32 @bdrv_co_pwritev(ptr noundef %i.cz, i64 noundef %i.cy, i64 noundef %i.db, ptr noundef nonnull %3, i32 noundef 0) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %mark_used.exit99, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = load i32, ptr %i.h, align 8
  %i.df = zext i32 %i.de to i64
  %i.dg = add i64 %i.cy, %i.df                    ; 2 uses
  %i.dh = load i64, ptr %i.e, align 8
  %i.di = icmp sgt i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %i.dg, ptr %i.e, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.val93 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.dj = getelementptr i8, ptr %.val93, i64 112
  %.val93.val = load i64, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %.val93, i64 144
  %.val93.val96 = load i32, ptr %i.dk, align 8
  %i.dl = sub i64 %i.cw, %.val93.val
  %i.dm = shl i64 %i.dl, 9
  %i.dn = zext i32 %.val93.val96 to i64
  %i.do = sdiv i64 %i.dm, %i.dn
  %i.dp = and i64 %i.do, 4294967295               ; 4 uses
  %.not108 = icmp samesign ult i64 %i.dp, %i.q
  br i1 %.not108, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dq = call i64 @find_next_bit(ptr noundef %i.t, i64 noundef %i.q, i64 noundef %i.dp) #13
  %.not109 = icmp ugt i64 %i.dq, %i.dp
  br i1 %.not109, label %bb.o, label %mark_used.exit99

bb.o:                                             ; preds = %bb.n
  call void @bitmap_set(ptr noundef %i.t, i64 noundef %i.dp, i64 noundef 1) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.0.i98.ph = phi i32 [ -7, %bb.m ], [ 0, %bb.o ]
  %i.dr = load i32, ptr %i.am, align 4
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.am, align 4
  br label %bb.q

bb.q:                                             ; preds = %mark_used.exit, %.lr.ph.split, %bb.p
  %.174 = phi i32 [ %.073140, %.lr.ph.split ], [ 0, %mark_used.exit ], [ %.0.i98.ph, %bb.p ] ; 2 uses
  %.1 = phi i1 [ %.0141, %.lr.ph.split ], [ %.0141, %mark_used.exit ], [ true, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dt = load i32, ptr %i.x, align 8
  %i.du = zext i32 %i.dt to i64
  %i.dv = icmp samesign ult i64 %indvars.iv.next, %i.du
  br i1 %i.dv, label %.lr.ph.split, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.q
  br i1 %.1, label %bb.r, label %parallels_check_leak.exit

bb.r:                                             ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call i64 @bdrv_co_getlength(ptr noundef %i.dy) #13 ; 3 uses
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8
  %i.ee = trunc i64 %i.dz to i32
  br label %parallels_check_leak.exit

bb.t:                                             ; preds = %bb.r
  %i.ef = load i64, ptr %i.e, align 8             ; 2 uses
  %i.eg = icmp sle i64 %i.dz, %i.ef
  %.pre.i = and i32 %2, 1
  %.not34.i = icmp eq i32 %.pre.i, 0
  %or.cond = or i1 %.not34.i, %i.eg
  br i1 %or.cond, label %parallels_check_leak.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.eh = load ptr, ptr %i.dw, align 8
  %i.ei = call i32 @bdrv_co_truncate(ptr noundef %i.eh, i64 noundef %i.ef, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, -1
  br i1 %i.ej, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %parallels_check_leak.exit

bb.w:                                             ; preds = %bb.u
  %i.ek = load ptr, ptr %i.a, align 8
  call void @error_report_err(ptr noundef %i.ek) #13
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %parallels_check_leak.exit

parallels_check_leak.exit:                        ; preds = %bb.e, %bitmap_new.exit, %bb.w, %bb.v, %bb.t, %bb.s, %._crit_edge, %mark_used.exit99
  %.2 = phi i32 [ %.3, %mark_used.exit99 ], [ %.174, %._crit_edge ], [ %i.ee, %bb.s ], [ %i.ei, %bb.w ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bitmap_new.exit ], [ %.174.us, %bb.e ]
  call void @g_free(ptr noundef %i.w) #13
  call void @g_free(ptr noundef %i.t) #13
  br label %bb.x

mark_used.exit99:                                 ; preds = %bb.n, %bb.j, %bb.i, %bb.h
  %.3 = phi i32 [ %i.dc, %bb.j ], [ %i.cp, %bb.h ], [ %i.cp, %bb.i ], [ -16, %bb.n ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 8
  %i.er = load ptr, ptr %i.z, align 8
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv
  store i32 %i.cf, ptr %i.es, align 4
  br label %parallels_check_leak.exit

bb.x:                                             ; preds = %bb.a, %parallels_check_leak.exit
  %.077 = phi i32 [ %.2, %parallels_check_leak.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %.077
}

declare i32 @bdrv_co_flush(ptr noundef) #1

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @bdrv_co_nb_sectors(ptr noundef) #1

declare i64 @bdrv_co_getlength(ptr noundef) #1

declare void @error_report_err(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
