Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dsfield?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
@.str.2 = private unnamed_addr constant [49 x i8] c"Bit offset within field too large (> 0xFFFFFFFF)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Field [%4.4s] bit offset too large (> 0xFFFFFFFF)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid opcode in field list: 0x%X\00", align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_ds_create_buffer_field(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  tail call void @acpi_ut_trace(i32 noundef 130, ptr noundef @__func__.acpi_ds_create_buffer_field, ptr noundef @_acpi_module_name, i32 noundef 64) #6
  %i.b = getelementptr i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2
  %i.d = icmp eq i16 %i.c, 23315
  %. = select i1 %i.d, i32 3, i32 2
  %i.e = tail call ptr @acpi_ps_get_arg(ptr noundef %0, i32 noundef %.) #6 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @acpi_ut_status_exit(i32 noundef 147, ptr noundef @__func__.acpi_ds_create_buffer_field, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef 12290) #6
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !10
  %i.f = getelementptr i8, ptr %1, i64 976
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not50 = icmp eq ptr %i.g, null
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.a, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 52         ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = and i32 %i.i, 48
  %.not51 = icmp eq i32 %i.j, 0
  br i1 %.not51, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 156, ptr noundef @.str) #6
  tail call void @acpi_ut_status_exit(i32 noundef 157, ptr noundef @__func__.acpi_ds_create_buffer_field, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef 12303) #6
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 1016
  %i.l = load ptr, ptr %i.k, align 8
  %.not52 = icmp ne ptr %i.l, null
  %i.m = and i32 %i.i, 1024
  %.not53 = icmp eq i32 %i.m, 0
  %or.cond57 = and i1 %.not53, %.not52
  %.046 = select i1 %or.cond57, i32 74, i32 10
  %i.n = getelementptr i8, ptr %1, i64 1080       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.e, i64 40       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call i32 @acpi_ns_lookup(ptr noundef %i.o, ptr noundef %i.q, i32 noundef 0, i32 noundef 1, i32 noundef %.046, ptr noundef %1, ptr noundef nonnull %i.a) #6 ; 5 uses
  %i.s = load i32, ptr %i.h, align 4
  %i.t = and i32 %i.s, 512
  %i.u = icmp ne i32 %i.t, 0
  %i.v = icmp eq i32 %i.r, 7
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  %.not54 = icmp eq i32 %i.r, 0
  %or.cond58 = select i1 %or.cond, i1 true, i1 %.not54
  br i1 %or.cond58, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = load ptr, ptr %i.p, align 8
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 185, ptr noundef %i.w, ptr noundef %i.x, i32 noundef %i.r) #6
  call void @acpi_ut_status_exit(i32 noundef 186, ptr noundef @__func__.acpi_ds_create_buffer_field, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef %i.r) #6
  br label %bb.n

bb.i:                                             ; preds = %._crit_edge, %bb.d
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %i.g, %bb.d ] ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = call ptr @acpi_ns_get_attached_object(ptr noundef %i.y) #6
  %.not55 = icmp eq ptr %i.aa, null
  br i1 %.not55, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @acpi_ut_status_exit(i32 noundef 204, ptr noundef @__func__.acpi_ds_create_buffer_field, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef 0) #6
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ab = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 214, i32 noundef 64, i32 noundef 14) #6 ; 5 uses
  %.not56 = icmp eq ptr %i.ab, null
  br i1 %.not56, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ac, i64 40
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
  call void @acpi_ut_status_exit(i32 noundef 241, ptr noundef @__func__.acpi_ds_create_buffer_field, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef %.045) #6
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
  tail call void @acpi_ut_trace_ptr(i32 noundef 481, ptr noundef @__func__.acpi_ds_create_field, ptr noundef @_acpi_module_name, i32 noundef 64, ptr noundef %0) #6
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
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 501, ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.h) #6
  call void @acpi_ut_status_exit(i32 noundef 502, ptr noundef @__func__.acpi_ds_create_field, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef %i.h) #6
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge ], [ %1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i8 0, i64 64, i1 false)
  %i.m = getelementptr i8, ptr %i.c, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load i64, ptr %i.o, align 8
  %.fr = freeze i64 %i.p
  %4 = trunc i64 %.fr to i16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %5 = and i16 %4, 255
  store i16 %5, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 66
  store i8 17, ptr %i.r, align 2
  store ptr %i.k, ptr %3, align 8
  %i.s = getelementptr i8, ptr %i.n, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call fastcc i32 @acpi_ds_get_field_names(ptr noundef nonnull %3, ptr noundef %2, ptr noundef %i.t) #7, !srcloc !12 ; 3 uses
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @acpi_ut_status_exit(i32 noundef 521, ptr noundef @__func__.acpi_ds_create_field, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef %i.u) #6
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %3, align 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 13
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 10
  br i1 %i.z, label %_kzalloc_noprof.exit, label %bb.h

_kzalloc_noprof.exit:                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.w, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !13
  %i.ad = and i64 %i.ac, 512
  %.not.i.not = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not.i.not, i32 2336, i32 3520
  %i.af = zext i32 %i.ab to i64
  %i.ag = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.af, i32 noundef range(i32 2304, 3584) %i.ae) #8
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 64
  store ptr %i.ag, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 64
  %i.an = load ptr, ptr %i.am, align 8
  %.not40 = icmp eq ptr %i.an, null
  br i1 %.not40, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_kzalloc_noprof.exit
  call void @acpi_ut_status_exit(i32 noundef 530, ptr noundef @__func__.acpi_ds_create_field, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef 4) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %_kzalloc_noprof.exit
  call void @acpi_ut_status_exit(i32 noundef 534, ptr noundef @__func__.acpi_ds_create_field, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef 0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ %i.u, %bb.e ], [ 0, %bb.h ], [ 4, %bb.g ], [ %i.h, %bb.c ]
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
  tail call void @acpi_ut_trace_ptr(i32 noundef 274, ptr noundef @__func__.acpi_ds_get_field_names, ptr noundef @_acpi_module_name, i32 noundef 64, ptr noundef %0) #6
  %i.a = getelementptr i8, ptr %0, i64 52         ; 5 uses
  store i32 0, ptr %i.a, align 4
  %.not107 = icmp eq ptr %2, null
  br i1 %.not107, label %._crit_edge, label %.lr.ph

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
  %.075108 = phi ptr [ %2, %.lr.ph ], [ %i.bs, %bb.t ] ; 8 uses
  %i.m = getelementptr i8, ptr %.075108, i64 10
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  switch i16 %i.n, label %bb.s [
    i16 49, label %bb.c
    i16 50, label %bb.f
    i16 57, label %bb.f
    i16 56, label %bb.g
    i16 48, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 4              ; 2 uses
  %i.p = getelementptr i8, ptr %.075108, i64 40
  %i.q = load i32, ptr %i.p, align 8
  %add = add i32 %i.q, %i.o                       ; 2 uses
  %add.overflow84 = icmp ult i32 %add, %i.o
  br i1 %add.overflow84, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 297, ptr noundef @.str.2) #6
  tail call void @acpi_ut_status_exit(i32 noundef 299, ptr noundef @__func__.acpi_ds_get_field_names, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef 15) #6
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  store i32 %add, ptr %i.a, align 4
  br label %bb.t

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.r = load i8, ptr %i.j, align 8
  %i.s = and i8 %i.r, -16
  %i.t = getelementptr i8, ptr %.075108, i64 40   ; 3 uses
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
  %i.ae = getelementptr i8, ptr %.075108, i64 40
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
  tail call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 369, ptr noundef %i.at, ptr noundef %i.au, i32 noundef %i.ar) #6
  tail call void @acpi_ut_status_exit(i32 noundef 370, ptr noundef @__func__.acpi_ds_get_field_names, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef %i.ar) #6
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = getelementptr i8, ptr %.075108, i64 100 ; 2 uses
  %i.ax = load i8, ptr %i.c, align 2
  %i.ay = zext i8 %i.ax to i32
  %i.az = tail call i32 @acpi_ns_lookup(ptr noundef %i.av, ptr noundef %i.aw, i32 noundef %i.ay, i32 noundef 3, i32 noundef 2, ptr noundef %1, ptr noundef %i.d) #6 ; 4 uses
  %.not80 = icmp eq i32 %i.az, 0
  br i1 %.not80, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.b, align 8
  tail call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 388, ptr noundef %i.ba, ptr noundef %i.aw, i32 noundef %i.az) #6
  tail call void @acpi_ut_status_exit(i32 noundef 389, ptr noundef @__func__.acpi_ds_get_field_names, ptr noundef @_acpi_module_name, i32 noundef 64, i32 noundef %i.az) #6
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bc = getelementptr i8, ptr %.075108, i64 32
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.075108, i64 40  ; 2 uses
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
end_hunk_0
