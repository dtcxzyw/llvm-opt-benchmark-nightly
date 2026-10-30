Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/vlog_is_on?download=true
inline.NumInlined: 75
inline.NumDeleted: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.nglog::SiteFlag" = type { ptr, ptr, i64, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZN3fLI7FLAGS_vE = external global i32, align 4
@_ZN5nglogL12vmodule_listE = internal unnamed_addr global ptr null, align 8
@_ZN5nglogL16cached_site_listE = internal unnamed_addr global ptr null, align 8
@_ZZN5nglog12SetVLOGLevelEPKciE8vlocal__ = internal global %"struct.nglog::SiteFlag" zeroinitializer, align 8
@.str = private unnamed_addr constant [48 x i8] c"/opt-bench/work/ng-log/ng-log/src/vlog_is_on.cc\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Set VLOG level for \22%s\22 to %d\00", align 1
@_ZN5nglogL14inited_vmoduleE = internal unnamed_addr global i1 false, align 1
@_ZN5nglogL13vmodule_mutexE = internal global { %union.pthread_mutex_t } zeroinitializer, align 8
@_ZN3fLS13FLAGS_vmoduleB5cxx11E = external local_unnamed_addr constant ptr, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"=%d\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN5nglog5tools12SafeFNMatch_EPKcmS2_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.c = phi i1 [ %i.q, %bb.e ], [ %i.b, %bb.a ]
  %.051 = phi i64 [ %i.o, %bb.e ], [ 0, %bb.a ]   ; 7 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw i64 %.051, 1
  %i.e = icmp eq i64 %i.d, %1
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.051
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %i.h = icmp eq i8 %i.g, 42
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.051
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.051
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = icmp eq i8 %i.j, %i.l
  %i.n = icmp eq i8 %i.j, 63
  %or.cond41 = or i1 %i.n, %i.m
  br i1 %or.cond41, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i64 %.051, 1                     ; 3 uses
  %i.p = icmp eq i64 %i.o, %1
  %i.q = icmp eq i64 %i.o, %3                     ; 2 uses
  br i1 %i.p, label %.loopexit, label %.lr.ph, !llvm.loop !32

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.j, 42
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw i64 %.051, 1                     ; 3 uses
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.v = sub nuw i64 %1, %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader
  %.1 = phi i64 [ %i.z, %bb.h ], [ %.051, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.1
  %i.x = sub i64 %3, %.1
  %i.y = tail call noundef zeroext i1 @_ZN5nglog5tools12SafeFNMatch_EPKcmS2_m(ptr noundef nonnull %i.u, i64 noundef %i.v, ptr noundef %i.w, i64 noundef %i.x) ; 2 uses
  %i.z = add i64 %.1, 1                           ; 2 uses
  %.not = icmp eq i64 %i.z, %3
  %or.cond = or i1 %i.y, %.not
  br i1 %or.cond, label %.loopexit, label %bb.h, !llvm.loop !33

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.a, %bb.f, %bb.g, %bb.b, %bb.c
  %.036 = phi i1 [ false, %bb.b ], [ %i.b, %bb.a ], [ false, %bb.f ], [ %i.h, %bb.c ], [ true, %bb.g ], [ %i.y, %bb.h ], [ %i.q, %bb.e ]
  ret i1 %.036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5nglog12SetVLOGLevelEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr @_ZN3fLI7FLAGS_vE, align 4, !tbaa !10 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5nglogL13vmodule_mutexE) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %.04758 = load ptr, ptr @_ZN5nglogL12vmodule_listE, align 8, !tbaa !13 ; 2 uses
  %.not59 = icmp eq ptr %.04758, null
  br i1 %.not59, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #12
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  br i1 %.250, label %.loopexit, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.04762 = phi ptr [ %.047, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.04758, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader ] ; 7 uses
  %.061 = phi i32 [ %.2, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %i.a, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader ] ; 3 uses
  %.04860 = phi i8 [ %.250.a, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.04762, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.i = load ptr, ptr %.04762, align 8, !tbaa !19
  %bcmp.i = tail call i32 @bcmp(ptr %i.i, ptr nonnull %0, i64 %i.e)
  %i.j = icmp eq i32 %bcmp.i, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.k = trunc nuw i8 %.04860 to i1
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %.04762, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.1 = phi i32 [ %.061, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.m, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %.04762, i64 32
  store i32 %1, ptr %i.n, align 8, !tbaa !21
  br label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.o = trunc nuw i8 %.04860 to i1
  br i1 %i.o, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57
  %i.p = load ptr, ptr %.04762, align 8, !tbaa !19
  %i.q = tail call noundef zeroext i1 @_ZN5nglog5tools12SafeFNMatch_EPKcmS2_m(ptr noundef %i.p, i64 noundef %i.e, ptr noundef nonnull %0, i64 noundef %i.b)
  br i1 %i.q, label %bb.g, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.04762, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !21
  br label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.e, %bb.g, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57
  %.250 = phi i1 [ true, %bb.e ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57 ], [ true, %bb.g ], [ false, %bb.f ]
  %.250.a = phi i8 [ 1, %bb.e ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57 ], [ 1, %bb.g ], [ 0, %bb.f ]
  %.2 = phi i32 [ %.1, %bb.e ], [ %.061, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57 ], [ %i.s, %bb.g ], [ %.061, %bb.f ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04762, i64 40
  %.047 = load ptr, ptr %i.t, align 8, !tbaa !13  ; 2 uses
  %.not = icmp eq ptr %.047, null
  br i1 %.not, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge, label %.lr.ph, !llvm.loop !34

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge.thread: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge
  %.0.lcssa75 = phi i32 [ %.2, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge ], [ %i.a, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader ] ; 2 uses
  %i.u = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #13
          to label %bb.h unwind label %bb.j       ; 7 uses

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !18
  store i8 0, ptr %i.v, align 8, !tbaa !8
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %0, i64 noundef %i.x)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.j ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  store i32 %1, ptr %i.z, align 8, !tbaa !21
  %i.aa = load ptr, ptr @_ZN5nglogL12vmodule_listE, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !23
  store ptr %i.u, ptr @_ZN5nglogL12vmodule_listE, align 8, !tbaa !13
  %.04065 = load ptr, ptr @_ZN5nglogL16cached_site_listE, align 8, !tbaa !25 ; 2 uses
  %.not5266 = icmp eq ptr %.04065, null
  br i1 %.not5266, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.l
  %.04068 = phi ptr [ %.040, %bb.l ], [ %.04065, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 5 uses
  %.04167 = phi ptr [ %.142, %bb.l ], [ @_ZN5nglogL16cached_site_listE, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.04068, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %.04068, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ag = tail call noundef zeroext i1 @_ZN5nglog5tools12SafeFNMatch_EPKcmS2_m(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef %i.ad, i64 noundef %i.af)
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph69
  store ptr %i.z, ptr %.04068, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %.04068, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  store ptr %i.ai, ptr %.04167, align 8, !tbaa !25
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge.thread
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5nglogL13vmodule_mutexE) #11 ; 0 uses
  resume { ptr, i32 } %i.aj

bb.k:                                             ; preds = %.lr.ph69
  %i.al = getelementptr inbounds nuw i8, ptr %.04068, i64 24 ; 2 uses
  %.040.pre = load ptr, ptr %i.al, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.040 = phi ptr [ %i.ai, %bb.i ], [ %.040.pre, %bb.k ] ; 2 uses
  %.142 = phi ptr [ %.04167, %bb.i ], [ %i.al, %bb.k ]
  %.not52 = icmp eq ptr %.040, null
  br i1 %.not52, label %.loopexit, label %.lr.ph69, !llvm.loop !35

.loopexit:                                        ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge
  %.0.lcssa76 = phi i32 [ %.2, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge ], [ %.0.lcssa75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0.lcssa75, %bb.l ]
  %i.am = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5nglogL13vmodule_mutexE) #11 ; 0 uses
  %i.an = load ptr, ptr @_ZZN5nglog12SetVLOGLevelEPKciE8vlocal__, align 8, !tbaa !30 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.split, label %bb.m

.split:                                           ; preds = %.loopexit
  %i.ap = tail call noundef zeroext i1 @_ZN5nglog15InitializeVLOG3EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5nglog12SetVLOGLevelEPKciE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str, i32 noundef 1)
  br i1 %i.ap, label %bb.n, label %bb.o

bb.m:                                             ; preds = %.loopexit
  %i.aq = load i32, ptr %i.an, align 4, !tbaa !10
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split, %bb.m
  tail call void (i32, ptr, i32, ptr, ...) @_ZN5nglog6RawLogENS_11LogSeverityEPKciS2_z(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 197, ptr noundef nonnull @.str.1, ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.o

bb.o:                                             ; preds = %.split, %bb.n, %bb.m
  ret i32 %.0.lcssa76
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5nglog15InitializeVLOG3EPNS_8SiteFlagEPiPKci(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5nglogL13vmodule_mutexE) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #12
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %.b = load i1, ptr @_ZN5nglogL14inited_vmoduleE, align 1 ; 3 uses
  br i1 %.b, label %bb.p, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store i1 false, ptr @_ZN5nglogL14inited_vmoduleE, align 1
  %i.d = load ptr, ptr @_ZN3fLS13FLAGS_vmoduleB5cxx11E, align 8, !tbaa !38, !nonnull !39, !align !40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, %bb.c
  %.026.i = phi ptr [ %i.e, %bb.c ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i ] ; 4 uses
  %.023.i = phi ptr [ null, %bb.c ], [ %.225.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i ] ; 4 uses
  %.022.i = phi ptr [ null, %bb.c ], [ %.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i ] ; 3 uses
  %i.h = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.026.i, i32 noundef 61) #10 ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.026.i to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.k, ptr %i.a, align 8, !tbaa !41
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.m, ptr %4, align 8, !tbaa !19
  %i.n = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.n, ptr %i.f, align 8, !tbaa !8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.o = phi ptr [ %i.m, %.noexc ], [ %i.f, %bb.e ] ; 2 uses
  switch i64 %i.k, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %.026.i, align 1, !tbaa !8
  store i8 %i.p, ptr %i.o, align 1, !tbaa !8
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %.026.i, i64 %i.k, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  store i64 %i.q, ptr %i.g, align 8, !tbaa !18
  %i.r = load ptr, ptr %4, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.t = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b) #11
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.v = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #13
          to label %bb.j unwind label %bb.l       ; 9 uses

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !18
  store i8 0, ptr %i.w, align 8, !tbaa !8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.j
  %i.y = load i32, ptr %i.b, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i32 %i.y, ptr %i.z, align 8, !tbaa !21
  %.not32.i = icmp eq ptr %.023.i, null
  br i1 %.not32.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.022.i, i64 40
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !23
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.ac = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.f
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %bb.h
  %.225.i = phi ptr [ %.023.i, %bb.h ], [ %.023.i, %bb.k ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ] ; 2 uses
  %.1.i = phi ptr [ %.022.i, %bb.h ], [ %i.v, %bb.k ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ] ; 2 uses
  %i.ag = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef 44) #10 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.aj = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i: ; preds = %bb.m
  %i.al = load i64, ptr %i.f, align 8, !tbaa !8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br i1 %i.ah, label %bb.n, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.body

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, %bb.d
  %.3.i = phi ptr [ %.225.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i ], [ %.023.i, %bb.d ] ; 2 uses
  %.2.i = phi ptr [ %.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i ], [ %.022.i, %bb.d ]
  %.not33.i = icmp eq ptr %.3.i, null
  br i1 %.not33.i, label %_ZN5nglogL16VLOG2InitializerEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr @_ZN5nglogL12vmodule_listE, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.2.i, i64 40
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !23
  store ptr %.3.i, ptr @_ZN5nglogL12vmodule_listE, align 8, !tbaa !13
  br label %_ZN5nglogL16VLOG2InitializerEv.exit

_ZN5nglogL16VLOG2InitializerEv.exit:              ; preds = %bb.n, %bb.o
  store i1 true, ptr @_ZN5nglogL14inited_vmoduleE, align 1
  br label %bb.p

bb.p:                                             ; preds = %_ZN5nglogL16VLOG2InitializerEv.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ap = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #10 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = select i1 %.not, ptr %2, ptr %i.aq      ; 6 uses
  %i.as = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ar, i32 noundef 46) #10 ; 2 uses
  %.not44 = icmp eq ptr %i.as, null
  br i1 %.not44, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.aw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ax = phi i64 [ %i.av, %bb.q ], [ %i.aw, %bb.r ] ; 5 uses
  %i.ay = icmp ugt i64 %i.ax, 3
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = icmp ne i32 %i.bb, 1819175213
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = add i64 %i.ax, -4
  %spec.select = select i1 %i.be, i64 %i.bf, i64 %i.ax
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.038 = phi i64 [ %i.ax, %bb.s ], [ %spec.select, %bb.t ] ; 2 uses
  %.050 = load ptr, ptr @_ZN5nglogL12vmodule_listE, align 8, !tbaa !13 ; 2 uses
  %.not4551 = icmp eq ptr %.050, null
  br i1 %.not4551, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.w
  %.052 = phi ptr [ %.0, %bb.w ], [ %.050, %bb.u ] ; 4 uses
  %i.bg = load ptr, ptr %.052, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %.052, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !18
  %i.bj = call noundef zeroext i1 @_ZN5nglog5tools12SafeFNMatch_EPKcmS2_m(ptr noundef %i.bg, i64 noundef %i.bi, ptr noundef nonnull %i.ar, i64 noundef %.038)
  br i1 %i.bj, label %.loopexit, label %bb.w

bb.v:                                             ; preds = %.noexc.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.v ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.bl = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5nglogL13vmodule_mutexE) #11 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body

bb.w:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.052, i64 40
  %.0 = load ptr, ptr %i.bm, align 8, !tbaa !13   ; 2 uses
  %.not45 = icmp eq ptr %.0, null
  br i1 %.not45, label %.thread, label %.lr.ph, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph
  %5 = getelementptr inbounds nuw i8, ptr %.052, i64 32 ; 5 uses
  br i1 %.b, label %bb.x, label %bb.aa

.thread:                                          ; preds = %bb.w, %bb.u
  br i1 %.b, label %.thread51, label %bb.aa

.thread51:                                        ; preds = %.thread
  store ptr %1, ptr %0, align 8, !tbaa !30
  br label %bb.y

bb.x:                                             ; preds = %.loopexit
  %6 = icmp eq ptr %5, %1
  store ptr %5, ptr %0, align 8, !tbaa !30
  br i1 %6, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %.thread51, %bb.x
  %7 = phi ptr [ %1, %.thread51 ], [ %5, %bb.x ]  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !28
  %.not47 = icmp eq ptr %i.bo, null
  br i1 %.not47, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr %i.ar, ptr %i.bn, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.038, ptr %i.bp, align 8, !tbaa !29
  %i.bq = load ptr, ptr @_ZN5nglogL16cached_site_listE, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !31
  store ptr %0, ptr @_ZN5nglogL16cached_site_listE, align 8, !tbaa !25
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.x, %bb.y, %bb.z, %.loopexit
  %8 = phi ptr [ %1, %.thread ], [ %5, %bb.x ], [ %7, %bb.y ], [ %7, %bb.z ], [ %5, %.loopexit ]
  %i.bs = load i32, ptr %8, align 4, !tbaa !10
  %i.bt = icmp sge i32 %i.bs, %3
  %i.bu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5nglogL13vmodule_mutexE) #11 ; 0 uses
  ret i1 %i.bt
}

declare void @_ZN5nglog6RawLogENS_11LogSeverityEPKciS2_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!5, !5, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTSN5nglog11VModuleInfoE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !4, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !14, i64 0}
!20 = !{!"_ZTSN5nglog11VModuleInfoE", !17, i64 0, !5, i64 32, !12, i64 40}
!21 = !{!20, !5, i64 32}
!22 = !{!15, !14, i64 0}
!23 = !{!20, !12, i64 40}
!24 = !{!"p1 _ZTSN5nglog8SiteFlagE", !11, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 int", !11, i64 0}
!27 = !{!"_ZTSN5nglog8SiteFlagE", !26, i64 0, !14, i64 8, !16, i64 16, !24, i64 24}
!28 = !{!27, !14, i64 8}
!29 = !{!27, !16, i64 16}
!30 = !{!27, !26, i64 0}
!31 = !{!27, !24, i64 24}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{}
!40 = !{i64 8}
!41 = !{!16, !16, i64 0}
end_hunk_0
