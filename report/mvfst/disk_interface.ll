inline.NumInlined: 159
inline.NumDeleted: 62
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%struct.ScopedMetric = type { ptr, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

$_ZN10FileReaderD2Ev = comdat any

$_ZN17RealDiskInterfaceD0Ev = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_ZTV17RealDiskInterface = hidden unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZN10FileReaderD2Ev, ptr @_ZN17RealDiskInterfaceD0Ev, ptr @_ZN17RealDiskInterface8ReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_S8_, ptr @_ZNK17RealDiskInterface4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_, ptr @_ZN17RealDiskInterface7MakeDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN17RealDiskInterface9WriteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_, ptr @_ZN17RealDiskInterface10RemoveFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, align 8
@_ZZNK17RealDiskInterface4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_E16metrics_h_metric = internal unnamed_addr global ptr null, align 8
@_ZGVZNK17RealDiskInterface4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_E16metrics_h_metric = internal global i64 0, align 8
@g_metrics = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"node stat\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stat(\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"): \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"WriteFile(%s): Unable to create file. %s\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"WriteFile(%s): Unable to write to the file. %s\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"WriteFile(%s): Unable to close the file. %s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"mkdir(%s): %s\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"remove(%s): %s\00", align 1
@_ZZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15kPathSeparators = internal constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN17RealDiskInterfaceC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN17RealDiskInterfaceC2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN13DiskInterface8MakeDirsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.b = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15kPathSeparators, i64 noundef -1, i64 noundef 1) #15, !noalias !12 ; 4 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.preheader.i

_ZSt4findIPKccET_S2_S2_RKT0_.exit.preheader.i:    ; preds = %bb.a
  %.pre.pre.i = load ptr, ptr %1, align 8, !tbaa !15, !noalias !12 ; 3 uses
  %.not.i12 = icmp eq i64 %i.b, 0
  br i1 %.not.i12, label %.critedge.i, label %.lr.ph

_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !21, !alias.scope !12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !22, !alias.scope !12
  store i8 0, ptr %i.d, align 8, !tbaa !23, !alias.scope !12
  br label %bb.k

_ZSt4findIPKccET_S2_S2_RKT0_.exit.i:              ; preds = %.lr.ph
  %4 = add i64 %.0.i13, -1                        ; 3 uses
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !24

.lr.ph:                                           ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit.preheader.i, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.i
  %.0.i13 = phi i64 [ %4, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.i ], [ %i.b, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.preheader.i ] ; 3 uses
  %5 = getelementptr i8, ptr %.pre.pre.i, i64 %.0.i13
  %i.f = getelementptr i8, ptr %5, i64 -1
  %.pre53.i.i.i.i = load i8, ptr %i.f, align 1, !tbaa !23, !noalias !12
  %i.g = icmp eq i8 %.pre53.i.i.i.i, 47
  br i1 %i.g, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.i, label %..critedge.i_crit_edge, !llvm.loop !24

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !24

.critedge.i:                                      ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit.i, %..critedge.i_crit_edge, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.preheader.i
  %.0.i.lcssa = phi i64 [ %.0.i13, %..critedge.i_crit_edge ], [ %i.b, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.preheader.i ], [ %4, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22, !noalias !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !21, !alias.scope !29
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.0.i.lcssa, i64 %i.i) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !29
  store i64 %spec.select.i.i.i.i, ptr %i.a, align 8, !tbaa !30, !noalias !29
  %i.k = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.k, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %.critedge.i
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #15 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !15, !alias.scope !29
  %i.m = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !29
  store i64 %i.m, ptr %i.j, align 8, !tbaa !23, !alias.scope !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.b, %.critedge.i
  %i.n = phi ptr [ %i.l, %bb.b ], [ %i.j, %.critedge.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %.pre.pre.i, align 1, !tbaa !23
  store i8 %i.o, ptr %i.n, align 1, !tbaa !23
  br label %_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %.pre.pre.i, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.c, %bb.d
  %i.p = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !29 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !22, !alias.scope !29
  %i.r = load ptr, ptr %2, align 8, !tbaa !15, !alias.scope !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !29
  %.pre = load i64, ptr %i.q, align 8, !tbaa !22
  %i.t = icmp eq i64 %.pre, 0
  br i1 %i.t, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !22
  store i8 0, ptr %i.u, align 8, !tbaa !23
  %i.w = load ptr, ptr %0, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %3) #15, !call_target !33 ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %3, align 8, !tbaa !15
  call void (ptr, ...) @_Z5ErrorPKcz(ptr noundef nonnull @.str, ptr noundef %i.ab) #15
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = call noundef zeroext i1 @_ZN13DiskInterface8MakeDirsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %0, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #15, !call_target !675
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ true, %bb.g ], [ %i.ag, %bb.i ], [ false, %bb.h ]
  %i.ah = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.u
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ah) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi i1 [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN12_GLOBAL__N_17DirNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.aj) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z5ErrorPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN17RealDiskInterfaceC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17RealDiskInterface, i64 16), ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK17RealDiskInterface4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef captures(address) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %struct.ScopedMetric, align 8       ; 4 uses
  %6 = alloca %struct.stat64, align 8             ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load atomic i8, ptr @_ZGVZNK17RealDiskInterface4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_E16metrics_h_metric acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !697

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK17RealDiskInterface4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_E16metrics_h_metric) #15
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @g_metrics, align 8, !tbaa !698 ; 2 uses
  %.not14.not = icmp eq ptr %i.d, null
  br i1 %.not14.not, label %.critedge16, label %.critedge

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.e = call noundef ptr @_ZN7Metrics9NewMetricERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  %i.f = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.f) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.critedge16

.critedge16:                                      ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = phi ptr [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.c ]
  store ptr %i.i, ptr @_ZZNK17RealDiskInterface4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_E16metrics_h_metric, align 8, !tbaa !700
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK17RealDiskInterface4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_E16metrics_h_metric) #15
  br label %bb.d

bb.d:                                             ; preds = %.critedge16, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.j = load ptr, ptr @_ZZNK17RealDiskInterface4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_E16metrics_h_metric, align 8, !tbaa !700
  call void @_ZN12ScopedMetricC1EP6Metric(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.j) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.k = load ptr, ptr %1, align 8, !tbaa !15
  %i.l = call i32 @stat64(ptr noundef %i.k, ptr noundef nonnull %6) #15
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__errno_location() #17    ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !702
  switch i32 %i.o, label %bb.f [
    i32 2, label %bb.u
    i32 20, label %bb.u
  ]
end_hunk_0
