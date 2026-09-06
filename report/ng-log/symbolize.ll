Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/symbolize?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__cxa_begin_catch

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef ptr @_ZN5nglog5toolsL6GetHexEPKcS2_Pm(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #10 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !21
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph.preheader, label %switch.early.test._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.e = phi i64 [ %i.o, %bb.b ], [ 0, %.lr.ph.preheader ]
  %.02531 = phi ptr [ %i.p, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.f = load i8, ptr %.02531, align 1, !tbaa !24
  %.fr30 = freeze i8 %i.f                         ; 4 uses
  %i.g = sext i8 %.fr30 to i32                    ; 2 uses
  %i.h = add i8 %.fr30, -48
  %or.cond = icmp ult i8 %i.h, 10
  br i1 %or.cond, label %bb.b, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  switch i8 %.fr30, label %switch.early.test._crit_edge [
    i8 102, label %bb.b
    i8 101, label %bb.b
    i8 100, label %bb.b
    i8 99, label %bb.b
    i8 98, label %bb.b
    i8 97, label %bb.b
    i8 70, label %bb.b
    i8 69, label %bb.b
    i8 68, label %bb.b
    i8 67, label %bb.b
    i8 66, label %bb.b
    i8 65, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test
  %i.i = shl i64 %i.e, 4
  %i.j = icmp samesign ult i8 %.fr30, 65
  %i.k = add nsw i32 %i.g, -48
  %i.l = and i32 %i.g, 15
  %i.m = add nuw nsw i32 %i.l, 9
  %.v = select i1 %i.j, i32 %i.k, i32 %i.m
  %i.n = zext i32 %.v to i64
  %i.o = or i64 %i.i, %i.n                        ; 2 uses
  store i64 %i.o, ptr %2, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.02531, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.p, %1
  br i1 %exitcond.not, label %switch.early.test._crit_edge, label %.lr.ph, !llvm.loop !2

switch.early.test._crit_edge:                     ; preds = %bb.b, %switch.early.test, %bb.a
  %.025.lcssa = phi ptr [ %0, %bb.a ], [ %.02531, %switch.early.test ], [ %scevgep, %bb.b ] ; 2 uses
  %.not = icmp ugt ptr %.025.lcssa, %1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.early.test._crit_edge
  tail call void @abort() #20
  unreachable

bb.d:                                             ; preds = %switch.early.test._crit_edge
  ret ptr %.025.lcssa
}

; Function Attrs: mustprogress nofree uwtable
define internal fastcc noundef i32 @"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L44OpenObjectFileContainingPcAndGetStartAddressEmRmS3_PcmE3$_2EEDaT_i"(ptr nofree readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef readonly %0, i32 noundef 0) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #21
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %bb.b, %bb.c
  ret i32 %i.a
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline uwtable
define internal fastcc noundef zeroext i1 @_ZN5nglog5toolsL22GetSectionHeaderByTypeEitmjP10Elf64_Shdr(i32 noundef %0, i16 noundef zeroext %1, i64 noundef %2, i32 noundef range(i32 2, 12) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #16 {
bb.a:
  %5 = alloca [16 x %struct.Elf64_Shdr], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = zext i16 %1 to i64                       ; 2 uses
  %.not3949.not = icmp eq i16 %1, 0
  br i1 %.not3949.not, label %.thread, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.a, %._crit_edge
  %.02950 = phi i64 [ %i.r, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.b = sub nuw nsw i64 %i.a, %.02950
  %i.c = shl nuw nsw i64 %i.b, 6
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.c, i64 1024)
  %i.e = shl nuw nsw i64 %.02950, 6
  %i.f = add i64 %i.e, %2
  %i.g = call fastcc noundef i64 @_ZN5nglog5toolsL14ReadFromOffsetEiPvmm(i32 noundef %0, ptr noundef nonnull %5, i64 noundef %i.d, i64 noundef %i.f) ; 5 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph52
  %i.i = and i64 %i.g, 63
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = lshr exact i64 %i.g, 6                   ; 2 uses
  %i.l = icmp samesign ult i64 %i.g, 1088
  br i1 %i.l, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %.not.not47.not = icmp eq i64 %i.g, 0
  br i1 %.not.not47.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #20
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.048, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.048 = phi i64 [ %i.m, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %.048 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %i.q = icmp eq i32 %i.p, %3
  br i1 %i.q, label %.thread44, label %bb.f

.thread44:                                        ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.n, i64 64, i1 false), !tbaa.struct !45
  br label %.thread

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.r = add nuw nsw i64 %i.k, %.02950            ; 2 uses
  %.not39 = icmp samesign ult i64 %i.r, %i.a
  br i1 %.not39, label %.lr.ph52, label %.thread

.thread:                                          ; preds = %._crit_edge, %.lr.ph52, %bb.a, %.thread44
  %.335 = phi i1 [ true, %.thread44 ], [ false, %bb.a ], [ false, %.lr.ph52 ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i1 %.335
}

; Function Attrs: mustprogress nofree noinline uwtable
define internal fastcc noundef zeroext i1 @_ZN5nglog5toolsL10FindSymbolEmiPcmmPK10Elf64_ShdrS4_(i64 noundef %0, i32 noundef %1, ptr nofree noundef %2, i64 noundef %3, i64 noundef %4, i64 %.24.val, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #16 {
bb.a:
  %6 = alloca [32 x %struct.Elf64_Sym], align 16  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = udiv i64 %i.b, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = icmp sgt i32 %1, -1
  %.not.i = icmp slt i64 %3, 0
  %.not6738.not = icmp ugt i64 %i.d, %i.b
  br i1 %.not6738.not, label %.loopexit30, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.a, %.loopexit
  %.05239 = phi i64 [ %i.au, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !50
  %i.i = load i64, ptr %i.c, align 8, !tbaa !49
  %i.j = mul i64 %i.i, %.05239
  %i.k = add i64 %i.j, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.l = sub nuw i64 %i.e, %.05239
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  %i.m = mul nuw nsw i64 %.sroa.speculated, 24
  %i.n = call fastcc noundef i64 @_ZN5nglog5toolsL14ReadFromOffsetEiPvmm(i32 noundef %1, ptr noundef nonnull %6, i64 noundef %i.m, i64 noundef %i.k) ; 3 uses
  %i.o = urem i64 %i.n, 24
  %i.p = udiv exact i64 %i.n, 24                  ; 3 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph40
  tail call void @abort() #20
  unreachable

bb.c:                                             ; preds = %.lr.ph40
  %.not = icmp samesign ugt i64 %i.p, %.sroa.speculated
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not66.not14.not = icmp eq i64 %i.n, 0
  br i1 %.not66.not14.not, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #20
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %.015 = phi i64 [ %i.at, %bb.p ], [ 0, %.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %.015 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %.not63 = icmp eq i64 %i.t, 0
  br i1 %.not63, label %bb.p, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.u = add i64 %i.t, %4                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !53
  %i.x = add i64 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !54
  %.not64 = icmp ne i16 %i.z, 0
  %.not65 = icmp ule i64 %i.u, %0
  %or.cond.not8 = and i1 %.not65, %.not64
  %i.aa = icmp ult i64 %0, %i.x
  %or.cond68 = select i1 %or.cond.not8, i1 %i.aa, i1 false
  br i1 %or.cond68, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !55
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add i64 %.24.val, %i.ac
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #20
  unreachable

bb.h:                                             ; preds = %bb.f
  br i1 %.not.i, label %bb.i, label %.preheader.i

bb.i:                                             ; preds = %bb.h
  tail call void @abort() #20
  unreachable

.preheader.i:                                     ; preds = %bb.h, %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i"
  %.020.i = phi i64 [ %.1.i, %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i" ], [ 0, %bb.h ] ; 6 uses
  %i.ae = icmp ult i64 %.020.i, %3
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.preheader.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i
  %i.ag = sub nuw nsw i64 %3, %.020.i
  %i.ah = add i64 %i.ad, %.020.i
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ai = tail call noundef i64 @pread(i32 noundef %1, ptr noundef %i.af, i64 noundef %i.ag, i64 noundef %i.ah) ; 4 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.l, label %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i"

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call ptr @__errno_location() #21
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.k, label %_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit.thread, !llvm.loop !0

"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i": ; preds = %bb.k
  %i.an = icmp slt i64 %i.ai, 0
  %i.ao = icmp eq i64 %i.ai, 0
  %spec.select28.i = select i1 %i.ao, i32 3, i32 0
  %i.ap = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 0)
  %.1.i = add nuw i64 %i.ap, %.020.i              ; 2 uses
  %.0.i = select i1 %i.an, i32 1, i32 %spec.select28.i
  switch i32 %.0.i, label %_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit.thread [
    i32 0, label %.preheader.i
    i32 3, label %bb.m
  ], !llvm.loop !1

bb.m:                                             ; preds = %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i", %.preheader.i
  %.2.i = phi i64 [ %.1.i, %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i" ], [ %.020.i, %.preheader.i ] ; 2 uses
  %.not27.i = icmp ugt i64 %.2.i, %3
  br i1 %.not27.i, label %bb.n, label %_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit

bb.n:                                             ; preds = %bb.m
  tail call void @abort() #20
  unreachable

_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit:      ; preds = %bb.m
  %i.aq = icmp slt i64 %.2.i, 1
  br i1 %i.aq, label %_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit
  %i.ar = tail call noundef ptr @memchr(ptr noundef %2, i32 noundef 0, i64 noundef %3) #22
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit.thread, label %.loopexit.thread

_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit.thread: ; preds = %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i", %bb.l, %bb.o, %_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %3, i1 false)
  br label %.loopexit.thread

bb.p:                                             ; preds = %bb.e, %.lr.ph
  %i.at = add nuw nsw i64 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.p
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !46

.loopexit.thread:                                 ; preds = %_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit.thread, %bb.o
  %.458.ph = phi i1 [ true, %bb.o ], [ false, %_ZN5nglog5toolsL14ReadFromOffsetEiPvmm.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.loopexit30

.loopexit:                                        ; preds = %bb.p, %.preheader
  %i.au = add i64 %i.p, %.05239                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not67 = icmp ult i64 %i.au, %i.e
  br i1 %.not67, label %.lr.ph40, label %.loopexit30, !llvm.loop !47

.loopexit30:                                      ; preds = %.loopexit, %bb.a, %.loopexit.thread
  %spec.select69 = phi i1 [ %.458.ph, %.loopexit.thread ], [ false, %bb.a ], [ false, %.loopexit ]
  ret i1 %spec.select69
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare hidden noundef zeroext i1 @_ZN5nglog5tools8DemangleEPKcPcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"short", !7, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"_ZTS10Elf64_Ehdr", !7, i64 0, !15, i64 16, !15, i64 18, !8, i64 20, !16, i64 24, !16, i64 32, !16, i64 40, !8, i64 48, !15, i64 52, !15, i64 54, !15, i64 56, !15, i64 58, !15, i64 60, !15, i64 62}
!18 = !{!17, !16, i64 40}
!19 = !{!17, !15, i64 60}
!20 = !{!"_ZTS10Elf64_Shdr", !8, i64 0, !8, i64 4, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !8, i64 40, !8, i64 44, !16, i64 48, !16, i64 56}
!21 = !{!16, !16, i64 0}
!22 = !{!"_ZTSN5nglog5tools14FileDescriptorE", !8, i64 0}
!23 = !{!22, !8, i64 0}
!24 = !{!7, !7, i64 0}
!25 = distinct !{!25, !14}
!26 = !{!17, !15, i64 58}
!27 = !{!17, !15, i64 62}
!28 = !{!20, !8, i64 0}
!29 = !{!20, !8, i64 40}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
end_hunk_0
