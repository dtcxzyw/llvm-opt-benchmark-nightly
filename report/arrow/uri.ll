inline.NumInlined: 924
inline.NumDeleted: 458
begin_hunk_0
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.27 = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type = linkonce_odr global %"class.arrow::UInt16Type" zeroinitializer, comdat, align 8
@_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type = linkonce_odr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@_ZTVN5arrow10UInt16TypeE = external unnamed_addr constant { [13 x ptr] }, align 8

@_ZN5arrow4util3UriC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow4util3UriC2Ev
@_ZN5arrow4util3UriD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow4util3UriD2Ev
@_ZN5arrow4util3UriC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow4util3UriC2EOS1_

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util9UriEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !11
  store i8 0, ptr %i.b, align 8, !tbaa !14
  br i1 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul i64 %1, 3                            ; 9 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #22
          to label %.noexc11 unwind label %bb.p

.noexc11:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp samesign ugt i64 %i.d, 15
  br i1 %.not.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.f = icmp samesign ult i64 %i.d, 30
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !15

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc26 unwind label %bb.p

.noexc26:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.i = phi i64 [ %i.g, %bb.d ], [ 31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %.0.i34 = phi i64 [ %i.d, %bb.d ], [ 30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread unwind label %bb.p ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store ptr %i.j, ptr %0, align 8, !tbaa !16
  store i64 %.0.i34, ptr %i.b, align 8, !tbaa !14
  br label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.d, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %bb.f
  %i.l = phi ptr [ %i.k, %bb.f ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.d, ptr %i.c, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.o = load ptr, ptr %0, align 8, !tbaa !16
  %i.p = invoke ptr @uriEscapeExA(ptr noundef nonnull %2, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i32 noundef 0, i32 noundef 0)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = load i64, ptr %i.c, align 8, !tbaa !11   ; 7 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.w = sub nuw i64 %i.t, %i.u                   ; 4 uses
  %i.x = sub i64 9223372036854775807, %i.u
  %i.y = icmp ult i64 %i.x, %i.w
  br i1 %i.y, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i14

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #22
          to label %.noexc20 unwind label %bb.q

.noexc20:                                         ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i14: ; preds = %bb.i
  %i.z = icmp eq ptr %i.q, %i.b                   ; 2 uses
  br i1 %i.z, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i15

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i14
  %i.aa = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i15: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i14
  %i.ab = load i64, ptr %i.b, align 8
  %i.ac = select i1 %i.z, i64 15, i64 %i.ab
  %.not.i.i.i.i16 = icmp ugt i64 %i.t, %i.ac
  br i1 %.not.i.i.i.i16, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i17

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u, i64 noundef 0, ptr noundef null, i64 noundef %i.w)
          to label %.noexc21 unwind label %bb.q

.noexc21:                                         ; preds = %bb.l
  %.pre.i.i19 = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i17: ; preds = %.noexc21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i15
  %i.ad = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i15 ], [ %.pre.i.i19, %.noexc21 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u ; 2 uses
  %cond.i.i.i.i18 = icmp eq i64 %i.w, 1
  br i1 %cond.i.i.i.i18, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i17
  store i8 0, ptr %i.ae, align 1, !tbaa !14
  br label %.sink.split.i.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 %i.w, i1 false)
  br label %.sink.split.i.i13

bb.o:                                             ; preds = %bb.h
  %i.af = icmp ult i64 %i.t, %i.u
  br i1 %i.af, label %.sink.split.i.i13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit22

.sink.split.i.i13:                                ; preds = %bb.o, %bb.n, %bb.m
  store i64 %i.t, ptr %i.c, align 8, !tbaa !11
  %i.ag = load ptr, ptr %0, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.t
  store i8 0, ptr %i.ah, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit22

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.e, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l, %bb.j, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %i.ai, %bb.p ]
  %i.ak = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.b
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.am = load i64, ptr %i.b, align 8, !tbaa !14
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit22: ; preds = %bb.a, %.sink.split.i.i13, %bb.o
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @uriEscapeExA(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr readonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = icmp eq ptr %2, null
  %i.c = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.c, %i.b
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #22
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i64 %1, 1                        ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !17

.noexc9.i.i.i:                                    ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !16
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %1, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !14
  store i8 %i.j, ptr %i.i, align 1, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %1, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  store i8 0, ptr %i.l, align 1, !tbaa !14
  %i.m = load i64, ptr %i.k, align 8, !tbaa !11
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %0, align 8, !tbaa !16
  %i.p = invoke ptr @uriUnescapeInPlaceA(ptr noundef nonnull %i.o)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = load i64, ptr %i.k, align 8, !tbaa !11   ; 7 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.w = sub nuw i64 %i.t, %i.u                   ; 4 uses
  %i.x = sub i64 9223372036854775807, %i.u
  %i.y = icmp ult i64 %i.x, %i.w
  br i1 %i.y, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #22
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %bb.k
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.z = icmp eq ptr %i.q, %i.a                   ; 2 uses
  br i1 %i.z, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.aa = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = select i1 %i.z, i64 15, i64 %i.ab
  %.not.i.i.i.i = icmp ugt i64 %i.t, %i.ac
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u, i64 noundef 0, ptr noundef null, i64 noundef %i.w)
          to label %.noexc9 unwind label %bb.q

.noexc9:                                          ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %.noexc9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ad = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %.noexc9 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.w, 1
  br i1 %cond.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i8 0, ptr %i.ae, align 1, !tbaa !14
  br label %.sink.split.i.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 %i.w, i1 false)
  br label %.sink.split.i.i

bb.p:                                             ; preds = %bb.i
  %i.af = icmp ult i64 %i.t, %i.u
  br i1 %i.af, label %.sink.split.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

.sink.split.i.i:                                  ; preds = %bb.p, %bb.o, %bb.n
  store i64 %i.t, ptr %i.k, align 8, !tbaa !11
  %i.ag = load ptr, ptr %0, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.t
  store i8 0, ptr %i.ah, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.q:                                             ; preds = %bb.m, %bb.k, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.al = load i64, ptr %i.a, align 8, !tbaa !14
  %i.am = add i64 %i.al, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %.sink.split.i.i, %bb.p, %bb.g
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ai
}

declare ptr @uriUnescapeInPlaceA(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util13UriEncodeHostB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.not = icmp eq i64 %1, 0
  br i1 %.not.i.i.not, label %._crit_edge.i.i.i.i.thread, label %.lr.ph.i.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  br label %bb.q

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.c = ptrtoint ptr %i.b to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %1, %.lr.ph.i.i ], [ %i.h, %bb.b ]
  %.02132.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.f, %bb.b ]
  %i.d = tail call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef 58, i64 noundef %.033.i.i) #25 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.d, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %lhsc = load i8, ptr %i.d, align 1
  %i.e = icmp eq i8 %lhsc, 58
  br i1 %i.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.c, %i.g                       ; 2 uses
  %.not25.i.i = icmp eq i64 %i.h, 0
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !18

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.i, %i.j
end_hunk_0
begin_hunk_1_@_ZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !14
  %i.c = and i8 %i.b, -33
  %i.d = add i8 %i.c, -65
  %i.e = icmp ult i8 %i.d, 26
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 4 uses
  %i.h = ptrtoint ptr %i.g to i64
  %gepdiff = add nsw i64 %0, -1                   ; 2 uses
  %i.i = ashr i64 %gepdiff, 2                     ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  %i.k = and i64 %gepdiff, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.f, i64 %i.k
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i
  %.068.i.i.i.i = phi i64 [ %i.af, %bb.g ], [ %i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02967.i.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.f, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i = load i8, ptr %.02967.i.i.i.i, align 1, !tbaa !14 ; 3 uses
  %i.l = and i8 %.029.val32.i.i.i.i, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %.029.val32.i.i.i.i, -48
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.o, 10
  %or.cond14.i.i.i.i.i.i = or i1 %or.cond.i.i.i.i.i.i, %i.n
  br i1 %or.cond14.i.i.i.i.i.i, label %bb.d, label %switch.early.test.i.i.i.i.i.i

switch.early.test.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i
  switch i8 %.029.val32.i.i.i.i, label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit" [
    i8 45, label %bb.d
    i8 43, label %bb.d
    i8 46, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 1
  %.val31.i.i.i.i = load i8, ptr %i.p, align 1, !tbaa !14 ; 3 uses
  %i.q = and i8 %.val31.i.i.i.i, -33
  %i.r = add i8 %i.q, -65
  %i.s = icmp ult i8 %i.r, 26
  %i.t = add i8 %.val31.i.i.i.i, -48
  %or.cond.i.i33.i.i.i.i = icmp ult i8 %i.t, 10
  %or.cond14.i.i34.i.i.i.i = or i1 %or.cond.i.i33.i.i.i.i, %i.s
  br i1 %or.cond14.i.i34.i.i.i.i, label %bb.e, label %switch.early.test.i.i35.i.i.i.i

switch.early.test.i.i35.i.i.i.i:                  ; preds = %bb.d
  switch i8 %.val31.i.i.i.i, label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit" [
    i8 45, label %bb.e
    i8 43, label %bb.e
    i8 46, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test.i.i35.i.i.i.i, %switch.early.test.i.i35.i.i.i.i, %switch.early.test.i.i35.i.i.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 2
  %.val30.i.i.i.i = load i8, ptr %i.u, align 1, !tbaa !14 ; 3 uses
  %i.v = and i8 %.val30.i.i.i.i, -33
  %i.w = add i8 %i.v, -65
  %i.x = icmp ult i8 %i.w, 26
  %i.y = add i8 %.val30.i.i.i.i, -48
  %or.cond.i.i37.i.i.i.i = icmp ult i8 %i.y, 10
  %or.cond14.i.i38.i.i.i.i = or i1 %or.cond.i.i37.i.i.i.i, %i.x
  br i1 %or.cond14.i.i38.i.i.i.i, label %bb.f, label %switch.early.test.i.i39.i.i.i.i

switch.early.test.i.i39.i.i.i.i:                  ; preds = %bb.e
  switch i8 %.val30.i.i.i.i, label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit20" [
    i8 45, label %bb.f
    i8 43, label %bb.f
    i8 46, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test.i.i39.i.i.i.i, %switch.early.test.i.i39.i.i.i.i, %switch.early.test.i.i39.i.i.i.i, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 3
  %.val.i.i.i.i = load i8, ptr %i.z, align 1, !tbaa !14 ; 3 uses
  %i.aa = and i8 %.val.i.i.i.i, -33
  %i.ab = add i8 %i.aa, -65
  %i.ac = icmp ult i8 %i.ab, 26
  %i.ad = add i8 %.val.i.i.i.i, -48
  %or.cond.i.i41.i.i.i.i = icmp ult i8 %i.ad, 10
  %or.cond14.i.i42.i.i.i.i = or i1 %or.cond.i.i41.i.i.i.i, %i.ac
  br i1 %or.cond14.i.i42.i.i.i.i, label %bb.g, label %switch.early.test.i.i43.i.i.i.i

switch.early.test.i.i43.i.i.i.i:                  ; preds = %bb.f
  switch i8 %.val.i.i.i.i, label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit22" [
    i8 45, label %bb.g
    i8 43, label %bb.g
    i8 46, label %bb.g
  ]

bb.g:                                             ; preds = %switch.early.test.i.i43.i.i.i.i, %switch.early.test.i.i43.i.i.i.i, %switch.early.test.i.i43.i.i.i.i, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 4
  %i.af = add nsw i64 %.068.i.i.i.i, -1
  %i.ag = icmp sgt i64 %.068.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !20

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.c
  %.029.lcssa.i.i.i.i = phi ptr [ %i.f, %bb.c ], [ %scevgep.i.i.i.i, %bb.g ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i to i64
  %i.ah = sub i64 %i.h, %.pre-phi.i.i.i.i
  switch i64 %i.ah, label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit" [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !14 ; 3 uses
  %i.ai = and i8 %.029.val.i.i.i.i, -33
  %i.aj = add i8 %i.ai, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = add i8 %.029.val.i.i.i.i, -48
  %or.cond.i.i45.i.i.i.i = icmp ult i8 %i.al, 10
  %or.cond14.i.i46.i.i.i.i = or i1 %or.cond.i.i45.i.i.i.i, %i.ak
  br i1 %or.cond14.i.i46.i.i.i.i, label %bb.i, label %switch.early.test.i.i47.i.i.i.i

switch.early.test.i.i47.i.i.i.i:                  ; preds = %bb.h
  switch i8 %.029.val.i.i.i.i, label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit" [
    i8 45, label %bb.i
    i8 43, label %bb.i
    i8 46, label %bb.i
  ]

bb.i:                                             ; preds = %switch.early.test.i.i47.i.i.i.i, %switch.early.test.i.i47.i.i.i.i, %switch.early.test.i.i47.i.i.i.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.am, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !14 ; 3 uses
  %i.an = and i8 %.1.val.i.i.i.i, -33
  %i.ao = add i8 %i.an, -65
  %i.ap = icmp ult i8 %i.ao, 26
  %i.aq = add i8 %.1.val.i.i.i.i, -48
  %or.cond.i.i49.i.i.i.i = icmp ult i8 %i.aq, 10
  %or.cond14.i.i50.i.i.i.i = or i1 %or.cond.i.i49.i.i.i.i, %i.ap
  br i1 %or.cond14.i.i50.i.i.i.i, label %bb.k, label %switch.early.test.i.i51.i.i.i.i

switch.early.test.i.i51.i.i.i.i:                  ; preds = %bb.j
  switch i8 %.1.val.i.i.i.i, label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit" [
    i8 45, label %bb.k
    i8 43, label %bb.k
    i8 46, label %bb.k
  ]

bb.k:                                             ; preds = %switch.early.test.i.i51.i.i.i.i, %switch.early.test.i.i51.i.i.i.i, %switch.early.test.i.i51.i.i.i.i, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.ar, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !14 ; 3 uses
  %i.as = and i8 %.2.val.i.i.i.i, -33
  %i.at = add i8 %i.as, -65
  %i.au = icmp ult i8 %i.at, 26
  %i.av = add i8 %.2.val.i.i.i.i, -48
  %or.cond.i.i53.i.i.i.i = icmp ult i8 %i.av, 10
  %or.cond14.i.i54.i.i.i.i = or i1 %or.cond.i.i53.i.i.i.i, %i.au
  br i1 %or.cond14.i.i54.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclIPKcEEbT_.exit56.thread.i.i.i.i", label %switch.early.test.i.i55.i.i.i.i

switch.early.test.i.i55.i.i.i.i:                  ; preds = %bb.l
  switch i8 %.2.val.i.i.i.i, label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit" [
    i8 45, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclIPKcEEbT_.exit56.thread.i.i.i.i"
    i8 43, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclIPKcEEbT_.exit56.thread.i.i.i.i"
    i8 46, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclIPKcEEbT_.exit56.thread.i.i.i.i"
  ]

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclIPKcEEbT_.exit56.thread.i.i.i.i": ; preds = %switch.early.test.i.i55.i.i.i.i, %switch.early.test.i.i55.i.i.i.i, %switch.early.test.i.i55.i.i.i.i, %bb.l
  br label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit"

"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit": ; preds = %switch.early.test.i.i35.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 1
  br label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit"

"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit20": ; preds = %switch.early.test.i.i39.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 2
  br label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit"

"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit22": ; preds = %switch.early.test.i.i43.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 3
  br label %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit"

"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit": ; preds = %switch.early.test.i.i.i.i.i.i, %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit20", %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit22", %._crit_edge.i.i.i.i, %switch.early.test.i.i47.i.i.i.i, %switch.early.test.i.i51.i.i.i.i, %switch.early.test.i.i55.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclIPKcEEbT_.exit56.thread.i.i.i.i"
  %.028.i.i.i.i = phi ptr [ %.029.lcssa.i.i.i.i, %switch.early.test.i.i47.i.i.i.i ], [ %.1.i.i.i.i, %switch.early.test.i.i51.i.i.i.i ], [ %i.g, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclIPKcEEbT_.exit56.thread.i.i.i.i" ], [ %i.g, %._crit_edge.i.i.i.i ], [ %.2.i.i.i.i, %switch.early.test.i.i55.i.i.i.i ], [ %i.ay, %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit22" ], [ %i.aw, %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit" ], [ %i.ax, %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit.loopexit.split.loop.exit20" ], [ %.02967.i.i.i.i, %switch.early.test.i.i.i.i.i.i ]
  %i.az = icmp eq ptr %i.g, %.028.i.i.i.i
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit"
  %.0 = phi i1 [ false, %bb.a ], [ %i.az, %"_ZSt6all_ofIPKcZN5arrow4util16IsValidUriSchemeESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EbT_S9_T0_.exit" ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util3UriC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #23 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 0, ptr %i.e, align 8, !tbaa !11
  store i8 0, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i32 -1, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(250) %i.a, i8 0, i64 160, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow4util3UriD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow4util3Uri4ImplESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util3Uri4ImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util3Uri4ImplEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZN5arrow4util3Uri4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(250) dereferenceable(250) %i.a) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 256) #24
  br label %_ZNSt10unique_ptrIN5arrow4util3Uri4ImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util3Uri4ImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow4util3Uri4ImplEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow4util3UriC2EOS1_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !40
  store i64 %i.a, ptr %0, align 8, !tbaa !40
  store ptr null, ptr %1, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util3UriaSEOS1_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40
  store ptr null, ptr %1, align 8, !tbaa !40
  %i.b = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow4util3Uri4ImplESt14default_deleteIS3_EEaSEOS6_.exit, label %_ZNKSt14default_deleteIN5arrow4util3Uri4ImplEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util3Uri4ImplEEclEPS3_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN5arrow4util3Uri4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(250) dereferenceable(250) %i.b) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 256) #24
  br label %_ZNSt10unique_ptrIN5arrow4util3Uri4ImplESt14default_deleteIS3_EEaSEOS6_.exit

_ZNSt10unique_ptrIN5arrow4util3Uri4ImplESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow4util3Uri4ImplEEclEPS3_.exit.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri6schemeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.c = icmp eq ptr %.val, null                  ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e
  %.sroa.3.0.i.i = select i1 %i.c, ptr @.str.2, ptr %.val ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.c, i64 0, i64 %i.f ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !7, !alias.scope !43
  %i.h = icmp ugt i64 %.sroa.0.0.i.i, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %.sroa.0.0.i.i, 0
  br i1 %i.i, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.0.0.i.i, 1            ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !17

.noexc9.i.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !16, !alias.scope !43
  store i64 %.sroa.0.0.i.i, ptr %i.g, align 8, !tbaa !14, !alias.scope !43
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  switch i64 %.sroa.0.0.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %.sroa.3.0.i.i, align 1, !tbaa !14, !noalias !43
  store i8 %i.n, ptr %i.m, align 1, !tbaa !14
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %.sroa.3.0.i.i, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.o, align 8, !tbaa !11, !alias.scope !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i
  store i8 0, ptr %i.p, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow4util3Uri14is_file_schemeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.c = load i8, ptr %i.b, align 8, !tbaa !46, !range !47, !noundef !48
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri4hostB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.c = getelementptr i8, ptr %i.a, i64 40
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %.sroa.3.0.i = select i1 %i.d, ptr @.str.2, ptr %.val
  %.sroa.0.0.i = select i1 %i.d, i64 0, i64 %i.g
  tail call void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0.i, ptr nonnull %.sroa.3.0.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow4util3Uri8has_hostEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.c = icmp ne ptr %.val, null
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri9port_textB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.c = getelementptr i8, ptr %i.a, i64 88
  %.val1 = load ptr, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %.sroa.3.0.i.i = select i1 %i.d, ptr @.str.2, ptr %.val ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.d, i64 0, i64 %i.g ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !7, !alias.scope !49
  %i.i = icmp ugt i64 %.sroa.0.0.i.i, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %.sroa.0.0.i.i, 0
  br i1 %i.j, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.0.0.i.i, 1            ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !17

.noexc9.i.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #23 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !16, !alias.scope !49
  store i64 %.sroa.0.0.i.i, ptr %i.h, align 8, !tbaa !14, !alias.scope !49
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.a
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  switch i64 %.sroa.0.0.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = load i8, ptr %.sroa.3.0.i.i, align 1, !tbaa !14, !noalias !49
  store i8 %i.o, ptr %i.n, align 1, !tbaa !14
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.sroa.3.0.i.i, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.p, align 8, !tbaa !11, !alias.scope !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i.i
  store i8 0, ptr %i.q, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5arrow4util3Uri4portEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri8usernameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 5 uses
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val3 = load ptr, ptr %i.c, align 8
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not1112 = icmp eq i64 %i.g, 0
  %.not11 = select i1 %i.d, i1 true, i1 %.not1112
  br i1 %.not11, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a
  %i.h = tail call ptr @memchr(ptr noundef nonnull %.val, i32 noundef 58, i64 noundef %i.g) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.val to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  %or.cond = or i1 %.not.i.i, %.not
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.k)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.g, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.sroa.speculated.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0.i = select i1 %i.d, ptr @.str.2, ptr %.val
  tail call void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0, ptr nonnull %.sroa.3.0.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri8passwordB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 6 uses
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val4 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = icmp eq ptr %.val, null
  %i.e = ptrtoint ptr %.val4 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not13 = icmp eq ptr %.val4, %.val
  %.not = select i1 %i.d, i1 true, i1 %.not13
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a
  %i.h = tail call ptr @memchr(ptr noundef nonnull %.val, i32 noundef 58, i64 noundef %i.g) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.val to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  %or.cond = or i1 %.not.i.i, %i.l
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.m, align 8, !tbaa !14
  br label %bb.d

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.o = add nuw i64 %i.k, 1                      ; 3 uses
  %.not14 = icmp ult i64 %i.k, %i.g
  br i1 %.not14, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i64 noundef %i.o, i64 noundef %i.g) #22
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.b
  %i.p = sub nuw i64 %i.g, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  tail call void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %i.p, ptr nonnull %i.q)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri4pathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 26 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52, !range !47, !noundef !48
  %i.e = trunc nuw i8 %i.d to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  br i1 %i.e, label %bb.b, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !53   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.sroa.2.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.peel.pre = load ptr, ptr %.sroa.2.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !54
  %.sroa.0.0.copyload.peel.pre = load i64, ptr %i.i, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %.sroa.0.0.copyload.peel.pre, ptr %.sroa.2.0.copyload.peel.pre)
          to label %bb.d unwind label %.loopexit.split-lp28

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %i.p = load ptr, ptr %3, align 8, !tbaa !16
  %i.q = load i64, ptr %i.n, align 8, !tbaa !11
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.p, i64 noundef %i.q)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp33 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.d
  %i.s = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.u = load i64, ptr %i.o, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62, !noalias !66 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67, !noalias !66 ; 2 uses
  %i.ad = icmp ugt ptr %i.aa, %i.ac
  %.08.i9.i.i = select i1 %i.ad, ptr %i.aa, ptr %i.ac ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68, !noalias !66
  %i.ah = ptrtoint ptr %.08.i9.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !11, !noalias !66
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !16, !noalias !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !14, !noalias !66
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !7, !alias.scope !66
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !16, !noalias !66 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11, !noalias !66 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !16, !alias.scope !66
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !14, !noalias !66
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !14, !alias.scope !66
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11, !noalias !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.ax = phi i64 [ %i.at, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !11, !alias.scope !66
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !16, !noalias !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ay, i8 0, i64 9, i1 false), !noalias !66
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull %i.aq, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !66 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ao
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.bd = load i64, ptr %i.ao, align 8, !tbaa !14, !alias.scope !66
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #24
  br label %.body

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.021.024 = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 3 uses
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload = load i64, ptr %.sroa.021.024, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.024, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !54
  invoke void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.h unwind label %.loopexit27

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.bg = load ptr, ptr %3, align 8, !tbaa !16
  %i.bh = load i64, ptr %i.n, align 8, !tbaa !11
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit32 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.h
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.o
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bl = load i64, ptr %i.o, align 8, !tbaa !14
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.021.024, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.k
  br i1 %i.bo, label %._crit_edge, label %.peel.next, !llvm.loop !69

.loopexit27:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit.split-lp28:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit32:                                      ; preds = %bb.h
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp33:                             ; preds = %bb.d
  %lpad.loopexit.split-lp35 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp33, %.loopexit32
  %lpad.phi36 = phi { ptr, i32 } [ %lpad.loopexit34, %.loopexit32 ], [ %lpad.loopexit.split-lp35, %.loopexit.split-lp33 ] ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.o
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.i
  %i.br = load i64, ptr %i.o, align 8, !tbaa !14
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.i, %.loopexit27, %.loopexit.split-lp28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %.pn = phi { ptr, i32 } [ %lpad.phi36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp28 ], [ %lpad.loopexit29, %.loopexit27 ], [ %lpad.phi36, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bt = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bt, ptr %2, align 8, !tbaa !71
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %2, i64 %i.bw
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !71
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.y, align 8, !tbaa !71
  %i.ca = load ptr, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.aq
  br i1 %i.cb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cc = load i64, ptr %i.aq, align 8, !tbaa !14
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.y, align 8, !tbaa !71
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #25
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cf, ptr %2, align 8, !tbaa !71
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %2, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !71
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %lpad.loopexit, %bb.g ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ba, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri12query_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.c = getelementptr i8, ptr %i.a, i64 120
  %.val1 = load ptr, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %.sroa.3.0.i.i = select i1 %i.d, ptr @.str.2, ptr %.val ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.d, i64 0, i64 %i.g ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !7, !alias.scope !75
  %i.i = icmp ugt i64 %.sroa.0.0.i.i, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %.sroa.0.0.i.i, 0
  br i1 %i.j, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.0.0.i.i, 1            ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !17

.noexc9.i.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #23 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !16, !alias.scope !75
  store i64 %.sroa.0.0.i.i, ptr %i.h, align 8, !tbaa !14, !alias.scope !75
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.a
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  switch i64 %.sroa.0.0.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = load i8, ptr %.sroa.3.0.i.i, align 1, !tbaa !14, !noalias !75
  store i8 %i.o, ptr %i.n, align 1, !tbaa !14
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.sroa.3.0.i.i, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.p, align 8, !tbaa !11, !alias.scope !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i.i
  store i8 0, ptr %i.q, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri11query_itemsB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::vector.13", align 16   ; 17 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %_ZNSt10unique_ptrI19UriQueryListStructAPFvPS0_EED2Ev.exit28

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = invoke i32 @uriDissectQueryMallocA(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef %i.h)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.j = load ptr, ptr %1, align 8, !tbaa !40, !noalias !79 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !42, !noalias !79 ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 120
  %.val1.i = load ptr, ptr %i.l, align 8, !noalias !79
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.m = icmp eq ptr %.val.i, null                ; 2 uses
  %i.n = ptrtoint ptr %.val1.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %.sroa.3.0.i.i.i = select i1 %i.m, ptr @.str.2, ptr %.val.i ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.m, i64 0, i64 %i.p ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !7, !alias.scope !85
  %i.r = icmp ugt i64 %.sroa.0.0.i.i.i, 15
  br i1 %i.r, label %bb.f, label %._crit_edge.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp slt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %bb.g

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw i64 %.sroa.0.0.i.i.i, 1          ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.noexc9.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !17

.noexc9.i.i.i.i.i:                                ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc13 unwind label %bb.p

.noexc13:                                         ; preds = %.noexc9.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #23
          to label %.noexc14 unwind label %bb.p   ; 2 uses

.noexc14:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.v, ptr %5, align 8, !tbaa !16, !alias.scope !85
  store i64 %.sroa.0.0.i.i.i, ptr %i.q, align 8, !tbaa !14, !alias.scope !85
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc14, %bb.e
  %i.w = phi ptr [ %i.v, %.noexc14 ], [ %i.q, %bb.e ] ; 3 uses
  switch i64 %.sroa.0.0.i.i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.x = load i8, ptr %.sroa.3.0.i.i.i, align 1, !tbaa !14, !noalias !82
  store i8 %i.x, ptr %i.w, align 1, !tbaa !14
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %.sroa.3.0.i.i.i, i64 %.sroa.0.0.i.i.i, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.0.0.i.i.i, ptr %i.y, align 8, !tbaa !11, !alias.scope !85
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.0.i.i.i
  store i8 0, ptr %i.z, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !86
  invoke void @_ZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(29) @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(2) @.str.5)
          to label %.noexc15 unwind label %bb.q

.noexc15:                                         ; preds = %bb.j
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc15
  %i.aa = load ptr, ptr %2, align 8, !tbaa !16, !noalias !86 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !14, !noalias !86
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.l:                                             ; preds = %.noexc15
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %2, align 8, !tbaa !16, !noalias !86 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.l
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !14, !noalias !86
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !86
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !86
  call void @_ZN5arrow6ResultISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  %i.al = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.m, !prof !94

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !95, !range !47, !noundef !48
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5arrow6StatusD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.m, %bb.n
  %i.ap = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.q
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !14
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrI19UriQueryListStructAPFvPS0_EED2Ev.exit28

bb.o:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI19UriQueryListStructAPFvPS0_EED2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc9.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.q:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ] ; 2 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %.body
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !14
  %i.az = add i64 %i.ay, 1
end_hunk_1
begin_hunk_2_@uriFreeQueryListA

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 144115188075855871
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.d = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 6
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit, label %bb.g

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 6
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !116, !noalias !119
  %i.q = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !16, !alias.scope !119, !noalias !116 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11, !alias.scope !119, !noalias !116 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !alias.scope !121
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %.012.i.i.i, align 8, !tbaa !16, !alias.scope !116, !noalias !119
  %i.x = load i64, ptr %i.r, align 8, !tbaa !14, !alias.scope !119, !noalias !116
  store i64 %i.x, ptr %i.p, align 8, !tbaa !14, !alias.scope !116, !noalias !119
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !11, !alias.scope !119, !noalias !116
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.y = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !11, !alias.scope !116, !noalias !119
  store ptr %i.r, ptr %.0911.i.i.i, align 8, !tbaa !16, !alias.scope !119, !noalias !116
  store i64 0, ptr %i.z, align 8, !tbaa !11, !alias.scope !119, !noalias !116
  store i8 0, ptr %i.r, align 8, !tbaa !14, !alias.scope !119, !noalias !116
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !7, !alias.scope !116, !noalias !119
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !16, !alias.scope !119, !noalias !116 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11, !alias.scope !119, !noalias !116 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !121
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !16, !alias.scope !116, !noalias !119
  %i.al = load i64, ptr %i.af, align 8, !tbaa !14, !alias.scope !119, !noalias !116
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !14, !alias.scope !116, !noalias !119
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !11, !alias.scope !119, !noalias !116
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.e
  %i.am = phi i64 [ %i.ai, %bb.e ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !11, !alias.scope !116, !noalias !119
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !16, !alias.scope !119, !noalias !116
  store i64 0, ptr %i.an, align 8, !tbaa !11, !alias.scope !119, !noalias !116
  store i8 0, ptr %i.af, align 8, !tbaa !14, !alias.scope !119, !noalias !116
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %.not.i.i.i = icmp eq ptr %i.ap, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !122

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !114
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit
  %i.ar = phi ptr [ %.pre, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ar, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #24
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !114
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aw, ptr %i.j, align 8, !tbaa !107
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %1
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !14
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !115

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow4util3Uri8ToStringB5cxx11Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util3Uri5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.arrow::internal::StringConverter", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !40     ; 9 uses
  tail call void @uriFreeUriMembersA(ptr noundef nonnull align 8 dereferenceable(250) %i.d)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(250) %i.d, i8 0, i64 160, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !14
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !125

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !124
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store i64 0, ptr %i.p, align 8, !tbaa !11
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !16
  store i8 0, ptr %i.q, align 1, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !126  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127
  %.not.i.i1.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i1.i, label %_ZN5arrow4util3Uri4Impl5ResetEv.exit, label %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i
  store ptr %i.s, ptr %i.t, align 8, !tbaa !127
  br label %_ZN5arrow4util3Uri4Impl5ResetEv.exit

_ZN5arrow4util3Uri4Impl5ResetEv.exit:             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i, %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i32 -1, ptr %i.v, align 8, !tbaa !21
  %i.w = load ptr, ptr %1, align 8, !tbaa !40
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util3Uri4Impl10KeepStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(250) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 4 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.aa = load ptr, ptr %1, align 8, !tbaa !40
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !16  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = call i32 @uriParseSingleUriExA(ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ae, ptr noundef nonnull %i.a)
  switch i32 %i.af, label %bb.e [
    i32 0, label %bb.h
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN5arrow4util3Uri4Impl5ResetEv.exit
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !128
  call void @_ZN5arrow8internal12JoinToStringIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA37_S2_RS2_RA13_S2_lRA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(20) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(37) @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull align 1 dereferenceable(13) @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(2) @.str.9), !noalias !128
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %8, align 8, !tbaa !16, !noalias !128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA37_S2_RS2_RA13_S2_lRA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !14, !noalias !128
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #24
  br label %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA37_S2_RS2_RA13_S2_lRA2_S2_EEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %8, align 8, !tbaa !16, !noalias !128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %bb.d
  %i.au = load i64, ptr %i.as, align 8, !tbaa !14, !noalias !128
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i29 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !128
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA37_S2_RS2_RA13_S2_lRA2_S2_EEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.af

bb.e:                                             ; preds = %_ZN5arrow4util3Uri4Impl5ResetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !133
  call void @_ZN5arrow8internal12JoinToStringIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(20) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.5), !noalias !133
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %7, align 8, !tbaa !16, !noalias !133 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26: ; preds = %bb.f
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !14, !noalias !133
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #24
  br label %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %7, align 8, !tbaa !16, !noalias !133 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.g
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !14, !noalias !133
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !133
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !133
  br label %bb.af

bb.h:                                             ; preds = %_ZN5arrow4util3Uri4Impl5ResetEv.exit
  %i.bh = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %.val24 = load ptr, ptr %i.bh, align 8, !tbaa !42 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %.val25 = load ptr, ptr %i.bi, align 8          ; 2 uses
  %i.bj = icmp eq ptr %.val24, null
  %i.bk = icmp eq ptr %.val25, %.val24
  %i.bl = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %i.bl, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !138
  call void @_ZN5arrow8internal12JoinToStringIJRA24_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(24) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.5), !noalias !138
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %6, align 8, !tbaa !16, !noalias !138 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZN5arrow6Status7InvalidIJRA24_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31: ; preds = %bb.j
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !14, !noalias !138
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #24
  br label %_ZN5arrow6Status7InvalidIJRA24_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit

end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRPKcRA1_SB_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !114
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !107
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !110
  ret void

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.cb

bb.k:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #26
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRPKcRA1_S8_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISD_SE_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #22
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !17

.noexc11.i:                                       ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #23 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !16
  store i64 %i.d, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.a, align 1, !tbaa !14
  store i8 %i.k, ptr %i.j, align 1, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !7
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25 ; 8 uses
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.h, label %._crit_edge.i.i9

bb.h:                                             ; preds = %bb.g
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %.noexc.i12, label %bb.i

.noexc.i12:                                       ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %.noexc.i12
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %.noexc11.i11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i10, !prof !17

.noexc11.i11:                                     ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %.noexc11.i11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i10: ; preds = %bb.i
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #23
          to label %.noexc15 unwind label %bb.m   ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i10
  store ptr %i.u, ptr %i.n, align 8, !tbaa !16
  store i64 %i.p, ptr %i.o, align 8, !tbaa !14
  br label %._crit_edge.i.i9

._crit_edge.i.i9:                                 ; preds = %.noexc15, %bb.g
  %i.v = phi ptr [ %i.u, %.noexc15 ], [ %i.o, %bb.g ] ; 3 uses
  switch i64 %i.p, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i9
  %i.w = load i8, ptr %2, align 1, !tbaa !14
  store i8 %i.w, ptr %i.v, align 1, !tbaa !14
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.p, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.y, align 1, !tbaa !14
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i10, %.noexc11.i11, %.noexc.i12
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !123    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #22
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %3

3:                                                ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %4 = shl nuw nsw i64 %i.l, 5
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %3
  %6 = phi ptr [ %5, %3 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.n ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %8, ptr %7, align 8, !tbaa !7
  %9 = load ptr, ptr %2, align 8, !tbaa !16       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !11     ; 8 uses
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = icmp slt i64 %11, 0
  br i1 %i.o, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i64 %11, 1                       ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !17

.noexc6.i.i:                                      ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc26 unwind label %bb.l

.noexc26:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.r, ptr %7, align 8, !tbaa !16
  store i64 %11, ptr %8, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.s = phi ptr [ %i.r, %.noexc27 ], [ %8, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  switch i64 %11, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %9, align 1, !tbaa !14
  store i8 %i.t, ptr %i.s, align 1, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %9, i64 %11, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %11, ptr %i.u, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %11
  store i8 0, ptr %i.v, align 1, !tbaa !14
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %6, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.g ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !217, !noalias !220
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !16, !alias.scope !220, !noalias !217 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11, !alias.scope !220, !noalias !217 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !222
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !16, !alias.scope !217, !noalias !220
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !14, !alias.scope !220, !noalias !217
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !14, !alias.scope !217, !noalias !220
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !11, !alias.scope !220, !noalias !217
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.h
  %i.af = phi i64 [ %i.ab, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !11, !alias.scope !217, !noalias !220
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !16, !alias.scope !220, !noalias !217
  store i64 0, ptr %i.ag, align 8, !tbaa !11, !alias.scope !220, !noalias !217
  store i8 0, ptr %i.y, align 8, !tbaa !14, !alias.scope !220, !noalias !217
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !223

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %6, %bb.g ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i30, align 8, !tbaa !7, !alias.scope !224, !noalias !227
  %i.am = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !16, !alias.scope !227, !noalias !224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11, !alias.scope !227, !noalias !224 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !229
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.am, ptr %.012.i.i.i30, align 8, !tbaa !16, !alias.scope !224, !noalias !227
  %i.at = load i64, ptr %i.an, align 8, !tbaa !14, !alias.scope !227, !noalias !224
  store i64 %i.at, ptr %i.al, align 8, !tbaa !14, !alias.scope !224, !noalias !227
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !11, !alias.scope !227, !noalias !224
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !11, !alias.scope !224, !noalias !227
  store ptr %i.an, ptr %.0911.i.i.i31, align 8, !tbaa !16, !alias.scope !227, !noalias !224
  store i64 0, ptr %i.av, align 8, !tbaa !11, !alias.scope !227, !noalias !224
  store i8 0, ptr %i.an, align 8, !tbaa !14, !alias.scope !227, !noalias !224
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !223

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !185
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, %bb.j
  store ptr %6, ptr %0, align 8, !tbaa !123
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !124
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !185
  ret void

bb.k:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = tail call ptr @__cxa_begin_catch(ptr %i.bg) #25 ; 0 uses
  %13 = shl nuw nsw i64 %i.l, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %13) #24
  invoke void @__cxa_rethrow() #22
          to label %bb.o unwind label %bb.k

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.be

bb.n:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #26
  unreachable

bb.o:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #23 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #24
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !16
  store i64 %.0, ptr %i.d, align 8, !tbaa !14
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !11
  store i8 0, ptr %i.c, align 1, !tbaa !14
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  store i8 %i.s, ptr %i.q, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !11
  %i.u = load ptr, ptr %0, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !48, !align !240
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(29) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(29) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !48, !align !240
  %i.f = load ptr, ptr %2, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !48, !align !240
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #25
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn9
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 3 uses
end_hunk_3
