inline.NumInlined: 167
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.nla::nla_throttle::signature" = type { [8 x i32] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZNK14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE9find_coreERKS3_ = comdat any

$_ZNK3nla12nla_throttle14signature_hashclERKNS0_9signatureE = comdat any

$_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE6insertEOS3_ = comdat any

$_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE12expand_tableEv = comdat any

$_ZN10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_ED0Ev = comdat any

$_ZN10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E4undoEv = comdat any

$_ZN5trailD2Ev = comdat any

$_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE6removeERKS3_ = comdat any

$_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE22remove_deleted_entriesEv = comdat any

$_ZN6vectorIP5trailLb0EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$_ZTV10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E = comdat any

$_ZTI10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E = comdat any

$_ZTS10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E = comdat any

$_ZTI5trail = comdat any

$_ZTS5trail = comdat any

@.str = private unnamed_addr constant [43 x i8] c"/opt-bench/work/z3/z3/src/util/hashtable.h\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"UNEXPECTED CODE WAS REACHED.\00", align 1
@_ZTV10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E, ptr @_ZN5trailD2Ev, ptr @_ZN10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_ED0Ev, ptr @_ZN10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E4undoEv] }, comdat, align 8
@_ZTI10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E, ptr @_ZTI5trail }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E = linkonce_odr hidden constant [98 x i8] c"10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E\00", comdat, align 1
@_ZTI5trail = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS5trail }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS5trail = linkonce_odr hidden constant [7 x i8] c"5trail\00", comdat, align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3nla12nla_throttle10insert_newENS0_13throttle_kindEjb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 4 uses
  %.sroa.6.i = alloca [8 x i32], align 8          ; 4 uses
  %5 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store i32 %1, ptr %5, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !8
  %i.c = zext i1 %3 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.c, ptr %i.d, align 4, !tbaa !8
  %i.e = call noundef ptr @_ZNK14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE9find_coreERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %5)
  %i.f = icmp ne ptr %i.e, null                   ; 2 uses
  br i1 %i.f, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9, !nonnull !17, !align !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 156 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !19
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !28
  call void @_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE6insertEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30, !nonnull !17, !align !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef 48) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E, i64 16), ptr %i.o, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %0, ptr %i.p, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false)
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !33   ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.noexc6.i, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8    ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %.noexc6.i, label %bb.d

.noexc6.i:                                        ; preds = %bb.c, %.noexc.i
  call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %.pre.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.noexc6.i, %bb.c
  %i.x = phi i32 [ %.pre2.i.i.i, %.noexc6.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.y = phi ptr [ %.pre.i.i.i, %.noexc6.i ], [ %i.q, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aa
  store ptr %i.o, ptr %i.ab, align 8, !tbaa !37
  %i.ac = add i32 %i.x, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit: ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i1 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 4 uses
  %.sroa.6 = alloca [8 x i32], align 8            ; 4 uses
  %i.a = tail call noundef ptr @_ZNK14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE9find_coreERKS3_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9, !nonnull !17, !align !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 156 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !19
  br label %bb.e

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !28
  call void @_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE6insertEOS3_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30, !nonnull !17, !align !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 noundef 48) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E, i64 16), ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.l, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !33   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.noexc6, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8    ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %.noexc6, label %bb.d

.noexc6:                                          ; preds = %bb.c, %.noexc
  call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.i)
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.noexc6, %bb.c
  %i.t = phi i32 [ %.pre2.i.i, %.noexc6 ], [ %i.p, %bb.c ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i, %.noexc6 ], [ %i.m, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  store ptr %i.k, ptr %i.x, align 8, !tbaa !37
  %i.y = add i32 %i.t, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret i1 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3nla12nla_throttle10insert_newENS0_13throttle_kindEjjjii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 4 uses
  %.sroa.6.i = alloca [8 x i32], align 8          ; 4 uses
  %8 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 0, ptr %i.a, align 4
  store i32 %1, ptr %8, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %3, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %4, ptr %i.d, align 4, !tbaa !8
  %i.e = add nsw i32 %5, 127
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.e, ptr %i.f, align 4, !tbaa !8
  %i.g = add nsw i32 %6, 127
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.g, ptr %i.h, align 4, !tbaa !8
  %i.i = call noundef ptr @_ZNK14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE9find_coreERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %8)
  %i.j = icmp ne ptr %i.i, null                   ; 2 uses
  br i1 %i.j, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9, !nonnull !17, !align !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 156 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !19
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !28
  call void @_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE6insertEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30, !nonnull !17, !align !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 noundef 48) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E, i64 16), ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %0, ptr %i.t, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !33   ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.noexc6.i, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8    ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %.noexc6.i, label %bb.d

.noexc6.i:                                        ; preds = %bb.c, %.noexc.i
  call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.q)
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.noexc6.i, %bb.c
  %i.ab = phi i32 [ %.pre2.i.i.i, %.noexc6.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i.i.i, %.noexc6.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  store ptr %i.s, ptr %i.af, align 8, !tbaa !37
  %i.ag = add i32 %i.ab, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit: ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3nla12nla_throttle10insert_newENS0_13throttle_kindEjjRK8rationaljjjS4_jN2lp16lconstraint_kindE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 4 uses
  %.sroa.6.i = alloca [8 x i32], align 8          ; 4 uses
  %12 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store i32 %1, ptr %12, align 4, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %3, ptr %i.b, align 4, !tbaa !8
  %i.c = load i32, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  %i.e = select i1 %i.d, i32 255, i32 0
  %.inv.i = icmp slt i32 %i.c, 1
  %i.f = select i1 %.inv.i, i32 %i.e, i32 1
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %i.f, ptr %i.g, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %5, ptr %i.h, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %6, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %7, ptr %i.j, align 4, !tbaa !8
  %i.k = load i32, ptr %8, align 8, !tbaa !39     ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = select i1 %i.l, i32 -16777216, i32 0
  %.inv.i10 = icmp slt i32 %i.k, 1
  %i.n = select i1 %.inv.i10, i32 %i.m, i32 16777216
  %i.o = shl i32 %9, 8
  %i.p = and i32 %i.o, 16776960
  %i.q = and i32 %10, 255
  %i.r = or disjoint i32 %i.q, %i.p
  %i.s = or disjoint i32 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %i.s, ptr %i.t, align 4, !tbaa !8
  %i.u = call noundef ptr @_ZNK14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE9find_coreERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %12)
  %i.v = icmp ne ptr %i.u, null                   ; 2 uses
  br i1 %i.v, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9, !nonnull !17, !align !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 156 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !19
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !28
  call void @_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE6insertEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30, !nonnull !17, !align !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(32) %12, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 noundef 48) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E, i64 16), ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %0, ptr %i.af, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false)
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.noexc6.i, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8  ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %.noexc6.i, label %bb.d

.noexc6.i:                                        ; preds = %bb.c, %.noexc.i
  call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ac)
  %.pre.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.noexc6.i, %bb.c
  %i.an = phi i32 [ %.pre2.i.i.i, %.noexc6.i ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i.i, %.noexc6.i ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ae, ptr %i.ar, align 8, !tbaa !37
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit: ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  ret i1 %i.v
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3nla12nla_throttle10insert_newENS0_13throttle_kindEjjjbi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 4 uses
  %.sroa.6.i = alloca [8 x i32], align 8          ; 4 uses
  %8 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 0, ptr %i.a, align 4
  store i32 %1, ptr %8, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %3, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %4, ptr %i.d, align 4, !tbaa !8
  %i.e = zext i1 %5 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.e, ptr %i.f, align 4, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %6, ptr %i.g, align 4, !tbaa !8
  %i.h = call noundef ptr @_ZNK14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE9find_coreERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %8)
  %i.i = icmp ne ptr %i.h, null                   ; 2 uses
  br i1 %i.i, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9, !nonnull !17, !align !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 156 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !19
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !28
  call void @_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE6insertEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30, !nonnull !17, !align !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 noundef 48) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E, i64 16), ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %0, ptr %i.s, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false)
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !33   ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.noexc6.i, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %.noexc6.i, label %bb.d

.noexc6.i:                                        ; preds = %bb.c, %.noexc.i
  call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.p)
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.noexc6.i, %bb.c
  %i.aa = phi i32 [ %.pre2.i.i.i, %.noexc6.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %.pre.i.i.i, %.noexc6.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  store ptr %i.r, ptr %i.ae, align 8, !tbaa !37
  %i.af = add i32 %i.aa, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit: ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3nla12nla_throttle10insert_newENS0_13throttle_kindEjjjb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 4 uses
  %.sroa.6.i = alloca [8 x i32], align 8          ; 4 uses
  %7 = alloca %"struct.nla::nla_throttle::signature", align 4 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  store i32 %1, ptr %7, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %3, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %4, ptr %i.d, align 4, !tbaa !8
  %i.e = zext i1 %5 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.e, ptr %i.f, align 4, !tbaa !8
  %i.g = call noundef ptr @_ZNK14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE9find_coreERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %7)
  %i.h = icmp ne ptr %i.g, null                   ; 2 uses
  br i1 %i.h, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9, !nonnull !17, !align !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 156 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !19
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !28
  call void @_ZN14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE6insertEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30, !nonnull !17, !align !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(32) %7, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 noundef 48) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10insert_mapI9hashtableIN3nla12nla_throttle9signatureENS2_14signature_hashE10default_eqIS3_EES3_E, i64 16), ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %0, ptr %i.r, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false)
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !33   ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.noexc6.i, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8    ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %.noexc6.i, label %bb.d

.noexc6.i:                                        ; preds = %bb.c, %.noexc.i
  call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.noexc6.i, %bb.c
  %i.z = phi i32 [ %.pre2.i.i.i, %.noexc6.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i.i.i, %.noexc6.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  store ptr %i.q, ptr %i.ad, align 8, !tbaa !37
  %i.ae = add i32 %i.z, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit

_ZN3nla12nla_throttle15insert_new_implERKNS0_9signatureE.exit: ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret i1 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK14core_hashtableI18default_hash_entryIN3nla12nla_throttle9signatureEENS2_14signature_hashE10default_eqIS3_EE9find_coreERKS3_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK3nla12nla_throttle14signature_hashclERKNS0_9signatureE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = add i32 %i.c, -1
  %i.e = and i32 %i.d, %i.a                       ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %i.g = zext i32 %i.e to i64
  %.idx = mul nuw nsw i64 %i.g, 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 2 uses
  %i.i = zext i32 %i.c to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.i
  %.not31 = icmp eq i32 %i.e, %i.c
  br i1 %.not31, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.d, %bb.a
  %.not2733 = icmp eq i32 %i.e, 0
  br i1 %.not2733, label %.loopexit, label %.lr.ph35

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.032 = phi ptr [ %i.ab, %bb.d ], [ %i.h, %bb.a ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  switch i32 %i.l, label %bb.d [
    i32 2, label %bb.b
    i32 0, label %.loopexit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %.032, align 4, !tbaa !48
  %i.n = icmp eq i32 %i.m, %i.a
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  %i.p = load i128, ptr %i.o, align 4
  %i.q = load i128, ptr %1, align 4
  %i.r = xor i128 %i.p, %i.q
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %i.t = getelementptr i8, ptr %1, i64 16
  %i.u = load i128, ptr %i.s, align 4
  %i.v = load i128, ptr %i.t, align 4
  %i.w = xor i128 %i.u, %i.v
  %i.x = or i128 %i.r, %i.w
  %i.y = icmp ne i128 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.032, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.j
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !49

.lr.ph35:                                         ; preds = %.preheader, %bb.g
  %.134 = phi ptr [ %i.at, %bb.g ], [ %i.f, %.preheader ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.134, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44
  switch i32 %i.ad, label %bb.g [
    i32 2, label %bb.e
    i32 0, label %.loopexit
  ]

bb.e:                                             ; preds = %.lr.ph35
  %i.ae = load i32, ptr %.134, align 4, !tbaa !48
  %i.af = icmp eq i32 %i.ae, %i.a
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.134, i64 8 ; 2 uses
  %i.ah = load i128, ptr %i.ag, align 4
  %i.ai = load i128, ptr %1, align 4
  %i.aj = xor i128 %i.ah, %i.ai
  %i.ak = getelementptr i8, ptr %i.ag, i64 16
  %i.al = getelementptr i8, ptr %1, i64 16
  %i.am = load i128, ptr %i.ak, align 4
  %i.an = load i128, ptr %i.al, align 4
  %i.ao = xor i128 %i.am, %i.an
  %i.ap = or i128 %i.aj, %i.ao
  %i.aq = icmp ne i128 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph35, %bb.f, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.134, i64 40 ; 2 uses
  %.not27 = icmp eq ptr %i.at, %i.h
  br i1 %.not27, label %.loopexit, label %.lr.ph35, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.f, %bb.g, %.lr.ph35, %.preheader
  %.026 = phi ptr [ null, %.preheader ], [ null, %.lr.ph35 ], [ %.134, %bb.f ], [ null, %bb.g ], [ %.032, %bb.c ], [ null, %.lr.ph ]
  ret ptr %.026
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK3nla12nla_throttle14signature_hashclERKNS0_9signatureE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !8
  %i.b = mul i32 %i.a, 4097
  %i.c = add i32 %i.b, -1800902961                ; 2 uses
  %i.d = lshr i32 %i.c, 19
  %i.e = xor i32 %i.c, %i.d
  %i.f = xor i32 %i.e, -949894596                 ; 2 uses
  %i.g = add i32 %i.f, 374761393
  %i.h = shl i32 %i.f, 5
  %i.i = add i32 %i.g, %i.h                       ; 2 uses
  %i.j = add i32 %i.i, -744332180
  %i.k = shl i32 %i.i, 9
  %i.l = xor i32 %i.j, %i.k                       ; 2 uses
  %i.m = add i32 %i.l, -42973499
  %i.n = shl i32 %i.l, 3
  %i.o = add i32 %i.m, %i.n                       ; 2 uses
  %i.p = lshr i32 %i.o, 16
  %i.q = xor i32 %i.o, %i.p
  %i.r = xor i32 %i.q, -1252372727                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = shl i32 %i.r, 6
  %i.v = lshr i32 %i.r, 2
  %i.w = add i32 %i.u, -1640531527
  %i.x = add i32 %i.w, %i.v
  %i.y = add i32 %i.x, %i.t
  %i.z = xor i32 %i.y, %i.r                       ; 2 uses
  %i.aa = add i32 %i.z, 2127912214
  %i.ab = shl i32 %i.z, 12
  %i.ac = add i32 %i.aa, %i.ab                    ; 2 uses
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = xor i32 %i.ac, %i.ad
  %i.af = xor i32 %i.ae, -949894596               ; 2 uses
  %i.ag = add i32 %i.af, 374761393
  %i.ah = shl i32 %i.af, 5
  %i.ai = add i32 %i.ag, %i.ah                    ; 2 uses
  %i.aj = add i32 %i.ai, -744332180
  %i.ak = shl i32 %i.ai, 9
  %i.al = xor i32 %i.aj, %i.ak                    ; 2 uses
  %i.am = add i32 %i.al, -42973499
  %i.an = shl i32 %i.al, 3
  %i.ao = add i32 %i.am, %i.an                    ; 2 uses
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = xor i32 %i.ao, %i.ap
  %i.ar = xor i32 %i.aq, -1252372727              ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = shl i32 %i.ar, 6
  %i.av = lshr i32 %i.ar, 2
  %i.aw = add i32 %i.au, -1640531527
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = add i32 %i.ax, %i.at
  %i.az = xor i32 %i.ay, %i.ar                    ; 2 uses
  %i.ba = add i32 %i.az, 2127912214
  %i.bb = shl i32 %i.az, 12
  %i.bc = add i32 %i.ba, %i.bb                    ; 2 uses
  %i.bd = lshr i32 %i.bc, 19
  %i.be = xor i32 %i.bc, %i.bd
  %i.bf = xor i32 %i.be, -949894596               ; 2 uses
  %i.bg = add i32 %i.bf, 374761393
  %i.bh = shl i32 %i.bf, 5
  %i.bi = add i32 %i.bg, %i.bh                    ; 2 uses
  %i.bj = add i32 %i.bi, -744332180
  %i.bk = shl i32 %i.bi, 9
  %i.bl = xor i32 %i.bj, %i.bk                    ; 2 uses
  %i.bm = add i32 %i.bl, -42973499
  %i.bn = shl i32 %i.bl, 3
  %i.bo = add i32 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = xor i32 %i.bo, %i.bp
  %i.br = xor i32 %i.bq, -1252372727              ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  %i.bu = shl i32 %i.br, 6
  %i.bv = lshr i32 %i.br, 2
  %i.bw = add i32 %i.bu, -1640531527
  %i.bx = add i32 %i.bw, %i.bv
  %i.by = add i32 %i.bx, %i.bt
  %i.bz = xor i32 %i.by, %i.br                    ; 2 uses
  %i.ca = add i32 %i.bz, 2127912214
  %i.cb = shl i32 %i.bz, 12
  %i.cc = add i32 %i.ca, %i.cb                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 19
  %i.ce = xor i32 %i.cc, %i.cd
  %i.cf = xor i32 %i.ce, -949894596               ; 2 uses
  %i.cg = add i32 %i.cf, 374761393
  %i.ch = shl i32 %i.cf, 5
end_hunk_0
