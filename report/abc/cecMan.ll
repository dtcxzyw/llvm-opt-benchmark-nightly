inline.NumInlined: 55
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Cec_ManSatCreate:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 40
  store i32 1, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.c, align 8, !tbaa !19
  %i.d = sext i32 %.val to i64
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #17
  %i.f = getelementptr inbounds nuw i8, ptr %calloc, i64 48
  store ptr %i.e, ptr %i.f, align 8, !tbaa !36
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !37
  store i32 1000, ptr %i.g, align 8, !tbaa !40
  %i.i = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 56
  store ptr %i.g, ptr %i.k, align 8, !tbaa !42
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !37
  store i32 100, ptr %i.l, align 8, !tbaa !40
  %i.n = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #18
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 72
  store ptr %i.l, ptr %i.p, align 8, !tbaa !43
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !44
  store i32 100, ptr %i.q, align 8, !tbaa !45
  %i.s = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #18
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %calloc, i64 80
  store ptr %i.q, ptr %i.u, align 8, !tbaa !47
  %i.v = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !44
  store i32 100, ptr %i.v, align 8, !tbaa !45
  %i.x = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #18
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %calloc, i64 88
  store ptr %i.v, ptr %i.z, align 8, !tbaa !48
  ret ptr %calloc
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Cec_ManSatPrintStats(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %.val = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !44
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1, i32 noundef %.val.val)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val3.i = load i32, ptr %i.j, align 4, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val.i = load i32, ptr %i.m, align 4, !tbaa !44
  %i.n = add i32 %.val.i, %.val3.i
  %i.o = xor i32 %i.n, -1
  %i.p = add i32 %i.g, %i.o
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, i32 noundef %i.p)
  %i.q = load ptr, ptr %0, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.3, i32 noundef %i.s)
  %i.t = load ptr, ptr %0, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, i32 noundef %i.v)
  %i.w = load ptr, ptr %0, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, i32 noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !55  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !56 ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = sitofp i32 %i.aa to double              ; 2 uses
  %i.ae = fmul nnan double %i.ad, 1.000000e+02
  %i.af = sitofp i32 %i.ac to double
  %i.ag = fdiv double %i.ae, %i.af
  %i.ah = select i1 %.not, double 0.000000e+00, double %i.ag
  %.not38 = icmp eq i32 %i.aa, 0
  br i1 %.not38, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57
  %i.ak = sitofp i32 %i.aj to double
  %i.al = fdiv double %i.ak, %i.ad
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.am = phi double [ %i.al, %bb.b ], [ 0.000000e+00, %bb.a ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, i32 noundef %i.aa, double noundef %i.ah, double noundef %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59 ; 2 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.7)
  %i.ar = sitofp i32 %i.ao to double              ; 2 uses
  %.not.i = icmp eq i32 %i.aq, 0
  %i.as = sitofp i32 %i.aq to double
  %i.at = fmul nnan double %i.ar, 1.000000e+02
  %i.au = fdiv double %i.at, %i.as
  %i.av = select i1 %.not.i, double 0.000000e+00, double %i.au
  %i.aw = fdiv double %i.ar, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.aw, double noundef %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !60 ; 3 uses
  %i.az = load i32, ptr %i.ab, align 4, !tbaa !56 ; 2 uses
  %.not39 = icmp eq i32 %i.az, 0
  %i.ba = sitofp i32 %i.ay to double              ; 2 uses
  %i.bb = fmul nnan double %i.ba, 1.000000e+02
  %i.bc = sitofp i32 %i.az to double
  %i.bd = fdiv double %i.bb, %i.bc
  %i.be = select i1 %.not39, double 0.000000e+00, double %i.bd
  %.not40 = icmp eq i32 %i.ay, 0
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !61
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = fdiv double %i.bh, %i.ba
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bj = phi double [ %i.bi, %bb.d ], [ 0.000000e+00, %bb.c ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.8, i32 noundef %i.ay, double noundef %i.be, double noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !62
  %i.bm = load i32, ptr %i.ap, align 4, !tbaa !59 ; 2 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.7)
  %.not.i43 = icmp eq i32 %i.bm, 0
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = sitofp i32 %i.bl to double
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul nnan <2 x double> %i.bq, <double 1.000000e+02, double 1.000000e+00>
  %i.bs = insertelement <2 x double> <double poison, double 1.000000e+06>, double %i.bn, i64 0
  %i.bt = fdiv <2 x double> %i.br, %i.bs          ; 2 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 0
  %i.bv = select i1 %.not.i43, double 0.000000e+00, double %i.bu
  %i.bw = extractelement <2 x double> %i.bt, i64 1
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.bw, double noundef %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !63 ; 3 uses
  %i.bz = load i32, ptr %i.ab, align 4, !tbaa !56 ; 2 uses
  %i.ca = sitofp i32 %i.by to double              ; 2 uses
  %.not42 = icmp eq i32 %i.by, 0
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !64
  %i.cd = sitofp i32 %i.cc to double
  %i.ce = fdiv double %i.cd, %i.ca
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cf = phi double [ %i.ce, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.not41 = icmp eq i32 %i.bz, 0
  %i.cg = fmul nnan double %i.ca, 1.000000e+02
  %i.ch = sitofp i32 %i.bz to double
  %i.ci = fdiv double %i.cg, %i.ch
  %i.cj = select i1 %.not41, double 0.000000e+00, double %i.ci
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.9, i32 noundef %i.by, double noundef %i.cj, double noundef %i.cf)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !65
  %i.cm = load i32, ptr %i.ap, align 4, !tbaa !59 ; 2 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.7)
  %i.cn = sitofp i32 %i.cl to double              ; 2 uses
  %.not.i44 = icmp eq i32 %i.cm, 0
  %1 = sitofp i32 %i.cm to double
  %2 = fmul nnan double %i.cn, 1.000000e+02
  %3 = fdiv double %2, %1
  %i.co = select i1 %.not.i44, double 0.000000e+00, double %3
  %4 = fdiv double %i.cn, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %4, double noundef %i.co)
  %i.cp = load i32, ptr %i.ap, align 4, !tbaa !59
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.10)
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = fdiv double %i.cq, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, double noundef %i.cr)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #6 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !66
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #19 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #19
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #19 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #19 ; 0 uses
  call void @free(ptr noundef %i.d) #19
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !67, !noalias !69
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #19, !inline_history !72 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: nounwind uwtable
define void @Cec_ManSatStop(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sat_solver_delete(ptr noundef nonnull %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #19
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %.not.i15 = icmp eq ptr %i.j, null
  br i1 %.not.i15, label %Vec_IntFree.exit16, label %bb.e

bb.e:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.j) #19
  br label %Vec_IntFree.exit16

Vec_IntFree.exit16:                               ; preds = %Vec_IntFree.exit, %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 2 uses
  %.not.i17 = icmp eq ptr %i.n, null
  br i1 %.not.i17, label %Vec_PtrFree.exit, label %bb.f

bb.f:                                             ; preds = %Vec_IntFree.exit16
  tail call void @free(ptr noundef nonnull %i.n) #19
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Vec_IntFree.exit16, %bb.f
  tail call void @free(ptr noundef nonnull %i.l) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %.not.i18 = icmp eq ptr %i.r, null
  br i1 %.not.i18, label %Vec_PtrFree.exit19, label %bb.g

bb.g:                                             ; preds = %Vec_PtrFree.exit
  tail call void @free(ptr noundef nonnull %i.r) #19
  br label %Vec_PtrFree.exit19

Vec_PtrFree.exit19:                               ; preds = %Vec_PtrFree.exit, %bb.g
  tail call void @free(ptr noundef nonnull %i.p) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not13 = icmp eq ptr %i.t, null
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %Vec_PtrFree.exit19
  tail call void @free(ptr noundef nonnull %i.t) #19
  br label %bb.i

bb.i:                                             ; preds = %Vec_PtrFree.exit19, %bb.h
  tail call void @free(ptr noundef nonnull %0) #19
  ret void
}

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @Cec_ManPatStart() local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #17 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !74
  store i32 1048576, ptr %i.b, align 8, !tbaa !76
  %i.d = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #18
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8, !tbaa !78
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !44
  store i32 1000, ptr %i.g, align 8, !tbaa !45
  %i.i = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !46
  store ptr %i.g, ptr %i.a, align 8, !tbaa !80
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !44
  store i32 1000, ptr %i.k, align 8, !tbaa !45
  %i.m = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #18
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.o, align 8, !tbaa !81
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Cec_ManPatPrintStats(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !82   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !84   ; 2 uses
  %i.g = sitofp i32 %i.f to double
  %i.h = sitofp i32 %i.b to double
  %i.i = fdiv double %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val24 = load i32, ptr %i.l, align 4, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !85
  %i.o = sub nsw i32 %.val24, %i.n
  %i.p = sitofp i32 %i.o to double
  %i.q = fmul nnan double %i.p, f0x3EB0000000000000
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.11, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.f, double noundef %i.i, double noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !86   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %i.x = sitofp i32 %i.w to double
  %i.y = sitofp i32 %i.s to double
  %i.z = fdiv double %i.x, %i.y
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.val = load i32, ptr %i.ab, align 4, !tbaa !74
  %i.ac = sitofp i32 %.val to double
  %i.ad = fmul nnan double %i.ac, f0x3EB0000000000000
end_hunk_0
