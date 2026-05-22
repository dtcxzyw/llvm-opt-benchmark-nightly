inline.NumInlined: 25
inline.NumDeleted: 14
begin_hunk_0
@.str.1 = private unnamed_addr constant [22 x i8] c"CPU hardware threads:\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"usage:\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Benchmark threads:   \00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\0A\0ADict        Compressing          |        Decompressing\0A   \00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"   Speed Usage    R/U Rating\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"    KB/s     %%   MIPS   MIPS\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%2d:\00", align 1
@.str.11 = private unnamed_addr constant [70 x i8] c"----------------------------------------------------------------\0AAvr:\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\0ATot:\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\0A\0ASize\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" %5d\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%2d: \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"\0AAvg:\00", align 1
@_ZTV14CBenchCallback = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI14CBenchCallback, ptr @_ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob, ptr @_ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob] }, align 8
@_ZTI14CBenchCallback = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14CBenchCallback, ptr @_ZTI14IBenchCallback }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS14CBenchCallback = dso_local constant [17 x i8] c"14CBenchCallback\00", align 1
@_ZTI14IBenchCallback = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS14IBenchCallback }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS14IBenchCallback = linkonce_odr dso_local constant [17 x i8] c"14IBenchCallback\00", comdat, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"  | \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"\0ARAM %s \00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c" MB,  # %s %3d\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"       \00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147467260, 1) i32 @_ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob(ptr noundef nonnull align 8 captures(none) dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv() ; 2 uses
  %.not = xor i1 %2, true
  %brmerge = or i1 %i.a, %.not
  %.mux = select i1 %i.a, i32 -2147467260, i32 0
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8
  %i.d = load i64, ptr %1, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call noundef i64 @_Z17GetCompressRatingjyyy(i32 noundef %i.c, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes(ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(52) %1, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %.mux, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef i64 @_Z17GetCompressRatingjyyy(i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes(ptr noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i64 noundef %2, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = load i64, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %i.g = icmp ugt i64 %i.f, 1000000
  br i1 %i.g, label %.lr.ph.i.i, label %_ZL11MyMultDiv64yyy.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.1.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ %i.d, %bb.a ]
  %i.h = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = lshr i64 %.1.i, 1                        ; 2 uses
  %i.k = icmp ugt i64 %i.h, 2000001
  br i1 %i.k, label %.lr.ph.i.i, label %_ZL11MyMultDiv64yyy.exit, !llvm.loop !20

_ZL11MyMultDiv64yyy.exit:                         ; preds = %.lr.ph.i.i, %bb.a
  %.07.i = phi i64 [ %i.f, %bb.a ], [ %i.i, %.lr.ph.i.i ]
  %.2.i = phi i64 [ %i.d, %bb.a ], [ %i.j, %.lr.ph.i.i ]
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.2.i, i64 1)
  %i.l = mul i64 %.07.i, %i.c
  %i.m = udiv i64 %i.l, %spec.select.i
  %i.n = lshr i64 %i.m, 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @_Z21ConvertUInt64ToStringyPcj(i64 noundef range(i64 0, 18014398509481984) %i.n, ptr noundef nonnull %i.a, i32 noundef 10)
  %fputc.i = call i32 @fputc(i32 32, ptr %0)      ; 0 uses
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #11
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = icmp slt i32 %i.p, 7
  br i1 %i.q, label %.lr.ph.i, label %_ZL11PrintNumberP8_IO_FILEyi.exit

.lr.ph.i:                                         ; preds = %_ZL11MyMultDiv64yyy.exit, %.lr.ph.i
  %.07.i18 = phi i32 [ %i.r, %.lr.ph.i ], [ %i.p, %_ZL11MyMultDiv64yyy.exit ]
  %fputc6.i = call i32 @fputc(i32 32, ptr %0)     ; 0 uses
  %i.r = add i32 %.07.i18, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.r, 7
  br i1 %exitcond.not.i, label %_ZL11PrintNumberP8_IO_FILEyi.exit, label %.lr.ph.i, !llvm.loop !22

_ZL11PrintNumberP8_IO_FILEyi.exit:                ; preds = %.lr.ph.i, %_ZL11MyMultDiv64yyy.exit
  %i.s = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.t = call noundef i64 @_Z8GetUsageRK10CBenchInfo(ptr noundef nonnull align 8 dereferenceable(52) %1) ; 2 uses
  %i.u = call noundef i64 @_Z17GetRatingPerUsageRK10CBenchInfoy(ptr noundef nonnull align 8 dereferenceable(52) %1, i64 noundef %2) ; 2 uses
  call fastcc void @_ZL12PrintResultsP8_IO_FILEyyy(ptr noundef %0, i64 noundef %i.t, i64 noundef %i.u, i64 noundef %2)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23
  %i.x = add i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !23
  %i.y = load <2 x i64>, ptr %3, align 8, !tbaa !24
  %i.z = insertelement <2 x i64> <i64 1, i64 poison>, i64 %2, i64 1
  %i.aa = add <2 x i64> %i.y, %i.z
  store <2 x i64> %i.aa, ptr %3, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ad = add i64 %i.ac, %i.t
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147467260, 1) i32 @_ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob(ptr noundef nonnull align 8 captures(none) dereferenceable(84) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(52) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.CBenchInfo, align 8         ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv() ; 2 uses
  %.not = xor i1 %2, true
  %brmerge = or i1 %i.a, %.not
  %.mux = select i1 %i.a, i32 -2147467260, i32 0
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call noundef i64 @_Z19GetDecompressRatingyyyyj(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i32 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = tail call i64 @fwrite(ptr nonnull @.str.18, i64 4, i64 1, ptr %i.m) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !28
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !27
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = mul i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26
  %i.w = mul i64 %i.v, %i.q
  store i64 %i.w, ptr %i.u, align 8, !tbaa !26
  store i32 1, ptr %i.o, align 8, !tbaa !27
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  call fastcc void @_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes(ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(52) %3, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %.mux, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare noundef i64 @_Z19GetDecompressRatingyyyyj(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z12LzmaBenchConP8_IO_FILEjjj(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.CBenchCallback, align 8     ; 20 uses
  %i.a = tail call noundef zeroext i1 @_Z15CrcInternalTestv()
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZN8NWindows7NSystem10GetRamSizeEv() ; 8 uses
  %i.c = tail call noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv() ; 2 uses
  tail call fastcc void @_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %i.b, ptr noundef nonnull @.str.1, i32 noundef %i.c)
  %i.d = icmp eq i32 %2, -1
  %spec.select = select i1 %i.d, i32 %i.c, i32 %2 ; 3 uses
  %5 = and i32 %spec.select, -2
  %.narrow = icmp ugt i32 %spec.select, 2
  %.165 = select i1 %.narrow, i32 %5, i32 %spec.select ; 10 uses
  %i.e = icmp eq i32 %3, -1
  br i1 %i.e, label %.preheader88.preheader, label %bb.d

.preheader88.preheader:                           ; preds = %bb.b
  %i.f = tail call noundef i64 @_Z19GetBenchMemoryUsagejj(i32 noundef %.165, i32 noundef 33554432)
  %i.g = add i64 %i.f, 8388608
  %.not = icmp ugt i64 %i.g, %i.b
  br i1 %.not, label %.preheader88.1, label %bb.c

.preheader88.1:                                   ; preds = %.preheader88.preheader
  %i.h = tail call noundef i64 @_Z19GetBenchMemoryUsagejj(i32 noundef %.165, i32 noundef 16777216)
  %i.i = add i64 %i.h, 8388608
  %.not.1 = icmp ugt i64 %i.i, %i.b
  br i1 %.not.1, label %.preheader88.2, label %bb.c

.preheader88.2:                                   ; preds = %.preheader88.1
  %i.j = tail call noundef i64 @_Z19GetBenchMemoryUsagejj(i32 noundef %.165, i32 noundef 8388608)
  %i.k = add i64 %i.j, 8388608
  %.not.2 = icmp ugt i64 %i.k, %i.b
  br i1 %.not.2, label %.preheader88.3, label %bb.c

.preheader88.3:                                   ; preds = %.preheader88.2
  %i.l = tail call noundef i64 @_Z19GetBenchMemoryUsagejj(i32 noundef %.165, i32 noundef 4194304)
  %i.m = add i64 %i.l, 8388608
  %.not.3 = icmp ugt i64 %i.m, %i.b
  br i1 %.not.3, label %.preheader88.4, label %bb.c

.preheader88.4:                                   ; preds = %.preheader88.3
  %i.n = tail call noundef i64 @_Z19GetBenchMemoryUsagejj(i32 noundef %.165, i32 noundef 2097152)
  %i.o = add i64 %i.n, 8388608
  %.not.4 = icmp ugt i64 %i.o, %i.b
  br i1 %.not.4, label %.preheader88.5, label %bb.c

.preheader88.5:                                   ; preds = %.preheader88.4
  %i.p = tail call noundef i64 @_Z19GetBenchMemoryUsagejj(i32 noundef %.165, i32 noundef 1048576)
  %i.q = add i64 %i.p, 8388608
  %.not.5 = icmp ugt i64 %i.q, %i.b
  br i1 %.not.5, label %.preheader88.6, label %bb.c

.preheader88.6:                                   ; preds = %.preheader88.5
  %i.r = tail call noundef i64 @_Z19GetBenchMemoryUsagejj(i32 noundef %.165, i32 noundef 524288)
  %i.s = add i64 %i.r, 8388608
  %.not.6 = icmp ugt i64 %i.s, %i.b
  %spec.select110 = select i1 %.not.6, i32 18, i32 19
  br label %bb.c

bb.c:                                             ; preds = %.preheader88.6, %.preheader88.5, %.preheader88.4, %.preheader88.3, %.preheader88.2, %.preheader88.1, %.preheader88.preheader
  %.075.lcssa = phi i32 [ 25, %.preheader88.preheader ], [ 20, %.preheader88.5 ], [ 24, %.preheader88.1 ], [ %spec.select110, %.preheader88.6 ], [ 23, %.preheader88.2 ], [ 21, %.preheader88.4 ], [ 22, %.preheader88.3 ]
  %i.t = shl nuw nsw i32 1, %.075.lcssa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.068 = phi i32 [ %i.t, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.u = tail call noundef i64 @_Z19GetBenchMemoryUsagejj(i32 noundef %.165, i32 noundef %.068)
  tail call fastcc void @_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %i.u, ptr noundef nonnull @.str.3, i32 noundef %.165)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV14CBenchCallback, i64 16), ptr %4, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i8 0, i64 64, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %0, ptr %i.w, align 8, !tbaa !19
  %i.x = tail call i64 @fwrite(ptr nonnull @.str.4, i64 61, i64 1, ptr %0) ; 0 uses
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.5, i64 28, i64 1, ptr %0) ; 0 uses
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.18, i64 4, i64 1, ptr %0) ; 0 uses
  %i.aa = tail call i64 @fwrite(ptr nonnull @.str.5, i64 28, i64 1, ptr %0) ; 0 uses
  %i.ab = tail call i64 @fwrite(ptr nonnull @.str.6, i64 4, i64 1, ptr %0) ; 0 uses
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7) #10 ; 0 uses
  %i.ad = tail call i64 @fwrite(ptr nonnull @.str.18, i64 4, i64 1, ptr %0) ; 0 uses
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7) #10 ; 0 uses
  %i.af = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %0) ; 0 uses
  %.not8294.not = icmp eq i32 %1, 0
  br i1 %.not8294.not, label %_ZN14CTotalBenchRes9NormalizeEv.exit.i, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.d
  %i.ag = icmp ult i32 %.068, 4194304
  %i.ah = select i1 %i.ag, i32 18, i32 22
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 80
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph97, %._crit_edge
  %.07295 = phi i32 [ 0, %.lr.ph97 ], [ %i.ar, %._crit_edge ]
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.066 = phi i32 [ %i.ah, %bb.e ], [ %i.ak, %bb.f ] ; 4 uses
  %.068.highbits = lshr i32 %.068, %.066
  %i.aj = icmp eq i32 %.068.highbits, 0
  %i.ak = add nsw i32 %.066, -1
  br i1 %i.aj, label %bb.f, label %.preheader, !llvm.loop !31

.preheader:                                       ; preds = %bb.f
  %i.al = shl nuw i32 1, %.066                    ; 2 uses
  %.not8092 = icmp ugt i32 %i.al, %.068
  br i1 %.not8092, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.am = add nsw i32 %.16793, 1                  ; 2 uses
  %i.an = shl nuw i32 1, %i.am                    ; 2 uses
  %.not80 = icmp ugt i32 %i.an, %.068
  br i1 %.not80, label %._crit_edge, label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.ao = phi i32 [ %i.an, %bb.g ], [ %i.al, %.preheader ] ; 2 uses
  %.16793 = phi i32 [ %i.am, %bb.g ], [ %.066, %.preheader ] ; 2 uses
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.16793) #10 ; 0 uses
  store i32 %i.ao, ptr %i.ai, align 8, !tbaa !8
  %i.aq = call noundef i32 @_Z9LzmaBenchjjP14IBenchCallback(i32 noundef %.165, i32 noundef %i.ao, ptr noundef nonnull %4) ; 2 uses
  %fputc = call i32 @fputc(i32 10, ptr %0)        ; 0 uses
  %.not81 = icmp eq i32 %i.aq, 0
  br i1 %.not81, label %bb.g, label %.loopexit

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.ar = add nuw i32 %.07295, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %1
  br i1 %exitcond.not, label %.thread86, label %bb.e, !llvm.loop !33

.thread86:                                        ; preds = %._crit_edge
  %.pre = load i64, ptr %i.v, align 8, !tbaa !34  ; 4 uses
  %i.as = icmp eq i64 %.pre, 0
  br i1 %i.as, label %_ZN14CTotalBenchRes9NormalizeEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.thread86
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !35
  %i.av = udiv i64 %i.au, %.pre
  store i64 %i.av, ptr %i.at, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.ay = udiv i64 %i.ax, %.pre
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !23
  %i.bb = udiv i64 %i.ba, %.pre
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !23
  store i64 1, ptr %i.v, align 8, !tbaa !34
  br label %_ZN14CTotalBenchRes9NormalizeEv.exit.i

_ZN14CTotalBenchRes9NormalizeEv.exit.i:           ; preds = %bb.d, %bb.h, %.thread86
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !34 ; 4 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN14CBenchCallback9NormalizeEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN14CTotalBenchRes9NormalizeEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !35
  %i.bh = udiv i64 %i.bg, %i.bd
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !25
  %i.bk = udiv i64 %i.bj, %i.bd
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bn = udiv i64 %i.bm, %i.bd
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !23
  store i64 1, ptr %i.bc, align 8, !tbaa !34
  br label %_ZN14CBenchCallback9NormalizeEv.exit

_ZN14CBenchCallback9NormalizeEv.exit:             ; preds = %_ZN14CTotalBenchRes9NormalizeEv.exit.i, %bb.i
  %i.bo = call i64 @fwrite(ptr nonnull @.str.11, i64 69, i64 1, ptr %0) ; 0 uses
  %i.bp = call i64 @fwrite(ptr nonnull @.str.21, i64 7, i64 1, ptr %0) ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !35
  call fastcc void @_ZL12PrintResultsP8_IO_FILEyyy(ptr noundef %0, i64 noundef %i.br, i64 noundef %i.bt, i64 noundef %i.bv)
  %i.bw = call i64 @fwrite(ptr nonnull @.str.12, i64 5, i64 1, ptr %0) ; 0 uses
  %i.bx = call i64 @fwrite(ptr nonnull @.str.21, i64 7, i64 1, ptr %0) ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !35
  call fastcc void @_ZL12PrintResultsP8_IO_FILEyyy(ptr noundef %0, i64 noundef %i.bz, i64 noundef %i.cb, i64 noundef %i.cd)
  %i.ce = call i64 @fwrite(ptr nonnull @.str.13, i64 5, i64 1, ptr %0) ; 0 uses
  %i.cf = load i64, ptr %i.bu, align 8, !tbaa !35
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !35
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = lshr i64 %i.ch, 1
  %i.cj = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.ck = load i64, ptr %i.by, align 8, !tbaa !25
  %i.cl = add i64 %i.ck, %i.cj
  %i.cm = lshr i64 %i.cl, 1
  %i.cn = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.co = load i64, ptr %i.ca, align 8, !tbaa !23
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = lshr i64 %i.cp, 1
  %i.cr = call i64 @fwrite(ptr nonnull @.str.21, i64 7, i64 1, ptr %0) ; 0 uses
  call fastcc void @_ZL12PrintResultsP8_IO_FILEyyy(ptr noundef %0, i64 noundef %i.cm, i64 noundef %i.cq, i64 noundef %i.ci)
  %fputc83 = call i32 @fputc(i32 10, ptr %0)      ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZN14CBenchCallback9NormalizeEv.exit
  %.5 = phi i32 [ 0, %_ZN14CBenchCallback9NormalizeEv.exit ], [ %i.aq, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.j
end_hunk_0
