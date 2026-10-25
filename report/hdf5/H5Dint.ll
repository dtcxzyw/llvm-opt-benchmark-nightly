Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dint?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
begin_hunk_0_@H5D_mult_refresh_reopen:bb.a
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ao = load i64, ptr @H5E_CANTRESET_g, align 8, !tbaa !15
  %i.ap = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_mult_refresh_reopen, i32 noundef 2251, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.45) #11 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 248
  %i.as = tail call ptr @H5O_msg_read(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull %i.ar) #11
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.av = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.aw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_mult_refresh_reopen, i32 noundef 2255, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.78) #11 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.n, %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ], [ 0, %bb.n ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

declare ptr @H5S_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5D__cache_dataspace_info(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 2840
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 3352
  %i.m = tail call i32 @H5S_get_simple_extent_dims(ptr noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #11 ; 4 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.p = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__cache_dataspace_info, i32 noundef 633, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.264) #11 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2836
  store i32 %i.m, ptr %i.s, align 4, !tbaa !108
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2840
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 3096
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  %spec.store.select.i = zext i1 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.ab, %bb.f ] ; 4 uses
  %i.y = icmp ne i64 %.0.i, 0                     ; 2 uses
  %i.z = icmp ult i64 %.0.i, %i.w
  %i.aa = and i1 %i.y, %i.z
  %i.ab = shl i64 %.0.i, 1
  br i1 %i.aa, label %bb.f, label %H5VM_power2up.exit, !llvm.loop !0

H5VM_power2up.exit:                               ; preds = %bb.f
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %H5VM_power2up.exit
  %i.ac = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ad = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__cache_dataspace_info, i32 noundef 641, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.112) #11 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %H5VM_power2up.exit
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store i64 %.0.i, ptr %i.af, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !140

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.g, %bb.a, %bb.c
  %.2 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.h ]
  ret i32 %.2
}

declare ptr @H5O_msg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @H5D_oloc(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @H5D_nameof(ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = select i1 %.not, ptr null, ptr %i.a
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D__alloc_storage(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr @H5D_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread.thread, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = tail call i64 @H5S_get_simple_extent_npoints(ptr noundef %i.l) #11
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !54   ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.q = load i64, ptr %i.p, align 8, !tbaa !87
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %.thread.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 248 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !71
  switch i32 %i.s, label %bb.u [
    i32 1, label %bb.e
    i32 2, label %bb.j
    i32 0, label %bb.m
    i32 3, label %.thread.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 2440
  %i.y = tail call zeroext i1 %i.w(ptr noundef nonnull %i.x) #11
  br i1 %i.y, label %.thread.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 2448 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 2456
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !56
  %.not69 = icmp eq i64 %i.ab, 0
  br i1 %.not69, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 @H5D__contig_alloc(ptr noundef %i.h, ptr noundef nonnull %i.z) #11
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %.thread75

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr @H5E_IO_g, align 8, !tbaa !15
  %i.af = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.ag = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__alloc_storage, i32 noundef 2338, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.79) #11 ; 0 uses
  br label %.thread.thread

bb.i:                                             ; preds = %bb.f
  store i64 -1, ptr %i.z, align 8, !tbaa !56
  br label %.thread

bb.j:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !59
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 2440
  %i.am = tail call zeroext i1 %i.ak(ptr noundef nonnull %i.al) #11
  br i1 %i.am, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = tail call i32 @H5D__chunk_create(ptr noundef nonnull %0) #11
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %.thread75

bb.l:                                             ; preds = %bb.k
  %i.ap = load i64, ptr @H5E_IO_g, align 8, !tbaa !15
  %i.aq = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.ar = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__alloc_storage, i32 noundef 2355, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.80) #11 ; 0 uses
  br label %.thread.thread

bb.m:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 2448 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 2464 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.n, label %.thread.thread

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 2456
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !56 ; 3 uses
  %.not68 = icmp eq i64 %i.ax, 0
  br i1 %.not68, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #13 ; 3 uses
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !56
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !15
  %i.bb = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !15
  %i.bc = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__alloc_storage, i32 noundef 2384, i64 noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull @.str.81) #11 ; 0 uses
  br label %.thread.thread

bb.q:                                             ; preds = %bb.o
  br i1 %2, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ay, i8 0, i64 %i.ax, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i8 1, ptr %i.as, align 8, !tbaa !56
  br label %.thread75

bb.t:                                             ; preds = %bb.n
  store i8 0, ptr %i.as, align 8, !tbaa !56
  br label %.thread.thread

bb.u:                                             ; preds = %bb.d
  %i.bd = load i64, ptr @H5E_IO_g, align 8, !tbaa !15
  %i.be = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !15
  %i.bf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__alloc_storage, i32 noundef 2413, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.66) #11 ; 0 uses
  br label %.thread.thread

bb.v:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !74
  %4 = icmp eq i32 %i.bi, 1
  %5 = icmp eq i32 %1, 2
  %or.cond = and i1 %5, %4
  br i1 %or.cond, label %.thread75, label %.thread.thread

.thread75:                                        ; preds = %bb.k, %bb.g, %bb.s, %bb.v
  %.16078 = phi i1 [ false, %bb.v ], [ true, %bb.g ], [ false, %bb.s ], [ true, %bb.k ] ; 3 uses
  %i.bj = load i32, ptr %i.r, align 8, !tbaa !71
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.thread75
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !74
  %i.bo = icmp eq i32 %i.bn, 3
  %i.bp = icmp eq i32 %1, 3
  %or.cond3 = and i1 %i.bp, %i.bo
  br i1 %or.cond3, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = tail call fastcc i32 @H5D__init_storage(ptr noundef nonnull %0, i1 noundef zeroext %2, ptr noundef %3)
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bs = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.bt = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.bu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__alloc_storage, i32 noundef 2433, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.82) #11 ; 0 uses
  br label %.thread.thread

bb.z:                                             ; preds = %.thread75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = call i32 @H5P_is_fill_value_defined(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.a) #11
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bz = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !15
  %i.ca = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.cb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__alloc_storage, i32 noundef 2440, i64 noundef %i.bz, i64 noundef %i.ca, ptr noundef nonnull @.str.83) #11 ; 0 uses
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 132
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !141 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = icmp eq i32 %i.ce, 2
  %i.ch = load i32, ptr %i.a, align 4
  %i.ci = icmp eq i32 %i.ch, 2
  %or.cond5 = select i1 %i.cg, i1 %i.ci, i1 false
  br i1 %or.cond5, label %bb.ad, label %.thread80

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cj = call fastcc i32 @H5D__init_storage(ptr noundef nonnull %0, i1 noundef zeroext %2, ptr noundef %3)
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %bb.ae, label %.thread80

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.cm = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.cn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__alloc_storage, i32 noundef 2449, i64 noundef %i.cl, i64 noundef %i.cm, ptr noundef nonnull @.str.82) #11 ; 0 uses
  br label %bb.af

.thread80:                                        ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

bb.af:                                            ; preds = %bb.ae, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread.thread

.thread:                                          ; preds = %bb.i, %.thread80, %bb.x, %bb.w
  %.16072 = phi i1 [ %.16078, %bb.w ], [ %.16078, %bb.x ], [ %.16078, %.thread80 ], [ true, %bb.i ]
  %i.co = icmp ne i32 %1, 0
  %or.cond7 = and i1 %i.co, %.16072
  br i1 %or.cond7, label %bb.ag, label %.thread.thread

bb.ag:                                            ; preds = %.thread
  %i.cp = call i32 @H5D__mark(ptr noundef nonnull %0, i32 noundef 2)
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.ah, label %.thread.thread

bb.ah:                                            ; preds = %bb.ag
  %i.cr = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.cs = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.ct = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__alloc_storage, i32 noundef 2463, i64 noundef %i.cr, i64 noundef %i.cs, ptr noundef nonnull @.str.84) #11 ; 0 uses
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.v, %bb.e, %bb.d, %bb.t, %bb.m, %bb.af, %bb.a, %bb.b, %bb.c, %bb.ag, %.thread, %bb.ah, %bb.y, %bb.u, %bb.p, %bb.l, %bb.h
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ -1, %bb.u ], [ -1, %bb.ah ], [ 0, %bb.ag ], [ 0, %.thread ], [ -1, %bb.y ], [ -1, %bb.af ], [ -1, %bb.h ], [ -1, %bb.l ], [ -1, %bb.p ], [ 0, %bb.a ], [ 0, %bb.m ], [ 0, %bb.t ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.v ]
  ret i32 %.2
}

declare i64 @H5S_get_simple_extent_npoints(ptr noundef) local_unnamed_addr #2

declare i32 @H5D__contig_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5D__chunk_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5D__init_storage(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i64], align 16              ; 4 uses
  %i.b = load i8, ptr @H5D_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.o, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.k = load i32, ptr %i.j, align 8, !tbaa !55
  switch i32 %i.k, label %bb.n [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @H5D__compact_fill(ptr noundef nonnull %0) #11
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.o = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__init_storage, i32 noundef 2496, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.265) #11 ; 0 uses
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.r = load i64, ptr %i.q, align 8, !tbaa !87
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !142
  %i.v = icmp eq ptr %i.u, null
  %or.cond = or i1 %1, %i.v
  br i1 %or.cond, label %bb.o, label %bb.i

bb.h:                                             ; preds = %bb.f
  br i1 %1, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.w = tail call i32 @H5D__contig_fill(ptr noundef nonnull %0) #11
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.z = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__init_storage, i32 noundef 2506, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.266) #11 ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.a, i8 0, i64 264, i1 false)
  %i.ab = icmp eq ptr %2, null
  %spec.select = select i1 %i.ab, ptr %i.a, ptr %2
  %i.ac = call i32 @H5D__chunk_allocate(ptr noundef nonnull %0, i1 noundef zeroext %1, ptr noundef nonnull %spec.select) #11
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.af = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.ag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__init_storage, i32 noundef 2522, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.266) #11 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.019 = phi i32 [ -1, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  %i.ah = load i64, ptr @H5E_IO_g, align 8, !tbaa !15
  %i.ai = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !15
  %i.aj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__init_storage, i32 noundef 2534, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.66) #11 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.i, %bb.h, %bb.g, %bb.n, %bb.j, %bb.e, %bb.m
  %.1 = phi i32 [ -1, %bb.n ], [ 0, %bb.c ], [ -1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.h ], [ -1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.a ], [ %.019, %bb.m ]
  ret i32 %.1
}

declare i32 @H5P_is_fill_value_defined(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D__mark(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %not. = xor i1 %i.b, true
  %.not33 = select i1 %not., i1 %i.d, i1 false
  %.not = icmp eq i32 %1, 0
  %or.cond = or i1 %.not, %.not33
  br i1 %or.cond, label %bb.l, label %bb.b, !prof !143

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @H5O_pin(ptr noundef %0) #11 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.h = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !15
  %i.i = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__mark, i32 noundef 3523, i64 noundef %i.g, i64 noundef %i.h, ptr noundef nonnull @.str.136) #11 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.j = and i32 %1, 2
  %.not25 = icmp eq i32 %i.j, 0
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @H5D__layout_oh_write(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 1) #11
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.n = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !15
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__mark, i32 noundef 3528, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.137) #11 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  %.019 = phi i32 [ 1, %bb.d ], [ 0, %bb.e ]
  %i.p = and i32 %1, 1
  %.not26 = icmp eq i32 %i.p, 0
  br i1 %.not26, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %0, align 8, !tbaa !77
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = tail call i32 @H5S_write(ptr noundef %i.q, ptr noundef nonnull %i.e, i32 noundef %.019, ptr noundef %i.u) #11
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.y = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !15
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__mark, i32 noundef 3537, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.138) #11 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.f
  %.1.ph = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ -1, %bb.i ], [ -1, %bb.f ]
  %i.aa = tail call i32 @H5O_unpin(ptr noundef nonnull %i.e) #11
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ad = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !15
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__mark, i32 noundef 3551, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.139) #11 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.a, %bb.j, %bb.k
  %.2 = phi i32 [ -1, %bb.k ], [ %.1.ph, %bb.j ], [ 0, %bb.a ], [ -1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D__get_storage_size(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 -1, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !78
  call void @H5AC_tag(i64 noundef %i.c, ptr noundef nonnull %i.a) #11
  %i.d = load i8, ptr @H5D_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !11
end_hunk_0
