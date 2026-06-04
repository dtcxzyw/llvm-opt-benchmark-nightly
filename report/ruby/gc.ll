inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@rb_objspace_call_finalizer:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 32, i1 false)
  store i64 36, ptr %i.bh, align 8, !tbaa !235
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 0, ptr %i.bi, align 8, !tbaa !236
  call void @rb_exec_event_hooks(ptr noundef nonnull %1, ptr noundef %i.ba, i32 noundef 0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %gc_enter.exit.i

gc_enter.exit.i:                                  ; preds = %bb.g, %rb_ec_hooks.exit.i.i.i, %bb.f, %bb.e
  %i.bj = getelementptr i8, ptr %i.i, i64 872     ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %.not.i4360.i = icmp eq ptr %i.bk, null
  br i1 %.not.i4360.i, label %.critedge.i, label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %gc_enter.exit.i, %._crit_edge59.i
  %i.bl = phi ptr [ %i.ds, %._crit_edge59.i ], [ %i.bk, %gc_enter.exit.i ] ; 3 uses
  %.03861.i = phi i64 [ %i.dt, %._crit_edge59.i ], [ 0, %gc_enter.exit.i ] ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !96
  %i.bn = icmp ult i64 %.03861.i, %i.bm
  br i1 %i.bn, label %bb.k, label %.critedge.i

.critedge.i:                                      ; preds = %._crit_edge59.i, %rb_darray_size.exit.i, %gc_enter.exit.i
  %i.bo = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.bp = and i32 %i.bo, 67108864
  %.not12.i.i44.i = icmp eq i32 %i.bp, 0
  br i1 %.not12.i.i44.i, label %rb_gc_event_hook.exit.i.i, label %bb.h, !prof !189

bb.h:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bq = load ptr, ptr %i.z, align 8, !tbaa !14
  store volatile ptr %i.bq, ptr %i.b, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i45.i = load volatile ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.br = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i45.i, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !224 ; 3 uses
  %.not.i.i46.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i46.i, label %rb_gc_event_hook.exit.i.i, label %rb_ec_hooks.exit.i.i47.i

rb_ec_hooks.exit.i.i47.i:                         ; preds = %bb.h
  %i.bt = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i45.i, i64 48
  %.val.i.i48.i = load ptr, ptr %i.bt, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.bu = getelementptr i8, ptr %.val.i.i48.i, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !225 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 1120
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !226
  %i.by = and i32 %i.bx, 67108864
  %.not11.i.i49.i = icmp eq i32 %i.by, 0
  br i1 %.not11.i.i49.i, label %rb_gc_event_hook.exit.i.i, label %bb.i, !prof !189

bb.i:                                             ; preds = %rb_ec_hooks.exit.i.i47.i
  %i.bz = getelementptr i8, ptr %i.bv, i64 1112
  %i.ca = getelementptr i8, ptr %i.bs, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #46
  store i32 67108864, ptr %0, align 8, !tbaa !230
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i45.i, ptr %i.cc, align 8, !tbaa !232
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bs, ptr %i.cd, align 8, !tbaa !233
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cb, ptr %i.ce, align 8, !tbaa !234
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false)
  store i64 36, ptr %i.cg, align 8, !tbaa !235
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.ch, align 8, !tbaa !236
  call void @rb_exec_event_hooks(ptr noundef nonnull %0, ptr noundef %i.bz, i32 noundef 0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  br label %rb_gc_event_hook.exit.i.i

rb_gc_event_hook.exit.i.i:                        ; preds = %bb.i, %rb_ec_hooks.exit.i.i47.i, %bb.h, %.critedge.i
  %i.ci = load i16, ptr %i.j, align 4
  %i.cj = and i16 %i.ci, -33
  store i16 %i.cj, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.am, ptr %i.a, align 4, !tbaa !7
  %i.ck = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i50.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i50.i, label %bb.j, label %gc_exit.exit.i

bb.j:                                             ; preds = %rb_gc_event_hook.exit.i.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #46
  br label %gc_exit.exit.i

gc_exit.exit.i:                                   ; preds = %bb.j, %rb_gc_event_hook.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @finalize_deferred_heap_pages(ptr noundef nonnull %i.i)
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !130
  call void @rb_st_free_table(ptr noundef %i.cl) #46
  store ptr null, ptr %i.o, align 8, !tbaa !130
  store atomic volatile i32 0, ptr %i.m seq_cst, align 8
  br label %rb_gc_impl_shutdown_call_finalizer.exit

bb.k:                                             ; preds = %rb_darray_size.exit.i
  %i.cm = getelementptr i8, ptr %i.bl, i64 16
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %.03861.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !99 ; 3 uses
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !100
  %i.cq = getelementptr i8, ptr %i.co, i64 40
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !107 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.co, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !108
  %i.cu = zext i16 %i.ct to i64
  %i.cv = sext i16 %i.cp to i64                   ; 2 uses
  %i.cw = mul nsw i64 %i.cu, %i.cv
  %i.cx = add i64 %i.cw, %i.cr                    ; 2 uses
  %i.cy = icmp ult i64 %i.cr, %i.cx
  br i1 %i.cy, label %.preheader.i, label %._crit_edge59.i

.preheader.i:                                     ; preds = %bb.k, %rb_gc_shutdown_call_finalizer_p.exit.thread.i
  %.03958.i = phi i64 [ %i.dq, %rb_gc_shutdown_call_finalizer_p.exit.thread.i ], [ %i.cr, %bb.k ] ; 10 uses
  %i.cz = inttoptr i64 %.03958.i to ptr           ; 4 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 32
  %i.db = getelementptr i8, ptr %i.cz, i64 24
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !109
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.dd, 31
  switch i32 %i.de, label %bb.t [
    i32 12, label %bb.l
    i32 11, label %rb_gc_shutdown_call_finalizer_p.exit.thread54.i
    i32 20, label %rb_gc_shutdown_call_finalizer_p.exit.thread54.i
    i32 0, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i
  ]

bb.l:                                             ; preds = %.preheader.i
  %i.df = call zeroext i1 @ruby_free_at_exit_p() #46
  br i1 %i.df, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !201
  %.not.i51.i = icmp eq ptr %i.dg, null
  br i1 %.not.i51.i, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !200
  %.not9.i.i = icmp eq ptr %i.dh, null
  br i1 %.not9.i.i, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.di = call i64 @rb_obj_is_thread(i64 noundef %.03958.i) #46
  %.not10.i.i = icmp eq i64 %i.di, 0
  br i1 %.not10.i.i, label %bb.p, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.dj = call i64 @rb_obj_is_mutex(i64 noundef %.03958.i) #46
  %.not11.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not11.i.i, label %bb.q, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.dk = call i64 @rb_obj_is_fiber(i64 noundef %.03958.i) #46
  %.not12.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not12.i.i, label %bb.r, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.dl = call zeroext i1 @rb_ractor_p(i64 noundef %.03958.i) #46
  br i1 %i.dl, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = call zeroext i1 @rb_obj_is_fstring_table(i64 noundef %.03958.i) #46
  br i1 %i.dm, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i, label %rb_gc_shutdown_call_finalizer_p.exit.i

bb.t:                                             ; preds = %.preheader.i
  %i.dn = call zeroext i1 @ruby_free_at_exit_p() #46
  br i1 %i.dn, label %rb_gc_shutdown_call_finalizer_p.exit.thread54.i, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i

rb_gc_shutdown_call_finalizer_p.exit.i:           ; preds = %bb.s
  %i.do = call zeroext i1 @rb_obj_is_symbol_table(i64 noundef %.03958.i) #46
  br i1 %i.do, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i, label %rb_gc_shutdown_call_finalizer_p.exit.thread54.i

rb_gc_shutdown_call_finalizer_p.exit.thread54.i:  ; preds = %rb_gc_shutdown_call_finalizer_p.exit.i, %bb.t, %.preheader.i, %.preheader.i
  call fastcc void @rb_gc_obj_free_vm_weak_references(i64 noundef %.03958.i)
  %i.dp = call fastcc zeroext i1 @rb_gc_obj_free(ptr noundef nonnull %i.i, i64 noundef %.03958.i)
  br i1 %i.dp, label %bb.u, label %rb_gc_shutdown_call_finalizer_p.exit.thread.i

bb.u:                                             ; preds = %rb_gc_shutdown_call_finalizer_p.exit.thread54.i
  store i64 0, ptr %i.cz, align 8, !tbaa !109
  br label %rb_gc_shutdown_call_finalizer_p.exit.thread.i

rb_gc_shutdown_call_finalizer_p.exit.thread.i:    ; preds = %bb.u, %rb_gc_shutdown_call_finalizer_p.exit.thread54.i, %rb_gc_shutdown_call_finalizer_p.exit.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.preheader.i
  %i.dq = add i64 %.03958.i, %i.cv                ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.cx
  br i1 %i.dr, label %.preheader.i, label %._crit_edge59.loopexit.i, !llvm.loop !237

._crit_edge59.loopexit.i:                         ; preds = %rb_gc_shutdown_call_finalizer_p.exit.thread.i
  %.pre62.i = load ptr, ptr %i.bj, align 8, !tbaa !80
  br label %._crit_edge59.i

._crit_edge59.i:                                  ; preds = %._crit_edge59.loopexit.i, %bb.k
  %i.ds = phi ptr [ %.pre62.i, %._crit_edge59.loopexit.i ], [ %i.bl, %bb.k ] ; 2 uses
  %i.dt = add i64 %.03861.i, 1
  %.not.i43.i = icmp eq ptr %i.ds, null
  br i1 %.not.i43.i, label %.critedge.i, label %rb_darray_size.exit.i, !llvm.loop !238

rb_gc_impl_shutdown_call_finalizer.exit:          ; preds = %bb.b, %gc_exit.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_objspace_free_objects(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 872        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %.not.i26.i = icmp eq ptr %i.b, null
  br i1 %.not.i26.i, label %rb_gc_impl_shutdown_free_objects.exit, label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %bb.a, %._crit_edge.i
  %i.c = phi ptr [ %i.y, %._crit_edge.i ], [ %i.b, %bb.a ] ; 3 uses
  %.02327.i = phi i64 [ %i.z, %._crit_edge.i ], [ 0, %bb.a ] ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96
  %i.e = icmp ult i64 %.02327.i, %i.d
  br i1 %i.e, label %bb.b, label %rb_gc_impl_shutdown_free_objects.exit

bb.b:                                             ; preds = %rb_darray_size.exit.i
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.02327.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99   ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !100
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !107  ; 3 uses
  %i.l = getelementptr i8, ptr %i.h, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !108
  %i.n = zext i16 %i.m to i64
  %i.o = sext i16 %i.i to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.n, %i.o
  %i.q = add i64 %i.p, %i.k                       ; 2 uses
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.preheader.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.b, %bb.e
  %.02425.i = phi i64 [ %i.w, %bb.e ], [ %i.k, %bb.b ] ; 4 uses
  %i.s = inttoptr i64 %.02425.i to ptr            ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = and i64 %i.t, 31
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  tail call fastcc void @rb_gc_obj_free_vm_weak_references(i64 noundef %.02425.i)
  %i.v = tail call fastcc zeroext i1 @rb_gc_obj_free(ptr noundef %0, i64 noundef %.02425.i)
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.s, align 8, !tbaa !109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.preheader.i
  %i.w = add i64 %.02425.i, %i.o                  ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.q
  br i1 %i.x, label %.preheader.i, label %._crit_edge.loopexit.i, !llvm.loop !239

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !80
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.y = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.z = add i64 %.02327.i, 1
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %rb_gc_impl_shutdown_free_objects.exit, label %rb_darray_size.exit.i, !llvm.loop !240

rb_gc_impl_shutdown_free_objects.exit:            ; preds = %rb_darray_size.exit.i, %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_objspace_garbage_object_p(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_gc_impl_garbage_object_p.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.f = getelementptr i8, ptr %i.e, i64 1248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 5 uses
  %i.h = inttoptr i64 %0 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !109
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 31
  switch i32 %i.k, label %.split.i [
    i32 0, label %rb_gc_impl_garbage_object_p.exit
    i32 30, label %rb_gc_impl_garbage_object_p.exit
    i32 29, label %rb_gc_impl_garbage_object_p.exit
  ]

.split.i:                                         ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.g, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !111
  %.not.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i, label %bb.c, label %has_sweeping_pages.exit.thread.i

bb.c:                                             ; preds = %.split.i
  %i.n = getelementptr i8, ptr %i.g, i64 296
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %.not.1.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.1.not.i.i, label %bb.d, label %has_sweeping_pages.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.g, i64 448
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %.not.2.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.2.not.i.i, label %bb.e, label %has_sweeping_pages.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.g, i64 600
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111
  %.not.3.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.3.not.i.i, label %has_sweeping_pages.exit.i, label %has_sweeping_pages.exit.thread.i

has_sweeping_pages.exit.i:                        ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.g, i64 752
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111
  %.not.4.not.i.not.i = icmp eq ptr %i.u, null
  br i1 %.not.4.not.i.not.i, label %rb_gc_impl_garbage_object_p.exit, label %has_sweeping_pages.exit.thread.i

has_sweeping_pages.exit.thread.i:                 ; preds = %has_sweeping_pages.exit.i, %bb.e, %bb.d, %bb.c, %.split.i
  %i.v = and i64 %0, -65536
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.w, align 65536, !tbaa !113 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 12
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, 1
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %rb_gc_impl_garbage_object_p.exit, label %bb.f

bb.f:                                             ; preds = %has_sweeping_pages.exit.thread.i
  %i.ab = getelementptr i8, ptr %i.x, i64 280
  %.lhs.trunc.i.i = trunc i64 %0 to i16           ; 2 uses
  %i.ac = udiv i16 %.lhs.trunc.i.i, 40
  %i.ad = udiv i16 %.lhs.trunc.i.i, 2560
  %.zext2.i.i = zext nneg i16 %i.ad to i64
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %.zext2.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !59
  %i.ag = and i16 %i.ac, 63
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = xor i64 %i.af, -1
  %i.aj = lshr i64 %i.ai, %i.ah
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  br label %rb_gc_impl_garbage_object_p.exit

rb_gc_impl_garbage_object_p.exit:                 ; preds = %bb.f, %has_sweeping_pages.exit.thread.i, %has_sweeping_pages.exit.i, %bb.b, %bb.b, %bb.b, %bb.a
  %i.am = phi i32 [ 0, %bb.a ], [ %i.al, %bb.f ], [ 0, %has_sweeping_pages.exit.thread.i ], [ 0, %has_sweeping_pages.exit.i ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ]
  ret i32 %i.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i1 @rb_gc_impl_garbage_object_p(ptr noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 31
  switch i32 %i.d, label %.split [
    i32 0, label %.split16.us
    i32 30, label %.split16.us
    i32 29, label %.split16.us
  ]

.split:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.b, label %has_sweeping_pages.exit.thread

bb.b:                                             ; preds = %.split
  %i.g = getelementptr i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %.not.1.not.i = icmp eq ptr %i.h, null
  br i1 %.not.1.not.i, label %bb.c, label %has_sweeping_pages.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !111
  %.not.2.not.i = icmp eq ptr %i.j, null
  br i1 %.not.2.not.i, label %bb.d, label %has_sweeping_pages.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 600
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  %.not.3.not.i = icmp eq ptr %i.l, null
  br i1 %.not.3.not.i, label %has_sweeping_pages.exit, label %has_sweeping_pages.exit.thread

has_sweeping_pages.exit:                          ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 752
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111
  %.not.4.not.i.not = icmp eq ptr %i.n, null
  br i1 %.not.4.not.i.not, label %.split16.us, label %has_sweeping_pages.exit.thread

has_sweeping_pages.exit.thread:                   ; preds = %bb.c, %bb.b, %.split, %bb.d, %has_sweeping_pages.exit
  %i.o = and i64 %1, -65536
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 65536, !tbaa !113 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 12
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 1
  %.not = icmp eq i8 %i.t, 0
end_hunk_0
begin_hunk_1_@ruby_sized_xrealloc:bb.a
  br i1 %.not.i, label %bb.f, label %handle_malloc_failure.exit, !prof !60

bb.f:                                             ; preds = %ruby_sized_xrealloc_body.exit
  tail call fastcc void @ruby_memerror() #63
  unreachable

handle_malloc_failure.exit:                       ; preds = %ruby_sized_xrealloc_body.exit
  ret ptr %i.r
}

; Function Attrs: nounwind sspstrong allocsize(1) uwtable
define dso_local nonnull ptr @ruby_xrealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #28 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @negative_size_allocation_error() #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.d = getelementptr i8, ptr %i.c, i64 1248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %rb_current_ractor_raw.exit.thread3.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, null
  br i1 %.not.i.i.i, label %ruby_sized_xrealloc_body.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %ruby_sized_xrealloc_body.exit.i, label %rb_current_ractor_raw.exit.i.i.i

rb_current_ractor_raw.exit.i.i.i:                 ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.val.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ruby_sized_xrealloc_body.exit.i, label %rb_current_ractor_raw.exit.thread3.i.i.i

rb_current_ractor_raw.exit.thread3.i.i.i:         ; preds = %rb_current_ractor_raw.exit.i.i.i, %bb.c
  %.0.i5.i.i.i = phi ptr [ %i.k, %rb_current_ractor_raw.exit.i.i.i ], [ %i.f, %bb.c ]
  %i.m = getelementptr i8, ptr %.0.i5.i.i.i, i64 448
  %i.n = load i8, ptr %i.m, align 8, !tbaa !202, !range !203, !noundef !29
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = xor i1 %i.o, true
  br label %ruby_sized_xrealloc_body.exit.i

ruby_sized_xrealloc_body.exit.i:                  ; preds = %rb_current_ractor_raw.exit.thread3.i.i.i, %rb_current_ractor_raw.exit.i.i.i, %bb.e, %bb.d
  %i.q = phi i1 [ true, %rb_current_ractor_raw.exit.i.i.i ], [ %i.p, %rb_current_ractor_raw.exit.thread3.i.i.i ], [ true, %bb.d ], [ true, %bb.e ]
  %i.r = tail call fastcc noundef ptr @rb_gc_impl_realloc(ptr noundef %i.e, ptr noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext %i.q) ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.f, label %ruby_sized_xrealloc.exit, !prof !60

bb.f:                                             ; preds = %ruby_sized_xrealloc_body.exit.i
  tail call fastcc void @ruby_memerror() #63
  unreachable

ruby_sized_xrealloc.exit:                         ; preds = %ruby_sized_xrealloc_body.exit.i
  ret ptr %i.r
}

; Function Attrs: nounwind sspstrong allocsize(1,2) uwtable
define dso_local nonnull ptr @ruby_sized_xrealloc2(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #29 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 3 uses
  br i1 %i.d, label %bb.b, label %xmalloc2_size.exit.i, !prof !60

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %rb_during_gc.exit.thread.i.i.i.i, label %rb_during_gc.exit.i.i.i.i

rb_during_gc.exit.i.i.i.i:                        ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 1248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = getelementptr i8, ptr %i.g, i64 28
  %.val.i.i.i.i.i = load i16, ptr %i.h, align 4
  %i.i = and i16 %.val.i.i.i.i.i, 32
  %.not.i.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i.i.i, label %rb_during_gc.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %rb_during_gc.exit.i.i.i.i
  tail call void @rb_memerror() #62
  unreachable

rb_during_gc.exit.thread.i.i.i.i:                 ; preds = %rb_during_gc.exit.i.i.i.i, %bb.b
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.b, ptr noundef nonnull @.str.60, i64 noundef %1, i64 noundef %2, i64 noundef -1) #63
  unreachable

xmalloc2_size.exit.i:                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 1248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_current_ractor_raw.exit.thread3.i.i

bb.d:                                             ; preds = %xmalloc2_size.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  store volatile ptr %i.n, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, null
  br i1 %.not.i.i, label %ruby_sized_xrealloc2_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i5.i, label %ruby_sized_xrealloc2_body.exit, label %rb_current_ractor_raw.exit.i.i

rb_current_ractor_raw.exit.i.i:                   ; preds = %bb.e
  %i.p = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ruby_sized_xrealloc2_body.exit, label %rb_current_ractor_raw.exit.thread3.i.i

rb_current_ractor_raw.exit.thread3.i.i:           ; preds = %rb_current_ractor_raw.exit.i.i, %xmalloc2_size.exit.i
  %.0.i5.i.i = phi ptr [ %i.q, %rb_current_ractor_raw.exit.i.i ], [ %i.l, %xmalloc2_size.exit.i ]
  %i.s = getelementptr i8, ptr %.0.i5.i.i, i64 448
  %i.t = load i8, ptr %i.s, align 8, !tbaa !202, !range !203, !noundef !29
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = xor i1 %i.u, true
  br label %ruby_sized_xrealloc2_body.exit

ruby_sized_xrealloc2_body.exit:                   ; preds = %bb.d, %bb.e, %rb_current_ractor_raw.exit.i.i, %rb_current_ractor_raw.exit.thread3.i.i
  %i.w = phi i1 [ true, %rb_current_ractor_raw.exit.i.i ], [ %i.v, %rb_current_ractor_raw.exit.thread3.i.i ], [ true, %bb.d ], [ true, %bb.e ]
  %i.x = mul i64 %3, %2
  %i.y = extractvalue { i64, i1 } %i.c, 0
  %i.z = tail call fastcc noundef ptr @rb_gc_impl_realloc(ptr noundef %i.k, ptr noundef %0, i64 noundef %i.y, i64 noundef %i.x, i1 noundef zeroext %i.w) ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.f, label %handle_malloc_failure.exit, !prof !60

bb.f:                                             ; preds = %ruby_sized_xrealloc2_body.exit
  tail call fastcc void @ruby_memerror() #63
  unreachable

handle_malloc_failure.exit:                       ; preds = %ruby_sized_xrealloc2_body.exit
  ret ptr %i.z
}

; Function Attrs: nounwind sspstrong allocsize(1,2) uwtable
define dso_local nonnull ptr @ruby_xrealloc2(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 {
bb.a:
  %i.a = tail call nonnull ptr @ruby_sized_xrealloc2(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0) #71
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_sized_xfree(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %rb_gc_impl_free.exit, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not3 = icmp eq ptr %i.a, null
  br i1 %.not3, label %bb.e, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.d, label %objspace_malloc_size.exit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @malloc_usable_size(ptr noundef nonnull %0) #46
  br label %objspace_malloc_size.exit

objspace_malloc_size.exit:                        ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %1, %bb.c ], [ %i.d, %bb.d ]
  tail call void @free(ptr noundef nonnull %0) #46, !inline_history !408
  tail call fastcc void @objspace_malloc_increase_body(ptr noundef %i.c, i64 noundef 0, i64 noundef %.0.i, i32 noundef 1, i1 noundef zeroext true)
  br label %rb_gc_impl_free.exit

bb.e:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %0) #46
  br label %rb_gc_impl_free.exit

rb_gc_impl_free.exit:                             ; preds = %objspace_malloc_size.exit, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_impl_free(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.b, label %objspace_malloc_size.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @malloc_usable_size(ptr noundef nonnull %1) #46
  br label %objspace_malloc_size.exit

objspace_malloc_size.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %2, %bb.a ], [ %i.a, %bb.b ]  ; 4 uses
  %or.cond.i = icmp ult i64 %.0.i, 8192
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @malloc_increase_local) ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 8 uses
  br i1 %or.cond.i, label %objspace_malloc_size.exit.split.us, label %objspace_malloc_size.exit.split

objspace_malloc_size.exit.split.us:               ; preds = %objspace_malloc_size.exit
  %i.d = trunc nuw nsw i64 %.0.i to i32
  tail call void @free(ptr noundef nonnull %1) #46
  %i.e = load i32, ptr %i.b, align 4, !tbaa !7
  %i.f = sub i32 %i.e, %i.d                       ; 5 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !7
  %i.g = add i32 %i.f, -8192
  %or.cond4.i.us = icmp ult i32 %i.g, -16383
  br i1 %or.cond4.i.us, label %bb.c, label %.split.us

bb.c:                                             ; preds = %objspace_malloc_size.exit.split.us
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %malloc_increase_commit.exit.i21.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sub i32 0, %i.f
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  br label %.preheader.i.i.i14.us

.preheader.i.i.i14.us:                            ; preds = %.preheader.i.i.i14.us, %bb.d
  %.010.i.i.i15.us = phi i64 [ %spec.select.i.i.i16.us, %.preheader.i.i.i14.us ], [ %i.j, %bb.d ]
  %i.k = load i64, ptr %0, align 8, !tbaa !59     ; 3 uses
  %spec.select.i.i.i16.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %.010.i.i.i15.us) ; 2 uses
  %i.l = sub i64 %i.k, %spec.select.i.i.i16.us
  %i.m = cmpxchg volatile ptr %0, i64 %i.k, i64 %i.l seq_cst seq_cst, align 8
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %.preheader.i15.i.i18.us, label %.preheader.i.i.i14.us

.preheader.i15.i.i18.us:                          ; preds = %.preheader.i.i.i14.us, %.preheader.i15.i.i18.us
  %.010.i16.i.i19.us = phi i64 [ %spec.select.i17.i.i20.us, %.preheader.i15.i.i18.us ], [ %i.j, %.preheader.i.i.i14.us ]
  %i.o = load i64, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %spec.select.i17.i.i20.us = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.010.i16.i.i19.us) ; 2 uses
  %i.p = sub i64 %i.o, %spec.select.i17.i.i20.us
  %i.q = cmpxchg volatile ptr %i.c, i64 %i.o, i64 %i.p seq_cst seq_cst, align 8
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.split.us, label %.preheader.i15.i.i18.us

malloc_increase_commit.exit.i21.us:               ; preds = %bb.c
  %i.s = zext nneg i32 %i.f to i64                ; 2 uses
  %i.t = atomicrmw volatile add ptr %0, i64 %i.s seq_cst, align 8 ; 0 uses
  %i.u = atomicrmw volatile add ptr %i.c, i64 %i.s seq_cst, align 8 ; 0 uses
  br label %.split.us

objspace_malloc_size.exit.split:                  ; preds = %objspace_malloc_size.exit
  tail call void @free(ptr noundef nonnull %1) #46
  %i.v = load i32, ptr %i.b, align 4, !tbaa !7    ; 4 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.preheader.i.i.preheader, label %bb.e

bb.e:                                             ; preds = %objspace_malloc_size.exit.split
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.x = icmp sgt i32 %i.v, 0
  br i1 %i.x, label %malloc_increase_commit.exit.i, label %bb.f

malloc_increase_commit.exit.i:                    ; preds = %bb.e
  %i.y = zext nneg i32 %i.v to i64                ; 2 uses
  %i.z = atomicrmw volatile add ptr %0, i64 %i.y seq_cst, align 8 ; 0 uses
  %i.aa = atomicrmw volatile add ptr %i.c, i64 %i.y seq_cst, align 8 ; 0 uses
  br label %.preheader.i.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.ab = sub i32 0, %i.v
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %bb.f
  %.010.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.i.i.i ], [ %i.ac, %bb.f ]
  %i.ad = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %.010.i.i.i) ; 2 uses
  %i.ae = sub i64 %i.ad, %spec.select.i.i.i
  %i.af = cmpxchg volatile ptr %0, i64 %i.ad, i64 %i.ae seq_cst seq_cst, align 8
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %.preheader.i15.i.i, label %.preheader.i.i.i

.preheader.i15.i.i:                               ; preds = %.preheader.i.i.i, %.preheader.i15.i.i
  %.010.i16.i.i = phi i64 [ %spec.select.i17.i.i, %.preheader.i15.i.i ], [ %i.ac, %.preheader.i.i.i ]
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !59  ; 3 uses
  %spec.select.i17.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %.010.i16.i.i) ; 2 uses
  %i.ai = sub i64 %i.ah, %spec.select.i17.i.i
  %i.aj = cmpxchg volatile ptr %i.c, i64 %i.ah, i64 %i.ai seq_cst seq_cst, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %.preheader.i.i.preheader, label %.preheader.i15.i.i

.preheader.i.i.preheader:                         ; preds = %.preheader.i15.i.i, %objspace_malloc_size.exit.split, %malloc_increase_commit.exit.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.010.i.i = phi i64 [ %spec.select.i.i, %.preheader.i.i ], [ %.0.i, %.preheader.i.i.preheader ]
  %i.al = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %.010.i.i) ; 2 uses
  %i.am = sub i64 %i.al, %spec.select.i.i
  %i.an = cmpxchg volatile ptr %0, i64 %i.al, i64 %i.am seq_cst seq_cst, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %.preheader.i15.i, label %.preheader.i.i

.preheader.i15.i:                                 ; preds = %.preheader.i.i, %.preheader.i15.i
  %.010.i16.i = phi i64 [ %spec.select.i17.i, %.preheader.i15.i ], [ %.0.i, %.preheader.i.i ]
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !59  ; 3 uses
  %spec.select.i17.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %.010.i16.i) ; 2 uses
  %i.aq = sub i64 %i.ap, %spec.select.i17.i
  %i.ar = cmpxchg volatile ptr %i.c, i64 %i.ap, i64 %i.aq seq_cst seq_cst, align 8
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %.split.us, label %.preheader.i15.i

.split.us:                                        ; preds = %.preheader.i15.i, %.preheader.i15.i.i18.us, %malloc_increase_commit.exit.i21.us, %objspace_malloc_size.exit.split.us
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @ruby_mimfree(ptr noundef captures(none) %0) local_unnamed_addr #30 {
bb.a:
  tail call void @free(ptr noundef %0) #46
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias nonnull ptr @rb_xmalloc_mul_add(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %narrow.i.i = or i1 %i.d, %i.g
  br i1 %narrow.i.i, label %bb.b, label %size_mul_add_or_raise.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_during_gc.exit.thread.i, label %rb_during_gc.exit.i

rb_during_gc.exit.i:                              ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 1248
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr i8, ptr %i.j, i64 28
  %.val.i.i = load i16, ptr %i.k, align 4
  %i.l = and i16 %.val.i.i, 32
  %.not.i = icmp eq i16 %i.l, 0
  br i1 %.not.i, label %rb_during_gc.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %rb_during_gc.exit.i
  tail call void @rb_memerror() #62
  unreachable

rb_during_gc.exit.thread.i:                       ; preds = %rb_during_gc.exit.i, %bb.b
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.b, ptr noundef nonnull @.str.63, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef -1) #63
  unreachable

size_mul_add_or_raise.exit:                       ; preds = %bb.a
  %i.m = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %size_mul_add_or_raise.exit
  tail call fastcc void @negative_size_allocation_error() #63
  unreachable

bb.e:                                             ; preds = %size_mul_add_or_raise.exit
  %i.o = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.p = getelementptr i8, ptr %i.o, i64 1248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %bb.f, label %rb_current_ractor_raw.exit.thread3.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  store volatile ptr %i.t, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, null
  br i1 %.not.i.i.i, label %ruby_xmalloc_body.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %ruby_xmalloc_body.exit.i, label %rb_current_ractor_raw.exit.i.i.i

rb_current_ractor_raw.exit.i.i.i:                 ; preds = %bb.g
end_hunk_1
begin_hunk_2_@check_generation_i:bb.a
  %i.r = and i64 %0, -65536
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.s, align 65536, !tbaa !113 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 904
  %.lhs.trunc.i15 = trunc i64 %0 to i16           ; 2 uses
  %i.v = udiv i16 %.lhs.trunc.i15, 40
  %i.w = udiv i16 %.lhs.trunc.i15, 2560
  %.zext2.i16 = zext nneg i16 %i.w to i64         ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.zext2.i16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59
  %i.z = and i16 %i.v, 63
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = and i64 %i.y, %i.ab
  %.not13 = icmp eq i64 %i.ac, 0
  br i1 %.not13, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %i.t, i64 488
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.zext2.i16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !59
  %i.ag = and i64 %i.af, %i.ab
  %.not14 = icmp eq i64 %i.ag, 0
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.ai = tail call fastcc nonnull ptr @obj_type_name(i64 noundef %i.b)
  %i.aj = tail call fastcc nonnull ptr @obj_type_name(i64 noundef %0)
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ah, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj) #46 ; 0 uses
  %i.al = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !98
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !98
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @check_color_i(i64 noundef %0, ptr noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = and i64 %i.b, -65536
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 65536, !tbaa !113
  %i.f = getelementptr i8, ptr %i.e, i64 72
  %.lhs.trunc.i = trunc i64 %i.b to i16           ; 2 uses
  %i.g = udiv i16 %.lhs.trunc.i, 40
  %i.h = udiv i16 %.lhs.trunc.i, 2560
  %.zext2.i = zext nneg i16 %i.h to i64
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %.zext2.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !59
  %i.k = and i16 %i.g, 63
  %i.l = zext nneg i16 %i.k to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.m, %i.j
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = and i64 %0, -65536
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 65536, !tbaa !113
  %i.r = getelementptr i8, ptr %i.q, i64 280
  %.lhs.trunc.i.i = trunc i64 %0 to i16           ; 2 uses
  %i.s = udiv i16 %.lhs.trunc.i.i, 40
  %i.t = udiv i16 %.lhs.trunc.i.i, 2560
  %.zext2.i.i = zext nneg i16 %i.t to i64
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %.zext2.i.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59
  %i.w = and i16 %i.s, 63
  %i.x = zext nneg i16 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  %i.z = and i64 %i.v, %i.y
  %.not8.not = icmp eq i64 %i.z, 0
  br i1 %.not8.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.ab = tail call fastcc nonnull ptr @obj_type_name(i64 noundef %i.b)
  %i.ac = tail call fastcc nonnull ptr @obj_type_name(i64 noundef %0)
  %i.ad = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aa, i32 noundef 1, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #46 ; 0 uses
  %i.ae = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !98
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !98
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i1 @is_pointer_to_heap(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #44 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 896
  %i.c = load i64, ptr %i.b, align 8, !tbaa !59
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %heap_page_for_ptr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 904
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59
  %i.g = icmp uge i64 %i.f, %i.a
  %i.h = urem i64 %i.a, 40
  %.not = icmp eq i64 %i.h, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %bb.c, label %heap_page_for_ptr.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 872
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %heap_page_for_ptr.exit.thread, label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !96   ; 2 uses
  %.not24.i.i = icmp eq i64 %i.l, 0
  br i1 %.not24.i.i, label %heap_page_for_ptr.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %rb_darray_size.exit.i, %bb.f
  %.01621.i.i = phi i64 [ %.1.i.i, %bb.f ], [ 0, %rb_darray_size.exit.i ] ; 2 uses
  %.01720.i.i = phi i64 [ %.118.i.i, %bb.f ], [ %i.l, %rb_darray_size.exit.i ] ; 2 uses
  %i.m = add i64 %.01720.i.i, %.01621.i.i
  %i.n = lshr i64 %i.m, 1                         ; 3 uses
  %i.o = shl i64 %i.n, 3
  %i.p = getelementptr i8, ptr %i.k, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99   ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !185  ; 2 uses
  %.not.i12.i = icmp ugt ptr %i.s, %1
  br i1 %.not.i12.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 65536
  %.not17.i = icmp ugt i64 %i.u, %i.a
  br i1 %.not17.i, label %heap_page_for_ptr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nuw i64 %i.n, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.118.i.i = phi i64 [ %.01720.i.i, %bb.e ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.v, %bb.e ], [ %.01621.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.w = icmp ult i64 %.1.i.i, %.118.i.i
  br i1 %i.w, label %.lr.ph.i.i, label %heap_page_for_ptr.exit.thread, !llvm.loop !241

heap_page_for_ptr.exit:                           ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.q, i64 2
  %.val = load i16, ptr %i.x, align 2, !tbaa !108 ; 2 uses
  %i.y = icmp eq i16 %.val, 0
  br i1 %i.y, label %heap_page_for_ptr.exit.thread, label %bb.g

bb.g:                                             ; preds = %heap_page_for_ptr.exit
  %i.z = getelementptr i8, ptr %i.q, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !107 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, %i.a
  br i1 %i.ab, label %heap_page_for_ptr.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = zext i16 %.val to i64
  %i.ad = load i16, ptr %i.q, align 8, !tbaa !100 ; 2 uses
  %i.ae = zext i16 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ac, 32
  %sext = mul nuw i64 %i.af, %i.ae
  %i.ag = ashr exact i64 %sext, 32
  %i.ah = add i64 %i.ag, %i.aa
  %.not23 = icmp ugt i64 %i.ah, %i.a
  br i1 %.not23, label %bb.i, label %heap_page_for_ptr.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ai = trunc i64 %i.a to i16
  %.lhs.trunc = and i16 %i.ai, -8                 ; 2 uses
  %i.aj = urem i16 %.lhs.trunc, 40
  %.lhs.trunc27 = sub nuw i16 %.lhs.trunc, %i.aj
  %i.ak = urem i16 %.lhs.trunc27, %i.ad
  %.not24 = icmp eq i16 %i.ak, 0
  br label %heap_page_for_ptr.exit.thread

heap_page_for_ptr.exit.thread:                    ; preds = %bb.f, %bb.c, %rb_darray_size.exit.i, %bb.i, %bb.h, %bb.g, %heap_page_for_ptr.exit, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.h ], [ false, %heap_page_for_ptr.exit ], [ false, %bb.g ], [ %.not24, %bb.i ], [ false, %rb_darray_size.exit.i ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.0
}

declare void @rb_vm_lock_enter_body_nb(ptr noundef) local_unnamed_addr #11

declare void @rb_vm_lock_leave_body_nb(ptr noundef) local_unnamed_addr #11

declare i32 @rb_postponed_job_preregister(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal void @gc_finalize_deferred(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 816        ; 2 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 seq_cst, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  store volatile ptr %i.f, ptr %i.b, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 36 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !223
  %i.i = or i32 %i.h, 2
  store i32 %i.i, ptr %i.g, align 4, !tbaa !223
  tail call fastcc void @finalize_deferred_heap_pages(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !14
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..i.i1.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i1.i, i64 36 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !223
  %i.m = and i32 %i.l, -3
  store i32 %i.m, ptr %i.k, align 4, !tbaa !223
  store atomic volatile i32 0, ptr %i.c seq_cst, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @rb_st_init_numtable() local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @finalize_deferred_heap_pages(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 928        ; 2 uses
  %i.h = atomicrmw volatile xchg ptr %i.g, i64 0 seq_cst, align 8 ; 2 uses
  %.not2 = icmp eq i64 %i.h, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 936
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %finalize_list.exit
  %i.j = phi i64 [ %i.h, %.lr.ph ], [ %i.bu, %finalize_list.exit ]
  %.pre18.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %rb_gc_vm_unlock.exit.i, %bb.b
  %i.k = phi ptr [ %.pre18.i, %bb.b ], [ %i.bt, %rb_gc_vm_unlock.exit.i ]
  %.017.i = phi i64 [ %i.j, %bb.b ], [ %i.n, %rb_gc_vm_unlock.exit.i ] ; 5 uses
  %i.l = inttoptr i64 %.017.i to ptr              ; 7 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8        ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !426  ; 2 uses
  %i.o = and i64 %.017.i, -65536
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 65536, !tbaa !113 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.d, label %rb_gc_vm_lock.exit.i

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.f) #46
  %.pre.i.i = load i32, ptr %i.f, align 4, !tbaa !7
  br label %rb_gc_vm_lock.exit.i

rb_gc_vm_lock.exit.i:                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ 0, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  %i.s = getelementptr i8, ptr %i.l, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !428  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_gc_vm_lock.exit.i
  %i.u = getelementptr i8, ptr %i.l, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !429
  call void %i.t(ptr noundef %i.v) #46, !inline_history !430
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rb_gc_vm_lock.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i64 %.017.i, ptr %i.d, align 8, !tbaa !59
  %i.w = load i64, ptr %i.l, align 8, !tbaa !109  ; 2 uses
  %i.x = and i64 %i.w, 128
  %.not9.i.i = icmp eq i64 %i.x, 0
  br i1 %.not9.i.i, label %run_final.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = and i64 %.017.i, 7
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %RB_FL_UNSET.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = and i64 %i.w, -129
  store i64 %i.aa, ptr %i.l, align 8, !tbaa !109
  br label %RB_FL_UNSET.exit.i.i

RB_FL_UNSET.exit.i.i:                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.ac = call i32 @rb_st_delete(ptr noundef %i.ab, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #46
  %.not10.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not10.i.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %RB_FL_UNSET.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.r, ptr %i.c, align 4, !tbaa !7
  %i.ad = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %rb_gc_vm_unlock.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #46
  br label %rb_gc_vm_unlock.exit.i.i

rb_gc_vm_unlock.exit.i.i:                         ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !59
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !109 ; 2 uses
  %i.ah = and i64 %i.ag, 8192
  %.not.i.i.i15.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i15.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_gc_vm_unlock.exit.i.i
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = lshr i64 %i.ag, 15
  %i.ak = and i64 %i.aj, 127
  br label %rb_array_len.exit.i.i

bb.l:                                             ; preds = %rb_gc_vm_unlock.exit.i.i
  %i.al = getelementptr i8, ptr %i.af, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !214
  %i.an = getelementptr i8, ptr %i.af, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !214
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.l, %bb.k
  %.in.i.i = phi ptr [ %i.ai, %bb.k ], [ %i.am, %bb.l ]
  %.0.i.i.i = phi i64 [ %i.ak, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = load i64, ptr %.in.i.i, align 8, !tbaa !59
  %i.aq = add i64 %.0.i.i.i, -1
  call fastcc void @rb_gc_run_obj_finalizer(i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.ar = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i11.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i11.i.i, label %bb.m, label %rb_gc_vm_lock.exit.i.i

bb.m:                                             ; preds = %rb_array_len.exit.i.i
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #46
  %.pre.i.i.i = load i32, ptr %i.b, align 4, !tbaa !7
  br label %rb_gc_vm_lock.exit.i.i

rb_gc_vm_lock.exit.i.i:                           ; preds = %bb.m, %rb_array_len.exit.i.i
  %i.as = phi i32 [ 0, %rb_array_len.exit.i.i ], [ %.pre.i.i.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  br label %run_final.exit.i

bb.n:                                             ; preds = %RB_FL_UNSET.exit.i.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.100) #61
  unreachable

run_final.exit.i:                                 ; preds = %rb_gc_vm_lock.exit.i.i, %bb.f
  %.0.i.i = phi i32 [ %i.as, %rb_gc_vm_lock.exit.i.i ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %i.at = getelementptr i8, ptr %i.q, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !431 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 56     ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !154
  %i.ax = add i64 %i.aw, -1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !154
  %i.ay = getelementptr i8, ptr %i.q, i64 4       ; 2 uses
  %i.az = load <2 x i16>, ptr %i.ay, align 4, !tbaa !276
  %i.ba = add <2 x i16> %i.az, <i16 1, i16 -1>
  store <2 x i16> %i.ba, ptr %i.ay, align 4, !tbaa !276
  %i.bb = load ptr, ptr %i.p, align 65536, !tbaa !113
  %i.bc = getelementptr i8, ptr %i.bb, i64 1320
  %.lhs.trunc.i.i = trunc i64 %.017.i to i16      ; 2 uses
  %i.bd = udiv i16 %.lhs.trunc.i.i, 40
  %i.be = shl nuw nsw i16 %i.bd, 1
  %i.bf = and i16 %i.be, 62
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = shl nuw i64 3, %i.bg
  %i.bi = xor i64 %i.bh, -1
  %i.bj = udiv i16 %.lhs.trunc.i.i, 1280
  %.zext8.i.i = zext nneg i16 %i.bj to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bc, i64 %.zext8.i.i ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !59
  %i.bm = and i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !59
  store i64 0, ptr %i.l, align 8, !tbaa !432
  %i.bn = getelementptr i8, ptr %i.q, i64 48      ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !433
  store ptr %i.bo, ptr %i.m, align 8, !tbaa !196
  store ptr %i.l, ptr %i.bn, align 8, !tbaa !433
  %i.bp = getelementptr i8, ptr %i.au, i64 48     ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !153
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.0.i.i, ptr %i.a, align 4, !tbaa !7
  %i.bs = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i16.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i16.i, label %bb.o, label %rb_gc_vm_unlock.exit.i

bb.o:                                             ; preds = %run_final.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #46
  %.pre.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  br label %rb_gc_vm_unlock.exit.i

rb_gc_vm_unlock.exit.i:                           ; preds = %bb.o, %run_final.exit.i
  %i.bt = phi ptr [ %i.bs, %run_final.exit.i ], [ %.pre.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %finalize_list.exit, label %bb.c, !llvm.loop !434

finalize_list.exit:                               ; preds = %rb_gc_vm_unlock.exit.i
  %i.bu = atomicrmw volatile xchg ptr %i.g, i64 0 seq_cst, align 8 ; 2 uses
  %.not = icmp eq i64 %i.bu, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !435

._crit_edge:                                      ; preds = %finalize_list.exit, %bb.a
  ret void
}

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_run_obj_finalizer(i64 noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %.sroa.0 = alloca i64, align 8                  ; 5 uses
  %.sroa.4 = alloca i64, align 8                  ; 7 uses
  %.sroa.9 = alloca ptr, align 8                  ; 5 uses
  %.sroa.11 = alloca ptr, align 8                 ; 5 uses
  %.sroa.13 = alloca i64, align 8                 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  store i64 %0, ptr %i.b, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store volatile ptr %.0..0..0..0..0..0..i, ptr %i.c, align 8, !tbaa !14
  %.0..0..0..0.10 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.g = getelementptr i8, ptr %.0..0..0..0.10, i64 128
  %i.h = load i64, ptr %i.g, align 8, !tbaa !406
  store volatile i64 %i.h, ptr %.sroa.0, align 8, !tbaa !436
  %.0..0..0..0.11 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %.0..0..0..0.11, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !224
  store volatile ptr %i.j, ptr %.sroa.9, align 8, !tbaa !438
  %.0..0..0..0.12 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.k = getelementptr i8, ptr %.0..0..0..0.12, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !224
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !439
  store volatile ptr %i.n, ptr %.sroa.11, align 8, !tbaa !440
  store volatile i64 0, ptr %.sroa.13, align 8, !tbaa !441
  store volatile i64 36, ptr %.sroa.4, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.13 = load volatile ptr, ptr %i.c, align 8, !tbaa !14 ; 3 uses
  store ptr %.0..0..0..0.13, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !407
  store i64 36, ptr %3, align 8, !tbaa !443
  %i.p = getelementptr i8, ptr %.0..0..0..0.13, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !403
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !444
  %i.s = getelementptr i8, ptr %.0..0..0..0.13, i64 48
  %.0.6.val = load ptr, ptr %i.s, align 8, !tbaa !16 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.6.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %.0.6.val, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !225
  %i.v = getelementptr i8, ptr %.0.6.val, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.w, %bb.b ], [ null, %bb.a ]
  %i.x = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.x, align 8, !tbaa !401
  %i.y = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.y, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.z = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !402
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i = phi i32 [ %i.aa, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i, ptr %i.ab, align 4, !tbaa !404
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = tail call ptr @llvm.stacksave.p0()
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ac)
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %.thread, label %bb.d, !prof !189

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.p, align 8, !tbaa !403
  br label %bb.g

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.7 = load volatile ptr, ptr %i.d, align 8, !tbaa !14
  call fastcc void @rb_ec_tag_state(ptr noundef %.0..0..0..0.7)
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32. = load volatile i64, ptr %.sroa.13, align 8, !tbaa !441
  %i.ah = add i64 %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32., 1
  store volatile i64 %i.ah, ptr %.sroa.13, align 8, !tbaa !441
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load volatile i64, ptr %.sroa.4, align 8, !tbaa !442 ; 2 uses
  store volatile i64 36, ptr %.sroa.4, align 8, !tbaa !442
  %i.ai = icmp eq i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., 36
  br i1 %i.ai, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = call ptr @rb_ruby_verbose_ptr() #46
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !59
  %i.al = icmp eq i64 %i.ak, 4
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.101, i64 noundef %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.) #66
  %.0..0..0..0.14 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %.0..0..0..0.15 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.am = getelementptr i8, ptr %.0..0..0..0.15, i64 128
  %i.an = load i64, ptr %i.am, align 8, !tbaa !406
  call void @rb_ec_error_print(ptr noundef %.0..0..0..0.14, i64 noundef %i.an) #46
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.f
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32.20 = load volatile i64, ptr %.sroa.13, align 8, !tbaa !441 ; 2 uses
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16.1 = load volatile ptr, ptr %.sroa.9, align 8, !tbaa !438
  %.0..0..0..0.162 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.ao = getelementptr i8, ptr %.0..0..0..0.162, i64 16
  store ptr %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16.1, ptr %i.ao, align 8, !tbaa !224
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.24.3 = load volatile ptr, ptr %.sroa.11, align 8, !tbaa !440
  %.0..0..0..0.174 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.ap = getelementptr i8, ptr %.0..0..0..0.174, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !224
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store ptr %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.24.3, ptr %i.ar, align 8, !tbaa !439
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.5 = load volatile i64, ptr %.sroa.0, align 8, !tbaa !436
  %.0..0..0..0.186 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.as = getelementptr i8, ptr %.0..0..0..0.186, i64 128
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.5, ptr %i.as, align 8, !tbaa !406
  %i.at = icmp slt i64 %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32.20, %1
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.au = getelementptr i8, ptr %2, i64 16
  %i.av = getelementptr i8, ptr %2, i64 32
  br label %bb.h

._crit_edge:                                      ; preds = %get_final.exit, %bb.g
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !444
  %.0..0..0..0.9 = load ptr, ptr %i.d, align 8, !tbaa !14
  %4 = getelementptr i8, ptr %.0..0..0..0.9, i64 24
  store ptr %i.aw, ptr %4, align 8, !tbaa !403
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  ret void

bb.h:                                             ; preds = %.lr.ph, %get_final.exit
  %.07 = phi i64 [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32.20, %.lr.ph ], [ %i.be, %get_final.exit ] ; 2 uses
  %i.ax = load i64, ptr %2, align 8, !tbaa !109
  %i.ay = and i64 %i.ax, 8192
  %.not.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i, label %bb.i, label %get_final.exit

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !214
  br label %get_final.exit

get_final.exit:                                   ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %i.az, %bb.i ], [ %i.au, %bb.h ]
  %i.ba = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.07
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !59
  store volatile i64 %i.bc, ptr %.sroa.4, align 8, !tbaa !442
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.19 = load volatile i64, ptr %.sroa.4, align 8, !tbaa !442
  %i.bd = call i64 @rb_check_funcall(i64 noundef %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.19, i64 noundef 3473, i32 noundef 1, ptr noundef nonnull %i.b) #46 ; 0 uses
  %i.be = add i64 %.07, 1                         ; 3 uses
  store volatile i64 %i.be, ptr %.sroa.13, align 8, !tbaa !441
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16. = load volatile ptr, ptr %.sroa.9, align 8, !tbaa !438
  %.0..0..0..0.16 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.bf = getelementptr i8, ptr %.0..0..0..0.16, i64 16
  store ptr %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16., ptr %i.bf, align 8, !tbaa !224
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.24. = load volatile ptr, ptr %.sroa.11, align 8, !tbaa !440
  %.0..0..0..0.17 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.bg = getelementptr i8, ptr %.0..0..0..0.17, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !224
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  store ptr %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.24., ptr %i.bi, align 8, !tbaa !439
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load volatile i64, ptr %.sroa.0, align 8, !tbaa !436
  %.0..0..0..0.18 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.bj = getelementptr i8, ptr %.0..0..0..0.18, i64 128
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.bj, align 8, !tbaa !406
  %exitcond.not = icmp eq i64 %i.be, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !445
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #45

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #40

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #46

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @rb_ec_tag_state(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64
  store i32 0, ptr %i.c, align 8, !tbaa !407
  %i.d = getelementptr i8, ptr %i.b, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !404  ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !225
  %i.i = getelementptr i8, ptr %.val.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.b, %bb.a
  %.0.i2.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.k = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.k, align 8, !tbaa !401
  %i.l = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %i.l, label %bb.c, label %rb_ec_vm_lock_rec.exit.i

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.m = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !402
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.c, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.n, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.e
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.d

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef %.0.i.i) #46
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.d
  ret void
}

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #11

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #47

declare void @rb_ec_error_print(ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_check_funcall(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #48

declare void @rb_ec_vm_lock_rec_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #37

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #36

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @heap_page_body_free(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @heap_page_alloc_use_mmap, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @munmap(ptr noundef %0, i64 noundef 65536) #46
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.104) #61
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_event_hook(i64 noundef %0, i32 noundef range(i32 1048576, 67108865) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.c = and i32 %i.b, %1
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %bb.d, label %bb.b, !prof !189

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !224  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %rb_ec_hooks.exit

rb_ec_hooks.exit:                                 ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val = load ptr, ptr %i.h, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.i = getelementptr i8, ptr %.val, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !225  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 1120
  %i.l = load i32, ptr %i.k, align 8, !tbaa !226
  %i.m = and i32 %i.l, %1
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.d, label %bb.c, !prof !189

bb.c:                                             ; preds = %rb_ec_hooks.exit
  %i.n = getelementptr i8, ptr %i.j, i64 1112
  %i.o = getelementptr i8, ptr %i.g, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store i32 %1, ptr %2, align 8, !tbaa !230
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0..0..0..0..0..0..i, ptr %i.q, align 8, !tbaa !232
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.g, ptr %i.r, align 8, !tbaa !233
end_hunk_2
begin_hunk_3_@gc_sweep_plane:bb.a
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.133) #61
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bv = load i32, ptr %i.f, align 8, !tbaa !525
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.f, align 8, !tbaa !525
  %i.bx = and i64 %.0, -65536
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 65536, !tbaa !113
  %i.ca = getelementptr i8, ptr %i.bz, i64 1320
  %.lhs.trunc.i40 = trunc i64 %.0 to i16          ; 2 uses
  %i.cb = udiv i16 %.lhs.trunc.i40, 40
  %i.cc = shl nuw nsw i16 %i.cb, 1
  %i.cd = and i16 %i.cc, 62
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = shl nuw i64 3, %i.ce
  %i.cg = xor i64 %i.cf, -1
  %i.ch = udiv i16 %.lhs.trunc.i40, 1280
  %.zext8.i41 = zext nneg i16 %i.ch to i64
  %i.ci = getelementptr [8 x i8], ptr %i.ca, i64 %.zext8.i41 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !59
  %i.ck = and i64 %i.cj, %i.cg
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !59
  store i64 0, ptr %i.v, align 8, !tbaa !432
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !433
  %i.cm = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !196
  store ptr %i.v, ptr %i.h, align 8, !tbaa !433
  br label %bb.o

bb.n:                                             ; preds = %bb.c
  %i.cn = load i32, ptr %i.f, align 8, !tbaa !525
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.f, align 8, !tbaa !525
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.m, %bb.n, %bb.j, %bb.i, %bb.b
  %i.cp = add i64 %.0, %i.d
  %i.cq = lshr i64 %.034, %i.t                    ; 2 uses
  %.not38 = icmp eq i64 %i.cq, 0
  br i1 %.not38, label %bb.p, label %bb.b, !llvm.loop !547

bb.p:                                             ; preds = %bb.o
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_obj_free_vm_weak_references(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.b)
  tail call void @llvm.assume(i1 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.e = load ptr, ptr @id2ref_tbl, align 8, !tbaa !242
  %.not.i = icmp eq ptr %i.e, null
  %.pre27 = inttoptr i64 %0 to ptr                ; 8 uses
  br i1 %.not.i, label %rb_type.exit.i, label %bb.b, !prof !189

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %.pre27, align 8, !tbaa !109 ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %rb_type.exit.i [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 26, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr i8, ptr %.pre27, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !415
  br label %thread-pre-split.i

bb.d:                                             ; preds = %bb.b
  %i.k = and i64 %i.f, 61471
  %.not16.i = icmp eq i64 %i.k, 53274
  br i1 %.not16.i, label %bb.e, label %rb_type.exit.i, !prof !190

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.l = lshr i64 %i.f, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = and i32 %i.m, 67108864
  %.not17.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i, label %rb_type.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call fastcc i64 @object_id_get(i64 noundef %0, i32 noundef %i.m)
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.f, %bb.c
  %.sink.i = phi i64 [ %i.o, %bb.f ], [ %i.j, %bb.c ] ; 2 uses
  store i64 %.sink.i, ptr %i.a, align 8, !tbaa !59
  %.not10.i = icmp eq i64 %.sink.i, 0
  br i1 %.not10.i, label %rb_type.exit.i, label %bb.g, !prof !548

bb.g:                                             ; preds = %thread-pre-split.i
  %i.p = load ptr, ptr @id2ref_tbl, align 8, !tbaa !242
  %i.q = call i32 @rb_st_delete(ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef null) #46
  %.not11.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %rb_type.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.g
  %i.r = load i64, ptr %.pre27, align 8, !tbaa !109
  %i.s = and i64 %i.r, 31
  %i.t = icmp eq i64 %i.s, 26
  br i1 %i.t, label %rb_type.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !59
  %i.v = call fastcc i64 @rb_num2ull_inline(i64 noundef %i.u)
  %i.w = call ptr @rb_obj_info(i64 noundef %0)
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.134, i64 noundef %i.v, ptr noundef nonnull %i.w) #61
  unreachable

rb_type.exit.i:                                   ; preds = %bb.g, %thread-pre-split.i, %bb.e, %bb.d, %bb.b, %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.x = load i64, ptr %.pre27, align 8, !tbaa !109 ; 8 uses
  %i.y = trunc i64 %i.x to i32                    ; 7 uses
  %i.z = and i32 %i.y, 31
  switch i32 %i.z, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %rb_type.exit.i
  %i.aa = and i64 %i.x, 578712547822141440
  %.not23 = icmp eq i64 %i.aa, 0
  br i1 %.not23, label %rb_obj_gen_fields_p.exit.thread, label %bb.h

bb.h:                                             ; preds = %rb_obj_gen_fields_p.exit
  call void @rb_free_generic_ivar(i64 noundef %0) #46
  %.pre = load i64, ptr %.pre27, align 8, !tbaa !109 ; 2 uses
  %.pre26 = trunc i64 %.pre to i32
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %bb.h, %rb_obj_gen_fields_p.exit
  %.pre-phi = phi i32 [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %.pre26, %bb.h ], [ %i.y, %rb_obj_gen_fields_p.exit ] ; 2 uses
  %i.ab = phi i64 [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %.pre, %bb.h ], [ %i.x, %rb_obj_gen_fields_p.exit ] ; 2 uses
  %i.ac = and i32 %.pre-phi, 31
  switch i32 %i.ac, label %bb.q [
    i32 5, label %bb.i
    i32 20, label %bb.k
    i32 26, label %bb.l
  ]

bb.i:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ad = and i64 %i.ab, 536870912
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @rb_gc_free_fstring(i64 noundef %0) #46
  br label %bb.q

bb.k:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_gc_free_dsymbol(i64 noundef %0) #46
  br label %bb.q

bb.l:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ae = lshr i32 %.pre-phi, 12
  %i.af = and i32 %i.ae, 15
  switch i32 %i.af, label %bb.q [
    i32 11, label %bb.m
    i32 10, label %bb.o
    i32 6, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = and i64 %i.ab, 524288
  %.not24 = icmp eq i64 %i.ag, 0
  br i1 %.not24, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_vm_delete_cc_refinement(ptr noundef nonnull %.pre27) #46
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  call void @rb_vm_ci_free(ptr noundef nonnull %.pre27) #46
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @rb_free_method_entry_vm_weak_references(ptr noundef nonnull %.pre27) #46
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.n, %rb_obj_gen_fields_p.exit.thread, %bb.o, %bb.p, %bb.l, %bb.i, %bb.j, %bb.k
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @rb_gc_obj_free(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.classext_foreach_args, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = inttoptr i64 %1 to ptr                   ; 27 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 9 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 31                         ; 2 uses
  switch i32 %i.d, label %bb.aj [
    i32 17, label %bb.b
    i32 21, label %bb.b
    i32 18, label %bb.b
    i32 19, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.f
    i32 5, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 6, label %bb.j
    i32 12, label %bb.l
    i32 13, label %bb.w
    i32 11, label %bb.z
    i32 15, label %ruby_sized_xfree.exit
    i32 14, label %ruby_sized_xfree.exit
    i32 30, label %ruby_sized_xfree.exit
    i32 28, label %bb.ac
    i32 4, label %ruby_sized_xfree.exit
    i32 10, label %bb.ad
    i32 27, label %bb.ae
    i32 9, label %bb.af
    i32 20, label %ruby_sized_xfree.exit
    i32 26, label %bb.ai
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.135) #61
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, 65536
  %.not52 = icmp eq i64 %i.e, 0
  br i1 %.not52, label %ruby_sized_xfree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i64 %1, 0
  %i.g = and i64 %1, 7
  %i.h = icmp eq i64 %i.g, 0
  %.not86 = and i1 %i.f, %i.h
  %i.i = and i64 %i.b, 576460752303423488
  %i.j = icmp ne i64 %i.i, 0
  %or.cond = and i1 %.not86, %i.j
  %i.k = getelementptr i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !214  ; 2 uses
  br i1 %or.cond, label %bb.e, label %rb_shape_obj_too_complex_p.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @rb_st_free_table(ptr noundef %i.l) #46
  br label %ruby_sized_xfree.exit

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.d
  tail call void @ruby_sized_xfree(ptr noundef %i.l, i64 noundef 0), !inline_history !322
  br label %ruby_sized_xfree.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  tail call void @rb_zjit_klass_free(i64 noundef %1) #46
  store i64 %1, ptr %2, align 8, !tbaa !484
  call void @rb_class_classext_foreach(i64 noundef %1, ptr noundef nonnull @classext_free, ptr noundef nonnull %2) #46
  %i.m = load i64, ptr %i.a, align 8, !tbaa !109
  %i.n = and i64 %i.m, 65536
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %ruby_sized_xfree.exit, label %RCLASS_CLASSEXT_TBL.exit

RCLASS_CLASSEXT_TBL.exit:                         ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.a, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245  ; 2 uses
  %.not51 = icmp eq ptr %i.p, null
  br i1 %.not51, label %ruby_sized_xfree.exit, label %RCLASS_CLASSEXT_TBL.exit56

RCLASS_CLASSEXT_TBL.exit56:                       ; preds = %RCLASS_CLASSEXT_TBL.exit
  call void @rb_st_free_table(ptr noundef nonnull %i.p) #46
  br label %ruby_sized_xfree.exit

bb.g:                                             ; preds = %bb.a
  tail call void @rb_str_free(i64 noundef %1) #46
  br label %ruby_sized_xfree.exit

bb.h:                                             ; preds = %bb.a
  tail call void @rb_ary_free(i64 noundef %1) #46
  br label %ruby_sized_xfree.exit

bb.i:                                             ; preds = %bb.a
  tail call void @rb_hash_free(i64 noundef %1) #46
  br label %ruby_sized_xfree.exit

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !256  ; 2 uses
  %.not50 = icmp eq ptr %i.r, null
  br i1 %.not50, label %ruby_sized_xfree.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @onig_free(ptr noundef nonnull %i.r) #46
  br label %ruby_sized_xfree.exit

bb.l:                                             ; preds = %bb.a
  %i.s = and i64 %i.b, 64
  %.not83 = icmp eq i64 %i.s, 0                   ; 2 uses
  br i1 %.not83, label %RTYPEDDATA_GET_DATA.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr i8, ptr %i.a, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !131  ; 2 uses
  %i.v = trunc i64 %i.u to i1
  %i.w = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.v, label %RTYPEDDATA_GET_DATA.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.n, %bb.m
  %i.y = phi ptr [ %i.w, %bb.m ], [ %i.x, %bb.n ] ; 2 uses
  %.not.i57 = icmp eq ptr %i.y, null
  br i1 %.not.i57, label %ruby_sized_xfree.exit, label %bb.o

RTYPEDDATA_GET_DATA.exit.thread:                  ; preds = %bb.l
  %i.z = getelementptr i8, ptr %i.a, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !201 ; 2 uses
  %.not.i5775 = icmp eq ptr %i.aa, null
  br i1 %.not.i5775, label %ruby_sized_xfree.exit, label %.thread

bb.o:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  %i.ab = and i64 %i.u, -2
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !205
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = and i64 %i.ae, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br label %bb.p

.thread:                                          ; preds = %RTYPEDDATA_GET_DATA.exit.thread
  %i.ai = getelementptr i8, ptr %i.a, i64 24
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %i.aj = phi ptr [ %i.y, %bb.o ], [ %i.aa, %.thread ] ; 4 uses
  %.025.i = phi i1 [ %i.ah, %bb.o ], [ true, %.thread ]
  %.024.in.i = phi ptr [ %i.af, %bb.o ], [ %i.ai, %.thread ]
  %.024.i = load ptr, ptr %.024.in.i, align 8, !tbaa !362 ; 3 uses
  %magicptr.i = ptrtoint ptr %.024.i to i64
  switch i64 %magicptr.i, label %bb.t [
    i64 0, label %ruby_sized_xfree.exit
    i64 -1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %.not83, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr i8, ptr %i.a, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !131
  %i.am = trunc i64 %i.al to i1
  br i1 %i.am, label %ruby_sized_xfree.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @ruby_xfree(ptr noundef nonnull %i.aj), !inline_history !549
  br label %ruby_sized_xfree.exit

bb.t:                                             ; preds = %bb.p
  br i1 %.025.i, label %rb_data_free.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void %.024.i(ptr noundef nonnull %i.aj) #46, !inline_history !549
  %i.an = getelementptr i8, ptr %i.a, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !131 ; 2 uses
  %i.ap = and i64 %i.ao, -2
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr i8, ptr %i.aq, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !205
  %i.at = and i64 %i.as, 2
  %.not30.i = icmp eq i64 %i.at, 0
  %i.au = trunc i64 %i.ao to i1
  %or.cond81 = or i1 %.not30.i, %i.au
  br i1 %or.cond81, label %ruby_sized_xfree.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @ruby_xfree(ptr noundef nonnull %i.aj), !inline_history !549
  br label %ruby_sized_xfree.exit

rb_data_free.exit:                                ; preds = %bb.t
  tail call fastcc void @rb_gc_impl_make_zombie(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %.024.i, ptr noundef nonnull %i.aj), !inline_history !549
  br label %bb.am

bb.w:                                             ; preds = %bb.a
  %i.av = getelementptr i8, ptr %i.a, i64 32
  tail call void @onig_region_free(ptr noundef %i.av, i32 noundef 0) #46
  %i.aw = getelementptr i8, ptr %i.a, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !550 ; 4 uses
  %.not.i71 = icmp eq ptr %i.ax, null
end_hunk_3
begin_hunk_4_@rb_gc_obj_free:bb.a
  %i.bh = getelementptr i8, ptr %0, i64 928       ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !533
  %i.bj = getelementptr i8, ptr %i.a, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.i.i = phi i64 [ %i.bi, %bb.aa ], [ %i.bl, %bb.ab ] ; 2 uses
  store i64 %.0.i.i, ptr %i.bj, align 8, !tbaa !426
  %i.bk = cmpxchg volatile ptr %i.bh, i64 %.0.i.i, i64 %1 seq_cst seq_cst, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 0
  %.not.i.i = extractvalue { i64, i1 } %i.bk, 1
  br i1 %.not.i.i, label %make_io_zombie.exit, label %bb.ab, !llvm.loop !554

make_io_zombie.exit:                              ; preds = %bb.ab
  %i.bm = and i64 %1, -65536
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load ptr, ptr %i.bn, align 65536, !tbaa !113 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 6      ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !146
  %i.br = add i16 %i.bq, 1
  store i16 %i.br, ptr %i.bp, align 2, !tbaa !146
  %i.bs = getelementptr i8, ptr %i.bo, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !431
  %i.bu = getelementptr i8, ptr %i.bt, i64 56     ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !154
  br label %bb.am

bb.ac:                                            ; preds = %bb.a
  store i64 %1, ptr %2, align 8, !tbaa !484
  call void @rb_class_classext_foreach(i64 noundef %1, ptr noundef nonnull @classext_iclass_free, ptr noundef nonnull %2) #46
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !109
  %i.by = and i64 %i.bx, 65536
  %.not.i58 = icmp eq i64 %i.by, 0
  br i1 %.not.i58, label %ruby_sized_xfree.exit, label %RCLASS_CLASSEXT_TBL.exit60

RCLASS_CLASSEXT_TBL.exit60:                       ; preds = %bb.ac
  %i.bz = getelementptr i8, ptr %i.a, i64 160
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !245 ; 2 uses
  %.not48 = icmp eq ptr %i.ca, null
  br i1 %.not48, label %ruby_sized_xfree.exit, label %RCLASS_CLASSEXT_TBL.exit63

RCLASS_CLASSEXT_TBL.exit63:                       ; preds = %RCLASS_CLASSEXT_TBL.exit60
  call void @rb_st_free_table(ptr noundef nonnull %i.ca) #46
  br label %ruby_sized_xfree.exit

bb.ad:                                            ; preds = %bb.a
  %i.cb = and i64 %i.b, 16384
  %.not82 = icmp eq i64 %i.cb, 0
  br i1 %.not82, label %BIGNUM_DIGITS.exit, label %ruby_sized_xfree.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.ad
  %i.cc = getelementptr i8, ptr %i.a, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !214 ; 2 uses
  %.not47 = icmp eq ptr %i.cd, null
  br i1 %.not47, label %ruby_sized_xfree.exit, label %BIGNUM_DIGITS.exit68

BIGNUM_DIGITS.exit68:                             ; preds = %BIGNUM_DIGITS.exit
  tail call void @ruby_sized_xfree(ptr noundef nonnull %i.cd, i64 noundef 0), !inline_history !322
  br label %ruby_sized_xfree.exit

bb.ae:                                            ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.136, i32 noundef 27, ptr noundef nonnull %i.a, i64 noundef %i.b) #61
  unreachable

bb.af:                                            ; preds = %bb.a
  %i.ce = and i64 %i.b, 1040384
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %bb.ag, label %ruby_sized_xfree.exit

bb.ag:                                            ; preds = %bb.af
  %i.cf = getelementptr i8, ptr %i.a, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !214 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %ruby_sized_xfree.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @ruby_sized_xfree(ptr noundef nonnull %i.cg, i64 noundef 0), !inline_history !322
  br label %ruby_sized_xfree.exit

bb.ai:                                            ; preds = %bb.a
  tail call void @rb_imemo_free(i64 noundef %1) #46
  br label %ruby_sized_xfree.exit

bb.aj:                                            ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.137, i32 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.b) #61
  unreachable

ruby_sized_xfree.exit:                            ; preds = %ruby_sized_xfree.exit.loopexit, %bb.ac, %RTYPEDDATA_GET_DATA.exit.thread, %RTYPEDDATA_GET_DATA.exit, %bb.v, %bb.u, %bb.r, %bb.s, %bb.p, %bb.f, %bb.y, %bb.w, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.ah, %bb.ag, %bb.af, %BIGNUM_DIGITS.exit68, %BIGNUM_DIGITS.exit, %bb.ad, %RCLASS_CLASSEXT_TBL.exit60, %RCLASS_CLASSEXT_TBL.exit63, %bb.z, %bb.j, %bb.k, %RCLASS_CLASSEXT_TBL.exit, %RCLASS_CLASSEXT_TBL.exit56, %rb_shape_obj_too_complex_p.exit.thread, %bb.e, %bb.c, %bb.ai, %bb.i, %bb.h, %bb.g
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !109
  %i.cj = and i64 %i.ci, 128
  %.not53 = icmp eq i64 %i.cj, 0
  br i1 %.not53, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %ruby_sized_xfree.exit
  store i64 157, ptr %i.a, align 8, !tbaa !553
  %i.ck = getelementptr i8, ptr %i.a, i64 16
  %i.cl = getelementptr i8, ptr %0, i64 928       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !533
  %i.cn = getelementptr i8, ptr %i.a, i64 8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.0.i69 = phi i64 [ %i.cm, %bb.ak ], [ %i.cp, %bb.al ] ; 2 uses
  store i64 %.0.i69, ptr %i.cn, align 8, !tbaa !426
  %i.co = cmpxchg volatile ptr %i.cl, i64 %.0.i69, i64 %1 seq_cst seq_cst, align 8 ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 0
  %.not.i70 = extractvalue { i64, i1 } %i.co, 1
  br i1 %.not.i70, label %rb_gc_impl_make_zombie.exit, label %bb.al, !llvm.loop !554

rb_gc_impl_make_zombie.exit:                      ; preds = %bb.al
  %i.cq = and i64 %1, -65536
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load ptr, ptr %i.cr, align 65536, !tbaa !113 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 6      ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !146
  %i.cv = add i16 %i.cu, 1
  store i16 %i.cv, ptr %i.ct, align 2, !tbaa !146
  %i.cw = getelementptr i8, ptr %i.cs, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !431
  %i.cy = getelementptr i8, ptr %i.cx, i64 56     ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !154
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !154
  br label %bb.am

bb.am:                                            ; preds = %rb_data_free.exit, %ruby_sized_xfree.exit, %rb_gc_impl_make_zombie.exit, %make_io_zombie.exit
  %.0 = phi i1 [ false, %rb_gc_impl_make_zombie.exit ], [ false, %rb_data_free.exit ], [ false, %make_io_zombie.exit ], [ true, %ruby_sized_xfree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret i1 %.0
}

declare void @rb_free_generic_ivar(i64 noundef) local_unnamed_addr #11

declare void @rb_gc_free_fstring(i64 noundef) local_unnamed_addr #11

declare void @rb_gc_free_dsymbol(i64 noundef) local_unnamed_addr #11

declare void @rb_vm_delete_cc_refinement(ptr noundef) local_unnamed_addr #11

declare void @rb_vm_ci_free(ptr noundef) local_unnamed_addr #11

declare void @rb_free_method_entry_vm_weak_references(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @object_id_get(i64 noundef %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = and i32 %1, 134217728
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @rb_shape_object_id(i32 noundef %1) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.b, %bb.b ], [ 201326593, %bb.a ]
  %i.c = tail call i64 @rb_obj_field_get(i64 noundef %0, i32 noundef %.sink) #46
  ret i64 %i.c
}

declare i64 @rb_obj_field_get(i64 noundef, i32 noundef) local_unnamed_addr #11

declare i32 @rb_shape_object_id(i32 noundef) local_unnamed_addr #11

declare void @rb_st_free_table(ptr noundef) local_unnamed_addr #11

declare void @rb_zjit_klass_free(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal void @classext_free(ptr noundef %0, i1 noundef zeroext %1, i64 %2, ptr noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !484
  tail call void @rb_class_classext_free(i64 noundef %i.a, ptr noundef %0, i1 noundef zeroext %1) #46
  ret void
}

declare void @rb_str_free(i64 noundef) local_unnamed_addr #11

declare void @rb_ary_free(i64 noundef) local_unnamed_addr #11

declare void @rb_hash_free(i64 noundef) local_unnamed_addr #11

declare void @onig_free(ptr noundef) local_unnamed_addr #11

declare void @onig_region_free(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal void @classext_iclass_free(ptr noundef %0, i1 noundef zeroext %1, i64 %2, ptr noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !484
  tail call void @rb_iclass_classext_free(i64 noundef %i.a, ptr noundef %0, i1 noundef zeroext %1) #46
  ret void
}

declare void @rb_imemo_free(i64 noundef) local_unnamed_addr #11

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal fastcc void @rb_gc_impl_make_zombie(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #50 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !553
  %i.c = and i64 %i.b, 128
  %i.d = or disjoint i64 %i.c, 29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !553
  %i.e = getelementptr i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !428
  %i.f = getelementptr i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.f, align 8, !tbaa !429
  %i.g = getelementptr i8, ptr %0, i64 928        ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !533
  %i.i = getelementptr i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.h, %bb.a ], [ %i.k, %bb.b ]  ; 2 uses
  store i64 %.0, ptr %i.i, align 8, !tbaa !426
  %i.j = cmpxchg volatile ptr %i.g, i64 %.0, i64 %1 seq_cst seq_cst, align 8 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0
  %.not = extractvalue { i64, i1 } %i.j, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !554

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %1, -65536
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 65536, !tbaa !113 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 6        ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !146
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 2, !tbaa !146
  %i.r = getelementptr i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !431
  %i.t = getelementptr i8, ptr %i.s, i64 56       ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !154
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !154
  ret void
}

declare void @rb_class_classext_free(i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal void @io_fptr_finalize(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call i32 @rb_io_fptr_finalize(ptr noundef %0) #46 ; 0 uses
  ret void
}

declare i32 @rb_io_fptr_finalize(ptr noundef) local_unnamed_addr #11

declare void @rb_iclass_classext_free(i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #11

declare void @rb_postponed_job_trigger(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @gc_update_references_weak_table_i(i64 noundef %0, ptr readnone captures(none) %1) #5 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %i.c = and i64 %i.b, 31
  %i.d = icmp eq i64 %i.c, 30
  %i.e = select i1 %i.d, i32 4, i32 0
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @gc_update_references_weak_table_replace_i(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #51 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !59     ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rb_gc_location.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 30
  br i1 %i.i, label %.split2.us.i.i.i, label %rb_gc_location.exit

.split2.us.i.i.i:                                 ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !286
  br label %rb_gc_location.exit

rb_gc_location.exit:                              ; preds = %bb.a, %bb.b, %.split2.us.i.i.i
  %.0.i.i = phi i64 [ %i.a, %bb.a ], [ %i.k, %.split2.us.i.i.i ], [ %i.a, %bb.b ]
  store i64 %.0.i.i, ptr %0, align 8, !tbaa !59
  ret i32 0
}

declare void @rb_yjit_mark_all_writeable() local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal void @update_classext(ptr noundef captures(none) %0, i1 zeroext %1, i64 %2, ptr noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !486  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !555  ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  %i.e = and i64 %i.d, 7
  %i.f = icmp ne i64 %i.e, 0
  %or.cond = or i1 %.not, %i.f
  br i1 %or.cond, label %gc_object_moved_p_internal.exit.thread, label %gc_object_moved_p_internal.exit

gc_object_moved_p_internal.exit:                  ; preds = %bb.a
  %i.g = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !109
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 30
  br i1 %i.j, label %gc_location_internal.exit, label %gc_object_moved_p_internal.exit.thread

gc_location_internal.exit:                        ; preds = %gc_object_moved_p_internal.exit
  %i.k = getelementptr i8, ptr %i.g, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !286
  store i64 %i.l, ptr %i.c, align 8, !tbaa !59
  br label %gc_object_moved_p_internal.exit.thread

gc_object_moved_p_internal.exit.thread:           ; preds = %gc_object_moved_p_internal.exit, %gc_location_internal.exit, %bb.a
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !255  ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %update_m_tbl.exit, label %bb.b

bb.b:                                             ; preds = %gc_object_moved_p_internal.exit.thread
  tail call void @rb_id_table_foreach_values_with_replace(ptr noundef nonnull %i.n, ptr noundef nonnull @check_id_table_move, ptr noundef nonnull @update_id_table, ptr noundef %i.b) #46
  br label %update_m_tbl.exit

update_m_tbl.exit:                                ; preds = %gc_object_moved_p_internal.exit.thread, %bb.b
  %i.o = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !556  ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = and i64 %i.p, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %gc_object_moved_p_internal.exit34.thread, label %gc_object_moved_p_internal.exit34

gc_object_moved_p_internal.exit34:                ; preds = %update_m_tbl.exit
  %i.u = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109
  %i.w = and i64 %i.v, 31
  %i.x = icmp eq i64 %i.w, 30
  br i1 %i.x, label %gc_location_internal.exit37, label %gc_object_moved_p_internal.exit34.thread

gc_location_internal.exit37:                      ; preds = %gc_object_moved_p_internal.exit34
  %i.y = getelementptr i8, ptr %i.u, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !286
  store i64 %i.z, ptr %i.o, align 8, !tbaa !59
  br label %gc_object_moved_p_internal.exit34.thread

gc_object_moved_p_internal.exit34.thread:         ; preds = %update_m_tbl.exit, %gc_location_internal.exit37, %gc_object_moved_p_internal.exit34
  %i.aa = getelementptr i8, ptr %0, i64 125       ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 4
  %.not31 = icmp eq i8 %i.ac, 0
  br i1 %.not31, label %bb.c, label %update_const_tbl.exit

bb.c:                                             ; preds = %gc_object_moved_p_internal.exit34.thread
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !278 ; 2 uses
  %.not.i38 = icmp eq ptr %i.ae, null
  br i1 %.not.i38, label %update_const_tbl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_id_table_foreach_values(ptr noundef nonnull %i.ae, ptr noundef nonnull @update_const_tbl_i, ptr noundef %i.b) #46
  br label %update_const_tbl.exit

update_const_tbl.exit:                            ; preds = %bb.d, %bb.c, %gc_object_moved_p_internal.exit34.thread
  %i.af = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !557 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = and i64 %i.ag, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = or i1 %i.ah, %i.aj
  br i1 %i.ak, label %gc_object_moved_p_internal.exit40.thread, label %gc_object_moved_p_internal.exit40

gc_object_moved_p_internal.exit40:                ; preds = %update_const_tbl.exit
  %i.al = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !109
  %i.an = and i64 %i.am, 31
  %i.ao = icmp eq i64 %i.an, 30
  br i1 %i.ao, label %gc_location_internal.exit43, label %gc_object_moved_p_internal.exit40.thread

gc_location_internal.exit43:                      ; preds = %gc_object_moved_p_internal.exit40
  %i.ap = getelementptr i8, ptr %i.al, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !286
  store i64 %i.aq, ptr %i.af, align 8, !tbaa !59
  br label %gc_object_moved_p_internal.exit40.thread

gc_object_moved_p_internal.exit40.thread:         ; preds = %update_const_tbl.exit, %gc_location_internal.exit43, %gc_object_moved_p_internal.exit40
  %i.ar = getelementptr i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !277 ; 2 uses
  %.not.i44 = icmp eq ptr %i.as, null
  br i1 %.not.i44, label %update_cvc_tbl.exit, label %bb.e

bb.e:                                             ; preds = %gc_object_moved_p_internal.exit40.thread
end_hunk_4
