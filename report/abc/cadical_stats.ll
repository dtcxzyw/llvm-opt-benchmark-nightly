Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_stats?download=true
inline.NumInlined: 167
inline.NumDeleted: 110
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorImSaImEE17_M_default_appendEm = comdat any

@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN7CaDiCaL5StatsC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7CaDiCaL5StatsC2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL5StatsC2Ev(ptr noundef nonnull align 8 dereferenceable(2560) initializes((8, 2560)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2296) %i.a, i8 0, i64 2296, i1 false)
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2320
  store ptr %i.e, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2328 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.h, i8 0, i64 232, i1 false)
  %i.i = tail call noundef double @_ZN7CaDiCaL18absolute_real_timeEv() #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480
  store double %i.i, ptr %i.j, align 8, !tbaa !14
  %i.k = tail call noundef double @_ZN7CaDiCaL21absolute_process_timeEv() #12
  store double %i.k, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 9223372036854775807, ptr %i.l, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = sdiv exact i64 %i.r, 24                  ; 2 uses
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = sub nuw nsw i64 2, %i.s
  tail call void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.u)
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.r, 48
  br i1 %.not, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, %i.v
  br i1 %.not.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.v, %bb.d ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #13
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  store ptr %i.v, ptr %i.m, align 8, !tbaa !50
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit:    ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !51  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 127
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit
  %i.am = sub nuw nsw i64 127, %i.ak
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.am)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !51
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.g:                                             ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit
  %.not5 = icmp eq i64 %i.aj, 1016
  br i1 %.not5, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 1016 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.af, %i.an
  br i1 %.not.i.i1, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !13
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.ao = phi ptr [ %.pre, %bb.f ], [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !8  ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 127
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ay = sub nuw nsw i64 127, %i.aw
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef %i.ay)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit3

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %.not6 = icmp eq i64 %i.av, 1016
  br i1 %.not6, label %_ZNSt6vectorImSaImEE6resizeEm.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 1016 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.ar, %i.az
  br i1 %.not.i.i2, label %_ZNSt6vectorImSaImEE6resizeEm.exit3, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !13
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit3

_ZNSt6vectorImSaImEE6resizeEm.exit3:              ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  ret void
}

declare noundef double @_ZN7CaDiCaL18absolute_real_timeEv() local_unnamed_addr #1

declare noundef double @_ZN7CaDiCaL21absolute_process_timeEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7CaDiCaL5Stats5printEPNS_8InternalE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2560) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7CaDiCaL8Internal20print_resource_usageEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(7296) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7CaDiCaL7Checker11print_statsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(352) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7CaDiCaL11LratChecker11print_statsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(424) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !50
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #11 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !60, !alias.scope !58, !noalias !55
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !60, !alias.scope !55, !noalias !58
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12, !alias.scope !58, !noalias !55
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !12, !alias.scope !55, !noalias !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !58, !noalias !55
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !61

_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #13
  br label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !62
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !13
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #11 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !62
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !62
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #13
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { builtin nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 long", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!9, !10, i64 8}
!14 = !{!15, !24, i64 480}
!15 = !{!"_ZTSN7CaDiCaL5StatsE", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !18, i64 40, !19, i64 96, !20, i64 208, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !17, i64 360, !17, i64 368, !17, i64 376, !21, i64 384, !22, i64 424, !22, i64 448, !23, i64 472, !25, i64 488, !26, i64 520, !29, i64 600, !30, i64 656, !31, i64 696, !32, i64 736, !17, i64 760, !17, i64 768, !17, i64 776, !17, i64 784, !17, i64 792, !17, i64 800, !17, i64 808, !17, i64 816, !17, i64 824, !17, i64 832, !17, i64 840, !17, i64 848, !17, i64 856, !17, i64 864, !17, i64 872, !17, i64 880, !17, i64 888, !17, i64 896, !17, i64 904, !17, i64 912, !17, i64 920, !17, i64 928, !17, i64 936, !17, i64 944, !17, i64 952, !17, i64 960, !17, i64 968, !17, i64 976, !17, i64 984, !17, i64 992, !17, i64 1000, !17, i64 1008, !17, i64 1016, !17, i64 1024, !17, i64 1032, !17, i64 1040, !17, i64 1048, !17, i64 1056, !17, i64 1064, !17, i64 1072, !17, i64 1080, !17, i64 1088, !17, i64 1096, !17, i64 1104, !17, i64 1112, !17, i64 1120, !17, i64 1128, !17, i64 1136, !17, i64 1144, !17, i64 1152, !17, i64 1160, !17, i64 1168, !17, i64 1176, !17, i64 1184, !17, i64 1192, !17, i64 1200, !17, i64 1208, !17, i64 1216, !17, i64 1224, !17, i64 1232, !17, i64 1240, !17, i64 1248, !17, i64 1256, !17, i64 1264, !17, i64 1272, !17, i64 1280, !17, i64 1288, !17, i64 1296, !17, i64 1304, !17, i64 1312, !17, i64 1320, !17, i64 1328, !17, i64 1336, !17, i64 1344, !17, i64 1352, !17, i64 1360, !17, i64 1368, !17, i64 1376, !17, i64 1384, !17, i64 1392, !17, i64 1400, !17, i64 1408, !17, i64 1416, !17, i64 1424, !17, i64 1432, !17, i64 1440, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !17, i64 1480, !17, i64 1488, !17, i64 1496, !17, i64 1504, !17, i64 1512, !17, i64 1520, !17, i64 1528, !17, i64 1536, !17, i64 1544, !17, i64 1552, !17, i64 1560, !17, i64 1568, !17, i64 1576, !17, i64 1584, !17, i64 1592, !17, i64 1600, !17, i64 1608, !17, i64 1616, !17, i64 1624, !17, i64 1632, !17, i64 1640, !33, i64 1648, !17, i64 1664, !17, i64 1672, !17, i64 1680, !17, i64 1688, !34, i64 1696, !17, i64 1720, !17, i64 1728, !17, i64 1736, !17, i64 1744, !17, i64 1752, !17, i64 1760, !17, i64 1768, !17, i64 1776, !17, i64 1784, !17, i64 1792, !17, i64 1800, !17, i64 1808, !17, i64 1816, !17, i64 1824, !17, i64 1832, !17, i64 1840, !17, i64 1848, !17, i64 1856, !17, i64 1864, !17, i64 1872, !17, i64 1880, !17, i64 1888, !17, i64 1896, !17, i64 1904, !17, i64 1912, !17, i64 1920, !17, i64 1928, !17, i64 1936, !17, i64 1944, !17, i64 1952, !17, i64 1960, !17, i64 1968, !17, i64 1976, !17, i64 1984, !17, i64 1992, !17, i64 2000, !17, i64 2008, !17, i64 2016, !17, i64 2024, !17, i64 2032, !17, i64 2040, !17, i64 2048, !17, i64 2056, !17, i64 2064, !17, i64 2072, !17, i64 2080, !17, i64 2088, !17, i64 2096, !17, i64 2104, !17, i64 2112, !17, i64 2120, !17, i64 2128, !17, i64 2136, !17, i64 2144, !17, i64 2152, !35, i64 2160, !35, i64 2200, !36, i64 2240, !17, i64 2256, !17, i64 2264, !17, i64 2272, !17, i64 2280, !37, i64 2288, !38, i64 2304, !41, i64 2328, !46, i64 2352, !47, i64 2528}
!16 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !11, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48}
!19 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !6, i64 0, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104}
!20 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72}
!21 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!22 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !17, i64 0, !17, i64 8, !17, i64 16}
!23 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !24, i64 0, !24, i64 8}
!24 = !{!"double", !6, i64 0}
!25 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!26 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !17, i64 0, !17, i64 8, !27, i64 16, !27, i64 32, !27, i64 48, !28, i64 64}
!27 = !{!"_ZTSN7CaDiCaL5StatsUt6_Ut_E", !17, i64 0, !17, i64 8}
!28 = !{!"_ZTSN7CaDiCaL5StatsUt6_Ut0_E", !17, i64 0, !17, i64 8}
!29 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48}
!30 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!31 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!32 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !17, i64 0, !17, i64 8, !17, i64 16}
!33 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !17, i64 0, !17, i64 8}
!34 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !17, i64 0, !17, i64 8, !17, i64 16}
!35 = !{!"_ZTSN7CaDiCaL5StatsUt13_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!36 = !{!"_ZTSN7CaDiCaL5StatsUt14_E", !17, i64 0, !17, i64 8}
!37 = !{!"_ZTSN7CaDiCaL5StatsUt15_E", !17, i64 0, !17, i64 8}
!38 = !{!"_ZTSSt6vectorImSaImEE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseImSaImEE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !9, i64 0}
!41 = !{!"_ZTSSt6vectorIS_ImSaImEESaIS1_EE", !42, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseISt6vectorImSaImEESaIS2_EE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE12_Vector_implE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"p1 _ZTSSt6vectorImSaImEE", !11, i64 0}
!46 = !{!"_ZTSN7CaDiCaL5StatsUt16_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152, !17, i64 160, !17, i64 168}
!47 = !{!"_ZTSN7CaDiCaL5StatsUt17_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!48 = !{!15, !24, i64 472}
!49 = !{!15, !17, i64 720}
!50 = !{!44, !45, i64 8}
!51 = !{!44, !45, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!44, !45, i64 16}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!57 = distinct !{!57, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!60 = !{!10, !10, i64 0}
!61 = distinct !{!61, !53}
!62 = !{!17, !17, i64 0}
end_hunk_0
