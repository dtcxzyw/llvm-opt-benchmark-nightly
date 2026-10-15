Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pci_root?download=true
inline.NumInlined: 77
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.58 = private unnamed_addr constant [50 x i8] c"not requesting control; platform does not support\00", align 1
@cxl_osc_uuid_str = internal global [37 x i8] c"68F2D50B-C469-4d8A-BD3D-941A103FD3FC\00", align 16
@pci_osc_uuid_str = internal global [37 x i8] c"33DB4D5B-1FF7-401C-9657-7441C03DD766\00", align 16
@.str.59 = private unnamed_addr constant [21 x i8] c"CXLMemErrorReporting\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_addressable_acpi_get_pci_dev_506, ptr @__UNIQUE_ID_addressable_acpi_is_root_bridge_504, ptr @__UNIQUE_ID_addressable_acpi_pci_find_root_505], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @acpi_is_root_bridge(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @acpi_fetch_acpi_dev(ptr noundef %0) #12 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @acpi_match_device_ids(ptr noundef nonnull %i.a, ptr noundef nonnull @root_device_ids) #12
  %.not5 = icmp eq i32 %i.b, 0
  %. = zext i1 %.not5 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_match_device_ids(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @acpi_pci_find_root(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @acpi_fetch_acpi_dev(ptr noundef %0) #12 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @acpi_match_device_ids(ptr noundef nonnull %i.a, ptr noundef nonnull @root_device_ids) #12
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 600
  %.val = load ptr, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %.val, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @acpi_get_pci_dev(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @acpi_fetch_acpi_dev(ptr noundef %0) #12 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 1392     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.b) #12
  %i.c = getelementptr i8, ptr %i.a, i64 1376     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.019.in = phi ptr [ %i.c, %bb.b ], [ %.019, %bb.d ]
  %.019 = load ptr, ptr %.019.in, align 8         ; 4 uses
  %.not23 = icmp eq ptr %.019, %i.c
  br i1 %.not23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %.019, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, @pci_bus_type
  br i1 %i.h, label %bb.e, label %bb.c, !llvm.loop !14

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.019, i64 16
  %i.j = tail call ptr @get_device(ptr noundef %i.e) #12 ; 0 uses
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 -200
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e
  %.020 = phi ptr [ %i.l, %bb.e ], [ null, %bb.c ]
  tail call void @mutex_unlock(ptr noundef %i.b) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  %.0 = phi ptr [ %.020, %.loopexit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_pci_probe_root_resources(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = tail call i32 @acpi_dev_get_resources(ptr noundef %i.c, ptr noundef %i.a, ptr noundef nonnull @acpi_dev_filter_resource_type_cb, ptr noundef nonnull inttoptr (i64 784 to ptr)) #12 ; 4 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 608
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.f, ptr noundef nonnull @.str, i32 noundef %i.d) #13
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not37 = icmp eq ptr %i.h, %i.a
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 40
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %.038 = phi ptr [ %i.h, %.lr.ph ], [ %.03239, %bb.h ] ; 5 uses
  %.03239 = load ptr, ptr %.038, align 8          ; 4 uses
  %i.j = getelementptr i8, ptr %.038, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 268435456
  %.not35 = icmp eq i64 %i.n, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.038, i64 8       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %.03239, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store volatile ptr %.03239, ptr %i.p, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.038, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.o, align 8
  tail call void @kfree(ptr noundef %.038) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.r, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.not = icmp eq ptr %.03239, %i.a
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %i.s = getelementptr i8, ptr %i.c, i64 608      ; 2 uses
  tail call fastcc void @acpi_pci_root_validate_resources(ptr noundef %i.s, ptr noundef %i.a, i64 noundef 512) #14, !srcloc !16
  tail call fastcc void @acpi_pci_root_validate_resources(ptr noundef %i.s, ptr noundef %i.a, i64 noundef 256) #14, !srcloc !17
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  ret i32 %i.d
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_dev_get_resources(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_dev_filter_resource_type_cb(ptr noundef %0, ptr noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = tail call i32 @acpi_dev_filter_resource_type(ptr noundef %0, i64 noundef %i.a) #12
  ret i32 %i.b
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @acpi_pci_root_validate_resources(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 256, 513) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.list_head, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %.not = icmp samesign ult i64 %2, 512
  %i.a = load volatile ptr, ptr %1, align 8       ; 3 uses
  %.not.i = icmp eq ptr %i.a, %1
  br i1 %.not.i, label %._crit_edge, label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val5.i = load ptr, ptr %i.c, align 8          ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.d, align 8
  store ptr %i.a, ptr %3, align 8
  store ptr %3, ptr %.val5.i, align 8
  store ptr %.val5.i, ptr %i.b, align 8
  store volatile ptr %1, ptr %1, align 8
  store volatile ptr %1, ptr %i.c, align 8
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %.not6980 = icmp eq ptr %.pre, %3
  br i1 %.not6980, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %list_splice_init.exit
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %bb.j
  %.05681 = phi ptr [ %.pre, %.lr.ph84 ], [ %.083, %bb.j ] ; 12 uses
  %.083 = load ptr, ptr %.05681, align 8          ; 2 uses
  %i.f = getelementptr i8, ptr %.05681, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 7 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, %2
  %.not62 = icmp eq i64 %i.j, 0
  br i1 %.not62, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.g, i64 8        ; 3 uses
  %4 = load i64, ptr %i.k, align 8                ; 4 uses
  %.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @ioport_resource, i64 8), align 8
  %.val63 = load i64, ptr getelementptr inbounds nuw (i8, ptr @iomem_resource, i64 8), align 8
  %5 = select i1 %.not, i64 %.val, i64 %.val63    ; 2 uses
  %i.l = call i64 @llvm.umin.i64(i64 %4, i64 %5)  ; 4 uses
  %i.m = load i64, ptr %i.g, align 8
  %.not64 = icmp ugt i64 %i.l, %i.m
  br i1 %.not64, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %i.g) #13
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.not65.not = icmp ugt i64 %4, %5
  br i1 %.not65.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %i.l, 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %i.g, i64 noundef %i.n, i64 noundef %4) #13
  store i64 %i.l, ptr %i.k, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = phi i64 [ %4, %bb.e ], [ %i.l, %bb.f ]
  %.05776 = load ptr, ptr %1, align 8             ; 2 uses
  %.not7077 = icmp eq ptr %.05776, %1
  br i1 %.not7077, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %resource_union.exit.thread
  %.05778 = phi ptr [ %.057, %resource_union.exit.thread ], [ %.05776, %bb.g ] ; 2 uses
  %i.p = getelementptr i8, ptr %.05778, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, %2
  %.not67 = icmp eq i64 %i.t, 0
  br i1 %.not67, label %resource_union.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.u = load i64, ptr %i.g, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %.not.i.i = icmp ugt i64 %i.u, %i.w
  br i1 %.not.i.i, label %resource_union.exit.thread, label %resource_overlaps.exit.i

resource_overlaps.exit.i:                         ; preds = %bb.h
  %i.x = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i68 = icmp ult i64 %i.o, %i.x
  br i1 %.not.i68, label %resource_union.exit.thread, label %bb.i

bb.i:                                             ; preds = %resource_overlaps.exit.i
  %i.y = getelementptr i8, ptr %i.q, i64 8
  %i.z = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.x)
  store i64 %i.z, ptr %i.q, align 8
  %i.aa = load i64, ptr %i.k, align 8
  %i.ab = call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.w)
  store i64 %i.ab, ptr %i.y, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %i.q, ptr noundef %i.g) #13
  br label %.critedge

resource_union.exit.thread:                       ; preds = %bb.h, %resource_overlaps.exit.i, %.lr.ph
  %.057 = load ptr, ptr %.05778, align 8          ; 2 uses
  %.not70 = icmp eq ptr %.057, %1
  br i1 %.not70, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %resource_union.exit.thread, %bb.g, %bb.b
  %i.ac = getelementptr i8, ptr %.05681, i64 8    ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load ptr, ptr %.05681, align 8          ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  store volatile ptr %i.ae, ptr %i.ad, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.05681, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ac, align 8
  %i.ag = load ptr, ptr %i.e, align 8             ; 2 uses
  store ptr %.05681, ptr %i.e, align 8
  store ptr %1, ptr %.05681, align 8
  store ptr %i.ag, ptr %i.ac, align 8
  store volatile ptr %.05681, ptr %i.ag, align 8
  br label %bb.j

.critedge:                                        ; preds = %bb.i, %bb.d
  %i.ah = getelementptr i8, ptr %.05681, i64 8    ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load ptr, ptr %.05681, align 8          ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %i.ak, align 8
  store volatile ptr %i.aj, ptr %i.ai, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.05681, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ah, align 8
  call void @kfree(ptr noundef %.05681) #12
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %.critedge
  %.not69 = icmp eq ptr %.083, %3
  br i1 %.not69, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.j, %bb.a, %list_splice_init.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @acpi_pci_root_create(ptr noundef %0, ptr noundef %1, ptr noundef initializes((0, 24)) %2, ptr noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @acpi_get_node(ptr noundef %i.f) #12 ; 2 uses
  store ptr %0, ptr %2, align 8
  %i.h = getelementptr i8, ptr %2, i64 8          ; 2 uses
  store ptr %i.d, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %2, i64 24         ; 11 uses
  store volatile ptr %i.j, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %2, i64 32
  store volatile ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %2, i64 40
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load i16, ptr %i.m, align 8
  %i.o = zext i16 %i.n to i32
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.l, i64 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.o, i32 noundef %i.c) #12 ; 0 uses
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call i32 %i.r(ptr noundef %2) #12
  %.not60 = icmp eq i32 %i.s, 0
  br i1 %.not60, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not61 = icmp eq ptr %i.u, null
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 %i.u(ptr noundef %2) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = tail call i32 @acpi_pci_probe_root_resources(ptr noundef %2) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.055 = phi i32 [ %i.v, %bb.d ], [ %i.w, %bb.e ]
  %i.x = icmp slt i32 %.055, 0
  br i1 %i.x, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not33.i = icmp eq ptr %i.y, %i.j
  br i1 %.not33.i, label %pci_acpi_root_add_resources.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.l
  %.034.i = phi ptr [ %.02535.i, %bb.l ], [ %i.y, %bb.g ] ; 6 uses
  %.02535.i = load ptr, ptr %.034.i, align 8      ; 2 uses
  %i.z = getelementptr i8, ptr %.034.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i64 %i.ac, 512
  %.not29.i = icmp eq i64 %i.ad, 0
  br i1 %.not29.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ae = and i64 %i.ac, 256
  %.not30.i = icmp eq i64 %i.ae, 0
  br i1 %.not30.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %.026.i = phi ptr [ @iomem_resource, %.lr.ph.i ], [ @ioport_resource, %bb.h ] ; 2 uses
  %i.af = icmp eq ptr %i.aa, %.026.i
  br i1 %i.af, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @insert_resource_conflict(ptr noundef nonnull %.026.i, ptr noundef %i.aa) #12 ; 3 uses
  %.not31.i = icmp eq ptr %i.ag, null
  br i1 %.not31.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.h, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 608
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.ai, ptr noundef nonnull @.str.10, ptr noundef %i.aa, ptr noundef %i.ak, ptr noundef nonnull %i.ag) #13
  %i.al = getelementptr i8, ptr %.034.i, i64 8    ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %.034.i, align 8          ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  store volatile ptr %i.an, ptr %i.am, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.034.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.al, align 8
  tail call void @kfree(ptr noundef %.034.i) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.not.i = icmp eq ptr %.02535.i, %i.j
  br i1 %.not.i, label %pci_acpi_root_add_resources.exit, label %.lr.ph.i, !llvm.loop !20

pci_acpi_root_add_resources.exit:                 ; preds = %bb.l, %bb.g
  tail call void @pci_add_resource(ptr noundef %i.j, ptr noundef %i.a) #12
  %i.ap = load ptr, ptr %1, align 8
  %i.aq = tail call ptr @pci_create_root_bus(ptr noundef null, i32 noundef %i.c, ptr noundef %i.ap, ptr noundef %3, ptr noundef %i.j) #12 ; 6 uses
  %.not62 = icmp eq ptr %i.aq, null
  br i1 %.not62, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %pci_acpi_root_add_resources.exit
  %i.ar = getelementptr i8, ptr %i.aq, i64 272
  %i.as = load ptr, ptr %i.ar, align 8            ; 8 uses
  %i.at = getelementptr i8, ptr %0, i64 92        ; 6 uses
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = and i32 %i.au, 1
  %.not63 = icmp eq i32 %i.av, 0
  br i1 %.not63, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_0
