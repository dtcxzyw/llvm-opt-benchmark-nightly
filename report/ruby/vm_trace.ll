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

exec_hooks_postcheck.exit:                        ; preds = %bb.a, %bb.n, %bb.m, %exec_hooks_body.exit
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
begin_hunk_1_@rb_tracearg_raised_exception:bb.a
  %i.b = and i32 %i.a, 16512
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !129  ; 2 uses
  %i.f = icmp eq i64 %i.e, 36
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.2) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_tracearg_eval_script(ptr nofree noundef nonnull readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !129  ; 4 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !79
  %i.d = and i32 %i.c, 8192
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 36
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.2) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %i.b, 0
  %i.h = and i64 %i.b, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  %.pre = inttoptr i64 %i.b to ptr                ; 4 uses
  br i1 %i.j, label %rb_obj_is_iseq.exit.thread, label %rb_obj_is_iseq.exit, !prof !74

rb_obj_is_iseq.exit:                              ; preds = %bb.e
  %i.k = load i64, ptr %.pre, align 8, !tbaa !125
  %i.l = and i64 %i.k, 61471
  %.not9 = icmp eq i64 %i.l, 28698
  br i1 %.not9, label %bb.h, label %rb_obj_is_iseq.exit.thread

rb_obj_is_iseq.exit.thread:                       ; preds = %bb.e, %rb_obj_is_iseq.exit
  %i.m = load i64, ptr %.pre, align 8, !tbaa !125
  %i.n = and i64 %i.m, 8192
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_obj_is_iseq.exit.thread
  %i.o = getelementptr i8, ptr %.pre, i64 16
  br label %RARRAY_AREF.exit

bb.g:                                             ; preds = %rb_obj_is_iseq.exit.thread
  %i.p = getelementptr i8, ptr %.pre, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.f, %bb.g
  %.0.i.i6 = phi ptr [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = load i64, ptr %.0.i.i6, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %rb_obj_is_iseq.exit, %RARRAY_AREF.exit
  %.0 = phi i64 [ %i.r, %RARRAY_AREF.exit ], [ 4, %rb_obj_is_iseq.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_tracearg_instruction_sequence(ptr nofree noundef nonnull readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !129  ; 4 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !79
  %i.d = and i32 %i.c, 8192
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 36
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.2) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %i.b, 0
  %i.h = and i64 %i.b, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  %.pre = inttoptr i64 %i.b to ptr                ; 5 uses
  br i1 %i.j, label %rb_obj_is_iseq.exit.thread, label %rb_obj_is_iseq.exit, !prof !74

rb_obj_is_iseq.exit:                              ; preds = %bb.e
  %i.k = load i64, ptr %.pre, align 8, !tbaa !125
  %i.l = and i64 %i.k, 61471
  %.not10 = icmp eq i64 %i.l, 28698
  br i1 %.not10, label %bb.h, label %rb_obj_is_iseq.exit.thread

rb_obj_is_iseq.exit.thread:                       ; preds = %bb.e, %rb_obj_is_iseq.exit
  %i.m = load i64, ptr %.pre, align 8, !tbaa !125
  %i.n = and i64 %i.m, 8192
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_obj_is_iseq.exit.thread
  %i.o = getelementptr i8, ptr %.pre, i64 16
  br label %RARRAY_AREF.exit

bb.g:                                             ; preds = %rb_obj_is_iseq.exit.thread
  %i.p = getelementptr i8, ptr %.pre, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.f, %bb.g
  %.0.i.i7 = phi ptr [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = getelementptr i8, ptr %.0.i.i7, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %i.t = inttoptr i64 %i.s to ptr
  br label %bb.h

bb.h:                                             ; preds = %rb_obj_is_iseq.exit, %RARRAY_AREF.exit
  %.sink = phi ptr [ %i.t, %RARRAY_AREF.exit ], [ %.pre, %rb_obj_is_iseq.exit ]
  %i.u = tail call i64 @rb_iseqw_new(ptr noundef %.sink) #6
  ret i64 %i.u
}

declare i64 @rb_iseqw_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 37, 36) i64 @rb_tracearg_object(ptr nofree noundef nonnull readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !79
  %i.b = and i32 %i.a, 3145728
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !129  ; 2 uses
  %i.f = icmp eq i64 %i.e, 36
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.3) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_tracepoint_enable(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !125
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !132  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.p, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !135  ; 2 uses
  %i.s = icmp eq ptr %i.r, @tp_data_type
  br i1 %i.s, label %tpptr.exit, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit

tpptr.exit:                                       ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 5 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !141
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %tpptr.exit
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.4) #19
  unreachable

bb.f:                                             ; preds = %tpptr.exit
  %i.x = getelementptr i8, ptr %.1.i.i, i64 4     ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !143
  %.not10 = icmp eq i32 %i.y, 0
  br i1 %.not10, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %.1.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !144 ; 2 uses
  %.not11 = icmp eq ptr %i.aa, null
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !145
  %i.ad = load i32, ptr %.1.i.i, align 8, !tbaa !146
  tail call void @rb_thread_add_event_hook2(i64 noundef %i.ac, ptr noundef nonnull @tp_call_trace, i32 noundef %i.ad, i64 noundef %0, i32 noundef 5)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %.1.i.i, align 8, !tbaa !146
  tail call void @rb_add_event_hook2(ptr noundef nonnull @tp_call_trace, i32 noundef %i.ae, i64 noundef %0, i32 noundef 5)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 1, ptr %i.x, align 4, !tbaa !143
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tp_call_trace(i64 noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.b, align 8, !tbaa !34
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !125
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !132  ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.r, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr i8, ptr %.016.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !135  ; 2 uses
  %i.u = icmp eq ptr %i.t, @tp_data_type
  br i1 %i.u, label %tpptr.exit, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit

tpptr.exit:                                       ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.d ] ; 4 uses
  %i.w = getelementptr i8, ptr %.1.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !147  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %tpptr.exit
  %i.y = getelementptr i8, ptr %.1.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148
  tail call void %i.x(i64 noundef %0, ptr noundef %i.z) #6
  br label %bb.j

bb.f:                                             ; preds = %tpptr.exit
  %i.aa = getelementptr i8, ptr %.1.i.i, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !149
  %i.ac = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i5, label %bb.g, label %rb_current_ractor.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  store volatile ptr %i.ae, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %.val.i.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.ah, %bb.h ], [ null, %bb.g ]
  %i.ai = icmp eq ptr %i.ab, %.0.i.i
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_current_ractor.exit
  %i.aj = getelementptr i8, ptr %.1.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !151
  %i.al = call i64 @rb_proc_call_with_block(i64 noundef %i.ak, i32 noundef 1, ptr noundef nonnull %i.b, i64 noundef 4) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %rb_current_ractor.exit, %bb.i, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_method_def_local_hooks(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call ptr @rb_ractor_targeted_hooks(ptr noundef %1) #6
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = call i32 @rb_st_lookup(ptr noundef %i.b, i64 noundef %i.c, ptr noundef nonnull %i.a) #6
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !34
  %i.f = inttoptr i64 %i.e to ptr
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #27 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 2, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !152
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = call i32 @rb_st_insert(ptr noundef %i.j, i64 noundef %i.c, i64 noundef %i.k) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_ractor_targeted_hooks(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_tracepoint_disable(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !125
  %i.j = and i64 %i.i, 95
  %or.cond.not.i.i = icmp eq i64 %i.j, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !132  ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = trunc i64 %i.l to i1
  %i.p = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  br i1 %i.o, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.s, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.t = getelementptr i8, ptr %.016.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135  ; 2 uses
  %i.v = icmp eq ptr %i.u, @tp_data_type
  br i1 %i.v, label %tpptr.exit, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit

tpptr.exit:                                       ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.w, %.critedge.i.i ], [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.r, %bb.d ] ; 7 uses
  %i.x = getelementptr i8, ptr %.1.i.i, i64 16    ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !141
  %i.z = and i64 %i.y, -5
  %.not44 = icmp eq i64 %i.z, 0
  br i1 %.not44, label %bb.l, label %bb.e

bb.e:                                             ; preds = %tpptr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.aa = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150
  %.not.i.i21 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i21, label %bb.f, label %rb_vm_lock_enter.exit

bb.f:                                             ; preds = %bb.e
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #6
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.e, %bb.f
  %i.ab = getelementptr i8, ptr %.1.i.i, i64 48
  call void @rb_vm_barrier() #6
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !141
  call void @rb_hash_foreach(i64 noundef %i.ac, ptr noundef nonnull @disable_local_tracepoint_i, i64 noundef %0) #6
  store i64 0, ptr %i.x, align 8, !tbaa !34
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !149
  %i.ae = getelementptr i8, ptr %i.ad, i64 48     ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !159
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !159
  %i.ah = load i32, ptr %.1.i.i, align 8, !tbaa !146 ; 2 uses
  %i.ai = and i32 %i.ah, 213887
  %.not18 = icmp eq i32 %i.ai, 0
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_vm_lock_enter.exit
  %i.aj = load i32, ptr @ruby_vm_iseq_events_enabled, align 4, !tbaa !7
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @ruby_vm_iseq_events_enabled, align 4, !tbaa !7
  %.pre = load i32, ptr %.1.i.i, align 8, !tbaa !146
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_vm_lock_enter.exit
  %i.al = phi i32 [ %.pre, %bb.g ], [ %i.ah, %rb_vm_lock_enter.exit ]
  %i.am = and i32 %i.al, 96
  %or.cond = icmp eq i32 %i.am, 0
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ap = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150
  %.not.i.i22 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i22, label %bb.k, label %rb_vm_lock_leave.exit

bb.k:                                             ; preds = %bb.j
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #6
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %remove_event_hook_from_list.exit

bb.l:                                             ; preds = %tpptr.exit
  %i.aq = getelementptr i8, ptr %.1.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !144 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %rb_ec_ractor_hooks.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.au = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32
  store volatile ptr %i.av, ptr %i.b, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aw = tail call ptr @rb_check_typeddata(i64 noundef %i.at, ptr noundef nonnull @ruby_threadptr_data_type) #6 ; 2 uses
  %i.ax = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48 ; 2 uses
  %.val10.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val10.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %rb_ec_ractor_hooks.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr i8, ptr %.val10.i.i.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !68
  br label %rb_ec_ractor_hooks.exit.i.i.i

rb_ec_ractor_hooks.exit.i.i.i:                    ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi ptr [ %i.az, %bb.n ], [ null, %bb.m ]
  %i.ba = getelementptr i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bb = tail call fastcc i32 @remove_event_hook_from_list(ptr noundef %i.ba, ptr noundef readnone %i.aw, ptr noundef nonnull readnone @tp_call_trace, i64 noundef %0) ; 0 uses
  %.val.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 2 uses
  %.not.i.i11.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i11.i.i.i, label %rb_thread_remove_event_hook_with_data.exit, label %bb.o

bb.o:                                             ; preds = %rb_ec_ractor_hooks.exit.i.i.i
  %i.bc = getelementptr i8, ptr %.val.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49
  br label %rb_thread_remove_event_hook_with_data.exit

rb_thread_remove_event_hook_with_data.exit:       ; preds = %rb_ec_ractor_hooks.exit.i.i.i, %bb.o
  %.0.i.i12.i.i.i = phi ptr [ %i.bd, %bb.o ], [ null, %rb_ec_ractor_hooks.exit.i.i.i ]
  %i.be = getelementptr i8, ptr %.0.i.i12.i.i.i, i64 1112
  %i.bf = tail call fastcc i32 @remove_event_hook_from_list(ptr noundef %i.be, ptr noundef readnone %i.aw, ptr noundef nonnull readnone @tp_call_trace, i64 noundef %0) ; 0 uses
  br label %remove_event_hook_from_list.exit

rb_ec_ractor_hooks.exit.i.i:                      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  store volatile ptr %i.bh, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..i.i23 = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i23, i64 48 ; 2 uses
  %.val10.i.i = load ptr, ptr %i.bi, align 8, !tbaa !38, !nonnull !71, !noundef !71 ; 3 uses
  %i.bj = getelementptr i8, ptr %.val10.i.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16     ; 2 uses
  %.019.i24 = load ptr, ptr %i.bl, align 8, !tbaa !11 ; 3 uses
  %.not20.i25 = icmp eq ptr %.019.i24, null
  br i1 %.not20.i25, label %._crit_edge.i34, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %rb_ec_ractor_hooks.exit.i.i
  %i.bm = icmp eq i64 %0, 36
  %i.bn = getelementptr i8, ptr %i.bk, i64 36     ; 2 uses
  br i1 %i.bm, label %.lr.ph.split.split.us.split.i37, label %.lr.ph.split.split.split.i28

.lr.ph.split.split.us.split.i37:                  ; preds = %.lr.ph.i26, %bb.r
  %.022.us23.i38 = phi ptr [ %.0.us27.i41, %bb.r ], [ %.019.i24, %.lr.ph.i26 ] ; 5 uses
  %i.bo = getelementptr i8, ptr %.022.us23.i38, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !35
  %i.bq = icmp eq ptr %i.bp, @tp_call_trace
  br i1 %i.bq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph.split.split.us.split.i37
  %i.br = getelementptr i8, ptr %.022.us23.i38, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = load i32, ptr %.022.us23.i38, align 8, !tbaa !27
  %i.bv = or i32 %i.bu, 2
  store i32 %i.bv, ptr %.022.us23.i38, align 8, !tbaa !27
  store i8 1, ptr %i.bn, align 4, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.split.split.us.split.i37
  %i.bw = getelementptr i8, ptr %.022.us23.i38, i64 24
  %.0.us27.i41 = load ptr, ptr %i.bw, align 8, !tbaa !11 ; 2 uses
  %.not.us28.i42 = icmp eq ptr %.0.us27.i41, null
  br i1 %.not.us28.i42, label %._crit_edge.i34, label %.lr.ph.split.split.us.split.i37, !llvm.loop !72

.lr.ph.split.split.split.i28:                     ; preds = %.lr.ph.i26, %bb.v
  %.022.i29 = phi ptr [ %.0.i32, %bb.v ], [ %.019.i24, %.lr.ph.i26 ] ; 6 uses
  %i.bx = getelementptr i8, ptr %.022.i29, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !35
  %i.bz = icmp eq ptr %i.by, @tp_call_trace
  br i1 %i.bz, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph.split.split.split.i28
  %i.ca = getelementptr i8, ptr %.022.i29, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !37
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr i8, ptr %.022.i29, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.cf = icmp eq i64 %i.ce, %0
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cg = load i32, ptr %.022.i29, align 8, !tbaa !27
  %i.ch = or i32 %i.cg, 2
  store i32 %i.ch, ptr %.022.i29, align 8, !tbaa !27
  store i8 1, ptr %i.bn, align 4, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %.lr.ph.split.split.split.i28
  %i.ci = getelementptr i8, ptr %.022.i29, i64 24
  %.0.i32 = load ptr, ptr %i.ci, align 8, !tbaa !11 ; 2 uses
  %.not.i33 = icmp eq ptr %.0.i32, null
  br i1 %.not.i33, label %._crit_edge.i34, label %.lr.ph.split.split.split.i28, !llvm.loop !72

._crit_edge.i34:                                  ; preds = %bb.v, %bb.r, %rb_ec_ractor_hooks.exit.i.i
  %i.cj = getelementptr i8, ptr %i.bk, i64 36
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !22, !range !73, !noundef !71
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.w, label %remove_event_hook_from_list.exit43, !prof !74

bb.w:                                             ; preds = %._crit_edge.i34
  %i.cm = getelementptr i8, ptr %i.bk, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !25
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.x, label %remove_event_hook_from_list.exit43

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @clean_hooks(ptr noundef nonnull %i.bl)
  %.val.i.i.pre = load ptr, ptr %i.bi, align 8, !tbaa !38
  br label %remove_event_hook_from_list.exit43

remove_event_hook_from_list.exit43:               ; preds = %._crit_edge.i34, %bb.w, %bb.x
  %.val.i.i = phi ptr [ %.val10.i.i, %._crit_edge.i34 ], [ %.val10.i.i, %bb.w ], [ %.val.i.i.pre, %bb.x ]
  %i.cp = getelementptr i8, ptr %.val.i.i, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !49 ; 4 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 1112   ; 2 uses
  %.019.i = load ptr, ptr %i.cr, align 8, !tbaa !11 ; 3 uses
  %.not20.i = icmp eq ptr %.019.i, null
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %remove_event_hook_from_list.exit43
  %i.cs = icmp eq i64 %0, 36
  %i.ct = getelementptr i8, ptr %i.cq, i64 1132   ; 2 uses
  br i1 %i.cs, label %.lr.ph.split.split.us.split.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.us.split.i:                    ; preds = %.lr.ph.i, %bb.aa
  %.022.us23.i = phi ptr [ %.0.us27.i, %bb.aa ], [ %.019.i, %.lr.ph.i ] ; 5 uses
  %i.cu = getelementptr i8, ptr %.022.us23.i, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !35
  %i.cw = icmp eq ptr %i.cv, @tp_call_trace
  br i1 %i.cw, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %.lr.ph.split.split.us.split.i
  %i.cx = getelementptr i8, ptr %.022.us23.i, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !37
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.da = load i32, ptr %.022.us23.i, align 8, !tbaa !27
  %i.db = or i32 %i.da, 2
  store i32 %i.db, ptr %.022.us23.i, align 8, !tbaa !27
  store i8 1, ptr %i.ct, align 4, !tbaa !22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.lr.ph.split.split.us.split.i
  %i.dc = getelementptr i8, ptr %.022.us23.i, i64 24
  %.0.us27.i = load ptr, ptr %i.dc, align 8, !tbaa !11 ; 2 uses
  %.not.us28.i = icmp eq ptr %.0.us27.i, null
  br i1 %.not.us28.i, label %._crit_edge.i, label %.lr.ph.split.split.us.split.i, !llvm.loop !72

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.i, %bb.ae
  %.022.i = phi ptr [ %.0.i, %bb.ae ], [ %.019.i, %.lr.ph.i ] ; 6 uses
  %i.dd = getelementptr i8, ptr %.022.i, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !35
  %i.df = icmp eq ptr %i.de, @tp_call_trace
  br i1 %i.df, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %.lr.ph.split.split.split.i
  %i.dg = getelementptr i8, ptr %.022.i, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !37
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dj = getelementptr i8, ptr %.022.i, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !14
  %i.dl = icmp eq i64 %i.dk, %0
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i32, ptr %.022.i, align 8, !tbaa !27
  %i.dn = or i32 %i.dm, 2
  store i32 %i.dn, ptr %.022.i, align 8, !tbaa !27
  store i8 1, ptr %i.ct, align 4, !tbaa !22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %.lr.ph.split.split.split.i
  %i.do = getelementptr i8, ptr %.022.i, i64 24
  %.0.i = load ptr, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.split.split.split.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %bb.ae, %bb.aa, %remove_event_hook_from_list.exit43
  %i.dp = getelementptr i8, ptr %i.cq, i64 1132
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !22, !range !73, !noundef !71
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.af, label %remove_event_hook_from_list.exit, !prof !74

bb.af:                                            ; preds = %._crit_edge.i
  %i.ds = getelementptr i8, ptr %i.cq, i64 1124
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !25
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %remove_event_hook_from_list.exit

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @clean_hooks(ptr noundef nonnull %i.cr)
  br label %remove_event_hook_from_list.exit

remove_event_hook_from_list.exit:                 ; preds = %bb.ag, %bb.af, %._crit_edge.i, %rb_thread_remove_event_hook_with_data.exit, %rb_vm_lock_leave.exit
  %i.dv = getelementptr i8, ptr %.1.i.i, i64 4
  store i32 0, ptr %i.dv, align 4, !tbaa !143
  %i.dw = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr null, ptr %i.dw, align 8, !tbaa !144
  ret i64 36
}

declare void @rb_vm_barrier() local_unnamed_addr #2

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @disable_local_tracepoint_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = icmp eq i64 %2, 0
  %i.e = and i64 %2, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.h = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !125
  %i.j = and i64 %i.i, 95
  %or.cond.not.i.i = icmp eq i64 %i.j, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !132  ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = trunc i64 %i.l to i1
  %i.p = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  br i1 %i.o, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.s, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.t = getelementptr i8, ptr %.016.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135  ; 2 uses
  %i.v = icmp eq ptr %i.u, @tp_data_type
  br i1 %i.v, label %tpptr.exit, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit

tpptr.exit:                                       ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.w, %.critedge.i.i ], [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %tpptr.exit
  %i.x = inttoptr i64 %0 to ptr
  %i.y = getelementptr i8, ptr %.1.i.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !149
  %i.aa = tail call i32 @rb_iseq_remove_local_tracepoint_recursively(ptr noundef %i.x, i64 noundef %2, ptr noundef %i.z) #6 ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %tpptr.exit
  %i.ab = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i11, label %bb.g, label %rb_current_ractor.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  store volatile ptr %i.ad, ptr %i.b, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %.val.i.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.ag, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.ah = tail call ptr @rb_method_def(i64 noundef %0) #6 ; 3 uses
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ai = tail call ptr @rb_ractor_targeted_hooks(ptr noundef %.0.i.i) #6
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = call i32 @rb_st_lookup(ptr noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !34
  %i.am = inttoptr i64 %i.al to ptr               ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.01415.i = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not16.i = icmp eq ptr %.01415.i, null
  br i1 %.not16.i, label %rb_hook_list_remove_local_tracepoint.exit.thread, label %.lr.ph.i

rb_hook_list_remove_local_tracepoint.exit.thread: ; preds = %rb_current_ractor.exit
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !26
  br label %bb.p

.lr.ph.i:                                         ; preds = %rb_current_ractor.exit
  %i.ao = getelementptr i8, ptr %i.am, i64 20     ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph.i
  %.01419.i.ph = phi ptr [ %.014.i19, %.thread ], [ %.01415.i, %.lr.ph.i ]
  %.018.i.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph.i ]
  %.01217.i.ph = phi i32 [ %.01217.i, %.thread ], [ 0, %.lr.ph.i ]
  br label %bb.i

bb.i:                                             ; preds = %.outer, %bb.l
  %.01419.i = phi ptr [ %.014.i, %bb.l ], [ %.01419.i.ph, %.outer ] ; 6 uses
  %.01217.i = phi i32 [ %.113.i, %bb.l ], [ %.01217.i.ph, %.outer ] ; 4 uses
  %i.ap = getelementptr i8, ptr %.01419.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !14
  %i.ar = icmp eq i64 %i.aq, %2
  %i.as = load i32, ptr %.01419.i, align 8, !tbaa !27 ; 2 uses
  br i1 %i.ar, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = and i32 %i.as, 2
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr i8, ptr %.01419.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !30
  %i.ax = or i32 %i.aw, %.01217.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.113.i = phi i32 [ %.01217.i, %bb.j ], [ %i.ax, %bb.k ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.01419.i, i64 24
  %.014.i = load ptr, ptr %i.ay, align 8, !tbaa !11 ; 2 uses
  %.not.i12 = icmp eq ptr %.014.i, null
  br i1 %.not.i12, label %rb_hook_list_remove_local_tracepoint.exit, label %bb.i, !llvm.loop !162

.thread:                                          ; preds = %bb.i
  %i.az = or i32 %i.as, 2
  store i32 %i.az, ptr %.01419.i, align 8, !tbaa !27
  store i8 1, ptr %i.ao, align 4, !tbaa !22
  %i.ba = getelementptr i8, ptr %.01419.i, i64 24
  %.014.i19 = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %.not.i1220 = icmp eq ptr %.014.i19, null
  br i1 %.not.i1220, label %rb_hook_list_remove_local_tracepoint.exit.thread23, label %.outer, !llvm.loop !162

rb_hook_list_remove_local_tracepoint.exit.thread23: ; preds = %.thread
  %i.bb = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  store i32 %.01217.i, ptr %i.bb, align 8, !tbaa !26
  br label %bb.m

rb_hook_list_remove_local_tracepoint.exit:        ; preds = %bb.l
  %i.bc = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  store i32 %.113.i, ptr %i.bc, align 8, !tbaa !26
  br i1 %.018.i.ph, label %bb.m, label %bb.p

bb.m:                                             ; preds = %rb_hook_list_remove_local_tracepoint.exit.thread23, %rb_hook_list_remove_local_tracepoint.exit
  %i.bd = phi ptr [ %i.bb, %rb_hook_list_remove_local_tracepoint.exit.thread23 ], [ %i.bc, %rb_hook_list_remove_local_tracepoint.exit ]
  %i.be = getelementptr i8, ptr %i.ah, i64 24     ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !130
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !130
  %i.bh = load i32, ptr %i.bd, align 8, !tbaa !26
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %rb_hook_list_free.exit

bb.n:                                             ; preds = %bb.m
  %i.bj = call ptr @rb_ractor_targeted_hooks(ptr noundef %.0.i.i) #6
  %i.bk = call i32 @rb_st_delete(ptr noundef %i.bj, ptr noundef nonnull %i.c, ptr noundef null) #6 ; 0 uses
  store i8 1, ptr %i.ao, align 4, !tbaa !22
  %i.bl = getelementptr i8, ptr %i.am, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !25
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %rb_hook_list_free.exit

bb.o:                                             ; preds = %bb.n
  call fastcc void @clean_hooks(ptr noundef nonnull %i.am)
  br label %rb_hook_list_free.exit

rb_hook_list_free.exit:                           ; preds = %bb.o, %bb.n, %bb.m
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !160
  call void @rb_method_definition_release(ptr noundef %i.bo) #6
  br label %bb.p

bb.p:                                             ; preds = %rb_hook_list_remove_local_tracepoint.exit.thread, %rb_hook_list_remove_local_tracepoint.exit, %rb_hook_list_free.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_hook_list_connect_local_tracepoint(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !125
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !132  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.p, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !135  ; 2 uses
  %i.s = icmp eq ptr %i.r, @tp_data_type
  br i1 %i.s, label %tpptr.exit, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit

tpptr.exit:                                       ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load i32, ptr %.1.i.i, align 8, !tbaa !146 ; 2 uses
  %i.v = and i32 %i.u, 213887                     ; 3 uses
  %.not.i = icmp samesign ult i32 %i.v, 65536
  %i.w = and i32 %i.u, 17279
  %.not12.i = icmp eq i32 %i.w, 0
  %or.cond.i = or i1 %.not.i, %.not12.i
  br i1 %or.cond.i, label %alloc_event_hook.exit, label %bb.e

bb.e:                                             ; preds = %tpptr.exit
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.37) #19
  unreachable

alloc_event_hook.exit:                            ; preds = %tpptr.exit
  %i.y = tail call noalias nonnull dereferenceable(48) ptr @ruby_xmalloc(i64 noundef 48) #25 ; 8 uses
  store i32 5, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.v, ptr %i.z, align 4, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @tp_call_trace, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %1, ptr %i.ab, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.ac, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i32 %2, ptr %i.ad, align 8, !tbaa !36
  %i.ae = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !26
  %i.ag = load ptr, ptr %0, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !28
  store ptr %i.y, ptr %0, align 8, !tbaa !69
  %i.ai = or i32 %i.af, %i.v
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_hook_list_remove_local_tracepoint(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %.01415 = load ptr, ptr %0, align 8, !tbaa !11  ; 2 uses
  %.not16 = icmp eq ptr %.01415, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.01419 = phi ptr [ %.01415, %.lr.ph ], [ %.014, %bb.f ] ; 5 uses
  %.018 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %.01217 = phi i32 [ 0, %.lr.ph ], [ %.113, %bb.f ] ; 3 uses
  %i.b = getelementptr i8, ptr %.01419, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq i64 %i.c, %1
  %i.e = load i32, ptr %.01419, align 8, !tbaa !27 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = or i32 %i.e, 2
  store i32 %i.f, ptr %.01419, align 8, !tbaa !27
  store i8 1, ptr %i.a, align 4, !tbaa !22
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = and i32 %i.e, 2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.01419, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !30
  %i.k = or i32 %i.j, %.01217
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.113 = phi i32 [ %.01217, %bb.c ], [ %i.k, %bb.e ], [ %.01217, %bb.d ] ; 2 uses
  %.1 = phi i1 [ true, %bb.c ], [ %.018, %bb.e ], [ %.018, %bb.d ] ; 2 uses
  %i.l = getelementptr i8, ptr %.01419, i64 24
  %.014 = load ptr, ptr %i.l, align 8, !tbaa !11  ; 2 uses
  %.not = icmp eq ptr %.014, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %.113, %bb.f ]
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %bb.f ]
  %i.m = getelementptr i8, ptr %0, i64 8
  store i32 %.012.lcssa, ptr %i.m, align 8, !tbaa !26
  ret i1 %.0.lcssa
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 21) i64 @rb_tracepoint_enabled_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !125
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !132  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.p, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !135  ; 2 uses
  %i.s = icmp eq ptr %i.r, @tp_data_type
  br i1 %i.s, label %tpptr.exit, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit

tpptr.exit:                                       ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !143
  %.not = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not, i64 0, i64 20
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_tracepoint_new(i64 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = and i64 %0, -5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ruby_threadptr_data_type) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i64, ptr @rb_cTracePoint, align 8, !tbaa !34
  %i.e = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.d, i64 noundef 64, ptr noundef nonnull @tp_data_type) #6 ; 6 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = and i64 %i.e, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.c
  %i.j = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !125
  %i.l = and i64 %i.k, 95
  %or.cond.not.i.i = icmp eq i64 %i.l, 76
  br i1 %or.cond.not.i.i, label %bb.d, label %.critedge.i.i, !prof !131

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !132  ; 2 uses
  %i.o = and i64 %i.n, -2                         ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = trunc i64 %i.n to i1
  %i.r = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  br i1 %i.q, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.s, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = icmp eq i64 %i.o, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.f
  %.016.i.i = phi ptr [ %i.w, %bb.f ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  %i.v = getelementptr i8, ptr %.016.i.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 2 uses
  %i.x = icmp eq ptr %i.w, @tp_data_type
  br i1 %i.x, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.c
  %i.y = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @tp_data_type) #6
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.f, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.y, %.critedge.i.i ], [ %i.t, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.t, %bb.f ] ; 6 uses
  %i.z = getelementptr i8, ptr %.1.i.i, i64 40
  store i64 36, ptr %i.z, align 8, !tbaa !34
  %i.aa = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %bb.g, label %tracepoint_new.exit

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32
  store volatile ptr %i.ac, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %tracepoint_new.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  br label %tracepoint_new.exit

tracepoint_new.exit:                              ; preds = %rbimpl_check_typeddata.exit.i, %bb.g, %bb.h
  %.0.i.i.i = phi ptr [ %i.aa, %rbimpl_check_typeddata.exit.i ], [ %i.af, %bb.h ], [ null, %bb.g ]
  %i.ag = getelementptr i8, ptr %.1.i.i, i64 48
  store ptr %.0.i.i.i, ptr %i.ag, align 8, !tbaa !149
  %i.ah = getelementptr i8, ptr %.1.i.i, i64 24
  store ptr %2, ptr %i.ah, align 8, !tbaa !147
  %i.ai = getelementptr i8, ptr %.1.i.i, i64 32
  store ptr %3, ptr %i.ai, align 8, !tbaa !148
  store i32 %1, ptr %.1.i.i, align 8, !tbaa !146
  %i.aj = getelementptr i8, ptr %.1.i.i, i64 56
  store i64 %i.e, ptr %i.aj, align 8, !tbaa !163
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_builtin_trace_point() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_load_with_builtin_functions(ptr noundef nonnull @.str.27, ptr noundef nonnull @Init_builtin_trace_point.trace_point_table) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tracepoint_new_s(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %i.d = and i64 %i.c, 8192
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 15
  %i.f = and i64 %i.e, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !130
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = icmp sgt i64 %.0.i, 0
  br i1 %i.i, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %rb_array_len.exit
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %i.k = getelementptr i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %symbol2event_flag.exit
  %.046 = phi i32 [ 0, %.preheader ], [ %i.bs, %symbol2event_flag.exit ]
  %.01045 = phi i64 [ 0, %.preheader ], [ %i.bt, %symbol2event_flag.exit ] ; 2 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !125
  %i.m = and i64 %i.l, 8192
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %RARRAY_AREF.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !130
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.n, %bb.e ], [ %i.j, %bb.d ]
  %i.o = getelementptr [8 x i8], ptr %.0.i.i, i64 %.01045
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = tail call i64 @rb_to_symbol_type(i64 noundef %i.p) #6 ; 18 uses
  %.pr.i.i = load i64, ptr @symbol2event_flag.rbimpl_id, align 8, !tbaa !34 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %RARRAY_AREF.exit, %.lr.ph.i.i
  %i.r = tail call i64 @rb_intern2(ptr noundef nonnull @.str.39, i64 noundef 4) #6 ; 3 uses
  store i64 %i.r, ptr @symbol2event_flag.rbimpl_id, align 8, !tbaa !34
  %.not.i.i13 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i13, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !119

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %RARRAY_AREF.exit
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %RARRAY_AREF.exit ], [ %i.r, %.lr.ph.i.i ]
  %i.s = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i.i) #6
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %symbol2event_flag.exit, label %bb.f

bb.f:                                             ; preds = %rbimpl_intern_const.exit.i
  %.pr.i38.i = load i64, ptr @symbol2event_flag.rbimpl_id.70, align 8, !tbaa !34 ; 2 uses
  %.not4.i39.i = icmp eq i64 %.pr.i38.i, 0
  br i1 %.not4.i39.i, label %.lr.ph.i41.i, label %rbimpl_intern_const.exit43.i

.lr.ph.i41.i:                                     ; preds = %bb.f, %.lr.ph.i41.i
  %i.u = tail call i64 @rb_intern2(ptr noundef nonnull @.str.41, i64 noundef 5) #6 ; 3 uses
  store i64 %i.u, ptr @symbol2event_flag.rbimpl_id.70, align 8, !tbaa !34
  %.not.i42.i = icmp eq i64 %i.u, 0
  br i1 %.not.i42.i, label %.lr.ph.i41.i, label %rbimpl_intern_const.exit43.i, !llvm.loop !119

rbimpl_intern_const.exit43.i:                     ; preds = %.lr.ph.i41.i, %bb.f
  %.lcssa.i40.i = phi i64 [ %.pr.i38.i, %bb.f ], [ %i.u, %.lr.ph.i41.i ]
  %i.v = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i40.i) #6
  %i.w = icmp eq i64 %i.q, %i.v
  br i1 %i.w, label %symbol2event_flag.exit, label %bb.g

bb.g:                                             ; preds = %rbimpl_intern_const.exit43.i
  %.pr.i44.i = load i64, ptr @symbol2event_flag.rbimpl_id.71, align 8, !tbaa !34 ; 2 uses
  %.not4.i45.i = icmp eq i64 %.pr.i44.i, 0
  br i1 %.not4.i45.i, label %.lr.ph.i47.i, label %rbimpl_intern_const.exit49.i

.lr.ph.i47.i:                                     ; preds = %bb.g, %.lr.ph.i47.i
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.43, i64 noundef 3) #6 ; 3 uses
  store i64 %i.x, ptr @symbol2event_flag.rbimpl_id.71, align 8, !tbaa !34
  %.not.i48.i = icmp eq i64 %i.x, 0
  br i1 %.not.i48.i, label %.lr.ph.i47.i, label %rbimpl_intern_const.exit49.i, !llvm.loop !119

rbimpl_intern_const.exit49.i:                     ; preds = %.lr.ph.i47.i, %bb.g
  %.lcssa.i46.i = phi i64 [ %.pr.i44.i, %bb.g ], [ %i.x, %.lr.ph.i47.i ]
  %i.y = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i46.i) #6
  %i.z = icmp eq i64 %i.q, %i.y
  br i1 %i.z, label %symbol2event_flag.exit, label %bb.h

bb.h:                                             ; preds = %rbimpl_intern_const.exit49.i
  %.pr.i50.i = load i64, ptr @symbol2event_flag.rbimpl_id.72, align 8, !tbaa !34 ; 2 uses
  %.not4.i51.i = icmp eq i64 %.pr.i50.i, 0
  br i1 %.not4.i51.i, label %.lr.ph.i53.i, label %rbimpl_intern_const.exit55.i

.lr.ph.i53.i:                                     ; preds = %bb.h, %.lr.ph.i53.i
  %i.aa = tail call i64 @rb_intern2(ptr noundef nonnull @.str.45, i64 noundef 4) #6 ; 3 uses
  store i64 %i.aa, ptr @symbol2event_flag.rbimpl_id.72, align 8, !tbaa !34
  %.not.i54.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i54.i, label %.lr.ph.i53.i, label %rbimpl_intern_const.exit55.i, !llvm.loop !119

rbimpl_intern_const.exit55.i:                     ; preds = %.lr.ph.i53.i, %bb.h
  %.lcssa.i52.i = phi i64 [ %.pr.i50.i, %bb.h ], [ %i.aa, %.lr.ph.i53.i ]
  %i.ab = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i52.i) #6
  %i.ac = icmp eq i64 %i.q, %i.ab
  br i1 %i.ac, label %symbol2event_flag.exit, label %bb.i

bb.i:                                             ; preds = %rbimpl_intern_const.exit55.i
  %.pr.i56.i = load i64, ptr @symbol2event_flag.rbimpl_id.73, align 8, !tbaa !34 ; 2 uses
  %.not4.i57.i = icmp eq i64 %.pr.i56.i, 0
  br i1 %.not4.i57.i, label %.lr.ph.i59.i, label %rbimpl_intern_const.exit61.i

.lr.ph.i59.i:                                     ; preds = %bb.i, %.lr.ph.i59.i
  %i.ad = tail call i64 @rb_intern2(ptr noundef nonnull @.str.47, i64 noundef 6) #6 ; 3 uses
  store i64 %i.ad, ptr @symbol2event_flag.rbimpl_id.73, align 8, !tbaa !34
  %.not.i60.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i60.i, label %.lr.ph.i59.i, label %rbimpl_intern_const.exit61.i, !llvm.loop !119

rbimpl_intern_const.exit61.i:                     ; preds = %.lr.ph.i59.i, %bb.i
  %.lcssa.i58.i = phi i64 [ %.pr.i56.i, %bb.i ], [ %i.ad, %.lr.ph.i59.i ]
  %i.ae = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i58.i) #6
  %i.af = icmp eq i64 %i.q, %i.ae
  br i1 %i.af, label %symbol2event_flag.exit, label %bb.j

bb.j:                                             ; preds = %rbimpl_intern_const.exit61.i
  %.pr.i62.i = load i64, ptr @symbol2event_flag.rbimpl_id.74, align 8, !tbaa !34 ; 2 uses
  %.not4.i63.i = icmp eq i64 %.pr.i62.i, 0
  br i1 %.not4.i63.i, label %.lr.ph.i65.i, label %rbimpl_intern_const.exit67.i

.lr.ph.i65.i:                                     ; preds = %bb.j, %.lr.ph.i65.i
  %i.ag = tail call i64 @rb_intern2(ptr noundef nonnull @.str.49, i64 noundef 6) #6 ; 3 uses
  store i64 %i.ag, ptr @symbol2event_flag.rbimpl_id.74, align 8, !tbaa !34
  %.not.i66.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i66.i, label %.lr.ph.i65.i, label %rbimpl_intern_const.exit67.i, !llvm.loop !119

rbimpl_intern_const.exit67.i:                     ; preds = %.lr.ph.i65.i, %bb.j
  %.lcssa.i64.i = phi i64 [ %.pr.i62.i, %bb.j ], [ %i.ag, %.lr.ph.i65.i ]
  %i.ah = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i64.i) #6
  %i.ai = icmp eq i64 %i.q, %i.ah
  br i1 %i.ai, label %symbol2event_flag.exit, label %bb.k

bb.k:                                             ; preds = %rbimpl_intern_const.exit67.i
  %.pr.i28 = load i64, ptr @symbol2event_flag.rbimpl_id.75, align 8, !tbaa !34 ; 2 uses
  %.not4.i29 = icmp eq i64 %.pr.i28, 0
  br i1 %.not4.i29, label %.lr.ph.i31, label %rbimpl_intern_const.exit33

.lr.ph.i31:                                       ; preds = %bb.k, %.lr.ph.i31
  %i.aj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.51, i64 noundef 8) #6 ; 3 uses
  store i64 %i.aj, ptr @symbol2event_flag.rbimpl_id.75, align 8, !tbaa !34
  %.not.i32 = icmp eq i64 %i.aj, 0
  br i1 %.not.i32, label %.lr.ph.i31, label %rbimpl_intern_const.exit33, !llvm.loop !119

rbimpl_intern_const.exit33:                       ; preds = %.lr.ph.i31, %bb.k
  %.lcssa.i30 = phi i64 [ %.pr.i28, %bb.k ], [ %i.aj, %.lr.ph.i31 ]
  %i.ak = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i30) #6
  %i.al = icmp eq i64 %i.q, %i.ak
  br i1 %i.al, label %symbol2event_flag.exit, label %bb.l

bb.l:                                             ; preds = %rbimpl_intern_const.exit33
  %.pr.i22 = load i64, ptr @symbol2event_flag.rbimpl_id.76, align 8, !tbaa !34 ; 2 uses
  %.not4.i23 = icmp eq i64 %.pr.i22, 0
  br i1 %.not4.i23, label %.lr.ph.i25, label %rbimpl_intern_const.exit27

.lr.ph.i25:                                       ; preds = %bb.l, %.lr.ph.i25
  %i.am = tail call i64 @rb_intern2(ptr noundef nonnull @.str.53, i64 noundef 5) #6 ; 3 uses
  store i64 %i.am, ptr @symbol2event_flag.rbimpl_id.76, align 8, !tbaa !34
  %.not.i26 = icmp eq i64 %i.am, 0
  br i1 %.not.i26, label %.lr.ph.i25, label %rbimpl_intern_const.exit27, !llvm.loop !119

rbimpl_intern_const.exit27:                       ; preds = %.lr.ph.i25, %bb.l
  %.lcssa.i24 = phi i64 [ %.pr.i22, %bb.l ], [ %i.am, %.lr.ph.i25 ]
  %i.an = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i24) #6
  %i.ao = icmp eq i64 %i.q, %i.an
  br i1 %i.ao, label %symbol2event_flag.exit, label %bb.m

bb.m:                                             ; preds = %rbimpl_intern_const.exit27
  %.pr.i16 = load i64, ptr @symbol2event_flag.rbimpl_id.77, align 8, !tbaa !34 ; 2 uses
  %.not4.i17 = icmp eq i64 %.pr.i16, 0
  br i1 %.not4.i17, label %.lr.ph.i19, label %rbimpl_intern_const.exit21

.lr.ph.i19:                                       ; preds = %bb.m, %.lr.ph.i19
  %i.ap = tail call i64 @rb_intern2(ptr noundef nonnull @.str.55, i64 noundef 6) #6 ; 3 uses
  store i64 %i.ap, ptr @symbol2event_flag.rbimpl_id.77, align 8, !tbaa !34
  %.not.i20 = icmp eq i64 %i.ap, 0
  br i1 %.not.i20, label %.lr.ph.i19, label %rbimpl_intern_const.exit21, !llvm.loop !119

rbimpl_intern_const.exit21:                       ; preds = %.lr.ph.i19, %bb.m
  %.lcssa.i18 = phi i64 [ %.pr.i16, %bb.m ], [ %i.ap, %.lr.ph.i19 ]
  %i.aq = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i18) #6
  %i.ar = icmp eq i64 %i.q, %i.aq
  br i1 %i.ar, label %symbol2event_flag.exit, label %bb.n

bb.n:                                             ; preds = %rbimpl_intern_const.exit21
  %.pr.i = load i64, ptr @symbol2event_flag.rbimpl_id.78, align 8, !tbaa !34 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.as = tail call i64 @rb_intern2(ptr noundef nonnull @.str.57, i64 noundef 8) #6 ; 3 uses
  store i64 %i.as, ptr @symbol2event_flag.rbimpl_id.78, align 8, !tbaa !34
  %.not.i15 = icmp eq i64 %i.as, 0
  br i1 %.not.i15, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !119

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.n
  %.lcssa.i = phi i64 [ %.pr.i, %bb.n ], [ %i.as, %.lr.ph.i ]
  %i.at = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #6
  %i.au = icmp eq i64 %i.q, %i.at
  br i1 %i.au, label %symbol2event_flag.exit, label %bb.o

bb.o:                                             ; preds = %rbimpl_intern_const.exit
  %i.av = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @symbol2event_flag.rbimpl_id.79, ptr noundef @.str.59) #28
  %i.aw = tail call i64 @rb_id2sym(i64 noundef %i.av) #6
  %i.ax = icmp eq i64 %i.q, %i.aw
  br i1 %i.ax, label %symbol2event_flag.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @symbol2event_flag.rbimpl_id.80, ptr noundef @.str.61) #28
  %i.az = tail call i64 @rb_id2sym(i64 noundef %i.ay) #6
  %i.ba = icmp eq i64 %i.q, %i.az
  br i1 %i.ba, label %symbol2event_flag.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @symbol2event_flag.rbimpl_id.81, ptr noundef @.str.63) #28
  %i.bc = tail call i64 @rb_id2sym(i64 noundef %i.bb) #6
  %i.bd = icmp eq i64 %i.q, %i.bc
  br i1 %i.bd, label %symbol2event_flag.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @symbol2event_flag.rbimpl_id.82, ptr noundef @.str.65) #28
  %i.bf = tail call i64 @rb_id2sym(i64 noundef %i.be) #6
  %i.bg = icmp eq i64 %i.q, %i.bf
  br i1 %i.bg, label %symbol2event_flag.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @symbol2event_flag.rbimpl_id.83, ptr noundef @.str.67) #28
  %i.bi = tail call i64 @rb_id2sym(i64 noundef %i.bh) #6
  %i.bj = icmp eq i64 %i.q, %i.bi
  br i1 %i.bj, label %symbol2event_flag.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @symbol2event_flag.rbimpl_id.84, ptr noundef @.str.85) #28
  %i.bl = tail call i64 @rb_id2sym(i64 noundef %i.bk) #6
  %i.bm = icmp eq i64 %i.q, %i.bl
  br i1 %i.bm, label %symbol2event_flag.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @symbol2event_flag.rbimpl_id.86, ptr noundef @.str.87) #28
  %i.bo = tail call i64 @rb_id2sym(i64 noundef %i.bn) #6
  %i.bp = icmp eq i64 %i.q, %i.bo
  br i1 %i.bp, label %symbol2event_flag.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  %i.br = tail call i64 @rb_sym2str(i64 noundef %i.q) #6
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bq, ptr noundef nonnull @.str.88, i64 noundef %i.br) #19
  unreachable

symbol2event_flag.exit:                           ; preds = %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit43.i, %rbimpl_intern_const.exit49.i, %rbimpl_intern_const.exit55.i, %rbimpl_intern_const.exit61.i, %rbimpl_intern_const.exit67.i, %rbimpl_intern_const.exit33, %rbimpl_intern_const.exit27, %rbimpl_intern_const.exit21, %rbimpl_intern_const.exit, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i12 = phi i32 [ 296, %bb.t ], [ 1, %rbimpl_intern_const.exit.i ], [ 2, %rbimpl_intern_const.exit43.i ], [ 4, %rbimpl_intern_const.exit49.i ], [ 8, %rbimpl_intern_const.exit55.i ], [ 16, %rbimpl_intern_const.exit61.i ], [ 32, %rbimpl_intern_const.exit67.i ], [ 64, %rbimpl_intern_const.exit33 ], [ 128, %rbimpl_intern_const.exit27 ], [ 256, %rbimpl_intern_const.exit21 ], [ 512, %rbimpl_intern_const.exit ], [ 1024, %bb.o ], [ 2048, %bb.p ], [ 4096, %bb.q ], [ 8192, %bb.r ], [ 16384, %bb.s ], [ 592, %bb.u ]
  %i.bs = or i32 %.0.i12, %.046                   ; 2 uses
  %i.bt = add nuw nsw i64 %.01045, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %.0.i
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !164

.loopexit:                                        ; preds = %symbol2event_flag.exit, %rb_array_len.exit
  %.1 = phi i32 [ 65535, %rb_array_len.exit ], [ %i.bs, %symbol2event_flag.exit ]
  %i.bu = tail call i32 @rb_block_given_p() #6
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.bv = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bv, ptr noundef nonnull @.str.69) #19
  unreachable

bb.x:                                             ; preds = %.loopexit
  %i.bw = tail call i64 @rb_block_proc() #6       ; 4 uses
  %i.bx = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %1, i64 noundef 64, ptr noundef nonnull @tp_data_type) #6 ; 7 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = and i64 %i.bx, 7
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = or i1 %i.by, %i.ca
  br i1 %i.cb, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.x
  %i.cc = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !125
  %i.ce = and i64 %i.cd, 95
  %or.cond.not.i.i = icmp eq i64 %i.ce, 76
  br i1 %or.cond.not.i.i, label %bb.y, label %.critedge.i.i, !prof !131

bb.y:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.cf = getelementptr i8, ptr %i.cc, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !132 ; 2 uses
  %i.ch = and i64 %i.cg, -2                       ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = trunc i64 %i.cg to i1
  %i.ck = getelementptr i8, ptr %i.cc, i64 32     ; 2 uses
  br i1 %i.cj, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.z, %bb.y
  %i.cm = phi ptr [ %i.cl, %bb.z ], [ %i.ck, %bb.y ] ; 2 uses
  %i.cn = icmp eq i64 %i.ch, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.cn, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.aa
  %.016.i.i = phi ptr [ %i.cp, %bb.aa ], [ %i.ci, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i14 = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i14, label %.critedge.i.i, label %bb.aa

bb.aa:                                            ; preds = %.preheader.i.i
  %i.co = getelementptr i8, ptr %.016.i.i, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !135 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, @tp_data_type
  br i1 %i.cq, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.x
  %i.cr = tail call ptr @rb_check_typeddata(i64 noundef %i.bx, ptr noundef nonnull @tp_data_type) #6
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.aa, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.cr, %.critedge.i.i ], [ %i.cm, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.cm, %bb.aa ] ; 5 uses
  %i.cs = getelementptr i8, ptr %.1.i.i, i64 40
  store i64 %i.bw, ptr %i.cs, align 8, !tbaa !34
  %i.ct = icmp eq i64 %i.bw, 0
  %i.cu = and i64 %i.bw, 7
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = or i1 %i.ct, %i.cv
  br i1 %i.cw, label %rb_obj_write.exit.i, label %bb.ab

bb.ab:                                            ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.bx, i64 noundef %i.bw) #6
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.ab, %rbimpl_check_typeddata.exit.i
  %i.cx = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %bb.ac, label %tracepoint_new.exit

bb.ac:                                            ; preds = %rb_obj_write.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !32
  store volatile ptr %i.cz, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.da = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %tracepoint_new.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !68
  br label %tracepoint_new.exit

tracepoint_new.exit:                              ; preds = %rb_obj_write.exit.i, %bb.ac, %bb.ad
  %.0.i.i.i = phi ptr [ %i.cx, %rb_obj_write.exit.i ], [ %i.dc, %bb.ad ], [ null, %bb.ac ]
  %i.dd = getelementptr i8, ptr %.1.i.i, i64 48
  store ptr %.0.i.i.i, ptr %i.dd, align 8, !tbaa !149
  %i.de = getelementptr i8, ptr %.1.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  store i32 %.1, ptr %.1.i.i, align 8, !tbaa !146
  %i.df = getelementptr i8, ptr %.1.i.i, i64 56
  store i64 %i.bx, ptr %i.df, align 8, !tbaa !163
  ret i64 %i.bx
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tracepoint_inspect(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !125
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !132  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.q, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135  ; 2 uses
  %i.t = icmp eq ptr %i.s, @tp_data_type
  br i1 %i.t, label %tpptr.exit, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit

tpptr.exit:                                       ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80   ; 35 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %tpptr.exit
  %i.z = load i32, ptr %i.y, align 8, !tbaa !79   ; 2 uses
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.split, label %.thread

.split:                                           ; preds = %bb.e
  %i.ac = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 true)
  switch i32 %i.ac, label %.thread [
    i32 0, label %bb.f
    i32 3, label %bb.k
    i32 5, label %bb.k
    i32 4, label %bb.k
    i32 6, label %bb.k
    i32 10, label %bb.y
    i32 11, label %bb.y
  ]

bb.f:                                             ; preds = %.split
  %i.ad = getelementptr i8, ptr %i.y, i64 64      ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !124
  %.not.i.i23 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i23, label %bb.g, label %fill_id_and_klass.exit.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.y, i64 48      ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !112 ; 2 uses
  %.not12.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not12.i.i, label %bb.h, label %.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.y, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !122
  %i.aj = getelementptr i8, ptr %i.y, i64 32
  %i.ak = getelementptr i8, ptr %i.y, i64 40
  %i.al = tail call i32 @rb_vm_control_frame_id_and_class(ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef nonnull %i.af) #6 ; 0 uses
  %.pr.i.i = load i64, ptr %i.af, align 8, !tbaa !112 ; 2 uses
  %.not13.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not13.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.sink.split.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.h, %bb.g
  %i.am = phi i64 [ %.pr.i.i, %bb.h ], [ %i.ag, %bb.g ] ; 2 uses
  %i.an = and i64 %i.am, 7
  %.not16.i.i = icmp eq i64 %i.an, 0
  br i1 %.not16.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i24, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i24:             ; preds = %.thread.i.i
  %i.ao = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !125
  %i.aq = and i64 %i.ap, 31
  %i.ar = icmp eq i64 %i.aq, 28
  br i1 %i.ar, label %bb.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i24
  %i.as = getelementptr i8, ptr %i.ao, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !127
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.sink.split.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.sink.split.i.i: ; preds = %bb.i, %bb.h
  %.sink.i.i = phi i64 [ %i.at, %bb.i ], [ 4, %bb.h ]
  store i64 %.sink.i.i, ptr %i.af, align 8, !tbaa !112
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.sink.split.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i24, %.thread.i.i
  store i32 1, ptr %i.ad, align 8, !tbaa !124
  br label %fill_id_and_klass.exit.i

fill_id_and_klass.exit.i:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %bb.f
  %i.au = getelementptr i8, ptr %i.y, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %.thread, label %rb_tracearg_method_id.exit

rb_tracearg_method_id.exit:                       ; preds = %fill_id_and_klass.exit.i
  %i.aw = tail call i64 @rb_id2sym(i64 noundef %i.av) #6 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4
  br i1 %i.ax, label %.thread, label %bb.j

bb.j:                                             ; preds = %rb_tracearg_method_id.exit
  %i.ay = tail call i64 @rb_tracearg_event(ptr noundef %i.y)
  %i.az = tail call i64 @rb_tracearg_path(ptr noundef %i.y)
  %i.ba = tail call i64 @rb_tracearg_lineno(ptr noundef %i.y)
  %i.bb = tail call i64 @rb_fix2int(i64 noundef %i.ba) #6
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.89, i64 noundef %i.ay, i64 noundef %i.az, i32 noundef %i.bc, i64 noundef %i.aw) #6
  br label %bb.aj

bb.k:                                             ; preds = %.split, %.split, %.split, %.split
  %i.be = tail call i64 @rb_tracearg_event(ptr noundef %i.y)
  %i.bf = getelementptr i8, ptr %i.y, i64 64      ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !124
  %.not.i.i25 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i25, label %bb.l, label %fill_id_and_klass.exit.i26

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr i8, ptr %i.y, i64 48      ; 4 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !112 ; 2 uses
  %.not12.i.i28 = icmp eq i64 %i.bi, 0
  br i1 %.not12.i.i28, label %bb.m, label %.thread.i.i29

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr i8, ptr %i.y, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !122
  %i.bl = getelementptr i8, ptr %i.y, i64 32
  %i.bm = getelementptr i8, ptr %i.y, i64 40
  %i.bn = tail call i32 @rb_vm_control_frame_id_and_class(ptr noundef %i.bk, ptr noundef %i.bl, ptr noundef %i.bm, ptr noundef nonnull %i.bh) #6 ; 0 uses
  %.pr.i.i35 = load i64, ptr %i.bh, align 8, !tbaa !112 ; 2 uses
  %.not13.i.i36 = icmp eq i64 %.pr.i.i35, 0
  br i1 %.not13.i.i36, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.sink.split.i.i33, label %.thread.i.i29

.thread.i.i29:                                    ; preds = %bb.m, %bb.l
  %i.bo = phi i64 [ %.pr.i.i35, %bb.m ], [ %i.bi, %bb.l ] ; 2 uses
  %i.bp = and i64 %i.bo, 7
  %.not16.i.i30 = icmp eq i64 %i.bp, 0
  br i1 %.not16.i.i30, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i32, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31

rbimpl_RB_TYPE_P_fastpath.exit.i.i32:             ; preds = %.thread.i.i29
  %i.bq = inttoptr i64 %i.bo to ptr               ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !125
  %i.bs = and i64 %i.br, 31
  %i.bt = icmp eq i64 %i.bs, 28
  br i1 %i.bt, label %bb.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i32
  %i.bu = getelementptr i8, ptr %i.bq, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !127
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.sink.split.i.i33

rbimpl_RB_TYPE_P_fastpath.exit.thread.sink.split.i.i33: ; preds = %bb.n, %bb.m
  %.sink.i.i34 = phi i64 [ %i.bv, %bb.n ], [ 4, %bb.m ]
  store i64 %.sink.i.i34, ptr %i.bh, align 8, !tbaa !112
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31:      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.sink.split.i.i33, %rbimpl_RB_TYPE_P_fastpath.exit.i.i32, %.thread.i.i29
  store i32 1, ptr %i.bf, align 8, !tbaa !124
  br label %fill_id_and_klass.exit.i26

fill_id_and_klass.exit.i26:                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31, %bb.k
  %i.bw = getelementptr i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !111 ; 2 uses
  %.not.i27 = icmp eq i64 %i.bx, 0
  br i1 %.not.i27, label %rb_tracearg_method_id.exit37, label %bb.o

bb.o:                                             ; preds = %fill_id_and_klass.exit.i26
  %i.by = tail call i64 @rb_id2sym(i64 noundef %i.bx) #6
  br label %rb_tracearg_method_id.exit37

rb_tracearg_method_id.exit37:                     ; preds = %fill_id_and_klass.exit.i26, %bb.o
  %i.bz = phi i64 [ %i.by, %bb.o ], [ 4, %fill_id_and_klass.exit.i26 ]
  %i.ca = getelementptr i8, ptr %i.y, i64 72      ; 6 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !120 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 36
  br i1 %i.cc, label %bb.p, label %rb_tracearg_method_id.exit37..fill_path_and_lineno.exit_crit_edge.i_crit_edge

rb_tracearg_method_id.exit37..fill_path_and_lineno.exit_crit_edge.i_crit_edge: ; preds = %rb_tracearg_method_id.exit37
  %.phi.trans.insert.i.phi.trans.insert = getelementptr i8, ptr %i.y, i64 68
  %.pre.i38.pre = load i32, ptr %.phi.trans.insert.i.phi.trans.insert, align 4, !tbaa !121
  br label %rb_tracearg_lineno.exit

bb.p:                                             ; preds = %rb_tracearg_method_id.exit37
end_hunk_1
begin_hunk_2_@tracepoint_inspect:bb.a
  %i.dv = getelementptr i8, ptr %i.y, i64 8       ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !77
  %i.dx = getelementptr i8, ptr %i.y, i64 16      ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !122
  %i.dz = load i32, ptr %i.y, align 8, !tbaa !79
  %i.ea = getelementptr i8, ptr %i.y, i64 68      ; 3 uses
  %i.eb = tail call ptr @rb_vm_get_ruby_level_next_cfp(ptr noundef %i.dw, ptr noundef %i.dy) #6 ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i43, label %rb_tracearg_path.exit48.thread61, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !123 ; 2 uses
  %i.ee = tail call i64 @rb_iseq_path(ptr noundef %i.ed) #6
  store i64 %i.ee, ptr %i.ds, align 8, !tbaa !34
  %i.ef = and i32 %i.dz, 266
  %.not12.i.i.i44 = icmp eq i32 %i.ef, 0
  br i1 %.not12.i.i.i44, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = tail call i64 @rb_iseq_first_lineno(ptr noundef %i.ed) #6
  %i.eh = tail call i64 @rb_fix2int(i64 noundef %i.eg) #6
  %i.ei = trunc i64 %i.eh to i32
  br label %rb_tracearg_path.exit48

bb.ac:                                            ; preds = %bb.aa
  %i.ej = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %i.eb) #6
  br label %rb_tracearg_path.exit48

rb_tracearg_path.exit48.thread61:                 ; preds = %bb.z
  store i64 4, ptr %i.ds, align 8, !tbaa !34
  store i32 0, ptr %i.ea, align 4, !tbaa !7
  br label %rb_tracearg_lineno.exit56

rb_tracearg_path.exit48:                          ; preds = %bb.ab, %bb.ac
  %storemerge13.i.i.i46.ph = phi i32 [ %i.ei, %bb.ab ], [ %i.ej, %bb.ac ] ; 2 uses
  %.pre.i47.pr = load i64, ptr %i.ds, align 8, !tbaa !120 ; 2 uses
  store i32 %storemerge13.i.i.i46.ph, ptr %i.ea, align 4, !tbaa !7
  %i.ek = icmp eq i64 %.pre.i47.pr, 36
  br i1 %i.ek, label %bb.ad, label %rb_tracearg_lineno.exit56

bb.ad:                                            ; preds = %rb_tracearg_path.exit48
  %i.el = load ptr, ptr %i.dv, align 8, !tbaa !77
  %i.em = load ptr, ptr %i.dx, align 8, !tbaa !122
  %i.en = load i32, ptr %i.y, align 8, !tbaa !79
  %i.eo = tail call ptr @rb_vm_get_ruby_level_next_cfp(ptr noundef %i.el, ptr noundef %i.em) #6 ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i52, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !123 ; 2 uses
  %i.er = tail call i64 @rb_iseq_path(ptr noundef %i.eq) #6
  store i64 %i.er, ptr %i.ds, align 8, !tbaa !34
  %i.es = and i32 %i.en, 266
  %.not12.i.i.i53 = icmp eq i32 %i.es, 0
  br i1 %.not12.i.i.i53, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = tail call i64 @rb_iseq_first_lineno(ptr noundef %i.eq) #6
  %i.eu = tail call i64 @rb_fix2int(i64 noundef %i.et) #6
  %i.ev = trunc i64 %i.eu to i32
  br label %get_path_and_lineno.exit.i.i54

bb.ag:                                            ; preds = %bb.ae
  %i.ew = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %i.eo) #6
  br label %get_path_and_lineno.exit.i.i54

bb.ah:                                            ; preds = %bb.ad
  store i64 4, ptr %i.ds, align 8, !tbaa !34
  br label %get_path_and_lineno.exit.i.i54

get_path_and_lineno.exit.i.i54:                   ; preds = %bb.ah, %bb.ag, %bb.af
  %storemerge13.i.i.i55 = phi i32 [ 0, %bb.ah ], [ %i.ew, %bb.ag ], [ %i.ev, %bb.af ] ; 2 uses
  store i32 %storemerge13.i.i.i55, ptr %i.ea, align 4, !tbaa !7
  br label %rb_tracearg_lineno.exit56

rb_tracearg_lineno.exit56:                        ; preds = %rb_tracearg_path.exit48, %rb_tracearg_path.exit48.thread61, %.thread..fill_path_and_lineno.exit_crit_edge.i49_crit_edge, %get_path_and_lineno.exit.i.i54
  %i.ex = phi i64 [ 36, %get_path_and_lineno.exit.i.i54 ], [ 4, %rb_tracearg_path.exit48.thread61 ], [ %.pre.i47.pr, %rb_tracearg_path.exit48 ], [ %i.dt, %.thread..fill_path_and_lineno.exit_crit_edge.i49_crit_edge ]
  %i.ey = phi i32 [ %storemerge13.i.i.i55, %get_path_and_lineno.exit.i.i54 ], [ 0, %rb_tracearg_path.exit48.thread61 ], [ %storemerge13.i.i.i46.ph, %rb_tracearg_path.exit48 ], [ %.pre.i51.pre, %.thread..fill_path_and_lineno.exit_crit_edge.i49_crit_edge ]
  %i.ez = sext i32 %i.ey to i64
  %i.fa = shl nsw i64 %i.ez, 1
  %i.fb = or disjoint i64 %i.fa, 1
  %i.fc = tail call i64 @rb_fix2int(i64 noundef %i.fb) #6
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.92, i64 noundef %i.dr, i64 noundef %i.ex, i32 noundef %i.fd) #6
  br label %bb.aj

bb.ai:                                            ; preds = %tpptr.exit
  %i.ff = getelementptr i8, ptr %.1.i.i, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !143
  %.not22 = icmp eq i32 %i.fg, 0
  %i.fh = select i1 %.not22, ptr @.str.95, ptr @.str.94
  %i.fi = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.93, ptr noundef nonnull %i.fh) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.j, %bb.ai, %rb_tracearg_lineno.exit56, %bb.y, %rb_tracearg_lineno.exit
  %.1 = phi i64 [ %i.fe, %rb_tracearg_lineno.exit56 ], [ %i.bd, %bb.j ], [ %i.dm, %rb_tracearg_lineno.exit ], [ %i.dq, %bb.y ], [ %i.fi, %bb.ai ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tracepoint_stat_s(ptr nofree noundef readonly captures(none) %0, i64 %1) #0 {
rb_ec_ractor_hooks.exit:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !165
  %i.b = tail call i64 @rb_hash_new() #6          ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !166
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.d, align 8, !tbaa !38, !nonnull !71, !noundef !71
  %i.e = getelementptr i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %.not12.i = icmp eq ptr %i.h, null
  br i1 %.not12.i, label %tracepoint_stat_event_hooks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rb_ec_ractor_hooks.exit, %.lr.ph.i
  %.015.i = phi i32 [ %.1.i, %.lr.ph.i ], [ 0, %rb_ec_ractor_hooks.exit ]
  %.0814.i = phi i32 [ %.19.i, %.lr.ph.i ], [ 0, %rb_ec_ractor_hooks.exit ]
  %.01013.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.h, %rb_ec_ractor_hooks.exit ] ; 2 uses
  %i.i = load i32, ptr %.01013.i, align 8, !tbaa !27
  %i.j = lshr i32 %i.i, 1
  %.lobit.i = and i32 %i.j, 1                     ; 2 uses
  %i.k = xor i32 %.lobit.i, 1
  %.19.i = add i32 %i.k, %.0814.i                 ; 2 uses
  %.1.i = add i32 %.lobit.i, %.015.i              ; 2 uses
  %i.l = getelementptr i8, ptr %.01013.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !167

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.n = sext i32 %.19.i to i64
  %i.o = shl nsw i64 %i.n, 1
  %i.p = or disjoint i64 %i.o, 1
  %i.q = sext i32 %.1.i to i64
  %i.r = shl nsw i64 %i.q, 1
  %i.s = or disjoint i64 %i.r, 1
  br label %tracepoint_stat_event_hooks.exit

tracepoint_stat_event_hooks.exit:                 ; preds = %rb_ec_ractor_hooks.exit, %._crit_edge.loopexit.i
  %.08.lcssa.i = phi i64 [ 1, %rb_ec_ractor_hooks.exit ], [ %i.p, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 1, %rb_ec_ractor_hooks.exit ], [ %i.s, %._crit_edge.loopexit.i ]
  %i.t = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %.08.lcssa.i, i64 noundef %.0.lcssa.i) #6
  %i.u = tail call i64 @rb_hash_aset(i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.t) #6 ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @tracepoint_trace_s(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @tracepoint_new_s(ptr poison, i64 noundef %1, i64 noundef %2) ; 2 uses
  %i.b = tail call i64 @rb_tracepoint_enable(i64 noundef %i.a) ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tracepoint_allow_reentry(ptr nofree noundef captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.96) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !80
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = tail call i64 @rb_ensure(ptr noundef nonnull @rb_yield, i64 noundef 4, ptr noundef nonnull @disallow_reentry, i64 noundef %i.e) #6
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tracepoint_enable_m(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f                         ; 2 uses
  br i1 %i.g, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.h = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !125
  %i.j = and i64 %i.i, 95
  %or.cond.not.i.i = icmp eq i64 %i.j, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !132  ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = trunc i64 %i.l to i1
  %i.p = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  br i1 %i.o, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.s, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.t = getelementptr i8, ptr %.016.i.i, i64 48
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
  %.021 = phi i64 [ %i.ae, %bb.f ], [ %4, %tpptr.exit ] ; 4 uses
  %i.af = and i64 %.021, -5
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
  %i.aj = tail call ptr @rb_check_typeddata(i64 noundef %.021, ptr noundef nonnull @ruby_threadptr_data_type) #6
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !144
  %i.ak = and i64 %.021, 7
  %.not31 = icmp eq i64 %i.ak, 0
  br i1 %.not31, label %bb.k, label %rb_obj_written.exit

bb.k:                                             ; preds = %bb.j
  tail call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %.021) #6
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
  %.016.i.i.i = phi ptr [ %i.bd, %bb.r ], [ %i.aw, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i
  %i.bc = getelementptr i8, ptr %.016.i.i.i, i64 48
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
  %5 = and i32 %i.bx, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.by = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.by, ptr noundef nonnull @.str.100) #19
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bz = tail call i64 @rb_num2uint(i64 noundef %3) #6
  %i.ca = trunc i64 %i.bz to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.038.i = phi i32 [ 0, %bb.w ], [ %i.ca, %bb.z ]
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
  %.242.i = phi i1 [ false, %rb_vm_lock_enter.exit.i ], [ true, %rb_method_def_local_hooks.exit.i ], [ false, %bb.ae ], [ false, %bb.ad ]
  %.2.i = phi i32 [ 0, %rb_vm_lock_enter.exit.i ], [ 1, %rb_method_def_local_hooks.exit.i ], [ 0, %bb.ae ], [ 0, %bb.ad ]
  %i.dj = load i32, ptr %.1.i.i.i, align 8, !tbaa !146
  %i.dk = call i32 @rb_iseq_add_local_tracepoint_recursively(ptr noundef %i.bl, i32 noundef %i.dj, i64 noundef %1, i32 noundef %.038.i, i1 noundef zeroext %.242.i) #6
  %i.dl = add i32 %i.dk, %.2.i                    ; 2 uses
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
  %.0 = phi i64 [ %i.em, %bb.au ], [ %i.en, %bb.av ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tracepoint_disable_m(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !125
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !132  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.p, label %tpptr.exit, label %.preheader.i.i, !prof !81

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !135  ; 2 uses
  %i.s = icmp eq ptr %i.r, @tp_data_type
  br i1 %i.s, label %tpptr.exit, label %.preheader.i.i, !llvm.loop !140

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @tp_data_type) #6
  br label %tpptr.exit

tpptr.exit:                                       ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !143  ; 2 uses
  %i.w = tail call i32 @rb_block_given_p() #6
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %tpptr.exit
  %i.x = getelementptr i8, ptr %.1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !141
  %.not9 = icmp eq i64 %i.y, 0
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr @rb_eArgError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.104) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = tail call i64 @rb_tracepoint_disable(i64 noundef %1) ; 0 uses
  %.not10 = icmp eq i32 %i.v, 0
  %i.ab = select i1 %.not10, ptr @rb_tracepoint_disable, ptr @rb_tracepoint_enable
  %i.ac = tail call i64 @rb_ensure(ptr noundef nonnull @rb_yield, i64 noundef 36, ptr noundef nonnull %i.ab, i64 noundef %1) #6
  br label %bb.i

bb.h:                                             ; preds = %tpptr.exit
  %i.ad = tail call i64 @rb_tracepoint_disable(i64 noundef %1) ; 0 uses
  %.not8 = icmp eq i32 %i.v, 0
  %i.ae = select i1 %.not8, i64 0, i64 20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %i.ac, %bb.g ], [ %i.ae, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @tracepoint_enabled_p(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !75

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !125
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !131

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !132  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @tp_data_type to i64)
  br i1 %i.p, label %rb_tracepoint_enabled_p.exit, label %.preheader.i.i.i, !prof !81

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.q = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !135  ; 2 uses
  %i.s = icmp eq ptr %i.r, @tp_data_type
  br i1 %i.s, label %rb_tracepoint_enabled_p.exit, label %.preheader.i.i.i, !llvm.loop !140

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @tp_data_type) #6
  br label %rb_tracepoint_enabled_p.exit

rb_tracepoint_enabled_p.exit:                     ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !143
  %.not.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i, i64 0, i64 20
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tracepoint_attr_event(ptr nofree readnone captures(none) %0, i64 %1) #0 {
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
  %i.g = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.38) #19
  unreachable

get_trace_arg.exit:                               ; preds = %bb.a
  %i.h = tail call i64 @rb_tracearg_event(ptr noundef %i.e)
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @tracepoint_attr_lineno(ptr nofree readnone captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %get_trace_arg.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.38) #19
  unreachable

get_trace_arg.exit:                               ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 72       ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !120
  %i.j = icmp eq i64 %i.i, 36
  br i1 %i.j, label %bb.c, label %.fill_path_and_lineno.exit_crit_edge.i

.fill_path_and_lineno.exit_crit_edge.i:           ; preds = %get_trace_arg.exit
  %.phi.trans.insert.i = getelementptr i8, ptr %i.e, i64 68
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !121
  br label %rb_tracearg_lineno.exit

bb.c:                                             ; preds = %get_trace_arg.exit
  %i.k = getelementptr i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.o = load i32, ptr %i.e, align 8, !tbaa !79
  %i.p = getelementptr i8, ptr %i.e, i64 68
  %i.q = tail call ptr @rb_vm_get_ruby_level_next_cfp(ptr noundef %i.l, ptr noundef %i.n) #6 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !123  ; 2 uses
  %i.t = tail call i64 @rb_iseq_path(ptr noundef %i.s) #6
  store i64 %i.t, ptr %i.h, align 8, !tbaa !34
  %i.u = and i32 %i.o, 266
  %.not12.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not12.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @rb_iseq_first_lineno(ptr noundef %i.s) #6
  %i.w = tail call i64 @rb_fix2int(i64 noundef %i.v) #6
  %i.x = trunc i64 %i.w to i32
  br label %get_path_and_lineno.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %i.q) #6
  br label %get_path_and_lineno.exit.i.i

bb.g:                                             ; preds = %bb.c
  store i64 4, ptr %i.h, align 8, !tbaa !34
  br label %get_path_and_lineno.exit.i.i

get_path_and_lineno.exit.i.i:                     ; preds = %bb.g, %bb.f, %bb.e
  %storemerge13.i.i.i = phi i32 [ 0, %bb.g ], [ %i.y, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  store i32 %storemerge13.i.i.i, ptr %i.p, align 4, !tbaa !7
  br label %rb_tracearg_lineno.exit

rb_tracearg_lineno.exit:                          ; preds = %.fill_path_and_lineno.exit_crit_edge.i, %get_path_and_lineno.exit.i.i
  %i.z = phi i32 [ %.pre.i, %.fill_path_and_lineno.exit_crit_edge.i ], [ %storemerge13.i.i.i, %get_path_and_lineno.exit.i.i ]
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 1
  %i.ac = or disjoint i64 %i.ab, 1
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tracepoint_attr_path(ptr nofree readnone captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %get_trace_arg.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.38) #19
  unreachable

get_trace_arg.exit:                               ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 72       ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !120  ; 2 uses
  %i.j = icmp eq i64 %i.i, 36
  br i1 %i.j, label %bb.c, label %rb_tracearg_path.exit

bb.c:                                             ; preds = %get_trace_arg.exit
  %i.k = getelementptr i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.o = load i32, ptr %i.e, align 8, !tbaa !79
  %i.p = getelementptr i8, ptr %i.e, i64 68
  %i.q = tail call ptr @rb_vm_get_ruby_level_next_cfp(ptr noundef %i.l, ptr noundef %i.n) #6 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !123  ; 2 uses
  %i.t = tail call i64 @rb_iseq_path(ptr noundef %i.s) #6
  store i64 %i.t, ptr %i.h, align 8, !tbaa !34
  %i.u = and i32 %i.o, 266
  %.not12.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not12.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @rb_iseq_first_lineno(ptr noundef %i.s) #6
  %i.w = tail call i64 @rb_fix2int(i64 noundef %i.v) #6
  %i.x = trunc i64 %i.w to i32
  br label %get_path_and_lineno.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %i.q) #6
  br label %get_path_and_lineno.exit.i.i

bb.g:                                             ; preds = %bb.c
  store i64 4, ptr %i.h, align 8, !tbaa !34
  br label %get_path_and_lineno.exit.i.i

get_path_and_lineno.exit.i.i:                     ; preds = %bb.g, %bb.f, %bb.e
end_hunk_2
