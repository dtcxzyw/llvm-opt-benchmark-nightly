inline.NumInlined: 37
inline.NumDeleted: 10
begin_hunk_0_@_PyPreConfig_Read
define hidden void @_PyPreConfig_Read(ptr dead_on_unwind noalias writable writeonly sret(%struct.PyStatus) align 8 captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.PyStatus, align 8           ; 8 uses
  %4 = alloca %struct.PyStatus, align 8           ; 7 uses
  %5 = alloca %struct._PyPreCmdline, align 8      ; 11 uses
  %6 = alloca %struct.PyStatus, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_PyRuntime_Initialize(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %4) #14
  %i.b = load <2 x i32>, ptr %4, align 8
end_hunk_0
begin_hunk_1_@_PyPreConfig_Read:bb.a
  %i.ai = getelementptr i8, ptr %1, i64 16        ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !63, !noalias !67 ; 3 uses
  %i.ak = getelementptr i8, ptr %1, i64 32        ; 5 uses
  %7 = load i32, ptr %i.ak, align 4, !tbaa !50, !noalias !67 ; 3 uses
  %i.al = getelementptr i8, ptr %1, i64 20        ; 11 uses
  %i.am = getelementptr i8, ptr %1, i64 24        ; 7 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !65, !noalias !67 ; 3 uses
  %i.ao = getelementptr i8, ptr %1, i64 28        ; 5 uses
  %i.ap = getelementptr i8, ptr %1, i64 36        ; 6 uses
  %8 = load i32, ptr %i.ap, align 4, !tbaa !57, !noalias !67 ; 3 uses
  %.not112 = icmp eq i32 %i.aj, 0
  br i1 %.not112, label %bb.o, label %bb.n

end_hunk_1
begin_hunk_2_@_PyPreConfig_Read:bb.a
  %i.aq = call ptr @_Py_SetLocaleFromEnv(i32 noundef 0) #14 ; 0 uses
  %i.ar = load <4 x i32>, ptr %1, align 4, !tbaa !7
  %.pre179.pre = load i32, ptr %i.ai, align 4, !tbaa !63
  %.pre180.pre = load i32, ptr %i.ak, align 4, !tbaa !50
  %.pre182.pre = load i32, ptr %i.am, align 4, !tbaa !65
  %.pre183.pre = load i32, ptr %i.ap, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre183 = phi i32 [ %.pre183.pre, %bb.n ], [ %8, %bb.m ]
  %.pre182 = phi i32 [ %.pre182.pre, %bb.n ], [ %i.an, %bb.m ]
  %.pre180 = phi i32 [ %.pre180.pre, %bb.n ], [ %7, %bb.m ]
  %.pre179 = phi i32 [ %.pre179.pre, %bb.n ], [ 0, %bb.m ]
  %i.as = phi <4 x i32> [ %i.ar, %bb.n ], [ %i.ah, %bb.m ]
  %.pr = load i32, ptr %i.ao, align 4, !tbaa !66
  %.pre181 = load i32, ptr %i.al, align 4, !tbaa !64
  %i.at = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
end_hunk_2
begin_hunk_3_@_PyPreConfig_Read:bb.a
  store i32 -1, ptr %i.ay, align 8
  %.not113 = icmp eq ptr %2, null
  %.sroa.17.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.18.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.19.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.11.sroa.10.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread
  %11 = phi i32 [ %.pre183, %bb.o ], [ %8, %.thread ]
  %i.az = phi i32 [ %.pre182, %bb.o ], [ %i.an, %.thread ]
  %12 = phi i32 [ %.pre181, %bb.o ], [ %i.ed, %.thread ]
  %i.ba = phi i32 [ %.pre180, %bb.o ], [ %7, %.thread ]
  %i.bb = phi i32 [ %.pre179, %bb.o ], [ %i.aj, %.thread ]
  %i.bc = phi i1 [ false, %bb.o ], [ true, %.thread ]
  %.0104170 = phi i32 [ 0, %bb.o ], [ %.1105, %.thread ] ; 2 uses
  %i.bd = phi i32 [ %.pr, %bb.o ], [ %i.eb, %.thread ] ; 3 uses
  %i.be = phi <4 x i32> [ %i.as, %bb.o ], [ %i.ah, %.thread ]
  store <4 x i32> %i.be, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  store i32 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !63
  store i32 %i.ba, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10648), align 8, !tbaa !50
  store i32 %12, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10636), align 4, !tbaa !64
  store i32 %i.az, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10640), align 8, !tbaa !65
  store i32 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10644), align 4, !tbaa !66
  store i32 %11, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10652), align 4, !tbaa !57
  br i1 %.not113, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_3
begin_hunk_4_@_PyPreConfig_Read:bb.a
  call void @_PyArgv_AsWstrList(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %6, ptr noundef nonnull readonly %2, ptr noundef nonnull %5)
  %i.bf = load <2 x i32>, ptr %6, align 8
  %.sroa.016.0.copyload23 = load i32, ptr %6, align 8, !tbaa !7
  %.sroa.17.0.copyload45 = load ptr, ptr %.sroa.17.0..sroa_idx44, align 8, !tbaa !11
  %.sroa.18.0.copyload57 = load ptr, ptr %.sroa.18.0..sroa_idx56, align 8, !tbaa !11
  %i.bg = load <2 x i32>, ptr %.sroa.19.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.not114 = icmp eq i32 %.sroa.016.0.copyload23, 0
  br i1 %.not114, label %bb.r, label %.thread146
end_hunk_4
begin_hunk_5_@_PyPreConfig_Read:bb.a
  call void @_PyPreCmdline_Read(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %3, ptr noundef nonnull %5, ptr noundef nonnull %1), !noalias !70
  %i.bh = load <2 x i32>, ptr %3, align 8, !noalias !70
  %.sroa.0.0.copyload.i = load i32, ptr %3, align 8, !tbaa !7, !noalias !70
  %.sroa.11.sroa.8.0.copyload.i = load ptr, ptr %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !tbaa !11, !noalias !70
  %.sroa.11.sroa.10.0.copyload.i = load ptr, ptr %.sroa.11.sroa.10.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !tbaa !11, !noalias !70
  %i.bi = load <2 x i32>, ptr %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !70
  %.not.i119 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i119, label %bb.s, label %.thread146
end_hunk_5
begin_hunk_6_@_PyPreConfig_Read:bb.a
  br i1 %i.ch, label %bb.ap, label %bb.ae

bb.ae:                                            ; preds = %preconfig_init_coerce_c_locale.exit.i
  %i.ci = load i64, ptr %9, align 8, !tbaa !32, !noalias !73 ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i.i.i, label %_Py_get_xoption.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae
  %i.ck = load ptr, ptr %10, align 8, !tbaa !21, !noalias !73
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.lr.ph.i.i.i
end_hunk_6
begin_hunk_7_@_PyPreConfig_Read:bb.a
  %i.ed = load i32, ptr %i.al, align 4, !tbaa !64 ; 2 uses
  store <4 x i32> %i.ah, ptr %1, align 4, !tbaa !7
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !63
  store i32 %7, ptr %i.ak, align 4, !tbaa !50
  store i32 %i.an, ptr %i.am, align 4, !tbaa !65
  store i32 %8, ptr %i.ap, align 4, !tbaa !57
  store i32 %i.eb, ptr %i.ao, align 4, !tbaa !66
  store i32 %i.ed, ptr %i.al, align 4, !tbaa !64
  br i1 %i.bc, label %.thread146, label %bb.p

.thread146:                                       ; preds = %bb.ax, %bb.ay, %bb.ao, %_Py_GetEnv.exit.tail.i23.i, %.tail.i.i, %bb.r, %bb.am, %bb.q, %.thread, %bb.au
  %.sroa.17.1 = phi ptr [ @__func__.preconfig_init_allocator, %bb.au ], [ null, %bb.ay ], [ @__func__.preconfig_init_utf8_mode, %bb.am ], [ %.sroa.11.sroa.8.0.copyload.i, %bb.r ], [ @__func__.preconfig_init_utf8_mode, %.tail.i.i ], [ @__func__.preconfig_init_utf8_mode, %_Py_GetEnv.exit.tail.i23.i ], [ @__func__.preconfig_init_utf8_mode, %bb.ao ], [ @__func__._PyPreConfig_Read, %.thread ], [ %.sroa.17.0.copyload45, %bb.q ], [ null, %bb.ax ]
  %.sroa.18.1 = phi ptr [ @.str.30, %bb.au ], [ null, %bb.ay ], [ @.str.25, %bb.am ], [ %.sroa.11.sroa.10.0.copyload.i, %bb.r ], [ @.str.28, %.tail.i.i ], [ @.str.28, %_Py_GetEnv.exit.tail.i23.i ], [ @.str.28, %bb.ao ], [ @.str.17, %.thread ], [ %.sroa.18.0.copyload57, %bb.q ], [ null, %bb.ax ]
  %i.ee = phi <2 x i32> [ <i32 1, i32 0>, %bb.au ], [ zeroinitializer, %bb.ay ], [ <i32 1, i32 0>, %bb.am ], [ %i.bh, %bb.r ], [ <i32 1, i32 0>, %.tail.i.i ], [ <i32 1, i32 0>, %_Py_GetEnv.exit.tail.i23.i ], [ <i32 1, i32 0>, %bb.ao ], [ <i32 1, i32 0>, %.thread ], [ %i.bf, %bb.q ], [ zeroinitializer, %bb.ax ]
  %i.ef = phi <2 x i32> [ zeroinitializer, %bb.au ], [ zeroinitializer, %bb.ay ], [ zeroinitializer, %bb.am ], [ %i.bi, %bb.r ], [ zeroinitializer, %.tail.i.i ], [ zeroinitializer, %_Py_GetEnv.exit.tail.i23.i ], [ zeroinitializer, %bb.ao ], [ zeroinitializer, %.thread ], [ %i.bg, %bb.q ], [ zeroinitializer, %bb.ax ]
  %i.eg = call ptr @setlocale(i32 noundef 0, ptr noundef nonnull %i.y) #14 ; 0 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.y) #14
  store <4 x i32> %i.at, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  store <4 x i32> %i.au, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !7
  store <2 x i32> %i.av, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10648), align 8, !tbaa !7
  call void @_PyWideStringList_Clear(ptr noundef nonnull %5) #14
  call void @_PyWideStringList_Clear(ptr noundef nonnull %9) #14
  store <2 x i32> %i.ee, ptr %0, align 8
  %.sroa.17.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.17.1, ptr %.sroa.17.0..sroa_idx48, align 8, !tbaa !11
  %.sroa.18.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.18.1, ptr %.sroa.18.0..sroa_idx60, align 8, !tbaa !11
  %.sroa.19.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.ef, ptr %.sroa.19.0..sroa_idx72, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
end_hunk_7
