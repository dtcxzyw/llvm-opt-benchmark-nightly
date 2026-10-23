Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xen_console?download=true
inline.NumInlined: 48
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@g_strdup_printf

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @qemu_chr_fe_get_driver(ptr noundef) local_unnamed_addr #1

declare void @xen_primary_console_create() local_unnamed_addr #1

declare i32 @xen_device_frontend_scanf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_chr_get_pty_name(ptr noundef) local_unnamed_addr #1

declare void @xen_device_frontend_printf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @xen_console_connect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ErrorPropagator, align 8    ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %2, align 8
  store ptr %1, ptr %i.d, align 8
  %i.e = icmp eq ptr %1, null
  %i.f = icmp eq ptr %1, @error_fatal
  %or.cond = or i1 %i.e, %i.f
  %spec.select = select i1 %or.cond, ptr %2, ptr %1 ; 6 uses
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 61, ptr noundef nonnull @__func__.XEN_CONSOLE_DEVICE) #9 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !annotation !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 360 ; 5 uses
  %i.i = tail call i32 (ptr, ptr, ptr, ...) @xen_device_frontend_scanf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.h) #9
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.9, i32 noundef 214, ptr noundef nonnull @__func__.xen_console_connect, ptr noundef nonnull @.str.21) #9
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.j = call i32 (ptr, ptr, ptr, ...) @xen_device_frontend_scanf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a) #9
  %.not42 = icmp eq i32 %i.j, 1
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.9, i32 noundef 219, ptr noundef nonnull @__func__.xen_console_connect, ptr noundef nonnull @.str.22) #9
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.k = call i32 (ptr, ptr, ptr, ...) @xen_device_frontend_scanf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b) #9
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.b, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  store i64 %i.n, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = load i32, ptr %i.a, align 4
  %i.q = call ptr @xen_device_bind_event_channel(ptr noundef %0, i32 noundef %i.p, ptr noundef nonnull @con_event, ptr noundef nonnull %i.g, ptr noundef nonnull %spec.select) #9 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  store ptr %i.q, ptr %i.r, align 8
  %.not43 = icmp eq ptr %i.q, null
  br i1 %.not43, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %cond = icmp eq i32 %i.t, 0
  br i1 %cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr @xen_mode, align 4
  %.not44 = icmp eq i32 %i.u, 2
  br i1 %.not44, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.v = load i32, ptr %i.h, align 8
  %i.w = zext i32 %i.v to i64
  store i64 %i.w, ptr %i.c, align 8
  %i.x = load ptr, ptr @xen_foreignmem_ops, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %qemu_xen_foreignmem_map.exit.thread, label %qemu_xen_foreignmem_map.exit

qemu_xen_foreignmem_map.exit.thread:              ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  store ptr null, ptr %i.y, align 8
  br label %bb.k

qemu_xen_foreignmem_map.exit:                     ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = zext i16 %i.aa to i32
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = call ptr %i.ac(i32 noundef range(i32 0, 65536) %i.ab, ptr noundef null, i32 noundef 3, i64 noundef 1, ptr noundef nonnull %i.c, ptr noundef null) #9, !inline_history !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  store ptr %i.ad, ptr %i.ae, align 8
  %.not46.not = icmp eq ptr %i.ad, null
  br i1 %.not46.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %qemu_xen_foreignmem_map.exit.thread, %qemu_xen_foreignmem_map.exit
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.9, i32 noundef 247, ptr noundef nonnull @__func__.xen_console_connect, ptr noundef nonnull @.str.24) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  %i.af = call i32 @xen_event_channel_get_local_port(ptr noundef nonnull %i.q) #9
  %i.ag = trunc i32 %i.af to i16
  call void @xen_primary_console_set_be_port(i16 noundef zeroext %i.ag) #9
  store i32 0, ptr %i.h, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l
  %i.ah = call ptr @xen_device_map_grant_refs(ptr noundef %0, ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %spec.select) #9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  store ptr %i.ah, ptr %i.ai, align 8
  %.not45 = icmp eq ptr %i.ah, null
  br i1 %.not45, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, ...) @error_prepend(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.25) #9
  br label %bb.s

.critedge:                                        ; preds = %qemu_xen_foreignmem_map.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.m
  %i.aj = load i32, ptr %i.s, align 8
  %i.ak = load i32, ptr %i.h, align 8
  %i.al = load i32, ptr %i.a, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = trunc i64 %i.an to i32
  %i.ap = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i48 = icmp eq i32 %i.ap, 0
  br i1 %.not.i48, label %trace_xen_console_connect.exit, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  %i.aq = load i16, ptr @_TRACE_XEN_CONSOLE_CONNECT_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.aq, 0
  br i1 %.not4.i, label %trace_xen_console_connect.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = load i32, ptr @qemu_loglevel, align 4
  %i.as = and i32 %i.ar, 32768
  %.not5.i = icmp eq i32 %i.as, 0
  br i1 %.not5.i, label %trace_xen_console_connect.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.ao) #9
  br label %trace_xen_console_connect.exit

trace_xen_console_connect.exit:                   ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  call void @qemu_chr_fe_set_handlers(ptr noundef nonnull %i.at, ptr noundef nonnull @xencons_can_receive, ptr noundef nonnull @xencons_receive, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.g, ptr noundef null, i1 noundef zeroext true) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.g, %trace_xen_console_connect.exit, %bb.n, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ true, %trace_xen_console_connect.exit ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.val = load ptr, ptr %2, align 8
  %.val47 = load ptr, ptr %i.d, align 8
  call void @error_propagate(ptr noundef %.val47, ptr noundef %.val) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i1 %.1
}

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare ptr @xen_device_bind_event_channel(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @con_event(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 61, ptr noundef nonnull @__func__.XEN_CONSOLE_DEVICE) #9 ; 14 uses
  %i.b = tail call i32 @xen_device_backend_get_state(ptr noundef %i.a) #9
  %.not = icmp eq i32 %i.b, 4
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3080 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 3084
  %i.i = load i32, ptr %i.h, align 4              ; 5 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  fence seq_cst
  %i.j = sub i32 %i.i, %i.g                       ; 4 uses
  %i.k = icmp ne i32 %i.i, %i.g
  %i.l = icmp ult i32 %i.j, 2049
  %or.cond.not.i = and i1 %i.k, %i.l              ; 3 uses
  br i1 %or.cond.not.i, label %bb.c, label %buffer_append.exit

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 336 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 328 ; 9 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp ult i64 %i.r, %i.m
  br i1 %i.s, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.t = add nuw nsw i32 %i.j, 1024
  %i.u = zext nneg i32 %i.t to i64
  %i.v = add i64 %i.o, %i.u                       ; 2 uses
  store i64 %i.v, ptr %i.n, align 8
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = tail call ptr @g_realloc(ptr noundef %i.w, i64 noundef %i.v) #9
  store ptr %i.x, ptr %i.c, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 1024 ; 3 uses
  %.neg = add i32 %i.g, 1
  %xtraiter = and i32 %i.j, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.z = add i32 %i.g, 1
  %i.aa = and i32 %i.g, 2047
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = load i64, ptr %i.p, align 8             ; 2 uses
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.p, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 %i.ad, ptr %i.ah, align 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.061.i.unr = phi i32 [ %i.g, %.lr.ph.i ], [ %i.z, %.prol.loopexit.unr-lcssa ]
  %i.ai = icmp eq i32 %i.i, %.neg
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.061.i = phi i32 [ %i.as, %.lr.ph.i.new ], [ %.061.i.unr, %.prol.loopexit ] ; 3 uses
  %i.aj = add i32 %.061.i, 1
  %i.ak = and i32 %.061.i, 2047
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = load i64, ptr %i.p, align 8             ; 2 uses
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 %i.an, ptr %i.ar, align 1
  %i.as = add i32 %.061.i, 2                      ; 2 uses
  %i.at = and i32 %i.aj, 2047
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = load i64, ptr %i.p, align 8             ; 2 uses
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.p, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  store i8 %i.aw, ptr %i.ba, align 1
  %.not.i.1 = icmp eq i32 %i.as, %i.i
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i.new, %.prol.loopexit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !15
  fence seq_cst
  store i32 %i.i, ptr %i.f, align 4
  %i.bb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 59, ptr noundef nonnull @__func__.XEN_DEVICE) #9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void @xen_device_notify_event_channel(ptr noundef %i.bb, ptr noundef %i.bd, ptr noundef null) #9
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 344 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 4 uses
  %.not57.i = icmp eq i64 %i.bf, 0
  br i1 %.not57.i, label %buffer_append.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.bg = load i64, ptr %i.p, align 8             ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, %i.bf
  br i1 %i.bh, label %bb.f, label %buffer_append.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = sub nuw i64 %i.bg, %i.bf                ; 3 uses
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bf ; 2 uses
  %i.bl = sub i64 0, %i.bi
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bm, ptr noundef nonnull align 1 %i.bk, i64 noundef %i.bi, i1 noundef false) #9
  %i.bn = load ptr, ptr %i.c, align 8
  %i.bo = load i64, ptr %i.be, align 8
  %i.bp = tail call ptr @g_realloc(ptr noundef %i.bn, i64 noundef %i.bo) #9
  store ptr %i.bp, ptr %i.c, align 8
  %i.bq = load i64, ptr %i.be, align 8            ; 3 uses
  store i64 %i.bq, ptr %i.n, align 8
  store i64 %i.bq, ptr %i.p, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = sub i64 %i.bq, %i.bi                    ; 2 uses
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.g, label %buffer_append.exit

bb.g:                                             ; preds = %bb.f
  store i64 %i.bt, ptr %i.br, align 8
  br label %buffer_append.exit

buffer_append.exit:                               ; preds = %bb.b, %._crit_edge.i, %bb.e, %bb.f, %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 328 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 5 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %.not9 = icmp eq i64 %i.bw, %i.by
  br i1 %.not9, label %bb.p, label %bb.h

bb.h:                                             ; preds = %buffer_append.exit
  %i.bz = sub i64 %i.bw, %i.by                    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.cb = tail call zeroext i1 @qemu_chr_fe_backend_connected(ptr noundef nonnull %i.ca) #9
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cc = load ptr, ptr %i.c, align 8
  %i.cd = load i64, ptr %i.bx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = trunc i64 %i.bz to i32
  %i.cg = tail call i32 @qemu_chr_fe_write(ptr noundef nonnull %i.ca, ptr noundef %i.ce, i32 noundef %i.cf) #9
  %i.ch = sext i32 %i.cg to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i64 [ %i.ch, %bb.i ], [ %i.bz, %bb.h ] ; 4 uses
  %i.ci = icmp slt i64 %.0.i, 1
  br i1 %i.ci, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8
  %.not17.i = icmp eq i32 %i.ck, 0
  br i1 %.not17.i, label %bb.l, label %xencons_send.exit

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.cj, align 8
  br label %xencons_send.exit

bb.m:                                             ; preds = %bb.j
  %i.cl = load i64, ptr %i.bx, align 8
  %i.cm = add i64 %i.cl, %.0.i                    ; 2 uses
  store i64 %i.cm, ptr %i.bx, align 8
  %i.cn = load i64, ptr %i.bv, align 8
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.n, label %buffer_advance.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  br label %buffer_advance.exit.i

buffer_advance.exit.i:                            ; preds = %bb.n, %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %.not.i10 = icmp ne i32 %i.cq, 0
  %i.cr = icmp eq i64 %.0.i, %i.bz
  %or.cond.i = and i1 %i.cr, %.not.i10
  br i1 %or.cond.i, label %bb.o, label %xencons_send.exit

bb.o:                                             ; preds = %buffer_advance.exit.i
  store i32 0, ptr %i.cp, align 8
  br label %xencons_send.exit

xencons_send.exit:                                ; preds = %bb.k, %bb.l, %buffer_advance.exit.i, %bb.o
  %i.cs = icmp sgt i64 %.0.i, 0
  %i.ct = or i1 %or.cond.not.i, %i.cs
  br label %bb.p

bb.p:                                             ; preds = %buffer_append.exit, %xencons_send.exit, %bb.a
  %.08 = phi i1 [ false, %bb.a ], [ %i.ct, %xencons_send.exit ], [ %or.cond.not.i, %buffer_append.exit ]
  ret i1 %.08
}

declare void @xen_primary_console_set_be_port(i16 noundef zeroext) local_unnamed_addr #1

declare i32 @xen_event_channel_get_local_port(ptr noundef) local_unnamed_addr #1

declare ptr @xen_device_map_grant_refs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_prepend(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @qemu_chr_fe_set_handlers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 1025) i32 @xencons_can_receive(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 368
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 3072
  %.val.val = load i32, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %.val, i64 3076
  %.val.val2 = load i32, ptr %i.c, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !10
  fence seq_cst
  %i.d = sub i32 %.val.val2, %.val.val
  %.0.i = tail call range(i32 0, 1025) i32 @llvm.usub.sat.i32(i32 1024, i32 %i.d)
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @xencons_receive(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 8              ; 10 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr i8, ptr %i.c, i64 3072
  %.val.val = load i32, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %i.c, i64 3076     ; 3 uses
  %.val.val21 = load i32, ptr %i.f, align 4
end_hunk_0
