Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dswload2?download=true
begin_hunk_0_@acpi_ds_load2_begin_op:bb.a
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  %i.v = icmp eq i16 %.pre, 45
  br i1 %i.v, label %.thread173, label %bb.n

.thread173:                                       ; preds = %bb.i, %bb.l
  %i.w = getelementptr i8, ptr %i.c, i64 40
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not130 = icmp eq ptr %i.x, null
  br i1 %.not130, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.thread173
  tail call void @acpi_ut_status_exit(i32 noundef 84, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 0) #4
  br label %bb.bb

bb.n:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.c, i64 100
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %0, i64 56
  %i.aa = tail call ptr @acpi_ps_get_next_namestring(ptr noundef %i.z) #4
  %.phi.trans.insert156 = getelementptr i8, ptr %0, i64 1040
  %.pre157 = load ptr, ptr %.phi.trans.insert156, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %.thread173, %bb.o
  %i.ab = phi ptr [ %i.o, %.thread173 ], [ %i.o, %bb.n ], [ %.pre157, %bb.o ]
  %.0105 = phi ptr [ %i.x, %.thread173 ], [ %i.y, %bb.n ], [ %i.aa, %bb.o ] ; 5 uses
  %i.ac = getelementptr i8, ptr %0, i64 1040
  %i.ad = getelementptr i8, ptr %i.ab, i64 18
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = zext i8 %i.ae to i32                    ; 7 uses
  %i.ag = load i32, ptr @acpi_dbg_level, align 4
  %i.ah = and i32 %i.ag, 256
  %.not131 = icmp eq i32 %i.ah, 0
  br i1 %.not131, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = load i32, ptr @acpi_dbg_layer, align 4
  %i.aj = and i32 %i.ai, 64
  %.not132 = icmp eq i32 %i.aj, 0
  br i1 %.not132, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 256, i32 noundef 102, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %i.c, i32 noundef %i.af) #4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.ak = getelementptr i8, ptr %0, i64 10        ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2
  switch i16 %i.al, label %bb.af [
    i16 23425, label %bb.t
    i16 23431, label %bb.t
    i16 23430, label %bb.t
    i16 45, label %bb.au
    i16 16, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s
  store ptr null, ptr %i.a, align 8
  br label %.thread

bb.u:                                             ; preds = %bb.s
  br i1 %.not125, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = getelementptr i8, ptr %i.c, i64 32
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = load ptr, ptr @acpi_gbl_root_node, align 8
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  store ptr %i.an, ptr %i.a, align 8
  %i.aq = tail call i32 @acpi_ds_scope_stack_push(ptr noundef %i.an, i32 noundef %i.af, ptr noundef %0) #4 ; 3 uses
  %.not134 = icmp eq i32 %i.aq, 0
  br i1 %.not134, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @acpi_ut_status_exit(i32 noundef 138, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.aq) #4
  br label %bb.bb

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.ar = getelementptr i8, ptr %0, i64 1080      ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i32 @acpi_ns_lookup(ptr noundef %i.as, ptr noundef %.0105, i32 noundef %i.af, i32 noundef 3, i32 noundef 1, ptr noundef %0, ptr noundef nonnull %i.a) #4 ; 4 uses
  %.not133 = icmp eq i32 %i.at, 0
  br i1 %.not133, label %._crit_edge158, label %bb.z

._crit_edge158:                                   ; preds = %bb.y
  %.pre159 = load ptr, ptr %i.a, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.au = load ptr, ptr %i.ar, align 8
  call void @acpi_ut_prefixed_namespace_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 163, ptr noundef %i.au, ptr noundef %.0105, i32 noundef %i.at) #4
  call void @acpi_ut_status_exit(i32 noundef 165, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.at) #4
  br label %bb.bb

bb.aa:                                            ; preds = %._crit_edge158, %bb.w
  %i.av = phi ptr [ %.pre159, %._crit_edge158 ], [ %i.an, %bb.w ] ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 9
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  switch i8 %i.ax, label %bb.ae [
    i8 0, label %.thread
    i8 27, label %.thread
    i8 6, label %.thread
    i8 11, label %.thread
    i8 12, label %.thread
    i8 13, label %.thread
    i8 1, label %bb.ab
    i8 2, label %bb.ab
    i8 3, label %bb.ab
    i8 8, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  %i.ay = call ptr @acpi_ut_get_node_name(ptr noundef %i.av) #4
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 9
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = call ptr @acpi_ut_get_type_name(i32 noundef %i.bc) #4
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef nonnull @_acpi_module_name, i32 noundef 195, ptr noundef nonnull @.str.2, ptr noundef %i.ay, ptr noundef %i.bd) #4
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 9
  store i8 0, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %0, i64 1080
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 10
  store i16 0, ptr %i.bi, align 2
  br label %.thread

bb.ac:                                            ; preds = %bb.aa
  %i.bj = load ptr, ptr @acpi_gbl_root_node, align 8
  %i.bk = icmp eq ptr %i.av, %i.bj
  br i1 %i.bk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bl = getelementptr i8, ptr %0, i64 52
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bm, 1024
  %.not135 = icmp eq i32 %i.bn, 0
  br i1 %.not135, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %i.bo = zext i8 %i.ax to i32
  %i.bp = call ptr @acpi_ut_get_type_name(i32 noundef %i.bo) #4
  %i.bq = load ptr, ptr %i.a, align 8
  %i.br = call ptr @acpi_ut_get_node_name(ptr noundef %i.bq) #4
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 223, ptr noundef nonnull @.str.3, ptr noundef %i.bp, ptr noundef %i.br) #4
  call void @acpi_ut_status_exit(i32 noundef 229, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 12291) #4
  br label %bb.bb

bb.af:                                            ; preds = %bb.s
  br i1 %.not125, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bs = getelementptr i8, ptr %i.c, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not136 = icmp eq ptr %i.bt, null
  br i1 %.not136, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bu = tail call i32 @acpi_ns_opens_scope(i32 noundef %i.af) #4
  %.not147 = icmp eq i32 %i.bu, 0
  br i1 %.not147, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bv = tail call i32 @acpi_ds_scope_stack_push(ptr noundef nonnull %i.bt, i32 noundef %i.af, ptr noundef %0) #4 ; 3 uses
  %.not148 = icmp eq i32 %i.bv, 0
  br i1 %.not148, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @acpi_ut_status_exit(i32 noundef 248, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %i.bv) #4
  br label %bb.bb

bb.ak:                                            ; preds = %bb.ah, %bb.ai
  tail call void @acpi_ut_status_exit(i32 noundef 252, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 0) #4
  br label %bb.bb

bb.al:                                            ; preds = %bb.ag, %bb.af
  %i.bw = getelementptr i8, ptr %0, i64 976
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not137 = icmp eq ptr %i.bx, null
  br i1 %.not137, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.bx, ptr %i.a, align 8
  br label %.thread

bb.an:                                            ; preds = %bb.al
  %i.by = getelementptr i8, ptr %0, i64 22
  %i.bz = load i8, ptr %i.by, align 2
  %i.ca = icmp eq i8 %i.bz, 3
  br i1 %i.ca, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cb = getelementptr i8, ptr %0, i64 52
  %i.cc = load i32, ptr %i.cb, align 4
  %2 = and i32 %i.cc, 1024
  %.not138 = icmp eq i32 %2, 0
  %spec.select = select i1 %.not138, i32 72, i32 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0106 = phi i32 [ %spec.select, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.cd = load ptr, ptr %i.ac, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = shl i16 %i.cf, 3
  %i.ch = and i16 %i.cg, 512
  %i.ci = zext nneg i16 %i.ch to i32
  %spec.select149 = or disjoint i32 %.0106, %i.ci
  %i.cj = getelementptr i8, ptr %0, i64 1080
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call i32 @acpi_ns_lookup(ptr noundef %i.ck, ptr noundef %.0105, i32 noundef %i.af, i32 noundef 2, i32 noundef %spec.select149, ptr noundef %0, ptr noundef nonnull %i.a) #4 ; 2 uses
  %.not140 = icmp eq i32 %i.cl, 0
  br i1 %.not140, label %bb.aq, label %.thread152

bb.aq:                                            ; preds = %bb.ap
  %.not141 = icmp samesign ult i32 %.0106, 64
  br i1 %.not141, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cm = load i32, ptr @acpi_dbg_level, align 4
  %i.cn = and i32 %i.cm, 256
  %.not142 = icmp eq i32 %i.cn, 0
  br i1 %.not142, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.co = load i32, ptr @acpi_dbg_layer, align 4
  %i.cp = and i32 %i.co, 64
  %.not143 = icmp eq i32 %i.cp, 0
  br i1 %.not143, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cq = load ptr, ptr %i.a, align 8
  %i.cr = call ptr @acpi_ut_get_node_name(ptr noundef %i.cq) #4
  %i.cs = load ptr, ptr %i.a, align 8
  call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 256, i32 noundef 318, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, ptr noundef nonnull @.str.4, ptr noundef %i.cr, ptr noundef %i.cs) #4
  br label %.thread

bb.au:                                            ; preds = %bb.s
  %i.ct = getelementptr i8, ptr %0, i64 1080
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call i32 @acpi_ns_lookup(ptr noundef %i.cu, ptr noundef %.0105, i32 noundef %i.af, i32 noundef 3, i32 noundef 1, ptr noundef %0, ptr noundef nonnull %i.a) #4 ; 2 uses
  %.not144 = icmp eq i32 %i.cv, 0
  br i1 %.not144, label %.thread, label %.thread152

.thread152:                                       ; preds = %bb.ap, %bb.au
  %.1155 = phi i32 [ %i.cv, %bb.au ], [ %i.cl, %bb.ap ] ; 3 uses
  %i.cw = getelementptr i8, ptr %0, i64 1080
  %i.cx = load ptr, ptr %i.cw, align 8
  call void @acpi_ut_prefixed_namespace_error(ptr noundef nonnull @_acpi_module_name, i32 noundef 327, ptr noundef %i.cx, ptr noundef %.0105, i32 noundef %.1155) #4
  call void @acpi_ut_status_exit(i32 noundef 328, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef %.1155) #4
  br label %bb.bb

.thread:                                          ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.t, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.am, %bb.au
  br i1 %.not125, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %.thread
  %i.cy = load i16, ptr %i.ak, align 2
  %i.cz = getelementptr i8, ptr %0, i64 32
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call ptr @acpi_ps_alloc_op(i16 noundef zeroext %i.cy, ptr noundef %i.da) #4 ; 4 uses
  %.not145 = icmp eq ptr %i.db, null
  br i1 %.not145, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @acpi_ut_status_exit(i32 noundef 337, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 4) #4
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av
  %i.dc = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not146 = icmp eq ptr %i.dc, null
  br i1 %.not146, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dd = getelementptr i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = getelementptr i8, ptr %i.db, i64 100
  store i32 %i.de, ptr %i.df, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr %i.db, ptr %1, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.thread
  %.0103 = phi ptr [ %i.c, %.thread ], [ %i.db, %bb.az ]
  %i.dg = load ptr, ptr %i.a, align 8
  %i.dh = getelementptr i8, ptr %.0103, i64 32
  store ptr %i.dg, ptr %i.dh, align 8
  call void @acpi_ut_status_exit(i32 noundef 353, ptr noundef nonnull @__func__.acpi_ds_load2_begin_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 0) #4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw, %.thread152, %bb.ak, %bb.aj, %bb.ae, %bb.z, %bb.x, %bb.m, %bb.k, %bb.g
  %.0 = phi i32 [ %i.m, %bb.g ], [ %i.bv, %bb.aj ], [ 0, %bb.ak ], [ %.1155, %.thread152 ], [ 0, %bb.ba ], [ 4, %bb.aw ], [ %i.aq, %bb.x ], [ 12291, %bb.ae ], [ %i.at, %bb.z ], [ 0, %bb.m ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_trace(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_debug_print(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ds_exec_begin_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_status_exit(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_ps_get_next_namestring(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ds_scope_stack_push(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_ut_prefixed_namespace_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_ut_get_node_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_ut_get_type_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ns_opens_scope(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_ps_alloc_op(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_ds_load2_end_op(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !annotation !10
  tail call void @acpi_ut_trace(i32 noundef 384, ptr noundef nonnull @__func__.acpi_ds_load2_end_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64) #4
  %i.b = getelementptr i8, ptr %0, i64 1032
  %i.c = load ptr, ptr %i.b, align 8              ; 19 uses
  %i.d = load i32, ptr @acpi_dbg_level, align 4
  %i.e = and i32 %i.d, 256
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @acpi_dbg_layer, align 4
  %i.g = and i32 %i.f, 64
  %.not123 = icmp eq i32 %i.g, 0
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 1040
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 256, i32 noundef 387, ptr noundef nonnull @__func__.acpi_ds_load2_end_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef %i.j, ptr noundef %i.c, ptr noundef %0) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 1040       ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 512
  %.not124 = icmp eq i16 %i.o, 0
  br i1 %.not124, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @acpi_ut_status_exit(i32 noundef 393, ptr noundef nonnull @__func__.acpi_ds_load2_end_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, i32 noundef 0) #4
  br label %bb.bd

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.c, i64 10       ; 6 uses
  %i.q = load i16, ptr %i.p, align 2
  %i.r = icmp eq i16 %i.q, 16
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr @acpi_dbg_level, align 4
  %i.t = and i32 %i.s, 256
  %.not125 = icmp eq i32 %i.t, 0
  br i1 %.not125, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr @acpi_dbg_layer, align 4
  %i.v = and i32 %i.u, 64
  %.not126 = icmp eq i32 %i.v, 0
  br i1 %.not126, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, i32, ptr, ptr, i32, ptr, ...) @acpi_debug_print(i32 noundef 256, i32 noundef 397, ptr noundef nonnull @__func__.acpi_ds_load2_end_op, ptr noundef nonnull @_acpi_module_name, i32 noundef 64, ptr noundef nonnull @.str.6, ptr noundef %i.c, ptr noundef %0) #4
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.f
  %i.w = phi ptr [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ %.pre, %bb.i ], [ %i.l, %bb.f ]
  %i.x = getelementptr i8, ptr %i.w, i64 18
  %i.y = load i8, ptr %i.x, align 2
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 32      ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 5 uses
  %i.ac = getelementptr i8, ptr %0, i64 872       ; 6 uses
end_hunk_0
