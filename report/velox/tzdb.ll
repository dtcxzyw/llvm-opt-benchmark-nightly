inline.NumInlined: 2484
inline.NumDeleted: 1106
begin_hunk_0
@.str.19 = private unnamed_addr constant [34 x i8] c"corrupt tzdb: expected whitespace\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"corrupt tzdb: expected a string\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.22 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"corrupt tzdb year: expected 'min' or 'max'\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"corrupt tzdb year: year is less than the minimum\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"corrupt tzdb year: year is greater than the maximum\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"corrupt tzdb: expected a digit\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"corrupt tzdb: expected a non-zero digit\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"corrupt tzdb: integral too large\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"corrupt tzdb month: invalid name\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"corrupt tzdb day: value too large\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"corrupt tzdb weekday: invalid name\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"corrupt tzdb on: expected '>=' or '<='\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"corrupt tzdb: unexpected input\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"corrupt tzdb: rule '{}' does not exist\00", align 1
@.str.56 = private unnamed_addr constant [57 x i8] c"Found {} forever rules for time zone rule {}, expected 2\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"/etc/localtime\00", align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"tzdb: the symlink '/etc/localtime' does not exist\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"tzdb: the path '/etc/localtime' is not a symlink\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"/etc\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"/usr/share/zoneinfo/\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"tzdb: the time zone '\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"' is not found in the database\00", align 1
@switch.table._ZN8facebook5velox4tzdbL14__parse_tzdataERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi.74 = private unnamed_addr constant [20 x i8] [i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 2, i8 poison, i8 0, i8 poison, i8 poison, i8 2], align 4

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4tzdb23__libcpp_tzdb_directoryB5cxx11Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = call i32 @stat(ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #26
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 16384
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call noalias noundef nonnull dereferenceable(27) ptr @_Znwm(i64 noundef 27) #27 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  store i64 26, ptr %i.g, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.1, i64 26, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 26, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 26
  store i8 0, ptr %i.j, align 1, !tbaa !16
  br label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = call i32 @stat(ptr noundef nonnull @.str, ptr noundef nonnull %1) #26
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !7
  %i.o = and i32 %i.n, 61440
  %i.p = icmp eq i32 %i.o, 16384
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i6, label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i6: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #27 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !11
  store i64 19, ptr %i.q, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.r, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 19, ptr %i.s, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  store i8 0, ptr %i.t, align 1, !tbaa !16
  br label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !19

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  store i64 %i.c, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.j, ptr %i.i, align 1, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !16
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4tzdb11__init_tzdbERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.__entry, align 8            ; 4 uses
  %3 = alloca %struct.__entry, align 8            ; 4 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::basic_ifstream", align 8 ; 8 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %10 = alloca %"class.std::basic_ifstream", align 8 ; 17 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN8facebook5velox4tzdb23__libcpp_tzdb_directoryB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !18
  %i.b = load ptr, ptr %5, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !11
  %i.i = load i64, ptr %i.c, align 8, !tbaa !16
  store i64 %i.i, ptr %i.a, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !17
  store ptr %i.c, ptr %5, align 8, !tbaa !11
  store i64 0, ptr %i.k, align 8, !tbaa !17
  store i8 0, ptr %i.c, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.f, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ]
  %i.q = load ptr, ptr %4, align 8, !tbaa !11     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %.body

_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %5, align 8, !tbaa !11     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit
  %i.w = load i64, ptr %i.c, align 8, !tbaa !16
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA10_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i8 noundef zeroext 2)
          to label %bb.g unwind label %bb.bh

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %.noexc unwind label %bb.bi

.noexc:                                           ; preds = %bb.g
  %i.y = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #26
  br label %.body34

_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit: ; preds = %.noexc
  %i.aa = load ptr, ptr %7, align 8, !tbaa !11
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %6, ptr noundef %i.aa, i32 noundef 8)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit unwind label %bb.bj

_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit: ; preds = %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i37, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i38, label %bb.i

bb.i:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.ac) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i38

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i38: ; preds = %bb.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit
  %i.ad = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i38
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i42, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i43, label %bb.j

bb.j:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.aj) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i43

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i43: ; preds = %bb.j, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.ak = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i43
  %i.an = load i64, ptr %i.al, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit47

_ZNSt10filesystem7__cxx114pathD2Ev.exit47:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke fastcc void @_ZN8facebook5velox4tzdbL15__parse_versionB5cxx11ERSi(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.k unwind label %bb.bl

bb.k:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit47
  %i.ap = load ptr, ptr %0, align 8, !tbaa !11    ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  %i.as = load ptr, ptr %9, align 8, !tbaa !11    ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.au = icmp eq ptr %i.as, %i.at                ; 2 uses
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.k
  br i1 %i.au, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.k
  br i1 %i.au, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !17 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %.not21.i = icmp eq ptr %9, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %13, !prof !19

13:                                               ; preds = %bb.l
  switch i64 %i.aw, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %13
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !16
  store i8 %i.ay, ptr %i.ap, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.as, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %13
  %i.az = load i64, ptr %i.av, align 8, !tbaa !17 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !17
  %i.bb = load ptr, ptr %0, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %0, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !tbaa !16
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !tbaa !16
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bg = load i64, ptr %i.aq, align 8, !tbaa !16
  store ptr %i.as, ptr %0, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !16
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ap, ptr %9, align 8, !tbaa !11
  store i64 %i.bg, ptr %i.at, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.at, ptr %9, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %14 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ap, %bb.o ], [ %i.at, %bb.p ], [ %i.as, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !17
  store i8 0, ptr %14, align 1, !tbaa !16
  %i.bl = load ptr, ptr %9, align 8, !tbaa !11    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  invoke fastcc void @_ZN8facebook5velox4tzdbL14__parse_tzdataERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !22 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !22 ; 6 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.br, ptr %i.bt, i64 noundef %i.cb)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %bb.r
  %i.cc = icmp sgt i64 %i.bx, 128
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 128 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.br, ptr nonnull %i.cd)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.s
  %i.ce = icmp eq ptr %i.cd, %i.bt
  br i1 %i.ce, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc52, %.noexc53
  %.sroa.0.04.i.i.i.i = phi ptr [ %i.cf, %.noexc53 ], [ %i.cd, %.noexc52 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.04.i.i.i.i)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i, i64 8 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bt
  br i1 %i.cg, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !24

bb.t:                                             ; preds = %.noexc51
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.br, ptr %i.bt)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.noexc53, %.noexc52, %bb.q, %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !26 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26 ; 6 uses
  %i.cl = icmp eq ptr %i.ci, %i.ck
  br i1 %i.cl, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = ashr exact i64 %i.co, 6
  %i.cq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %i.cs = xor i64 %i.cr, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.ci, ptr %i.ck, i64 noundef %i.cs)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %bb.u
  %i.ct = icmp sgt i64 %i.co, 1024
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc57
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 1024 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.ci, ptr nonnull %i.cu)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.v
  %i.cv = icmp eq ptr %i.cu, %i.ck
  br i1 %i.cv, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %.noexc58, %.noexc59
  %.sroa.0.04.i.i.i.i56 = phi ptr [ %i.cw, %.noexc59 ], [ %i.cu, %.noexc58 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.04.i.i.i.i56)
          to label %.noexc59 unwind label %.loopexit

.noexc59:                                         ; preds = %.lr.ph.i.i.i.i55
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i56, i64 64 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ck
  br i1 %i.cx, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i55, !llvm.loop !28

bb.w:                                             ; preds = %.noexc57
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.ci, ptr %i.ck)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.noexc59, %.noexc58, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %bb.w
  %i.cy = load ptr, ptr %1, align 8, !tbaa !29    ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !29 ; 6 uses
  %i.db = icmp eq ptr %i.cy, %i.da
  br i1 %i.db, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEEZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EvT_SP_T0_.exit", label %bb.x

bb.x:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.cy to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = sdiv exact i64 %i.de, 56
  %i.dg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = shl nuw nsw i64 %i.dg, 1
  %i.di = xor i64 %i.dh, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElNS0_5__ops15_Iter_comp_iterIZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EEEvT_SS_T0_T1_"(ptr %i.cy, ptr %i.da, i64 noundef %i.di)
  %i.dj = icmp sgt i64 %i.de, 896
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 896 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EEEvT_SS_T0_"(ptr %i.cy, ptr nonnull %i.dk)
  %i.dl = icmp eq ptr %i.dk, %i.da
  br i1 %i.dl, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEEZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EvT_SP_T0_.exit", label %.lr.ph.i.i.i.i61

.lr.ph.i.i.i.i61:                                 ; preds = %bb.y, %.lr.ph.i.i.i.i61
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i61 ], [ %i.dk, %bb.y ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEENS0_5__ops14_Val_comp_iterIZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.06.i.i.i.i)
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 56 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.da
  br i1 %i.dn, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEEZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EvT_SP_T0_.exit", label %.lr.ph.i.i.i.i61, !llvm.loop !31

bb.z:                                             ; preds = %bb.x
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EEEvT_SS_T0_"(ptr %i.cy, ptr %i.da)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEEZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EvT_SP_T0_.exit"

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEEZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EvT_SP_T0_.exit": ; preds = %.lr.ph.i.i.i.i61, %bb.z, %bb.y, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA18_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(18) @.str.4, i8 noundef zeroext 2)
          to label %bb.aa unwind label %bb.bm

bb.aa:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEEZNSC_11__init_tzdbERNSC_4tzdbERSJ_E3$_0EvT_SP_T0_.exit"
  invoke void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %.noexc62 unwind label %bb.bn

.noexc62:                                         ; preds = %bb.aa
  %i.dp = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit65 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %.noexc62
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #26
  br label %.body63

_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit65: ; preds = %.noexc62
  %i.dr = load ptr, ptr %11, align 8, !tbaa !11
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %10, ptr noundef %i.dr, i32 noundef 8)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit67 unwind label %bb.bo

_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit67: ; preds = %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit65, %.backedge.i.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.1.i, %.backedge.i.i ], [ null, %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit65 ] ; 32 uses
  %.sroa.10.0.i = phi ptr [ %.sroa.10.1.i, %.backedge.i.i ], [ null, %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit65 ] ; 21 uses
  %.sroa.15.0.i = phi ptr [ %.sroa.15.1.i, %.backedge.i.i ], [ null, %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit65 ] ; 17 uses
  %i.ds = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc.i unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc.i:                                         ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit67
  switch i32 %i.ds, label %bb.ad [
    i32 -1, label %"_ZZN8facebook5velox4tzdbL20__parse_leap_secondsERSt6vectorINS1_11leap_secondESaIS3_EEOSiENK3$_2clEv.exit.i"
    i32 32, label %bb.ac
    i32 9, label %bb.ac
    i32 10, label %bb.ac
    i32 35, label %.preheader.i
  ]

bb.ac:                                            ; preds = %.noexc.i, %.noexc.i, %.noexc.i
  %i.dt = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.backedge.i.i unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 0 uses

.backedge.i.i:                                    ; preds = %.noexc19.i, %.noexc19.i, %_ZNSt6vectorIZN8facebook5velox4tzdbL20__parse_leap_secondsERS_INS2_11leap_secondESaIS3_EEOSiE7__entrySaIS8_EE17_M_realloc_insertIJRNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERSJ_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, %bb.ag, %bb.ac
  %.sroa.0.1.i = phi ptr [ %i.er, %_ZNSt6vectorIZN8facebook5velox4tzdbL20__parse_leap_secondsERS_INS2_11leap_secondESaIS3_EEOSiE7__entrySaIS8_EE17_M_realloc_insertIJRNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERSJ_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %.sroa.0.0.i, %bb.ag ], [ %.sroa.0.0.i, %bb.ac ], [ %.sroa.0.0.i, %.noexc19.i ], [ %.sroa.0.0.i, %.noexc19.i ]
  %.sroa.10.1.i = phi ptr [ %i.ew, %_ZNSt6vectorIZN8facebook5velox4tzdbL20__parse_leap_secondsERS_INS2_11leap_secondESaIS3_EEOSiE7__entrySaIS8_EE17_M_realloc_insertIJRNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERSJ_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %i.ef, %bb.ag ], [ %.sroa.10.0.i, %bb.ac ], [ %.sroa.10.0.i, %.noexc19.i ], [ %.sroa.10.0.i, %.noexc19.i ]
  %.sroa.15.1.i = phi ptr [ %i.ex, %_ZNSt6vectorIZN8facebook5velox4tzdbL20__parse_leap_secondsERS_INS2_11leap_secondESaIS3_EEOSiE7__entrySaIS8_EE17_M_realloc_insertIJRNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERSJ_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %.sroa.15.0.i, %bb.ag ], [ %.sroa.15.0.i, %bb.ac ], [ %.sroa.15.0.i, %.noexc19.i ], [ %.sroa.15.0.i, %.noexc19.i ]
  br label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit67, !llvm.loop !32

.preheader.i:                                     ; preds = %.noexc.i, %.noexc19.i
  %i.du = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc18.i unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.i
end_hunk_0
