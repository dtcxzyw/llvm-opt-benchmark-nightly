Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/rocker?download=true
inline.NumInlined: 210
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@rocker_class_init:bb.a
  store ptr @rocker_vmsd, ptr %i.m, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pci_rocker_realize(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %2 = alloca %struct.MACAddr, align 1            ; 5 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i32 noundef 64, ptr noundef nonnull @__func__.ROCKER) #10 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %i.b = tail call ptr @of_dpa_world_alloc(ptr noundef %i.a) #10 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3904 ; 4 uses
  store ptr %i.b, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3320 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %g_strdup_inline.exit108, label %bb.b

g_strdup_inline.exit108:                          ; preds = %bb.a
  %i.f = tail call ptr @world_name(ptr noundef %i.b) #10
  %i.g = tail call noalias ptr @g_strdup(ptr noundef %i.f) #10 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8
  %.pre = load ptr, ptr %i.c, align 16
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit108, %bb.a
  %i.h = phi ptr [ %.pre, %g_strdup_inline.exit108 ], [ %i.b, %bb.a ]
  %i.i = phi ptr [ %i.g, %g_strdup_inline.exit108 ], [ %i.e, %bb.a ]
  %i.j = tail call ptr @world_name(ptr noundef %i.h) #10
  %i.k = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.j) #9
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %rocker_world_type_by_name.exit, label %rocker_world_type_by_name.exit.thread

rocker_world_type_by_name.exit.thread:            ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3912
  store ptr null, ptr %i.m, align 8
  br label %bb.c

rocker_world_type_by_name.exit:                   ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 16          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3912 ; 2 uses
  store ptr %.pre.i, ptr %i.n, align 8
  %.not100 = icmp eq ptr %.pre.i, null
  br i1 %.not100, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rocker_world_type_by_name.exit.thread, %rocker_world_type_by_name.exit
  %i.o = load ptr, ptr %i.d, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1280, ptr noundef nonnull @__func__.pci_rocker_realize, ptr noundef nonnull @.str.12, ptr noundef %i.o) #10
  br label %bb.z

bb.d:                                             ; preds = %rocker_world_type_by_name.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2768 ; 3 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull @rocker_mmio_ops, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13, i64 noundef 8192) #10
  tail call void @pci_register_bar(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull %i.p) #10
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 3040 ; 7 uses
  tail call void @memory_region_init(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i64 noundef 8192) #10
  tail call void @pci_register_bar(ptr noundef %0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.q) #10
  %i.r = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3328 ; 8 uses
  %i.t = load i32, ptr %i.s, align 16
  %i.u = shl i32 %i.t, 1
  %i.v = add i32 %i.u, 4
  %i.w = tail call i32 @msix_init(ptr noundef %i.r, i32 noundef %i.v, ptr noundef nonnull %i.q, i8 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %i.q, i8 noundef zeroext 1, i32 noundef 4096, i8 noundef zeroext 0, ptr noundef %1) #10
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %rocker_msix_init.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.s, align 16
  %i.z = shl i32 %i.y, 1
  %i.aa = add i32 %i.z, 4                         ; 2 uses
  %i.ab = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #10
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %.loopexit126, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.ac, %.lr.ph.i.i ], [ 0, %bb.e ] ; 2 uses
  tail call void @msix_vector_use(ptr noundef %i.ab, i32 noundef %.05.i.i) #10
  %i.ac = add nuw i32 %.05.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ac, %i.aa
  br i1 %exitcond.not.i.i, label %.loopexit126, label %.lr.ph.i.i, !llvm.loop !14

.loopexit126:                                     ; preds = %.lr.ph.i.i, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 3312 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 16           ; 2 uses
  %.not102 = icmp eq ptr %i.ae, null
  br i1 %.not102, label %g_strdup_inline.exit, label %bb.f

g_strdup_inline.exit:                             ; preds = %.loopexit126
  %i.af = tail call noalias dereferenceable_or_null(7) ptr @g_malloc(i64 noundef 7) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.af, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, i64 noundef 7, i1 noundef false) #10
  store ptr %i.af, ptr %i.ad, align 16
  br label %bb.f

bb.f:                                             ; preds = %g_strdup_inline.exit, %.loopexit126
  %i.ag = phi ptr [ %i.af, %g_strdup_inline.exit ], [ %i.ae, %.loopexit126 ] ; 3 uses
  %.07.i111 = load ptr, ptr @rockers, align 8     ; 2 uses
  %.not8.i = icmp eq ptr %.07.i111, null
  br i1 %.not8.i, label %.loopexit125, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.09.i = phi ptr [ %.0.i112, %bb.g ], [ %.07.i111, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i, i64 3312
  %i.ai = load ptr, ptr %i.ah, align 16
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull readonly dereferenceable(1) %i.ag) #9
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %rocker_find.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i, i64 3920
  %.0.i112 = load ptr, ptr %i.al, align 16        ; 2 uses
  %.not.i113 = icmp eq ptr %.0.i112, null
  br i1 %.not.i113, label %.loopexit125, label %.lr.ph.i, !llvm.loop !0

rocker_find.exit:                                 ; preds = %.lr.ph.i
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @__func__.pci_rocker_realize, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ag) #10
  br label %bb.y

.loopexit125:                                     ; preds = %bb.g, %bb.f
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #9
  %i.an = icmp ugt i64 %i.am, 9
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit125
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1328, ptr noundef nonnull @__func__.pci_rocker_realize, ptr noundef nonnull @.str.16, i32 noundef 9) #10
  br label %bb.y

bb.i:                                             ; preds = %.loopexit125
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 3344 ; 5 uses
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = load i32, ptr %2, align 1
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = getelementptr i8, ptr %i.ao, i64 4
  %i.at = getelementptr i8, ptr %2, i64 4
  %i.au = load i16, ptr %i.as, align 1
  %i.av = load i16, ptr %i.at, align 1
  %i.aw = zext i16 %i.au to i32
  %i.ax = zext i16 %i.av to i32
  %i.ay = xor i32 %i.aw, %i.ax
  %i.az = or i32 %i.ar, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.ao, ptr noundef nonnull align 1 dereferenceable(6) @__const.pci_rocker_realize.dflt, i64 noundef 6, i1 noundef false) #10
  %i.bd = load i32, ptr @pci_rocker_realize.sw_index, align 4 ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @pci_rocker_realize.sw_index, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 3348 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 4
  %i.bh = trunc i32 %i.bd to i8
  %i.bi = add i8 %i.bg, %i.bh
  store i8 %i.bi, ptr %i.bf, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 3352 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %.not104 = icmp eq i64 %i.bk, 0
  br i1 %.not104, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bj, ptr noundef nonnull align 16 dereferenceable(6) %i.ao, i64 noundef 6, i1 noundef false) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = load i32, ptr %i.s, align 16            ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, 62
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 62, ptr %i.s, align 16
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.val109 = phi i32 [ 62, %bb.n ], [ %i.bl, %bb.m ]
  %i.bn = shl nuw nsw i32 %.val109, 1
  %i.bo = add nuw nsw i32 %i.bn, 2
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = tail call noalias ptr @g_malloc_n(i64 noundef %i.bp, i64 noundef 8) #12
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 3896 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8
  %.val127 = load i32, ptr %i.s, align 16         ; 2 uses
  %i.bs = shl i32 %.val127, 1
  %i.bt = icmp ult i32 %i.bs, 2147483646
  br i1 %i.bt, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.u, %bb.o
  %i.bu = phi i32 [ %.val127, %bb.o ], [ %.val, %bb.u ]
  %.not131 = icmp eq i32 %i.bu, 0
  br i1 %.not131, label %._crit_edge, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 3336
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 3360
  br label %bb.v

.lr.ph:                                           ; preds = %bb.o, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %bb.o ] ; 5 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.by = tail call ptr @desc_ring_alloc(ptr noundef nonnull %i.a, i32 noundef %i.bx) #10 ; 5 uses
  switch i32 %i.bx, label %bb.r [
    i32 0, label %bb.p
    i32 1, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph
  tail call void @desc_ring_set_consume(ptr noundef %i.by, ptr noundef nonnull @cmd_consume, i32 noundef 0) #10
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph
  tail call void @desc_ring_set_consume(ptr noundef %i.by, ptr noundef null, i32 noundef 1) #10
  br label %bb.u

bb.r:                                             ; preds = %.lr.ph
  %trunc = trunc i64 %indvars.iv to i1
  %i.bz = trunc i64 %indvars.iv to i32
  %i.ca = add i32 %i.bz, 2                        ; 2 uses
  br i1 %trunc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @desc_ring_set_consume(ptr noundef %i.by, ptr noundef nonnull @tx_consume, i32 noundef %i.ca) #10
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @desc_ring_set_consume(ptr noundef %i.by, ptr noundef null, i32 noundef %i.ca) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s, %bb.p
  %i.cb = load ptr, ptr %i.br, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  store ptr %i.by, ptr %i.cc, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.s, align 16            ; 2 uses
  %i.cd = shl i32 %.val, 1
  %i.ce = add i32 %i.cd, 2
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %.lr.ph, label %.preheader, !llvm.loop !15

bb.v:                                             ; preds = %.lr.ph130, %bb.v
  %.1129 = phi i32 [ 0, %.lr.ph130 ], [ %i.co, %bb.v ] ; 3 uses
  %i.ch = load ptr, ptr %i.ad, align 16
  %i.ci = load ptr, ptr %i.bv, align 8
  %i.cj = sext i32 %.1129 to i64                  ; 2 uses
  %i.ck = getelementptr inbounds [8200 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = tail call ptr @fp_port_alloc(ptr noundef nonnull %i.a, ptr noundef %i.ch, ptr noundef nonnull %i.ao, i32 noundef %.1129, ptr noundef %i.ck) #10 ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cj
  store ptr %i.cl, ptr %i.cm, align 8
  %i.cn = load ptr, ptr %i.n, align 8
  tail call void @fp_port_set_world(ptr noundef %i.cl, ptr noundef %i.cn) #10
  %i.co = add nuw i32 %.1129, 1                   ; 2 uses
  %i.cp = load i32, ptr %i.s, align 16
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.v, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.v, %.preheader
  %i.cr = load ptr, ptr @rockers, align 8         ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 3920 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 16
  %.not105 = icmp eq ptr %i.cr, null
  br i1 %.not105, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 3928
  store ptr %i.cs, ptr %i.ct, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  store ptr %i.a, ptr @rockers, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 3928
  store ptr @rockers, ptr %i.cu, align 8
  br label %.loopexit

bb.y:                                             ; preds = %bb.h, %rocker_find.exit
  %i.cv = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #10
  tail call void @msix_uninit(ptr noundef %i.cv, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q) #10
  %i.cw = load i32, ptr %i.s, align 16
  %i.cx = shl i32 %i.cw, 1
  %i.cy = add i32 %i.cx, 4                        ; 2 uses
  %i.cz = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #10
  %.not.i.i115 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i115, label %rocker_msix_init.exit, label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %bb.y, %.lr.ph.i.i116
  %.05.i.i117 = phi i32 [ %i.da, %.lr.ph.i.i116 ], [ 0, %bb.y ] ; 2 uses
  tail call void @msix_vector_unuse(ptr noundef %i.cz, i32 noundef %.05.i.i117) #10
  %i.da = add nuw i32 %.05.i.i117, 1              ; 2 uses
  %exitcond.not.i.i118 = icmp eq i32 %i.da, %i.cy
  br i1 %exitcond.not.i.i118, label %rocker_msix_init.exit, label %.lr.ph.i.i116, !llvm.loop !2

rocker_msix_init.exit:                            ; preds = %.lr.ph.i.i116, %bb.y, %bb.d
  tail call void @object_unparent(ptr noundef nonnull %i.q) #10
  tail call void @object_unparent(ptr noundef nonnull %i.p) #10
  br label %bb.z

bb.z:                                             ; preds = %rocker_msix_init.exit, %bb.c
  %i.db = load ptr, ptr %i.c, align 16            ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.loopexit, label %.split

.split:                                           ; preds = %bb.z
  tail call void @world_free(ptr noundef nonnull %i.db) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %.split, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pci_rocker_uninit(ptr noundef %0) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i32 noundef 64, ptr noundef nonnull @__func__.ROCKER) #10 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3920 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16             ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 3928
  %.pre44 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not, label %._crit_edge43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3928
  store ptr %.pre44, ptr %i.d, align 8
  %.pre = load ptr, ptr %i.b, align 16
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ null, %bb.a ]
  store ptr %i.e, ptr %.pre44, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3328 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.g = load i32, ptr %i.f, align 16
  %.not41 = icmp eq i32 %i.g, 0
  br i1 %.not41, label %.lr.ph40, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge43
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3360
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.i = shl i32 %i.p, 1
  %i.j = icmp ult i32 %i.i, 2147483646
  br i1 %i.j, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %._crit_edge43, %.preheader
  %.val3853 = phi i32 [ %i.p, %.preheader ], [ 0, %._crit_edge43 ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3896
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.037 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  %i.l = sext i32 %.037 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @fp_port_free(ptr noundef %i.n) #10
  store ptr null, ptr %i.m, align 8
  %i.o = add nuw i32 %.037, 1                     ; 2 uses
  %i.p = load i32, ptr %i.f, align 16             ; 3 uses
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %.preheader, !llvm.loop !17

bb.d:                                             ; preds = %.lr.ph40, %bb.f
  %.val46 = phi i32 [ %.val3853, %.lr.ph40 ], [ %.val, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not36 = icmp eq ptr %i.t, null
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @desc_ring_free(ptr noundef nonnull %i.t) #10
  %.val.pre = load i32, ptr %i.f, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.val = phi i32 [ %.val46, %bb.d ], [ %.val.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = shl i32 %.val, 1
  %i.v = add i32 %i.u, 2
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.d, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 3896
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @g_free(ptr noundef %i.z) #10
  %i.aa = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 3040 ; 3 uses
  tail call void @msix_uninit(ptr noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ab) #10
  %i.ac = load i32, ptr %i.f, align 16
  %i.ad = shl i32 %i.ac, 1
  %i.ae = add i32 %i.ad, 4                        ; 2 uses
  %i.af = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #10
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %rocker_msix_uninit.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.ag, %.lr.ph.i.i ], [ 0, %._crit_edge ] ; 2 uses
  tail call void @msix_vector_unuse(ptr noundef %i.af, i32 noundef %.05.i.i) #10
  %i.ag = add nuw i32 %.05.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ag, %i.ae
  br i1 %exitcond.not.i.i, label %rocker_msix_uninit.exit, label %.lr.ph.i.i, !llvm.loop !2

rocker_msix_uninit.exit:                          ; preds = %.lr.ph.i.i, %._crit_edge
  tail call void @object_unparent(ptr noundef nonnull %i.ab) #10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 2768
  tail call void @object_unparent(ptr noundef nonnull %i.ah) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 3904
  %i.aj = load ptr, ptr %i.ai, align 16           ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.split.us, label %rocker_msix_uninit.exit.split

rocker_msix_uninit.exit.split:                    ; preds = %rocker_msix_uninit.exit
  tail call void @world_free(ptr noundef nonnull %i.aj) #10
  br label %.split.us

end_hunk_0
