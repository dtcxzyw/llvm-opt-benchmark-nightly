Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/usergpuids?download=true
inline.NumInlined: 608
inline.NumDeleted: 260
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20parseUserGpuIdStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call fastcc void @_ZN3gmxL28parseGpuDeviceIdentifierListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %.not44 = icmp eq ptr %i.b, %i.c
  %.not204256 = icmp eq i64 %i.f, 4
  %or.cond = or i1 %.not44, %.not204256
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.b
  %i.h = add i64 %i.i, 1                          ; 2 uses
  %.not2042 = icmp eq i64 %i.h, %i.g
  br i1 %.not2042, label %._crit_edge, label %.lr.ph, !llvm.loop !47

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %i.i = phi i64 [ %i.h, %.loopexit ], [ 1, %bb.a ] ; 3 uses
  %.0194557 = phi i64 [ %i.i, %.loopexit ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0194557
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.l = add i64 %.01843, 1                       ; 2 uses
  %.not20 = icmp eq i64 %i.l, %i.g
  br i1 %.not20, label %.loopexit, label %bb.c, !llvm.loop !48

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01843 = phi i64 [ %i.i, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.01843
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 24) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.q = load ptr, ptr %1, align 8, !tbaa !22
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str, ptr noundef %i.q)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx20parseUserGpuIdStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.r, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 137, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.p, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.p, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #19
          to label %bb.m unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.t, %bb.i ] ; 4 uses
  %.1 = phi i1 [ %.0, %bb.j ], [ true, %bb.i ]    ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #18
  %i.v = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

.thread:                                          ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.thread
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #20
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !26
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.af) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.1, label %bb.l, label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.1, label %bb.l, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.sink.split:                                      ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread
  %.pn.pn.pn27.ph = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn27 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn27.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.p) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn26 = phi { ptr, i32 } [ %.pn.pn.pn27, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #20
  resume { ptr, i32 } %.pn.pn.pn26

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmxL28parseGpuDeviceIdentifierListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %6 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %7 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %8 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %12 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %13 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 44, i64 noundef 0) #18
  %.not = icmp eq i64 %i.b, -1
  %i.c = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not117132 = icmp samesign eq i64 %i.e, 0
  br i1 %.not117132, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.av, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 9 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.086.0133 = phi ptr [ %i.c, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.l = load i8, ptr %.sroa.086.0133, align 1, !tbaa !26
  %14 = sext i8 %i.l to i32                       ; 2 uses
  %15 = add nsw i32 %14, -58
  %isdigit = icmp ult i32 %15, -10
  br i1 %isdigit, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 24) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.n = load i8, ptr %.sroa.086.0133, align 1, !tbaa !26
  %i.o = sext i8 %i.n to i32
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.9, i32 noundef %i.o)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL28parseGpuDeviceIdentifierListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.p, align 8, !tbaa !25
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.1, ptr %.sroa.482.0..sroa_idx, align 8, !tbaa !25
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 90, ptr %.sroa.583.0..sroa_idx, align 8, !tbaa !17
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.m, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.m, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #19
          to label %bb.be unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %.020 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.r, %bb.i ] ; 4 uses
  %.121 = phi i1 [ %.020, %bb.j ], [ true, %bb.i ] ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #18
  %i.t = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

.thread:                                          ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.thread
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !26
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #20
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.ad) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.121, label %bb.l, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.121, label %bb.l, label %.loopexit.split-lp

.sink.split:                                      ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread
  %.pn.pn.pn91.ph = phi { ptr, i32 } [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.w, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn91 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn91.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.m) #18
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.c
  %i.ae = add nsw i32 %14, -48                    ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ae, ptr %i.k, align 4, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.af, ptr %i.g, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.o:                                             ; preds = %bb.m
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = ptrtoint ptr %i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #19
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.ak = ashr exact i64 %i.ai, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 2305843009213693951)
  %i.ao = select i1 %i.am, i64 2305843009213693951, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store i32 %i.ae, ptr %i.ar, align 4, !tbaa !17
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %i.i, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %.noexc51
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ai) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aq, ptr %0, align 8, !tbaa !15
  store ptr %i.at, ptr %i.g, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.n
  %i.av = phi ptr [ %i.aq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.i, %bb.n ]
  %i.aw = phi ptr [ %i.au, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.j, %bb.n ]
  %i.ax = phi ptr [ %i.at, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.af, %bb.n ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.086.0133, i64 1 ; 2 uses
  %.not117 = icmp eq ptr %i.ay, %i.f
  br i1 %.not117, label %.loopexit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.a
  %i.az = load i8, ptr %i.c, align 1, !tbaa !26
  %i.ba = icmp eq i8 %i.az, 44
  br i1 %i.ba, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 24) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @.str.10)
          to label %bb.u unwind label %.thread101

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.v unwind label %.thread105

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %6, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %8, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL28parseGpuDeviceIdentifierListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.bc, align 8, !tbaa !25
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.1, ptr %.sroa.476.0..sroa_idx, align 8, !tbaa !25
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 100, ptr %.sroa.577.0..sroa_idx, align 8, !tbaa !17
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bb, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr %i.bb, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #19
          to label %bb.be unwind label %bb.x

.thread101:                                       ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split200

.thread105:                                       ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #18
  br label %.sink.split200

bb.x:                                             ; preds = %bb.v, %bb.w
  %.017 = phi i1 [ false, %bb.w ], [ true, %bb.v ]
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #18
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.017, label %bb.y, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.sink.split200:                                   ; preds = %.thread101, %.thread105
  %.pn47.pn104.ph = phi { ptr, i32 } [ %i.be, %.thread105 ], [ %i.bd, %.thread101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.y

bb.y:                                             ; preds = %.sink.split200, %bb.x
  %.pn47.pn104 = phi { ptr, i32 } [ %i.bf, %bb.x ], [ %.pn47.pn104.ph, %.sink.split200 ]
  call void @__cxa_free_exception(ptr %i.bb) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 8)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.bg, ptr %10, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !28
  store i8 0, ptr %i.bg, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !28 ; 4 uses
  %i.bk = icmp ugt i64 %i.bj, 2305843009213693951
  br i1 %i.bk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
          to label %.noexc54 unwind label %.loopexit.split-lp120.loopexit.split-lp

.noexc54:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not168 = icmp eq i64 %i.bj, 0
  br i1 %.not168, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.ac
  %i.bm = shl nuw nsw i64 %i.bj, 2
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #21
          to label %.noexc55 unwind label %.loopexit.split-lp120.loopexit.split-lp ; 4 uses

.noexc55:                                         ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %0, align 8, !tbaa !15
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bj ; 2 uses
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !27
  %.pre = load i64, ptr %i.bi, align 8, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %.noexc55, %bb.ac
  %i.bq = phi ptr [ %i.bp, %.noexc55 ], [ null, %bb.ac ] ; 2 uses
  %i.br = phi ptr [ %i.bn, %.noexc55 ], [ null, %bb.ac ] ; 3 uses
  %i.bs = phi i64 [ %.pre, %.noexc55 ], [ 0, %bb.ac ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.bs)
          to label %.preheader unwind label %.loopexit.split-lp120.loopexit.split-lp

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit67.outer

_ZNSt6vectorIiSaIiEE9push_backEOi.exit67.outer:   ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i64, %.preheader
  %.ph = phi ptr [ %i.dl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i64 ], [ %i.br, %.preheader ] ; 9 uses
  %.ph241 = phi ptr [ %i.dp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i64 ], [ %i.bq, %.preheader ] ; 7 uses
  %.ph242 = phi ptr [ %i.do, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i64 ], [ %i.br, %.preheader ]
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit67

_ZNSt6vectorIiSaIiEE9push_backEOi.exit67:         ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit67.outer, %bb.aw
end_hunk_0
