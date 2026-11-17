Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nsaccess?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@acpi_ns_root_initialize:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = load ptr, ptr %i.a, align 8
  %.not74 = icmp eq ptr %i.aa, null
  br i1 %.not74, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.y, ptr %i.a, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ab = zext i8 %i.t to i32                     ; 2 uses
  %i.ac = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 141, i32 noundef 16, i32 noundef %i.ab) #5 ; 17 uses
  %.not75 = icmp eq ptr %i.ac, null
  br i1 %.not75, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i8 %i.t, label %bb.y [
    i8 8, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 9, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = trunc i64 %i.ae to i8
  %i.ag = getelementptr i8, ptr %i.ac, i64 14
  store i8 %i.af, ptr %i.ag, align 2
  %i.ah = getelementptr i8, ptr %i.ac, i64 12     ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = or i8 %i.ai, 4
  store i8 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr i8, ptr %i.ac, i64 13
  store i8 2, ptr %i.ak, align 1
  %i.al = getelementptr i8, ptr %i.ac, i64 40
  store ptr @acpi_ut_osi_implementation, ptr %i.al, align 8
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = getelementptr i8, ptr %i.ac, i64 16
  store i64 %i.an, ptr %i.ao, align 8
  br label %bb.z

bb.u:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = call i64 @strlen(ptr noundef %i.ap) #5
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr i8, ptr %i.ac, i64 24
  store i32 %i.ar, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = getelementptr i8, ptr %i.ac, i64 16
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %i.ac, i64 12     ; 2 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = or i8 %i.aw, 2
  store i8 %i.ax, ptr %i.av, align 4
  br label %bb.z

bb.v:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %i.ac, i64 56
  store ptr %i.q, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = add i8 %i.bb, -1
  %i.bd = getelementptr i8, ptr %i.ac, i64 13
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %i.ac, i64 16
  %i.bf = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef %i.be) #5 ; 2 uses
  %.not76 = icmp eq i32 %i.bf, 0
  br i1 %.not76, label %bb.w, label %.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.bg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef dereferenceable(5) @.str.3) #5
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  store ptr %i.ac, ptr @acpi_gbl_global_lock_mutex, align 8
  %i.bi = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 0, ptr noundef @acpi_gbl_global_lock_semaphore) #5 ; 2 uses
  %.not77 = icmp eq i32 %i.bi, 0
  br i1 %.not77, label %bb.z, label %.thread.sink.split

bb.y:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 224, ptr noundef @.str.4, i32 noundef %i.ab) #5
  br label %.sink.split

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.u, %bb.t, %bb.s
  %i.bj = getelementptr i8, ptr %i.ac, i64 9
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i32
  %i.bm = call i32 @acpi_ns_attach_object(ptr noundef nonnull %i.q, ptr noundef nonnull %i.ac, i32 noundef %i.bl) #5
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.z
  %.1.ph = phi i32 [ %i.bm, %bb.z ], [ %i.z, %bb.y ]
  call void @acpi_ut_remove_reference(ptr noundef nonnull %i.ac) #5
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.l, %.lr.ph
  %.157 = phi ptr [ %i.q, %bb.l ], [ %.05693, %.lr.ph ], [ %i.q, %.sink.split ]
  %.1 = phi i32 [ 0, %bb.l ], [ 0, %.lr.ph ], [ %.1.ph, %.sink.split ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.05892, i64 24   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not69 = icmp eq ptr %i.bo, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !11

.thread.sink.split:                               ; preds = %bb.x, %bb.v
  %.2.ph.ph = phi i32 [ %i.bf, %bb.v ], [ %i.bi, %bb.x ]
  call void @acpi_ut_remove_reference(ptr noundef nonnull %i.ac) #5
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.q, %.thread.sink.split
  %.2.ph = phi i32 [ %.2.ph.ph, %.thread.sink.split ], [ 4, %bb.q ], [ 4, %bb.h ]
  %i.bp = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5 ; 0 uses
  br label %bb.ac

._crit_edge:                                      ; preds = %bb.aa
  %i.bq = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5 ; 0 uses
  %.not78 = icmp eq i32 %.1, 0
  br i1 %.not78, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.thread, %.thread81, %._crit_edge
  %i.br = call i32 @acpi_ns_get_node(ptr noundef null, ptr noundef @.str.5, i32 noundef 0, ptr noundef @acpi_gbl_fadt_gpe_device) #5
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %._crit_edge, %bb.ab
  %.3 = phi i32 [ %.1, %._crit_edge ], [ %i.br, %bb.ab ], [ %.2.ph, %.thread ] ; 2 uses
  call void @acpi_ut_status_exit(i32 noundef 253, ptr noundef @__func__.acpi_ns_root_initialize, ptr noundef @_acpi_module_name, i32 noundef 16, i32 noundef %.3) #5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %.3, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_trace(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_status_exit(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_debug_print(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_ns_create_node(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_os_predefined_override(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ut_osi_implementation(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_os_create_semaphore(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_remove_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ut_release_mutex(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ns_get_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_ns_lookup(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 19 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  tail call void @acpi_ut_trace(i32 noundef 303, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16) #5
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @acpi_ut_status_exit(i32 noundef 306, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, i32 noundef 4097) #5
  br label %bb.br

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %4, -138                         ; 2 uses
  store ptr null, ptr %6, align 8
  %i.e = load i32, ptr @acpi_gbl_ns_lookup_count, align 4
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr @acpi_gbl_ns_lookup_count, align 4
  %i.g = load ptr, ptr @acpi_gbl_root_node, align 8 ; 4 uses
  %.not143 = icmp eq ptr %i.g, null
  br i1 %.not143, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @acpi_ut_status_exit(i32 noundef 316, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, i32 noundef 3) #5
  br label %bb.br

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !annotation !15
  store i32 0, ptr %i.c, align 4, !annotation !15
  %.not144 = icmp eq ptr %0, null
  br i1 %.not144, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 8 uses
  %.not145 = icmp eq ptr %i.i, null
  br i1 %.not145, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.j = load i32, ptr @acpi_dbg_level, align 4
  %i.k = and i32 %i.j, 1024
  %.not146 = icmp eq i32 %i.k, 0
  br i1 %.not146, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load i32, ptr @acpi_dbg_layer, align 4
  %i.m = and i32 %i.l, 16
  %.not147 = icmp eq i32 %i.m, 0
  br i1 %.not147, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 1024, i32 noundef 322, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, ptr noundef @.str.6, ptr noundef nonnull %i.g) #5
  %.pre = load ptr, ptr @acpi_gbl_root_node, align 8
  br label %.critedge

bb.j:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %i.o = load i8, ptr %i.n, align 8
  %.not148 = icmp eq i8 %i.o, 15
  br i1 %.not148, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = tail call ptr @acpi_ut_get_descriptor_name(ptr noundef nonnull %i.i) #5
  tail call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 331, ptr noundef @.str.7, ptr noundef nonnull %i.i, ptr noundef %i.p) #5
  tail call void @acpi_ut_status_exit(i32 noundef 334, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, i32 noundef 12303) #5
  br label %bb.br

bb.l:                                             ; preds = %bb.j
  %i.q = and i32 %4, 16
  %.not149 = icmp eq i32 %i.q, 0
  br i1 %.not149, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.l
  %i.r = getelementptr i8, ptr %i.i, i64 9        ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i32 @acpi_ns_opens_scope(i32 noundef %i.t) #5
  %.not150204 = icmp eq i32 %i.u, 0
  br i1 %.not150204, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %i.v = phi ptr [ %i.z, %bb.m ], [ %i.r, %.preheader ]
  %.0116205 = phi ptr [ %i.y, %bb.m ], [ %i.i, %.preheader ] ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %.not151 = icmp eq i8 %i.w, 0
  br i1 %.not151, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.x = getelementptr i8, ptr %.0116205, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 9        ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = tail call i32 @acpi_ns_opens_scope(i32 noundef %i.ab) #5
  %.not150 = icmp eq i32 %i.ac, 0
  br i1 %.not150, label %.lr.ph, label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %.lr.ph, %bb.m, %bb.g, %bb.h, %bb.i, %.preheader, %bb.l
  %.1117 = phi ptr [ %i.i, %bb.l ], [ %i.g, %bb.g ], [ %i.i, %.preheader ], [ %.pre, %bb.i ], [ %i.g, %bb.h ], [ %.0116205, %.lr.ph ], [ %i.y, %bb.m ] ; 5 uses
  %.not152 = icmp eq ptr %1, null
  br i1 %.not152, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.critedge
  %i.ad = load ptr, ptr @acpi_gbl_root_node, align 8 ; 4 uses
  store ptr %i.ad, ptr %i.b, align 8
  %i.ae = load i32, ptr @acpi_dbg_level, align 4
  %i.af = and i32 %i.ae, 1024
  %.not153 = icmp eq i32 %i.af, 0
  br i1 %.not153, label %._crit_edge224, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load i32, ptr @acpi_dbg_layer, align 4
  %i.ah = and i32 %i.ag, 16
  %.not154 = icmp eq i32 %i.ah, 0
  br i1 %.not154, label %._crit_edge224, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 1024, i32 noundef 365, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, ptr noundef @.str.9, i32 noundef %4) #5
  br label %._crit_edge224

bb.q:                                             ; preds = %.critedge
  %i.ai = load i8, ptr %1, align 1                ; 3 uses
  %i.aj = icmp eq i8 %i.ai, 92
  br i1 %i.aj, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr @acpi_gbl_root_node, align 8 ; 5 uses
  store ptr %i.ak, ptr %i.b, align 8
  %i.al = getelementptr i8, ptr %1, i64 1         ; 3 uses
  %i.am = load i32, ptr @acpi_dbg_level, align 4
  %i.an = and i32 %i.am, 1024
  %.not161 = icmp eq i32 %i.an, 0
  br i1 %.not161, label %thread-pre-split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = load i32, ptr @acpi_dbg_layer, align 4
  %i.ap = and i32 %i.ao, 16
  %.not162 = icmp eq i32 %i.ap, 0
  br i1 %.not162, label %thread-pre-split, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 1024, i32 noundef 393, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, ptr noundef @.str.10, ptr noundef %i.ak) #5
  br label %thread-pre-split

bb.u:                                             ; preds = %bb.q
  %i.aq = load i32, ptr @acpi_dbg_level, align 4
  %i.ar = and i32 %i.aq, 1024
  %.not155 = icmp eq i32 %i.ar, 0
  br i1 %.not155, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load i32, ptr @acpi_dbg_layer, align 4
  %i.at = and i32 %i.as, 16
  %.not156 = icmp eq i32 %i.at, 0
  br i1 %.not156, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = tail call ptr @acpi_ut_get_node_name(ptr noundef %.1117) #5
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 1024, i32 noundef 399, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, ptr noundef @.str.11, ptr noundef %i.au, ptr noundef %.1117) #5
  %.pre256 = load i8, ptr %1, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.av = phi i8 [ %.pre256, %bb.w ], [ %i.ai, %bb.v ], [ %i.ai, %bb.u ] ; 2 uses
  store ptr %.1117, ptr %i.b, align 8
  %i.aw = icmp eq i8 %i.av, 94
  br i1 %i.aw, label %.lr.ph210, label %._crit_edge.thread.a

bb.y:                                             ; preds = %.lr.ph210
  %i.ax = getelementptr i8, ptr %.0112209, i64 1  ; 5 uses
  %i.ay = add i32 %.0122208, 1                    ; 2 uses
  %i.az = load i8, ptr %i.ax, align 1
  %i.ba = icmp eq i8 %i.az, 94
  br i1 %i.ba, label %.lr.ph210, label %._crit_edge, !llvm.loop !13

.lr.ph210:                                        ; preds = %bb.x, %bb.y
  %.0112209 = phi ptr [ %i.ax, %bb.y ], [ %1, %bb.x ]
  %.0122208 = phi i32 [ %i.ay, %bb.y ], [ 0, %bb.x ]
  %i.bb = phi ptr [ %i.bd, %bb.y ], [ %.1117, %bb.x ]
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 7 uses
  store ptr %i.bd, ptr %i.b, align 8
  %.not159 = icmp eq ptr %i.bd, null
  br i1 %.not159, label %bb.z, label %bb.y, !llvm.loop !13

bb.z:                                             ; preds = %.lr.ph210
  %i.be = call i32 @acpi_ns_externalize_name(i32 noundef -1, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.a) #5
  %.not160 = icmp eq i32 %i.be, 0
  br i1 %.not160, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bf = load ptr, ptr %i.a, align 8
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 436, ptr noundef @.str.12, ptr noundef %i.bf) #5
  %i.bg = load ptr, ptr %i.a, align 8
  call void @kfree(ptr noundef %i.bg) #5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @acpi_ut_status_exit(i32 noundef 443, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, i32 noundef 5) #5
  br label %bb.br

._crit_edge:                                      ; preds = %bb.y
  %i.bh = load i32, ptr @acpi_dbg_level, align 4
  %i.bi = and i32 %i.bh, 1024
  %.not157 = icmp eq i32 %i.bi, 0
  br i1 %.not157, label %thread-pre-split, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.bj = load i32, ptr @acpi_dbg_layer, align 4
  %i.bk = and i32 %i.bj, 16
  %.not158 = icmp eq i32 %i.bk, 0
  br i1 %.not158, label %thread-pre-split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = tail call ptr @acpi_ut_get_node_name(ptr noundef nonnull %i.bd) #5
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 1024, i32 noundef 448, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, ptr noundef @.str.13, ptr noundef %i.bl, i32 noundef %i.ay) #5
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.t, %bb.s, %bb.r, %._crit_edge, %bb.ac, %bb.ad
  %i.bm = phi ptr [ %i.bd, %._crit_edge ], [ %i.bd, %bb.ac ], [ %i.bd, %bb.ad ], [ %i.ak, %bb.r ], [ %i.ak, %bb.s ], [ %i.ak, %bb.t ]
  %.1113.ph = phi ptr [ %i.ax, %._crit_edge ], [ %i.ax, %bb.ac ], [ %i.ax, %bb.ad ], [ %i.al, %bb.r ], [ %i.al, %bb.s ], [ %i.al, %bb.t ] ; 2 uses
  %.pr = load i8, ptr %.1113.ph, align 1
  br label %._crit_edge.thread.a

._crit_edge.thread.a:                             ; preds = %bb.x, %thread-pre-split
  %i.bn = phi ptr [ %i.bm, %thread-pre-split ], [ %.1117, %bb.x ] ; 5 uses
  %i.bo = phi i8 [ %.pr, %thread-pre-split ], [ %i.av, %bb.x ]
  %.1128 = phi i32 [ 0, %thread-pre-split ], [ 1, %bb.x ] ; 6 uses
  %.1113 = phi ptr [ %.1113.ph, %thread-pre-split ], [ %1, %bb.x ] ; 9 uses
  switch i8 %i.bo, label %bb.an [
    i8 0, label %bb.ae
    i8 46, label %bb.ah
    i8 47, label %bb.ak
  ]

bb.ae:                                            ; preds = %._crit_edge.thread.a
  %i.bp = getelementptr i8, ptr %i.bn, i64 9
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32                    ; 3 uses
  %i.bs = load i32, ptr @acpi_dbg_level, align 4
  %i.bt = and i32 %i.bs, 1024
  %.not167 = icmp eq i32 %i.bt, 0
  br i1 %.not167, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = load i32, ptr @acpi_dbg_layer, align 4
  %i.bv = and i32 %i.bu, 16
  %.not168 = icmp eq i32 %i.bv, 0
  br i1 %.not168, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 1024, i32 noundef 477, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, ptr noundef @.str.14, i32 noundef %4) #5
  br label %bb.aq

bb.ah:                                            ; preds = %._crit_edge.thread.a
  %i.bw = getelementptr i8, ptr %.1113, i64 1     ; 3 uses
  %i.bx = load i32, ptr @acpi_dbg_level, align 4
  %i.by = and i32 %i.bx, 1024
  %.not165 = icmp eq i32 %i.by, 0
  br i1 %.not165, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bz = load i32, ptr @acpi_dbg_layer, align 4
  %i.ca = and i32 %i.bz, 16
  %.not166 = icmp eq i32 %i.ca, 0
  br i1 %.not166, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 1024, i32 noundef 493, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, ptr noundef @.str.15, i32 noundef %4) #5
  br label %bb.aq

bb.ak:                                            ; preds = %._crit_edge.thread.a
  %i.cb = getelementptr i8, ptr %.1113, i64 1
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32                    ; 4 uses
  %i.ce = getelementptr i8, ptr %.1113, i64 2     ; 3 uses
  %i.cf = load i32, ptr @acpi_dbg_level, align 4
  %i.cg = and i32 %i.cf, 1024
  %.not163 = icmp eq i32 %i.cg, 0
  br i1 %.not163, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ch = load i32, ptr @acpi_dbg_layer, align 4
  %i.ci = and i32 %i.ch, 16
  %.not164 = icmp eq i32 %i.ci, 0
  br i1 %.not164, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 1024, i32 noundef 510, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, ptr noundef @.str.16, i32 noundef %i.cd, i32 noundef %4) #5
  br label %bb.aq

bb.an:                                            ; preds = %._crit_edge.thread.a
  %i.cj = load i32, ptr @acpi_dbg_level, align 4
  %i.ck = and i32 %i.cj, 1024
  %.not169 = icmp eq i32 %i.ck, 0
  br i1 %.not169, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cl = load i32, ptr @acpi_dbg_layer, align 4
  %i.cm = and i32 %i.cl, 16
  %.not170 = icmp eq i32 %i.cm, 0
  br i1 %.not170, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 1024, i32 noundef 522, ptr noundef @__func__.acpi_ns_lookup, ptr noundef @_acpi_module_name, i32 noundef 16, ptr noundef @.str.17, i32 noundef %4) #5
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.aj, %bb.ai, %bb.ah, %bb.am, %bb.al, %bb.ak, %bb.ap, %bb.ao, %bb.an
  %.2129 = phi i32 [ %.1128, %bb.ap ], [ %.1128, %bb.ao ], [ %.1128, %bb.an ], [ %.1128, %bb.ag ], [ %.1128, %bb.af ], [ %.1128, %bb.ae ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %bb.ak ]
  %.0119 = phi i32 [ 1, %bb.ap ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 2, %bb.aj ], [ 2, %bb.ai ], [ 2, %bb.ah ], [ %i.cd, %bb.am ], [ %i.cd, %bb.al ], [ %i.cd, %bb.ak ] ; 4 uses
  %.2114 = phi ptr [ %.1113, %bb.ap ], [ %.1113, %bb.ao ], [ %.1113, %bb.an ], [ %.1113, %bb.ag ], [ %.1113, %bb.af ], [ %.1113, %bb.ae ], [ %i.bw, %bb.aj ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.ah ], [ %i.ce, %bb.am ], [ %i.ce, %bb.al ], [ %i.ce, %bb.ak ] ; 3 uses
  %.0111 = phi i32 [ %2, %bb.ap ], [ %2, %bb.ao ], [ %2, %bb.an ], [ %i.br, %bb.ag ], [ %i.br, %bb.af ], [ %i.br, %bb.ae ], [ %2, %bb.aj ], [ %2, %bb.ai ], [ %2, %bb.ah ], [ %2, %bb.am ], [ %2, %bb.al ], [ %2, %bb.ak ] ; 9 uses
  tail call void @acpi_ns_print_pathname(i32 noundef %.0119, ptr noundef %.2114) #5
  %i.cn = icmp ne i32 %.0119, 0
  %i.co = icmp ne ptr %i.bn, null
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.lr.ph223, label %._crit_edge224

.lr.ph223:                                        ; preds = %bb.aq
  %i.cq = icmp ne i32 %.2129, 0
  %.not175 = trunc i32 %4 to i1
  %or.cond185.not = and i1 %i.cq, %.not175
  %i.cr = zext i1 %or.cond185.not to i32
  %i.cs = and i32 %4, 136
  %i.ct = or disjoint i32 %i.cs, %i.cr            ; 2 uses
  %i.cu = and i32 %4, 512
  %i.cv = icmp ne i32 %i.cu, 0                    ; 3 uses
  switch i32 %2, label %.lr.ph223.split [
    i32 27, label %.lr.ph223.split.us.preheader
    i32 22, label %.lr.ph223.split.us.preheader
    i32 21, label %.lr.ph223.split.us.preheader
    i32 0, label %.lr.ph223.split.us.preheader
  ]

.lr.ph223.split.us.preheader:                     ; preds = %.lr.ph223, %.lr.ph223, %.lr.ph223, %.lr.ph223
  br label %.lr.ph223.split.us

.lr.ph223.split.us:                               ; preds = %.lr.ph223.split.us.preheader, %bb.ay
  %.0118221.us = phi ptr [ %.0118.us, %bb.ay ], [ %i.bn, %.lr.ph223.split.us.preheader ] ; 2 uses
  %.4219.us = phi ptr [ %i.dn, %bb.ay ], [ %.2114, %.lr.ph223.split.us.preheader ] ; 2 uses
  %.2121218.us = phi i32 [ %i.cw, %bb.ay ], [ %.0119, %.lr.ph223.split.us.preheader ]
  %.0123217.us = phi i32 [ %spec.select233, %bb.ay ], [ %i.d, %.lr.ph223.split.us.preheader ]
  %i.cw = add nsw i32 %.2121218.us, -1            ; 2 uses
  %.not173.us = icmp ne i32 %i.cw, 0              ; 4 uses
  %spec.select232 = select i1 %.not173.us, i32 0, i32 %.0111
  %spec.select.us = select i1 %.not173.us, i32 0, i32 %i.ct
  %spec.select233 = or i32 %.0123217.us, %spec.select.us ; 2 uses
  %or.cond.us = and i1 %i.cv, %.not173.us
  %spec.store.select.us = select i1 %or.cond.us, i32 3, i32 %3
  %i.cx = load i32, ptr %.4219.us, align 4        ; 2 uses
  store i32 %i.cx, ptr %i.c, align 4
  %i.cy = call i32 @acpi_ns_search_and_enter(i32 noundef %i.cx, ptr noundef %5, ptr noundef nonnull %.0118221.us, i32 noundef %spec.store.select.us, i32 noundef %spec.select232, i32 noundef %spec.select233, ptr noundef nonnull %i.b) #5 ; 2 uses
  switch i32 %i.cy, label %.loopexit [
    i32 0, label %bb.ar
    i32 5, label %.split.us
  ]

bb.ar:                                            ; preds = %.lr.ph223.split.us
  br i1 %.not173.us, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cz = icmp eq i32 %.0111, 0
  %.0118.us.pre258 = load ptr, ptr %i.b, align 8  ; 3 uses
  br i1 %i.cz, label %bb.at, label %._crit_edge224

bb.at:                                            ; preds = %bb.as
  %i.da = getelementptr i8, ptr %.0118.us.pre258, i64 9
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  br label %._crit_edge224

bb.au:                                            ; preds = %bb.ar
  %i.dd = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 9
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = icmp eq i8 %i.df, 21
  br i1 %i.dg, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.dh = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not181.us = icmp eq ptr %i.dh, null
  br i1 %.not181.us, label %.split230.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.di = getelementptr i8, ptr %i.dh, i64 9
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = call i32 @acpi_ns_opens_scope(i32 noundef %i.dk) #5
  %.not182.us = icmp eq i32 %i.dl, 0
  %.0118.us.pre = load ptr, ptr %i.b, align 8     ; 2 uses
  br i1 %.not182.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dm = load ptr, ptr %.0118.us.pre, align 8    ; 2 uses
  store ptr %i.dm, ptr %i.b, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.au
  %.0118.us = phi ptr [ %i.dm, %bb.ax ], [ %.0118.us.pre, %bb.aw ], [ %i.dd, %bb.au ] ; 3 uses
  %i.dn = getelementptr i8, ptr %.4219.us, i64 4
  %.not330 = icmp eq ptr %.0118.us, null
  br i1 %.not330, label %._crit_edge224, label %.lr.ph223.split.us, !llvm.loop !14

.lr.ph223.split:                                  ; preds = %.lr.ph223, %bb.bm
  %.0118221 = phi ptr [ %.0118, %bb.bm ], [ %i.bn, %.lr.ph223 ] ; 2 uses
  %.4219 = phi ptr [ %i.ep, %bb.bm ], [ %.2114, %.lr.ph223 ] ; 2 uses
  %.2121218 = phi i32 [ %i.do, %bb.bm ], [ %.0119, %.lr.ph223 ]
  %.0123217 = phi i32 [ %spec.select235, %bb.bm ], [ %i.d, %.lr.ph223 ]
  %i.do = add nsw i32 %.2121218, -1               ; 2 uses
  %.not173 = icmp ne i32 %i.do, 0                 ; 4 uses
  %spec.select234 = select i1 %.not173, i32 0, i32 %.0111
  %spec.select = select i1 %.not173, i32 0, i32 %i.ct
  %spec.select235 = or i32 %.0123217, %spec.select ; 2 uses
  %or.cond = and i1 %i.cv, %.not173
  %spec.store.select = select i1 %or.cond, i32 3, i32 %3
  %i.dp = load i32, ptr %.4219, align 4           ; 2 uses
  store i32 %i.dp, ptr %i.c, align 4
  %i.dq = call i32 @acpi_ns_search_and_enter(i32 noundef %i.dp, ptr noundef %5, ptr noundef nonnull %.0118221, i32 noundef %spec.store.select, i32 noundef %spec.select234, i32 noundef %spec.select235, ptr noundef nonnull %i.b) #5 ; 2 uses
  switch i32 %i.dq, label %.loopexit [
    i32 0, label %bb.bd
    i32 5, label %.split.us
  ]

.split.us:                                        ; preds = %.lr.ph223.split.us, %.lr.ph223.split
  %.us-phi228 = phi ptr [ %.0118221, %.lr.ph223.split ], [ %.0118221.us, %.lr.ph223.split.us ] ; 2 uses
  br i1 %i.cv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.split.us
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.18, ptr noundef nonnull %i.c) #5
end_hunk_0
