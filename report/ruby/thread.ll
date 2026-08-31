Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/thread?download=true
inline.NumInlined: 1399
inline.NumDeleted: 321
begin_hunk_0_@native_thread_init_stack:bb.a

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.m = load i64, ptr %i.d, align 8, !tbaa !144
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %i.c, align 8, !tbaa !52
  %i.o = call i32 @pthread_attr_getguardsize(ptr noundef nonnull %3, ptr noundef nonnull %i.b) #17
  %.not23.i.i = icmp eq i32 %i.o, 0
  br i1 %.not23.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.b, align 8, !tbaa !144
  %i.q = load i64, ptr %i.d, align 8, !tbaa !144
  %i.r = sub i64 %i.q, %i.p
  store i64 %i.r, ptr %i.d, align 8, !tbaa !144
  %i.s = call i32 @pthread_attr_destroy(ptr noundef nonnull %3) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.t = load i64, ptr %i.d, align 8, !tbaa !144  ; 2 uses
  store i64 %i.t, ptr @native_main_thread.1, align 8, !tbaa !242
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  store ptr %i.u, ptr @native_main_thread.2, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.v = load ptr, ptr @__libc_stack_end, align 8, !tbaa !52
  store ptr %i.v, ptr @native_main_thread.2, align 8, !tbaa !243
  %i.w = tail call i32 @getpagesize() #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.x = call i32 @getrlimit(i32 noundef 3, ptr noundef nonnull %4) #17
  %i.y = icmp eq i32 %i.x, 0
  %i.z = load i64, ptr %4, align 8
  %spec.select.i = select i1 %i.y, i64 %i.z, i64 1048576
  %i.aa = load ptr, ptr @native_main_thread.2, align 8, !tbaa !243 ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 0, %spec.select.i
  %i.ad = getelementptr i8, ptr %i.aa, i64 %i.ac
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sext i32 %i.w to i64                    ; 2 uses
  %i.ag = udiv i64 %i.ae, %i.af
  %.neg.i = xor i64 %i.ag, -1
  %.neg13.i = mul i64 %.neg.i, %i.af
  %i.ah = add i64 %.neg13.i, %i.ab                ; 2 uses
  store i64 %i.ah, ptr @native_main_thread.1, align 8, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi i64 [ %i.ah, %bb.g ], [ %i.t, %bb.f ]
  %i.aj = phi ptr [ %i.aa, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  %.012.i = phi ptr [ %i.aa, %bb.g ], [ %1, %bb.f ] ; 3 uses
  %i.ak = sub i64 0, %i.ai
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  %i.am = icmp ult ptr %.012.i, %i.al
  %i.an = icmp ugt ptr %.012.i, %i.aj
  %or.cond.i = or i1 %i.an, %i.am
  br i1 %or.cond.i, label %bb.i, label %native_thread_init_main_thread_stack.exit

bb.i:                                             ; preds = %bb.h
  store ptr %.012.i, ptr @native_main_thread.2, align 8, !tbaa !243
  store i64 0, ptr @native_main_thread.1, align 8, !tbaa !242
  br label %native_thread_init_main_thread_stack.exit

native_thread_init_main_thread_stack.exit:        ; preds = %bb.i, %bb.h, %bb.b, %bb.a
  %i.ao = load i64, ptr @native_main_thread.0, align 8, !tbaa !240
  %.not12 = icmp eq i64 %i.g, %i.ao
  br i1 %.not12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %native_thread_init_main_thread_stack.exit
  %i.ap = load ptr, ptr @native_main_thread.2, align 8, !tbaa !243
  %i.aq = getelementptr i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !67 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 176
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !244
  %i.at = load i64, ptr @native_main_thread.1, align 8, !tbaa !242
  %i.au = getelementptr i8, ptr %i.ar, i64 192
  store i64 %i.at, ptr %i.au, align 8, !tbaa !245
  br label %bb.q

bb.k:                                             ; preds = %native_thread_init_main_thread_stack.exit
  %i.av = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.av, align 8, !tbaa !64
  %i.aw = getelementptr i8, ptr %.val, i64 104
  %.val.val = load i32, ptr %i.aw, align 8, !tbaa !65
  %i.ax = icmp sgt i32 %.val.val, 0
  br i1 %i.ax, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !144
  %i.ay = call i32 @pthread_getattr_np(i64 noundef %i.g, ptr noundef nonnull %2) #17
  %.not.i10 = icmp eq i32 %i.ay, 0
  br i1 %.not.i10, label %bb.m, label %get_stack.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.az = call i32 @pthread_attr_getstack(ptr noundef nonnull %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #17
  %.not22.i = icmp eq i32 %i.az, 0
  br i1 %.not22.i, label %bb.n, label %get_stack.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !144
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !52
  %i.bd = call i32 @pthread_attr_getguardsize(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #17
  %.not23.i = icmp eq i32 %i.bd, 0
  br i1 %.not23.i, label %bb.o, label %get_stack.exit.thread

get_stack.exit.thread:                            ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = load i64, ptr %i.a, align 8, !tbaa !144
  %i.bf = load i64, ptr %i.f, align 8, !tbaa !144
  %i.bg = sub i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.f, align 8, !tbaa !144
  %i.bh = call i32 @pthread_attr_destroy(ptr noundef nonnull %2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %1 to i64
  %.neg = sub i64 %i.bk, %i.bj
  %i.bl = getelementptr i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 176
  store ptr %1, ptr %i.bn, align 8, !tbaa !244
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !144
  %i.bp = add i64 %.neg, %i.bo
  %i.bq = getelementptr i8, ptr %i.bm, i64 192
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !245
  br label %bb.p

bb.p:                                             ; preds = %get_stack.exit.thread, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p, %bb.j
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_vm_proc_local_ep(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.b, %bb.a
  %.tr.i = phi i64 [ %0, %bb.a ], [ %i.e, %bb.b ]
  %i.a = inttoptr i64 %.tr.i to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val.i.i = load i32, ptr %i.d, align 8, !tbaa !246
  switch i32 %.val.i.i, label %bb.c [
    i32 0, label %vm_proc_ep.exit
    i32 1, label %vm_proc_ep.exit
    i32 3, label %bb.b
    i32 2, label %vm_proc_ep.exit.thread
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !48
  br label %tailrecurse.i

bb.c:                                             ; preds = %tailrecurse.i
  unreachable

vm_proc_ep.exit:                                  ; preds = %tailrecurse.i, %tailrecurse.i
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %vm_proc_ep.exit.thread, label %bb.d

bb.d:                                             ; preds = %vm_proc_ep.exit
  %i.h = tail call ptr @rb_vm_ep_local_ep(ptr noundef nonnull %i.g) #17
  br label %vm_proc_ep.exit.thread

vm_proc_ep.exit.thread:                           ; preds = %tailrecurse.i, %vm_proc_ep.exit, %bb.d
  %.0 = phi ptr [ %i.h, %bb.d ], [ null, %vm_proc_ep.exit ], [ null, %tailrecurse.i ]
  ret ptr %.0
}

declare ptr @rb_vm_ep_local_ep(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_thread_create(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.thread_create_params, align 8 ; 8 uses
  %3 = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 3, ptr %2, align 8, !tbaa !248
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %3, ptr %i.b, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.d, align 8, !tbaa !251
  %i.e = load i64, ptr @rb_cThread, align 8, !tbaa !144
  %i.f = tail call i64 @rb_thread_alloc(i64 noundef %i.e) #17 ; 2 uses
  %i.g = call fastcc i64 @thread_create_core(i64 noundef %i.f, ptr noundef %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @thread_create_core(i64 noundef returned %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ruby_threadptr_data_type) #17 ; 36 uses
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val = load ptr, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %i.f = load i32, ptr @specific_key_count, align 4, !tbaa !7
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %thread_specific_storage_alloc.exit, !prof !139

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias nonnull dereferenceable(64) ptr @ruby_xcalloc(i64 noundef 8, i64 noundef 8) #49
  %i.i = getelementptr i8, ptr %i.d, i64 456
  store ptr %i.h, ptr %i.i, align 8, !tbaa !252
  br label %thread_specific_storage_alloc.exit

thread_specific_storage_alloc.exit:               ; preds = %bb.a, %bb.b
  %i.j = getelementptr i8, ptr %.val, i64 264     ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !253  ; 3 uses
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i64 %i.k, 7
  %i.n = icmp eq i64 %i.m, 0
  %.not3.i = and i1 %i.l, %i.n
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit:                               ; preds = %thread_specific_storage_alloc.exit
  %i.o = inttoptr i64 %i.k to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = and i64 %i.p, 2048
  %.not62 = icmp eq i64 %i.q, 0
  br i1 %.not62, label %bb.c, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %thread_specific_storage_alloc.exit, %RB_OBJ_FROZEN.exit
  %i.r = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.190) #41
  unreachable

bb.c:                                             ; preds = %RB_OBJ_FROZEN.exit
  %i.s = getelementptr i8, ptr %i.d, i64 48       ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !190
  %i.w = tail call i64 @rb_fiber_inherit_storage(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %i.v) #17 ; 0 uses
  %i.x = load i32, ptr %1, align 8, !tbaa !248
  switch i32 %i.x, label %bb.j [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.d, i64 416
  store i32 1, ptr %i.y, align 8, !tbaa !254
  %i.z = getelementptr i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !250
  %i.ab = getelementptr i8, ptr %i.d, i64 392
  %i.ac = getelementptr i8, ptr %i.d, i64 400
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !48
  %i.ad = getelementptr i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !255
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !48
  %i.af = tail call i32 @rb_keyword_given_p() #17
  %i.ag = getelementptr i8, ptr %i.d, i64 408
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !48
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr i8, ptr %i.d, i64 416
  store i32 2, ptr %i.ah, align 8, !tbaa !254
  %i.ai = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !256 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.d, i64 24
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !56
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val51 = load i32, ptr %i.al, align 8, !tbaa !257
  %i.am = zext i32 %.val51 to i64
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.ao = getelementptr i8, ptr %i.an, i64 64
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !258
  %i.ap = getelementptr i8, ptr %i.aj, i64 320
  store ptr %i.d, ptr %i.ap, align 8, !tbaa !230
  %i.aq = getelementptr i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !255
  %i.as = tail call i64 @rb_proc_isolate_bang(i64 noundef %i.ar, i64 noundef 4) #17
  %i.at = getelementptr i8, ptr %i.d, i64 392
  store i64 %i.as, ptr %i.at, align 8, !tbaa !48
  %i.au = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !250
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !46 ; 2 uses
  %i.ay = and i64 %i.ax, 8192
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = lshr i64 %i.ax, 15
  %i.ba = and i64 %i.az, 127
  br label %rb_array_len.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bb = getelementptr i8, ptr %i.aw, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !48
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.ba, %bb.f ], [ %i.bc, %bb.g ] ; 3 uses
  %i.bd = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.bd, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.h

bb.h:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #48
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.be = shl nsw i64 %.0.i.i, 1
  %i.bf = or disjoint i64 %i.be, 1
  %i.bg = getelementptr i8, ptr %i.d, i64 400
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !48
  %i.bh = tail call i32 @rb_keyword_given_p() #17
  %i.bi = getelementptr i8, ptr %i.d, i64 408
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !48
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !256
  %i.bk = load i64, ptr %i.au, align 8, !tbaa !250
  tail call void @rb_ractor_send_parameters(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %i.bj, i64 noundef %i.bk) #17
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.bl = getelementptr i8, ptr %i.d, i64 416
  store i32 3, ptr %i.bl, align 8, !tbaa !254
  %i.bm = getelementptr i8, ptr %1, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !251
  %i.bo = getelementptr i8, ptr %i.d, i64 392
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !48
  %i.bp = getelementptr i8, ptr %1, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !250
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr i8, ptr %i.d, i64 400
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !48
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.191) #48
  unreachable

bb.k:                                             ; preds = %bb.i, %RARRAY_LENINT.exit, %bb.d
  %i.bt = getelementptr i8, ptr %.val, i64 249
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !259
  %i.bv = getelementptr i8, ptr %i.d, i64 249
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !259
  %i.bw = load i64, ptr %i.j, align 8, !tbaa !253
  %i.bx = getelementptr i8, ptr %i.d, i64 264
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !253
  %i.by = tail call i64 @rb_ary_hidden_new(i64 noundef 0) #17
  %i.bz = getelementptr i8, ptr %i.d, i64 280
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !25
  %i.ca = getelementptr i8, ptr %i.d, i64 248     ; 6 uses
  %i.cb = load i8, ptr %i.ca, align 8
  %i.cc = and i8 %i.cb, -65
  store i8 %i.cc, ptr %i.ca, align 8
  %i.cd = getelementptr i8, ptr %.val, i64 288
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !260
  %i.cf = tail call i64 @rb_ary_dup(i64 noundef %i.ce) #17 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.d, i64 288
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !260
  %i.ch = inttoptr i64 %i.cf to ptr
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !144
  %i.cj = getelementptr i8, ptr %i.d, i64 296
  %i.ck = tail call i32 @pthread_mutex_init(ptr noundef %i.cj, ptr noundef null) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %rb_native_mutex_initialize.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.7, i32 noundef %i.ck) #41
  unreachable

rb_native_mutex_initialize.exit:                  ; preds = %bb.k
end_hunk_0
begin_hunk_1_@rb_threadptr_pending_interrupt_enque:bb.a
}

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_threadptr_execute_interrupts(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.thread_create_params, align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 144
  %i.g = load i8, ptr %i.f, align 8, !tbaa !76
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 248        ; 14 uses
  %i.j = getelementptr i8, ptr %0, i64 368        ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 296        ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = getelementptr i8, ptr %0, i64 280        ; 3 uses
  %.not85 = icmp eq i32 %1, 0
  %i.q = getelementptr i8, ptr %0, i64 288
  %i.r = getelementptr i8, ptr %0, i64 249
  %i.s = getelementptr i8, ptr %0, i64 252        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.bk
  %i.aa = phi ptr [ %.pre, %bb.bk ], [ %i.e, %.preheader ] ; 2 uses
  %.067 = phi i32 [ %.4, %bb.bk ], [ 0, %.preheader ] ; 5 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 32     ; 2 uses
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = getelementptr i8, ptr %i.aa, i64 36     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.ac, %bb.b ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.af = and i32 %i.ae, %.0.i
  %i.ag = cmpxchg volatile ptr %i.ab, i32 %.0.i, i32 %i.af seq_cst seq_cst, align 4 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 0
  %.not.i = extractvalue { i32, i1 } %i.ag, 1
  br i1 %.not.i, label %threadptr_get_interrupts.exit, label %bb.c, !llvm.loop !197

threadptr_get_interrupts.exit:                    ; preds = %bb.c
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.aj = xor i32 %i.ai, -1
  %i.ak = and i32 %.0.i, %i.aj                    ; 7 uses
  %.not76 = icmp eq i32 %i.ak, 0
  br i1 %.not76, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %threadptr_get_interrupts.exit
  %i.al = and i32 %i.ak, 1
  %i.am = and i32 %i.ak, 2
  %i.an = and i32 %i.ak, 4
  %i.ao = and i32 %i.ak, 8
  %i.ap = and i32 %i.ak, 16
  %i.aq = and i32 %i.ak, 32
  %.not77 = icmp eq i32 %i.aq, 0
  br i1 %.not77, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ar = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %rb_vm_lock_enter.exit, label %.split.us

rb_vm_lock_enter.exit:                            ; preds = %bb.e
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #17
  %.pre189 = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !146
  %i.as = icmp eq ptr %.pre189, null
  br i1 %i.as, label %bb.f, label %.split.us

.split.us:                                        ; preds = %bb.e, %bb.f, %rb_vm_lock_enter.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.g

bb.f:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #17
  br label %.split.us

bb.g:                                             ; preds = %.split.us, %bb.d
  %.not79 = icmp eq i32 %i.an, 0
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !57
  call void @rb_postponed_job_flush(ptr noundef %i.at) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not80 = icmp eq i32 %i.ao, 0
  br i1 %.not80, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.av = getelementptr i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !166
  %i.ax = icmp eq ptr %0, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load i8, ptr %i.i, align 8              ; 2 uses
  %i.az = and i8 %i.ay, 3
  %i.ba = and i8 %i.ay, -4
  store i8 %i.ba, ptr %i.i, align 8
  %i.bb = call i32 @rb_get_next_signal() #17      ; 2 uses
  %.not81147 = icmp eq i32 %i.bb, 0
  br i1 %.not81147, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.bc = phi i32 [ %i.bf, %.lr.ph ], [ %i.bb, %bb.k ]
  %.168148 = phi i32 [ %i.be, %.lr.ph ], [ %.067, %bb.k ]
  %i.bd = call i32 @rb_signal_exec(ptr noundef nonnull %0, i32 noundef %i.bc) #17
  %i.be = or i32 %i.bd, %.168148                  ; 2 uses
  %i.bf = call i32 @rb_get_next_signal() #17      ; 2 uses
  %.not81 = icmp eq i32 %i.bf, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph, !llvm.loop !304

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %.168.lcssa = phi i32 [ %.067, %bb.k ], [ %i.be, %.lr.ph ]
  %i.bg = load i8, ptr %i.i, align 8
  %i.bh = and i8 %i.bg, -4
  %i.bi = or disjoint i8 %i.bh, %i.az
  store i8 %i.bi, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %.2 = phi i32 [ %.168.lcssa, %._crit_edge ], [ %.067, %bb.j ] ; 2 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !58
  %.not105 = icmp eq ptr %i.bj, %i.j
  br i1 %.not105, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %i.i, align 8              ; 2 uses
  %i.bl = and i8 %i.bk, 3
  %i.bm = and i8 %i.bk, -4
  store i8 %i.bm, ptr %i.i, align 8
  %i.bn = call i32 @pthread_mutex_lock(ptr noundef %i.k) #17, !inline_history !305 ; 2 uses
  %.not.i26.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i26.i, label %rb_native_mutex_lock.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m, %bb.p
  %.lcssa.i = phi i32 [ %i.ch, %bb.p ], [ %i.bn, %bb.m ]
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %.lcssa.i) #41, !inline_history !305
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.m, %bb.p
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !58  ; 7 uses
  %.not.i12.i = icmp eq ptr %i.bo, %i.j
  br i1 %.not.i12.i, label %ccan_list_pop_.exit.thread.i, label %ccan_list_pop_.exit.i

ccan_list_pop_.exit.i:                            ; preds = %rb_native_mutex_lock.exit.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !73 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !72
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !73
  %i.bt = call i32 @pthread_mutex_unlock(ptr noundef %i.k) #17, !inline_history !305 ; 2 uses
  %.not.i13.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i13.i, label %rb_native_mutex_unlock.exit.i, label %.loopexit.i

ccan_list_pop_.exit.thread.i:                     ; preds = %rb_native_mutex_lock.exit.i
  %i.bu = call i32 @pthread_mutex_unlock(ptr noundef %i.k) #17, !inline_history !305 ; 2 uses
  %.not.i1315.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i1315.i, label %threadptr_interrupt_exec_exec.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %ccan_list_pop_.exit.thread.i, %ccan_list_pop_.exit.i
  %i.bv = phi i32 [ %i.bt, %ccan_list_pop_.exit.i ], [ %i.bu, %ccan_list_pop_.exit.thread.i ]
  call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.bv) #41, !inline_history !305
  unreachable

rb_native_mutex_unlock.exit.i:                    ; preds = %ccan_list_pop_.exit.i
  %i.bw = getelementptr i8, ptr %i.bo, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !306
  %i.by = and i32 %i.bx, 2
  %.not11.i = icmp eq i32 %i.by, 0
  %i.bz = getelementptr i8, ptr %i.bo, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !308 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bo, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !309 ; 2 uses
  br i1 %.not11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %rb_native_mutex_unlock.exit.i
  %4 = ptrtoint ptr %i.cc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 3, ptr %3, align 8, !tbaa !248
  store i32 0, ptr %i.l, align 4
  store i64 %4, ptr %i.m, align 8, !tbaa !250
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.ca, ptr %i.o, align 8, !tbaa !251
  %i.cd = load i64, ptr @rb_cThread, align 8, !tbaa !144
  %i.ce = call i64 @rb_thread_alloc(i64 noundef %i.cd) #17, !inline_history !310
  %i.cf = call fastcc i64 @thread_create_core(i64 noundef %i.ce, ptr noundef %3), !inline_history !310 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.p

bb.o:                                             ; preds = %rb_native_mutex_unlock.exit.i
  %i.cg = call i64 %i.ca(ptr noundef %i.cc) #17, !inline_history !305 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @ruby_xfree(ptr noundef nonnull %i.bo) #17, !inline_history !305
  %i.ch = call i32 @pthread_mutex_lock(ptr noundef %i.k) #17, !inline_history !305 ; 2 uses
  %.not.i.i90 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i90, label %rb_native_mutex_lock.exit.i, label %._crit_edge.i

threadptr_interrupt_exec_exec.exit:               ; preds = %ccan_list_pop_.exit.thread.i
  %i.ci = load i8, ptr %i.i, align 8
  %i.cj = and i8 %i.ci, -4
  %i.ck = or disjoint i8 %i.cj, %i.bl
  store i8 %i.ck, ptr %i.i, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %threadptr_interrupt_exec_exec.exit, %bb.i
  %.3 = phi i32 [ %.2, %bb.l ], [ %.2, %threadptr_interrupt_exec_exec.exit ], [ %.067, %bb.i ] ; 3 uses
  %.not83 = icmp eq i32 %i.am, 0
  br i1 %.not83, label %threadptr_pending_interrupt_active_p.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = load i8, ptr %i.i, align 8
  %i.cm = and i8 %i.cl, 64
  %.not.i91 = icmp eq i8 %i.cm, 0
  br i1 %.not.i91, label %bb.s, label %threadptr_pending_interrupt_active_p.exit.thread

bb.s:                                             ; preds = %bb.r
  %.val.i = load i64, ptr %i.p, align 8, !tbaa !25 ; 2 uses
  %i.cn = inttoptr i64 %.val.i to ptr             ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !46 ; 3 uses
  %i.cp = and i64 %i.co, 8192
  %.not.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = lshr i64 %i.co, 15
  %i.cr = and i64 %i.cq, 127
  br label %threadptr_pending_interrupt_active_p.exit

bb.u:                                             ; preds = %bb.s
  %i.cs = getelementptr i8, ptr %i.cn, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !48
  br label %threadptr_pending_interrupt_active_p.exit

threadptr_pending_interrupt_active_p.exit:        ; preds = %bb.t, %bb.u
  %.0.i.i.i = phi i64 [ %i.cr, %bb.t ], [ %i.ct, %bb.u ]
  %.not3.i.not = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not3.i.not, label %threadptr_pending_interrupt_active_p.exit.thread, label %.preheader151

.preheader151:                                    ; preds = %threadptr_pending_interrupt_active_p.exit, %rb_threadptr_pending_interrupt_check_mask.exit.thread24.i
  %i.cu = phi i64 [ %.pre191, %rb_threadptr_pending_interrupt_check_mask.exit.thread24.i ], [ %i.co, %threadptr_pending_interrupt_active_p.exit ] ; 2 uses
  %i.cv = phi i64 [ %.pre190, %rb_threadptr_pending_interrupt_check_mask.exit.thread24.i ], [ %.val.i, %threadptr_pending_interrupt_active_p.exit ]
  %.014.i = phi i32 [ %i.hu, %rb_threadptr_pending_interrupt_check_mask.exit.thread24.i ], [ 0, %threadptr_pending_interrupt_active_p.exit ] ; 2 uses
  %i.cw = sext i32 %.014.i to i64                 ; 4 uses
  %i.cx = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cy = and i64 %i.cu, 8192
  %.not.i.i94 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i94, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %.preheader151
  %i.cz = getelementptr i8, ptr %i.cx, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !48
  %i.db = icmp sgt i64 %i.da, %i.cw
  br i1 %i.db, label %bb.v, label %rb_threadptr_pending_interrupt_deque.exit.thread

rb_array_len.exit.thread.i:                       ; preds = %.preheader151
  %i.dc = lshr i64 %i.cu, 15
  %i.dd = and i64 %i.dc, 127
  %i.de = icmp sgt i64 %i.dd, %i.cw
  br i1 %i.de, label %.thread.i, label %rb_threadptr_pending_interrupt_deque.exit.thread

.thread.i:                                        ; preds = %rb_array_len.exit.thread.i
  %i.df = getelementptr i8, ptr %i.cx, i64 16
  br label %RARRAY_AREF.exit.i

bb.v:                                             ; preds = %rb_array_len.exit.i
  %i.dg = getelementptr i8, ptr %i.cx, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !48
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.v, %.thread.i
  %.0.i.i.i95 = phi ptr [ %i.df, %.thread.i ], [ %i.dh, %bb.v ]
  %i.di = getelementptr [8 x i8], ptr %.0.i.i.i95, i64 %i.cw
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !144 ; 10 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = and i64 %i.dj, 7
  %i.dm = icmp ne i64 %i.dl, 0
  %i.dn = or i1 %i.dk, %i.dm
  br i1 %i.dn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %RARRAY_AREF.exit.i
  %i.do = inttoptr i64 %i.dj to ptr
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  br label %rb_class_of.exit.i

bb.x:                                             ; preds = %RARRAY_AREF.exit.i
  switch i64 %i.dj, label %bb.aa [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.y
    i64 20, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  br label %rb_class_of.exit.i

bb.z:                                             ; preds = %bb.x
  br label %rb_class_of.exit.i

bb.aa:                                            ; preds = %bb.x
  %i.dq = trunc i64 %i.dj to i1
  br i1 %i.dq, label %rb_class_of.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = and i64 %i.dj, 254
  %i.ds = icmp eq i64 %i.dr, 12
  %spec.select.i.i = select i1 %i.ds, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.0.in.i.i = phi ptr [ %i.dp, %bb.w ], [ @rb_cNilClass, %bb.y ], [ @rb_cTrueClass, %bb.z ], [ @rb_cFalseClass, %bb.x ], [ @rb_cInteger, %bb.aa ], [ %spec.select.i.i, %bb.ab ]
  %.0.i17.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !144 ; 3 uses
  %.val.i96 = load i64, ptr %i.q, align 8, !tbaa !260
  %i.dt = inttoptr i64 %.val.i96 to ptr           ; 4 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !46 ; 2 uses
  %i.dv = and i64 %i.du, 8192
  %.not.i.i18.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i18.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %rb_class_of.exit.i
  %i.dw = lshr i64 %i.du, 15
  %i.dx = and i64 %i.dw, 127
  %i.dy = getelementptr i8, ptr %i.dt, i64 16
  br label %rb_array_const_ptr.exit.i.i

bb.ad:                                            ; preds = %rb_class_of.exit.i
  %i.dz = getelementptr i8, ptr %i.dt, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !48
  %i.eb = getelementptr i8, ptr %i.dt, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !48
  br label %rb_array_const_ptr.exit.i.i

rb_array_const_ptr.exit.i.i:                      ; preds = %bb.ad, %bb.ac
  %.0.i2.i.i = phi i64 [ %i.dx, %bb.ac ], [ %i.ea, %bb.ad ] ; 5 uses
  %.0.i35.i.i = phi ptr [ %i.dy, %bb.ac ], [ %i.ec, %bb.ad ] ; 2 uses
  %i.ed = icmp sgt i64 %.0.i2.i.i, 0
  br i1 %i.ed, label %.lr.ph11.i.i, label %rb_threadptr_pending_interrupt_deque.exit

.lr.ph11.i.i:                                     ; preds = %rb_array_const_ptr.exit.i.i
  %.not8.i.i = icmp eq i64 %.0.i17.i, 0
  br i1 %.not8.i.i, label %.lr.ph11.split.us.i.i, label %.lr.ph11.split.i.i

.lr.ph11.split.us.i.i:                            ; preds = %.lr.ph11.i.i
  %i.ee = load i64, ptr @rb_cInteger, align 8
  %.fr.i.i = freeze i64 %i.ee
  %.not33.us.i.i = icmp eq i64 %.fr.i.i, 0
  br i1 %.not33.us.i.i, label %rb_threadptr_pending_interrupt_deque.exit, label %.lr.ph11.split.us.split.i.i

.lr.ph11.split.us.split.i.i:                      ; preds = %.lr.ph11.split.us.i.i, %RB_SYMBOL_P.exit.preheader.us.i.i
  %.02610.us.i.i = phi i64 [ %i.ef, %RB_SYMBOL_P.exit.preheader.us.i.i ], [ 0, %.lr.ph11.split.us.i.i ]
  %i.ef = add nuw nsw i64 %.02610.us.i.i, 1       ; 3 uses
  %i.eg = sub nuw nsw i64 %.0.i2.i.i, %i.ef
  %i.eh = getelementptr [8 x i8], ptr %.0.i35.i.i, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !144 ; 6 uses
  %i.ej = and i64 %i.ei, 255
  %i.ek = icmp eq i64 %i.ej, 12
  br i1 %i.ek, label %.split13.us.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph11.split.us.split.i.i
  %i.el = icmp eq i64 %i.ei, 0
  %i.em = and i64 %i.ei, 7
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = or i1 %i.el, %i.en
  br i1 %i.eo, label %RB_SYMBOL_P.exit.preheader.us.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.ae
  %i.ep = inttoptr i64 %i.ei to ptr
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !46
  %i.er = and i64 %i.eq, 31
  %i.es = icmp eq i64 %i.er, 20
  br i1 %i.es, label %.split13.us.i.i, label %RB_SYMBOL_P.exit.preheader.us.i.i

RB_SYMBOL_P.exit.preheader.us.i.i:                ; preds = %.split.us.i.i, %bb.ae
  %exitcond24.not.i.i = icmp eq i64 %i.ef, %.0.i2.i.i
  br i1 %exitcond24.not.i.i, label %rb_threadptr_pending_interrupt_deque.exit, label %.lr.ph11.split.us.split.i.i, !llvm.loop !311

.lr.ph11.split.i.i:                               ; preds = %.lr.ph11.i.i, %RB_SYMBOL_P.exit..loopexit_crit_edge.i.i
  %.02610.i.i = phi i64 [ %i.et, %RB_SYMBOL_P.exit..loopexit_crit_edge.i.i ], [ 0, %.lr.ph11.i.i ]
  %i.et = add nuw nsw i64 %.02610.i.i, 1          ; 3 uses
  %i.eu = sub nuw nsw i64 %.0.i2.i.i, %i.et
end_hunk_1
begin_hunk_2_@rb_obj_freeze_inline

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @uninterruptible_exit(i64 %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11 ; 4 uses
  %i.e = getelementptr i8, ptr %.val.i, i64 288
  %i.f = load i64, ptr %i.e, align 8, !tbaa !260
  %i.g = tail call i64 @rb_ary_pop(i64 noundef %i.f) #17 ; 0 uses
  %i.h = getelementptr i8, ptr %.val.i, i64 248   ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, -65
  store i8 %i.j, ptr %i.h, align 8
  %i.k = getelementptr i8, ptr %.val.i, i64 280
  %.val = load i64, ptr %i.k, align 8, !tbaa !25
  %i.l = inttoptr i64 %.val to ptr                ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = and i64 %i.m, 8192
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i64 %i.m, 15
  %i.p = and i64 %i.o, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit

rb_threadptr_pending_interrupt_empty_p.exit:      ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.p, %bb.b ], [ %i.r, %bb.c ]
  %.not = icmp eq i64 %.0.i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit
  %i.s = getelementptr i8, ptr %.val.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %i.v = atomicrmw volatile or ptr %i.u, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_threadptr_pending_interrupt_empty_p.exit
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 9) i32 @rb_internal_thread_specific_key_create() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr @specific_key_count, align 4, !tbaa !7 ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !441
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.114) #41
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.b, 8
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.115, i32 noundef 8) #41
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %i.b, 1
  store i32 %i.k, ptr @specific_key_count, align 4, !tbaa !7
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  store i32 1, ptr @specific_key_count, align 4, !tbaa !7
  %i.l = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !146 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %rb_current_ractor.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147
  store volatile ptr %i.n, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !11, !nonnull !103, !noundef !103
  %i.p = getelementptr i8, ptr %.val.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.l, %bb.g ], [ %i.q, %bb.h ]
  %i.r = getelementptr i8, ptr %.0.i.i, i64 184   ; 3 uses
  %.09 = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %.not10 = icmp eq ptr %.09, %i.r
  br i1 %.not10, label %.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %rb_current_ractor.exit, %thread_specific_storage_alloc.exit
  %i.s = phi i32 [ %i.w, %thread_specific_storage_alloc.exit ], [ 1, %rb_current_ractor.exit ] ; 2 uses
  %.011 = phi ptr [ %.0, %thread_specific_storage_alloc.exit ], [ %.09, %rb_current_ractor.exit ] ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %thread_specific_storage_alloc.exit, !prof !139

bb.i:                                             ; preds = %.lr.ph.split
  %i.u = tail call noalias nonnull dereferenceable(64) ptr @ruby_xcalloc(i64 noundef 8, i64 noundef 8) #49
  %i.v = getelementptr i8, ptr %.011, i64 456
  store ptr %i.u, ptr %i.v, align 8, !tbaa !252
  %.pre = load i32, ptr @specific_key_count, align 4, !tbaa !7
  br label %thread_specific_storage_alloc.exit

thread_specific_storage_alloc.exit:               ; preds = %.lr.ph.split, %bb.i
  %i.w = phi i32 [ %i.s, %.lr.ph.split ], [ %.pre, %bb.i ]
  %.0 = load ptr, ptr %.011, align 8, !tbaa !73   ; 2 uses
  %.not = icmp eq ptr %.0, %i.r
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !442

.loopexit:                                        ; preds = %thread_specific_storage_alloc.exit, %rb_current_ractor.exit, %bb.f
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @rb_internal_thread_specific_get(i64 noundef %0, i32 noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !390
  %i.d = getelementptr i8, ptr %i.c, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !252
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rb_internal_thread_specific_set(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #29 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !390
  %i.d = getelementptr i8, ptr %i.c, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !252
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  store ptr %2, ptr %i.g, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_interrupt_exec_task_mark(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 368        ; 3 uses
  %.07 = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not8 = icmp eq ptr %.07, %i.a
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.09 = phi ptr [ %.0, %bb.c ], [ %.07, %bb.a ]  ; 3 uses
  %i.b = getelementptr i8, ptr %.09, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !306
  %i.d = and i32 %i.c, 1
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %.09, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !309
  %i.g = ptrtoint ptr %i.f to i64
  tail call void @rb_gc_mark(i64 noundef %i.g) #17
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0 = load ptr, ptr %.09, align 8, !tbaa !73    ; 2 uses
  %.not = icmp eq ptr %.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !444

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_interrupt_exec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %2 to i64
  %i.a = tail call noalias nonnull dereferenceable(40) ptr @ruby_xmalloc(i64 noundef 40) #50 ; 8 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !52
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %5, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !52
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !7
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.b = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef %i.b) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %rb_native_mutex_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.c) #41
  unreachable

rb_native_mutex_lock.exit:                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 368
  store ptr %i.d, ptr %i.a, align 8, !tbaa !73
  %i.e = getelementptr i8, ptr %0, i64 376        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !72
  store ptr %i.a, ptr %i.f, align 8, !tbaa !73
  store ptr %i.a, ptr %i.e, align 8, !tbaa !72
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %i.k = atomicrmw volatile or ptr %i.j, i32 8 seq_cst, align 4 ; 0 uses
  %i.l = getelementptr i8, ptr %0, i64 336
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 2 uses
  %.not.i8 = icmp eq ptr %i.m, null
  br i1 %.not.i8, label %threadptr_set_interrupt_locked.exit, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_lock.exit
  %i.n = getelementptr i8, ptr %0, i64 344
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  tail call void %i.m(ptr noundef %i.o) #17, !inline_history !445
  br label %threadptr_set_interrupt_locked.exit

threadptr_set_interrupt_locked.exit:              ; preds = %rb_native_mutex_lock.exit, %bb.c
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef %i.b) #17 ; 2 uses
  %.not.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i9, label %rb_native_mutex_unlock.exit, label %bb.d

bb.d:                                             ; preds = %threadptr_set_interrupt_locked.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.p) #41
  unreachable

rb_native_mutex_unlock.exit:                      ; preds = %threadptr_set_interrupt_locked.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_interrupt_exec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 6 uses
  %i.c = or i32 %3, 2
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %2 to i64
  %i.d = tail call noalias nonnull dereferenceable(40) ptr @ruby_xmalloc(i64 noundef 40) #50 ; 8 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !52
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %5, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !52
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.e = getelementptr i8, ptr %i.b, i64 296      ; 2 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef %i.e) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %rb_native_mutex_lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.f) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 368
  store ptr %i.g, ptr %i.d, align 8, !tbaa !73
  %i.h = getelementptr i8, ptr %i.b, i64 376      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !72
  store ptr %i.d, ptr %i.i, align 8, !tbaa !73
  store ptr %i.d, ptr %i.h, align 8, !tbaa !72
  %i.k = getelementptr i8, ptr %i.b, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = getelementptr i8, ptr %i.l, i64 32
  %i.n = atomicrmw volatile or ptr %i.m, i32 8 seq_cst, align 4 ; 0 uses
  %i.o = getelementptr i8, ptr %i.b, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75   ; 2 uses
  %.not.i8.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i, label %threadptr_set_interrupt_locked.exit.i, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_lock.exit.i
  %i.q = getelementptr i8, ptr %i.b, i64 344
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77
  tail call void %i.p(ptr noundef %i.r) #17, !inline_history !446
  br label %threadptr_set_interrupt_locked.exit.i

threadptr_set_interrupt_locked.exit.i:            ; preds = %bb.c, %rb_native_mutex_lock.exit.i
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef %i.e) #17 ; 2 uses
  %.not.i9.i = icmp eq i32 %i.s, 0
  br i1 %.not.i9.i, label %rb_threadptr_interrupt_exec.exit, label %bb.d

bb.d:                                             ; preds = %threadptr_set_interrupt_locked.exit.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.s) #41
  unreachable

rb_threadptr_interrupt_exec.exit:                 ; preds = %threadptr_set_interrupt_locked.exit.i
  ret void
}

declare i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_fiber_scheduler_yield(i64 noundef) local_unnamed_addr #4

declare void @rb_timespec_now(ptr noundef) local_unnamed_addr #4

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @thread_sched_wakeup_running_thread(ptr nofree noundef readonly captures(address_is_null) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %rb_native_cond_signal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 104
  %.val.val = load i32, ptr %i.c, align 8, !tbaa !65
  %i.d = icmp sgt i32 %.val.val, 0
  br i1 %i.d, label %bb.d, label %rb_native_cond_signal.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.b, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.f = tail call i32 @pthread_cond_signal(ptr noundef %i.e) #17 ; 2 uses
  switch i32 %i.f, label %bb.f [
    i32 11, label %bb.e
    i32 0, label %rb_native_cond_signal.exit
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.12, i32 noundef %i.f) #41
  unreachable

bb.g:                                             ; preds = %bb.b
  br i1 %1, label %rb_native_cond_signal.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 160      ; 2 uses
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef %i.k) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %ractor_sched_lock_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.l) #41
  unreachable

ractor_sched_lock_.exit.i:                        ; preds = %bb.h
  %i.m = getelementptr i8, ptr %i.h, i64 280
  %i.n = getelementptr i8, ptr %i.j, i64 296      ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !73
  %i.o = getelementptr i8, ptr %i.h, i64 288      ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %i.q = getelementptr i8, ptr %i.j, i64 304
  store ptr %i.p, ptr %i.q, align 8, !tbaa !72
  store ptr %i.n, ptr %i.p, align 8, !tbaa !73
  store ptr %i.n, ptr %i.o, align 8, !tbaa !72
  %i.r = getelementptr i8, ptr %i.h, i64 296      ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !447
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !447
  %i.u = getelementptr i8, ptr %i.h, i64 216
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %ractor_sched_lock_.exit.i
  %i.v = tail call i32 @pthread_cond_signal(ptr noundef %i.u) #17 ; 2 uses
  switch i32 %i.v, label %bb.k [
    i32 11, label %bb.j
    i32 0, label %rb_native_cond_signal.exit.i
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.12, i32 noundef %i.v) #41
  unreachable

rb_native_cond_signal.exit.i:                     ; preds = %bb.j
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef %i.k) #17 ; 2 uses
  %.not.i.i9.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i9.i, label %rb_native_cond_signal.exit, label %bb.l

bb.l:                                             ; preds = %rb_native_cond_signal.exit.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.w) #41
  unreachable

rb_native_cond_signal.exit:                       ; preds = %bb.e, %rb_native_cond_signal.exit.i, %bb.a, %bb.c, %bb.g
  ret void
}

declare ptr @coroutine_transfer(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_current_ec_set(ptr noundef) local_unnamed_addr #4

declare ptr @rb_register_sigaltstack(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #2

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #4

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @nt_stack_chunk_get_stack_start(ptr nofree noundef readonly captures(ret: address, provenance) %0, i64 noundef range(i64 -2147483648, 2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8, !tbaa !160
  %i.c = load i64, ptr @get_sysconf_page_size.page_size, align 8, !tbaa !144 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %get_sysconf_page_size.exit, !prof !139

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @sysconf(i32 noundef 30) #17 ; 2 uses
  store i64 %i.e, ptr @get_sysconf_page_size.page_size, align 8, !tbaa !144
  br label %get_sysconf_page_size.exit

get_sysconf_page_size.exit:                       ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.g = load i64, ptr @nt_thread_stack_size.msz, align 8, !tbaa !144 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %nt_thread_stack_size.exit, !prof !139

bb.c:                                             ; preds = %get_sysconf_page_size.exit
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 9520
  %i.j = load i64, ptr %i.i, align 8, !tbaa !162
  %i.k = getelementptr i8, ptr %i.h, i64 9528
  %i.l = load i64, ptr %i.k, align 8, !tbaa !154
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = icmp eq i64 %i.f, 0
  br i1 %i.n, label %get_sysconf_page_size.exit.i, label %get_sysconf_page_size.exit5.thread15.i, !prof !139

get_sysconf_page_size.exit5.thread15.i:           ; preds = %bb.c
  %i.o = trunc i64 %i.f to i32                    ; 2 uses
  %i.p = trunc i64 %i.m to i32
  %factor = shl i32 %i.o, 1
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %factor
  br label %get_sysconf_page_size.exit6.thread.i

end_hunk_2
