Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm_trace?download=true
inline.NumInlined: 332
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rb_exec_event_hooks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cd = load i32, ptr %i.x, align 4, !tbaa !25
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.x, align 4, !tbaa !25
  %i.cf = getelementptr i8, ptr %1, i64 20
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !22, !range !73, !noundef !71
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.v, label %exec_hooks_postcheck.exit.i, !prof !74

bb.v:                                             ; preds = %exec_hooks_body.exit.i
  %i.ci = icmp eq i32 %i.ce, 0
  br i1 %i.ci, label %bb.w, label %exec_hooks_postcheck.exit.i

bb.w:                                             ; preds = %bb.v
  call fastcc void @clean_hooks(ptr noundef nonnull %1)
  br label %exec_hooks_postcheck.exit.i

exec_hooks_postcheck.exit.i:                      ; preds = %bb.w, %bb.v, %exec_hooks_body.exit.i
  %.0..0..0..0..0..0.5.i = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %.not18.i = icmp eq i32 %.0..0..0..0..0..0.5.i, 0
  br i1 %.not18.i, label %exec_hooks_protected.exit, label %bb.x

bb.x:                                             ; preds = %exec_hooks_postcheck.exit.i
  %i.cj = call i32 @rb_ec_set_raised(ptr noundef nonnull %i.d) #6 ; 0 uses
  br label %exec_hooks_protected.exit

exec_hooks_protected.exit:                        ; preds = %exec_hooks_postcheck.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = icmp eq i32 %i.cb, 0
  %.pre = load i64, ptr %i.q, align 8, !tbaa !84  ; 2 uses
  br i1 %i.ck, label %.thread, label %bb.y

.thread:                                          ; preds = %exec_hooks_protected.exit, %exec_hooks_protected.exit.thread
  %i.cl = phi i64 [ %.pre, %exec_hooks_protected.exit ], [ %i.t, %exec_hooks_protected.exit.thread ]
  store i64 %i.p, ptr %i.o, align 8, !tbaa !83
  store ptr null, ptr %i.g, align 8, !tbaa !80
  store i64 %i.cl, ptr %i.s, align 8, !tbaa !85
  store i64 %i.r, ptr %i.q, align 8, !tbaa !84
  br label %bb.ad

bb.y:                                             ; preds = %exec_hooks_protected.exit
  store ptr null, ptr %i.g, align 8, !tbaa !80
  store i64 %.pre, ptr %i.s, align 8, !tbaa !85
  store i64 %i.r, ptr %i.q, align 8, !tbaa !84
  %.not42 = icmp eq i32 %2, 0
  br i1 %.not42, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr i8, ptr %i.d, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !110
  %i.co = getelementptr i8, ptr %i.cn, i64 32
  %.val = load ptr, ptr %i.co, align 8, !tbaa !115
  %.val.val = load i64, ptr %.val, align 8, !tbaa !34
  %i.cp = and i64 %.val.val, 32
  %.not43 = icmp eq i64 %i.cp, 0
  br i1 %.not43, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %i.ac, align 8, !tbaa !89
  %i.cr = getelementptr i8, ptr %i.cq, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !90
  store ptr %i.cs, ptr %i.ac, align 8, !tbaa !89
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @rb_vm_pop_frame(ptr noundef nonnull %i.d) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.val46 = load ptr, ptr %i.ac, align 8, !tbaa !89 ; 2 uses
  %i.ct = getelementptr i8, ptr %.val46, i64 64
  store i32 %i.cb, ptr %i.ct, align 8, !tbaa !86
  %i.cu = getelementptr i8, ptr %.val46, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.cu)
  unreachable

bb.ad:                                            ; preds = %.thread, %bb.e, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @exec_hooks_unprotected(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %2, align 8, !tbaa !79
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = and i32 %i.b, %.val
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %exec_hooks_postcheck.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 12         ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !25
  %.027.i = load ptr, ptr %1, align 8, !tbaa !11  ; 2 uses
  %.not28.i = icmp eq ptr %.027.i, null
  br i1 %.not28.i, label %exec_hooks_body.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = getelementptr i8, ptr %2, i64 24
  %i.j = getelementptr i8, ptr %2, i64 32
  %i.k = getelementptr i8, ptr %2, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %.lr.ph.i
  %.029.i = phi ptr [ %.027.i, %.lr.ph.i ], [ %.0.i8, %bb.l ] ; 9 uses
  %i.l = load i32, ptr %.029.i, align 8, !tbaa !27 ; 2 uses
  %i.m = and i32 %i.l, 2
  %.not24.i = icmp eq i32 %i.m, 0
  br i1 %.not24.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %2, align 8, !tbaa !79
  %i.o = getelementptr i8, ptr %.029.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  %i.q = and i32 %i.p, %i.n
  %.not25.i = icmp eq i32 %i.q, 0
  br i1 %.not25.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.029.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.f, !prof !81

bb.f:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.u = icmp eq ptr %i.s, %.val.i
  br i1 %i.u, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr i8, ptr %.029.i, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.h, !prof !81

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.z = tail call i32 @rb_vm_get_sourceline(ptr noundef %i.y) #6
  %i.aa = icmp eq i32 %i.w, %i.z
  br i1 %i.aa, label %._crit_edge30.i, label %bb.l

._crit_edge30.i:                                  ; preds = %bb.h
  %.pre.i = load i32, ptr %.029.i, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge30.i, %bb.g
  %i.ab = phi i32 [ %.pre.i, %._crit_edge30.i ], [ %i.l, %bb.g ]
  %i.ac = and i32 %i.ab, 4
  %.not26.i = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr i8, ptr %.029.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  br i1 %.not26.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %2, align 8, !tbaa !79
  %i.ag = getelementptr i8, ptr %.029.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !82
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !111
  %i.ak = load i64, ptr %i.k, align 8, !tbaa !112
  tail call void %i.ae(i32 noundef %i.af, i64 noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef %i.ak) #6, !inline_history !118
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.029.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  tail call void %i.ae(i64 noundef %i.am, ptr noundef nonnull %2) #6, !inline_history !118
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.c
  %i.an = getelementptr i8, ptr %.029.i, i64 24
  %.0.i8 = load ptr, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %.not.i9 = icmp eq ptr %.0.i8, null
  br i1 %.not.i9, label %exec_hooks_body.exit.loopexit, label %bb.c, !llvm.loop !114

exec_hooks_body.exit.loopexit:                    ; preds = %bb.l
  %.pre = load i32, ptr %i.d, align 4, !tbaa !25
  %i.ao = add i32 %.pre, -1
  br label %exec_hooks_body.exit

exec_hooks_body.exit:                             ; preds = %exec_hooks_body.exit.loopexit, %bb.b
  %i.ap = phi i32 [ %i.ao, %exec_hooks_body.exit.loopexit ], [ %i.e, %bb.b ] ; 2 uses
  store i32 %i.ap, ptr %i.d, align 4, !tbaa !25
  %i.aq = getelementptr i8, ptr %1, i64 20
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !22, !range !73, !noundef !71
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %exec_hooks_postcheck.exit, !prof !74

bb.m:                                             ; preds = %exec_hooks_body.exit
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %bb.n, label %exec_hooks_postcheck.exit

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @clean_hooks(ptr noundef nonnull %1)
  br label %exec_hooks_postcheck.exit

exec_hooks_postcheck.exit:                        ; preds = %bb.n, %bb.m, %exec_hooks_body.exit, %bb.a
  ret void
}

declare void @rb_vm_pop_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_suppress_tracing(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
rb_ec_vm_ptr.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i64 4, ptr %i.c, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !32 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i32 0, ptr %2, align 8, !tbaa !79
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 120 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_ec_vm_ptr.exit
  store ptr %2, ptr %i.h, align 8, !tbaa !80
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %rb_ec_vm_ptr.exit
  %i.j = call i32 @rb_ec_reset_raised(ptr noundef nonnull %.0..0..0..0..0..0..i) #6
  store volatile i32 %i.j, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.0..0..0..0..0..0..i, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.k, align 8, !tbaa !86
  store i64 36, ptr %3, align 8, !tbaa !88
  %i.l = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !90
  %.0.1.val = load ptr, ptr %i.g, align 8, !tbaa !38, !nonnull !71, !noundef !71 ; 2 uses
  %i.o = getelementptr i8, ptr %.0.1.val, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %i.q = getelementptr i8, ptr %.0.1.val, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.s = getelementptr i8, ptr %i.p, i64 88
  %.val5.i = load ptr, ptr %i.s, align 8, !tbaa !91
  %i.t = icmp eq ptr %.val5.i, %i.r
  br i1 %i.t, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.p, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !108
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.b, %bb.c
  %.0.i23 = phi i32 [ %i.v, %bb.c ], [ 0, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i23, ptr %i.w, align 4, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.y, ptr %i.x, align 8
  %i.z = call ptr @llvm.stacksave.p0()
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.x)
  %.not19 = icmp eq i32 %i.ab, 0                  ; 2 uses
  br i1 %.not19, label %bb.e, label %bb.d, !prof !81

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !32
  %i.ac = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  br label %bb.f

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.l, align 8, !tbaa !89
  %i.ad = call i64 %0(i64 noundef %1) #6
  store volatile i64 %i.ad, ptr %i.c, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ae = phi i32 [ %i.ac, %bb.d ], [ 0, %bb.e ]
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !90
  store ptr %i.af, ptr %i.l, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.0..0..0..0.16 = load volatile i32, ptr %i.b, align 4, !tbaa !7
  %.not20 = icmp eq i32 %.0..0..0..0.16, 0
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call i32 @rb_ec_reset_raised(ptr noundef nonnull %.0..0..0..0..0..0..i) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.ai = icmp eq ptr %i.ah, %2
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.h, align 8, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val22 = load ptr, ptr %i.l, align 8, !tbaa !89 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val22, i64 64
  store i32 %i.ae, ptr %i.aj, align 8, !tbaa !86
  %i.ak = getelementptr i8, ptr %.val22, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.ak)
  unreachable

bb.l:                                             ; preds = %bb.j
  %.0..0..0..0.15 = load volatile i64, ptr %i.c, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.0..0..0..0.15
}

declare i32 @rb_ec_reset_raised(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #5

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #6

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86   ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !109  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !38, !nonnull !71, !noundef !71 ; 2 uses
  %i.h = getelementptr i8, ptr %.val.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 2 uses
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = getelementptr i8, ptr %i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.m = icmp eq ptr %.val5.i.i, %i.k
  br i1 %i.m, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.i, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !108
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #6
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.c
  %i.p = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.q)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull ptr @rb_tracearg_from_tracepoint(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %get_trace_arg.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@tracepoint_enable_m:bb.a

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.s, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.t = getelementptr i8, ptr %.015.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135  ; 2 uses
  %i.v = icmp eq ptr %i.u, @tp_data_type
  br i1 %i.v, label %tpptr.exit, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit

tpptr.exit:                                       ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.w, %.critedge.i.i ], [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.x = getelementptr i8, ptr %.1.i.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !143
  %i.z = load i64, ptr @sym_default, align 8, !tbaa !34
  %i.aa = icmp eq i64 %4, %i.z
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %tpptr.exit
  %i.ab = tail call i32 @rb_block_given_p() #6
  %.not = icmp ne i32 %i.ab, 0
  %i.ac = icmp eq i64 %2, 4
  %or.cond = and i1 %i.ac, %.not
  %i.ad = icmp eq i64 %3, 4
  %or.cond29 = and i1 %i.ad, %or.cond
  br i1 %or.cond29, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i64 @rb_thread_current() #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %tpptr.exit
  %.0 = phi i64 [ %i.ae, %bb.f ], [ %4, %tpptr.exit ] ; 4 uses
  %i.af = and i64 %.0, -5
  %.not30 = icmp eq i64 %i.af, 0
  br i1 %.not30, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %.1.i.i, i64 8    ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !144
  %.not23 = icmp eq ptr %i.ah, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.98) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = tail call ptr @rb_check_typeddata(i64 noundef %.0, ptr noundef nonnull @ruby_threadptr_data_type) #6
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !144
  %i.ak = and i64 %.0, 7
  %.not31 = icmp eq i64 %i.ak, 0
  br i1 %.not31, label %bb.k, label %rb_obj_written.exit

bb.k:                                             ; preds = %bb.j
  tail call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %.0) #6
  br label %rb_obj_written.exit

.thread:                                          ; preds = %bb.e, %bb.g
  %i.al = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !144
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.k, %bb.j, %.thread
  %i.am = icmp eq i64 %2, 4
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %rb_obj_written.exit
  %i.an = icmp eq i64 %3, 4
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.99) #19
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = tail call i64 @rb_tracepoint_enable(i64 noundef %1) ; 0 uses
  br label %rb_tracepoint_enable_for_target.exit

bb.o:                                             ; preds = %rb_obj_written.exit
  br i1 %i.g, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.o
  %i.aq = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !125
  %i.as = and i64 %i.ar, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.as, 76
  br i1 %or.cond.not.i.i.i, label %bb.p, label %.critedge.i.i.i, !prof !131

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.at = getelementptr i8, ptr %i.aq, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !132 ; 2 uses
  %i.av = and i64 %i.au, -2                       ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = trunc i64 %i.au to i1
  %i.ay = getelementptr i8, ptr %i.aq, i64 32     ; 2 uses
  br i1 %i.ax, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.q, %bb.p
  %i.ba = phi ptr [ %i.az, %bb.q ], [ %i.ay, %bb.p ] ; 2 uses
  %i.bb = icmp eq i64 %i.av, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.bb, label %tpptr.exit.i, label %.preheader.i.i.i, !prof !81

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.r
  %.015.i.i.i = phi ptr [ %i.bd, %bb.r ], [ %i.aw, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.015.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i
  %i.bc = getelementptr i8, ptr %.015.i.i.i, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !135 ; 2 uses
  %i.be = icmp eq ptr %i.bd, @tp_data_type
  br i1 %i.be, label %tpptr.exit.i, label %.preheader.i.i.i, !llvm.loop !140

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.o
  %i.bf = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit.i

tpptr.exit.i:                                     ; preds = %bb.r, %.critedge.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.bf, %.critedge.i.i.i ], [ %i.ba, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.ba, %bb.r ] ; 9 uses
  %i.bg = load i64, ptr @rb_cISeq, align 8, !tbaa !34
  %.pr.i.i.i = load i64, ptr @iseq_of.rbimpl_id, align 8, !tbaa !34 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %tpptr.exit.i, %.lr.ph.i.i.i
  %i.bh = tail call i64 @rb_intern2(ptr noundef nonnull @.str.102, i64 noundef 2) #6 ; 3 uses
  store i64 %i.bh, ptr @iseq_of.rbimpl_id, align 8, !tbaa !34
  %.not.i.i50.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i50.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !119

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %tpptr.exit.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %tpptr.exit.i ], [ %i.bh, %.lr.ph.i.i.i ]
  %i.bi = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bg, i64 noundef %.lcssa.i.i.i, i32 noundef 1, i64 noundef %2) #6 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4
  br i1 %i.bj, label %bb.s, label %iseq_of.exit.i

bb.s:                                             ; preds = %rbimpl_intern_const.exit.i.i
  %i.bk = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bk, ptr noundef nonnull @.str.103) #19
  unreachable

iseq_of.exit.i:                                   ; preds = %rbimpl_intern_const.exit.i.i
  %i.bl = tail call ptr @rb_iseqw_to_iseq(i64 noundef %i.bi) #6 ; 3 uses
  %i.bm = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150 ; 2 uses
  %.not.i.i51.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i51.i, label %bb.t, label %rb_current_ractor.exit.i

bb.t:                                             ; preds = %iseq_of.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  store volatile ptr %i.bo, ptr %i.b, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bp = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %rb_current_ractor.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !68
  br label %rb_current_ractor.exit.i

rb_current_ractor.exit.i:                         ; preds = %bb.u, %bb.t, %iseq_of.exit.i
  %.0.i.i.i = phi ptr [ %i.bm, %iseq_of.exit.i ], [ %i.br, %bb.u ], [ null, %bb.t ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.1.i.i.i, i64 4  ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !143
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %rb_current_ractor.exit.i
  %i.bv = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bv, ptr noundef nonnull @.str.4) #19
  unreachable

bb.w:                                             ; preds = %rb_current_ractor.exit.i
  %i.bw = icmp eq i64 %3, 4
  br i1 %i.bw, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = load i32, ptr %.1.i.i.i, align 8, !tbaa !146
  %5 = trunc i32 %i.bx to i1
  br i1 %5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.by, ptr noundef nonnull @.str.100) #19
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bz = tail call i64 @rb_num2uint(i64 noundef %3) #6
  %i.ca = trunc i64 %i.bz to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.039.i = phi i32 [ 0, %bb.w ], [ %i.ca, %bb.z ]
  %i.cb = getelementptr i8, ptr %.1.i.i.i, i64 16 ; 3 uses
  %i.cc = tail call i64 @rb_ident_hash_new() #6
  %i.cd = tail call i64 @rb_obj_hide(i64 noundef %i.cc) #6 ; 4 uses
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !34
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = and i64 %i.cd, 7
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = or i1 %i.ce, %i.cg
  br i1 %i.ch, label %rb_obj_write.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.cd) #6
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ci = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150
  %.not.i.i52.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i52.i, label %bb.ac, label %rb_vm_lock_enter.exit.i

bb.ac:                                            ; preds = %rb_obj_write.exit.i
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #6
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.ac, %rb_obj_write.exit.i
  %i.cj = getelementptr i8, ptr %.0.i.i.i, i64 40
  %i.ck = ptrtoint ptr %i.bl to i64
  %i.cl = getelementptr i8, ptr %i.bl, i64 16
  %i.cm = getelementptr i8, ptr %.1.i.i.i, i64 48
  call void @rb_vm_barrier() #6
  %i.cn = call i64 @rb_obj_is_method(i64 noundef %2) #6
  %.not43.i = icmp eq i64 %i.cn, 0
  br i1 %.not43.i, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %rb_vm_lock_enter.exit.i
  %i.co = call ptr @rb_method_def(i64 noundef %2) #6 ; 4 uses
  %i.cp = load i8, ptr %i.co, align 8
  %i.cq = and i8 %i.cp, 15
  %i.cr = icmp eq i8 %i.cq, 4
  br i1 %i.cr, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load i32, ptr %.1.i.i.i, align 8, !tbaa !146
  %i.ct = and i32 %i.cs, 24
  %.not44.i = icmp eq i32 %i.ct, 0
  br i1 %.not44.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.cu = call ptr @rb_ractor_targeted_hooks(ptr noundef %.0.i.i.i) #6
  %i.cv = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cw = call i32 @rb_st_lookup(ptr noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull %i.a) #6
  %.not.i.i27 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i27, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !34
  %i.cy = inttoptr i64 %i.cx to ptr
  br label %rb_method_def_local_hooks.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.cz = call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #27 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 2, ptr %i.da, align 8, !tbaa !29
  %i.db = load ptr, ptr %i.cj, align 8, !tbaa !152
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = call i32 @rb_st_insert(ptr noundef %i.db, i64 noundef %i.cv, i64 noundef %i.dc) #6 ; 0 uses
  br label %rb_method_def_local_hooks.exit.i

rb_method_def_local_hooks.exit.i:                 ; preds = %bb.ah, %bb.ag
  %.0.i.i = phi ptr [ %i.cy, %bb.ag ], [ %i.cz, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @rb_hook_list_connect_local_tracepoint(ptr noundef %.0.i.i, i64 noundef %1, i32 noundef 0)
  %i.de = load i64, ptr %i.cb, align 8, !tbaa !141
  %i.df = call i64 @rb_hash_aset(i64 noundef %i.de, i64 noundef %2, i64 noundef 0) #6 ; 0 uses
  call void @rb_method_definition_addref(ptr noundef nonnull %i.co) #6
  %i.dg = getelementptr i8, ptr %i.co, i64 24     ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !130
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !130
  br label %bb.ai

bb.ai:                                            ; preds = %rb_method_def_local_hooks.exit.i, %bb.ae, %bb.ad, %rb_vm_lock_enter.exit.i
  %.242.i = phi i32 [ 0, %rb_vm_lock_enter.exit.i ], [ 1, %rb_method_def_local_hooks.exit.i ], [ 0, %bb.ae ], [ 0, %bb.ad ]
  %.2.i = phi i1 [ false, %rb_vm_lock_enter.exit.i ], [ true, %rb_method_def_local_hooks.exit.i ], [ false, %bb.ae ], [ false, %bb.ad ]
  %i.dj = load i32, ptr %.1.i.i.i, align 8, !tbaa !146
  %i.dk = call i32 @rb_iseq_add_local_tracepoint_recursively(ptr noundef %i.bl, i32 noundef %i.dj, i64 noundef %1, i32 noundef %.039.i, i1 noundef zeroext %.2.i) #6
  %i.dl = add i32 %i.dk, %.242.i                  ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load i64, ptr %i.cb, align 8, !tbaa !141
  %i.do = call i64 @rb_hash_aset(i64 noundef %i.dn, i64 noundef %i.ck, i64 noundef 20) #6 ; 0 uses
  %i.dp = load i32, ptr %.1.i.i.i, align 8, !tbaa !146
  %i.dq = and i32 %i.dp, 24
  %.not45.i = icmp eq i32 %i.dq, 0
  br i1 %.not45.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = load ptr, ptr %i.cl, align 8, !tbaa !168
  %i.ds = getelementptr i8, ptr %i.dr, i64 268
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !171
  %i.du = and i32 %i.dt, 2
  %.not46.i = icmp eq i32 %i.du, 0
  br i1 %.not46.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @rb_clear_bf_ccs() #6
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  call void @rb_yjit_tracing_invalidate_all() #6
  call void @rb_zjit_tracing_invalidate_all() #6
  %i.dv = load ptr, ptr %i.cm, align 8, !tbaa !149
  %i.dw = getelementptr i8, ptr %i.dv, i64 48     ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !159
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !159
  %i.dz = load i32, ptr %.1.i.i.i, align 8, !tbaa !146 ; 2 uses
  %i.ea = and i32 %i.dz, 213887
  %.not47.i = icmp eq i32 %i.ea, 0
  br i1 %.not47.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eb = load i32, ptr @ruby_vm_iseq_events_enabled, align 4, !tbaa !7
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr @ruby_vm_iseq_events_enabled, align 4, !tbaa !7
  %.pre.i = load i32, ptr %.1.i.i.i, align 8, !tbaa !146
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ed = phi i32 [ %.pre.i, %bb.an ], [ %i.dz, %bb.am ]
  %i.ee = and i32 %i.ed, 96
  %or.cond.i = icmp eq i32 %i.ee, 0
  br i1 %or.cond.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ef = load i32, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store i32 1, ptr %i.bs, align 4, !tbaa !143
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ai
  %i.eh = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150
  %.not.i.i53.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i53.i, label %bb.as, label %rb_vm_lock_leave.exit.i

bb.as:                                            ; preds = %bb.ar
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #6
  br label %rb_vm_lock_leave.exit.i

rb_vm_lock_leave.exit.i:                          ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.ei = icmp eq i32 %i.dl, 0
  br i1 %i.ei, label %bb.at, label %rb_tracepoint_enable_for_target.exit

bb.at:                                            ; preds = %rb_vm_lock_leave.exit.i
  %i.ej = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ej, ptr noundef nonnull @.str.101) #19
  unreachable

rb_tracepoint_enable_for_target.exit:             ; preds = %rb_vm_lock_leave.exit.i, %bb.n
  %i.ek = call i32 @rb_block_given_p() #6
  %.not24 = icmp eq i32 %i.ek, 0
  %.not25 = icmp eq i32 %i.y, 0                   ; 2 uses
  br i1 %.not24, label %bb.av, label %bb.au

bb.au:                                            ; preds = %rb_tracepoint_enable_for_target.exit
  %i.el = select i1 %.not25, ptr @rb_tracepoint_disable, ptr @rb_tracepoint_enable
  %i.em = call i64 @rb_ensure(ptr noundef nonnull @rb_yield, i64 noundef 36, ptr noundef nonnull %i.el, i64 noundef %1) #6
  br label %bb.aw

bb.av:                                            ; preds = %rb_tracepoint_enable_for_target.exit
  %i.en = select i1 %.not25, i64 0, i64 20
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.021 = phi i64 [ %i.em, %bb.au ], [ %i.en, %bb.av ]
  ret i64 %.021
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_1
