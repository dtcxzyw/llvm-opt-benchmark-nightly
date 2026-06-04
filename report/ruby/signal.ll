inline.NumInlined: 138
inline.NumDeleted: 52
begin_hunk_0_@rb_get_next_signal:bb.a
  br i1 %.not7.29, label %.preheader.30, label %bb.b

.preheader.30:                                    ; preds = %.preheader.29
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 124), align 4, !tbaa !7
  %.not7.30 = icmp eq i32 %i.aj, 0
  br i1 %.not7.30, label %.preheader.31, label %bb.b

.preheader.31:                                    ; preds = %.preheader.30
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 128), align 4, !tbaa !7
  %.not7.31 = icmp eq i32 %i.ak, 0
  br i1 %.not7.31, label %.preheader.32, label %bb.b

.preheader.32:                                    ; preds = %.preheader.31
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 132), align 4, !tbaa !7
  %.not7.32 = icmp eq i32 %i.al, 0
  br i1 %.not7.32, label %.preheader.33, label %bb.b

.preheader.33:                                    ; preds = %.preheader.32
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 136), align 4, !tbaa !7
  %.not7.33 = icmp eq i32 %i.am, 0
  br i1 %.not7.33, label %.preheader.34, label %bb.b

.preheader.34:                                    ; preds = %.preheader.33
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 140), align 4, !tbaa !7
  %.not7.34 = icmp eq i32 %i.an, 0
  br i1 %.not7.34, label %.preheader.35, label %bb.b

.preheader.35:                                    ; preds = %.preheader.34
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 144), align 4, !tbaa !7
  %.not7.35 = icmp eq i32 %i.ao, 0
  br i1 %.not7.35, label %.preheader.36, label %bb.b

.preheader.36:                                    ; preds = %.preheader.35
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 148), align 4, !tbaa !7
  %.not7.36 = icmp eq i32 %i.ap, 0
  br i1 %.not7.36, label %.preheader.37, label %bb.b

.preheader.37:                                    ; preds = %.preheader.36
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 152), align 4, !tbaa !7
  %.not7.37 = icmp eq i32 %i.aq, 0
  br i1 %.not7.37, label %.preheader.38, label %bb.b

.preheader.38:                                    ; preds = %.preheader.37
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 156), align 4, !tbaa !7
  %.not7.38 = icmp eq i32 %i.ar, 0
  br i1 %.not7.38, label %.preheader.39, label %bb.b

.preheader.39:                                    ; preds = %.preheader.38
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 160), align 4, !tbaa !7
  %.not7.39 = icmp eq i32 %i.as, 0
  br i1 %.not7.39, label %.preheader.40, label %bb.b

.preheader.40:                                    ; preds = %.preheader.39
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 164), align 4, !tbaa !7
  %.not7.40 = icmp eq i32 %i.at, 0
  br i1 %.not7.40, label %.preheader.41, label %bb.b

.preheader.41:                                    ; preds = %.preheader.40
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 168), align 4, !tbaa !7
  %.not7.41 = icmp eq i32 %i.au, 0
  br i1 %.not7.41, label %.preheader.42, label %bb.b

.preheader.42:                                    ; preds = %.preheader.41
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 172), align 4, !tbaa !7
  %.not7.42 = icmp eq i32 %i.av, 0
  br i1 %.not7.42, label %.preheader.43, label %bb.b

.preheader.43:                                    ; preds = %.preheader.42
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 176), align 4, !tbaa !7
  %.not7.43 = icmp eq i32 %i.aw, 0
  br i1 %.not7.43, label %.preheader.44, label %bb.b

.preheader.44:                                    ; preds = %.preheader.43
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 180), align 4, !tbaa !7
  %.not7.44 = icmp eq i32 %i.ax, 0
  br i1 %.not7.44, label %.preheader.45, label %bb.b

.preheader.45:                                    ; preds = %.preheader.44
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 184), align 4, !tbaa !7
  %.not7.45 = icmp eq i32 %i.ay, 0
  br i1 %.not7.45, label %.preheader.46, label %bb.b

.preheader.46:                                    ; preds = %.preheader.45
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 188), align 4, !tbaa !7
  %.not7.46 = icmp eq i32 %i.az, 0
  br i1 %.not7.46, label %.preheader.47, label %bb.b

.preheader.47:                                    ; preds = %.preheader.46
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 192), align 4, !tbaa !7
  %.not7.47 = icmp eq i32 %i.ba, 0
  br i1 %.not7.47, label %.preheader.48, label %bb.b

.preheader.48:                                    ; preds = %.preheader.47
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 196), align 4, !tbaa !7
  %.not7.48 = icmp eq i32 %i.bb, 0
  br i1 %.not7.48, label %.preheader.49, label %bb.b

.preheader.49:                                    ; preds = %.preheader.48
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 200), align 4, !tbaa !7
  %.not7.49 = icmp eq i32 %i.bc, 0
  br i1 %.not7.49, label %.preheader.50, label %bb.b

.preheader.50:                                    ; preds = %.preheader.49
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 204), align 4, !tbaa !7
  %.not7.50 = icmp eq i32 %i.bd, 0
  br i1 %.not7.50, label %.preheader.51, label %bb.b

.preheader.51:                                    ; preds = %.preheader.50
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 208), align 4, !tbaa !7
  %.not7.51 = icmp eq i32 %i.be, 0
  br i1 %.not7.51, label %.preheader.52, label %bb.b

.preheader.52:                                    ; preds = %.preheader.51
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 212), align 4, !tbaa !7
  %.not7.52 = icmp eq i32 %i.bf, 0
  br i1 %.not7.52, label %.preheader.53, label %bb.b

.preheader.53:                                    ; preds = %.preheader.52
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 216), align 4, !tbaa !7
  %.not7.53 = icmp eq i32 %i.bg, 0
  br i1 %.not7.53, label %.preheader.54, label %bb.b

.preheader.54:                                    ; preds = %.preheader.53
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 220), align 4, !tbaa !7
  %.not7.54 = icmp eq i32 %i.bh, 0
  br i1 %.not7.54, label %.preheader.55, label %bb.b

.preheader.55:                                    ; preds = %.preheader.54
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 224), align 4, !tbaa !7
  %.not7.55 = icmp eq i32 %i.bi, 0
  br i1 %.not7.55, label %.preheader.56, label %bb.b

.preheader.56:                                    ; preds = %.preheader.55
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 228), align 4, !tbaa !7
  %.not7.56 = icmp eq i32 %i.bj, 0
  br i1 %.not7.56, label %.preheader.57, label %bb.b

.preheader.57:                                    ; preds = %.preheader.56
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 232), align 4, !tbaa !7
  %.not7.57 = icmp eq i32 %i.bk, 0
  br i1 %.not7.57, label %.preheader.58, label %bb.b

.preheader.58:                                    ; preds = %.preheader.57
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 236), align 4, !tbaa !7
  %.not7.58 = icmp eq i32 %i.bl, 0
  br i1 %.not7.58, label %.preheader.59, label %bb.b

.preheader.59:                                    ; preds = %.preheader.58
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 240), align 4, !tbaa !7
  %.not7.59 = icmp eq i32 %i.bm, 0
  br i1 %.not7.59, label %.preheader.60, label %bb.b

.preheader.60:                                    ; preds = %.preheader.59
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 244), align 4, !tbaa !7
  %.not7.60 = icmp eq i32 %i.bn, 0
  br i1 %.not7.60, label %.preheader.61, label %bb.b

.preheader.61:                                    ; preds = %.preheader.60
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 248), align 4, !tbaa !7
  %.not7.61 = icmp eq i32 %i.bo, 0
  br i1 %.not7.61, label %.preheader.62, label %bb.b

.preheader.62:                                    ; preds = %.preheader.61
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 252), align 4, !tbaa !7
  %.not7.62 = icmp eq i32 %i.bp, 0
  br i1 %.not7.62, label %.preheader.63, label %bb.b

.preheader.63:                                    ; preds = %.preheader.62
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 256), align 4, !tbaa !7
  %.not7.63 = icmp eq i32 %i.bq, 0
  br i1 %.not7.63, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.preheader.63, %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ], [ 0, %.preheader.63 ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_trap_exit(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 592        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call fastcc i32 @signal_exec(i64 noundef %i.b, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @signal_exec(i64 noundef range(i64 1, 0) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  store volatile ptr %i.g, ptr %i.b, align 8, !tbaa !20
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !73   ; 2 uses
  store volatile i32 %i.i, ptr %i.c, align 4, !tbaa !7
  %i.j = and i64 %0, 7
  %.not19 = icmp eq i64 %i.j, 0
  br i1 %.not19, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = or i32 %i.i, 8
  store i32 %i.k, ptr %i.h, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.0..0..0..0..0..0..i, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.l, align 8, !tbaa !74
  store i64 36, ptr %2, align 8, !tbaa !76
  %i.m = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !78
  %i.p = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.0.1.val = load ptr, ptr %i.p, align 8, !tbaa !22 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %.0.1.val, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79
  %i.s = getelementptr i8, ptr %.0.1.val, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.c, %bb.b
  %.0.i2.i = phi ptr [ %i.r, %bb.c ], [ null, %bb.b ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.b ]
  %i.u = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.u, align 8, !tbaa !94
  %i.v = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.v, label %bb.d, label %rb_ec_vm_lock_rec.exit

bb.d:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.w = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !95
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.d
  %.0.i = phi i32 [ %i.x, %bb.d ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %.0.i, ptr %i.y, align 4, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = tail call ptr @llvm.stacksave.p0()
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.z)
  %.not = icmp eq i32 %i.ad, 0                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e, !prof !97

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !20
  %i.ae = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  br label %bb.g

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %2, ptr %i.m, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.af = sext i32 %1 to i64
  %i.ag = shl nsw i64 %i.af, 1
  %i.ah = or disjoint i64 %i.ag, 1
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !16
  %i.ai = call i64 @rb_eval_cmd_call_kw(i64 noundef %0, i32 noundef 1, ptr noundef nonnull %i.e, i32 noundef 0) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aj = phi i32 [ 0, %bb.f ], [ %i.ae, %bb.e ]
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !78
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !20
  store volatile ptr %i.al, ptr %i.a, align 8, !tbaa !20
  %.0..0..0..0..0..0..i18 = load volatile ptr, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.0..0..0..0.6 = load volatile i32, ptr %i.c, align 4, !tbaa !7
  %i.am = getelementptr i8, ptr %.0..0..0..0..0..0..i18, i64 36
  store i32 %.0..0..0..0.6, ptr %i.am, align 4, !tbaa !73
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %.0..0..0..0..0..0..i18, i64 24
  %.val = load ptr, ptr %i.an, align 8, !tbaa !77 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val, i64 64
  store i32 %i.aj, ptr %i.ao, align 8, !tbaa !74
  %i.ap = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.ap)
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_signal_exec(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 592
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 0, label %bb.b
    i64 36, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.g [
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 3, label %bb.d
    i32 15, label %bb.d
    i32 14, label %bb.d
    i32 10, label %bb.d
    i32 12, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @rb_interrupt() #18
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  tail call void @rb_threadptr_signal_raise(ptr noundef %0, i32 noundef %1) #16
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @rb_threadptr_signal_exit(ptr noundef %0) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @signal_exec(i64 noundef %i.e, i32 noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.f
  %.0 = phi i32 [ %i.f, %bb.f ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @rb_interrupt() local_unnamed_addr #5

declare void @rb_threadptr_signal_raise(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @rb_threadptr_signal_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_sig_finalize() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 6 uses
  %1 = alloca %struct.sigaction, align 8          ; 3 uses
  %2 = alloca %struct.sigaction, align 8          ; 6 uses
  %3 = alloca %struct.sigaction, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = call i32 @sigemptyset(ptr noundef nonnull %i.a) #16 ; 0 uses
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.d = call i32 @sigaction(i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %ruby_signal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.i = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.f = icmp ne ptr %.0.i, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.f)
  br label %ruby_signal.exit

ruby_signal.exit:                                 ; preds = %bb.a, %bb.b
  %.09.i = phi ptr [ %.0.i, %bb.b ], [ inttoptr (i64 -1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.g = icmp eq ptr %.09.i, @sighandler
  br i1 %i.g, label %ruby_signal.exit3, label %bb.c

ruby_signal.exit3:                                ; preds = %ruby_signal.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = call i32 @sigemptyset(ptr noundef nonnull %i.h) #16 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.j, align 8, !tbaa !71
  %i.k = call i32 @sigaction(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %1) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %ruby_signal.exit3, %ruby_signal.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sighandler(i32 noundef %0) #1 {
bb.a:
  %i.a = tail call ptr @rb_errno_ptr() #16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr [4 x i8], ptr @signal_buff, i64 %i.c
  %i.e = atomicrmw volatile add ptr %i.d, i32 1 seq_cst, align 4 ; 0 uses
  %i.f = atomicrmw volatile add ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 260), i32 1 seq_cst, align 4 ; 0 uses
  tail call void @rb_thread_wakeup_timer_thread(i32 noundef %0) #16
  %i.g = tail call ptr @rb_errno_ptr() #16
  store i32 %i.b, ptr %i.g, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_signal() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %1 = alloca %struct.sigaction, align 8          ; 6 uses
  %2 = alloca %struct.sigaction, align 8          ; 3 uses
  %3 = alloca %struct.sigaction, align 8          ; 7 uses
  %4 = alloca %struct.sigaction, align 8          ; 5 uses
  %5 = alloca %struct.sigaction, align 8          ; 6 uses
  %6 = alloca %struct.sigaction, align 8          ; 3 uses
  %7 = alloca %struct.sigaction, align 8          ; 7 uses
  %8 = alloca %struct.sigaction, align 8          ; 5 uses
  %9 = alloca %struct.sigaction, align 8          ; 6 uses
  %10 = alloca %struct.sigaction, align 8         ; 3 uses
  %11 = alloca %struct.sigaction, align 8         ; 7 uses
  %12 = alloca %struct.sigaction, align 8         ; 5 uses
  %13 = alloca %struct.sigaction, align 8         ; 7 uses
  %14 = alloca %struct.sigaction, align 8         ; 5 uses
  %15 = alloca %struct.sigaction, align 8         ; 7 uses
  %16 = alloca %struct.sigaction, align 8         ; 5 uses
  %17 = alloca %struct.stack_t, align 8           ; 7 uses
  %18 = alloca %struct.stack_t, align 8           ; 3 uses
  %19 = alloca %struct.sigaction, align 8         ; 7 uses
  %20 = alloca %struct.sigaction, align 8         ; 5 uses
  %21 = alloca %struct.sigaction, align 8         ; 7 uses
  %22 = alloca %struct.sigaction, align 8         ; 5 uses
  %23 = alloca %struct.sigaction, align 8         ; 6 uses
  %24 = alloca %struct.sigaction, align 8         ; 3 uses
  %25 = alloca %struct.sigaction, align 8         ; 7 uses
  %26 = alloca %struct.sigaction, align 8         ; 5 uses
  %27 = alloca %struct.sigaction, align 8         ; 6 uses
  %28 = alloca %struct.sigaction, align 8         ; 3 uses
  %29 = alloca %struct.sigaction, align 8         ; 7 uses
  %30 = alloca %struct.sigaction, align 8         ; 5 uses
  %31 = alloca %struct.sigaction, align 8         ; 6 uses
  %32 = alloca %struct.sigaction, align 8         ; 3 uses
  %33 = alloca %struct.sigaction, align 8         ; 7 uses
  %34 = alloca %struct.sigaction, align 8         ; 5 uses
  %35 = alloca %struct.sigaction, align 8         ; 6 uses
  %36 = alloca %struct.sigaction, align 8         ; 3 uses
  %37 = alloca %struct.sigaction, align 8         ; 7 uses
  %38 = alloca %struct.sigaction, align 8         ; 5 uses
  %39 = alloca %struct.sigaction, align 8         ; 6 uses
  %40 = alloca %struct.sigaction, align 8         ; 3 uses
  %41 = alloca %struct.sigaction, align 8         ; 7 uses
  %42 = alloca %struct.sigaction, align 8         ; 5 uses
  %43 = alloca %struct.sigaction, align 8         ; 6 uses
  %44 = alloca %struct.sigaction, align 8         ; 3 uses
  %45 = alloca %struct.sigaction, align 8         ; 7 uses
  %46 = alloca %struct.sigaction, align 8         ; 5 uses
  %47 = alloca %struct.sigaction, align 8         ; 6 uses
  %48 = alloca %struct.sigaction, align 8         ; 3 uses
  %49 = alloca %struct.sigaction, align 8         ; 7 uses
  %50 = alloca %struct.sigaction, align 8         ; 5 uses
  %51 = alloca %struct.__sigset_t, align 8        ; 4 uses
  %i.a = tail call i64 @rb_define_module(ptr noundef nonnull @.str) #16 ; 3 uses
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.1, ptr noundef nonnull @sig_trap, i32 noundef -1) #16
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @sig_trap, i32 noundef -1) #16
end_hunk_0
