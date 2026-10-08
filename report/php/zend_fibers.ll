Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_fibers?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0_@zend_fiber_switch_context:bb.a
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 424), align 8, !tbaa !72
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 528), align 8, !tbaa !73
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75
  %i.m = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 592), align 8, !tbaa !76
  store i32 1, ptr %i.c, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !58
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.b, label %bb.c, !prof !77

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.n, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !63
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1768), align 8, !tbaa !66
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.r = tail call { ptr, ptr } @jump_fcontext(ptr noundef %i.q, ptr noundef nonnull %0) #21 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !tbaa.struct !61
  %i.u = load ptr, ptr %0, align 8, !tbaa !63     ; 6 uses
  store ptr %i.s, ptr %i.u, align 8, !tbaa !56
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1768), align 8, !tbaa !66
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 496), align 8, !tbaa !68
  store <2 x ptr> %i.f, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !69
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 504), align 8, !tbaa !70
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !71
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 424), align 8, !tbaa !72
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 528), align 8, !tbaa !73
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75
  store <2 x ptr> %i.m, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 592), align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  tail call void @zend_observer_fiber_destroy_notify(ptr noundef nonnull %i.u) #21
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.z(ptr noundef nonnull %i.u) #21, !inline_history !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 3 uses
  %i.ac = load i64, ptr @zend_fiber_get_page_size.page_size, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %zend_fiber_destroy_context.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i64 @zend_get_page_size() #21 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ad)
  %or.cond.i.i.i = icmp eq i64 %i.ae, 1
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i64 %i.ad, i64 4096 ; 2 uses
  store i64 %spec.store.select.i.i.i, ptr @zend_fiber_get_page_size.page_size, align 8, !tbaa !52
  br label %zend_fiber_destroy_context.exit

zend_fiber_destroy_context.exit:                  ; preds = %bb.f, %bb.g
  %i.af = phi i64 [ %spec.store.select.i.i.i, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !49
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.af
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !50
  %i.am = add i64 %i.al, %i.af
  %i.an = tail call i32 @munmap(ptr noundef %i.aj, i64 noundef %i.am) #21 ; 0 uses
  tail call void @_efree(ptr noundef nonnull %i.ab) #21
  br label %bb.h

bb.h:                                             ; preds = %zend_fiber_destroy_context.exit, %bb.c
  ret void
}

declare void @zend_observer_fiber_switch_notify(ptr noundef, ptr noundef) local_unnamed_addr #8

declare { ptr, ptr } @jump_fcontext(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_fiber_start(ptr noundef initializes((96, 104)) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct._zend_fiber_transfer, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr @zend_ce_fiber, align 8, !tbaa !78
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1784), align 8, !tbaa !79
  %i.d = tail call i32 @zend_fiber_init_context(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef nonnull @zend_fiber_execute, i64 noundef %i.c)
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.a, ptr %i.f, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75, !noalias !118 ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %zend_fiber_resume_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !71, !noalias !118
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  store ptr %i.h, ptr %i.i, align 8, !tbaa !87, !noalias !118
  br label %zend_fiber_resume_internal.exit

zend_fiber_resume_internal.exit:                  ; preds = %bb.b, %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1768), align 8, !tbaa !66, !noalias !118
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.j, ptr %i.k, align 8, !tbaa !88, !noalias !118
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75, !noalias !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  store ptr %i.a, ptr %2, align 8, !tbaa !63, !alias.scope !119
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !60, !alias.scope !119
  call void @zend_fiber_switch_context(ptr noundef nonnull align 8 %2)
  %i.o = load i8, ptr %i.m, align 8, !tbaa !89, !alias.scope !119 ; 2 uses
  %i.p = and i8 %i.o, 2
  %.not12.i = icmp eq i8 %i.p, 0
  br i1 %.not12.i, label %zend_fiber_switch_to.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %zend_fiber_resume_internal.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75, !noalias !119
  call void @_zend_bailout(ptr noundef nonnull @.str.25, i32 noundef 674) #23
  unreachable

zend_fiber_switch_to.exit:                        ; preds = %zend_fiber_resume_internal.exit
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75, !noalias !118
  %i.q = and i8 %i.o, 1
  %.not.i6 = icmp eq i8 %i.q, 0
  br i1 %.not.i6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %zend_fiber_switch_to.exit
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !60
  call void @zend_throw_exception_internal(ptr noundef %i.r) #21
  br label %zend_fiber_delegate_transfer_result.exit

bb.f:                                             ; preds = %zend_fiber_switch_to.exit
  %.not11.i = icmp eq ptr %1, null
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.t = load i32, ptr %i.n, align 8, !tbaa !60
  store ptr %i.s, ptr %1, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !60
  br label %zend_fiber_delegate_transfer_result.exit

bb.h:                                             ; preds = %bb.f
  call void @zval_ptr_dtor(ptr noundef nonnull %i.l) #21
  br label %zend_fiber_delegate_transfer_result.exit

zend_fiber_delegate_transfer_result.exit:         ; preds = %bb.e, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %zend_fiber_delegate_transfer_result.exit
  %.0 = phi i32 [ 0, %zend_fiber_delegate_transfer_result.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @zend_fiber_execute(ptr nofree noundef captures(none) initializes((0, 8)) %0) #10 {
bb.a:
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75 ; 14 uses
  %i.c = call i64 @zend_ini_long(ptr noundef nonnull @.str.22, i64 noundef 15, i32 noundef 0) #21 ; 2 uses
  %.not39 = icmp eq i64 %i.c, 0
  br i1 %.not39, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @zend_ini_string_ex(ptr noundef nonnull @.str.22, i64 noundef 15, i32 noundef 0, ptr noundef null) #21
  %.not40 = icmp eq ptr %i.d, null
  %spec.select = select i1 %.not40, i64 30719, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.c, %bb.a ], [ %spec.select, %bb.b ]
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 496), align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  %i.e = call i32 @__sigsetjmp(ptr noundef nonnull %1, i32 noundef 0) #24
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = call noalias dereferenceable_or_null(16384) ptr @_emalloc_large(i64 noundef 16384) #25 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 5 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16384 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !123
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 496), align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !124
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 488), align 8, !tbaa !125
  store i64 16384, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 504), align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr %i.h, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store ptr %i.h, ptr %i.n, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @zend_fiber_function, ptr %i.o, align 8, !tbaa !92
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr %i.p, ptr %i.q, align 8, !tbaa !93
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 528), align 8, !tbaa !73
  %i.r = trunc i64 %.0 to i32
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 424), align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !126  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !50
  %i.y = add i64 %i.x, %i.v
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 592), align 8, !tbaa !127
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1848), align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !129
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ag = call i32 @zend_call_function(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af) #21 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @zval_ptr_dtor(ptr noundef nonnull %i.ah) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i32 0, ptr %i.ai, align 8, !tbaa !60
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !94 ; 3 uses
  %.not41 = icmp eq ptr %i.aj, null
  br i1 %.not41, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !95  ; 2 uses
  %i.am = and i8 %i.al, 4
  %.not42 = icmp eq i8 %i.am, 0
  br i1 %.not42, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = call zeroext i1 @zend_is_graceful_exit(ptr noundef nonnull %i.aj) #21
  br i1 %i.an, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !94
  %i.ap = call zeroext i1 @zend_is_unwind_exit(ptr noundef %i.ao) #21
  br i1 %i.ap, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i8, ptr %i.ak, align 8, !tbaa !95
  %.pre43 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %i.aq = phi ptr [ %.pre43, %._crit_edge ], [ %i.aj, %bb.e ] ; 3 uses
  %i.ar = phi i8 [ %.pre, %._crit_edge ], [ %i.al, %bb.e ]
  %i.as = or i8 %i.ar, 1
  store i8 %i.as, ptr %i.ak, align 8, !tbaa !95
  store i8 1, ptr %i.a, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !96
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.aq, align 4, !tbaa !96
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 776, ptr %i.aw, align 8, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  call void @zend_clear_exception() #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  %i.ay = icmp eq ptr %i.ax, %1
  call void @llvm.assume(i1 %i.ay)
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  %i.ba = icmp eq ptr %i.az, %1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !95
  %i.bd = or i8 %i.bc, 2
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !95
  store i8 2, ptr %i.a, align 8, !tbaa !89
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @zend_fiber_cleanup, ptr %i.be, align 8, !tbaa !130
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 496), align 8, !tbaa !68
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !97
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !88
  store ptr %i.bi, ptr %0, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_fiber_resume(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct._zend_fiber_transfer, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !71 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.b, ptr %i.e, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75, !noalias !135 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %zend_fiber_resume_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  store ptr %i.b, ptr %i.g, align 8, !tbaa !87, !noalias !135
  br label %zend_fiber_resume_internal.exit

zend_fiber_resume_internal.exit:                  ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1768), align 8, !tbaa !66, !noalias !135
  store ptr %i.h, ptr %i.a, align 8, !tbaa !88, !noalias !135
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75, !noalias !135
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86, !noalias !135
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  store ptr %i.j, ptr %3, align 8, !tbaa !63, !alias.scope !136
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.not.i7 = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not.i7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %zend_fiber_resume_internal.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !60, !noalias !136 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !60, !noalias !136 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !60, !alias.scope !136
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.o, ptr %i.p, align 8, !tbaa !60, !alias.scope !136
  %i.q = and i32 %i.o, 65280
  %.not11.i8 = icmp eq i32 %i.q, 0
  br i1 %.not11.i8, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.m, align 4, !tbaa !96, !noalias !136
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.m, align 4, !tbaa !96, !noalias !136
  br label %bb.f

bb.e:                                             ; preds = %zend_fiber_resume_internal.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.t, align 8, !tbaa !60, !alias.scope !136
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @zend_fiber_switch_context(ptr noundef nonnull align 8 %3)
  %i.u = load i8, ptr %i.l, align 8, !tbaa !89, !alias.scope !136 ; 2 uses
  %i.v = and i8 %i.u, 2
  %.not12.i = icmp eq i8 %i.v, 0
  br i1 %.not12.i, label %zend_fiber_switch_to.exit, label %bb.g, !prof !77

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75, !noalias !136
  call void @_zend_bailout(ptr noundef nonnull @.str.25, i32 noundef 674) #23
  unreachable

zend_fiber_switch_to.exit:                        ; preds = %bb.f
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1776), align 8, !tbaa !75, !noalias !135
  %i.w = and i8 %i.u, 1
  %.not.i6 = icmp eq i8 %i.w, 0
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %zend_fiber_switch_to.exit
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !60
  call void @zend_throw_exception_internal(ptr noundef %i.x) #21
  br label %zend_fiber_delegate_transfer_result.exit

bb.i:                                             ; preds = %zend_fiber_switch_to.exit
  %.not11.i = icmp eq ptr %2, null
  br i1 %.not11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !60
  store ptr %i.y, ptr %2, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !60
  br label %zend_fiber_delegate_transfer_result.exit

bb.k:                                             ; preds = %bb.i
  call void @zval_ptr_dtor(ptr noundef nonnull %i.k) #21
  br label %zend_fiber_delegate_transfer_result.exit

zend_fiber_delegate_transfer_result.exit:         ; preds = %bb.h, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}
end_hunk_0
