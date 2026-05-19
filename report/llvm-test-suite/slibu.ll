inline.NumInlined: 29
inline.NumDeleted: 3
begin_hunk_0_@safe_strlen
declare i64 @safe_strlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @opendir_prin1(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !31
  %i.e = sext i16 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = load i64, ptr @tc_opendir, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.f, %i.g
  br i1 %.not.i, label %get_opendir.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @err(ptr noundef nonnull @.str.35, ptr noundef %0) #27 ; 0 uses
  br label %get_opendir.exit

get_opendir.exit:                                 ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %i.j) #27 ; 0 uses
  call void @gput_st(ptr noundef %1, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare void @gput_st(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @file_times(ptr noundef %0) #4 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = tail call i64 @no_interrupt(i64 noundef 1) #27
  %i.b = tail call ptr @get_c_string(ptr noundef %0) #27
  %i.c = call i32 @stat(ptr noundef %i.b, ptr noundef nonnull %1) #27
  %sext = shl i64 %i.a, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = tail call i64 @no_interrupt(i64 noundef %i.d) #27 ; 0 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !43
  %i.h = sitofp i64 %i.g to double
  %i.i = tail call ptr @flocons(double noundef %i.h) #27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  %i.l = sitofp i64 %i.k to double
  %i.m = tail call ptr @flocons(double noundef %i.l) #27
  %i.n = tail call ptr @cons(ptr noundef %i.m, ptr noundef null) #27
  %i.o = tail call ptr @cons(ptr noundef %i.i, ptr noundef %i.n) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @decode_st_moden(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = and i32 %0, 2048
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @cintern(ptr noundef nonnull @.str.39) #27
  %i.c = tail call ptr @cons(ptr noundef %i.b, ptr noundef null) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]  ; 2 uses
  %i.d = and i32 %0, 1024
  %.not36 = icmp eq i32 %i.d, 0
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @cintern(ptr noundef nonnull @.str.40) #27
  %i.f = tail call ptr @cons(ptr noundef %i.e, ptr noundef %.0) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.f, %bb.d ], [ %.0, %bb.c ]   ; 2 uses
  %i.g = and i32 %0, 256
  %.not37 = icmp eq i32 %i.g, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @cintern(ptr noundef nonnull @.str.41) #27
  %i.i = tail call ptr @cons(ptr noundef %i.h, ptr noundef %.1) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi ptr [ %i.i, %bb.f ], [ %.1, %bb.e ]   ; 2 uses
  %i.j = and i32 %0, 128
  %.not38 = icmp eq i32 %i.j, 0
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call ptr @cintern(ptr noundef nonnull @.str.42) #27
  %i.l = tail call ptr @cons(ptr noundef %i.k, ptr noundef %.2) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi ptr [ %i.l, %bb.h ], [ %.2, %bb.g ]   ; 2 uses
  %i.m = and i32 %0, 64
  %.not39 = icmp eq i32 %i.m, 0
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = tail call ptr @cintern(ptr noundef nonnull @.str.43) #27
  %i.o = tail call ptr @cons(ptr noundef %i.n, ptr noundef %.3) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4 = phi ptr [ %i.o, %bb.j ], [ %.3, %bb.i ]   ; 2 uses
  %i.p = and i32 %0, 32
  %.not40 = icmp eq i32 %i.p, 0
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = tail call ptr @cintern(ptr noundef nonnull @.str.44) #27
  %i.r = tail call ptr @cons(ptr noundef %i.q, ptr noundef %.4) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.5 = phi ptr [ %i.r, %bb.l ], [ %.4, %bb.k ]   ; 2 uses
  %i.s = and i32 %0, 16
  %.not41 = icmp eq i32 %i.s, 0
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = tail call ptr @cintern(ptr noundef nonnull @.str.45) #27
  %i.u = tail call ptr @cons(ptr noundef %i.t, ptr noundef %.5) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.6 = phi ptr [ %i.u, %bb.n ], [ %.5, %bb.m ]   ; 2 uses
  %i.v = and i32 %0, 8
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = tail call ptr @cintern(ptr noundef nonnull @.str.46) #27
  %i.x = tail call ptr @cons(ptr noundef %i.w, ptr noundef %.6) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.7 = phi ptr [ %i.x, %bb.p ], [ %.6, %bb.o ]   ; 2 uses
  %i.y = and i32 %0, 4
  %.not43 = icmp eq i32 %i.y, 0
  br i1 %.not43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = tail call ptr @cintern(ptr noundef nonnull @.str.47) #27
  %i.aa = tail call ptr @cons(ptr noundef %i.z, ptr noundef %.7) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.8 = phi ptr [ %i.aa, %bb.r ], [ %.7, %bb.q ]  ; 2 uses
  %i.ab = and i32 %0, 2
  %.not44 = icmp eq i32 %i.ab, 0
  br i1 %.not44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ac = tail call ptr @cintern(ptr noundef nonnull @.str.48) #27
  %i.ad = tail call ptr @cons(ptr noundef %i.ac, ptr noundef %.8) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.9 = phi ptr [ %i.ad, %bb.t ], [ %.8, %bb.s ]  ; 2 uses
  %i.ae = and i32 %0, 1
  %.not45 = icmp eq i32 %i.ae, 0
  br i1 %.not45, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = tail call ptr @cintern(ptr noundef nonnull @.str.49) #27
  %i.ag = tail call ptr @cons(ptr noundef %i.af, ptr noundef %.9) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.10 = phi ptr [ %i.ag, %bb.v ], [ %.9, %bb.u ] ; 2 uses
  %1 = and i32 %0, 61440
  %2 = add nsw i32 %1, -4096                      ; 2 uses
  %3 = lshr exact i32 %2, 12                      ; 2 uses
  %i.ah = icmp ult i32 %2, 49152
  %switch.maskindex = trunc i32 %3 to i16
  %switch.shifted = lshr i16 2731, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.ah, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread59

switch.lookup:                                    ; preds = %bb.w
  %i.ai = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.decode_st_moden, i64 %i.ai
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.aj = tail call ptr @cintern(ptr noundef nonnull %switch.load) #27
  %i.ak = tail call ptr @cons(ptr noundef %i.aj, ptr noundef %.10) #27
  br label %.thread59

.thread59:                                        ; preds = %bb.w, %switch.lookup
  %.17 = phi ptr [ %.10, %bb.w ], [ %i.ak, %switch.lookup ]
  ret ptr %.17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @encode_st_mode(ptr noundef %0) #4 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @assemble_options(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef 2048, ptr noundef nonnull @.str.40, i32 noundef 1024, ptr noundef nonnull @.str.41, i32 noundef 256, ptr noundef nonnull @.str.42, i32 noundef 128, ptr noundef nonnull @.str.43, i32 noundef 64, ptr noundef nonnull @.str.44, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef 16, ptr noundef nonnull @.str.46, i32 noundef 8, ptr noundef nonnull @.str.47, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 1, ptr noundef null)
  %i.b = sitofp i32 %i.a to double
  %i.c = tail call ptr @flocons(double noundef %i.b) #27
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @decode_st_mode(ptr noundef %0) #4 {
bb.a:
  %i.a = tail call i64 @get_c_long(ptr noundef %0) #27
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call ptr @decode_st_moden(i32 noundef %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @decode_stat(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !47
  %i.b = uitofp i64 %i.a to double
  %i.c = tail call ptr @flocons(double noundef %i.b) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = uitofp i64 %i.e to double
  %i.g = tail call ptr @flocons(double noundef %i.f) #27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !49
  %i.j = tail call ptr @decode_st_moden(i32 noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50
  %i.m = uitofp i64 %i.l to double
  %i.n = tail call ptr @flocons(double noundef %i.m) #27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = uitofp i32 %i.p to double
  %i.r = tail call ptr @flocons(double noundef %i.q) #27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !52
  %i.u = uitofp i32 %i.t to double
  %i.v = tail call ptr @flocons(double noundef %i.u) #27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53
  %i.y = uitofp i64 %i.x to double
  %i.z = tail call ptr @flocons(double noundef %i.y) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = tail call ptr @flocons(double noundef %i.ac) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55
  %i.ag = sitofp i64 %i.af to double
  %i.ah = tail call ptr @flocons(double noundef %i.ag) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.ak = sitofp i64 %i.aj to double
  %i.al = tail call ptr @flocons(double noundef %i.ak) #27
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = load i64, ptr %i.am, align 8, !tbaa !43
  %i.ao = sitofp i64 %i.an to double
  %i.ap = tail call ptr @flocons(double noundef %i.ao) #27
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !56
  %i.as = sitofp i64 %i.ar to double
  %i.at = tail call ptr @flocons(double noundef %i.as) #27
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = load i64, ptr %i.au, align 8, !tbaa !57
  %i.aw = sitofp i64 %i.av to double
  %i.ax = tail call ptr @flocons(double noundef %i.aw) #27
  %i.ay = tail call ptr (ptr, ...) @symalist(ptr noundef nonnull @.str.57, ptr noundef %i.c, ptr noundef nonnull @.str.58, ptr noundef %i.g, ptr noundef nonnull @.str.59, ptr noundef %i.j, ptr noundef nonnull @.str.60, ptr noundef %i.n, ptr noundef nonnull @.str.5, ptr noundef %i.r, ptr noundef nonnull @.str.6, ptr noundef %i.v, ptr noundef nonnull @.str.61, ptr noundef %i.z, ptr noundef nonnull @.str.62, ptr noundef %i.ad, ptr noundef nonnull @.str.63, ptr noundef %i.ah, ptr noundef nonnull @.str.64, ptr noundef %i.al, ptr noundef nonnull @.str.65, ptr noundef %i.ap, ptr noundef nonnull @.str.66, ptr noundef %i.at, ptr noundef nonnull @.str.67, ptr noundef %i.ax, ptr noundef null)
  ret ptr %i.ay
}

; Function Attrs: nounwind uwtable
define dso_local ptr @g_stat(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = tail call i64 @no_interrupt(i64 noundef 1) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  %i.b = tail call ptr @get_c_string(ptr noundef %0) #27
  %i.c = call i32 %1(ptr noundef %i.b, ptr noundef nonnull %2) #27
  %sext = shl i64 %i.a, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = call i64 @no_interrupt(i64 noundef %i.d) #27 ; 0 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @decode_stat(ptr noundef nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local ptr @l_stat(ptr noundef %0) #4 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = tail call i64 @no_interrupt(i64 noundef 1) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %i.b = tail call ptr @get_c_string(ptr noundef %0) #27
  %i.c = call i32 @stat(ptr noundef %i.b, ptr noundef nonnull %1) #27, !inline_history !58
  %sext.i = shl i64 %i.a, 32
  %i.d = ashr exact i64 %sext.i, 32
  %i.e = tail call i64 @no_interrupt(i64 noundef %i.d) #27 ; 0 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %g_stat.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @decode_stat(ptr noundef nonnull %1)
  br label %g_stat.exit

g_stat.exit:                                      ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @l_fstat(ptr noundef %0) #4 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = tail call i64 @no_interrupt(i64 noundef 1) #27
  %i.b = tail call ptr @get_c_file(ptr noundef %0, ptr noundef null) #27
  %i.c = tail call i32 @fileno(ptr noundef %i.b) #27
  %i.d = call i32 @fstat(i32 noundef %i.c, ptr noundef nonnull %1) #27
  %sext = shl i64 %i.a, 32
  %i.e = ashr exact i64 %sext, 32
  %i.f = tail call i64 @no_interrupt(i64 noundef %i.e) #27 ; 0 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @decode_stat(ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @get_c_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @l_lstat(ptr noundef %0) #4 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = tail call i64 @no_interrupt(i64 noundef 1) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %i.b = tail call ptr @get_c_string(ptr noundef %0) #27
  %i.c = call i32 @lstat(ptr noundef %i.b, ptr noundef nonnull %1) #27, !inline_history !58
  %sext.i = shl i64 %i.a, 32
  %i.d = ashr exact i64 %sext.i, 32
  %i.e = tail call i64 @no_interrupt(i64 noundef %i.d) #27 ; 0 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %g_stat.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @decode_stat(ptr noundef nonnull %1)
  br label %g_stat.exit

g_stat.exit:                                      ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

end_hunk_0
