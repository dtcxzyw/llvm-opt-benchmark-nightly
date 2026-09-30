Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Fsuper?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@H5F__super_ext_open:bb.a
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5O_loc_reset(ptr noundef %2) #6 ; 0 uses
  store ptr %0, ptr %2, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.h, align 8, !tbaa !18
  %i.i = tail call i32 @H5O_open(ptr noundef nonnull %2) #6
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.l = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !19
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_ext_open, i32 noundef 159, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @H5O_loc_reset(ptr noundef) local_unnamed_addr #2

declare i32 @H5O_open(ptr noundef) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5F__super_ext_close(ptr nofree noundef captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.b = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.l, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @H5AC_set_ring(i32 noundef 4, ptr noundef nonnull %i.a) #6
  %i.h = call i32 @H5O_link(ptr noundef %1, i32 noundef 1) #6
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.k = load i64, ptr @H5E_LINKCOUNT_g, align 8, !tbaa !19
  %i.l = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_ext_close, i32 noundef 194, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.m = call i32 @H5O_dec_rc_by_loc(ptr noundef %1) #6
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.p = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !19
  %i.q = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_ext_close, i32 noundef 198, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !26
  %i.u = call i32 @H5O_close(ptr noundef %1, ptr noundef null) #6
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.x = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !19
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_ext_close, i32 noundef 204, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.r, align 8, !tbaa !26
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !20  ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @H5AC_set_ring(i32 noundef %i.ab, ptr noundef null) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  %.1 = phi i32 [ %.0, %bb.k ], [ %.0, %bb.j ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1
}

declare void @H5AC_set_ring(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5O_link(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5O_dec_rc_by_loc(ptr noundef) local_unnamed_addr #2

declare i32 @H5O_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5F__super_read(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.H5F_superblock_cache_ud_t, align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.H5F_drvrinfo_cache_ud_t, align 8 ; 6 uses
  %5 = alloca %struct.H5O_loc_t, align 8          ; 15 uses
  %6 = alloca %struct.H5O_btreek_t, align 8       ; 7 uses
  %7 = alloca %struct.H5O_drvinfo_t, align 8      ; 7 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %8 = alloca %struct.H5O_fsinfo_t, align 8       ; 25 uses
  %9 = alloca %struct.H5O_mdci_t, align 8         ; 6 uses
  %10 = alloca %struct.H5O_drvinfo_t, align 8     ; 7 uses
  %i.f = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 -1, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i64 -1, ptr %i.d, align 8, !tbaa !19
  call void @H5AC_tag(i64 noundef 3, ptr noundef nonnull %i.d) #6
  %i.g = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = xor i1 %i.j, true
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %bb.b, label %.critedge, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 28 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !48
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.q = call i32 @H5FD_locate_signature(ptr noundef %i.p, ptr noundef nonnull %i.b) #6
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.t = load i64, ptr @H5E_NOTHDF5_g, align 8, !tbaa !19
  %i.u = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 382, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.6) #6 ; 0 uses
  br label %bb.fq

bb.d:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 -1, label %bb.e
    i64 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.x = load i64, ptr @H5E_NOTHDF5_g, align 8, !tbaa !19
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 388, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %bb.fq

bb.f:                                             ; preds = %bb.d
  %i.z = call i32 @H5F__set_base_addr(ptr noundef nonnull %0, i64 noundef %i.v) #6
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.ac = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !19
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 394, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.8) #6 ; 0 uses
  br label %bb.fq

bb.h:                                             ; preds = %bb.d, %bb.f
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !27  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !50
  %11 = shl i32 %i.ag, 7
  %12 = and i32 %11, 128                          ; 2 uses
  %spec.select = xor i32 %12, 1152                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1360
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !51
  %i.aj = call ptr @H5I_object(i64 noundef %i.ai) #6 ; 17 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.am = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !19
  %i.an = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 411, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.9) #6 ; 0 uses
  br label %bb.fq

bb.j:                                             ; preds = %bb.h
  %i.ao = call i32 @H5F__set_eoa(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 48) #6
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.ar = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !19
  %i.as = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 415, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.10) #6 ; 0 uses
  br label %bb.fq

bb.l:                                             ; preds = %bb.j
  store ptr %0, ptr %3, align 8, !tbaa !96
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ay = trunc i64 %i.aw to i8
  %i.az = lshr i8 %i.ay, 5
  %i.ba = and i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 0, ptr %i.bb, align 4, !tbaa !98
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bd = call i32 @H5P_get(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.bc) #6
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.bg = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !19
  %i.bh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 422, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.12) #6 ; 0 uses
  br label %bb.fq

bb.n:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store i64 -1, ptr %i.bi, align 8, !tbaa !99
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 0, ptr %i.bj, align 8, !tbaa !100
  call void @H5AC_set_ring(i32 noundef 5, ptr noundef nonnull %i.a) #6
  %i.bk = call ptr @H5AC_protect(ptr noundef nonnull %0, ptr noundef nonnull @H5AC_SUPERBLOCK, i64 noundef 0, ptr noundef nonnull %3, i32 noundef %spec.select) #6 ; 43 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.bn = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 431, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.13) #6 ; 0 uses
  br label %bb.fq

bb.p:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.m, align 8, !tbaa !27  ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !50
  %i.bs = and i32 %i.br, 32
  %.not320 = icmp eq i32 %i.bs, 0
  br i1 %.not320, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 248
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !63 ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 3
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.bx = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !19
  %i.by = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 450, i64 noundef %i.bw, i64 noundef %i.bx, ptr noundef nonnull @.str.14) #6 ; 0 uses
  br label %bb.fq

bb.s:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 1432
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !64
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr @HDF5_superblock_ver_bounds, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !20
  %i.ce = icmp ugt i32 %i.bu, %i.cd
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.cg = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !19
  %i.ch = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 452, i64 noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str.15) #6 ; 0 uses
  br label %bb.fq

bb.u:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 1428 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !65
  %spec.select345 = call i32 @llvm.smax.i32(i32 %i.cj, i32 2)
  store i32 %spec.select345, ptr %i.ci, align 4, !tbaa !65
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %i.ck = call i32 @H5AC_pin_protected_entry(ptr noundef nonnull %i.bk) #6
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cm = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.cn = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !19
  %i.co = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 458, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.16) #6 ; 0 uses
  br label %bb.fq

bb.x:                                             ; preds = %bb.v
  %13 = icmp ne i32 %12, 0                        ; 7 uses
  %i.cp = load i8, ptr %i.ax, align 8, !range !10
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond7 = select i1 %13, i1 %i.cq, i1 false
  %i.cr = load i8, ptr %i.bj, align 8, !range !10
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond10 = select i1 %or.cond7, i1 %i.cs, i1 false
  %spec.select346 = select i1 %or.cond10, i32 1026, i32 1024 ; 2 uses
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !19  ; 5 uses
  %.not321 = icmp ne i64 %i.ct, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 272
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, %.pre
  %or.cond = select i1 %.not321, i1 %i.cu, i1 false
  br i1 %or.cond, label %bb.aa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bk, i64 272
  %.neg = sub i64 %i.ct, %.pre
  %i.cw = load i64, ptr %i.bi, align 8, !tbaa !99
  %i.cx = add i64 %.neg, %i.cw
  store i64 %i.cx, ptr %i.bi, align 8, !tbaa !99
  store i64 %i.ct, ptr %i.cv, align 8, !tbaa !66
  %i.cy = call i32 @H5F__set_base_addr(ptr noundef nonnull %0, i64 noundef %i.ct) #6
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge
  %i.da = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.db = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !19
  %i.dc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 485, i64 noundef %i.da, i64 noundef %i.db, ptr noundef nonnull @.str.8) #6 ; 0 uses
  br label %bb.fq

bb.z:                                             ; preds = %._crit_edge
  %spec.select347 = select i1 %13, i32 1026, i32 1024
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z
  %.1286 = phi i32 [ %spec.select346, %bb.x ], [ %spec.select347, %bb.z ] ; 23 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bk, i64 248 ; 5 uses
  %i.de = call i32 @H5P_set(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.dd) #6
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dg = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.dh = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !19
  %i.di = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 494, i64 noundef %i.dg, i64 noundef %i.dh, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %bb.fq

bb.ac:                                            ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bk, i64 252
  %i.dk = call i32 @H5P_set(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.dj) #6
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.dn = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !19
  %i.do = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 496, i64 noundef %i.dm, i64 noundef %i.dn, ptr noundef nonnull @.str.20) #6 ; 0 uses
  br label %bb.fq

bb.ae:                                            ; preds = %bb.ac
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bk, i64 253
  %i.dq = call i32 @H5P_set(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.dp) #6
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ds = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.dt = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !19
  %i.du = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 498, i64 noundef %i.ds, i64 noundef %i.dt, ptr noundef nonnull @.str.22) #6 ; 0 uses
  br label %bb.fq

bb.ag:                                            ; preds = %bb.ae
  %i.dv = load i32, ptr %i.dd, align 8, !tbaa !63
  %i.dw = icmp ult i32 %i.dv, 2
  br i1 %i.dw, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.dx = call i32 @H5P_set(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.bb) #6
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.ea = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !19
  %i.eb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 507, i64 noundef %i.dz, i64 noundef %i.ea, ptr noundef nonnull @.str.24) #6 ; 0 uses
  br label %bb.fq

bb.aj:                                            ; preds = %bb.ah
  %i.ec = load i32, ptr %i.bb, align 4, !tbaa !98
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !67
  %i.ee = call i32 @H5P_set(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.bc) #6
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eg = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.eh = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !19
  %i.ei = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 512, i64 noundef %i.eg, i64 noundef %i.eh, ptr noundef nonnull @.str.25) #6 ; 0 uses
  br label %bb.fq

bb.al:                                            ; preds = %bb.aj
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bk, i64 260
  %i.ek = load i64, ptr %i.bc, align 8
  store i64 %i.ek, ptr %i.ej, align 4
  br label %bb.aq

bb.am:                                            ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %i.bk, i64 260
  %i.em = call i32 @H5P_get(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.el) #6
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eo = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.ep = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !19
  %i.eq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 519, i64 noundef %i.eo, i64 noundef %i.ep, ptr noundef nonnull @.str.12) #6 ; 0 uses
  br label %bb.fq

bb.ao:                                            ; preds = %bb.am
  %i.er = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  %i.es = call i32 @H5P_get(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.er) #6
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eu = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.ev = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !19
  %i.ew = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 521, i64 noundef %i.eu, i64 noundef %i.ev, ptr noundef nonnull @.str.12) #6 ; 0 uses
  br label %bb.fq

bb.aq:                                            ; preds = %bb.ao, %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bk, i64 272 ; 3 uses
  %i.ey = call i32 @H5P_set(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.ex) #6
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fa = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.fb = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !19
  %i.fc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 529, i64 noundef %i.fa, i64 noundef %i.fb, ptr noundef nonnull @.str.27) #6 ; 0 uses
  br label %bb.fq

bb.as:                                            ; preds = %bb.aq
  %i.fd = call i32 @H5P_exist_plist(ptr noundef %1, ptr noundef nonnull @.str.28) #6
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ff = call i32 @H5P_get(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.c) #6
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fh = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.fi = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !19
  %i.fj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 558, i64 noundef %i.fh, i64 noundef %i.fi, ptr noundef nonnull @.str.29) #6 ; 0 uses
  br label %bb.fq

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.fk = load ptr, ptr %i.m, align 8, !tbaa !27  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !50
  %i.fn = and i32 %i.fm, 64
  %.not322 = icmp eq i32 %i.fn, 0
  br i1 %.not322, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fo = load i32, ptr %i.dd, align 8, !tbaa !63
  %i.fp = icmp ugt i32 %i.fo, 2
  br i1 %i.fp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i8 1, ptr %i.c, align 1, !tbaa !9
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %i.fq = load i8, ptr %i.c, align 1, !tbaa !9, !range !10, !noundef !11
  %i.fr = trunc nuw i8 %i.fq to i1
  %.not = xor i1 %i.fr, true
  %or.cond12 = and i1 %2, %.not
  br i1 %or.cond12, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.fs = load ptr, ptr %i.fk, align 8, !tbaa !49
  %i.ft = call i64 @H5FD_get_eof(ptr noundef %i.fs, i32 noundef 0) #6 ; 3 uses
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fv = load i64, ptr @H5E_FILE_g, align 8, !tbaa !19
  %i.fw = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !19
  %i.fx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5F__super_read, i32 noundef 570, i64 noundef %i.fv, i64 noundef %i.fw, ptr noundef nonnull @.str.30) #6 ; 0 uses
  br label %bb.fq

bb.bb:                                            ; preds = %bb.az
  %i.fy = load i64, ptr %i.ex, align 8, !tbaa !66 ; 2 uses
  %i.fz = add i64 %i.fy, %i.ft
end_hunk_0
