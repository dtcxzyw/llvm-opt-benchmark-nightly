inline.NumInlined: 62
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@parse_csi2_resource:bb.a
  %i.f = getelementptr i8, ptr %0, i64 21         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 1
  %i.h = call i32 @acpi_get_handle(ptr noundef null, ptr noundef %i.g, ptr noundef nonnull %i.a) #11
  %.not32 = icmp eq i32 %i.h, 0
  br i1 %.not32, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 19
  %i.j = load i16, ptr %i.i, align 1              ; 2 uses
  %.not33 = icmp eq i16 %i.j, 0
  br i1 %.not33, label %bb.f, label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.d
  %i.k = zext i16 %i.j to i64                     ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 57
  %i.m = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 2, 2954937499225) %i.l, i32 noundef 3264) #13 ; 9 uses
  %.not34 = icmp eq ptr %i.m, null
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_kmalloc_noprof.exit
  %i.n = getelementptr i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(31) %i.n, ptr noundef align 1 dereferenceable(31) %i.c, i64 31, i1 false)
  %i.o = getelementptr i8, ptr %i.m, i64 56       ; 2 uses
  %i.p = load ptr, ptr %i.f, align 1
  %i.q = call i64 @sized_strscpy(ptr noundef %i.o, ptr noundef %i.p, i64 noundef %i.k) #11 ; 0 uses
  %i.r = getelementptr i8, ptr %i.m, i64 29
  store ptr %i.o, ptr %i.r, align 1
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = getelementptr i8, ptr %i.m, i64 48
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.m, ptr %i.w, align 8
  store ptr %i.v, ptr %i.m, align 8
  %i.x = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.u, ptr %i.x, align 8
  store volatile ptr %i.m, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %_kmalloc_noprof.exit, %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_mipi_scan_crs_csi2() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %0 = alloca %struct.list_head, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store ptr %0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  %.062 = load ptr, ptr @acpi_mipi_crs_csi2_list, align 8 ; 2 uses
  %.not63 = icmp eq ptr %.062, @acpi_mipi_crs_csi2_list
  br i1 %.not63, label %._crit_edge, label %.lr.ph65

.loopexit:                                        ; preds = %acpi_mipi_add_crs_csi2.exit, %.lr.ph65
  %.0 = load ptr, ptr %.064, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, @acpi_mipi_crs_csi2_list
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph65, !llvm.loop !13

.lr.ph65:                                         ; preds = %bb.a, %.loopexit
  %.064 = phi ptr [ %.0, %.loopexit ], [ %.062, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.064, i64 32      ; 3 uses
  %.03359 = load ptr, ptr %i.d, align 8           ; 2 uses
  %.not4960 = icmp eq ptr %.03359, %i.d
  br i1 %.not4960, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph65
  %i.e = getelementptr i8, ptr %.064, i64 48      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %acpi_mipi_add_crs_csi2.exit
  %.03361 = phi ptr [ %.03359, %.lr.ph ], [ %.033, %acpi_mipi_add_crs_csi2.exit ] ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %.03361, i64 48    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !annotation !12
  %i.j = call i32 @acpi_get_data_full(ptr noundef %i.i, ptr noundef nonnull @acpi_mipi_data_tag, ptr noundef nonnull %i.b, ptr noundef null) #11
  %.not.i = icmp ne i32 %i.j, 0
  %i.k = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %.not3850 = icmp eq ptr %i.k, null
  %.not38 = select i1 %.not.i, i1 true, i1 %.not3850
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.k, i64 48       ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8
  br label %acpi_mipi_add_crs_csi2.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.q = call noalias align 8 dereferenceable_or_null(56) ptr @__kmalloc_cache_noprof(ptr noundef %i.p, i32 noundef 3520, i64 noundef range(i64 2, 2954937499225) 56) #12 ; 11 uses
  %.not.i39 = icmp eq ptr %i.q, null
  br i1 %.not.i39, label %acpi_mipi_add_crs_csi2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.q, i64 16
  store ptr %i.o, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.q, i64 32       ; 3 uses
  store volatile ptr %i.s, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.q, i64 40
  store volatile ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.q, i64 48
  store i32 1, ptr %i.u, align 8
  %i.v = call i32 @acpi_attach_data(ptr noundef %i.o, ptr noundef nonnull @acpi_mipi_data_tag, ptr noundef nonnull %i.q) #11
  %.not18.i = icmp eq i32 %i.v, 0
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @kfree(ptr noundef nonnull %i.q) #11
  br label %acpi_mipi_add_crs_csi2.exit

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.q, ptr %i.x, align 8
  store ptr %i.w, ptr %i.q, align 8
  %i.y = getelementptr i8, ptr %i.q, i64 8
  store ptr %0, ptr %i.y, align 8
  store volatile ptr %i.q, ptr %0, align 8
  br label %acpi_mipi_add_crs_csi2.exit

acpi_mipi_add_crs_csi2.exit:                      ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.033 = load ptr, ptr %.03361, align 8          ; 2 uses
  %.not49 = icmp eq ptr %.033, %i.d
  br i1 %.not49, label %.loopexit, label %bb.b, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.166.pre85.pre = load ptr, ptr @acpi_mipi_crs_csi2_list, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.166.pre85 = phi ptr [ %.166.pre85.pre, %._crit_edge.loopexit ], [ @acpi_mipi_crs_csi2_list, %bb.a ] ; 3 uses
  %i.z = load volatile ptr, ptr %0, align 8       ; 3 uses
  %.not.i41 = icmp eq ptr %i.z, %0
  br i1 %.not.i41, label %list_splice.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %.val4.i = load ptr, ptr %i.c, align 8          ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store ptr @acpi_mipi_crs_csi2_list, ptr %i.aa, align 8
  store ptr %i.z, ptr @acpi_mipi_crs_csi2_list, align 8
  store ptr %.166.pre85, ptr %.val4.i, align 8
  %i.ab = getelementptr i8, ptr %.166.pre85, i64 8
  store ptr %.val4.i, ptr %i.ab, align 8
  %.166.pre = load ptr, ptr @acpi_mipi_crs_csi2_list, align 8
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %._crit_edge, %bb.h
  %.166 = phi ptr [ %.166.pre85, %._crit_edge ], [ %.166.pre, %bb.h ] ; 2 uses
  %.not4767 = icmp eq ptr %.166, @acpi_mipi_crs_csi2_list
  br i1 %.not4767, label %._crit_edge76, label %.lr.ph69

.preheader:                                       ; preds = %alloc_crs_csi2_swnodes.exit
  %.272.pre = load ptr, ptr @acpi_mipi_crs_csi2_list, align 8 ; 2 uses
  %.not4873 = icmp eq ptr %.272.pre, @acpi_mipi_crs_csi2_list
  br i1 %.not4873, label %._crit_edge76, label %.lr.ph75

.lr.ph69:                                         ; preds = %list_splice.exit, %alloc_crs_csi2_swnodes.exit
  %.168 = phi ptr [ %.1, %alloc_crs_csi2_swnodes.exit ], [ %.166, %list_splice.exit ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.168, i64 48
  %i.ad = load i32, ptr %i.ac, align 8            ; 4 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %i.af = mul nuw nsw i64 %i.ae, 688
  %i.ag = add nuw nsw i64 %i.af, 264
  %i.ah = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 2, 2954937499225) %i.ag, i32 noundef 3264) #13 ; 7 uses
  %.not.i42 = icmp eq ptr %i.ah, null
  br i1 %.not.i42, label %alloc_crs_csi2_swnodes.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.ai = getelementptr i8, ptr %i.ah, i64 224    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 208    ; 6 uses
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr [624 x i8], ptr %i.ai, i64 %i.ae ; 2 uses
  %i.al = getelementptr i8, ptr %i.ah, i64 192    ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = shl nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.ao = getelementptr [24 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ah, i64 200    ; 3 uses
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.ah, i64 216
  store i32 %i.ad, ptr %i.aq, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i.a = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr [24 x i8], ptr %i.ar, i64 %indvars.iv.i.a
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %indvars.iv.i.a
  store ptr %i.as, ptr %i.au, align 8
  %indvars.iv.next.i = add i64 %indvars.iv.i.a, 1 ; 2 uses
  %1 = and i64 %indvars.iv.next.i, 4294967295     ; 2 uses
  %.not40.i = icmp samesign ult i64 %i.an, %1
  br i1 %.not40.i, label %bb.k, label %bb.j, !llvm.loop !15

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %1
  store ptr null, ptr %i.aw, align 8
  %.not44.i = icmp eq i32 %i.ad, 0
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.k
  %xtraiter = and i64 %i.ae, 3                    ; 3 uses
  %i.ax = icmp ult i32 %i.ad, 4
  br i1 %i.ax, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ae, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next47.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ay = load ptr, ptr %i.aj, align 8
  %i.az = getelementptr [624 x i8], ptr %i.ay, i64 %indvars.iv46.i
  %i.ba = getelementptr i8, ptr %i.az, i64 144
  store i32 -2, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %i.aj, align 8
  %i.bc = getelementptr [624 x i8], ptr %i.bb, i64 %indvars.iv46.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 768
  store i32 -2, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.aj, align 8
  %i.bf = getelementptr [624 x i8], ptr %i.be, i64 %indvars.iv46.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 1392
  store i32 -2, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.aj, align 8
  %i.bi = getelementptr [624 x i8], ptr %i.bh, i64 %indvars.iv46.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 2016
  store i32 -2, ptr %i.bj, align 8
  %indvars.iv.next47.i.3 = add nuw nsw i64 %indvars.iv46.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !16

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next47.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv.next47.i.epil, %.lr.ph.i.epil ], [ %indvars.iv46.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bk = load ptr, ptr %i.aj, align 8
  %i.bl = getelementptr [624 x i8], ptr %i.bk, i64 %indvars.iv46.i.epil
  %i.bm = getelementptr i8, ptr %i.bl, i64 144
  store i32 -2, ptr %i.bm, align 8
  %indvars.iv.next47.i.epil = add nuw nsw i64 %indvars.iv46.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !17

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.k
  %i.bn = getelementptr i8, ptr %.168, i64 24
  store ptr %i.ah, ptr %i.bn, align 8
  br label %alloc_crs_csi2_swnodes.exit

alloc_crs_csi2_swnodes.exit:                      ; preds = %.lr.ph69, %._crit_edge.i
  %.1 = load ptr, ptr %.168, align 8              ; 2 uses
  %.not47 = icmp eq ptr %.1, @acpi_mipi_crs_csi2_list
  br i1 %.not47, label %.preheader, label %.lr.ph69, !llvm.loop !19

.lr.ph75:                                         ; preds = %.preheader, %prepare_crs_csi2_swnodes.exit
  %.274 = phi ptr [ %.2, %prepare_crs_csi2_swnodes.exit ], [ %.272.pre, %.preheader ] ; 4 uses
  %i.bo = getelementptr i8, ptr %.274, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8            ; 4 uses
  %i.bq = getelementptr i8, ptr %.274, i64 16
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %.not.i43 = icmp eq ptr %i.bp, null
  br i1 %.not.i43, label %prepare_crs_csi2_swnodes.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph75
  %i.bs = getelementptr i8, ptr %.274, i64 32     ; 3 uses
  %.026.i = load ptr, ptr %i.bs, align 8          ; 2 uses
  %.not1627.i = icmp eq ptr %.026.i, %i.bs
  br i1 %.not1627.i, label %prepare_crs_csi2_swnodes.exit, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.l
  %i.bt = getelementptr i8, ptr %i.bp, i64 216    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bp, i64 208    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bp, i64 192
  br label %bb.m

bb.m:                                             ; preds = %extract_crs_csi2_conn_info.exit.i, %.lr.ph.i44
  %.028.i = phi ptr [ %.026.i, %.lr.ph.i44 ], [ %.0.i46, %extract_crs_csi2_conn_info.exit.i ] ; 5 uses
  %i.bw = getelementptr i8, ptr %.028.i, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !annotation !12
  %i.by = call i32 @acpi_get_data_full(ptr noundef %i.bx, ptr noundef nonnull @acpi_mipi_data_tag, ptr noundef nonnull %i.a, ptr noundef null) #11
  %.not.i.i.i = icmp ne i32 %i.by, 0
  %i.bz = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not113.i.i = icmp eq ptr %i.bz, null
  %.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not113.i.i
  br i1 %.not.i.i, label %extract_crs_csi2_conn_info.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8            ; 4 uses
  %.not71.i.i = icmp eq ptr %i.cb, null
  br i1 %.not71.i.i, label %extract_crs_csi2_conn_info.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr i8, ptr %.028.i, i64 46
  %i.cd = load i8, ptr %i.cc, align 2             ; 2 uses
  switch i8 %i.cd, label %bb.q [
    i8 0, label %bb.r
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ce = zext i8 %i.cd to i32
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %i.br, ptr noundef nonnull @.str.9, i32 noundef %i.ce) #11
  br label %extract_crs_csi2_conn_info.exit.i

bb.r:                                             ; preds = %bb.p, %bb.o
  %.0.i.i45 = phi i32 [ 4, %bb.p ], [ 1, %bb.o ]  ; 2 uses
  %i.cf = getelementptr i8, ptr %.028.i, i64 45   ; 4 uses
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = load i32, ptr %i.bt, align 8            ; 4 uses
  %.not.i103.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i103.i.i, label %next_csi2_port_index.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %i.cj = load ptr, ptr %i.bu, align 8
  %wide.trip.count.i.i.i = zext i32 %i.ci to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.v ] ; 4 uses
  %i.ck = getelementptr [624 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 144
  %i.cm = load i32, ptr %i.cl, align 8            ; 2 uses
  %i.cn = icmp eq i32 %i.cm, %i.ch
  br i1 %i.cn, label %.thread.loopexit.split.loop.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = icmp eq i32 %i.cm, -2
  br i1 %i.co, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr i8, ptr %i.ck, i64 144
  %i.cq = trunc nuw i64 %indvars.iv.i.i.i to i32
  store i32 %i.ch, ptr %i.cp, align 8
  %.pre.i.i = load i32, ptr %i.bt, align 8
  br label %next_csi2_port_index.exit.i.i

bb.v:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %next_csi2_port_index.exit.i.i, label %bb.s, !llvm.loop !20

.thread.loopexit.split.loop.exit.i.i.i:           ; preds = %bb.s
  %i.cr = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %next_csi2_port_index.exit.i.i

next_csi2_port_index.exit.i.i:                    ; preds = %bb.v, %.thread.loopexit.split.loop.exit.i.i.i, %bb.u
  %i.cs = phi i32 [ %.pre.i.i, %bb.u ], [ %i.ci, %.thread.loopexit.split.loop.exit.i.i.i ], [ %i.ci, %bb.v ]
  %.2.i.i.i = phi i32 [ %i.cq, %bb.u ], [ %i.cr, %.thread.loopexit.split.loop.exit.i.i.i ], [ -2, %bb.v ] ; 3 uses
  %.not72.i.i = icmp ult i32 %.2.i.i.i, %i.cs
  br i1 %.not72.i.i, label %.critedge.i.i, label %next_csi2_port_index.exit.thread.i.i, !prof !21

next_csi2_port_index.exit.thread.i.i:             ; preds = %next_csi2_port_index.exit.i.i, %bb.r
  call void asm sideeffect "450: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 450b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 450) #10, !srcloc !22
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.10, i32 313, i32 2307, i64 16) #10, !srcloc !23
  call void asm sideeffect "451: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 451b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 451) #10, !srcloc !24
  br label %extract_crs_csi2_conn_info.exit.i

.critedge.i.i:                                    ; preds = %next_csi2_port_index.exit.i.i
  %i.ct = getelementptr i8, ptr %.028.i, i64 26   ; 4 uses
  %i.cu = load i8, ptr %i.ct, align 2
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cb, i64 216    ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8            ; 4 uses
  %.not.i104.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i104.i.i, label %next_csi2_port_index.exit112.thread.i.i, label %.lr.ph.i105.i.i

.lr.ph.i105.i.i:                                  ; preds = %.critedge.i.i
  %i.cy = getelementptr i8, ptr %i.cb, i64 208    ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %wide.trip.count.i106.i.i = zext i32 %i.cx to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %.lr.ph.i105.i.i
  %indvars.iv.i107.i.i = phi i64 [ 0, %.lr.ph.i105.i.i ], [ %indvars.iv.next.i108.i.i, %bb.z ] ; 4 uses
  %i.da = getelementptr [624 x i8], ptr %i.cz, i64 %indvars.iv.i107.i.i ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 144
  %i.dc = load i32, ptr %i.db, align 8            ; 2 uses
end_hunk_0
