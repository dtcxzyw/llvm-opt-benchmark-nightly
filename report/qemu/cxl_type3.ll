Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cxl_type3?download=true
inline.NumInlined: 173
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ct3_clear_region_block_backed:bb.a
  %i.c = sub i64 %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = udiv i64 %i.c, %i.e
  %i.g = udiv i64 %2, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.i = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.i(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.15, i32 noundef 56) #10, !inline_history !0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @bitmap_clear(ptr noundef %i.k, i64 noundef %i.f, i64 noundef %i.g) #10
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.15, i32 noundef 56) #10
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %glib_autoptr_cleanup_QemuLockable.exit
  ret void
}

declare void @bitmap_clear(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @cxl_type3_read(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef 802, ptr noundef nonnull @__func__.CXL_TYPE3) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8
  %i.d = call fastcc i32 @cxl_type3_hpa_to_as_and_dpa(ptr noundef %i.c, i64 noundef %1, i32 noundef %3, ptr noundef %i.b, ptr noundef %i.a)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 19928
  %.val = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val, 12
  %i.g = icmp eq i64 %i.f, 12
  %i.h = zext i32 %3 to i64                       ; 2 uses
  br i1 %i.g, label %bb.c, label %address_space_read.exit

bb.c:                                             ; preds = %bb.b
  tail call void @qemu_guest_getrandom_nofail(ptr noundef %2, i64 noundef %i.h) #10
  br label %bb.d

address_space_read.exit:                          ; preds = %bb.b
  %i.i = load i64, ptr %i.a, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = tail call i32 @address_space_read_full(ptr noundef %i.j, i64 noundef %i.i, i64 %4, ptr noundef %2, i64 noundef range(i64 0, 4294967296) %i.h) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %address_space_read.exit, %bb.c
  %.0 = phi i32 [ %i.k, %address_space_read.exit ], [ 0, %bb.c ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -22, 1) i32 @cxl_type3_hpa_to_as_and_dpa(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @host_memory_backend_get_memory(ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.d = tail call i64 @memory_region_size(ptr noundef %i.c) #10
  %i.e = icmp ne ptr %i.c, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.045 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ] ; 2 uses
  %.042 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.g = load ptr, ptr %i.f, align 16             ; 2 uses
  %.not52 = icmp eq ptr %i.g, null
  br i1 %.not52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @host_memory_backend_get_memory(ptr noundef nonnull %i.g) #10 ; 2 uses
  %i.i = tail call i64 @memory_region_size(ptr noundef %i.h) #10
  %i.j = icmp ne ptr %i.h, null
  %i.k = or i1 %.045, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.044 = phi i1 [ %i.k, %bb.d ], [ %.045, %bb.c ] ; 2 uses
  %.041 = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7101296
  %i.m = load ptr, ptr %i.l, align 16             ; 2 uses
  %.not53 = icmp eq ptr %i.m, null
  br i1 %.not53, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.n = tail call ptr @host_memory_backend_get_memory(ptr noundef nonnull %i.m) #10 ; 2 uses
  %i.o = tail call i64 @memory_region_size(ptr noundef %i.n) #10
  %i.p = icmp ne ptr %i.n, null
  %i.q = or i1 %.044, %i.p
  br i1 %i.q, label %bb.g, label %cxl_type3_dpa.exit.thread

bb.f:                                             ; preds = %bb.e
  br i1 %.044, label %bb.g, label %cxl_type3_dpa.exit.thread

bb.g:                                             ; preds = %.split, %bb.f
  %.056 = phi i64 [ %i.o, %.split ], [ 0, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 9192
  %.val90.i = load i32, ptr %i.r, align 8
  %i.s = and i32 %.val90.i, 15
  %i.t = tail call i32 @cxl_decoder_count_dec(i32 noundef %i.s) #10 ; 2 uses
  %.not102.i = icmp eq i32 %i.t, 0
  br i1 %.not102.i, label %cxl_type3_dpa.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 9208
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 9212
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9216
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 9220
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 9228
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9232
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9224
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %.lr.ph.i
  %.07399.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cd, %bb.n ] ; 2 uses
  %.07498.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cc, %bb.n ]
  %i.ab = shl i32 %.07399.i, 3
  %i.ac = sext i32 %i.ab to i64                   ; 7 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ac
  %.val87.i = load i32, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ac
  %.val86.i = load i32, ptr %i.ae, align 1
  %i.af = zext i32 %.val86.i to i64
  %i.ag = shl nuw i64 %i.af, 32
  %i.ah = and i32 %.val87.i, -268435456
  %i.ai = zext i32 %i.ah to i64
  %i.aj = or disjoint i64 %i.ag, %i.ai            ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ac
  %.val85.i = load i32, ptr %i.ak, align 1
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  %.val84.i = load i32, ptr %i.al, align 1
  %i.am = zext i32 %.val84.i to i64
  %i.an = shl nuw i64 %i.am, 32
  %i.ao = and i32 %.val85.i, -268435456
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add i64 %.07498.i, %i.ap
  %i.ar = add i64 %i.aq, %i.an                    ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  %.val.i = load i32, ptr %i.as, align 1          ; 3 uses
  %i.at = lshr i32 %.val.i, 4
  %i.au = and i32 %i.at, 15                       ; 5 uses
  %i.av = and i32 %.val.i, 1024
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %cxl_type3_dpa.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ac
  %.val88.i = load i32, ptr %i.aw, align 1
  %i.ax = zext i32 %.val88.i to i64
  %i.ay = shl nuw i64 %i.ax, 32
  %i.az = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ac
  %.val89.i = load i32, ptr %i.az, align 1
  %i.ba = and i32 %.val89.i, -268435456
  %i.bb = zext i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.ay, %i.bb            ; 2 uses
  %i.bd = sub i64 %1, %i.bc                       ; 4 uses
  %i.be = icmp uge i64 %1, %i.bc
  %.not83.i = icmp ult i64 %i.bd, %i.aj
  %or.cond.i = select i1 %i.be, i1 %.not83.i, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = trunc nuw nsw i32 %i.au to i8
  %i.bg = tail call i32 @cxl_interleave_ways_dec(i8 noundef zeroext %i.bf, ptr noundef nonnull @error_fatal) #10 ; 2 uses
  %.not94.i = icmp eq i32 %i.bg, 0
  br i1 %.not94.i, label %cxl_type3_dpa.exit.thread, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bh = and i32 %.val.i, 15                     ; 3 uses
  %i.bi = icmp samesign ult i32 %i.au, 8
  %i.bj = add nuw nsw i32 %i.bh, 8                ; 2 uses
  %i.bk = sub nuw nsw i32 56, %i.bh
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 -1, %i.bl
  %i.bn = and i64 %i.bd, %i.bm
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = add nuw nsw i32 %i.bj, %i.au
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nsw i64 -1, %i.bp
  %i.br = and i64 %i.bd, %i.bq
  %i.bs = zext nneg i32 %i.au to i64
  %i.bt = lshr i64 %i.br, %i.bs
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bu = add nuw nsw i32 %i.au, %i.bh
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = lshr i64 %i.bd, %i.bv
  %i.bx = udiv i64 %i.bw, 3
  %i.by = zext nneg i32 %i.bj to i64
  %i.bz = shl i64 %i.bx, %i.by
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ca = sext i32 %i.bg to i64
  %i.cb = udiv i64 %i.aj, %i.ca
  %i.cc = add i64 %i.cb, %i.ar
  %i.cd = add nuw i32 %.07399.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cd, %i.t
  br i1 %exitcond.not.i, label %cxl_type3_dpa.exit.thread, label %bb.h, !llvm.loop !14

bb.o:                                             ; preds = %bb.m, %bb.l
  %.sink.i = phi i64 [ %i.bz, %bb.m ], [ %i.bt, %bb.l ]
  %i.ce = or i64 %.sink.i, %i.bn
  %storemerge.i = add i64 %i.ce, %i.ar            ; 6 uses
  store i64 %storemerge.i, ptr %4, align 8
  %i.cf = add i64 %.041, %.042                    ; 3 uses
  %i.cg = add i64 %.056, %i.cf
  %.not54 = icmp ult i64 %storemerge.i, %i.cg
  br i1 %.not54, label %bb.p, label %cxl_type3_dpa.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ch = icmp ult i64 %storemerge.i, %.042
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3936
  store ptr %i.ci, ptr %3, align 8
  br label %cxl_type3_dpa.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.cj = icmp ult i64 %storemerge.i, %i.cf
  br i1 %i.cj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store ptr %i.ck, ptr %3, align 8
  %i.cl = load i64, ptr %4, align 8
  %i.cm = sub i64 %i.cl, %.042
  store i64 %i.cm, ptr %4, align 8
  br label %cxl_type3_dpa.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.cn = zext i32 %2 to i64                      ; 2 uses
  %i.co = tail call ptr @cxl_find_dc_region(ptr noundef nonnull %0, i64 noundef %storemerge.i, i64 noundef %i.cn) #10 ; 5 uses
  %.not.i55 = icmp eq ptr %i.co, null
  br i1 %.not.i55, label %cxl_type3_dpa.exit.thread, label %ct3_test_region_block_backed.exit

ct3_test_region_block_backed.exit:                ; preds = %bb.t
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = sub i64 %storemerge.i, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cs = load i64, ptr %i.cr, align 8            ; 3 uses
  %i.ct = udiv i64 %i.cq, %i.cs                   ; 2 uses
  %i.cu = add nsw i64 %i.cn, -1
  %i.cv = add i64 %i.cu, %i.cs
  %i.cw = udiv i64 %i.cv, %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 56 ; 2 uses
  %i.cy = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.cy(ptr noundef nonnull %i.cx, ptr noundef nonnull @.str.15, i32 noundef 56) #10, !inline_history !1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = add i64 %i.cw, %i.ct                    ; 2 uses
  %i.dc = tail call i64 @find_next_zero_bit(ptr noundef %i.da, i64 noundef %i.db, i64 noundef %i.ct) #10
  %i.dd = icmp eq i64 %i.dc, %i.db
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.cx, ptr noundef nonnull @.str.15, i32 noundef 56) #10
  br i1 %i.dd, label %bb.u, label %cxl_type3_dpa.exit.thread

bb.u:                                             ; preds = %ct3_test_region_block_backed.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 7101304
  store ptr %i.de, ptr %3, align 8
  %i.df = load i64, ptr %4, align 8
  %i.dg = sub i64 %i.df, %i.cf
  store i64 %i.dg, ptr %4, align 8
  br label %cxl_type3_dpa.exit.thread

cxl_type3_dpa.exit.thread:                        ; preds = %bb.n, %bb.h, %bb.j, %bb.t, %bb.g, %.split, %bb.q, %bb.u, %bb.s, %ct3_test_region_block_backed.exit, %bb.o, %bb.f
  %.046 = phi i32 [ -19, %bb.t ], [ -19, %ct3_test_region_block_backed.exit ], [ -22, %bb.o ], [ -19, %bb.f ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.q ], [ -19, %.split ], [ -22, %bb.g ], [ -22, %bb.j ], [ -22, %bb.h ], [ -22, %bb.n ]
  ret i32 %.046
}

declare void @qemu_guest_getrandom_nofail(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @cxl_type3_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef 802, ptr noundef nonnull @__func__.CXL_TYPE3) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8
  %i.e = call fastcc i32 @cxl_type3_hpa_to_as_and_dpa(ptr noundef %i.d, i64 noundef %1, i32 noundef %3, ptr noundef %i.c, ptr noundef %i.b)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 19928
  %.val = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val, 12
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = load i64, ptr %i.b, align 8
  %i.k = zext i32 %3 to i64
  %i.l = call i32 @address_space_write(ptr noundef %i.i, i64 noundef %i.j, i64 %4, ptr noundef nonnull %i.a, i64 noundef %i.k) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ 1, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.0
}

declare i32 @address_space_write(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cxl_set_poison_list_overflowed(ptr noundef initializes((7101068, 7101069)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7101068
  store i8 1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.c = tail call i64 @cxl_device_get_timestamp(ptr noundef nonnull %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7101072
  store i64 %i.c, ptr %i.d, align 16
  ret void
}

declare i64 @cxl_device_get_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @cxl_clear_poison_list_overflowed(ptr nofree noundef writeonly captures(none) initializes((7101068, 7101069), (7101072, 7101080)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7101068
  store i8 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7101072
  store i64 0, ptr %i.b, align 16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qmp_cxl_inject_poison(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_resolve_path(ptr noundef %0, ptr noundef null) #10 ; 3 uses
  %i.b = and i64 %2, 63
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 1499, ptr noundef nonnull @__func__.qmp_cxl_inject_poison, ptr noundef nonnull @.str.1) #10
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %1, 63
  %.not59 = icmp eq i64 %i.c, 0
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 1503, ptr noundef nonnull @__func__.qmp_cxl_inject_poison, ptr noundef nonnull @.str.2) #10
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %.not60 = icmp eq ptr %i.a, null
  br i1 %.not60, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 1507, ptr noundef nonnull @__func__.qmp_cxl_inject_poison, ptr noundef nonnull @.str.3) #10
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.d = tail call ptr @object_dynamic_cast(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4) #10
  %.not61 = icmp eq ptr %i.d, null
  br i1 %.not61, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 1511, ptr noundef nonnull @__func__.qmp_cxl_inject_poison, ptr noundef nonnull @.str.5) #10
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef 802, ptr noundef nonnull @__func__.CXL_TYPE3) #10 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 7101056 ; 4 uses
  %.05666 = load ptr, ptr %i.f, align 8           ; 2 uses
  %.not6267 = icmp eq ptr %.05666, null
  br i1 %.not6267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.g = add i64 %2, %1
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.h = getelementptr inbounds nuw i8, ptr %.05668, i64 24
  %.056 = load ptr, ptr %i.h, align 8             ; 2 uses
end_hunk_0
