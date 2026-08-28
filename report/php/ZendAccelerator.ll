Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ZendAccelerator?download=true
inline.NumInlined: 94
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@accel_startup:bb.a
  br i1 %i.ag, label %accel_sapi_is_cli.exit.thread, label %accel_sapi_is_cli.exit

accel_sapi_is_cli.exit:                           ; preds = %bb.k
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(7) @.str.59) #31
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %accel_sapi_is_cli.exit.thread, label %bb.l

accel_sapi_is_cli.exit.thread:                    ; preds = %bb.k, %accel_sapi_is_cli.exit
  store i8 0, ptr @accel_startup_ok, align 1, !tbaa !58
  store ptr @.str.46, ptr @zps_api_failure_reason, align 8, !tbaa !47
  tail call void @zend_llist_del_element(ptr noundef nonnull @zend_extensions, ptr noundef null, ptr noundef nonnull @accelerator_remove_cb) #28
  br label %bb.n

bb.l:                                             ; preds = %accel_sapi_is_cli.exit, %bb.j
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 1), align 1, !tbaa !255, !range !43, !noundef !44
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr @zend_post_startup_cb, align 8, !tbaa !45
  store ptr %i.al, ptr @orig_post_startup_cb, align 8, !tbaa !45
  store ptr @accel_post_startup, ptr @zend_post_startup_cb, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.am, align 8, !tbaa !309
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %accel_sapi_is_cli.exit.thread
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal void @accel_activate() #16 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 368), align 8, !tbaa !275 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 376), align 8, !tbaa !311
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.a, i8 0, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @zend_jit_init() local_unnamed_addr #2

declare void @zend_accel_register_ini_entries() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @accelerator_remove_cb(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !312
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(13) @.str.36) #31
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.e, align 8, !tbaa !314
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @accel_post_startup() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %0 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = load ptr, ptr @orig_post_startup_cb, align 8, !tbaa !45 ; 2 uses
  %.not44 = icmp eq ptr %i.b, null
  br i1 %.not44, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr @orig_post_startup_cb, align 8, !tbaa !45
  %i.c = tail call i32 %i.b() #28
  %.not45 = icmp eq i32 %i.c, 0
  br i1 %.not45, label %bb.c, label %bb.cg

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 161), align 1, !tbaa !315, !range !43, !noundef !44 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  store i8 %i.d, ptr @file_cache_only, align 1, !tbaa !58
  br i1 %i.e, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 8), align 8, !tbaa !23 ; 3 uses
  %i.g = load i8, ptr @jit_globals, align 8, !tbaa !316, !range !43, !noundef !44
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 16), align 8
  %i.j = icmp ne i64 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @zend_jit_check_support() #28
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i64 @zend_get_page_size() #28  ; 3 uses
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.m)
  %or.cond58 = icmp eq i64 %i.n, 1
  br i1 %or.cond58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @zend_accel_error_noreturn(i32 noundef 0, ptr noundef nonnull @.str.60) #33
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = add i64 %i.m, -1
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 16), align 8, !tbaa !321
  %i.q = add i64 %i.o, %i.p
  %i.r = sub i64 0, %i.m
  %i.s = and i64 %i.q, %i.r                       ; 2 uses
  %i.t = add i64 %i.s, %i.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d
  %.034 = phi i64 [ %i.t, %bb.h ], [ %i.f, %bb.e ], [ %i.f, %bb.d ]
  %.033 = phi i64 [ %i.s, %bb.h ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.u = tail call i32 @zend_shared_alloc_startup(i64 noundef %.034, i64 noundef %.033) #28
  switch i32 %i.u, label %bb.r [
    i32 1, label %bb.j
    i32 0, label %bb.o
    i32 10, label %bb.z
    i32 4, label %bb.p
    i32 2, label %bb.q
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @zend_shared_alloc_lock() #28
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 128), align 8, !tbaa !262 ; 2 uses
  %.not.i62 = icmp eq i64 %i.v, 0
  %i.w = shl nsw i64 %i.v, 20
  %i.x = or disjoint i64 %i.w, 216
  %.017.i = select i1 %.not.i62, i64 220, i64 %i.x ; 2 uses
  %i.y = tail call ptr @zend_shared_alloc(i64 noundef %.017.i) #28 ; 5 uses
  store ptr %i.y, ptr @accel_shared_globals, align 8, !tbaa !34
  %.not21.i = icmp eq ptr %i.y, null
  br i1 %.not21.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @zend_shared_alloc_unlock() #28
  tail call void (i32, ptr, ...) @zend_accel_error_noreturn(i32 noundef 0, ptr noundef nonnull @.str.72, i64 noundef %.017.i) #33
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.y, i8 0, i64 216, i1 false)
  %i.z = load ptr, ptr @smm_shared_globals, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !322
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 16), align 8, !tbaa !323
  %i.ad = trunc i64 %i.ac to i32
  tail call void @zend_accel_hash_init(ptr noundef nonnull %i.ab, i32 noundef %i.ad) #28
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 128), align 8, !tbaa !262 ; 3 uses
  %.not22.i = icmp eq i64 %i.ae, 0
  br i1 %.not22.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.tr.i = trunc i64 %i.ae to i32
  %i.af = shl i32 %.tr.i, 15                      ; 2 uses
  %i.ag = lshr exact i32 %i.af, 1
  %i.ah = or i32 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr exact i32 %i.ah, 2
  %i.aj = or i32 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr exact i32 %i.aj, 4
  %i.al = or i32 %i.ak, %i.aj                     ; 2 uses
  %i.am = lshr i32 %i.al, 8
  %i.an = or i32 %i.am, %i.al                     ; 2 uses
  %i.ao = lshr i32 %i.an, 16
  %i.ap = or i32 %i.ao, %i.an                     ; 2 uses
  %i.aq = shl i32 %i.ap, 2
  %i.ar = load ptr, ptr @accel_shared_globals, align 8, !tbaa !34 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 180
  store i32 0, ptr %i.at, align 4, !tbaa !70
  %i.au = add i32 %i.ap, 1
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 472 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 184
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !60
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ax, i64 8) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 216 ; 2 uses
  %i.bc = shl nsw i64 %i.ae, 20                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !69
  %gepdiff.i = or disjoint i64 %i.bc, 40
  %i.bf = icmp ult i64 %gepdiff.i, 34359738360
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  store ptr null, ptr %i.bg, align 8, !tbaa !270
  %gepdiff23.i = add nuw nsw i64 %i.aw, 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i8 0, i64 %gepdiff23.i, i1 false)
  br label %zend_accel_init_shm.exit

bb.n:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr @accel_shared_globals, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  store i32 0, ptr %i.bi, align 1, !tbaa !65
  br label %zend_accel_init_shm.exit

zend_accel_init_shm.exit:                         ; preds = %bb.m, %bb.n
  tail call void @zend_interned_strings_set_request_storage_handlers(ptr noundef nonnull @accel_new_interned_string_for_php, ptr noundef nonnull @accel_init_interned_string_for_php, ptr noundef nonnull @accel_init_interned_string_for_php) #28
  %i.bj = load ptr, ptr @smm_shared_globals, align 8, !tbaa !12 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i8 0, ptr %i.bk, align 8, !tbaa !169
  %i.bl = load ptr, ptr @accel_shared_globals, align 8, !tbaa !34 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  store i64 0, ptr %i.bm, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 121
  store i8 0, ptr %i.bn, align 1, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store i64 0, ptr %i.bo, align 8, !tbaa !56
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !259
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !260
  %i.br = load i64, ptr @zend_map_ptr_static_last, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !261
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.bu, align 8, !tbaa !53
  %i.bv = tail call i64 @time(ptr noundef null) #28
  %i.bw = load ptr, ptr @accel_shared_globals, align 8, !tbaa !34 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !324
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  store i64 0, ptr %i.by, align 8, !tbaa !264
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 129
  store i8 0, ptr %i.bz, align 1, !tbaa !177
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 152
  store i64 -1, ptr %i.ca, align 8
  br label %.sink.split

bb.o:                                             ; preds = %bb.i
  store i8 0, ptr @accel_startup_ok, align 1, !tbaa !58
  tail call void (i32, ptr, ...) @zend_accel_error_noreturn(i32 noundef 0, ptr noundef nonnull @.str.61) #33
  unreachable

bb.p:                                             ; preds = %bb.i
  tail call void @zend_shared_alloc_lock() #28
  %i.cb = load ptr, ptr @smm_shared_globals, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !322
  store ptr %i.cd, ptr @accel_shared_globals, align 8, !tbaa !34
  tail call void @zend_interned_strings_set_request_storage_handlers(ptr noundef nonnull @accel_new_interned_string_for_php, ptr noundef nonnull @accel_init_interned_string_for_php, ptr noundef nonnull @accel_init_interned_string_for_php) #28
  br label %.sink.split

bb.q:                                             ; preds = %bb.i
  store i8 0, ptr @accel_startup_ok, align 1, !tbaa !58
  tail call void (i32, ptr, ...) @zend_accel_error_noreturn(i32 noundef 0, ptr noundef nonnull @.str.64) #33
  unreachable

.sink.split:                                      ; preds = %bb.p, %zend_accel_init_shm.exit
  %.032.ph = phi i1 [ true, %bb.p ], [ false, %zend_accel_init_shm.exit ]
  tail call void @zend_shared_alloc_unlock() #28
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.i
  %.032 = phi i1 [ false, %bb.i ], [ %.032.ph, %.sink.split ]
  %i.ce = load ptr, ptr @accel_shared_globals, align 8, !tbaa !34
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !264
  store i64 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 296), align 8, !tbaa !265
  tail call void @zend_shared_alloc_lock() #28
  %i.ch = load i8, ptr @jit_globals, align 8, !tbaa !316, !range !43, !noundef !44
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cj = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 16), align 8, !tbaa !321
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr @jit_globals, align 8, !tbaa !316
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !325
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr @smm_shared_globals, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !326 ; 2 uses
  %.not48 = icmp eq ptr %i.cn, null
  br i1 %.not48, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (i32, ptr, ...) @zend_accel_error_noreturn(i32 noundef 0, ptr noundef nonnull @.str.65) #33
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @zend_jit_startup(ptr noundef nonnull %i.cn, i64 noundef %.033, i1 noundef zeroext %.032) #28
  store i8 1, ptr @zend_jit_startup_ok, align 1, !tbaa !58
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.r
  tail call void @zend_shared_alloc_save_state() #28
  tail call void @zend_shared_alloc_unlock() #28
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 54), align 2, !tbaa !51, !range !43, !noundef !44
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  tail call void @zend_accel_shared_protect(i1 noundef zeroext true) #28
  br label %.thread

bb.z:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 3, ptr noundef nonnull @.str.62) #28
  store i8 0, ptr @accel_startup_ok, align 1, !tbaa !58
  store ptr @.str.63, ptr @zps_api_failure_reason, align 8, !tbaa !47
  tail call void @zend_llist_del_element(ptr noundef nonnull @zend_extensions, ptr noundef null, ptr noundef nonnull @accelerator_remove_cb) #28
  br label %bb.cg

bb.aa:                                            ; preds = %bb.c
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 152), align 8, !tbaa !166
  %.not49 = icmp eq ptr %i.cq, null
  br i1 %.not49, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr @accel_startup_ok, align 1, !tbaa !58
  tail call void (i32, ptr, ...) @zend_accel_error_noreturn(i32 noundef 0, ptr noundef nonnull @.str.66) #33
  unreachable

bb.ac:                                            ; preds = %bb.aa
  store i8 0, ptr @jit_globals, align 8, !tbaa !316
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !325
  %i.cr = tail call noalias dereferenceable_or_null(216) ptr @calloc(i64 noundef 1, i64 noundef 216) #34
  store ptr %i.cr, ptr @accel_shared_globals, align 8, !tbaa !34
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.y, %bb.ac
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 160), align 8, !tbaa !327, !range !43, !noundef !44
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.thread
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 3, ptr noundef nonnull @.str.67) #28
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 152), align 8, !tbaa !166
  %.not50 = icmp eq ptr %i.cu, null
  br i1 %.not50, label %bb.ae, label %.thread67

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr @accel_startup_ok, align 1, !tbaa !58
  tail call void (i32, ptr, ...) @zend_accel_error_noreturn(i32 noundef 0, ptr noundef nonnull @.str.68) #33
  unreachable

bb.af:                                            ; preds = %.thread
  %.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 152), align 8, !tbaa !166
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %bb.al, label %.thread67

.thread67:                                        ; preds = %bb.ad, %bb.af
  %.070 = phi i32 [ 7, %bb.af ], [ 5, %bb.ad ]
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 3, ptr noundef nonnull @.str.69, ptr noundef nonnull @zend_system_id) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 152), align 8, !tbaa !166 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !72
  %i.cx = icmp eq i8 %i.cw, 47
  br i1 %i.cx, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.thread67
  %i.cy = call i32 @stat(ptr noundef nonnull %i.cv, ptr noundef nonnull %0) #28
  %.not52 = icmp eq i32 %i.cy, 0
  br i1 %.not52, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !328
  %i.db = and i32 %i.da, 61440
  %i.dc = icmp eq i32 %i.db, 16384
  br i1 %i.dc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 152), align 8, !tbaa !166
  %i.de = tail call i32 @access(ptr noundef %i.dd, i32 noundef %.070) #28
  %.not53 = icmp eq i32 %i.de, 0
  br i1 %.not53, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %.thread67
  store i8 0, ptr @accel_startup_ok, align 1, !tbaa !58
  tail call void (i32, ptr, ...) @zend_accel_error_noreturn(i32 noundef 0, ptr noundef nonnull @.str.70) #33
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #28
end_hunk_0
