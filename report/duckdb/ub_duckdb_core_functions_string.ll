inline.NumInlined: 11296
inline.NumDeleted: 2901
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN10duckdb_fmt2v68internal23check_pointer_type_specIcNS1_13error_handlerEEEvT_OT0_:bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !328    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.e) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.c, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.g ] ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !328    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.h) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.k = load ptr, ptr %4, align 8, !tbaa !328    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @_ZdlPv(ptr noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal7vformatIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEENS0_17basic_string_viewIS5_EENS0_17basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIS5_EEES5_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.duckdb_fmt::v6::format_handler", align 16 ; 15 uses
  %6 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %6, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !2273
  store i64 500, ptr %i.c, align 8, !tbaa !2275
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !350
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 16, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !2278
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %6, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %3, ptr %i.i, align 8, !tbaa !2276
  %.sroa.2.0..sroa_idx.i11.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i11.i.i.i, align 16, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !3405
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.k, align 16, !tbaa !3408
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr null, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.m, align 16, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 0, ptr %i.n, align 16, !tbaa !3409
  invoke void @_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_(ptr %1, i64 %2, ptr noundef nonnull align 16 dereferenceable(112) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !3405 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.o) #29
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !3405 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEED2Ev.exit14.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.r) #29
  br label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEED2Ev.exit14.i.i

_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEED2Ev.exit14.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !2273, !noalias !3412 ; 3 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !2284, !noalias !3412 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !316, !alias.scope !3412
  %i.w = icmp eq ptr %i.t, null
  %i.x = icmp ne i64 %i.u, 0
  %or.cond.i.i = and i1 %i.w, %i.x
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #27
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !3412
  store i64 %i.u, ptr %i.a, align 8, !tbaa !84, !noalias !3412
  %i.y = icmp ugt i64 %i.u, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.l    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i
  store ptr %i.z, ptr %0, align 8, !tbaa !328, !alias.scope !3412
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !84, !noalias !3412
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !66, !alias.scope !3412
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %bb.g
  %i.ab = phi ptr [ %i.z, %.noexc8 ], [ %i.v, %bb.g ] ; 2 uses
  switch i64 %i.u, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.t, align 1, !tbaa !66
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !66
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !84, !noalias !3412 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !317, !alias.scope !3412
  %i.af = load ptr, ptr %0, align 8, !tbaa !328, !alias.scope !3412
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !3412
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %6, align 8, !tbaa !59
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !2273 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ah) #29, !inline_history !2285
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.l:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEED2Ev.exit14.i.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.q, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEED2Ev.exit14.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %6, align 8, !tbaa !59
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !2273 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.aj, %i.e
  br i1 %.not.i.i9, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.aj) #29, !inline_history !2285
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit10

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit10: ; preds = %.body, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_(ptr %0, i64 %1, ptr noundef nonnull align 16 dereferenceable(112) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_fmt::v6::arg_formatter", align 8 ; 8 uses
  %4 = alloca %"class.duckdb_fmt::v6::arg_formatter", align 8 ; 8 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %6 = alloca %struct.pfs_writer, align 8         ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"struct.duckdb_fmt::v6::internal::id_adapter", align 8 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %2, ptr %6, align 8, !tbaa !3415
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %.not74 = icmp samesign eq i64 %1, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.075 = phi ptr [ %0, %.lr.ph ], [ %i.bs, %bb.ab ] ; 6 uses
  %i.n = load i8, ptr %.075, align 1, !tbaa !66
  %.not45 = icmp eq i8 %i.n, 123
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %.075 to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = call noundef ptr @memchr(ptr noundef nonnull %.075, i32 noundef 123, i64 noundef %i.p) #30 ; 2 uses
  %.not69 = icmp eq ptr %i.q, null
  br i1 %.not69, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  call void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.075, ptr noundef nonnull %i.a)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.068 = phi ptr [ %.075, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  call void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.075, ptr noundef nonnull %.068)
  %i.r = getelementptr inbounds nuw i8, ptr %.068, i64 1 ; 7 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %7) #27
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %7, align 8, !tbaa !328    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.v) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn52 = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ac

bb.j:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.r, align 1, !tbaa !66
  switch i8 %i.y, label %bb.n [
    i8 125, label %bb.k
    i8 123, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.z = call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.e, ptr noundef nonnull align 16 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !363
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !2286 ; 2 uses
  %i.ab = ptrtoint ptr %i.r to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !2286
  %i.af = load i64, ptr %i.f, align 16, !tbaa !2287
  %i.ag = sub i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.f, align 16, !tbaa !2287
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i = load ptr, ptr %i.g, align 8, !tbaa !13
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i, ptr %i.h, align 8, !tbaa !13
  store ptr null, ptr %i.i, align 8, !tbaa !2323
  store ptr %i.c, ptr %i.j, align 8, !tbaa !3417
  store ptr %i.d, ptr %i.k, align 8, !tbaa !3419
  %i.ah = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.ah, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 16 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !2284 ; 2 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !2275
  %i.an = icmp ugt i64 %i.ak, %i.am
  br i1 %i.an, label %bb.m, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !59
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.ak), !inline_history !3422
  br label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit

_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit: ; preds = %bb.l, %bb.m
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !2284
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2273
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  %i.at = load i8, ptr %i.r, align 1, !tbaa !66
  store i8 %i.at, ptr %i.as, align 1, !tbaa !66
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.c, align 16
  br label %bb.ab

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %2, ptr %9, align 8, !tbaa !3415
  %i.au = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.not46 = icmp eq ptr %i.au, %i.a
  br i1 %.not46, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load i8, ptr %i.au, align 1, !tbaa !66
  switch i8 %i.av, label %.thread [
    i8 125, label %bb.p
    i8 58, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !2286 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !2286
  %i.bb = load i64, ptr %i.f, align 16, !tbaa !2287
  %i.bc = sub i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.f, align 16, !tbaa !2287
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload.i.i.i55 = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i56 = load ptr, ptr %i.g, align 8, !tbaa !13
  store ptr %.sroa.0.0.copyload.i.i.i55, ptr %3, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i56, ptr %i.l, align 8, !tbaa !13
  store ptr null, ptr %i.m, align 8, !tbaa !2323
  store ptr %i.c, ptr %14, align 8, !tbaa !3417
  store ptr %i.d, ptr %15, align 8, !tbaa !3419
  %i.bd = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.bd, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.bf = call noundef ptr @_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE15on_format_specsEPKcSF_(ptr noundef nonnull align 16 dereferenceable(112) %2, ptr noundef nonnull %i.be, ptr noundef nonnull %i.a) ; 3 uses
  %i.bg = icmp eq ptr %i.bf, %i.a
  br i1 %i.bg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !66
  %.not48 = icmp eq i8 %i.bh, 125
  br i1 %.not48, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.89, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %10) #27
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.w:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %10, align 8, !tbaa !328  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.bk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.v
  %.pn49 = phi { ptr, i32 } [ %i.bi, %bb.v ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.bj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ac

.thread:                                          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %.thread
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %12) #27
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %.thread
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.aa:                                            ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %12, align 8, !tbaa !328  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.bp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.z ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.bo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p, %bb.r, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit, %bb.k
  %.1 = phi ptr [ %i.au, %bb.p ], [ %i.bf, %bb.r ], [ %i.r, %bb.k ], [ %i.r, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.a
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !3423

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn52.pn

.loopexit:                                        ; preds = %bb.ab, %bb.a, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef 125, i64 noundef %i.d) #30 ; 2 uses
  %.not2326 = icmp eq ptr %i.e, null
  br i1 %.not2326, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %.013.lcssa = phi ptr [ %1, %.preheader ], [ %i.az, %bb.q ] ; 3 uses
  %.lcssa = phi i64 [ %i.d, %.preheader ], [ %i.bb, %bb.q ] ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3424, !nonnull !360, !align !2376
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2284 ; 2 uses
  %i.j = add i64 %i.i, %.lcssa                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2275
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i

bb.b:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !59
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.j), !inline_history !3422
  br label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i

_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i: ; preds = %bb.b, %._crit_edge
  store i64 %i.j, ptr %i.h, align 8, !tbaa !2284
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2273
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i ; 2 uses
  %i.s = icmp eq ptr %2, %.013.lcssa
  br i1 %i.s, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i
  %i.t = icmp sgt i64 %.lcssa, 1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !341

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.013.lcssa, i64 %.lcssa, i1 false)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %.lcssa, 1
  br i1 %i.u, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %.013.lcssa, align 1, !tbaa !66
  store i8 %i.v, ptr %i.r, align 1, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.g, align 16
  br label %bb.r

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %i.w = phi ptr [ %i.bc, %bb.q ], [ %i.e, %.preheader ] ; 2 uses
  %i.x = phi i64 [ %i.ba, %bb.q ], [ %i.c, %.preheader ]
  %.01327 = phi ptr [ %i.az, %bb.q ], [ %1, %.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 4 uses
  %i.z = icmp eq ptr %i.y, %2
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !66
  %.not = icmp eq i8 %i.aa, 125
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !3424, !nonnull !360, !align !2376
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull %3) #27
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.ac

bb.k:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %0, align 8, !tbaa !3424, !nonnull !360, !align !2376
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub i64 %i.ah, %i.x                     ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %i.aj, align 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2284 ; 2 uses
  %i.am = add i64 %i.al, %i.ai                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !2275
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.l, label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %.sroa.0.0.copyload.i.i17, align 8, !tbaa !59
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i17, i64 noundef %i.am), !inline_history !3422
  br label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18

_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18: ; preds = %bb.l, %bb.k
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !2284
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2273
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al ; 2 uses
  %i.av = icmp eq ptr %i.y, %.01327
  br i1 %i.av, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18
  %i.aw = icmp sgt i64 %i.ai, 1
  br i1 %i.aw, label %bb.n, label %bb.o, !prof !341

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.01327, i64 %i.ai, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ax = icmp eq i64 %i.ai, 1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = load i8, ptr %.01327, align 1, !tbaa !66
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18
  store ptr %.sroa.0.0.copyload.i.i17, ptr %i.aj, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 4 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = sub i64 %i.b, %i.ba                     ; 2 uses
  %i.bc = tail call noundef ptr @memchr(ptr noundef nonnull %i.az, i32 noundef 125, i64 noundef %i.bb) #30 ; 2 uses
  %.not23 = icmp eq ptr %i.bc, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %.thread, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %3 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !350
  %i.h = load i8, ptr %0, align 1, !tbaa !66      ; 4 uses
  switch i8 %i.h, label %bb.c [
    i8 125, label %bb.b
    i8 58, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !3426, !nonnull !360, !align !2376 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = tail call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.m, ptr noundef nonnull align 16 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !363
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.n = add i8 %i.h, -48
  %or.cond5 = icmp ult i8 %i.n, 10
  br i1 %or.cond5, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef i32 @_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEiRPKT_SL_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %.noexc.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.p, align 1, !tbaa !66
  switch i8 %i.r, label %.noexc.i [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

.noexc.i:                                         ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 21, ptr %i.f, align 8, !tbaa !84
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %8, align 8, !tbaa !328
  %i.u = load i64, ptr %i.f, align 8, !tbaa !84   ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.t, ptr noundef nonnull align 1 dereferenceable(21) @.str.59, i64 21, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !317
  %i.w = load ptr, ptr %8, align 8, !tbaa !328
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.y = load ptr, ptr %2, align 8, !tbaa !3426, !nonnull !360, !align !2376
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.z, ptr %6, align 8, !tbaa !316
  %i.aa = load ptr, ptr %8, align 8, !tbaa !328   ; 2 uses
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !317 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 %i.ab, ptr %i.e, align 8, !tbaa !84
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc47 unwind label %bb.j   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i.i
  store ptr %i.ad, ptr %6, align 8, !tbaa !328
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !84
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !66
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc47, %.noexc.i
  %i.af = phi ptr [ %i.ad, %.noexc47 ], [ %i.z, %.noexc.i ] ; 2 uses
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !66
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !84  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !317
  %i.aj = load ptr, ptr %6, align 8, !tbaa !328
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull %6) #27
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !328   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.z
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.am) #29
  br label %.body

bb.j:                                             ; preds = %.noexc.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.al, %bb.i ] ; 2 uses
  %i.ap = load ptr, ptr %8, align 8, !tbaa !328   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.s
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.ar = load ptr, ptr %2, align 8, !tbaa !3426, !nonnull !360, !align !2376 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE12check_arg_idEi(ptr noundef nonnull align 8 dereferenceable(20) %i.as, i32 noundef %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i32 noundef %i.o)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.au, ptr noundef nonnull align 16 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !363
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !350
  br label %bb.r

bb.l:                                             ; preds = %bb.c
  %i.aw = and i8 %i.h, -33
  %i.ax = add i8 %i.aw, -65
  %or.cond10.i = icmp ult i8 %i.ax, 26
  %i.ay = icmp eq i8 %i.h, 95
  %i.az = or i1 %i.ay, %or.cond10.i
  br i1 %i.az, label %.critedge7.preheader, label %.noexc.i52

.critedge7.preheader:                             ; preds = %bb.l
  %i.ba = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.ba  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not80 = icmp eq ptr %i.bb, %1
  br i1 %.not80, label %.critedge, label %.lr.ph

.noexc.i52:                                       ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.bc, ptr %9, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 21, ptr %i.d, align 8, !tbaa !84
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.bd, ptr %9, align 8, !tbaa !328
  %i.be = load i64, ptr %i.d, align 8, !tbaa !84  ; 3 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bd, ptr noundef nonnull align 1 dereferenceable(21) @.str.59, i64 21, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !317
  %i.bg = load ptr, ptr %9, align 8, !tbaa !328
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bi = load ptr, ptr %2, align 8, !tbaa !3426, !nonnull !360, !align !2376
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bj, ptr %4, align 8, !tbaa !316
  %i.bk = load ptr, ptr %9, align 8, !tbaa !328   ; 2 uses
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !317 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !84
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i.i60, label %._crit_edge.i.i.i55

.noexc.i.i60:                                     ; preds = %.noexc.i52
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc61 unwind label %bb.q   ; 2 uses

.noexc61:                                         ; preds = %.noexc.i.i60
  store ptr %i.bn, ptr %4, align 8, !tbaa !328
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !84
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !66
  br label %._crit_edge.i.i.i55

._crit_edge.i.i.i55:                              ; preds = %.noexc61, %.noexc.i52
  %i.bp = phi ptr [ %i.bn, %.noexc61 ], [ %i.bj, %.noexc.i52 ] ; 2 uses
  switch i64 %i.bl, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i55
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !66
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56

bb.n:                                             ; preds = %._crit_edge.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bk, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i55
  %i.br = load i64, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !317
  %i.bt = load ptr, ptr %4, align 8, !tbaa !328
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull %4) #27
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  unreachable

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bj
  br i1 %i.bx, label %.body62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bw) #29
  br label %.body62

bb.q:                                             ; preds = %.noexc.i.i60
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body62

.body62:                                          ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57, %bb.q
  %eh.lpad-body63 = phi { ptr, i32 } [ %i.by, %bb.q ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57 ], [ %i.bv, %bb.p ] ; 2 uses
  %i.bz = load ptr, ptr %9, align 8, !tbaa !328   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bc
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

.critedge7:                                       ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.cb, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !3428

.lr.ph:                                           ; preds = %.critedge7.preheader, %.critedge7
  %i.cc = phi ptr [ %i.cb, %.critedge7 ], [ %i.bb, %.critedge7.preheader ] ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !66  ; 3 uses
  %i.ce = and i8 %i.cd, -33
  %i.cf = add i8 %i.ce, -65
  %or.cond10.i71 = icmp ult i8 %i.cf, 26
  %i.cg = icmp eq i8 %i.cd, 95
  %i.ch = or i1 %i.cg, %or.cond10.i71
  %i.ci = add i8 %i.cd, -48
  %i.cj = icmp ult i8 %i.ci, 10
  %or.cond = or i1 %i.cj, %i.ch
  br i1 %or.cond, label %.critedge7, label %..critedge_crit_edge, !llvm.loop !3428

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !3428

.critedge:                                        ; preds = %.critedge7, %..critedge_crit_edge, %.critedge7.preheader
  %.lcssa = phi ptr [ %i.cc, %..critedge_crit_edge ], [ %scevgep, %.critedge7.preheader ], [ %scevgep, %.critedge7 ] ; 2 uses
  %i.ck = ptrtoint ptr %.lcssa to i64
  %i.cl = sub i64 %i.ck, %i.a
  %i.cm = load ptr, ptr %2, align 8, !tbaa !3426, !nonnull !360, !align !2376 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  call void @_ZN10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argENS0_17basic_string_viewIcEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr nonnull %0, i64 %i.cl)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.co, ptr noundef nonnull align 16 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !363
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.k, %bb.b
  %.035 = phi ptr [ %0, %bb.b ], [ %i.av, %bb.k ], [ %.lcssa, %.critedge ]
  ret ptr %.035

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split: ; preds = %.body62, %.body
  %.sink = phi ptr [ %i.ap, %.body ], [ %i.bz, %.body62 ]
  %.pn43.pn.ph = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body63, %.body62 ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split, %.body62, %.body
  %.pn43.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body63, %.body62 ], [ %.pn43.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split ]
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE15on_format_specsEPKcSF_(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 4 ; 11 uses
  %4 = alloca %"class.duckdb_fmt::v6::internal::specs_checker", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.duckdb_fmt::v6::arg_formatter", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2286 ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  store ptr %i.f, ptr %i.a, align 8, !tbaa !2286
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !2287
  %i.i = sub i64 %i.h, %i.e
  store i64 %i.i, ptr %i.g, align 16, !tbaa !2287
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i32, ptr %i.l, align 16, !tbaa !3409 ; 2 uses
  %cond.i = icmp eq i32 %i.m, 16
  br i1 %cond.i, label %bb.b, label %_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 16, !tbaa !13
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13
  tail call void %.sroa.2.0.copyload.i(ptr noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.j), !inline_history !3429
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2286
  br label %bb.h

_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !tbaa !2291
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.o, align 4, !tbaa !2296
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.p, align 4, !tbaa !2297
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i48 32, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.s, align 4, !tbaa !2298
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %3, ptr %4, align 8, !tbaa !2332
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.t, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.j, ptr %.sroa.6.8..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %4, ptr %i.u, align 8, !tbaa !3430
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.m, ptr %i.v, align 8, !tbaa !3432
  %i.w = call noundef ptr @_ZN10duckdb_fmt2v68internal18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 4 uses
  %i.x = icmp eq ptr %i.w, %2
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %i.y = load i8, ptr %i.w, align 1, !tbaa !66
  %.not = icmp eq i8 %i.y, 125
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %5) #27
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %5, align 8, !tbaa !328   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.aa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.z

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !2286 ; 2 uses
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !2286
  %i.ai = load i64, ptr %i.g, align 16, !tbaa !2287
  %i.aj = sub i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.g, align 16, !tbaa !2287
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.j, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i7.i = load ptr, ptr %i.ak, align 8, !tbaa !13
  store ptr %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.0.0.copyload.i7.i, ptr %i.al, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.am, align 8, !tbaa !2323
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.j, ptr %i.an, align 8, !tbaa !3417
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !3419
  %i.ap = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 16 dereferenceable(20) %i.k)
  store ptr %i.ap, ptr %i.j, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ %i.w, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind noalias writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3434)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3440)
  store i32 0, ptr %0, align 16, !tbaa !66, !alias.scope !3443
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.c, align 16, !tbaa !3409, !alias.scope !3443
  %i.d = load i64, ptr %i.b, align 8, !tbaa !3444, !noalias !3443 ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.d to i32
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %bb.c, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66, !noalias !3443
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %0, ptr noundef nonnull align 16 dereferenceable(20) %i.k, i64 20, i1 false), !tbaa.struct !363
  %.pr.pre.i.i = load i32, ptr %i.c, align 16, !tbaa !3409, !alias.scope !3446
  br label %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i

bb.d:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %2, 12
  br i1 %i.l, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = mul nsw i32 %2, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %i.d, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 31                         ; 3 uses
  store i32 %i.q, ptr %i.c, align 16, !tbaa !3409, !alias.scope !3443
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66, !noalias !3443
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !310
  br label %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i

_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i: ; preds = %bb.f, %bb.c
  %.pr.i.i = phi i32 [ %i.q, %bb.f ], [ %.pr.pre.i.i, %bb.c ] ; 2 uses
  %i.w = icmp eq i32 %.pr.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit

bb.g:                                             ; preds = %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i
  %i.x = load ptr, ptr %0, align 16, !tbaa !66, !alias.scope !3446
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.y, i64 20, i1 false)
  %.pr.pre = load i32, ptr %i.c, align 16, !tbaa !3409
  br label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit

_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit: ; preds = %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i, %bb.g
  %.pr = phi i32 [ %.pr.pre, %bb.g ], [ %.pr.i.i, %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i ]
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread, label %bb.ac

_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread: ; preds = %bb.b, %bb.e, %bb.d, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  %i.z = tail call i32 @llvm.abs.i32(i32 %2, i1 false) ; 5 uses
  %i.aa = icmp ult i32 %i.z, 10
  br i1 %i.aa, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread, %bb.m
  %.02230.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.z, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.ai, %bb.m ], [ 1, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread ] ; 4 uses
  %i.ab = icmp ult i32 %.02230.i.i, 100
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ad = icmp ult i32 %.02230.i.i, 1000
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.k:                                             ; preds = %bb.i
  %i.af = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ah = udiv i32 %.02230.i.i, 10000
  %i.ai = add i32 %.02329.i.i, 4                  ; 2 uses
  %i.aj = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.aj, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !2367

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread
  %.0.i.i = phi i32 [ %i.ag, %bb.l ], [ %i.ac, %bb.h ], [ %i.ae, %bb.j ], [ 1, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread ], [ %i.ai, %bb.m ] ; 2 uses
  %.lobit.i = lshr i32 %2, 31                     ; 2 uses
  %i.ak = add i32 %.0.i.i, %.lobit.i
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.am, ptr %7, align 8, !tbaa !316, !alias.scope !3447
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.al, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.an = zext nneg i32 %.lobit.i to i64
  %i.ao = load ptr, ptr %7, align 8, !tbaa !328, !alias.scope !3447
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 4 uses
  %i.aq = icmp ugt i32 %i.z, 99
  br i1 %i.aq, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.ar = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.au, %.lr.ph.i11.i ], [ %i.z, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bf, %.lr.ph.i11.i ], [ %i.ar, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.as = urem i32 %.020.i.i, 100
  %i.at = shl nuw nsw i32 %i.as, 1
  %i.au = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !66, !noalias !3447
  %i.az = zext i32 %.01819.i.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !66
  %i.bb = load i8, ptr %i.aw, align 2, !tbaa !66, !noalias !3447
  %i.bc = add i32 %.01819.i.i, -1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bd
  store i8 %i.bb, ptr %i.be, align 1, !tbaa !66
  %i.bf = add i32 %.01819.i.i, -2
  %i.bg = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bg, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !2368

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i ], [ %i.au, %.lr.ph.i11.i ] ; 3 uses
  %i.bh = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bi = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !66, !noalias !3447
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !66
  %i.bo = load i8, ptr %i.bk, align 2, !tbaa !66, !noalias !3447
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bp = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bq = or disjoint i8 %i.bp, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.p:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #28
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.n, %bb.o
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 16, !tbaa !66
  %i.h = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g)
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 16, !tbaa !66
  %i.j = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %bb.ab

bb.f:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 16, !tbaa !84 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !84 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2323 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEEC2ERS5_S8_RKSA_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 4 dereferenceable(17) %i.l)
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8
  br label %bb.ab

bb.i:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !84
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !84
  %i.m = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 16, !tbaa !66, !range !356, !noundef !360
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %i.o)
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  %i.q = load i8, ptr %1, align 16, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2323
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %0, ptr %6, align 8, !tbaa !2339
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.q, ptr %i.t, align 8, !tbaa !2341
  call void @_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.sroa.0.0.copyload.i.i.i38 = load ptr, ptr %0, align 8
  br label %bb.ab

bb.l:                                             ; preds = %bb.a
  %i.u = load float, ptr %1, align 16, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2323 ; 2 uses
  %.not.i39 = icmp eq ptr %i.w, null
  br i1 %.not.i39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.w, i64 20, i1 false), !tbaa.struct !2343
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %5, align 8, !tbaa !2291
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.x, align 4, !tbaa !2296
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !2297
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i48 32, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.ab, align 8, !tbaa !2298
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit: ; preds = %bb.m, %bb.n
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %i.u, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %5)
  %.sroa.0.0.copyload.i.i.i40 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  %i.ac = load double, ptr %1, align 16, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2323 ; 2 uses
  %.not.i41 = icmp eq ptr %i.ae, null
  br i1 %.not.i41, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.ae, i64 20, i1 false), !tbaa.struct !2343
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

bb.q:                                             ; preds = %bb.o
  store i32 0, ptr %4, align 8, !tbaa !2291
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.af, align 4, !tbaa !2296
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !2297
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i48 32, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.aj, align 8, !tbaa !2298
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit: ; preds = %bb.p, %bb.q
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %i.ac, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %4)
  %.sroa.0.0.copyload.i.i.i42 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ab

bb.r:                                             ; preds = %bb.a
  %i.ak = load x86_fp80, ptr %1, align 16, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2323 ; 2 uses
  %.not.i43 = icmp eq ptr %i.am, null
  br i1 %.not.i43, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.am, i64 20, i1 false), !tbaa.struct !2343
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %3, align 8, !tbaa !2291
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.an, align 4, !tbaa !2296
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ao, align 8, !tbaa !2297
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i48 32, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.ar, align 8, !tbaa !2298
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit: ; preds = %bb.s, %bb.t
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, x86_fp80 noundef %i.ak, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %3)
  %.sroa.0.0.copyload.i.i.i44 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ab

bb.u:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %1, align 16, !tbaa !66   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2323 ; 2 uses
  %.not.i45 = icmp eq ptr %i.au, null
  br i1 %.not.i45, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.as)
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit

bb.w:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !2297
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !2339
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !2412
  call void @_ZN10duckdb_fmt2v68internal24handle_cstring_type_specIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE20cstring_spec_handlerEEEvT_OT0_(i8 noundef signext %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit: ; preds = %bb.v, %bb.w
  %.sroa.0.0.i = load ptr, ptr %0, align 8
  br label %bb.ab

bb.x:                                             ; preds = %bb.a
  %i.ay = load ptr, ptr %1, align 16, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !66
  %i.bb = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ay, i64 %i.ba)
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  %i.bc = load ptr, ptr %1, align 16, !tbaa !66
  %i.bd = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bc)
  br label %bb.ab

bb.z:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 16, !tbaa !13
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3419
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3456, !nonnull !360, !align !625
  tail call void %.sroa.2.0.copyload(ptr noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.bh), !inline_history !3457
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !3456, !nonnull !360, !align !625
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bi, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i46 = load ptr, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit, %bb.k, %bb.j, %bb.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.037.0 = phi ptr [ %.sroa.0.0.copyload.i.i.i46, %bb.aa ], [ %.sroa.0.0.copyload.i.i, %bb.z ], [ %i.bd, %bb.y ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_.exit ], [ %i.m, %bb.i ], [ %i.p, %bb.j ], [ %.sroa.0.0.copyload.i.i.i38, %bb.k ], [ %.sroa.0.0.copyload.i.i.i40, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit ], [ %.sroa.0.0.copyload.i.i.i42, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit ], [ %.sroa.0.0.copyload.i.i.i44, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit ], [ %.sroa.0.0.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit ], [ %i.bb, %bb.x ]
  ret ptr %.sroa.037.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2323 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !2297
  %.not2 = icmp eq i8 %i.d, 0
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i1 %1 to i32
  %i.f = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.e)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = select i1 %1, ptr @.str.76, ptr @.str.77 ; 2 uses
  %i.h = select i1 %1, i64 4, i64 5               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2296 ; 3 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64                ; 5 uses
  %i.m = icmp samesign ugt i64 %i.h, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.n = load i8, ptr %i.g, align 1, !tbaa !66
  %.not14.i.i.i = icmp slt i8 %i.n, -64
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq i32 %i.j, 0
  br i1 %i.o, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.f, %.lr.ph.i.i.i
  %.112.i.i.i = phi i64 [ 2, %bb.f ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = icmp samesign ugt i64 %.112.i.i.i, %i.l
  br i1 %i.p, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.q = add nuw nsw i64 %.112.i.i.i, 1
  %.not11 = icmp samesign ult i64 %.112.i.i.i, %i.l
  br i1 %.not11, label %.lr.ph.i.i.i.3, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.r = add i64 %i.q, 1                          ; 2 uses
  %i.s = icmp ugt i64 %i.r, %i.l                  ; 2 uses
  %brmerge = or i1 %i.s, %1
  %.mux = select i1 %i.s, i64 3, i64 %i.h
  br i1 %brmerge, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.t = add i64 %i.r, 1
  %i.u = icmp ugt i64 %i.t, %i.l
  %spec.select = select i1 %i.u, i64 4, i64 %i.h
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i: ; preds = %.lr.ph.i.i.i.4, %bb.f, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %.mux, %.lr.ph.i.i.i.3 ], [ 0, %bb.f ], [ 1, %.lr.ph.i.i.i.1 ], [ %spec.select, %.lr.ph.i.i.i.4 ], [ 2, %.lr.ph.i.i.i.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.g, ptr %2, align 8, !tbaa !2336
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i, ptr %i.v, align 8, !tbaa !2338
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit

bb.g:                                             ; preds = %bb.a
  %i.w = select i1 %1, ptr @.str.76, ptr @.str.77 ; 2 uses
  %i.x = select i1 %1, i64 4, i64 5               ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !2284 ; 2 uses
  %i.aa = add i64 %i.z, %i.x                      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !2275
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !59
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.aa), !inline_history !3458
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i: ; preds = %bb.h, %bb.g
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !2284
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2273
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.z ; 5 uses
  %i.ak = load i8, ptr %i.w, align 1, !tbaa !66
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !66
  %i.al = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.76, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.77, i64 1) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = load i8, ptr %i.al, align 1, !tbaa !66
  store i8 %i.an, ptr %i.am, align 1, !tbaa !66
  %i.ao = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.76, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.77, i64 2) ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.ao, %i.ag
  br i1 %.not.i.i.i.i.1, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !66
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !66
  %i.ar = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.76, i64 3), ptr getelementptr inbounds nuw (i8, ptr @.str.77, i64 3) ; 2 uses
  %.not.i.i.i.i.2 = icmp eq ptr %i.ar, %i.ag
  br i1 %.not.i.i.i.i.2, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !66
  store i8 %i.at, ptr %i.as, align 1, !tbaa !66
  %i.au = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.76, i64 4), ptr getelementptr inbounds nuw (i8, ptr @.str.77, i64 4) ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %i.au, %i.ag
  br i1 %.not.i.i.i.i.3, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !66
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !66
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit: ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, %bb.c
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %.sroa.0.0.copyload.i.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEiRPKT_SL_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !350    ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !66    ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  br i1 %i.e, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.f, ptr %0, align 8, !tbaa !350
  br label %bb.j

.preheader:                                       ; preds = %bb.a, %bb.d
  %i.g = phi i8 [ %i.o, %bb.d ], [ %i.d, %bb.a ]
  %i.h = phi ptr [ %i.n, %bb.d ], [ %i.c, %bb.a ]
  %.018 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.i = icmp ugt i32 %.018, 214748364
  br i1 %i.i, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.j = mul nuw nsw i32 %.018, 10
  %i.k = sext i8 %i.g to i32
  %i.l = add nsw i32 %i.j, -48
  %i.m = add i32 %i.l, %i.k                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !350
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.n, align 1, !tbaa !66    ; 2 uses
  %i.p = add i8 %i.o, -48
  %or.cond = icmp ult i8 %i.p, 10
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !3459

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.q = icmp slt i32 %i.m, 0
  br i1 %i.q, label %.critedge.thread, label %bb.j

.critedge.thread:                                 ; preds = %.preheader, %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 17, ptr %i.b, align 8, !tbaa !84
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !328
  %i.t = load i64, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.s, ptr noundef nonnull align 1 dereferenceable(17) @.str.60, i64 17, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !317
  %i.v = load ptr, ptr %4, align 8, !tbaa !328
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.x = load ptr, ptr %2, align 8, !tbaa !3426, !nonnull !360, !align !2376
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !316
  %i.z = load ptr, ptr %4, align 8, !tbaa !328    ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !317 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !84
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.critedge.thread
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.i   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i.i
  store ptr %i.ac, ptr %3, align 8, !tbaa !328
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !66
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc22, %.critedge.thread
  %i.ae = phi ptr [ %i.ac, %.noexc22 ], [ %i.y, %.critedge.thread ] ; 2 uses
  switch i64 %i.aa, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.af = load i8, ptr %i.z, align 1, !tbaa !66
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.z, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !317
  %i.ai = load ptr, ptr %3, align 8, !tbaa !328
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull %3) #27
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  unreachable

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.al) #29
  br label %.body

bb.i:                                             ; preds = %.noexc.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ak, %bb.h ]
  %i.ao = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.r
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %.critedge, %bb.b
  %.017 = phi i32 [ 0, %bb.b ], [ %i.m, %.critedge ]
  ret i32 %.017
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argENS0_17basic_string_viewIcEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4initERKNS0_17basic_format_argsIS8_EE(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !3405, !noalias !3460 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3408, !noalias !3460 ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx.i = mul nuw nsw i64 %i.i, 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not14.i = icmp eq i32 %i.h, 0
  br i1 %.not14.i, label %_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i
  %.015.i = phi ptr [ %i.n, %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i ], [ %i.f, %bb.a ] ; 4 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !84, !noalias !3460 ; 3 uses
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.22.0.copyload.i, i64 %3) ; 2 uses
  %i.k = icmp eq i64 %..i.i.i, 0
  br i1 %i.k, label %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i
  %.sroa.01.0.copyload.i = load ptr, ptr %.015.i, align 16, !tbaa !350, !noalias !3460
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload.i, ptr %2, i64 %..i.i.i), !noalias !3460
  %i.l = icmp eq i32 %bcmp.i.i, 0
  %i.m = icmp eq i64 %.sroa.22.0.copyload.i, %3
  %or.cond.i = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.i, label %_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit, label %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i

_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.i: ; preds = %.lr.ph.i
  %.old.i = icmp eq i64 %.sroa.22.0.copyload.i, %3
  br i1 %.old.i, label %_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit, label %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i

_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i: ; preds = %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.015.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.j
  br i1 %.not.i, label %_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit.thread, label %.lr.ph.i, !llvm.loop !3463

_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit.thread: ; preds = %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i, %bb.a
  store i32 0, ptr %0, align 16, !tbaa !66, !alias.scope !3460
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.o, align 16, !tbaa !3409, !alias.scope !3460
  br label %bb.b

_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.p, i64 32, i1 false), !tbaa.struct !363
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 16, !tbaa !3409
  %i.q = icmp eq i32 %.pre, 0
  br i1 %i.q, label %bb.b, label %bb.af

bb.b:                                             ; preds = %_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit.thread, %_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.r, ptr %10, align 8, !tbaa !316, !alias.scope !3464
  %i.s = icmp eq ptr %2, null
  %i.t = icmp ne i64 %3, 0
  %or.cond.i.i = and i1 %i.s, %i.t
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !3464
  store i64 %3, ptr %i.c, align 8, !tbaa !84, !noalias !3464
  %i.u = icmp ugt i64 %3, 15                      ; 2 uses
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %10, align 8, !tbaa !328, !alias.scope !3464
  %i.w = load i64, ptr %i.c, align 8, !tbaa !84, !noalias !3464
  store i64 %i.w, ptr %i.r, align 8, !tbaa !66, !alias.scope !3464
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.x = phi ptr [ %i.v, %.noexc.i.i ], [ %i.r, %bb.c ] ; 2 uses
  switch i64 %3, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN10duckdb_fmt2v617basic_string_viewIcE9to_stringB5cxx11Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %2, align 1, !tbaa !66
  store i8 %i.y, ptr %i.x, align 1, !tbaa !66
  br label %_ZN10duckdb_fmt2v617basic_string_viewIcE9to_stringB5cxx11Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %2, i64 %3, i1 false)
  br label %_ZN10duckdb_fmt2v617basic_string_viewIcE9to_stringB5cxx11Ev.exit

_ZN10duckdb_fmt2v617basic_string_viewIcE9to_stringB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.z = load i64, ptr %i.c, align 8, !tbaa !84, !noalias !3464 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !317, !alias.scope !3464
  %i.ab = load ptr, ptr %10, align 8, !tbaa !328, !alias.scope !3464
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4initERKNS0_17basic_format_argsIS8_EE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.h

.preheader:                                       ; preds = %.loopexit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.g
  %.pre38 = phi i64 [ %i.b, %.preheader ], [ %.pre, %bb.g ] ; 2 uses
  %indvars.iv35 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next36, %bb.g ] ; 3 uses
  %i.u = mul nuw nsw i64 %indvars.iv35, 5
  %i.v = lshr i64 %.pre38, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 31
  switch i32 %i.x, label %bb.g [
    i32 0, label %.critedge
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv35
  %.sroa.06.0.copyload = load i64, ptr %i.z, align 16
  %i.aa = inttoptr i64 %.sroa.06.0.copyload to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !3482
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !3405
  %i.ad = load i32, ptr %i.t, align 8, !tbaa !3408
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.af, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !3483
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ag = load i32, ptr %i.t, align 8, !tbaa !3408
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.t, align 8, !tbaa !3408
  %.pre.pre = load i64, ptr %1, align 8, !tbaa !3444
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pre = phi i64 [ %.pre38, %bb.e ], [ %.pre.pre, %bb.f ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %bb.e, !llvm.loop !3484

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 16, !tbaa !3409
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload = load i64, ptr %i.aj, align 16
  %i.an = inttoptr i64 %.sroa.0.0.copyload to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !3482
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !3405
  %i.aq = load i32, ptr %i.q, align 8, !tbaa !3408
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ap, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.as, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !3483
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.at = load i32, ptr %i.q, align 8, !tbaa !3408
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.q, align 8, !tbaa !3408
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.h, !llvm.loop !3485

.critedge:                                        ; preds = %bb.j, %bb.e, %.preheader30, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !66
  %i.e = icmp eq i8 %i.d, 125
  br i1 %i.e, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN10duckdb_fmt2v68internal11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) ; 12 uses
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1, !tbaa !66
  switch i8 %i.h, label %bb.m [
    i8 43, label %bb.e
    i8 45, label %bb.f
    i8 32, label %bb.g
    i8 44, label %bb.h
    i8 95, label %bb.i
    i8 39, label %bb.j
    i8 116, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE10check_signEv(ptr noundef nonnull align 8 dereferenceable(12) %i.i)
  %i.j = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 9 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, -113
  %i.n = or disjoint i8 %i.m, 32
  store i8 %i.n, ptr %i.k, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE10check_signEv(ptr noundef nonnull align 8 dereferenceable(12) %i.p)
  %i.q = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 9 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = and i8 %i.s, -113
  %i.u = or disjoint i8 %i.t, 16
  store i8 %i.u, ptr %i.r, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE10check_signEv(ptr noundef nonnull align 8 dereferenceable(12) %i.w)
  %i.x = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 9 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, -113
  %i.ab = or disjoint i8 %i.aa, 48
  store i8 %i.ab, ptr %i.y, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i8 44, ptr %i.ae, align 4, !tbaa !2298
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i8 95, ptr %i.ah, align 4, !tbaa !2298
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i8 39, ptr %i.ak, align 4, !tbaa !2298
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !66
  %i.ap = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i8 %i.ao, ptr %i.aq, align 4, !tbaa !2298
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.060 = phi ptr [ %i.f, %bb.d ], [ %i.o, %bb.e ], [ %i.v, %bb.f ], [ %i.ac, %bb.g ], [ %i.af, %bb.h ], [ %i.ai, %bb.i ], [ %i.al, %bb.j ], [ %i.ar, %bb.l ] ; 5 uses
  %i.as = icmp eq ptr %.060, %1
  br i1 %i.as, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %.060, align 1, !tbaa !66  ; 2 uses
  %i.au = icmp eq i8 %i.at, 35
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !3432
  %i.ax = add i32 %i.aw, -1
  %i.ay = icmp ult i32 %i.ax, 12
  br i1 %i.ay, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_hashEv.exit, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3488, !nonnull !360, !align !625
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bb, ptr %4, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 42, ptr %i.b, align 8, !tbaa !84
  %i.bc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !328
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !84  ; 3 uses
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.bc, ptr noundef nonnull align 1 dereferenceable(42) @.str.96, i64 42, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !317
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull %4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc.i.i.i
  %i.bg = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.bb
  br i1 %i.bh, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_hashEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bg) #29
  br label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_hashEv.exit

bb.q:                                             ; preds = %.noexc.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bb
  br i1 %i.bk, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.q, %bb.u
  %.sink = phi ptr [ %i.ch, %bb.u ], [ %i.bj, %bb.q ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cg, %bb.u ], [ %i.bi, %bb.q ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.u, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.cg, %bb.u ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_hashEv.exit: ; preds = %bb.p, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bl = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 9 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = or i8 %i.bn, -128
  store i8 %i.bo, ptr %i.bm, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 4 uses
  %i.bq = icmp eq ptr %i.bp, %1
  br i1 %i.bq, label %bb.ab, label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_hashEv.exit
  %.pr = load i8, ptr %i.bp, align 1, !tbaa !66
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split, %bb.n
  %i.br = phi i8 [ %.pr, %thread-pre-split ], [ %i.at, %bb.n ]
  %.1 = phi ptr [ %i.bp, %thread-pre-split ], [ %.060, %bb.n ] ; 2 uses
  %i.bs = icmp eq i8 %i.br, 48
  br i1 %i.bs, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !3432
  %i.bv = add i32 %i.bu, -1
  %i.bw = icmp ult i32 %i.bv, 12
  br i1 %i.bw, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_zeroEv.exit, label %.noexc.i.i.i74

.noexc.i.i.i74:                                   ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3488, !nonnull !360, !align !625
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.bz, ptr %3, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 42, ptr %i.a, align 8, !tbaa !84
  %i.ca = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.ca, ptr %3, align 8, !tbaa !328
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.ca, ptr noundef nonnull align 1 dereferenceable(42) @.str.96, i64 42, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !317
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  store i8 0, ptr %i.cd, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc.i.i.i74
  %i.ce = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bz
  br i1 %i.cf, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_zeroEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.ce) #29
  br label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_zeroEv.exit

bb.u:                                             ; preds = %.noexc.i.i.i74
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bz
  br i1 %i.ci, label %common.resume, label %common.resume.sink.split

_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_zeroEv.exit: ; preds = %bb.t, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cj = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 9 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = and i8 %i.cl, -16
  %i.cn = or disjoint i8 %i.cm, 4
  store i8 %i.cn, ptr %i.ck, align 1
  %i.co = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  store i8 48, ptr %i.cp, align 2, !tbaa !66
  %i.cq = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_zeroEv.exit, %bb.r
  %.2 = phi ptr [ %i.cq, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_zeroEv.exit ], [ %.1, %bb.r ]
  %i.cs = call noundef ptr @_ZN10duckdb_fmt2v68internal11parse_widthIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef nonnull %.2, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) ; 5 uses
  %i.ct = icmp eq ptr %i.cs, %1
  br i1 %i.ct, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !66
  %i.cv = icmp eq i8 %i.cu, 46
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = call noundef ptr @_ZN10duckdb_fmt2v68internal15parse_precisionIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef nonnull %i.cs, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.3 = phi ptr [ %i.cw, %bb.x ], [ %i.cs, %bb.w ] ; 5 uses
  %.not = icmp eq ptr %.3, %1
  br i1 %.not, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = load i8, ptr %.3, align 1, !tbaa !66    ; 2 uses
  %.not73 = icmp eq i8 %i.cx, 125
  br i1 %.not73, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.cz = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i8 %i.cx, ptr %i.da, align 4, !tbaa !2297
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa, %bb.v, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_zeroEv.exit, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_hashEv.exit, %bb.m, %bb.k, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ], [ %i.am, %bb.k ], [ %.060, %bb.m ], [ %i.bp, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_hashEv.exit ], [ %i.cq, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_zeroEv.exit ], [ %i.cs, %bb.v ], [ %0, %bb.b ], [ %i.cy, %bb.aa ], [ %.3, %bb.z ], [ %.3, %bb.y ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not = icmp ne ptr %i.c, %1                    ; 2 uses
  %i.d = zext i1 %.not to i64                     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66
  switch i8 %i.f, label %.critedge [
    i8 60, label %.loopexit.loopexit
    i8 62, label %.loopexit
    i8 61, label %.loopexit55
    i8 94, label %.loopexit61
  ]

.loopexit55:                                      ; preds = %bb.h, %bb.a
  %indvars.iv.lcssa68 = phi i64 [ %i.d, %bb.a ], [ 0, %bb.h ]
  br label %.loopexit

.loopexit61:                                      ; preds = %bb.h, %bb.a
  %indvars.iv.lcssa69 = phi i64 [ %i.d, %bb.a ], [ 0, %bb.h ]
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.h, %bb.a
  %indvars.iv.lcssa = phi i64 [ %i.d, %bb.a ], [ 0, %bb.h ]
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.h, %.loopexit.loopexit, %.loopexit61, %.loopexit55
  %indvars.iv71 = phi i64 [ %indvars.iv.lcssa68, %.loopexit55 ], [ %indvars.iv.lcssa, %.loopexit.loopexit ], [ %indvars.iv.lcssa69, %.loopexit61 ], [ %i.d, %bb.a ], [ 0, %bb.h ]
  %i.g = phi i1 [ true, %.loopexit55 ], [ false, %.loopexit.loopexit ], [ false, %.loopexit61 ], [ false, %bb.h ], [ false, %bb.a ]
  %.128 = phi i8 [ 4, %.loopexit55 ], [ 1, %.loopexit.loopexit ], [ 3, %.loopexit61 ], [ 2, %bb.h ], [ 2, %bb.a ]
  %i.h = and i64 %indvars.iv71, 4294967295
  %.not38 = icmp eq i64 %i.h, 0
  br i1 %.not38, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.i = load i8, ptr %0, align 1, !tbaa !66      ; 2 uses
  %.not33 = icmp eq i8 %i.i, 123
  br i1 %.not33, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.noexc.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 26, ptr %i.b, align 8, !tbaa !84
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !328
  %i.l = load i64, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.k, ptr noundef nonnull align 1 dereferenceable(26) @.str.95, i64 26, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !317
  %i.n = load ptr, ptr %4, align 8, !tbaa !328
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.p = load ptr, ptr %4, align 8, !tbaa !328    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE8on_alignENS0_5align4typeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #29
  br label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE8on_alignENS0_5align4typeE.exit

bb.d:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !328    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.j
  br i1 %i.t, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.d, %bb.g
  %.sink = phi ptr [ %i.aq, %bb.g ], [ %i.s, %bb.d ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.r, %bb.d ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.r, %bb.d ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.v = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  store i8 %i.i, ptr %i.w, align 2, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit
  %.130 = phi ptr [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %.loopexit ] ; 2 uses
  br i1 %i.g, label %.split3.i, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 9 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, -16
  %i.ab = or disjoint i8 %i.aa, %.128
  store i8 %i.ab, ptr %i.y, align 1
  br label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE8on_alignENS0_5align4typeE.exit

.split3.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !3432
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp ult i32 %i.ae, 12
  br i1 %i.af, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit.i, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %.split3.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !3488, !nonnull !360, !align !625
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 42, ptr %i.a, align 8, !tbaa !84
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !328
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aj, ptr noundef nonnull align 1 dereferenceable(42) @.str.96, i64 42, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !317
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ai
  br i1 %i.ao, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.an) #29
  br label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit.i

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ai
  br i1 %i.ar, label %common.resume, label %common.resume.sink.split

_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.split3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.as = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 9 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = and i8 %i.au, -16
  %i.aw = or disjoint i8 %i.av, 4
  store i8 %i.aw, ptr %i.at, align 1
  br label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE8on_alignENS0_5align4typeE.exit

.critedge:                                        ; preds = %bb.a
  br i1 %.not, label %bb.h, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE8on_alignENS0_5align4typeE.exit

bb.h:                                             ; preds = %.critedge
  %i.ax = load i8, ptr %0, align 1, !tbaa !66
  switch i8 %i.ax, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE8on_alignENS0_5align4typeE.exit [
    i8 60, label %.loopexit.loopexit
    i8 62, label %.loopexit
    i8 61, label %.loopexit55
    i8 94, label %.loopexit61
  ]

_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE8on_alignENS0_5align4typeE.exit: ; preds = %.critedge, %bb.h, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit.i, %.split.i
  %.1 = phi ptr [ %.130, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit.i ], [ %0, %bb.c ], [ %.130, %.split.i ], [ %0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %0, %bb.h ], [ %0, %.critedge ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal11parse_widthIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::width_adapter", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !66      ; 4 uses
  %i.f = add i8 %i.e, -48
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = icmp eq i8 %i.e, 48
  br i1 %i.g, label %bb.c, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.h = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.h
  br label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %.2 = phi ptr [ %i.p, %bb.e ], [ %0, %.preheader.i.preheader ] ; 2 uses
  %i.j = phi i8 [ %i.q, %bb.e ], [ %i.e, %.preheader.i.preheader ]
  %.018.i = phi i32 [ %i.o, %bb.e ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.k = icmp ugt i32 %.018.i, 214748364
  br i1 %i.k, label %.critedge.thread.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = mul nuw nsw i32 %.018.i, 10
  %i.m = zext nneg i8 %i.j to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add nuw i32 %i.n, %i.l                   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 4 uses
  %.not.i = icmp eq ptr %i.p, %1
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.p, align 1, !tbaa !66    ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond.i = icmp ult i8 %i.r, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !3489

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %.lcssa = phi ptr [ %i.p, %bb.e ], [ %scevgep, %bb.d ] ; 2 uses
  %i.s = icmp slt i32 %i.o, 0
  br i1 %i.s, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  %.3 = phi ptr [ %.lcssa, %.critedge.i ], [ %.2, %.preheader.i ] ; 2 uses
  %.126.i = phi i32 [ %i.o, %.critedge.i ], [ -2147483648, %.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 17, ptr %i.d, align 8, !tbaa !84
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !328
  %i.v = load i64, ptr %i.d, align 8, !tbaa !84   ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull align 1 dereferenceable(17) @.str.60, i64 17, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !317
  %i.x = load ptr, ptr %3, align 8, !tbaa !328
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.critedge.thread.i
  %i.z = load ptr, ptr %3, align 8, !tbaa !328    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.t
  br i1 %i.aa, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #29
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

bb.g:                                             ; preds = %.critedge.thread.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.t
  br i1 %i.ad, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.g, %bb.n
  %.sink = phi ptr [ %i.at, %bb.n ], [ %i.ac, %bb.g ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.ab, %bb.g ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.as, %bb.n ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit: ; preds = %bb.f, %bb.c, %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.4 = phi ptr [ %i.i, %bb.c ], [ %.lcssa, %.critedge.i ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.3, %bb.f ]
  %.017.i = phi i32 [ 0, %bb.c ], [ %i.o, %.critedge.i ], [ %.126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.126.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ae = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  store i32 %.017.i, ptr %i.ae, align 4, !tbaa !2291
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.af = icmp eq i8 %i.e, 123
  br i1 %i.af, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not = icmp eq ptr %i.ag, %1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %2, ptr %4, align 8, !tbaa !3490
  %i.ah = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEEEEPKT_SL_SL_OT0_(ptr noundef nonnull %i.ag, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.ag, %bb.i ], [ %i.ah, %bb.j ] ; 5 uses
  %i.ai = icmp eq ptr %.0, %1
  br i1 %i.ai, label %.noexc.i, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_2
begin_hunk_3_@_ZN10duckdb_fmt2v68internal15parse_precisionIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.k = icmp eq i8 %i.h, 48
  br i1 %i.k, label %bb.d, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.c
  %i.l = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.l
  br label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.f
  %.3 = phi ptr [ %i.t, %bb.f ], [ %i.g, %.preheader.i.preheader ] ; 2 uses
  %i.n = phi i8 [ %i.u, %bb.f ], [ %i.h, %.preheader.i.preheader ]
  %.018.i = phi i32 [ %i.s, %bb.f ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.o = icmp ugt i32 %.018.i, 214748364
  br i1 %i.o, label %.critedge.thread.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.p = mul nuw nsw i32 %.018.i, 10
  %i.q = sext i8 %i.n to i32
  %i.r = add nsw i32 %i.q, -48
  %i.s = add i32 %i.r, %i.p                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %.not.i = icmp eq ptr %i.t, %1
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66    ; 2 uses
  %i.v = add i8 %i.u, -48
  %or.cond.i = icmp ult i8 %i.v, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !3489

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.lcssa = phi ptr [ %i.t, %bb.f ], [ %scevgep, %bb.e ] ; 2 uses
  %i.w = icmp slt i32 %i.s, 0
  br i1 %i.w, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  %.4 = phi ptr [ %.lcssa, %.critedge.i ], [ %.3, %.preheader.i ] ; 2 uses
  %.126.i = phi i32 [ %i.s, %.critedge.i ], [ -2147483648, %.preheader.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 17, ptr %i.f, align 8, !tbaa !84
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !328
  %i.z = load i64, ptr %i.f, align 8, !tbaa !84   ; 3 uses
  store i64 %i.z, ptr %i.x, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.y, ptr noundef nonnull align 1 dereferenceable(17) @.str.60, i64 17, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !317
  %i.ab = load ptr, ptr %4, align 8, !tbaa !328
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.critedge.thread.i
  %i.ad = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.x
  br i1 %i.ae, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ad) #29
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

bb.h:                                             ; preds = %.critedge.thread.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.x
  br i1 %i.ah, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.h, %bb.t, %bb.q, %bb.o
  %.sink = phi ptr [ %i.cb, %bb.t ], [ %i.az, %bb.o ], [ %i.bk, %bb.q ], [ %i.ag, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %i.ay, %bb.o ], [ %i.bj, %bb.q ], [ %i.af, %bb.h ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.t, %bb.q, %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.q ], [ %i.ay, %bb.o ], [ %i.af, %bb.h ], [ %i.ca, %bb.t ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit: ; preds = %bb.g, %bb.d, %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.5 = phi ptr [ %i.m, %bb.d ], [ %.lcssa, %.critedge.i ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.4, %bb.g ]
  %.017.i = phi i32 [ 0, %bb.d ], [ %i.s, %.critedge.i ], [ %.126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.126.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ai = load ptr, ptr %2, align 8, !tbaa !3486, !nonnull !360, !align !2350
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %.017.i, ptr %i.aj, align 4, !tbaa !2296
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  %i.ak = icmp eq i8 %i.h, 123
  br i1 %i.ak, label %bb.j, label %.thread52

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %.not27 = icmp eq ptr %i.al, %1
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %2, ptr %5, align 8, !tbaa !3490
  %i.am = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_17precision_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEEEEPKT_SL_SL_OT0_(ptr noundef nonnull %i.al, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi ptr [ %i.al, %bb.j ], [ %i.am, %bb.k ] ; 4 uses
  %i.an = icmp eq ptr %.0, %1
  br i1 %i.an, label %.noexc.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.0, align 1, !tbaa !66
  %.not28 = icmp eq i8 %i.ap, 125
  br i1 %.not28, label %bb.r, label %.noexc.i

.noexc.i:                                         ; preds = %bb.m, %bb.l
  %.1 = phi ptr [ %.0, %bb.l ], [ %i.ao, %bb.m ]  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.aq, ptr %6, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 21, ptr %i.e, align 8, !tbaa !84
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !328
  %i.as = load i64, ptr %i.e, align 8, !tbaa !84  ; 3 uses
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ar, ptr noundef nonnull align 1 dereferenceable(21) @.str.59, i64 21, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !317
  %i.au = load ptr, ptr %6, align 8, !tbaa !328
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %6)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.aw = load ptr, ptr %6, align 8, !tbaa !328   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.aq
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %.noexc.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %6, align 8, !tbaa !328   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aq
  br i1 %i.ba, label %common.resume, label %common.resume.sink.split

.thread52:                                        ; preds = %bb.a, %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bb, ptr %7, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 27, ptr %i.d, align 8, !tbaa !84
  %i.bc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.bc, ptr %7, align 8, !tbaa !328
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !84  ; 3 uses
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.bc, ptr noundef nonnull align 1 dereferenceable(27) @.str.99, i64 27, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !317
  %i.bf = load ptr, ptr %7, align 8, !tbaa !328
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %7)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.thread52
  %i.bh = load ptr, ptr %7, align 8, !tbaa !328   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.bb
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %.thread52
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %7, align 8, !tbaa !328   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bb
  br i1 %i.bl, label %common.resume, label %common.resume.sink.split

bb.r:                                             ; preds = %bb.m, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit
  %.2 = phi ptr [ %.5, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit ], [ %i.ao, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !3432 ; 2 uses
  %i.bo = add i32 %i.bn, -1
  %i.bp = icmp ult i32 %i.bo, 9
  %i.bq = icmp eq i32 %i.bn, 15
  %or.cond.i.i = or i1 %i.bq, %i.bp
  br i1 %or.cond.i.i, label %.noexc.i.i.i, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE13end_precisionEv.exit

.noexc.i.i.i:                                     ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !3488, !nonnull !360, !align !625
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.bt, ptr %3, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 44, ptr %i.c, align 8, !tbaa !84
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 3 uses
  store ptr %i.bu, ptr %3, align 8, !tbaa !328
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !84  ; 3 uses
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.bu, ptr noundef nonnull align 1 dereferenceable(44) @.str.101, i64 44, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !317
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  store i8 0, ptr %i.bx, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull %3)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc.i.i.i
  %i.by = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bt
  br i1 %i.bz, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE13end_precisionEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.by) #29
  br label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE13end_precisionEv.exit

bb.t:                                             ; preds = %.noexc.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bt
  br i1 %i.cc, label %common.resume, label %common.resume.sink.split

_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE13end_precisionEv.exit: ; preds = %bb.s, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE13end_precisionEv.exit
  %.021 = phi ptr [ %.2, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE13end_precisionEv.exit ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.1, %bb.n ], [ %i.g, %bb.p ]
  ret ptr %.021
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !316
  %i.d = load ptr, ptr %1, align 8, !tbaa !328    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !317  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.f, ptr %i.b, align 8, !tbaa !84
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !328
  %i.i = load i64, ptr %i.b, align 8, !tbaa !84
  store i64 %i.i, ptr %i.c, align 8, !tbaa !66
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !66
  store i8 %i.k, ptr %i.j, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !317
  %i.n = load ptr, ptr %4, align 8, !tbaa !328
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !316
  %i.q = load ptr, ptr %4, align 8, !tbaa !328    ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !317  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.r, ptr %i.a, align 8, !tbaa !84
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.t, ptr %3, align 8, !tbaa !328
  %i.u = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.u, ptr %i.p, align 8, !tbaa !66
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = phi ptr [ %i.t, %.noexc ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !66
  store i8 %i.w, ptr %i.v, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !317
  %i.z = load ptr, ptr %3, align 8, !tbaa !328
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %3) #27
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

bb.h:                                             ; preds = %.noexc.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.af = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.af) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE10check_signEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3432 ; 2 uses
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = icmp ult i32 %i.e, 12
  br i1 %i.f, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !3488, !nonnull !360, !align !625
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 42, ptr %i.b, align 8, !tbaa !84
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !328
  %i.j = load i64, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.i, ptr noundef nonnull align 1 dereferenceable(42) @.str.96, i64 42, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !317
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !328    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.m) #29
  br label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split

bb.c:                                             ; preds = %.noexc.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !328    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.c, %bb.f
  %.sink = phi ptr [ %i.ac, %bb.f ], [ %i.p, %bb.c ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.o, %bb.c ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.ab, %bb.f ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pr = load i32, ptr %i.c, align 8, !tbaa !3432 ; 2 uses
  %.pre = add i32 %.pr, -1
  br label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit

_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit: ; preds = %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split, %bb.a
  %.pre-phi = phi i32 [ %.pre, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split ], [ %i.e, %bb.a ]
  %i.r = phi i32 [ %.pr, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.s = icmp ult i32 %.pre-phi, 9
  br i1 %i.s, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit
  switch i32 %i.r, label %.noexc.i [
    i32 2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
    i32 4, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
    i32 9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ]

.noexc.i:                                         ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !3488, !nonnull !360, !align !625
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 41, ptr %i.a, align 8, !tbaa !84
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !328
  %i.w = load i64, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.v, ptr noundef nonnull align 1 dereferenceable(41) @.str.97, i64 41, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !317
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc.i
  %i.z = load ptr, ptr %2, align 8, !tbaa !328    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !328   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.u
  br i1 %i.ad, label %common.resume, label %common.resume.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d, %bb.d, %bb.d, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEEEEPKT_SL_SL_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %3 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %4 = alloca %"class.duckdb_fmt::v6::internal::width_checker", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %8 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %11 = alloca %"class.duckdb_fmt::v6::internal::width_checker", align 8 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %15 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %18 = alloca %"class.duckdb_fmt::v6::internal::width_checker", align 8 ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %22 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !350
  %i.h = load i8, ptr %0, align 1, !tbaa !66      ; 4 uses
  switch i8 %i.h, label %bb.f [
    i8 125, label %bb.b
    i8 58, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !3492, !nonnull !360, !align !625 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3494, !noalias !3496, !nonnull !360, !align !625
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3499, !noalias !3496, !nonnull !360, !align !625
  %i.n = tail call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.m), !noalias !3496
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %22, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %21, ptr noundef nonnull align 16 dereferenceable(32) %22, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store ptr %17, ptr %18, align 8, !tbaa !3500
  %i.o = call noundef i64 @_ZN10duckdb_fmt2v616visit_format_argINS0_8internal13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 16 dereferenceable(20) %21) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.p = icmp ugt i64 %i.o, 2147483647
  br i1 %i.p, label %bb.c, label %_ZN10duckdb_fmt2v68internal13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEclEv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull %19) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %19, align 8, !tbaa !328   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

common.resume:                                    ; preds = %.body67, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52 ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78 ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %eh.lpad-body68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body68, %.body67 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %common.resume

_ZN10duckdb_fmt2v68internal13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEclEv.exit: ; preds = %bb.b
  %i.u = trunc nuw nsw i64 %i.o to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !3486, !nonnull !360, !align !2350
  store i32 %i.u, ptr %i.v, align 4, !tbaa !2291
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !350
  br label %bb.aa

bb.f:                                             ; preds = %bb.a
  %i.x = add i8 %i.h, -48
  %or.cond5 = icmp ult i8 %i.x, 10
  br i1 %or.cond5, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef i32 @_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEEEEiRPKT_SM_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %.noexc.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !66
  switch i8 %i.ab, label %.noexc.i [
    i8 125, label %bb.n
    i8 58, label %bb.n
  ]

.noexc.i:                                         ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.ac, ptr %23, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 21, ptr %i.f, align 8, !tbaa !84
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %23, align 8, !tbaa !328
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !84  ; 3 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ad, ptr noundef nonnull align 1 dereferenceable(21) @.str.59, i64 21, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !317
  %i.ag = load ptr, ptr %23, align 8, !tbaa !328
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.ai = load ptr, ptr %2, align 8, !tbaa !3492, !nonnull !360, !align !625
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.aj, ptr %16, align 8, !tbaa !316
  %i.ak = load ptr, ptr %23, align 8, !tbaa !328  ; 2 uses
  %i.al = load i64, ptr %i.af, align 8, !tbaa !317 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 %i.al, ptr %i.e, align 8, !tbaa !84
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i.i, label %._crit_edge.i.i.i

end_hunk_3
begin_hunk_4_@llvm.ctpop.v2i64
!3217 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIcNS0_18basic_format_specsIcEEE10dec_writerE", !4, i64 0, !4, i64 4}
!3218 = !{!3216, !5, i64 24}
!3219 = !{!3216, !27, i64 32}
!3220 = distinct !{!3220, !19}
!3221 = !{!3222, !27, i64 0}
!3222 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10num_writerEEE", !27, i64 0, !2280, i64 8, !5, i64 24, !27, i64 32, !3223, i64 40}
!3223 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIcNS0_18basic_format_specsIcEEE10num_writerE", !4, i64 0, !4, i64 4, !2432, i64 8, !5, i64 16}
!3224 = !{!3222, !5, i64 24}
!3225 = !{!3222, !27, i64 32}
!3226 = !{!3227, !27, i64 0}
!3227 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEE", !27, i64 0, !2280, i64 8, !5, i64 24, !27, i64 32, !3228, i64 40}
!3228 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerE", !3229, i64 0, !4, i64 8}
!3229 = !{!"p1 _ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIcNS0_18basic_format_specsIcEEEE", !10, i64 0}
!3230 = !{!3227, !5, i64 24}
!3231 = !{!3227, !27, i64 32}
!3232 = !{!3229, !3229, i64 0}
!3233 = !{!3234, !27, i64 0}
!3234 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEE", !27, i64 0, !2280, i64 8, !5, i64 24, !27, i64 32, !3235, i64 40}
!3235 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEE", !4, i64 0, !4, i64 4}
!3236 = !{!3234, !5, i64 24}
!3237 = !{!3234, !27, i64 32}
!3238 = !{!3239, !27, i64 0}
!3239 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEE", !27, i64 0, !2280, i64 8, !5, i64 24, !27, i64 32, !3240, i64 40}
!3240 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEE", !4, i64 0, !4, i64 4}
!3241 = !{!3239, !5, i64 24}
!3242 = !{!3239, !27, i64 32}
!3243 = distinct !{!3243, !19, !743, !744}
!3244 = distinct !{!3244, !19, !743, !744}
!3245 = distinct !{!3245, !1797}
!3246 = distinct !{!3246, !19, !743}
!3247 = !{!3223, !2432, i64 8}
!3248 = !{!3223, !4, i64 0}
!3249 = !{!3223, !4, i64 4}
!3250 = distinct !{!3250, !19, !743, !744}
!3251 = distinct !{!3251, !19, !743, !744}
!3252 = distinct !{!3252, !1797}
!3253 = distinct !{!3253, !19, !743}
!3254 = distinct !{!3254, !19, !743, !744}
!3255 = distinct !{!3255, !19, !743, !744}
!3256 = distinct !{!3256, !1797}
!3257 = distinct !{!3257, !19, !743}
!3258 = distinct !{!3258, !19, !743, !744}
!3259 = distinct !{!3259, !19, !743, !744}
!3260 = distinct !{!3260, !1797}
!3261 = distinct !{!3261, !19, !743}
!3262 = !{!3263, !3264, i64 0}
!3263 = !{!"_ZTSZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIcNS0_18basic_format_specsIcEEE10num_writerclIRPcEEvOT_EUlSD_E_", !3264, i64 0, !2280, i64 8, !2479, i64 24, !140, i64 32}
!3264 = !{!"p1 _ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIcNS0_18basic_format_specsIcEEE10num_writerE", !10, i64 0}
!3265 = !{!3263, !2479, i64 24}
!3266 = !{!3263, !140, i64 32}
!3267 = distinct !{!3267, !19}
!3268 = distinct !{!3268, !19, !743, !744}
!3269 = distinct !{!3269, !19, !743, !744}
!3270 = distinct !{!3270, !1797}
!3271 = distinct !{!3271, !19, !743}
!3272 = !{!3217, !4, i64 0}
!3273 = !{!3217, !4, i64 4}
!3274 = distinct !{!3274, !19, !743, !744}
!3275 = distinct !{!3275, !19, !743, !744}
!3276 = distinct !{!3276, !1797}
!3277 = distinct !{!3277, !19, !743}
!3278 = distinct !{!3278, !19, !743, !744}
!3279 = distinct !{!3279, !19, !743, !744}
!3280 = distinct !{!3280, !1797}
!3281 = distinct !{!3281, !19, !743}
!3282 = distinct !{!3282, !19, !743, !744}
!3283 = distinct !{!3283, !19, !743, !744}
!3284 = distinct !{!3284, !1797}
!3285 = distinct !{!3285, !19, !743}
!3286 = distinct !{!3286, !19, !743, !744}
!3287 = distinct !{!3287, !19, !743, !744}
!3288 = distinct !{!3288, !1797}
!3289 = distinct !{!3289, !19, !743}
!3290 = !{!3228, !3229, i64 0}
!3291 = !{!3228, !4, i64 8}
!3292 = distinct !{!3292, !19, !743, !744}
!3293 = distinct !{!3293, !19, !743, !744}
!3294 = distinct !{!3294, !1797}
!3295 = distinct !{!3295, !19, !743}
!3296 = distinct !{!3296, !19, !743, !744}
!3297 = distinct !{!3297, !19, !743, !744}
!3298 = distinct !{!3298, !1797}
!3299 = distinct !{!3299, !19, !743}
!3300 = distinct !{!3300, !19, !743, !744}
!3301 = distinct !{!3301, !19, !743, !744}
!3302 = distinct !{!3302, !1797}
!3303 = distinct !{!3303, !19, !743}
!3304 = distinct !{!3304, !19, !743, !744}
!3305 = distinct !{!3305, !19, !743, !744}
!3306 = distinct !{!3306, !1797}
!3307 = distinct !{!3307, !19, !743}
!3308 = !{!3235, !4, i64 0}
!3309 = !{!3235, !4, i64 4}
!3310 = distinct !{!3310, !19, !743, !744}
!3311 = distinct !{!3311, !19, !743, !744}
!3312 = distinct !{!3312, !1797}
!3313 = distinct !{!3313, !19, !743}
!3314 = distinct !{!3314, !19, !743, !744}
!3315 = distinct !{!3315, !19, !743, !744}
!3316 = distinct !{!3316, !1797}
!3317 = distinct !{!3317, !19, !743}
!3318 = distinct !{!3318, !19, !743, !744}
!3319 = distinct !{!3319, !19, !743, !744}
!3320 = distinct !{!3320, !1797}
!3321 = distinct !{!3321, !19, !743}
!3322 = distinct !{!3322, !19, !743, !744}
!3323 = distinct !{!3323, !19, !743, !744}
!3324 = distinct !{!3324, !1797}
!3325 = distinct !{!3325, !19, !743}
!3326 = !{!3240, !4, i64 0}
!3327 = !{!3240, !4, i64 4}
!3328 = distinct !{!3328, !19, !743, !744}
!3329 = distinct !{!3329, !19, !743, !744}
!3330 = distinct !{!3330, !1797}
!3331 = distinct !{!3331, !19, !743}
!3332 = distinct !{!3332, !19, !743, !744}
!3333 = distinct !{!3333, !19, !743, !744}
!3334 = distinct !{!3334, !1797}
!3335 = distinct !{!3335, !19, !743}
!3336 = distinct !{!3336, !19, !743, !744}
!3337 = distinct !{!3337, !19, !743, !744}
!3338 = distinct !{!3338, !1797}
!3339 = distinct !{!3339, !19, !743}
!3340 = !{!3341, !2294, i64 0}
!3341 = !{!"_ZTSN10duckdb_fmt2v68internal16nonfinite_writerIcEE", !2294, i64 0, !26, i64 8}
!3342 = !{!3341, !26, i64 8}
!3343 = !{!3344, !26, i64 0}
!3344 = !{!"_ZTSN10duckdb_fmt2v68internal12float_writerIcEE", !26, i64 0, !4, i64 8, !4, i64 12, !27, i64 16, !3345, i64 24, !5, i64 32}
!3345 = !{!"_ZTSN10duckdb_fmt2v68internal11float_specsE", !4, i64 0, !3346, i64 4, !2294, i64 5, !5, i64 6, !355, i64 7, !355, i64 7, !355, i64 7, !355, i64 7, !355, i64 7, !355, i64 7}
!3346 = !{!"_ZTSN10duckdb_fmt2v68internal12float_formatE", !5, i64 0}
!3347 = !{!3344, !4, i64 8}
!3348 = !{!3344, !4, i64 12}
!3349 = !{!3344, !5, i64 32}
!3350 = !{!3344, !27, i64 16}
!3351 = !{!3344, !4, i64 24}
!3352 = distinct !{!3352, !19, !743, !744}
!3353 = distinct !{!3353, !19, !743, !744}
!3354 = distinct !{!3354, !1797}
!3355 = distinct !{!3355, !19, !743}
!3356 = distinct !{!3356, !19, !743, !744}
!3357 = distinct !{!3357, !19, !743, !744}
!3358 = distinct !{!3358, !1797}
!3359 = distinct !{!3359, !19, !743}
!3360 = distinct !{!3360, !19}
!3361 = distinct !{!3361, !19, !743, !744}
!3362 = distinct !{!3362, !19, !743, !744}
!3363 = distinct !{!3363, !1797}
!3364 = distinct !{!3364, !19, !743}
!3365 = distinct !{!3365, !1797}
!3366 = distinct !{!3366, !19}
!3367 = distinct !{!3367, !19, !743, !744}
!3368 = distinct !{!3368, !19, !743, !744}
!3369 = distinct !{!3369, !1797}
!3370 = distinct !{!3370, !19, !743}
!3371 = distinct !{!3371, !19}
!3372 = distinct !{!3372, !19, !743, !744}
!3373 = distinct !{!3373, !19, !743, !744}
!3374 = distinct !{!3374, !1797}
!3375 = distinct !{!3375, !19, !743}
!3376 = distinct !{!3376, !19, !743, !744}
!3377 = distinct !{!3377, !19, !743, !744}
!3378 = distinct !{!3378, !1797}
!3379 = distinct !{!3379, !19, !743}
!3380 = distinct !{!3380, !19, !743, !744}
!3381 = distinct !{!3381, !19, !743, !744}
!3382 = distinct !{!3382, !1797}
!3383 = distinct !{!3383, !19, !743}
!3384 = distinct !{!3384, !19, !3385}
!3385 = !{!"llvm.loop.peeled.count", i32 1}
!3386 = distinct !{!3386, !19, !3385, !743, !744}
!3387 = distinct !{!3387, !19, !3385, !744, !743}
!3388 = distinct !{!3388, !19}
!3389 = distinct !{!3389, !19}
!3390 = distinct !{null, null, null, null, null}
!3391 = distinct !{!3391, !19, !743, !744}
!3392 = distinct !{!3392, !19, !743, !744}
!3393 = distinct !{!3393, !1797}
!3394 = distinct !{!3394, !19, !743}
!3395 = !{!2413, !2340, i64 0}
!3396 = !{!3397, !27, i64 0}
!3397 = !{!"_ZTSN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEE", !27, i64 0, !4, i64 8}
!3398 = !{!3397, !4, i64 8}
!3399 = distinct !{null, null, null, null, null, null, null}
!3400 = distinct !{!3400, !19, !743, !744}
!3401 = distinct !{!3401, !19, !743, !744}
!3402 = distinct !{!3402, !1797}
!3403 = distinct !{!3403, !19, !743}
!3404 = distinct !{null, null, null, null, null, null}
!3405 = !{!3406, !3407, i64 0}
!3406 = !{!"_ZTSN10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEE", !3407, i64 0, !4, i64 8}
!3407 = !{!"p1 _ZTSN10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE5entryE", !10, i64 0}
!3408 = !{!3406, !4, i64 8}
!3409 = !{!3410, !362, i64 16}
!3410 = !{!"_ZTSN10duckdb_fmt2v616basic_format_argINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEE", !3411, i64 0, !362, i64 16}
!3411 = !{!"_ZTSN10duckdb_fmt2v68internal5valueINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEE", !5, i64 0}
!3412 = !{!3413}
!3413 = distinct !{!3413, !3414, !"_ZN10duckdb_fmt2v69to_stringIcLm500EEENSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEERKNS0_19basic_memory_bufferIS4_XT0_ES7_EE: argument 0"}
!3414 = distinct !{!3414, !"_ZN10duckdb_fmt2v69to_stringIcLm500EEENSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEERKNS0_19basic_memory_bufferIS4_XT0_ES7_EE"}
!3415 = !{!3416, !3416, i64 0}
!3416 = !{!"p1 _ZTSN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEE", !10, i64 0}
!3417 = !{!3418, !3418, i64 0}
!3418 = !{!"p1 _ZTSN10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEE", !10, i64 0}
!3419 = !{!3420, !3421, i64 32}
!3420 = !{!"_ZTSN10duckdb_fmt2v613arg_formatterINS0_12buffer_rangeIcEEEE", !2324, i64 0, !3418, i64 24, !3421, i64 32}
!3421 = !{!"p1 _ZTSN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEEE", !10, i64 0}
!3422 = distinct !{null, null, null, null}
!3423 = distinct !{!3423, !19}
!3424 = !{!3425, !3416, i64 0}
!3425 = !{!"_ZTSZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_E10pfs_writer", !3416, i64 0}
!3426 = !{!3427, !3416, i64 0}
!3427 = !{!"_ZTSN10duckdb_fmt2v68internal10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEE", !3416, i64 0}
!3428 = distinct !{!3428, !19}
!3429 = distinct !{null, null, null}
!3430 = !{!3431, !3431, i64 0}
!3431 = !{!"p1 _ZTSN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEE", !10, i64 0}
!3432 = !{!3433, !362, i64 8}
!3433 = !{!"_ZTSN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEE", !3431, i64 0, !362, i64 8}
!3434 = !{!3435}
!3435 = distinct !{!3435, !3436, !"_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi: argument 0"}
!3436 = distinct !{!3436, !"_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi"}
!3437 = !{!3438}
!3438 = distinct !{!3438, !3439, !"_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE3getEi: argument 0"}
!3439 = distinct !{!3439, !"_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE3getEi"}
!3440 = !{!3441}
!3441 = distinct !{!3441, !3442, !"_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi: argument 0"}
!3442 = distinct !{!3442, !"_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi"}
!3443 = !{!3441, !3438, !3435}
!3444 = !{!3445, !2277, i64 0}
!3445 = !{!"_ZTSN10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEE", !2277, i64 0, !5, i64 8}
!3446 = !{!3438, !3435}
!3447 = !{!3448}
!3448 = distinct !{!3448, !3449, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!3449 = distinct !{!3449, !"_ZNSt7__cxx119to_stringEi"}
!3450 = !{!3451}
!3451 = distinct !{!3451, !3452, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!3452 = distinct !{!3452, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!3453 = !{!3454}
!3454 = distinct !{!3454, !3455, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!3455 = distinct !{!3455, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!3456 = !{!3420, !3418, i64 24}
!3457 = distinct !{null, null}
!3458 = distinct !{null, null, null, null, null, null}
!3459 = distinct !{!3459, !19}
!3460 = !{!3461}
!3461 = distinct !{!3461, !3462, !"_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE: argument 0"}
!3462 = distinct !{!3462, !"_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE"}
!3463 = distinct !{!3463, !19}
!3464 = !{!3465}
!3465 = distinct !{!3465, !3466, !"_ZN10duckdb_fmt2v617basic_string_viewIcE9to_stringB5cxx11Ev: argument 0"}
!3466 = distinct !{!3466, !"_ZN10duckdb_fmt2v617basic_string_viewIcE9to_stringB5cxx11Ev"}
!3467 = !{!3468}
!3468 = distinct !{!3468, !3469, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!3469 = distinct !{!3469, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!3470 = !{!3471}
!3471 = distinct !{!3471, !3472, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!3472 = distinct !{!3472, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!3473 = !{!3474}
!3474 = distinct !{!3474, !3475, !"_ZN10duckdb_fmt2v617basic_string_viewIcE9to_stringB5cxx11Ev: argument 0"}
!3475 = distinct !{!3475, !"_ZN10duckdb_fmt2v617basic_string_viewIcE9to_stringB5cxx11Ev"}
!3476 = !{!3477}
!3477 = distinct !{!3477, !3478, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!3478 = distinct !{!3478, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!3479 = !{!3480}
!3480 = distinct !{!3480, !3481, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!3481 = distinct !{!3481, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!3482 = !{i64 0, i64 8, !350, i64 8, i64 8, !84}
!3483 = !{i64 0, i64 8, !350, i64 8, i64 8, !84, i64 16, i64 16, !66, i64 32, i64 4, !361}
!3484 = distinct !{!3484, !19}
!3485 = distinct !{!3485, !19}
!3486 = !{!3487, !2329, i64 0}
!3487 = !{!"_ZTSN10duckdb_fmt2v68internal12specs_setterIcEE", !2329, i64 0}
!3488 = !{!3433, !3431, i64 0}
!3489 = distinct !{!3489, !19}
!3490 = !{!3491, !3491, i64 0}
!3491 = !{!"p1 _ZTSN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEE", !10, i64 0}
!3492 = !{!3493, !3491, i64 0}
!3493 = !{!"_ZTSN10duckdb_fmt2v68internal13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEE", !3491, i64 0}
!3494 = !{!3495, !3418, i64 16}
!3495 = !{!"_ZTSN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEE", !3487, i64 0, !3421, i64 8, !3418, i64 16}
!3496 = !{!3497}
!3497 = distinct !{!3497, !3498, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS1_7auto_idE: argument 0"}
!3498 = distinct !{!3498, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS1_7auto_idE"}
!3499 = !{!3495, !3421, i64 8}
!3500 = !{!3501, !3501, i64 0}
!3501 = !{!"p1 _ZTSN10duckdb_fmt2v68internal13error_handlerE", !10, i64 0}
!3502 = !{!3503}
!3503 = distinct !{!3503, !3504, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argEi: argument 0"}
!3504 = distinct !{!3504, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argEi"}
!3505 = distinct !{!3505, !19}
!3506 = !{!3507}
!3507 = distinct !{!3507, !3508, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS0_17basic_string_viewIcEE: argument 0"}
!3508 = distinct !{!3508, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS0_17basic_string_viewIcEE"}
!3509 = distinct !{!3509, !19}
!3510 = !{!3511, !3501, i64 0}
!3511 = !{!"_ZTSN10duckdb_fmt2v68internal13width_checkerINS1_13error_handlerEEE", !3501, i64 0}
!3512 = !{!3513, !3491, i64 0}
!3513 = !{!"_ZTSN10duckdb_fmt2v68internal17precision_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEE", !3491, i64 0}
!3514 = !{!3515}
!3515 = distinct !{!3515, !3516, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS1_7auto_idE: argument 0"}
!3516 = distinct !{!3516, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS1_7auto_idE"}
!3517 = !{!3518}
!3518 = distinct !{!3518, !3519, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argEi: argument 0"}
!3519 = distinct !{!3519, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argEi"}
!3520 = distinct !{!3520, !19}
!3521 = !{!3522}
!3522 = distinct !{!3522, !3523, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS0_17basic_string_viewIcEE: argument 0"}
!3523 = distinct !{!3523, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS0_17basic_string_viewIcEE"}
!3524 = distinct !{!3524, !19}
!3525 = !{!3526, !3501, i64 0}
!3526 = !{!"_ZTSN10duckdb_fmt2v68internal17precision_checkerINS1_13error_handlerEEE", !3501, i64 0}
!3527 = distinct !{!3527, !19}
!3528 = distinct !{!3528, !19}
!3529 = distinct !{!3529, !19}
!3530 = distinct !{!3530, !19}
!3531 = distinct !{!3531, !19}
!3532 = distinct !{!3532, !19}
!3533 = distinct !{!3533, !19}
!3534 = distinct !{!3534, !19}
!3535 = distinct !{!3535, !19}
!3536 = distinct !{!3536, !19}
!3537 = distinct !{!3537, !19}
!3538 = distinct !{!3538, !19}
!3539 = distinct !{!3539, !19}
!3540 = distinct !{!3540, !19}
!3541 = distinct !{!3541, !19}
!3542 = distinct !{!3542, !19}
!3543 = distinct !{!3543, !19}
!3544 = distinct !{!3544, !19}
!3545 = distinct !{!3545, !19}
!3546 = distinct !{!3546, !19}
!3547 = distinct !{!3547, !19}
!3548 = !{!3549}
!3549 = distinct !{!3549, !3550, !"_ZNK6duckdb8string_t9GetStringB5cxx11Ev: argument 0"}
!3550 = distinct !{!3550, !"_ZNK6duckdb8string_t9GetStringB5cxx11Ev"}
!3551 = !{!3552}
!3552 = distinct !{!3552, !3553, !"_ZNK6duckdb8string_t9GetStringB5cxx11Ev: argument 0"}
!3553 = distinct !{!3553, !"_ZNK6duckdb8string_t9GetStringB5cxx11Ev"}
!3554 = distinct !{!3554, !19}
!3555 = distinct !{!3555, !19}
!3556 = distinct !{!3556, !19}
!3557 = distinct !{!3557, !19}
!3558 = distinct !{!3558, !19}
!3559 = distinct !{!3559, !19}
!3560 = distinct !{!3560, !19}
!3561 = distinct !{!3561, !19}
!3562 = distinct !{!3562, !19}
!3563 = distinct !{!3563, !19}
!3564 = distinct !{!3564, !19}
!3565 = distinct !{!3565, !19}
!3566 = distinct !{!3566, !19}
!3567 = distinct !{!3567, !19}
!3568 = distinct !{!3568, !19}
!3569 = distinct !{!3569, !19}
!3570 = distinct !{!3570, !19}
!3571 = distinct !{!3571, !19}
!3572 = distinct !{!3572, !19}
!3573 = distinct !{!3573, !19}
!3574 = distinct !{!3574, !19}
!3575 = distinct !{!3575, !19}
!3576 = distinct !{!3576, !19}
!3577 = distinct !{!3577, !19}
!3578 = distinct !{!3578, !19}
!3579 = distinct !{!3579, !19}
!3580 = !{!3581}
!3581 = distinct !{!3581, !3582, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!3582 = distinct !{!3582, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!3583 = !{!3584}
!3584 = distinct !{!3584, !3585, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!3585 = distinct !{!3585, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!3586 = distinct !{!3586, !19}
!3587 = distinct !{!3587, !19}
!3588 = distinct !{!3588, !19}
!3589 = distinct !{!3589, !19}
!3590 = distinct !{!3590, !19}
!3591 = distinct !{!3591, !19}
!3592 = distinct !{!3592, !19}
!3593 = distinct !{!3593, !1797}
!3594 = distinct !{!3594, !19}
!3595 = distinct !{!3595, !19}
!3596 = distinct !{!3596, !1797}
!3597 = distinct !{!3597, !19}
!3598 = distinct !{!3598, !19}
!3599 = distinct !{!3599, !19}
!3600 = distinct !{!3600, !19}
!3601 = distinct !{!3601, !19}
!3602 = distinct !{!3602, !1797}
!3603 = distinct !{!3603, !1797}
!3604 = distinct !{!3604, !19}
!3605 = distinct !{!3605, !1797}
!3606 = distinct !{!3606, !19}
!3607 = distinct !{!3607, !19}
!3608 = distinct !{!3608, !19}
!3609 = distinct !{!3609, !19}
!3610 = distinct !{!3610, !19}
!3611 = distinct !{!3611, !1797}
!3612 = distinct !{!3612, !19}
!3613 = distinct !{!3613, !1797}
!3614 = distinct !{!3614, !19}
!3615 = distinct !{!3615, !19}
!3616 = distinct !{!3616, !1797}
!3617 = distinct !{!3617, !19}
!3618 = distinct !{!3618, !19}
!3619 = distinct !{!3619, !19}
!3620 = distinct !{!3620, !19}
!3621 = distinct !{!3621, !19}
!3622 = distinct !{!3622, !1797}
!3623 = distinct !{!3623, !19}
!3624 = distinct !{!3624, !1797}
!3625 = distinct !{!3625, !19}
!3626 = distinct !{!3626, !19}
!3627 = distinct !{!3627, !1797}
!3628 = distinct !{!3628, !19}
!3629 = distinct !{!3629, !19}
!3630 = distinct !{!3630, !19}
!3631 = distinct !{!3631, !19}
!3632 = distinct !{!3632, !19}
!3633 = distinct !{!3633, !1797}
!3634 = distinct !{!3634, !19}
!3635 = distinct !{!3635, !19}
!3636 = distinct !{!3636, !19}
!3637 = distinct !{!3637, !19}
!3638 = distinct !{!3638, !19}
!3639 = distinct !{!3639, !19}
!3640 = distinct !{!3640, !19}
!3641 = distinct !{!3641, !19, !743, !744}
!3642 = !{!"branch_weights", i32 8, i32 8}
!3643 = distinct !{!3643, !19, !743, !744}
!3644 = distinct !{!3644, !19, !744, !743}
!3645 = distinct !{!3645, !19}
!3646 = distinct !{!3646, !19, !743, !744}
!3647 = distinct !{!3647, !19, !743, !744}
!3648 = distinct !{!3648, !19, !744, !743}
!3649 = distinct !{!3649, !19}
!3650 = distinct !{!3650, !19}
!3651 = distinct !{!3651, !19}
!3652 = distinct !{!3652, !19}
!3653 = distinct !{!3653, !19}
!3654 = distinct !{!3654, !19}
!3655 = !{!3656}
!3656 = distinct !{!3656, !3657, !"_ZN6duckdb9Exception16ConstructMessageIJmccEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!3657 = distinct !{!3657, !"_ZN6duckdb9Exception16ConstructMessageIJmccEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!3658 = !{!3659}
!3659 = distinct !{!3659, !3660, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIcEES0_RKT_: argument 0"}
!3660 = distinct !{!3660, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIcEES0_RKT_"}
!3661 = !{!3662}
!3662 = distinct !{!3662, !3663, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIcEES0_RKT_: argument 0"}
!3663 = distinct !{!3663, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIcEES0_RKT_"}
!3664 = distinct !{!3664, !19, !743, !744}
!3665 = distinct !{!3665, !19, !743, !744}
!3666 = distinct !{!3666, !19, !744, !743}
!3667 = distinct !{!3667, !19}
!3668 = distinct !{!3668, !19, !743, !744}
!3669 = distinct !{!3669, !19, !743, !744}
!3670 = distinct !{!3670, !19, !744, !743}
!3671 = distinct !{!3671, !19}
!3672 = distinct !{!3672, !19}
!3673 = distinct !{!3673, !19}
!3674 = distinct !{!3674, !19}
!3675 = distinct !{!3675, !19}
!3676 = distinct !{!3676, !19, !743, !744}
!3677 = !{!"branch_weights", i32 4, i32 12}
!3678 = distinct !{!3678, !19, !743, !744}
!3679 = distinct !{!3679, !19, !743, !744}
!3680 = distinct !{!3680, !19, !743, !744}
!3681 = distinct !{!3681, !19, !744, !743}
!3682 = distinct !{!3682, !19, !744, !743}
!3683 = distinct !{!3683, !19}
!3684 = distinct !{!3684, !19, !743, !744}
!3685 = distinct !{!3685, !19, !743, !744}
!3686 = distinct !{!3686, !19, !743, !744}
!3687 = distinct !{!3687, !19, !743, !744}
!3688 = distinct !{!3688, !19, !744, !743}
!3689 = distinct !{!3689, !19, !744, !743}
!3690 = distinct !{!3690, !19}
!3691 = distinct !{!3691, !19}
!3692 = distinct !{!3692, !19}
!3693 = distinct !{!3693, !19}
!3694 = distinct !{!3694, !19}
!3695 = distinct !{!3695, !19, !743, !744}
!3696 = distinct !{!3696, !19, !743, !744}
!3697 = distinct !{!3697, !19, !743, !744}
!3698 = distinct !{!3698, !19, !743, !744}
!3699 = distinct !{!3699, !19, !744, !743}
end_hunk_4
