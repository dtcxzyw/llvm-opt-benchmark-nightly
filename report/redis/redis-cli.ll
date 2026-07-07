inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@sendSync:bb.a
  %i.al = zext i1 %i.ak to i32
  %.not45 = icmp eq i32 %i.al, 0
  br i1 %.not45, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.am = load i64, ptr %i.a, align 16
  %i.an = xor i64 %i.am, 6146931167847203627
  %i.ao = getelementptr i8, ptr %i.a, i64 8
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = zext i8 %i.ap to i64
  %i.ar = xor i64 %i.aq, 69
  %i.as = or i64 %i.an, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not47.not = icmp eq i32 %i.au, 0
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.a) #39 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %.3.idx = phi i64 [ 0, %bb.o ], [ %spec.select51, %bb.s ] ; 3 uses
  %.3.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.3.idx ; 3 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !220
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !221
  %i.ba = call i64 %i.az(ptr noundef nonnull %0, ptr noundef nonnull %.3.ptr, i64 noundef 1) #32, !inline_history !223
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bd = call i64 @fwrite(ptr nonnull @.str.97, i64 41, i64 1, ptr %i.bc) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = load i8, ptr %.3.ptr, align 1, !tbaa !73
  %i.bf = icmp eq i8 %i.be, 10                    ; 2 uses
  %i.bg = icmp samesign ne i64 %.3.idx, 0
  %or.cond5 = and i1 %i.bg, %i.bf
  br i1 %or.cond5, label %.split.loop.exit56, label %bb.s

bb.s:                                             ; preds = %bb.r
  %not.52 = xor i1 %i.bf, true
  %.3.add = zext i1 %not.52 to i64
  %spec.select51 = add nuw nsw i64 %.3.idx, %.3.add ; 3 uses
  %.not49 = icmp samesign ult i64 %spec.select51, 4095
  br i1 %.not49, label %bb.p, label %.split.loop.exit55

.split.loop.exit55:                               ; preds = %bb.s
  %.4.ptr.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select51
  br label %.split.loop.exit56

.split.loop.exit56:                               ; preds = %bb.r, %.split.loop.exit55
  %.5 = phi ptr [ %.4.ptr.le, %.split.loop.exit55 ], [ %.3.ptr, %bb.r ]
  store i8 0, ptr %.5, align 1, !tbaa !73
  br i1 %.not47.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %.split.loop.exit56
  br i1 %.not, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %3, align 4, !tbaa !9
  br label %bb.y

.critedge:                                        ; preds = %.split.loop.exit56, %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = icmp ne i32 %i.bi, 977686341
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.critedge
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.bn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #34
  %i.bo = icmp ugt i64 %i.bn, 39
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(40) %i.bm, i64 40, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %.critedge
  %i.bp = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.bh, ptr noundef null, i32 noundef 10) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.t, %bb.x, %bb.w
  %.1 = phi i64 [ 0, %bb.w ], [ %i.bp, %bb.x ], [ 0, %bb.t ], [ 0, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i64 %.1
}

declare i64 @cliWriteConn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @type_free(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @hi_sdsfree(ptr noundef nonnull %i.b) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !226
  tail call void @hi_sdsfree(ptr noundef %i.c) #32
  tail call void @zfree(ptr noundef nonnull %1) #32
  ret void
}

declare void @zfree(ptr noundef) #9

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @bytesToHuman(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 45, ptr %0, align 1, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = sub nsw i64 0, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 10 uses
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]    ; 5 uses
  %i.d = icmp samesign ult i64 %.029, 1024
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0, i64 noundef %1, ptr noundef nonnull @.str.118, i64 noundef %.029) #32 ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ult i64 %.029, 1048576
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = uitofp nneg i64 %.029 to double
  %i.h = fmul nnan double %i.g, f0x3F50000000000000
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0, i64 noundef %1, ptr noundef nonnull @.str.119, double noundef %i.h) #32 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i64 %.029, 1073741824
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = uitofp nneg i64 %.029 to double
  %i.l = fmul nnan double %i.k, f0x3EB0000000000000
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0, i64 noundef %1, ptr noundef nonnull @.str.120, double noundef %i.l) #32 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %.029, 1099511627776
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = uitofp nneg i64 %.029 to double
  %i.p = fmul nnan double %i.o, f0x3E10000000000000
  %i.q = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0, i64 noundef %1, ptr noundef nonnull @.str.121, double noundef %i.p) #32 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.r = icmp samesign ult i64 %.029, 1125899906842624
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = uitofp nneg i64 %.029 to double
  %i.t = fmul nnan double %i.s, f0x3D70000000000000
  %i.u = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0, i64 noundef %1, ptr noundef nonnull @.str.122, double noundef %i.t) #32 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.j, %bb.l, %bb.k, %bb.h, %bb.d
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @powerLawRand(i64 noundef %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %1, 1
  %i.b = tail call i32 @rand() #32
  %i.c = sitofp i32 %i.b to double
  %3 = sitofp i64 %i.a to double
  %i.d = sitofp i64 %0 to double
  %i.e = fadd double %2, 1.000000e+00             ; 3 uses
  %4 = insertelement <2 x double> <double f0x41DFFFFFFFC00000, double poison>, double %i.e, i64 1
  %5 = tail call double @pow(double noundef %3, double noundef %i.e) #32, !tbaa !9
  %i.f = tail call double @pow(double noundef %i.d, double noundef %i.e) #32, !tbaa !9 ; 2 uses
  %i.g = fsub double %5, %i.f
  %6 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.c, i64 0
  %7 = fdiv <2 x double> %6, %4                   ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double %8, double %i.f)
  %9 = extractelement <2 x double> %7, i64 1
  %i.i = tail call double @pow(double noundef %i.h, double noundef %9) #32, !tbaa !9
  %i.j = fptosi double %i.i to i64
  %i.k = add i64 %1, %0
  %i.l = sub i64 %i.k, %i.j
  ret i64 %i.l
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nounwind uwtable
define dso_local void @LRUTestGenKey(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 216), align 8, !tbaa !227
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = tail call i32 @rand() #32
  %i.d = sitofp i32 %i.c to double
  %i.e = fdiv double %i.d, f0x41DFFFFFFFC00000
  %i.f = sitofp i64 %i.b to double
  %i.g = tail call double @pow(double noundef %i.f, double noundef 7.200000e+00) #32, !tbaa !9
  %i.h = fadd double %i.g, -1.000000e+00
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.e, double 1.000000e+00)
  %i.j = tail call double @pow(double noundef %i.i, double noundef f0x3FC1C71C71C71C72) #32, !tbaa !9
  %i.k = fptosi double %i.j to i64
  %i.l = sub i64 %i.b, %i.k
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.123, i64 noundef %i.l) #32 ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @compute_something_fast() local_unnamed_addr #20 {
vector.ph:
  %i.a = alloca [256 x i8], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !73
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.b, align 16, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.c, align 16, !tbaa !73
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.d, align 16, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.e, align 16, !tbaa !73
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.f, align 16, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.g, align 16, !tbaa !73
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.h, align 16, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.i, align 16, !tbaa !73
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.j, align 16, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.k, align 16, !tbaa !73
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.l, align 16, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.m, align 16, !tbaa !73
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.n, align 16, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.o, align 16, !tbaa !73
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.p, align 16, !tbaa !73
  br label %.preheader

.preheader:                                       ; preds = %vector.ph, %.preheader
  %.025 = phi i64 [ %i.ag, %.preheader ], [ 0, %vector.ph ]
  %.01824 = phi i32 [ %i.q, %.preheader ], [ 1000, %vector.ph ]
  %.01923 = phi i8 [ %i.r, %.preheader ], [ 0, %vector.ph ]
  %.02022 = phi i32 [ %i.w, %.preheader ], [ 0, %vector.ph ]
  %i.q = add nsw i32 %.01824, -1                  ; 2 uses
  %i.r = add i8 %.01923, 1                        ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !73    ; 3 uses
  %i.v = zext i8 %i.u to i32
  %i.w = add i32 %.02022, %i.v                    ; 2 uses
  %i.x = and i32 %i.w, 255
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !73
  store i8 %i.aa, ptr %i.t, align 1, !tbaa !73
  store i8 %i.u, ptr %i.z, align 1, !tbaa !73
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !73
  %.narrow = add i8 %i.ab, %i.u
  %i.ac = zext i8 %.narrow to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !73
  %i.af = zext i8 %i.ae to i64
  %i.ag = add i64 %.025, %i.af                    ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.a, label %.preheader, !llvm.loop !228

bb.a:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i64 %i.ag
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @testHint(ptr noundef %0) local_unnamed_addr #21 {
bb.a:
  tail call fastcc void @cliInitHelp()
  %i.a = tail call fastcc ptr @getHintForInput(ptr noundef %0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.a) ; 0 uses
  tail call void @exit(i32 noundef 0) #37
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cliInitHelp() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.dictType, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) @__const.vsetRecallMode.dtype, i64 120, i1 false)
  %i.a = tail call fastcc i32 @cliConnect(i32 noundef 2)
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @dictCreate(ptr noundef nonnull %0) #32
  call fastcc void @cliLegacyInitHelp(ptr noundef %i.c)
  br label %cliLegacyIntegrateHelp.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @context, align 8, !tbaa !219
  %i.e = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.d, ptr noundef nonnull @.str.506) #32 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.e, align 8, !tbaa !41
  switch i32 %i.g, label %bb.u [
    i32 6, label %bb.e
    i32 9, label %bb.v
    i32 2, label %bb.v
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @freeReplyObject(ptr noundef %i.e) #32
  %i.h = call ptr @dictCreate(ptr noundef nonnull %0) #32
  call fastcc void @cliLegacyInitHelp(ptr noundef %i.h)
  %i.i = call fastcc i32 @cliConnect(i32 noundef 2)
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %cliLegacyIntegrateHelp.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @context, align 8, !tbaa !219
  %i.l = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.k, ptr noundef nonnull @.str.510) #32 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %cliLegacyIntegrateHelp.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.l, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.n, 2
  br i1 %.not.i, label %.preheader.i, label %.loopexit.sink.split.i

.preheader.i:                                     ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33   ; 2 uses
  %.not6374.not.i = icmp eq i64 %i.p, 0
  br i1 %.not6374.not.i, label %.loopexit.sink.split.i, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  br label %bb.h

bb.h:                                             ; preds = %bb.t, %.lr.ph76.i
  %i.r = phi i64 [ %i.p, %.lr.ph76.i ], [ %i.cw, %bb.t ]
  %.05375.i = phi i64 [ 0, %.lr.ph76.i ], [ %i.cx, %bb.t ] ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05375.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !41
  %.not57.i = icmp eq i32 %i.v, 2
  br i1 %.not57.i, label %bb.i, label %cliLegacyIntegrateHelp.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !33
  %i.y = icmp ult i64 %i.x, 4
  br i1 %i.y, label %cliLegacyIntegrateHelp.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38  ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !41
  %.not58.i = icmp eq i32 %i.ac, 1
  br i1 %.not58.i, label %bb.k, label %cliLegacyIntegrateHelp.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.cut = load i64, ptr %i.f, align 8
  %i.cuu = icmp ne i64 %i.cut, 0
  %i.cuv = select i1 %i.cus, i1 %i.cuu, i1 false
  br i1 %i.cuv, label %bb.ace, label %bb.ack, !llvm.loop !375

bb.ack:                                           ; preds = %bb.acj
  call void @exit(i32 noundef 0) #37
  unreachable

bb.acl:                                           ; preds = %bb.aca
  %i.cuw = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !280
  %.not38 = icmp eq i32 %i.cuw, 0
  br i1 %.not38, label %bb.acz, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.cux = call fastcc i32 @cliConnect(i32 noundef 0)
  %i.cuy = icmp eq i32 %i.cux, -1
  br i1 %i.cuy, label %bb.acn, label %bb.aco

bb.acn:                                           ; preds = %bb.acm
  call void @exit(i32 noundef 1) #40
  unreachable

bb.aco:                                           ; preds = %bb.acm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.cuz = call i64 @time(ptr noundef null) #32
  %i.cva = call i32 @getpid() #32
  %i.cvb = trunc i64 %i.cuz to i32
  %i.cvc = xor i32 %i.cva, %i.cvb
  call void @srand(i32 noundef %i.cvc) #32
  %i.cvd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cve = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.acp

bb.acp:                                           ; preds = %bb.acy, %bb.aco
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.cvk = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #32 ; 0 uses
  %i.cvl = load i64, ptr %6, align 8, !tbaa !318
  %i.cvm = mul nsw i64 %i.cvl, 1000000
  %i.cvn = load i64, ptr %i.cvd, align 8, !tbaa !319
  %i.cvo = add nsw i64 %i.cvm, %i.cvn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.neg.neg.i = sdiv i64 %i.cvo, 1000
  %invariant.op.i = add nsw i64 %.neg.neg.i, 1000
  br label %bb.acq

bb.acq:                                           ; preds = %bb.acw, %bb.acp
  %.030.i = phi i64 [ 0, %bb.acp ], [ %.232.i, %bb.acw ] ; 4 uses
  %.027.i = phi i64 [ 0, %bb.acp ], [ %.229.i, %bb.acw ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.cvp = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #32 ; 0 uses
  %i.cvq = load i64, ptr %5, align 8, !tbaa !318
  %i.cvr = mul nsw i64 %i.cvq, 1000000
  %i.cvs = load i64, ptr %i.cve, align 8, !tbaa !319
  %i.cvt = add nsw i64 %i.cvr, %i.cvs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.cvu = sdiv i64 %i.cvt, 1000
  %i.cvv = icmp slt i64 %i.cvu, %invariant.op.i
  br i1 %i.cvv, label %.preheader37.i, label %bb.acy

.preheader37.i:                                   ; preds = %bb.acq, %.preheader37.i
  %.041.i = phi i32 [ %i.cxf, %.preheader37.i ], [ 0, %bb.acq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i8 0, ptr %i.cvf, align 1, !tbaa !73
  %i.cvw = call i32 @rand() #32
  %i.cvx = srem i32 %i.cvw, 57
  %i.cvy = trunc nsw i32 %i.cvx to i8
  %i.cvz = add nsw i8 %i.cvy, 65
  store i8 %i.cvz, ptr %i.e, align 1, !tbaa !73
  %i.cwa = call i32 @rand() #32
  %i.cwb = srem i32 %i.cwa, 57
  %i.cwc = trunc nsw i32 %i.cwb to i8
  %i.cwd = add nsw i8 %i.cwc, 65
  store i8 %i.cwd, ptr %i.cvg, align 1, !tbaa !73
  %i.cwe = call i32 @rand() #32
  %i.cwf = srem i32 %i.cwe, 57
  %i.cwg = trunc nsw i32 %i.cwf to i8
  %i.cwh = add nsw i8 %i.cwg, 65
  store i8 %i.cwh, ptr %i.cvh, align 1, !tbaa !73
  %i.cwi = call i32 @rand() #32
  %i.cwj = srem i32 %i.cwi, 57
  %i.cwk = trunc nsw i32 %i.cwj to i8
  %i.cwl = add nsw i8 %i.cwk, 65
  store i8 %i.cwl, ptr %i.cvi, align 1, !tbaa !73
  %i.cwm = call i32 @rand() #32
  %i.cwn = srem i32 %i.cwm, 57
  %i.cwo = trunc nsw i32 %i.cwn to i8
  %i.cwp = add nsw i8 %i.cwo, 65
  store i8 %i.cwp, ptr %i.cvj, align 1, !tbaa !73
  %i.cwq = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 216), align 8, !tbaa !227
  %i.cwr = add i64 %i.cwq, 1                      ; 2 uses
  %i.cws = call i32 @rand() #32
  %i.cwt = sitofp i32 %i.cws to double
  %i.cwu = fdiv double %i.cwt, f0x41DFFFFFFFC00000
  %i.cwv = sitofp i64 %i.cwr to double
  %i.cww = call double @pow(double noundef %i.cwv, double noundef 7.200000e+00) #32, !tbaa !9
  %i.cwx = fadd double %i.cww, -1.000000e+00
  %i.cwy = call double @llvm.fmuladd.f64(double %i.cwx, double %i.cwu, double 1.000000e+00)
  %i.cwz = call double @pow(double noundef %i.cwy, double noundef f0x3FC1C71C71C71C72) #32, !tbaa !9
  %i.cxa = fptosi double %i.cwz to i64
  %i.cxb = sub i64 %i.cwr, %i.cxa
  %i.cxc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.123, i64 noundef %i.cxb) #32 ; 0 uses
  %i.cxd = load ptr, ptr @context, align 8, !tbaa !219
  %i.cxe = call i32 (ptr, ptr, ...) @redisAppendCommand(ptr noundef %i.cxd, ptr noundef nonnull @.str.873, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.cxf = add nuw nsw i32 %.041.i, 1             ; 2 uses
  %exitcond.not.i143 = icmp eq i32 %i.cxf, 250
  br i1 %exitcond.not.i143, label %.preheader36.i, label %.preheader37.i, !llvm.loop !376

.preheader36.i:                                   ; preds = %.preheader37.i, %.preheader36.i
  %.142.i = phi i32 [ %i.cxi, %.preheader36.i ], [ 0, %.preheader37.i ]
  %i.cxg = load ptr, ptr @context, align 8, !tbaa !219
  %i.cxh = call i32 @redisGetReply(ptr noundef %i.cxg, ptr noundef nonnull %i.c) #32 ; 0 uses
  %i.cxi = add nuw nsw i32 %.142.i, 1             ; 2 uses
  %exitcond50.not.i = icmp eq i32 %i.cxi, 250
  br i1 %exitcond50.not.i, label %.preheader35.i, label %.preheader36.i, !llvm.loop !377

.preheader35.i:                                   ; preds = %.preheader36.i, %.preheader35.i
  %.243.i = phi i32 [ %i.cxy, %.preheader35.i ], [ 0, %.preheader36.i ]
  %i.cxj = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 216), align 8, !tbaa !227
  %i.cxk = add i64 %i.cxj, 1                      ; 2 uses
  %i.cxl = call i32 @rand() #32
  %i.cxm = sitofp i32 %i.cxl to double
  %i.cxn = fdiv double %i.cxm, f0x41DFFFFFFFC00000
  %i.cxo = sitofp i64 %i.cxk to double
  %i.cxp = call double @pow(double noundef %i.cxo, double noundef 7.200000e+00) #32, !tbaa !9
  %i.cxq = fadd double %i.cxp, -1.000000e+00
  %i.cxr = call double @llvm.fmuladd.f64(double %i.cxq, double %i.cxn, double 1.000000e+00)
  %i.cxs = call double @pow(double noundef %i.cxr, double noundef f0x3FC1C71C71C71C72) #32, !tbaa !9
  %i.cxt = fptosi double %i.cxs to i64
  %i.cxu = sub i64 %i.cxk, %i.cxt
  %i.cxv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.123, i64 noundef %i.cxu) #32 ; 0 uses
  %i.cxw = load ptr, ptr @context, align 8, !tbaa !219
  %i.cxx = call i32 (ptr, ptr, ...) @redisAppendCommand(ptr noundef %i.cxw, ptr noundef nonnull @.str.874, ptr noundef nonnull %i.d) #32 ; 0 uses
  %i.cxy = add nuw nsw i32 %.243.i, 1             ; 2 uses
  %exitcond51.not.i = icmp eq i32 %i.cxy, 250
  br i1 %exitcond51.not.i, label %.preheader.i144, label %.preheader35.i, !llvm.loop !378

.preheader.i144:                                  ; preds = %.preheader35.i, %bb.acv
  %.346.i = phi i32 [ %i.cyk, %bb.acv ], [ 0, %.preheader35.i ]
  %.12845.i = phi i64 [ %.229.i, %bb.acv ], [ %.027.i, %.preheader35.i ] ; 4 uses
  %.13144.i = phi i64 [ %.232.i, %bb.acv ], [ %.030.i, %.preheader35.i ] ; 4 uses
  %i.cxz = load ptr, ptr @context, align 8, !tbaa !219
  %i.cya = call i32 @redisGetReply(ptr noundef %i.cxz, ptr noundef nonnull %i.c) #32
  %i.cyb = icmp eq i32 %i.cya, 0
  br i1 %i.cyb, label %bb.acr, label %bb.acv

bb.acr:                                           ; preds = %.preheader.i144
  %i.cyc = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %i.cyd = load i32, ptr %i.cyc, align 8, !tbaa !41
  switch i32 %i.cyd, label %bb.acu [
    i32 6, label %bb.acs
    i32 4, label %bb.act
  ]

bb.acs:                                           ; preds = %bb.acr
  %i.cye = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cyc, i64 32
  %i.cyg = load ptr, ptr %i.cyf, align 8, !tbaa !42
  %i.cyh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cye, ptr noundef nonnull @.str.4, ptr noundef %i.cyg) #39 ; 0 uses
  br label %bb.acv

bb.act:                                           ; preds = %bb.acr
  %i.cyi = add nsw i64 %.12845.i, 1
  br label %bb.acv

bb.acu:                                           ; preds = %bb.acr
  %i.cyj = add nsw i64 %.13144.i, 1
  br label %bb.acv

bb.acv:                                           ; preds = %bb.acu, %bb.act, %bb.acs, %.preheader.i144
  %.232.i = phi i64 [ %i.cyj, %bb.acu ], [ %.13144.i, %bb.acs ], [ %.13144.i, %bb.act ], [ %.13144.i, %.preheader.i144 ] ; 2 uses
  %.229.i = phi i64 [ %.12845.i, %bb.acu ], [ %.12845.i, %bb.acs ], [ %i.cyi, %bb.act ], [ %.12845.i, %.preheader.i144 ] ; 2 uses
  %i.cyk = add nuw nsw i32 %.346.i, 1             ; 2 uses
  %exitcond52.not.i = icmp eq i32 %i.cyk, 250
  br i1 %exitcond52.not.i, label %bb.acw, label %.preheader.i144, !llvm.loop !379

bb.acw:                                           ; preds = %bb.acv
  %i.cyl = load ptr, ptr @context, align 8, !tbaa !219
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cyl, i64 8
  %i.cyn = load i32, ptr %i.cym, align 8, !tbaa !170
  %.not.i145 = icmp eq i32 %i.cyn, 0
  br i1 %.not.i145, label %bb.acq, label %bb.acx, !llvm.loop !380

bb.acx:                                           ; preds = %bb.acw
  %i.cyo = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cyp = call i64 @fwrite(ptr nonnull @.str.875, i64 26, i64 1, ptr %i.cyo) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.acy:                                           ; preds = %bb.acq
  %i.cyq = add nsw i64 %.027.i, %.030.i           ; 3 uses
  %i.cyr = icmp sgt i64 %i.cyq, 0                 ; 2 uses
  %i.cys = sitofp i64 %.030.i to double
  %i.cyt = uitofp nneg i64 %i.cyq to double
  %36 = sitofp i64 %.027.i to double
  %37 = insertelement <2 x double> poison, double %i.cys, i64 0
  %38 = insertelement <2 x double> %37, double %36, i64 1
  %39 = insertelement <2 x double> poison, double %i.cyt, i64 0
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %41 = fdiv <2 x double> %38, %40                ; 2 uses
  %42 = extractelement <2 x double> %41, i64 0
  %43 = fmul double %42, 1.000000e+02
  %44 = select i1 %i.cyr, double %43, double 0.000000e+00
  %45 = extractelement <2 x double> %41, i64 1
  %i.cyu = fmul double %45, 1.000000e+02
  %i.cyv = select i1 %i.cyr, double %i.cyu, double 0.000000e+00
  %i.cyw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.876, i64 noundef %i.cyq, i64 noundef %.030.i, double noundef %44, i64 noundef %.027.i, double noundef %i.cyv) ; 0 uses
  br label %bb.acp

bb.acz:                                           ; preds = %bb.acl
  %i.cyx = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 268), align 4, !tbaa !251
  %.not39 = icmp eq i32 %i.cyx, 0
  br i1 %.not39, label %bb.adf, label %bb.ada

bb.ada:                                           ; preds = %bb.acz
  %i.cyy = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !285
  %i.cyz = sext i32 %i.cyy to i64
  %i.cza = mul nsw i64 %i.cyz, 1000000            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.czb = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #32 ; 0 uses
  %i.czc = load i64, ptr %4, align 8, !tbaa !318
  %i.czd = mul nsw i64 %i.czc, 1000000
  %i.cze = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.czf = load i64, ptr %i.cze, align 8, !tbaa !319
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.czg = add i64 %i.czf, %i.cza
  %i.czh = add i64 %i.czg, %i.czd
  %i.czi = call ptr @signal(i32 noundef 2, ptr noundef nonnull @longStatLoopModeStop) #32 ; 0 uses
  %i.czj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.czk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.czl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.czm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.czn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.czo = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.czp = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.czq = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.czr = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.czs = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.czt = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.czu = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.czv = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.czw = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.czx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.czy = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.czz = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  br label %vector.ph.outer

vector.ph.outer:                                  ; preds = %bb.add, %bb.ada
  %.018.i.ph = phi i64 [ %i.dbe, %bb.add ], [ 0, %bb.ada ]
  %.0.i146.ph = phi i64 [ %.1.i152, %bb.add ], [ 0, %bb.ada ] ; 2 uses
  br label %vector.ph

vector.ph:                                        ; preds = %vector.ph.outer, %compute_something_fast.exit.i
  %.018.i = phi i64 [ %i.dbe, %compute_something_fast.exit.i ], [ %.018.i.ph, %vector.ph.outer ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.daa = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #32 ; 0 uses
  %i.dab = load i64, ptr %3, align 8, !tbaa !318
  %i.dac = load i64, ptr %i.czj, align 8, !tbaa !319
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.b, align 16, !tbaa !73
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.czl, align 16, !tbaa !73
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.czm, align 16, !tbaa !73
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.czn, align 16, !tbaa !73
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.czo, align 16, !tbaa !73
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.czp, align 16, !tbaa !73
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.czq, align 16, !tbaa !73
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.czr, align 16, !tbaa !73
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.czs, align 16, !tbaa !73
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.czt, align 16, !tbaa !73
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.czu, align 16, !tbaa !73
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.czv, align 16, !tbaa !73
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.czw, align 16, !tbaa !73
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.czx, align 16, !tbaa !73
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.czy, align 16, !tbaa !73
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.czz, align 16, !tbaa !73
  br label %.preheader.i.i149

.preheader.i.i149:                                ; preds = %.preheader.i.i149, %vector.ph
  %.01824.i.i = phi i32 [ 1000, %vector.ph ], [ %i.dan, %.preheader.i.i149 ]
  %.01923.i.i = phi i8 [ 0, %vector.ph ], [ %i.dao, %.preheader.i.i149 ] ; 2 uses
  %.02022.i.i = phi i32 [ 0, %vector.ph ], [ %i.dat, %.preheader.i.i149 ]
  %i.dad = or disjoint i8 %.01923.i.i, 1
  %i.dae = zext i8 %i.dad to i64
  %i.daf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dae ; 2 uses
  %i.dag = load i8, ptr %i.daf, align 1, !tbaa !73 ; 2 uses
  %i.dah = zext i8 %i.dag to i32
  %i.dai = add i32 %.02022.i.i, %i.dah            ; 2 uses
  %i.daj = and i32 %i.dai, 255
  %i.dak = zext nneg i32 %i.daj to i64
  %i.dal = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dak ; 2 uses
  %i.dam = load i8, ptr %i.dal, align 1, !tbaa !73
  store i8 %i.dam, ptr %i.daf, align 1, !tbaa !73
  store i8 %i.dag, ptr %i.dal, align 1, !tbaa !73
  %i.dan = add nsw i32 %.01824.i.i, -2            ; 2 uses
  %i.dao = add i8 %.01923.i.i, 2                  ; 2 uses
  %i.dap = zext i8 %i.dao to i64
  %i.daq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dap ; 2 uses
  %i.dar = load i8, ptr %i.daq, align 2, !tbaa !73 ; 2 uses
  %i.das = zext i8 %i.dar to i32
  %i.dat = add i32 %i.dai, %i.das                 ; 2 uses
  %i.dau = and i32 %i.dat, 255
  %i.dav = zext nneg i32 %i.dau to i64
  %i.daw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dav ; 2 uses
  %i.dax = load i8, ptr %i.daw, align 1, !tbaa !73
  store i8 %i.dax, ptr %i.daq, align 2, !tbaa !73
  store i8 %i.dar, ptr %i.daw, align 1, !tbaa !73
  %.not.i.i150.1 = icmp eq i32 %i.dan, 0
  br i1 %.not.i.i150.1, label %compute_something_fast.exit.i, label %.preheader.i.i149, !llvm.loop !228

compute_something_fast.exit.i:                    ; preds = %.preheader.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.day = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #32 ; 0 uses
  %i.daz = load i64, ptr %2, align 8, !tbaa !318
  %i.dba = mul nsw i64 %i.daz, 1000000
  %i.dbb = load i64, ptr %i.czk, align 8, !tbaa !319
  %i.dbc = add nsw i64 %i.dba, %i.dbb             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.neg.i151 = mul i64 %i.dab, -1000000
  %.neg21.i = sub i64 %.neg.i151, %i.dac
  %i.dbd = add i64 %i.dbc, %.neg21.i              ; 4 uses
  %i.dbe = add nuw nsw i64 %.018.i, 1             ; 4 uses
  %i.dbf = icmp slt i64 %i.dbd, 1
  br i1 %i.dbf, label %vector.ph, label %bb.adb

bb.adb:                                           ; preds = %compute_something_fast.exit.i
  %i.dbg = icmp sgt i64 %i.dbd, %.0.i146.ph
  br i1 %i.dbg, label %bb.adc, label %bb.add

bb.adc:                                           ; preds = %bb.adb
  %i.dbh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.877, i64 noundef %i.dbd) ; 0 uses
  br label %bb.add

bb.add:                                           ; preds = %bb.adc, %bb.adb
  %.1.i152 = phi i64 [ %i.dbd, %bb.adc ], [ %.0.i146.ph, %bb.adb ] ; 2 uses
  %i.dbi = load volatile i32, ptr @force_cancel_loop, align 4, !tbaa !9
  %.not.i153 = icmp ne i32 %i.dbi, 0
  %i.dbj = icmp sgt i64 %i.dbc, %i.czh
  %or.cond.i154 = select i1 %.not.i153, i1 true, i1 %i.dbj
  br i1 %or.cond.i154, label %bb.ade, label %vector.ph.outer

bb.ade:                                           ; preds = %bb.add
  %i.dbk = sitofp i64 %i.cza to double
  %i.dbl = uitofp nneg i64 %i.dbe to double
  %i.dbm = fdiv double %i.dbk, %i.dbl             ; 3 uses
  %i.dbn = fmul double %i.dbm, 1.000000e+03
  %i.dbo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.878, i64 noundef %i.dbe, double noundef %i.dbm, double noundef %i.dbn) ; 0 uses
  %i.dbp = uitofp nneg i64 %.1.i152 to double
  %i.dbq = fdiv double %i.dbp, %i.dbm
  %i.dbr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.879, double noundef %i.dbq) ; 0 uses
  call void @exit(i32 noundef 0) #37
  unreachable

bb.adf:                                           ; preds = %bb.acz
  %i.dbs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 720), align 8, !tbaa !300 ; 2 uses
  %.not40 = icmp eq ptr %i.dbs, null
  br i1 %.not40, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  call fastcc void @cliInitHelp()
  %i.dbt = call fastcc ptr @getHintForInput(ptr noundef nonnull %i.dbs)
  %puts.i156 = call i32 @puts(ptr nonnull dereferenceable(1) %i.dbt) ; 0 uses
  call void @exit(i32 noundef 0) #37
  unreachable

bb.adh:                                           ; preds = %bb.adf
  %i.dbu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 728), align 8, !tbaa !301 ; 2 uses
  %.not41 = icmp eq ptr %i.dbu, null
  br i1 %.not41, label %bb.adj, label %bb.adi

bb.adi:                                           ; preds = %bb.adh
  call void @testHintSuite(ptr noundef nonnull %i.dbu)
  unreachable

bb.adj:                                           ; preds = %bb.adh
  %i.dbv = icmp ne i32 %0, %.0637841.i
  %i.dbw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 512), align 8 ; 2 uses
  %i.dbx = icmp ne ptr %i.dbw, null
  %or.cond3 = select i1 %i.dbv, i1 true, i1 %i.dbx
  br i1 %or.cond3, label %bb.adl, label %bb.adk

bb.adk:                                           ; preds = %bb.adj
  %i.dby = call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #32 ; 0 uses
  %i.dbz = call ptr @signal(i32 noundef 2, ptr noundef nonnull @sigIntHandler) #32 ; 0 uses
  %i.dca = call fastcc i32 @cliConnect(i32 noundef 0) ; 0 uses
  call fastcc void @repl()
  %.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 512), align 8, !tbaa !292
  br label %bb.adl

bb.adl:                                           ; preds = %bb.adk, %bb.adj
  %i.dcb = phi ptr [ %.pr, %bb.adk ], [ %i.dbw, %bb.adj ]
  %.not42 = icmp eq ptr %i.dcb, null
  br i1 %.not42, label %bb.aec, label %bb.adm

bb.adm:                                           ; preds = %bb.adl
  %i.dcc = call fastcc i32 @cliConnect(i32 noundef 0)
  %.not43 = icmp eq i32 %i.dcc, 0
  br i1 %.not43, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %bb.adm
  call void @exit(i32 noundef 1) #40
  unreachable

bb.ado:                                           ; preds = %bb.adm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.dcd = add nsw i32 %i.aal, 3                  ; 2 uses
end_hunk_1
begin_hunk_2_@findBigKeys:bb.a
  %.not178 = icmp eq i64 %i.fk, 0
  br i1 %.not178, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !226
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !224
  %i.fo = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.770, ptr noundef %i.fl, ptr noundef %i.fn, i64 noundef %i.fk, ptr noundef nonnull @.str.101)
  %i.fp = add nsw i32 %i.fo, %.0124190
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.split
  %.1125 = phi i32 [ %i.fp, %bb.ai ], [ %.0124190, %.lr.ph.split ] ; 2 uses
  %i.fq = call ptr @dictNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not177 = icmp eq ptr %i.fq, null
  br i1 %.not177, label %._crit_edge, label %.lr.ph.split, !llvm.loop !389

._crit_edge:                                      ; preds = %bb.aj, %bb.ah, %displayKeyStatsProgressbar.exit
  %.0124.lcssa = phi i32 [ %i.et, %displayKeyStatsProgressbar.exit ], [ %.1125.us, %bb.ah ], [ %.1125, %bb.aj ]
  call void @dictResetIterator(ptr noundef nonnull %5) #32
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.771, i32 noundef %.0124.lcssa) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.w, %bb.y, %._crit_edge, %bb.g
  %.3 = phi i64 [ %.1130192, %bb.g ], [ %i.dy, %._crit_edge ], [ %.1130192, %bb.y ], [ %.1130192, %bb.w ] ; 2 uses
  %.2120 = phi i64 [ %.1119193, %bb.g ], [ %i.cb, %._crit_edge ], [ %i.cb, %bb.y ], [ %i.cb, %bb.w ] ; 2 uses
  %.2 = phi i64 [ %.1194, %bb.g ], [ %i.cc, %._crit_edge ], [ %i.cc, %bb.y ], [ %i.cc, %bb.w ] ; 2 uses
  %i.fs = add i32 %.0132191, 1                    ; 2 uses
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  %i.fu = load i64, ptr %i.aw, align 8, !tbaa !33
  %i.fv = icmp ugt i64 %i.fu, %i.ft
  br i1 %i.fv, label %bb.g, label %._crit_edge197, !llvm.loop !390

._crit_edge197:                                   ; preds = %bb.ak, %bb.f
  %.1130.lcssa = phi i64 [ %.0129, %bb.f ], [ %.3, %bb.ak ]
  %.1119.lcssa = phi i64 [ %.0118, %bb.f ], [ %.2120, %bb.ak ] ; 4 uses
  %.1.lcssa = phi i64 [ %.0, %bb.f ], [ %.2, %bb.ak ] ; 5 uses
  %i.fw = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136), align 8, !tbaa !271 ; 2 uses
  %.not = icmp ne i64 %i.fw, 0
  %i.fx = urem i64 %i.ar, 100
  %i.fy = icmp eq i64 %i.fx, 0
  %or.cond181 = select i1 %.not, i1 %i.fy, i1 false
  br i1 %or.cond181, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge197
  %i.fz = trunc i64 %i.fw to i32
  %i.ga = call i32 @usleep(i32 noundef %i.fz) #32 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge197
  call void @freeReplyObject(ptr noundef nonnull %i.aq) #32
  %i.gb = load volatile i32, ptr @force_cancel_loop, align 4, !tbaa !9
  %i.gc = icmp eq i32 %i.gb, 0
  %i.gd = load i64, ptr %i.f, align 8
  %i.ge = icmp ne i64 %i.gd, 0
  %i.gf = select i1 %i.gc, i1 %i.ge, i1 false
  br i1 %i.gf, label %bb.b, label %bb.an, !llvm.loop !391

bb.an:                                            ; preds = %bb.am
  %i.gg = call i32 @isatty(i32 noundef 1) #32
  %.not150 = icmp eq i32 %i.gg, 0
  br i1 %.not150, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gh = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not151 = icmp eq ptr %i.gh, null
  br i1 %.not151, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gi = call fastcc i32 @displayKeyStatsProgressbar(i64 noundef %.1.lcssa, i64 noundef %i.ai) ; 0 uses
  call void @dictInitIterator(ptr noundef nonnull %5, ptr noundef %i.n) #32
  %i.gj = call ptr @dictNext(ptr noundef nonnull %5) #32
  %.not152201 = icmp eq ptr %i.gj, null
  br i1 %.not152201, label %._crit_edge205, label %.lr.ph204

.lr.ph204:                                        ; preds = %bb.ap, %.lr.ph204
  %.0121202 = phi i32 [ %i.gl, %.lr.ph204 ], [ 0, %bb.ap ]
  %i.gk = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  %i.gl = add nsw i32 %i.gk, %.0121202            ; 2 uses
  %i.gm = call ptr @dictNext(ptr noundef nonnull %5) #32
  %.not152 = icmp eq ptr %i.gm, null
  br i1 %.not152, label %._crit_edge205, label %.lr.ph204, !llvm.loop !392

._crit_edge205:                                   ; preds = %.lr.ph204, %bb.ap
  %.0121.lcssa = phi i32 [ 0, %bb.ap ], [ %i.gl, %.lr.ph204 ]
  call void @dictResetIterator(ptr noundef nonnull %5) #32
  %i.gn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.771, i32 noundef %.0121.lcssa) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge205, %bb.ao
  %.not153 = icmp eq ptr %.1134, null
  br i1 %.not153, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @zfree(ptr noundef nonnull %.1134) #32
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.not154 = icmp eq ptr %.1123, null
  br i1 %.not154, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @zfree(ptr noundef nonnull %.1123) #32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %puts155 = call i32 @puts(ptr nonnull dereferenceable(1) @str.37) ; 0 uses
  %i.go = call i32 @isatty(i32 noundef 1) #32
  %.not156 = icmp eq i32 %i.go, 0
  br i1 %.not156, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.gp = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not157 = icmp eq ptr %i.gp, null
  br i1 %.not157, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gq = load volatile i32, ptr @force_cancel_loop, align 4, !tbaa !9
  %.not158 = icmp eq i32 %i.gq, 0
  br i1 %.not158, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.773, double noundef %i.ap) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.774, i64 noundef %.1.lcssa) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av, %bb.au
  %.not159 = icmp eq i64 %.1119.lcssa, 0
  %i.gt = uitofp i64 %.1119.lcssa to double
  %i.gu = uitofp i64 %.1.lcssa to double          ; 2 uses
  %i.gv = fdiv double %i.gt, %i.gu
  %i.gw = select i1 %.not159, double 0.000000e+00, double %i.gv
  %i.gx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.775, i64 noundef %.1119.lcssa, double noundef %i.gw) ; 0 uses
  call void @dictInitIterator(ptr noundef nonnull %5, ptr noundef %i.n) #32
  %i.gy = call ptr @dictNext(ptr noundef nonnull %5) #32 ; 3 uses
  %.not160207 = icmp eq ptr %i.gy, null
  br i1 %.not160207, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %bb.az
  br i1 %.not172, label %.lr.ph209.split.us, label %.lr.ph209.split

.lr.ph209.split.us:                               ; preds = %.lr.ph209, %bb.bb
  %i.gz = phi ptr [ %i.hj, %bb.bb ], [ %i.gy, %.lr.ph209 ]
  %i.ha = call ptr @dictGetVal(ptr noundef nonnull %i.gz) #32 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !224 ; 2 uses
  %.not165.us = icmp eq ptr %i.hc, null
  br i1 %.not165.us, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph209.split.us
  %i.hd = load ptr, ptr %i.ha, align 8, !tbaa !226
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !347
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !366
  %i.hi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.776, ptr noundef %i.hd, ptr noundef nonnull %i.hc, i64 noundef %i.hf, ptr noundef %i.hh) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph209.split.us
  %i.hj = call ptr @dictNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not160.us = icmp eq ptr %i.hj, null
  br i1 %.not160.us, label %._crit_edge210, label %.lr.ph209.split.us, !llvm.loop !393

.lr.ph209.split:                                  ; preds = %.lr.ph209, %bb.bd
  %i.hk = phi ptr [ %i.hs, %bb.bd ], [ %i.gy, %.lr.ph209 ]
  %i.hl = call ptr @dictGetVal(ptr noundef nonnull %i.hk) #32 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !224 ; 2 uses
  %.not165 = icmp eq ptr %i.hn, null
  br i1 %.not165, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph209.split
  %i.ho = load ptr, ptr %i.hl, align 8, !tbaa !226
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !347
  %i.hr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.776, ptr noundef %i.ho, ptr noundef nonnull %i.hn, i64 noundef %i.hq, ptr noundef nonnull @.str.101) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph209.split
  %i.hs = call ptr @dictNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not160 = icmp eq ptr %i.hs, null
  br i1 %.not160, label %._crit_edge210, label %.lr.ph209.split, !llvm.loop !393

._crit_edge210:                                   ; preds = %bb.bd, %bb.bb, %bb.az
  call void @dictResetIterator(ptr noundef nonnull %5) #32
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @dictInitIterator(ptr noundef nonnull %5, ptr noundef %i.n) #32
  %i.ht = call ptr @dictNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not161211 = icmp eq ptr %i.ht, null
  br i1 %.not161211, label %._crit_edge214, label %.lr.ph213

.lr.ph213:                                        ; preds = %._crit_edge210
  %.not163 = icmp eq i64 %.1.lcssa, 0
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph213, %bb.bg
  %i.hu = phi ptr [ %i.ht, %.lr.ph213 ], [ %i.id, %bb.bg ]
  %i.hv = call ptr @dictGetVal(ptr noundef nonnull %i.hu) #32 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !226
  %6 = load <2 x i64>, ptr %i.hw, align 8, !tbaa !339 ; 3 uses
  br i1 %.not172, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !366
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.ia = phi ptr [ %i.hz, %bb.bf ], [ @.str.101, %bb.be ]
  %7 = uitofp <2 x i64> %6 to <2 x double>        ; 2 uses
  %8 = extractelement <2 x i64> %6, i64 0         ; 2 uses
  %.not164 = icmp eq i64 %8, 0
  %9 = fmul nnan <2 x double> %7, <double 1.000000e+02, double 1.000000e+00>
  %10 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %11 = insertelement <2 x double> %10, double %i.gu, i64 0
  %12 = fdiv <2 x double> %9, %11                 ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = select i1 %.not163, double 0.000000e+00, double %13
  %15 = extractelement <2 x double> %12, i64 1
  %i.ib = select i1 %.not164, double 0.000000e+00, double %15
  %16 = extractelement <2 x i64> %6, i64 1
  %i.ic = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.777, i64 noundef %8, ptr noundef %i.hx, i64 noundef %16, ptr noundef %i.ia, double noundef %14, double noundef %i.ib) ; 0 uses
  %i.id = call ptr @dictNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not161 = icmp eq ptr %i.id, null
  br i1 %.not161, label %._crit_edge214, label %bb.be, !llvm.loop !394

._crit_edge214:                                   ; preds = %bb.bg, %._crit_edge210
  call void @dictResetIterator(ptr noundef nonnull %5) #32
  call void @dictRelease(ptr noundef %i.n) #32
  call void @exit(i32 noundef 0) #37
  unreachable
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @sigIntHandler(i32 %0) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 156), align 4, !tbaa !395
  %i.b = icmp ne i32 %i.a, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 160), align 8
  %i.d = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @context, align 8, !tbaa !219
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.g = load i32, ptr %i.f, align 4, !tbaa !336
  %i.h = tail call i32 @close(i32 noundef %i.g) #32 ; 0 uses
  %i.i = load ptr, ptr @context, align 8, !tbaa !219
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 140
  store i32 -1, ptr %i.j, align 4, !tbaa !336
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 164), align 4, !tbaa !396
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #40
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @repl() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.termios, align 4            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %1 = alloca %struct.timeval, align 8            ; 7 uses
  %2 = alloca %struct.fd_set, align 8             ; 11 uses
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 520), align 8, !tbaa !293
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.f = tail call i32 @fileno(ptr noundef %i.e) #32
  %i.g = tail call i32 @isatty(i32 noundef %i.f) #32
  %.not64 = icmp eq i32 %i.g, 0
  br i1 %.not64, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @cliInitHelp()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 148), align 4, !tbaa !397
  tail call void @linenoiseSetMultiLine(i32 noundef 1) #32
  tail call void @linenoiseSetCompletionCallback(ptr noundef nonnull @completionCallback) #32
  tail call void @linenoiseSetHintsCallback(ptr noundef nonnull @hintsCallback) #32
  tail call void @linenoiseSetFreeHintsCallback(ptr noundef nonnull @freeHintsCallback) #32
  %i.h = tail call ptr @getenv(ptr noundef nonnull @.str.880) #32
  %.not65 = icmp eq ptr %i.h, null
  br i1 %.not65, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.j = tail call i32 @fileno(ptr noundef %i.i) #32
  %i.k = tail call i32 @isatty(i32 noundef %i.j) #32
  %.not66 = icmp eq i32 %i.k, 0
  br i1 %.not66, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call ptr @getenv(ptr noundef nonnull @.str.881) #32 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %i.l, align 1, !tbaa !73
  %.not14.i = icmp eq i8 %i.m, 0
  br i1 %.not14.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.178, ptr noundef nonnull dereferenceable(1) %i.l) #34
  %.not17.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i, label %getDotfilePath.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @hi_sdsnew(ptr noundef nonnull %i.l) #32
  br label %getDotfilePath.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.p = tail call ptr @getenv(ptr noundef nonnull @.str.179) #32 ; 3 uses
  %.not15.i = icmp eq ptr %i.p, null
  br i1 %.not15.i, label %getDotfilePath.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load i8, ptr %i.p, align 1, !tbaa !73
  %.not16.i = icmp eq i8 %i.q, 0
  br i1 %.not16.i, label %getDotfilePath.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call ptr @hi_sdsempty() #32
  %i.s = tail call ptr (ptr, ptr, ...) @hi_sdscatprintf(ptr noundef %i.r, ptr noundef nonnull @.str.180, ptr noundef nonnull %i.p, ptr noundef nonnull @.str.882) #32
  br label %getDotfilePath.exit

getDotfilePath.exit:                              ; preds = %bb.i, %bb.l
  %.0.i = phi ptr [ %i.s, %bb.l ], [ %i.o, %bb.i ] ; 3 uses
  %.not67 = icmp eq ptr %.0.i, null
  br i1 %.not67, label %getDotfilePath.exit.thread, label %bb.m

bb.m:                                             ; preds = %getDotfilePath.exit
  %i.t = tail call i32 @linenoiseHistoryLoad(ptr noundef nonnull %.0.i) #32 ; 0 uses
  br label %getDotfilePath.exit.thread

getDotfilePath.exit.thread:                       ; preds = %bb.j, %bb.k, %bb.h, %bb.m, %getDotfilePath.exit
  %.0.i93 = phi ptr [ null, %getDotfilePath.exit ], [ %.0.i, %bb.m ], [ null, %bb.h ], [ null, %bb.k ], [ null, %bb.j ]
  tail call void @cliLoadPreferences()
  br label %bb.n

bb.n:                                             ; preds = %getDotfilePath.exit.thread, %bb.e
  %.not70 = phi i1 [ false, %getDotfilePath.exit.thread ], [ true, %bb.e ] ; 2 uses
  %.0 = phi ptr [ %.0.i93, %getDotfilePath.exit.thread ], [ null, %bb.e ] ; 4 uses
  tail call fastcc void @cliRefreshPrompt()
  %i.u = icmp ne ptr %.0, null                    ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not78 = icmp eq ptr %.0, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.n
  %i.z = load ptr, ptr @context, align 8, !tbaa !219
  %.not68 = icmp eq ptr %i.z, null
  %i.aa = select i1 %.not68, ptr @.str.883, ptr getelementptr inbounds nuw (i8, ptr @config, i64 384)
  %i.ab = call ptr @linenoise(ptr noundef nonnull %i.aa) #32 ; 15 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.backedge
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 160), align 8, !tbaa !385
  %.not80 = icmp eq i32 %i.ad, 0
  br i1 %.not80, label %bb.du, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 160), align 8, !tbaa !385
  %i.ae = call fastcc i32 @cliConnect(i32 noundef 1)
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.backedge.backedge, label %bb.du

bb.q:                                             ; preds = %.backedge
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !73
  %.not69 = icmp eq i8 %i.ag, 0
  br i1 %.not69, label %bb.cj, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr null, ptr %i.c, align 8, !tbaa !29
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 520), align 8, !tbaa !293
  %.not.i81 = icmp eq i32 %i.ah, 0
  br i1 %.not.i81, label %cliSplitArgs.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %strncmp.i = call i32 @strncmp(ptr nonnull dereferenceable(1) %i.ab, ptr nonnull dereferenceable(6) @.str.896, i64 5)
  %cmp.i = icmp eq i32 %strncmp.i, 0
  br i1 %cmp.i, label %cliSplitArgs.exit.thread, label %sub_0.i

sub_0.i:                                          ; preds = %bb.s
  %i.ai = load i8, ptr %i.ab, align 1
  %.not21.i = icmp eq i8 %i.ai, 101
  br i1 %.not21.i, label %.tail.i, label %cliSplitArgs.exit

.tail.i:                                          ; preds = %sub_0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 32
  br i1 %i.al, label %cliSplitArgs.exit.thread, label %cliSplitArgs.exit

cliSplitArgs.exit.thread:                         ; preds = %bb.s, %.tail.i
  %i.am = call ptr @hi_sds_malloc(i64 noundef 16) #32 ; 3 uses
  store i32 2, ptr %i.b, align 4, !tbaa !9
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #34
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !73
  %i.ar = icmp eq i8 %i.aq, 32
  %i.as = select i1 %i.ar, i32 2, i32 5           ; 3 uses
end_hunk_2
