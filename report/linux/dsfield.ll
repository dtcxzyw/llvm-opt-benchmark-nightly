Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dsfield?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@acpi_ds_create_buffer_field:bb.a
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %0, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ac, i64 48
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ab, i64 16
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = call i32 @acpi_ns_attach_object(ptr noundef %i.aj, ptr noundef nonnull %i.ab, i32 noundef 14) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.045 = phi i32 [ %i.al, %bb.l ], [ 4, %bb.k ]  ; 2 uses
  call void @acpi_ut_remove_reference(ptr noundef %i.ab) #6
  call void @acpi_ut_status_exit(i32 noundef 241, ptr noundef nonnull @__func__.acpi_ds_create_buffer_field, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %.045) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.j ], [ %.045, %bb.m ], [ %i.r, %bb.h ], [ 12303, %bb.f ], [ 12290, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_trace(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_ps_get_arg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_status_exit(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_prefixed_namespace_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_ns_get_attached_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_remove_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_ds_create_field(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.acpi_create_field_info, align 8 ; 8 uses
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  tail call void @acpi_ut_trace_ptr(i32 noundef 481, ptr noundef nonnull @__func__.acpi_ds_create_field, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, ptr noundef %0) #6
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 1080       ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.c, i64 40       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i32 @acpi_ns_lookup(ptr noundef %i.e, ptr noundef %i.g, i32 noundef 10, i32 noundef 3, i32 noundef 1, ptr noundef %2, ptr noundef nonnull %i.a) #6 ; 4 uses
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.f, align 8
  call void @acpi_ut_prefixed_namespace_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 501, ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.h) #6
  call void @acpi_ut_status_exit(i32 noundef 502, ptr noundef nonnull @__func__.acpi_ds_create_field, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.h) #6
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge ], [ %1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i8 0, i64 64, i1 false)
  %i.m = getelementptr i8, ptr %i.c, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 66
  store i8 17, ptr %i.s, align 2
  store ptr %i.k, ptr %3, align 8
  %i.t = getelementptr i8, ptr %i.n, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call fastcc i32 @acpi_ds_get_field_names(ptr noundef nonnull %3, ptr noundef %2, ptr noundef %i.u) #7, !srcloc !12 ; 3 uses
  %.not38 = icmp eq i32 %i.v, 0
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @acpi_ut_status_exit(i32 noundef 521, ptr noundef nonnull @__func__.acpi_ds_create_field, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.v) #6
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %3, align 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 13
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 10
  br i1 %i.aa, label %_kzalloc_noprof.exit, label %bb.h

_kzalloc_noprof.exit:                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.x, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !13
  %i.ae = and i64 %i.ad, 512
  %.not.i.not = icmp eq i64 %i.ae, 0
  %i.af = select i1 %.not.i.not, i32 2336, i32 3520
  %i.ag = zext i32 %i.ac to i64
  %i.ah = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.ag, i32 noundef range(i32 2304, 3584) %i.af) #8
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 64
  store ptr %i.ah, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8
  %.not40 = icmp eq ptr %i.ao, null
  br i1 %.not40, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_kzalloc_noprof.exit
  call void @acpi_ut_status_exit(i32 noundef 530, ptr noundef nonnull @__func__.acpi_ds_create_field, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 4) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %_kzalloc_noprof.exit
  call void @acpi_ut_status_exit(i32 noundef 534, ptr noundef nonnull @__func__.acpi_ds_create_field, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ %i.v, %bb.e ], [ 0, %bb.h ], [ 4, %bb.g ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_trace_ptr(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @acpi_ds_get_field_names(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @acpi_ut_trace_ptr(i32 noundef 274, ptr noundef nonnull @__func__.acpi_ds_get_field_names, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, ptr noundef %0) #6
  %i.a = getelementptr i8, ptr %0, i64 52         ; 5 uses
  store i32 0, ptr %i.a, align 4
  %.not106 = icmp eq ptr %2, null
  br i1 %.not106, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 1080       ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 66
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 62         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 60
  %i.j = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 65
  %i.l = getelementptr i8, ptr %0, i64 67
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.075107 = phi ptr [ %2, %.lr.ph ], [ %i.bs, %bb.t ] ; 8 uses
  %i.m = getelementptr i8, ptr %.075107, i64 10
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  switch i16 %i.n, label %bb.s [
    i16 49, label %bb.c
    i16 50, label %bb.f
    i16 57, label %bb.f
    i16 56, label %bb.g
    i16 48, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 4
  %3 = zext i32 %i.o to i64
  %i.p = getelementptr i8, ptr %.075107, i64 40
  %i.q = load i32, ptr %i.p, align 8
  %4 = zext i32 %i.q to i64
  %5 = add nuw nsw i64 %4, %3                     ; 2 uses
  %6 = icmp samesign ugt i64 %5, 4294967295
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 297, ptr noundef nonnull @.str.2) #6
  tail call void @acpi_ut_status_exit(i32 noundef 299, ptr noundef nonnull @__func__.acpi_ds_get_field_names, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 15) #6
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %7 = trunc nuw i64 %5 to i32
  store i32 %7, ptr %i.a, align 4
  br label %bb.t

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.r = load i8, ptr %i.j, align 8
  %i.s = and i8 %i.r, -16
  %i.t = getelementptr i8, ptr %.075107, i64 40   ; 3 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 7
  %i.x = or disjoint i8 %i.w, %i.s
  store i8 %i.x, ptr %i.j, align 8
  %i.y = load i64, ptr %i.t, align 8
  %i.z = lshr i64 %i.y, 8
  %i.aa = trunc i64 %i.z to i8
  store i8 %i.aa, ptr %i.k, align 1
  %i.ab = load i64, ptr %i.t, align 8
  %i.ac = lshr i64 %i.ab, 16
  %i.ad = trunc i64 %i.ac to i8
  store i8 %i.ad, ptr %i.l, align 1
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  store i16 0, ptr %i.f, align 2
  %i.ae = getelementptr i8, ptr %.075107, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 10
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = icmp eq i16 %i.ah, 51
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %i.af, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.g, align 8
  %i.al = getelementptr i8, ptr %i.af, i64 40
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i16
  store i16 %i.an, ptr %i.i, align 4
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = getelementptr i8, ptr %i.af, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 @acpi_ns_lookup(ptr noundef %i.ao, ptr noundef %i.aq, i32 noundef 0, i32 noundef 3, i32 noundef 2, ptr noundef %1, ptr noundef %i.h) #6 ; 4 uses
  %.not83 = icmp eq i32 %i.ar, 0
  br i1 %.not83, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.af, i64 40
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = load ptr, ptr %i.as, align 8
  tail call void @acpi_ut_prefixed_namespace_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 369, ptr noundef %i.at, ptr noundef %i.au, i32 noundef %i.ar) #6
  tail call void @acpi_ut_status_exit(i32 noundef 370, ptr noundef nonnull @__func__.acpi_ds_get_field_names, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.ar) #6
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = getelementptr i8, ptr %.075107, i64 100 ; 2 uses
  %i.ax = load i8, ptr %i.c, align 2
  %i.ay = zext i8 %i.ax to i32
  %i.az = tail call i32 @acpi_ns_lookup(ptr noundef %i.av, ptr noundef %i.aw, i32 noundef %i.ay, i32 noundef 3, i32 noundef 2, ptr noundef %1, ptr noundef %i.d) #6 ; 4 uses
  %.not80 = icmp eq i32 %i.az, 0
  br i1 %.not80, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.b, align 8
  tail call void @acpi_ut_prefixed_namespace_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 388, ptr noundef %i.ba, ptr noundef %i.aw, i32 noundef %i.az) #6
  tail call void @acpi_ut_status_exit(i32 noundef 389, ptr noundef nonnull @__func__.acpi_ds_get_field_names, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.az) #6
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bc = getelementptr i8, ptr %.075107, i64 32
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.075107, i64 40  ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  store i32 %i.be, ptr %i.e, align 8
  %i.bf = tail call ptr @acpi_ns_get_attached_object(ptr noundef %i.bb) #6
  %.not81 = icmp eq ptr %i.bf, null
  br i1 %.not81, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call i32 @acpi_ex_prep_field_value(ptr noundef %0) #6 ; 3 uses
  %.not82 = icmp eq i32 %i.bg, 0
  br i1 %.not82, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @acpi_ut_status_exit(i32 noundef 404, ptr noundef nonnull @__func__.acpi_ds_get_field_names, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.bg) #6
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.n
  %i.bh = load i32, ptr %i.a, align 4             ; 2 uses
  %8 = zext i32 %i.bh to i64
  %i.bi = load i32, ptr %i.bd, align 8
  %9 = zext i32 %i.bi to i64
  %10 = add nuw nsw i64 %9, %8
  %i.bj = icmp samesign ugt i64 %10, 4294967295
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.d, align 8
  %i.bl = getelementptr i8, ptr %i.bk, i64 12
  tail call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 432, ptr noundef nonnull @.str.3, ptr noundef %i.bl) #6
  tail call void @acpi_ut_status_exit(i32 noundef 437, ptr noundef nonnull @__func__.acpi_ds_get_field_names, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 15) #6
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %i.e, align 8
  %i.bn = add i32 %i.bm, %i.bh
  store i32 %i.bn, ptr %i.a, align 4
  %i.bo = load i16, ptr %i.f, align 2
  %i.bp = add i16 %i.bo, 1
  store i16 %i.bp, ptr %i.f, align 2
  br label %bb.t

bb.s:                                             ; preds = %bb.b
  %i.bq = zext i16 %i.n to i32
  tail call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 446, ptr noundef nonnull @.str.4, i32 noundef %i.bq) #6
  tail call void @acpi_ut_status_exit(i32 noundef 449, ptr noundef nonnull @__func__.acpi_ds_get_field_names, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 12289) #6
  br label %bb.u

bb.t:                                             ; preds = %bb.h, %bb.i, %bb.r, %bb.f, %bb.e
  %i.br = getelementptr i8, ptr %.075107, i64 24
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.t, %bb.a
  tail call void @acpi_ut_status_exit(i32 noundef 455, ptr noundef nonnull @__func__.acpi_ds_get_field_names, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 0) #6
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.s, %bb.q, %bb.o, %bb.l, %bb.j, %bb.d
  %.0 = phi i32 [ 12289, %bb.s ], [ 15, %bb.d ], [ %i.ar, %bb.j ], [ %i.az, %bb.l ], [ 15, %bb.q ], [ %i.bg, %bb.o ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_ds_init_field_objects(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  tail call void @acpi_ut_trace_ptr(i32 noundef 562, ptr noundef nonnull @__func__.acpi_ds_init_field_objects, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, ptr noundef %0) #6
  %i.b = getelementptr i8, ptr %1, i64 52         ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = and i32 %i.c, 48
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 256
  %.not39 = icmp eq i32 %i.e, 0
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @acpi_ut_status_exit(i32 noundef 571, ptr noundef nonnull @__func__.acpi_ds_init_field_objects, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 0) #6
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 574, ptr noundef nonnull @.str.1) #6
  tail call void @acpi_ut_status_exit(i32 noundef 575, ptr noundef nonnull @__func__.acpi_ds_init_field_objects, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 12303) #6
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 10
  %i.g = load i16, ptr %i.f, align 2
  switch i16 %i.g, label %bb.h [
    i16 23425, label %bb.i
    i16 23431, label %bb.f
    i16 23430, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @acpi_ut_status_exit(i32 noundef 603, ptr noundef nonnull @__func__.acpi_ds_init_field_objects, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 4097) #6
  br label %bb.r

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.sink = phi i32 [ 3, %bb.g ], [ 4, %bb.f ], [ 2, %bb.e ]
  %.036 = phi i32 [ 19, %bb.g ], [ 18, %bb.f ], [ 17, %bb.e ]
  %i.h = tail call ptr @acpi_ps_get_arg(ptr noundef %0, i32 noundef %.sink) #6 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 1016
  %i.j = load ptr, ptr %i.i, align 8
  %.not40 = icmp eq ptr %i.j, null
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = load i32, ptr %i.b, align 4
  %i.l = and i32 %i.k, 1024
  %.not41 = icmp eq i32 %i.l, 0
  %spec.select = select i1 %.not41, i32 74, i32 10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.037 = phi i32 [ %spec.select, %bb.j ], [ 10, %bb.i ]
  store ptr null, ptr %i.a, align 8, !annotation !10
  %.not4245 = icmp eq ptr %i.h, null
  br i1 %.not4245, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.m = getelementptr i8, ptr %1, i64 1080       ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.q
  %.146 = phi ptr [ %i.h, %.lr.ph ], [ %i.x, %bb.q ] ; 4 uses
  %i.n = getelementptr i8, ptr %.146, i64 10
  %i.o = load i16, ptr %i.n, align 2
  %i.p = icmp eq i16 %i.o, 48
  br i1 %i.p, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr i8, ptr %.146, i64 100     ; 2 uses
  %i.s = call i32 @acpi_ns_lookup(ptr noundef %i.q, ptr noundef %i.r, i32 noundef %.036, i32 noundef 1, i32 noundef %.037, ptr noundef %1, ptr noundef nonnull %i.a) #6 ; 5 uses
  %.not43 = icmp eq i32 %i.s, 0
  br i1 %.not43, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = load ptr, ptr %i.m, align 8
  call void @acpi_ut_prefixed_namespace_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 639, ptr noundef %i.t, ptr noundef %i.r, i32 noundef %i.s) #6
  %.not44 = icmp eq i32 %i.s, 7
  br i1 %.not44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @acpi_ut_status_exit(i32 noundef 641, ptr noundef nonnull @__func__.acpi_ds_init_field_objects, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.s) #6
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr i8, ptr %.146, i64 32
  store ptr %i.u, ptr %i.v, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.w = getelementptr i8, ptr %.146, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not42 = icmp eq ptr %i.x, null
  br i1 %.not42, label %._crit_edge, label %bb.l, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.q, %bb.k
  call void @acpi_ut_status_exit(i32 noundef 655, ptr noundef nonnull @__func__.acpi_ds_init_field_objects, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 0) #6
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.o, %bb.h, %bb.d, %bb.c
  %.0 = phi i32 [ 4097, %bb.h ], [ %i.s, %bb.o ], [ 0, %._crit_edge ], [ 0, %bb.c ], [ 12303, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_ds_create_bank_field(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %struct.acpi_create_field_info, align 8 ; 9 uses
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false), !annotation !10
  tail call void @acpi_ut_trace_ptr(i32 noundef 681, ptr noundef nonnull @__func__.acpi_ds_create_bank_field, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, ptr noundef %0) #6
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 1080       ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.c, i64 40       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i32 @acpi_ns_lookup(ptr noundef %i.e, ptr noundef %i.g, i32 noundef 10, i32 noundef 3, i32 noundef 1, ptr noundef %2, ptr noundef nonnull %i.a) #6 ; 4 uses
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.f, align 8
  call void @acpi_ut_prefixed_namespace_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 700, ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.h) #6
  call void @acpi_ut_status_exit(i32 noundef 701, ptr noundef nonnull @__func__.acpi_ds_create_bank_field, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.h) #6
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr i8, ptr %i.c, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 1080       ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 40       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = call i32 @acpi_ns_lookup(ptr noundef %i.n, ptr noundef %i.p, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef %2, ptr noundef nonnull %i.q) #6 ; 4 uses
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.m, align 8
end_hunk_0
