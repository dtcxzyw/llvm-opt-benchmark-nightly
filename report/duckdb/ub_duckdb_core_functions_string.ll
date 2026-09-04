Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_string?download=true
inline.NumInlined: 11296
inline.NumDeleted: 2901
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 170
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_ZN10duckdb_fmt2v68internal7vformatIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEENS0_17basic_string_viewIS5_EENS0_17basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIS5_EEES5_EEEE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !306, !noalias !3459 ; 3 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !313, !noalias !3459 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !180, !alias.scope !3459
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !3459
  store i64 %i.u, ptr %i.a, align 8, !tbaa !156, !noalias !3459
  %i.y = icmp ugt i64 %i.u, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.l    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i
  store ptr %i.z, ptr %0, align 8, !tbaa !184, !alias.scope !3459
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !156, !noalias !3459
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !138, !alias.scope !3459
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %bb.g
  %i.ab = phi ptr [ %i.z, %.noexc8 ], [ %i.v, %bb.g ] ; 2 uses
  switch i64 %i.u, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.t, align 1, !tbaa !138
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !138
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !156, !noalias !3459 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !181, !alias.scope !3459
  %i.af = load ptr, ptr %0, align 8, !tbaa !184, !alias.scope !3459
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !3459
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %6, align 8, !tbaa !133
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !306 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ah) #29, !inline_history !314
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %6, align 8, !tbaa !133
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !306 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.aj, %i.e
  br i1 %.not.i.i9, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.aj) #29, !inline_history !314
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
  store ptr %2, ptr %6, align 8, !tbaa !3461
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %.not73 = icmp samesign eq i64 %1, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph

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
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.03774 = phi ptr [ %0, %.lr.ph ], [ %i.bs, %bb.ab ] ; 6 uses
  %i.p = load i8, ptr %.03774, align 1, !tbaa !138
  %.not45 = icmp eq i8 %i.p, 123
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %.03774 to i64
  %i.r = sub i64 %i.b, %i.q
  %i.s = call noundef ptr @memchr(ptr noundef nonnull %.03774, i32 noundef 123, i64 noundef %i.r) #30 ; 2 uses
  %.not68 = icmp eq ptr %i.s, null
  br i1 %.not68, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  call void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.03774, ptr noundef nonnull %i.a)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %.03774, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  call void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.03774, ptr noundef nonnull %.0)
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %bb.e, label %bb.j

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
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %7, align 8, !tbaa !184    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn52 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ac

bb.j:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !138
  switch i8 %i.aa, label %bb.n [
    i8 125, label %bb.k
    i8 123, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ab = call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.e, ptr noundef nonnull align 16 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !206
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !315 ; 2 uses
  %i.ad = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %.neg.i.i = sub i64 %i.ae, %i.ad
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !315
  %i.ah = load i64, ptr %i.f, align 16, !tbaa !316
  %14 = add i64 %.neg.i.i, %i.ah
  store i64 %14, ptr %i.f, align 16, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i = load ptr, ptr %i.g, align 8, !tbaa !87
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i, ptr %i.h, align 8, !tbaa !87
  store ptr null, ptr %i.i, align 8, !tbaa !347
  store ptr %i.c, ptr %i.j, align 8, !tbaa !595
  store ptr %i.d, ptr %i.k, align 8, !tbaa !598
  %i.ai = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.ai, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 16 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !313 ; 2 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !307
  %i.ao = icmp ugt i64 %i.al, %i.an
  br i1 %i.ao, label %bb.m, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !133
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.al), !inline_history !57
  br label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit

_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit: ; preds = %bb.l, %bb.m
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !313
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !306
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  %i.au = load i8, ptr %i.t, align 1, !tbaa !138
  store i8 %i.au, ptr %i.at, align 1, !tbaa !138
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.c, align 16
  br label %bb.ab

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %2, ptr %9, align 8, !tbaa !3461
  %i.av = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.not46 = icmp eq ptr %i.av, %i.a
  br i1 %.not46, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !138
  switch i8 %i.aw, label %.thread [
    i8 125, label %bb.p
    i8 58, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !315 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  %.neg.i.i55 = sub i64 %i.az, %i.ay
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !315
  %i.bc = load i64, ptr %i.f, align 16, !tbaa !316
  %15 = add i64 %.neg.i.i55, %i.bc
  store i64 %15, ptr %i.f, align 16, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload.i.i.i55 = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i56 = load ptr, ptr %i.g, align 8, !tbaa !87
  store ptr %.sroa.0.0.copyload.i.i.i55, ptr %3, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i56, ptr %i.l, align 8, !tbaa !87
  store ptr null, ptr %i.m, align 8, !tbaa !347
  store ptr %i.c, ptr %i.n, align 8, !tbaa !595
  store ptr %i.d, ptr %i.o, align 8, !tbaa !598
  %i.bd = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.bd, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bf = call noundef ptr @_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE15on_format_specsEPKcSF_(ptr noundef nonnull align 16 dereferenceable(112) %2, ptr noundef nonnull %i.be, ptr noundef nonnull %i.a) ; 3 uses
  %i.bg = icmp eq ptr %i.bf, %i.a
  br i1 %i.bg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !138
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
  %i.bk = load ptr, ptr %10, align 8, !tbaa !184  ; 2 uses
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
  %i.bp = load ptr, ptr %12, align 8, !tbaa !184  ; 2 uses
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
  %.1 = phi ptr [ %i.av, %bb.p ], [ %i.bf, %bb.r ], [ %i.t, %bb.k ], [ %i.t, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.a
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !3460

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
  %i.f = load ptr, ptr %0, align 8, !tbaa !3463, !nonnull !203, !align !361
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !313  ; 2 uses
  %i.j = add i64 %i.i, %.lcssa                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !307
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i

bb.b:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !133
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.j), !inline_history !57
  br label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i

_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i: ; preds = %bb.b, %._crit_edge
  store i64 %i.j, ptr %i.h, align 8, !tbaa !313
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !306
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i ; 2 uses
  %i.s = icmp eq ptr %2, %.013.lcssa
  br i1 %i.s, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i
  %i.t = icmp sgt i64 %.lcssa, 1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !194

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.013.lcssa, i64 %.lcssa, i1 false)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %.lcssa, 1
  br i1 %i.u, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %.013.lcssa, align 1, !tbaa !138
  store i8 %i.v, ptr %i.r, align 1, !tbaa !138
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
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !138
  %.not = icmp eq i8 %i.aa, 125
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !3463, !nonnull !203, !align !361
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull %3) #27
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_:bb.a

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !184   ; 2 uses
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
  %i.ap = load ptr, ptr %8, align 8, !tbaa !184   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.s
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.ar = load ptr, ptr %2, align 8, !tbaa !600, !nonnull !203, !align !361 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE12check_arg_idEi(ptr noundef nonnull align 8 dereferenceable(20) %i.as, i32 noundef %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i32 noundef %i.o)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.au, ptr noundef nonnull align 16 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !206
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !199
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
  store ptr %i.bc, ptr %9, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 21, ptr %i.d, align 8, !tbaa !156
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.bd, ptr %9, align 8, !tbaa !184
  %i.be = load i64, ptr %i.d, align 8, !tbaa !156 ; 3 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bd, ptr noundef nonnull align 1 dereferenceable(21) @.str.59, i64 21, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !181
  %i.bg = load ptr, ptr %9, align 8, !tbaa !184
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bi = load ptr, ptr %2, align 8, !tbaa !600, !nonnull !203, !align !361
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bj, ptr %4, align 8, !tbaa !180
  %i.bk = load ptr, ptr %9, align 8, !tbaa !184   ; 2 uses
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !181 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !156
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i.i60, label %._crit_edge.i.i.i55

.noexc.i.i60:                                     ; preds = %.noexc.i52
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc61 unwind label %bb.q   ; 2 uses

.noexc61:                                         ; preds = %.noexc.i.i60
  store ptr %i.bn, ptr %4, align 8, !tbaa !184
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !156
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !138
  br label %._crit_edge.i.i.i55

._crit_edge.i.i.i55:                              ; preds = %.noexc61, %.noexc.i52
  %i.bp = phi ptr [ %i.bn, %.noexc61 ], [ %i.bj, %.noexc.i52 ] ; 2 uses
  switch i64 %i.bl, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i55
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !138
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56

bb.n:                                             ; preds = %._crit_edge.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bk, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i55
  %i.br = load i64, ptr %i.c, align 8, !tbaa !156 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !181
  %i.bt = load ptr, ptr %4, align 8, !tbaa !184
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull %4) #27
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  unreachable

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !184   ; 2 uses
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
  %i.bz = load ptr, ptr %9, align 8, !tbaa !184   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bc
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

.critedge7:                                       ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.cb, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !3464

.lr.ph:                                           ; preds = %.critedge7.preheader, %.critedge7
  %i.cc = phi ptr [ %i.cb, %.critedge7 ], [ %i.bb, %.critedge7.preheader ] ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !138 ; 3 uses
  %i.ce = and i8 %i.cd, -33
  %i.cf = add i8 %i.ce, -65
  %or.cond10.i71 = icmp ult i8 %i.cf, 26
  %i.cg = icmp eq i8 %i.cd, 95
  %i.ch = or i1 %i.cg, %or.cond10.i71
  %i.ci = add i8 %i.cd, -48
  %i.cj = icmp ult i8 %i.ci, 10
  %or.cond = or i1 %i.cj, %i.ch
  br i1 %or.cond, label %.critedge7, label %..critedge_crit_edge, !llvm.loop !3464

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !3464

.critedge:                                        ; preds = %.critedge7, %..critedge_crit_edge, %.critedge7.preheader
  %.lcssa = phi ptr [ %i.cc, %..critedge_crit_edge ], [ %scevgep, %.critedge7.preheader ], [ %scevgep, %.critedge7 ] ; 2 uses
  %i.ck = ptrtoint ptr %.lcssa to i64
  %i.cl = ptrtoint ptr %0 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = load ptr, ptr %2, align 8, !tbaa !600, !nonnull !203, !align !361 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  call void @_ZN10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argENS0_17basic_string_viewIcEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr nonnull %0, i64 %i.cm)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.cp, ptr noundef nonnull align 16 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !206
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %.neg.i = sub i64 %i.d, %i.c
  store ptr %i.f, ptr %i.a, align 8, !tbaa !315
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !316
  %8 = add i64 %.neg.i, %i.h
  store i64 %8, ptr %i.g, align 16, !tbaa !316
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i32, ptr %i.k, align 16, !tbaa !592 ; 2 uses
  %cond.i = icmp eq i32 %i.l, 16
  br i1 %cond.i, label %bb.b, label %_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 16, !tbaa !87
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !87
  tail call void %.sroa.2.0.copyload.i(ptr noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.i), !inline_history !3465
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !315
  br label %bb.h

_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !tbaa !321
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.n, align 4, !tbaa !322
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.o, align 4, !tbaa !323
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i48 32, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.r, align 4, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %3, ptr %4, align 8, !tbaa !349
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.s, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.i, ptr %.sroa.6.8..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %4, ptr %i.t, align 8, !tbaa !3466
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.l, ptr %i.u, align 8, !tbaa !603
  %i.v = call noundef ptr @_ZN10duckdb_fmt2v68internal18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 4 uses
  %i.w = icmp eq ptr %i.v, %2
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %i.x = load i8, ptr %i.v, align 1, !tbaa !138
  %.not = icmp eq i8 %i.x, 125
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %5) #27
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !184    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !315 ; 2 uses
  %i.ad = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %.neg.i15 = sub i64 %i.ae, %i.ad
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !315
  %i.ah = load i64, ptr %i.g, align 16, !tbaa !316
  %9 = add i64 %.neg.i15, %i.ah
  store i64 %9, ptr %i.g, align 16, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i7.i = load ptr, ptr %i.ai, align 8, !tbaa !87
  store ptr %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.0.0.copyload.i7.i, ptr %i.aj, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.ak, align 8, !tbaa !347
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.i, ptr %i.al, align 8, !tbaa !595
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.a, ptr %i.am, align 8, !tbaa !598
  %i.an = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 16 dereferenceable(20) %i.j)
  store ptr %i.an, ptr %i.i, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ %i.v, %bb.g ]
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3479)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3481)
  store i32 0, ptr %0, align 16, !tbaa !138, !alias.scope !3482
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.c, align 16, !tbaa !592, !alias.scope !3482
  %i.d = load i64, ptr %i.b, align 8, !tbaa !605, !noalias !3482 ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.d to i32
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %bb.c, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138, !noalias !3482
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %0, ptr noundef nonnull align 16 dereferenceable(20) %i.k, i64 20, i1 false), !tbaa.struct !206
  %.pr.pre.i.i = load i32, ptr %i.c, align 16, !tbaa !592, !alias.scope !3483
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
  store i32 %i.q, ptr %i.c, align 16, !tbaa !592, !alias.scope !3482
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138, !noalias !3482
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !175
  br label %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i

_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i: ; preds = %bb.f, %bb.c
  %.pr.i.i = phi i32 [ %i.q, %bb.f ], [ %.pr.pre.i.i, %bb.c ] ; 2 uses
  %i.w = icmp eq i32 %.pr.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit

bb.g:                                             ; preds = %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i
  %i.x = load ptr, ptr %0, align 16, !tbaa !138, !alias.scope !3483
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.y, i64 20, i1 false)
  %.pr.pre = load i32, ptr %i.c, align 16, !tbaa !592
  br label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit

_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit: ; preds = %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i, %bb.g
  %.pr = phi i32 [ %.pr.pre, %bb.g ], [ %.pr.i.i, %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE6do_getEi.exit.i.i ]
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread, label %bb.ac

_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread: ; preds = %bb.b, %bb.e, %bb.d, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  %i.z = tail call i32 @llvm.abs.i32(i32 %2, i1 false) ; 5 uses
  %i.aa = icmp ult i32 %i.z, 10
  br i1 %i.aa, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread, %bb.m
  %.030.i.i = phi i32 [ %i.ai, %bb.m ], [ 1, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.z, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread ] ; 5 uses
  %i.ab = icmp ult i32 %.02329.i.i, 100
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ad = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.k:                                             ; preds = %bb.i
  %i.af = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ah = udiv i32 %.02329.i.i, 10000
  %i.ai = add i32 %.030.i.i, 4                    ; 2 uses
  %i.aj = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.aj, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !32

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread
  %.022.i.i = phi i32 [ %i.ag, %bb.l ], [ %i.ac, %bb.h ], [ %i.ae, %bb.j ], [ 1, %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi.exit.thread ], [ %i.ai, %bb.m ] ; 2 uses
  %.lobit.i = lshr i32 %2, 31                     ; 2 uses
  %i.ak = add i32 %.022.i.i, %.lobit.i
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.am, ptr %7, align 8, !tbaa !180, !alias.scope !3484
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.al, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.an = zext nneg i32 %.lobit.i to i64
  %i.ao = load ptr, ptr %7, align 8, !tbaa !184, !alias.scope !3484
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 4 uses
  %i.aq = icmp ugt i32 %i.z, 99
  br i1 %i.aq, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.ar = add i32 %.022.i.i, -1
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
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !138, !noalias !3484
  %i.az = zext i32 %.01819.i.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !138
  %i.bb = load i8, ptr %i.aw, align 2, !tbaa !138, !noalias !3484
  %i.bc = add i32 %.01819.i.i, -1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bd
  store i8 %i.bb, ptr %i.be, align 1, !tbaa !138
  %i.bf = add i32 %.01819.i.i, -2
  %i.bg = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bg, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !33

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i ], [ %i.au, %.lr.ph.i11.i ] ; 3 uses
  %i.bh = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bi = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !138, !noalias !3484
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !138
  %i.bo = load i8, ptr %i.bk, align 2, !tbaa !138, !noalias !3484
  br label %_ZNSt7__cxx119to_stringEi.exit
end_hunk_1
