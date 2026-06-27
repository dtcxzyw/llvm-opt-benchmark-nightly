inline.NumInlined: 37
inline.NumDeleted: 10
begin_hunk_0_@_Py_get_env_flag:bb.a

_Py_str_to_int.exit.thread:                       ; preds = %_Py_GetEnv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

_Py_str_to_int.exit:                              ; preds = %bb.d
  %i.k = trunc nuw nsw i64 %i.e to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.l = icmp slt i64 %i.e, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Py_str_to_int.exit.thread, %_Py_str_to_int.exit
  br label %bb.f

bb.f:                                             ; preds = %_Py_str_to_int.exit, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ %i.k, %_Py_str_to_int.exit ] ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !7
  %i.n = icmp slt i32 %i.m, %.0
  br i1 %i.n, label %bb.g, label %_Py_GetEnv.exit.thread

bb.g:                                             ; preds = %bb.f
  store i32 %.0, ptr %1, align 4, !tbaa !7
  br label %_Py_GetEnv.exit.thread

_Py_GetEnv.exit.thread:                           ; preds = %bb.b, %bb.c, %bb.a, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden void @_PyPreConfig_Read(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PyStatus) align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.PyStatus, align 8           ; 7 uses
  %4 = alloca %struct.PyStatus, align 8           ; 7 uses
  %5 = alloca %struct._PyPreCmdline, align 8      ; 11 uses
  %6 = alloca %struct.PyStatus, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_PyRuntime_Initialize(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %4) #13
  %i.b = load <2 x i32>, ptr %4, align 8
  %.sroa.016.0.copyload = load i32, ptr %4, align 8, !tbaa !7
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load <2 x ptr>, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !11
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load <2 x i32>, ptr %.sroa.19.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.not = icmp eq i32 %.sroa.016.0.copyload, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x i32> %i.b, ptr %0, align 8
  %.sroa.17.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.c, ptr %.sroa.17.0..sroa_idx38, align 8, !tbaa !11
  %.sroa.19.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.d, ptr %.sroa.19.0..sroa_idx62, align 8
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !62
  %.not.i = icmp eq i32 %i.e, 1
  br i1 %.not.i, label %bb.d, label %preconfig_get_global_vars.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr @Py_IsolatedFlag, align 4, !tbaa !7
  store i32 %i.i, ptr %i.f, align 4, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr @Py_IgnoreEnvironmentFlag, align 4, !tbaa !7
  %.not6.i = icmp eq i32 %i.m, 0
  %i.n = zext i1 %.not6.i to i32
  store i32 %i.n, ptr %i.j, align 4, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = load i32, ptr @Py_UTF8Mode, align 4, !tbaa !7 ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %preconfig_get_global_vars.exit

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr i8, ptr %1, i64 28
  store i32 %i.o, ptr %i.q, align 4, !tbaa !66
  br label %preconfig_get_global_vars.exit

preconfig_get_global_vars.exit:                   ; preds = %bb.c, %bb.h, %bb.i
  %i.r = call ptr @setlocale(i32 noundef 0, ptr noundef null) #13 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %preconfig_get_global_vars.exit
  store i32 1, ptr %0, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyPreConfig_Read, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.16, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.x, align 4
  br label %bb.az

bb.k:                                             ; preds = %preconfig_get_global_vars.exit
  %i.y = call ptr @_PyMem_RawStrdup(ptr noundef nonnull %i.r) #13 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %0, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyPreConfig_Read, ptr %i.ab, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ad, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ae, align 4
  br label %bb.az

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %1, i64 8
  %i.ag = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.ah = load <4 x i32>, ptr %1, align 4, !tbaa !7, !noalias !67 ; 3 uses
  %i.ai = getelementptr i8, ptr %1, i64 16        ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !63, !noalias !67 ; 3 uses
  %i.ak = getelementptr i8, ptr %1, i64 32        ; 5 uses
  %i.al = getelementptr i8, ptr %1, i64 20        ; 11 uses
  %i.am = getelementptr i8, ptr %1, i64 24        ; 7 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !65, !noalias !67 ; 3 uses
  %i.ao = getelementptr i8, ptr %1, i64 28        ; 5 uses
  %i.ap = getelementptr i8, ptr %1, i64 36        ; 4 uses
  %i.aq = load <2 x i32>, ptr %i.ak, align 4, !tbaa !7, !noalias !67 ; 4 uses
  %.not112 = icmp eq i32 %i.aj, 0
  br i1 %.not112, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = call ptr @_Py_SetLocaleFromEnv(i32 noundef 0) #13 ; 0 uses
  %i.as = load <4 x i32>, ptr %1, align 4, !tbaa !7
  %.pre179.pre = load i32, ptr %i.ai, align 4, !tbaa !63
  %.pre182.pre = load i32, ptr %i.am, align 4, !tbaa !65
  %i.at = load <2 x i32>, ptr %i.ak, align 4, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre182 = phi i32 [ %.pre182.pre, %bb.n ], [ %i.an, %bb.m ]
  %.pre179 = phi i32 [ %.pre179.pre, %bb.n ], [ 0, %bb.m ]
  %i.au = phi <4 x i32> [ %i.as, %bb.n ], [ %i.ah, %bb.m ]
  %i.av = phi <2 x i32> [ %i.at, %bb.n ], [ %i.aq, %bb.m ]
  %.pr = load i32, ptr %i.ao, align 4, !tbaa !66
  %.pre181 = load i32, ptr %i.al, align 4, !tbaa !64
  %i.aw = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  %i.ax = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !7
  %i.ay = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10648), align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 -1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i32 -1, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i32 -1, ptr %i.bb, align 8
  %.not113 = icmp eq ptr %2, null
  %.sroa.17.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.19.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.be = extractelement <2 x i32> %i.aq, i64 0
  %i.bf = extractelement <2 x i32> %i.aq, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread
  %i.bg = phi i32 [ %.pre182, %bb.o ], [ %i.an, %.thread ]
  %i.bh = phi i32 [ %.pre181, %bb.o ], [ %i.em, %.thread ]
  %i.bi = phi i32 [ %.pre179, %bb.o ], [ %i.aj, %.thread ]
  %i.bj = phi i1 [ false, %bb.o ], [ true, %.thread ]
  %.0104170 = phi i32 [ 0, %bb.o ], [ %.1105, %.thread ] ; 2 uses
  %i.bk = phi i32 [ %.pr, %bb.o ], [ %i.ek, %.thread ] ; 3 uses
  %i.bl = phi <4 x i32> [ %i.au, %bb.o ], [ %i.ah, %.thread ]
  %i.bm = phi <2 x i32> [ %i.av, %bb.o ], [ %i.aq, %.thread ]
  store <4 x i32> %i.bl, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !63
  store i32 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10636), align 4, !tbaa !64
  store i32 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10640), align 8, !tbaa !65
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10644), align 4, !tbaa !66
  store <2 x i32> %i.bm, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10648), align 8, !tbaa !7
  br i1 %.not113, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_PyArgv_AsWstrList(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %6, ptr noundef nonnull readonly %2, ptr noundef nonnull %5)
  %i.bn = load <2 x i32>, ptr %6, align 8
  %.sroa.016.0.copyload23 = load i32, ptr %6, align 8, !tbaa !7
  %i.bo = load <2 x ptr>, ptr %.sroa.17.0..sroa_idx44, align 8, !tbaa !11
  %i.bp = load <2 x i32>, ptr %.sroa.19.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.not114 = icmp eq i32 %.sroa.016.0.copyload23, 0
  br i1 %.not114, label %bb.r, label %.thread146

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !70
  call void @_PyPreCmdline_Read(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %3, ptr noundef nonnull %5, ptr noundef nonnull %1), !noalias !70
  %i.bq = load <2 x i32>, ptr %3, align 8, !noalias !70
  %.sroa.0.0.copyload.i = load i32, ptr %3, align 8, !tbaa !7, !noalias !70
  %i.br = load <2 x ptr>, ptr %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !tbaa !11, !noalias !70
  %i.bs = load <2 x i32>, ptr %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !70
  %.not.i119 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i119, label %bb.s, label %.thread146

bb.s:                                             ; preds = %bb.r
  %i.bt = load i32, ptr %i.ba, align 4, !tbaa !49, !noalias !70
  %i.bu = load <2 x i32>, ptr %i.az, align 8, !tbaa !7, !noalias !70
  store <2 x i32> %i.bu, ptr %i.af, align 4, !tbaa !7, !noalias !70
  %i.bv = load i32, ptr %i.bb, align 8, !tbaa !39, !noalias !70
  store i32 %i.bv, ptr %i.ak, align 4, !tbaa !50, !noalias !70
  %i.bw = load i32, ptr %i.ai, align 4, !tbaa !63, !noalias !70
  %.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.al, align 4, !tbaa !64, !noalias !70
  br label %preconfig_init_coerce_c_locale.exit.i.sink.split

bb.u:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %_Py_GetEnv.exit.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = call ptr @getenv(ptr noundef nonnull @.str.19) #13, !noalias !70 ; 4 uses
  %.not6.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not6.i.i.i, label %_Py_GetEnv.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !56, !noalias !70
  switch i8 %i.by, label %_Py_GetEnv.exit.tail.thread.i.i [
    i8 0, label %_Py_GetEnv.exit.thread.i.i
    i8 48, label %_Py_GetEnv.exit.tail.i.i
  ]

_Py_GetEnv.exit.tail.i.i:                         ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !70
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %_Py_GetEnv.exit.tail.thread.i.i

bb.x:                                             ; preds = %_Py_GetEnv.exit.tail.i.i
  %i.cc = load i32, ptr %i.al, align 4, !tbaa !64, !noalias !70
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.y, label %_Py_GetEnv.exit.thread.i.i

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.al, align 4, !tbaa !64, !noalias !70
  br label %_Py_GetEnv.exit.thread.i.i

_Py_GetEnv.exit.tail.thread.i.i:                  ; preds = %_Py_GetEnv.exit.tail.i.i, %bb.w
  %i.ce = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(5) @.str.21) #14, !noalias !70
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_Py_GetEnv.exit.tail.thread.i.i
  %i.cg = load i32, ptr %i.am, align 4, !tbaa !65, !noalias !70
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.aa, label %_Py_GetEnv.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.am, align 4, !tbaa !65, !noalias !70
  br label %_Py_GetEnv.exit.thread.i.i

bb.ab:                                            ; preds = %_Py_GetEnv.exit.tail.thread.i.i
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !64, !noalias !70
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.ac, label %_Py_GetEnv.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  store i32 1, ptr %i.al, align 4, !tbaa !64, !noalias !70
  br label %_Py_GetEnv.exit.thread.i.i

_Py_GetEnv.exit.thread.i.i:                       ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.ck = load i32, ptr %i.al, align 4, !tbaa !64, !noalias !70 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  %i.cm = icmp eq i32 %i.ck, 1
  %or.cond.i.i = or i1 %i.cl, %i.cm
  br i1 %or.cond.i.i, label %.sink.split.i.i, label %bb.ad

.sink.split.i.i:                                  ; preds = %_Py_GetEnv.exit.thread.i.i
  %i.cn = call i32 @_Py_LegacyLocaleDetected(i32 noundef 0) #13, !noalias !70
  %.not21.i.i = icmp eq i32 %i.cn, 0
  %..i.i = select i1 %.not21.i.i, i32 0, i32 2
  store i32 %..i.i, ptr %i.al, align 4, !tbaa !64, !noalias !70
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i.i, %_Py_GetEnv.exit.thread.i.i
  %i.co = load i32, ptr %i.am, align 4, !tbaa !65, !noalias !70
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %preconfig_init_coerce_c_locale.exit.i.sink.split, label %preconfig_init_coerce_c_locale.exit.i

preconfig_init_coerce_c_locale.exit.i.sink.split: ; preds = %bb.ad, %bb.t
  store i32 0, ptr %i.am, align 4, !tbaa !65, !noalias !70
  br label %preconfig_init_coerce_c_locale.exit.i

preconfig_init_coerce_c_locale.exit.i:            ; preds = %preconfig_init_coerce_c_locale.exit.i.sink.split, %bb.ad
  %i.cq = load i32, ptr %i.ao, align 4, !tbaa !66, !noalias !73
  %i.cr = icmp sgt i32 %i.cq, -1
  br i1 %i.cr, label %bb.ap, label %bb.ae

bb.ae:                                            ; preds = %preconfig_init_coerce_c_locale.exit.i
  %i.cs = load i64, ptr %i.bc, align 8, !tbaa !32, !noalias !73 ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i, label %_Py_get_xoption.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !21, !noalias !73
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.lr.ph.i.i.i
  %.01929.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dh, %bb.aj ] ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %.01929.i.i.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !30, !noalias !73 ; 5 uses
  %i.cx = call ptr @wcschr(ptr noundef %i.cw, i32 noundef 61) #14, !noalias !73 ; 3 uses
  %.not.i.i24.i = icmp eq ptr %i.cx, null         ; 2 uses
  br i1 %.not.i.i24.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dc = call i64 @wcslen(ptr noundef %i.cw) #14, !noalias !73
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.018.i.i.i = phi i64 [ %i.db, %bb.ag ], [ %i.dc, %bb.ah ] ; 2 uses
  %i.dd = call i32 @wcsncmp(ptr noundef %i.cw, ptr noundef nonnull @.str.22, i64 noundef %.018.i.i.i) #14, !noalias !73
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = and i64 %.018.i.i.i, 4611686018427387903
  %i.dg = icmp eq i64 %i.df, 4
  %or.cond.i25.i = and i1 %i.de, %i.dg
  br i1 %or.cond.i25.i, label %_Py_get_xoption.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = add nuw nsw i64 %.01929.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dh, %i.cs
  br i1 %exitcond.not.i.i.i, label %_Py_get_xoption.exit.thread.i.i, label %bb.af, !llvm.loop !55

_Py_get_xoption.exit.i.i:                         ; preds = %bb.ai
  %.not.i26.i = icmp eq ptr %i.cw, null
  br i1 %.not.i26.i, label %_Py_get_xoption.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %_Py_get_xoption.exit.i.i
  br i1 %.not.i.i24.i, label %.sink.split.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.di = getelementptr i8, ptr %i.cx, i64 4      ; 2 uses
  %i.dj = call i32 @wcscmp(ptr noundef %i.di, ptr noundef nonnull @.str.23) #14, !noalias !73
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.sink.split.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dl = call i32 @wcscmp(ptr noundef %i.di, ptr noundef nonnull @.str.24) #14, !noalias !73
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.sink.split.i, label %.thread146

_Py_get_xoption.exit.thread.i.i:                  ; preds = %bb.aj, %_Py_get_xoption.exit.i.i, %bb.ae
  %i.dn = load i32, ptr %i.ag, align 4, !tbaa !48, !noalias !73
  %.not.i22.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i22.i.i, label %.sink.split.i, label %bb.an

bb.an:                                            ; preds = %_Py_get_xoption.exit.thread.i.i
  %i.do = call ptr @getenv(ptr noundef nonnull @.str.26) #13, !noalias !73 ; 4 uses
  %.not6.i.i22.i = icmp eq ptr %i.do, null
  br i1 %.not6.i.i22.i, label %.sink.split.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !56, !noalias !73
  switch i8 %i.dp, label %.thread146 [
    i8 0, label %.sink.split.i
    i8 49, label %_Py_GetEnv.exit.tail.i23.i
    i8 48, label %.tail.i.i
  ]

_Py_GetEnv.exit.tail.i23.i:                       ; preds = %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !73
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %.sink.split.i, label %.thread146

.tail.i.i:                                        ; preds = %bb.ao
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !noalias !73
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %.sink.split.i, label %.thread146

.sink.split.i:                                    ; preds = %.tail.i.i, %_Py_GetEnv.exit.tail.i23.i, %bb.ao, %bb.an, %_Py_get_xoption.exit.thread.i.i, %bb.am, %bb.al, %bb.ak
  %.sink.i = phi i32 [ 0, %.tail.i.i ], [ 1, %bb.ak ], [ 0, %bb.am ], [ 1, %bb.al ], [ 1, %_Py_GetEnv.exit.tail.i23.i ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %_Py_get_xoption.exit.thread.i.i ]
  store i32 %.sink.i, ptr %i.ao, align 4, !tbaa !66, !noalias !73
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i, %preconfig_init_coerce_c_locale.exit.i
  %i.dw = load i32, ptr %i.ap, align 4, !tbaa !57, !noalias !76
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.aq, label %preconfig_read.exit

bb.aq:                                            ; preds = %bb.ap
  %i.dy = load i32, ptr %i.ag, align 4, !tbaa !48, !noalias !76
  %.not.i.i28.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i28.i, label %.thread13.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = call ptr @getenv(ptr noundef nonnull @.str.29) #13, !noalias !76 ; 3 uses
  %.not6.i.i29.i = icmp eq ptr %i.dz, null
  br i1 %.not6.i.i29.i, label %.thread13.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !56, !noalias !76
  %.not7.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not7.i.i.i, label %.thread13.i.i, label %_Py_GetEnv.exit.i.i

_Py_GetEnv.exit.i.i:                              ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !76
  %i.eb = call i32 @_PyMem_GetAllocatorName(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.a) #13, !noalias !76
  %i.ec = icmp sgt i32 %i.eb, -1
  br i1 %i.ec, label %.thread.i.i, label %bb.au

.thread.i.i:                                      ; preds = %_Py_GetEnv.exit.i.i
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !76 ; 2 uses
  store i32 %i.ed, ptr %i.ap, align 4, !tbaa !57, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !76
  %i.ee = icmp ne i32 %i.ed, 0
  br label %.thread13.i.i

.thread13.i.i:                                    ; preds = %.thread.i.i, %bb.as, %bb.ar, %bb.aq
  %.not.i30.i = phi i1 [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.aq ], [ %i.ee, %.thread.i.i ]
  %i.ef = load i32, ptr %i.ak, align 4, !tbaa !50, !noalias !76
  %.not10.i.i = icmp eq i32 %i.ef, 0
  %brmerge.i.i = select i1 %.not10.i.i, i1 true, i1 %.not.i30.i
  br i1 %brmerge.i.i, label %preconfig_read.exit, label %bb.at

bb.at:                                            ; preds = %.thread13.i.i
  store i32 2, ptr %i.ap, align 4, !tbaa !57, !noalias !76
  br label %preconfig_read.exit

bb.au:                                            ; preds = %_Py_GetEnv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !76
  br label %.thread146

preconfig_read.exit:                              ; preds = %bb.at, %.thread13.i.i, %bb.ap
  %i.eg = load i32, ptr %i.al, align 4, !tbaa !64
  %i.eh = icmp eq i32 %i.eg, 0
  %7 = icmp ne i32 %.0104170, 0
  %or.cond = select i1 %i.eh, i1 true, i1 %7      ; 3 uses
  br i1 %or.cond, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %preconfig_read.exit
  %i.ei = call i32 @_Py_CoerceLegacyLocale(i32 noundef 0) #13 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %preconfig_read.exit
  %.1105 = phi i32 [ %.0104170, %preconfig_read.exit ], [ 1, %bb.av ]
  %i.ej = icmp eq i32 %i.bk, -1
  %i.ek = load i32, ptr %i.ao, align 4, !tbaa !66 ; 4 uses
  br i1 %i.ej, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.el = icmp ne i32 %i.ek, 1
  %or.cond165 = and i1 %or.cond, %i.el
  br i1 %or.cond165, label %.thread146, label %.thread

bb.ay:                                            ; preds = %bb.aw
  %.not116 = icmp eq i32 %i.ek, %i.bk
  %or.cond164 = and i1 %or.cond, %.not116
  br i1 %or.cond164, label %.thread146, label %.thread

.thread:                                          ; preds = %bb.ax, %bb.ay
  %i.em = load i32, ptr %i.al, align 4, !tbaa !64 ; 2 uses
  store <4 x i32> %i.ah, ptr %1, align 4, !tbaa !7
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !63
  store i32 %i.be, ptr %i.ak, align 4, !tbaa !50
  store i32 %i.an, ptr %i.am, align 4, !tbaa !65
  store i32 %i.bf, ptr %i.ap, align 4, !tbaa !57
  store i32 %i.ek, ptr %i.ao, align 4, !tbaa !66
  store i32 %i.em, ptr %i.al, align 4, !tbaa !64
  br i1 %i.bj, label %.thread146, label %bb.p

.thread146:                                       ; preds = %bb.ax, %bb.ay, %bb.ao, %_Py_GetEnv.exit.tail.i23.i, %.tail.i.i, %bb.r, %bb.am, %bb.q, %.thread, %bb.au
  %i.en = phi <2 x i32> [ <i32 1, i32 0>, %bb.au ], [ zeroinitializer, %bb.ay ], [ <i32 1, i32 0>, %bb.am ], [ %i.bq, %bb.r ], [ <i32 1, i32 0>, %.tail.i.i ], [ <i32 1, i32 0>, %_Py_GetEnv.exit.tail.i23.i ], [ <i32 1, i32 0>, %bb.ao ], [ <i32 1, i32 0>, %.thread ], [ %i.bn, %bb.q ], [ zeroinitializer, %bb.ax ]
  %i.eo = phi <2 x i32> [ zeroinitializer, %bb.au ], [ zeroinitializer, %bb.ay ], [ zeroinitializer, %bb.am ], [ %i.bs, %bb.r ], [ zeroinitializer, %.tail.i.i ], [ zeroinitializer, %_Py_GetEnv.exit.tail.i23.i ], [ zeroinitializer, %bb.ao ], [ zeroinitializer, %.thread ], [ %i.bp, %bb.q ], [ zeroinitializer, %bb.ax ]
  %i.ep = phi <2 x ptr> [ <ptr @__func__.preconfig_init_allocator, ptr @.str.30>, %bb.au ], [ splat (ptr null), %bb.ay ], [ <ptr @__func__.preconfig_init_utf8_mode, ptr @.str.25>, %bb.am ], [ %i.br, %bb.r ], [ <ptr @__func__.preconfig_init_utf8_mode, ptr @.str.28>, %.tail.i.i ], [ <ptr @__func__.preconfig_init_utf8_mode, ptr @.str.28>, %_Py_GetEnv.exit.tail.i23.i ], [ <ptr @__func__.preconfig_init_utf8_mode, ptr @.str.28>, %bb.ao ], [ <ptr @__func__._PyPreConfig_Read, ptr @.str.17>, %.thread ], [ %i.bo, %bb.q ], [ splat (ptr null), %bb.ax ]
  %i.eq = call ptr @setlocale(i32 noundef 0, ptr noundef nonnull %i.y) #13 ; 0 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.y) #13
  store <4 x i32> %i.aw, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  store <4 x i32> %i.ax, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !7
  store <2 x i32> %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10648), align 8, !tbaa !7
  call void @_PyWideStringList_Clear(ptr noundef nonnull %5) #13
  call void @_PyWideStringList_Clear(ptr noundef nonnull %i.bc) #13
  store <2 x i32> %i.en, ptr %0, align 8
  %.sroa.17.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ep, ptr %.sroa.17.0..sroa_idx48, align 8, !tbaa !11
  %.sroa.19.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.eo, ptr %.sroa.19.0..sroa_idx72, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.az

bb.az:                                            ; preds = %bb.j, %.thread146, %bb.l, %bb.b
  ret void
}

declare void @_PyRuntime_Initialize(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #9

declare ptr @_Py_SetLocaleFromEnv(i32 noundef) local_unnamed_addr #1

declare i32 @_Py_CoerceLegacyLocale(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @_PyPreConfig_Write(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PyStatus) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !7, !noalias !79 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63, !noalias !79 ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !64, !noalias !79 ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.g = load <4 x i32>, ptr %i.f, align 4, !tbaa !7, !noalias !79 ; 3 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !65, !noalias !79
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 836), align 4, !tbaa !82
  %.not2 = icmp eq i32 %i.i, 0
  br i1 %.not2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.j = extractelement <4 x i32> %i.g, i64 3     ; 2 uses
  %.not3 = icmp eq i32 %i.j, 0
  br i1 %.not3, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @_PyMem_SetupAllocators(i32 noundef %i.j) #13
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %0, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyPreConfig_Write, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.q, align 4
  br label %bb.p

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.r = extractelement <4 x i32> %i.a, i64 2     ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.r, ptr @Py_IsolatedFlag, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = extractelement <4 x i32> %i.a, i64 3     ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.t, 0
  %i.v = zext i1 %.not.i to i32
  store i32 %i.v, ptr @Py_IgnoreEnvironmentFlag, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = extractelement <4 x i32> %i.g, i64 1     ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.k, label %preconfig_set_global_vars.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.w, ptr @Py_UTF8Mode, align 4, !tbaa !7
  br label %preconfig_set_global_vars.exit

preconfig_set_global_vars.exit:                   ; preds = %bb.j, %bb.k
  %.not4 = icmp eq i32 %i.c, 0
  br i1 %.not4, label %bb.o, label %bb.l

bb.l:                                             ; preds = %preconfig_set_global_vars.exit
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @_Py_CoerceLegacyLocale(i32 noundef %i.h) #13
  %.not6 = icmp eq i32 %i.y, 0
  %spec.select = select i1 %.not6, i32 0, i32 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.20.0 = phi i32 [ 0, %bb.l ], [ %spec.select, %bb.m ]
  %i.z = tail call ptr @_Py_SetLocaleFromEnv(i32 noundef 0) #13 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %preconfig_set_global_vars.exit
  %.sroa.20.1 = phi i32 [ %i.e, %preconfig_set_global_vars.exit ], [ %.sroa.20.0, %bb.n ]
  store <4 x i32> %i.a, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !63
  store i32 %.sroa.20.1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10636), align 4, !tbaa !64
  store <4 x i32> %i.g, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10640), align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.o, %bb.b
  ret void
}

declare i32 @_PyMem_SetupAllocators(i32 noundef) local_unnamed_addr #1

declare void @_PyOS_ResetGetOpt() local_unnamed_addr #1

declare i32 @_PyOS_GetOpt(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyWideStringList_Append(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @_Py_LegacyLocaleDetected(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @_PyMem_GetAllocatorName(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }
end_hunk_0
