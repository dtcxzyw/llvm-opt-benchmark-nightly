inline.NumInlined: 111
inline.NumDeleted: 67
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20250512::base_internal::AtomicHook" = type { %"struct.std::atomic", ptr }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

@.str = private unnamed_addr constant [74 x i8] c"Check size <= std::numeric_limits<size_t>::max() - original_size failed: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"size_t overflow\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"/opt-bench/work/protobuf/protobuf/build/_deps/absl-src/absl/strings/substitute.cc\00", align 1
@_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E = external local_unnamed_addr global %"class.absl::lts_20250512::base_internal::AtomicHook", align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@_ZN4absl12lts_2025051216numbers_internal8kHexCharE = external local_unnamed_addr constant [17 x i8], align 16
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN4absl12lts_2025051219substitute_internal3ArgC1EPKv = unnamed_addr alias void (ptr, ptr), ptr @_ZN4absl12lts_2025051219substitute_internal3ArgC2EPKv
@_ZN4absl12lts_2025051219substitute_internal3ArgC1ENS0_3HexE = unnamed_addr alias void (ptr, i64, i64), ptr @_ZN4absl12lts_2025051219substitute_internal3ArgC2ENS0_3HexE
@_ZN4absl12lts_2025051219substitute_internal3ArgC1ENS0_3DecE = unnamed_addr alias void (ptr, i64, i64), ptr @_ZN4absl12lts_2025051219substitute_internal3ArgC2ENS0_3DecE

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %0, i64 %1, ptr readonly captures(none) %2, ptr noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %.not6094.not = icmp eq i64 %1, 0
  br i1 %.not6094.not, label %.thread88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.04996 = phi i64 [ %.251, %bb.f ], [ 0, %bb.a ]
  %.05295 = phi i64 [ %i.n, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.05295
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7
  %i.c = icmp eq i8 %i.b, 36
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw i64 %.05295, 1                   ; 4 uses
  %.not = icmp ult i64 %i.d, %1
  br i1 %.not, label %bb.c, label %.thread88

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7     ; 3 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i8 %i.f to i64
  %i.j = add nsw i64 %i.i, -48                    ; 2 uses
  %.not59 = icmp ult i64 %i.j, %4
  br i1 %.not59, label %.thread, label %.thread88

.thread:                                          ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i8 %i.f, 36
  br i1 %i.m, label %bb.f, label %.thread88

bb.f:                                             ; preds = %.lr.ph, %bb.e, %.thread
  %.254 = phi i64 [ %i.d, %.thread ], [ %i.d, %bb.e ], [ %.05295, %.lr.ph ]
  %.pn91 = phi i64 [ %i.l, %.thread ], [ 1, %bb.e ], [ 1, %.lr.ph ]
  %.251 = add i64 %.pn91, %.04996                 ; 5 uses
  %i.n = add nuw i64 %.254, 1                     ; 2 uses
  %.not60 = icmp ult i64 %i.n, %1
  br i1 %.not60, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.f
  %i.o = icmp eq i64 %.251, 0
  br i1 %i.o, label %.thread88, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !15   ; 5 uses
  %i.r = xor i64 %i.q, -1
  %.not61 = icmp ugt i64 %.251, %i.r
  br i1 %.not61, label %bb.h, label %bb.o, !prof !18

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %7, align 8, !tbaa !19     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.w = load i64, ptr %i.u, align 8, !tbaa !7
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.y = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.y(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 91, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit unwind label %bb.m, !inline_history !20

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.l:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.l
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !7
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.k
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.aa, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn63 = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  %i.ah = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.n
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn63

bb.o:                                             ; preds = %bb.g
  %i.am = add i64 %i.q, %.251                     ; 3 uses
  %i.an = icmp ugt i64 %i.am, %i.q
  br i1 %i.an, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef 0, i64 noundef %.251, i8 noundef signext 0) ; 0 uses
  br label %.lr.ph99.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i: ; preds = %bb.o
  store i64 %i.am, ptr %i.p, align 8, !tbaa !15
  %i.ap = load ptr, ptr %0, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  store i8 0, ptr %i.aq, align 1, !tbaa !7
  br label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i, %bb.p
  %i.ar = load ptr, ptr %0, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.q
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %bb.x
  %.098 = phi i64 [ %i.bk, %bb.x ], [ 0, %.lr.ph99.preheader ] ; 4 uses
  %.04297 = phi ptr [ %.143, %bb.x ], [ %i.as, %.lr.ph99.preheader ] ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %.098
  %i.au = load i8, ptr %i.at, align 1, !tbaa !7   ; 2 uses
  %i.av = icmp eq i8 %i.au, 36
  br i1 %i.av, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.lr.ph99
  %i.aw = add nuw i64 %.098, 1                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !7   ; 3 uses
  %i.az = add i8 %i.ay, -48
  %i.ba = icmp ult i8 %i.az, 10
  br i1 %i.ba, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bb = zext nneg i8 %i.ay to i64
  %i.bc = getelementptr [16 x i8], ptr %3, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -768
  %.sroa.0.0.copyload = load i64, ptr %i.bd, align 8, !tbaa !21 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.bc, i64 -760
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.be = icmp sgt i64 %.sroa.0.0.copyload, 1
  br i1 %i.be, label %bb.s, label %bb.t, !prof !23

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.04297, ptr align 1 %.sroa.4.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bf = icmp eq i64 %.sroa.0.0.copyload, 1
  br i1 %i.bf, label %bb.u, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.u:                                             ; preds = %bb.t
  %i.bg = load i8, ptr %.sroa.4.0.copyload, align 1, !tbaa !7
  store i8 %i.bg, ptr %.04297, align 1, !tbaa !7
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

_ZSt4copyIPKcPcET0_T_S4_S3_.exit:                 ; preds = %bb.s, %bb.t, %bb.u
  %i.bh = getelementptr inbounds i8, ptr %.04297, i64 %.sroa.0.0.copyload
  br label %bb.x

bb.v:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.ay, 36
  br i1 %i.bi, label %9, label %bb.x

9:                                                ; preds = %bb.v
  %10 = getelementptr inbounds nuw i8, ptr %.04297, i64 1
  store i8 36, ptr %.04297, align 1, !tbaa !7
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph99
  %i.bj = getelementptr inbounds nuw i8, ptr %.04297, i64 1
  store i8 %i.au, ptr %.04297, align 1, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %9, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit
  %.143 = phi ptr [ %i.bh, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit ], [ %10, %9 ], [ %.04297, %bb.v ], [ %i.bj, %bb.w ]
  %.1 = phi i64 [ %i.aw, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit ], [ %i.aw, %9 ], [ %.098, %bb.v ], [ %.098, %bb.w ]
  %i.bk = add i64 %.1, 1                          ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %1
  br i1 %i.bl, label %.lr.ph99, label %.thread88, !llvm.loop !24

.thread88:                                        ; preds = %bb.b, %bb.e, %bb.d, %bb.x, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !25
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.d, ptr %i.a, align 8, !tbaa !21
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %i.g = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.g, ptr %i.b, align 8, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.i, ptr %i.h, align 1, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !15
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN4absl12lts_2025051219substitute_internal3ArgC2EPKv(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.010 = phi ptr [ %i.b, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ]  ; 2 uses
  %i.d = and i64 %.0, 15
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal8kHexCharE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7
  %i.g = getelementptr inbounds i8, ptr %.010, i64 -1 ; 2 uses
  store i8 %i.f, ptr %i.g, align 1, !tbaa !7
  %i.h = lshr i64 %.0, 4                          ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !26

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %.010, i64 -2
  store i8 120, ptr %i.i, align 1, !tbaa !7
  %i.j = getelementptr inbounds i8, ptr %.010, i64 -3 ; 3 uses
  store i8 48, ptr %i.j, align 1, !tbaa !7
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sink15 = phi i64 [ %i.m, %bb.d ], [ 4, %bb.a ]
  %.sink = phi ptr [ %i.j, %bb.d ], [ @.str.3, %bb.a ]
  store i64 %.sink15, ptr %0, align 8, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN4absl12lts_2025051219substitute_internal3ArgC2ENS0_3HexE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i64 %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.016 = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.b ]
  %.015 = phi i64 [ %1, %bb.a ], [ %i.f, %bb.b ]  ; 2 uses
  %i.b = and i64 %.015, 15
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal8kHexCharE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7
  %i.e = getelementptr inbounds i8, ptr %.016, i64 -1 ; 4 uses
  store i8 %i.d, ptr %i.e, align 1, !tbaa !7
  %i.f = lshr i64 %.015, 4                        ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !27

bb.c:                                             ; preds = %bb.b
  %.sroa.418.8.extract.shift = lshr i64 %2, 8
  %.sroa.418.8.extract.trunc = trunc i64 %.sroa.418.8.extract.shift to i8
  %i.g = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %2, 255                          ; 2 uses
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.l ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.o = sub i64 %i.h, %i.n                       ; 2 uses
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 %.sroa.418.8.extract.trunc, i64 %i.o, i1 false)
  br label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit:              ; preds = %bb.e, %bb.d, %bb.c
  %.pre-phi = phi i64 [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.h, %bb.c ]
  %.0 = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.e, %bb.c ]
  %i.q = sub i64 %i.g, %.pre-phi
  store i64 %i.q, ptr %0, align 8, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN4absl12lts_2025051219substitute_internal3ArgC2ENS0_3DecE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i64 %2) unnamed_addr #2 align 2 {
bb.a:
  %.sroa.431.8.extract.shift = lshr i64 %2, 8
  %.sroa.431.8.extract.trunc = trunc i64 %.sroa.431.8.extract.shift to i8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = and i64 %2, 255
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = and i64 %2, 65536
  %i.f = icmp ne i64 %i.e, 0                      ; 2 uses
  %i.g = icmp ugt i64 %1, 9
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02734 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ]
  %.02833 = phi i64 [ %i.l, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.h = urem i64 %.02833, 10
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.02734, i64 -1 ; 3 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !7
  %i.l = udiv i64 %.02833, 10                     ; 2 uses
  %i.m = icmp ugt i64 %.02833, 99
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.028.lcssa = phi i64 [ %1, %bb.a ], [ %i.l, %.lr.ph ]
  %.027.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.n = trunc nuw nsw i64 %.028.lcssa to i8
  %i.o = or disjoint i8 %i.n, 48
end_hunk_0
