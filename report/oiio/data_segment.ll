inline.NumInlined: 76
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"struct.std::default_delete" = type { i8 }

@_ZTVSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [132 x i8] c"St19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSSt14default_deleteIN22photos_editing_formats8image_io11DataSegmentEE = linkonce_odr constant [69 x i8] c"St14default_deleteIN22photos_editing_formats8image_io11DataSegmentEE\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataSegment6CreateERKNS0_9DataRangeEPKhNS1_23BufferDispositionPolicyE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::default_delete", align 1 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %3, ptr %i.c, align 8, !tbaa !16
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr null, ptr %i.d, align 8, !tbaa !22
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11
          to label %_ZNSt10shared_ptrIN22photos_editing_formats8image_io11DataSegmentEEC2IS2_St14default_deleteIS2_EvEEPT_T0_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #12 ; 0 uses
  call void @_ZNKSt14default_deleteIN22photos_editing_formats8image_io11DataSegmentEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %i.a)
  invoke void @__cxa_rethrow() #13
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #14
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN22photos_editing_formats8image_io11DataSegmentEEC2IS2_St14default_deleteIS2_EvEEPT_T0_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.a, ptr %i.n, align 8, !tbaa !28
  store ptr %i.e, ptr %i.d, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30     ; 3 uses
  %.not.i.i = icmp uge i64 %1, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp ult i64 %1, %i.c
  %i.e = select i1 %.not.i.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.i = sub i64 0, %i.a
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  %i.k = zext i8 %2 to i32
  %i.l = sub nuw i64 %i.c, %1
  %i.m = tail call noundef ptr @memchr(ptr noundef %i.j, i32 noundef %i.k, i64 noundef %i.l) #15 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = sub i64 %i.a, %i.o
  %i.q = add i64 %i.p, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.c, %bb.a ], [ %i.q, %bb.c ], [ %i.c, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK22photos_editing_formats8image_io11DataSegment4FindEmPKcm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %.not.i.i37 = icmp uge i64 %1, %i.a
  %i.d = icmp ult i64 %1, %i.c
  %i.e = select i1 %.not.i.i37, i1 %i.d, i1 false
  br i1 %i.e, label %.lr.ph, label %.thread33

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = sext i8 %i.f to i32
  %i.j = ptrtoint ptr %i.h to i64
  %invariant.op = sub i64 %i.a, %i.j
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.02638 = phi i64 [ %1, %.lr.ph ], [ %i.r, %.thread ] ; 3 uses
  %i.k = sub nuw i64 %i.c, %.02638
  %i.l = sub nuw i64 %.02638, %i.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = tail call noundef ptr @memchr(ptr noundef %i.m, i32 noundef %i.i, i64 noundef %i.k) #15 ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.n to i64
  %.reass = add i64 %invariant.op, %i.o           ; 2 uses
  %i.p = add i64 %.reass, %3
  %.not29 = icmp ugt i64 %i.p, %i.c
  br i1 %.not29, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @strncmp(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %3) #15
  %.not30.not = icmp eq i32 %i.q, 0
  br i1 %.not30.not, label %.thread33, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  %i.r = add nuw i64 %.02638, 1                   ; 3 uses
  %.not.i.i = icmp uge i64 %i.r, %i.a
  %i.s = icmp ult i64 %i.r, %i.c
  %i.t = select i1 %.not.i.i, i1 %i.s, i1 false
  br i1 %i.t, label %bb.b, label %.thread33, !llvm.loop !32

.thread33:                                        ; preds = %.thread, %bb.d, %bb.a
  %.6 = phi i64 [ %i.c, %bb.a ], [ %.reass, %bb.d ], [ %i.c, %.thread ]
  ret i64 %.6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i16 0, 512) i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not.i.i = icmp uge i64 %0, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ult i64 %0, %i.c
  %i.e = select i1 %.not.i.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16.1 = icmp eq ptr %2, null
  br i1 %.not16.1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %2, align 8, !tbaa !30     ; 2 uses
  %.not.i.i.1 = icmp uge i64 %0, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ult i64 %0, %i.h
  %i.j = select i1 %.not.i.i.1, i1 %i.i, i1 false
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %.lcssa26 = phi ptr [ %1, %bb.b ], [ %2, %bb.d ]
  %.lcssa = phi i64 [ %i.a, %bb.b ], [ %i.f, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa26, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = sub nuw i64 %0, %.lcssa
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !31
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.p, 256
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.3 = phi i16 [ %i.q, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i16 %.sroa.0.3
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN22photos_editing_formats8image_io11DataSegment4FindEmhPKS1_S3_(i64 noundef %0, i8 noundef zeroext %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne ptr %3, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34   ; 11 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !30
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !30     ; 3 uses
  %.not.i.i = icmp uge i64 %0, %i.h
  %i.i = icmp ult i64 %0, %i.d
  %i.j = and i1 %i.i, %.not.i.i
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %0
  %i.n = sub i64 0, %i.h
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = zext i8 %1 to i32                        ; 2 uses
  %i.q = sub nuw i64 %i.d, %0
  %i.r = tail call noundef ptr @memchr(ptr noundef %i.o, i32 noundef %i.p, i64 noundef %i.q) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit.thread, label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit

_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit: ; preds = %bb.d
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = sub i64 %i.h, %i.t
  %i.v = add i64 %i.u, %i.s                       ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d
  br i1 %i.w, label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit.thread, label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32

_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit.thread: ; preds = %bb.d, %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit
  %i.x = load i64, ptr %i.g, align 8              ; 4 uses
  %i.y = icmp ult i64 %i.d, %i.x
  br i1 %i.y, label %bb.e, label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32

bb.e:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10  ; 2 uses
  %i.ab = sub nuw i64 %i.x, %i.d
  %i.ac = tail call noundef ptr @memchr(ptr noundef %i.aa, i32 noundef %i.p, i64 noundef %i.ab) #15 ; 2 uses
  %.not.i31 = icmp eq ptr %i.ac, null
  br i1 %.not.i31, label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.d, %i.ae
  %i.ag = add i64 %i.af, %i.ad
  br label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32

bb.g:                                             ; preds = %bb.c
  %.not.i.i.i33 = icmp uge i64 %0, %i.d
  %i.ah = load i64, ptr %i.g, align 8             ; 4 uses
  %i.ai = icmp ult i64 %0, %i.ah
  %i.aj = select i1 %.not.i.i.i33, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.h, label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %0
  %i.an = sub i64 0, %i.d
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  %i.ap = zext i8 %1 to i32
  %i.aq = sub nuw i64 %i.ah, %0
  %i.ar = tail call noundef ptr @memchr(ptr noundef %i.ao, i32 noundef %i.ap, i64 noundef %i.aq) #15 ; 2 uses
  %.not.i35 = icmp eq ptr %i.ar, null
  br i1 %.not.i35, label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.al to i64
  %i.au = sub i64 %i.d, %i.at
  %i.av = add i64 %i.au, %i.as
  br label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32

bb.j:                                             ; preds = %bb.a
  br i1 %i.a, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !34
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.j
  %i.aw = phi i64 [ 0, %bb.j ], [ %.pre, %._crit_edge ] ; 2 uses
  br i1 %i.b, label %.thread.thread, label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32

.thread.thread:                                   ; preds = %bb.b, %.thread
  %i.ax = phi i64 [ %i.aw, %.thread ], [ %i.d, %bb.b ]
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !34
  %i.ba = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.az)
  br label %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32

_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit32: ; preds = %.thread.thread, %.thread, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit.thread, %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit
  %.024 = phi i64 [ %i.ah, %bb.h ], [ %i.x, %bb.e ], [ %i.v, %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit ], [ %i.x, %_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh.exit.thread ], [ %i.ag, %bb.f ], [ %i.ah, %bb.g ], [ %i.av, %bb.i ], [ %i.ba, %.thread.thread ], [ %i.aw, %.thread ]
  ret i64 %.024
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN22photos_editing_formats8image_io11DataSegmentEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #16
  br label %_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit

_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #16
  br label %bb.e

bb.e:                                             ; preds = %_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io11DataSegmentEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #16
  br label %_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit.i

_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #16
  br label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io11DataSegmentEEclEPS2_.exit

_ZNKSt14default_deleteIN22photos_editing_formats8image_io11DataSegmentEEclEPS2_.exit: ; preds = %bb.a, %_ZN22photos_editing_formats8image_io11DataSegmentD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN22photos_editing_formats8image_io11DataSegmentEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(69) @_ZTSSt14default_deleteIN22photos_editing_formats8image_io11DataSegmentEE) #12
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i64 0, i64 8, !8, i64 8, i64 8, !8}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !13, i64 16}
!11 = !{!"_ZTSN22photos_editing_formats8image_io11DataSegmentE", !12, i64 0, !13, i64 16, !15, i64 24}
!12 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !9, i64 0, !9, i64 8}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"_ZTSN22photos_editing_formats8image_io11DataSegment23BufferDispositionPolicyE", !5, i64 0}
!16 = !{!11, !15, i64 24}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !20, i64 8}
!19 = !{!"p1 _ZTSN22photos_editing_formats8image_io11DataSegmentE", !14, i64 0}
!20 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!21 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!22 = !{!20, !21, i64 0}
!23 = !{!24, !4, i64 8}
!24 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!25 = !{!24, !4, i64 12}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !6, i64 0}
!28 = !{!29, !19, i64 0}
!29 = !{!"_ZTSNSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !19, i64 0}
!30 = !{!12, !9, i64 0}
!31 = !{!5, !5, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!12, !9, i64 8}
!35 = !{!36, !19, i64 16}
!36 = !{!"_ZTSSt19_Sp_counted_deleterIPN22photos_editing_formats8image_io11DataSegmentESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0, !29, i64 16}
!37 = !{!38, !13, i64 8}
!38 = !{!"_ZTSSt9type_info", !13, i64 8}
end_hunk_0
