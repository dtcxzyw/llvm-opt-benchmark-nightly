Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_operators?download=true
inline.NumInlined: 7915
inline.NumDeleted: 2037
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN10duckdb_fmt2v68internal11parse_widthIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal11parse_widthIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::width_adapter", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !106     ; 4 uses
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
  %.017.i = phi i32 [ %i.o, %bb.e ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.k = icmp ugt i32 %.017.i, 214748364
  br i1 %i.k, label %.critedge.thread.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = mul nuw nsw i32 %.017.i, 10
  %i.m = zext nneg i8 %i.j to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add nuw i32 %i.n, %i.l                   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 4 uses
  %.not.i = icmp eq ptr %i.p, %1
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.p, align 1, !tbaa !106   ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond.i = icmp ult i8 %i.r, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !74

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %.lcssa = phi ptr [ %i.p, %bb.e ], [ %scevgep, %bb.d ] ; 2 uses
  %i.s = icmp slt i32 %i.o, 0
  br i1 %i.s, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  %.3 = phi ptr [ %.lcssa, %.critedge.i ], [ %.2, %.preheader.i ] ; 2 uses
  %.126.i = phi i32 [ %i.o, %.critedge.i ], [ -2147483648, %.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 17, ptr %i.d, align 8, !tbaa !97
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !104
  %i.v = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull align 1 dereferenceable(17) @.str.45, i64 17, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !107
  %i.x = load ptr, ptr %3, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.critedge.thread.i
  %i.z = load ptr, ptr %3, align 8, !tbaa !104    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.t
  br i1 %i.aa, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #29
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

bb.g:                                             ; preds = %.critedge.thread.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !104   ; 2 uses
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
  %.018.i = phi i32 [ 0, %bb.c ], [ %i.o, %.critedge.i ], [ %.126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.126.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ae = load ptr, ptr %2, align 8, !tbaa !544, !nonnull !170, !align !343
  store i32 %.018.i, ptr %i.ae, align 4, !tbaa !302
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.af = icmp eq i8 %i.e, 123
  br i1 %i.af, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not = icmp eq ptr %i.ag, %1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %2, ptr %4, align 8, !tbaa !547
  %i.ah = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEEEEPKT_SL_SL_OT0_(ptr noundef nonnull %i.ag, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.ag, %bb.i ], [ %i.ah, %bb.j ] ; 5 uses
  %i.ai = icmp eq ptr %.0, %1
  br i1 %i.ai, label %.noexc.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i8, ptr %.0, align 1, !tbaa !106
  %.not16 = icmp eq i8 %i.aj, 125
  br i1 %.not16, label %bb.o, label %.noexc.i

.noexc.i:                                         ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 21, ptr %i.c, align 8, !tbaa !97
  %i.al = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !104
  %i.am = load i64, ptr %i.c, align 8, !tbaa !97  ; 3 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.al, ptr noundef nonnull align 1 dereferenceable(21) @.str.25, i64 21, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !107
  %i.ao = load ptr, ptr %5, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %5)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc.i
  %i.aq = load ptr, ptr %5, align 8, !tbaa !104   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ak
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !104   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ak
  br i1 %i.au, label %common.resume, label %common.resume.sink.split

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit, %bb.o, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.011 = phi ptr [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %0, %bb.h ], [ %.4, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit ], [ %i.av, %bb.o ], [ %.0, %bb.m ]
  ret ptr %.011
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal15parse_precisionIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.duckdb_fmt::v6::internal::precision_adapter", align 8 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.g, %1
  br i1 %.not, label %.thread52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.g, align 1, !tbaa !106   ; 4 uses
  %8 = add i8 %i.h, -48
  %or.cond = icmp ult i8 %8, 10
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.d, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.c
  %i.j = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.j
  br label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.f
  %.3 = phi ptr [ %i.q, %bb.f ], [ %i.g, %.preheader.i.preheader ] ; 2 uses
  %i.l = phi i8 [ %i.r, %bb.f ], [ %i.h, %.preheader.i.preheader ]
  %.017.i = phi i32 [ %i.p, %bb.f ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.m = icmp ugt i32 %.017.i, 214748364
  br i1 %i.m, label %.critedge.thread.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.n = mul nuw nsw i32 %.017.i, 10
  %9 = zext nneg i8 %i.l to i32
  %i.o = add nsw i32 %9, -48
  %i.p = add nuw i32 %i.o, %i.n                   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %.not.i = icmp eq ptr %i.q, %1
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.q, align 1, !tbaa !106   ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !74

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.lcssa = phi ptr [ %i.q, %bb.f ], [ %scevgep, %bb.e ] ; 2 uses
  %i.t = icmp slt i32 %i.p, 0
  br i1 %i.t, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  %.4 = phi ptr [ %.lcssa, %.critedge.i ], [ %.3, %.preheader.i ] ; 2 uses
  %.126.i = phi i32 [ %i.p, %.critedge.i ], [ -2147483648, %.preheader.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i64 17, ptr %i.f, align 8, !tbaa !97
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !104
  %i.w = load i64, ptr %i.f, align 8, !tbaa !97   ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.v, ptr noundef nonnull align 1 dereferenceable(17) @.str.45, i64 17, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !107
  %i.y = load ptr, ptr %4, align 8, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.critedge.thread.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.u
  br i1 %i.ab, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.aa) #29
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit

bb.h:                                             ; preds = %.critedge.thread.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.u
  br i1 %i.ae, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.h, %bb.t, %bb.q, %bb.o
  %.sink = phi ptr [ %i.by, %bb.t ], [ %i.aw, %bb.o ], [ %i.bh, %bb.q ], [ %i.ad, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bx, %bb.t ], [ %i.av, %bb.o ], [ %i.bg, %bb.q ], [ %i.ac, %bb.h ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.t, %bb.q, %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.av, %bb.o ], [ %i.ac, %bb.h ], [ %i.bx, %bb.t ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit: ; preds = %bb.g, %bb.d, %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.5 = phi ptr [ %i.k, %bb.d ], [ %.lcssa, %.critedge.i ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.4, %bb.g ]
  %.018.i = phi i32 [ 0, %bb.d ], [ %i.p, %.critedge.i ], [ %.126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.126.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.af = load ptr, ptr %2, align 8, !tbaa !544, !nonnull !170, !align !343
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %.018.i, ptr %i.ag, align 4, !tbaa !303
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  %i.ah = icmp eq i8 %i.h, 123
  br i1 %i.ah, label %bb.j, label %.thread52

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %.not27 = icmp eq ptr %i.ai, %1
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %2, ptr %5, align 8, !tbaa !547
  %i.aj = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_17precision_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEEEEPKT_SL_SL_OT0_(ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi ptr [ %i.ai, %bb.j ], [ %i.aj, %bb.k ] ; 4 uses
  %i.ak = icmp eq ptr %.0, %1
  br i1 %i.ak, label %.noexc.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.am = load i8, ptr %.0, align 1, !tbaa !106
  %.not28 = icmp eq i8 %i.am, 125
  br i1 %.not28, label %bb.r, label %.noexc.i

.noexc.i:                                         ; preds = %bb.m, %bb.l
  %.1 = phi ptr [ %.0, %bb.l ], [ %i.al, %bb.m ]  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 21, ptr %i.e, align 8, !tbaa !97
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !104
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !97  ; 3 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ao, ptr noundef nonnull align 1 dereferenceable(21) @.str.25, i64 21, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !107
  %i.ar = load ptr, ptr %6, align 8, !tbaa !104
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %6)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.at = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.an
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.an
  br i1 %i.ax, label %common.resume, label %common.resume.sink.split

.thread52:                                        ; preds = %bb.a, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 27, ptr %i.d, align 8, !tbaa !97
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.az, ptr %7, align 8, !tbaa !104
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !97  ; 3 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.az, ptr noundef nonnull align 1 dereferenceable(27) @.str.55, i64 27, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !107
  %i.bc = load ptr, ptr %7, align 8, !tbaa !104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %7)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.thread52
  %i.be = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ay
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.be) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %.thread52
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ay
  br i1 %i.bi, label %common.resume, label %common.resume.sink.split

bb.r:                                             ; preds = %bb.m, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit
  %.2 = phi ptr [ %.5, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit ], [ %i.al, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !309 ; 2 uses
  %i.bl = add i32 %i.bk, -1
  %i.bm = icmp ult i32 %i.bl, 9
  %i.bn = icmp eq i32 %i.bk, 15
  %or.cond.i.i = or i1 %i.bn, %i.bm
  br i1 %or.cond.i.i, label %.noexc.i.i.i, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE13end_precisionEv.exit

.noexc.i.i.i:                                     ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !545, !nonnull !170, !align !318
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 44, ptr %i.c, align 8, !tbaa !97
  %i.br = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 3 uses
  store ptr %i.br, ptr %3, align 8, !tbaa !104
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !97  ; 3 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.br, ptr noundef nonnull align 1 dereferenceable(44) @.str.58, i64 44, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !107
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull %3)
          to label %bb.s unwind label %bb.t

end_hunk_0
begin_hunk_1_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i:bb.a
  %.pre69 = load i8, ptr %.phi.trans.insert68, align 2, !tbaa !573
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %narrow, ptr %i.r, align 2, !tbaa !573
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge67, %bb.h
  %.not.i82 = phi i1 [ %.not.i83, %._crit_edge67 ], [ %.not.i, %bb.h ]
  %.03780 = phi i32 [ %.03781, %._crit_edge67 ], [ %1, %bb.h ] ; 4 uses
  %i.s = phi i8 [ %i.q, %._crit_edge67 ], [ %i.p, %bb.h ]
  %i.t = phi i8 [ %.pre69, %._crit_edge67 ], [ %narrow, %bb.h ] ; 4 uses
  %.not22.i = icmp eq i8 %i.t, 0
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = zext i8 %i.t to i64                      ; 2 uses
  %.promoted.i.i = load i16, ptr %0, align 2      ; 2 uses
  %xtraiter = and i64 %i.u, 1
  %i.v = icmp eq i8 %i.t, 1
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %i.u, 254
  br label %.lr.ph.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.w = sdiv i16 %i.ab, 10
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.unr-lcssa, %bb.j
  %.epil.init = phi i16 [ %.promoted.i.i, %bb.j ], [ %i.ac, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod111 = trunc i8 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.x = sdiv i16 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa108 = phi i16 [ %i.w, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.unr-lcssa ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.lcssa107 = phi i16 [ %i.ac, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.unr-lcssa ], [ %i.x, %.lr.ph.i.i.epil.preheader ]
  %i.y = srem i16 %.lcssa108, 10
  %i.z = icmp slt i16 %i.y, -4
  %or.cond.i.i = select i1 %.not.i82, i1 %i.z, i1 false
  %i.aa = sext i1 %or.cond.i.i to i16
  %spec.select.i = add nsw i16 %.lcssa107, %i.aa
  store i16 %spec.select.i, ptr %0, align 2, !tbaa !565
  store i8 %i.d, ptr %i.a, align 1, !tbaa !571
  br label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %i.ab = phi i16 [ %.promoted.i.i, %.new ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ac = sdiv i16 %i.ab, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !75

bb.k:                                             ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i, %bb.i
  %i.ad = phi i8 [ %i.d, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i ], [ %i.b, %bb.i ] ; 5 uses
  %i.ae = icmp eq i8 %i.s, 0
  br i1 %i.ae, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !569, !range !169, !noundef !170
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !570, !range !169, !noundef !170
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = load i16, ptr %0, align 2, !tbaa !565
  %i.am = add i16 %i.al, -1
  store i16 %i.am, ptr %0, align 2, !tbaa !565
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.an = icmp ult i8 %i.ad, %i.d
  %.pre.i = load i16, ptr %0, align 2, !tbaa !565 ; 4 uses
  br i1 %i.an, label %iter.check, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit

iter.check:                                       ; preds = %bb.o
  %i.ao = xor i8 %i.ad, -1
  %i.ap = add i8 %i.d, %i.ao                      ; 3 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.ap, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check94 = icmp ult i8 %i.ap, 15
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i32 %i.ar, 12
  %n.vec = and i32 %i.ar, 496                     ; 4 uses
  %i.at = trunc i32 %n.vec to i8
  %i.au = add i8 %i.ad, %i.at
  %i.av = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.av, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi95 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ax, %vector.body ]
  %i.aw = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ax = mul <8 x i16> %vec.phi95, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ay = icmp eq i32 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2468

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ax, %i.aw
  %i.az = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !574

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.az, %vec.epilog.iter.check ], [ %.pre.i, %vector.main.loop.iter.check ]
  %n.vec96 = and i32 %i.ar, 508                   ; 3 uses
  %i.ba = trunc i32 %n.vec96 to i8
  %i.bb = add i8 %i.ad, %i.ba
  %i.bc = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ]
  %vec.phi98 = phi <4 x i16> [ %i.bc, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %i.bd = mul <4 x i16> %vec.phi98, splat (i16 10) ; 2 uses
  %index.next99 = add nuw i32 %index97, 4         ; 2 uses
  %i.be = icmp eq i32 %index.next99, %n.vec96
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2469

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bf = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.bd) ; 2 uses
  %cmp.n100 = icmp eq i32 %i.ar, %n.vec96
  br i1 %cmp.n100, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i16 [ %.pre.i, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  %.024.i.ph = phi i8 [ %i.ad, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bg = phi i16 [ %i.bh, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.024.i = phi i8 [ %i.bi, %.lr.ph.i ], [ %.024.i.ph, %.lr.ph.i.preheader ]
  %i.bh = mul i16 %i.bg, 10                       ; 2 uses
  %i.bi = add nuw i8 %.024.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.bi, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2470

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa91 = phi i16 [ %i.bf, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  store i16 %.lcssa91, ptr %0, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit: ; preds = %bb.o, %._crit_edge.i
  %.promoted60 = phi i16 [ %.lcssa91, %._crit_edge.i ], [ %.pre.i, %bb.o ] ; 3 uses
  %i.bj = sext i16 %.promoted60 to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !568
  %i.bm = sext i16 %i.bl to i32
  %i.bn = sub nsw i32 0, %i.bm
  %i.bo = icmp sgt i32 %i.bj, %i.bn
  br i1 %i.bo, label %bb.p, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb1EEEbRT_h.exit

bb.p:                                             ; preds = %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit
  %i.bp = icmp slt i32 %.03780, 0
  br i1 %i.bp, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.br = zext nneg i32 %.03780 to i64
  %.not53 = icmp eq i32 %.03780, 0
  br i1 %.not53, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb1EEEbRT_h.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader50
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bt = zext i8 %i.d to i32
  br label %bb.t

.preheader:                                       ; preds = %bb.p
  %i.bu = sext i32 %.03780 to i64
  %i.bv = sub nsw i64 0, %i.bu
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader
  %i.bw = phi i16 [ %.promoted60, %.preheader ], [ %i.bx, %bb.q ] ; 3 uses
  %.03359 = phi i64 [ 0, %.preheader ], [ %i.ca, %bb.q ]
  %i.bx = sdiv i16 %i.bw, 10                      ; 3 uses
  %i.by = srem i16 %i.bw, 10
  %2 = add i16 %i.bw, 9
  %i.bz = icmp ult i16 %2, 19
  %i.ca = add nuw i64 %.03359, 1                  ; 2 uses
  %exitcond66.not = icmp eq i64 %i.ca, %i.bv
  %or.cond = select i1 %i.bz, i1 true, i1 %exitcond66.not
  br i1 %or.cond, label %bb.r, label %bb.q, !llvm.loop !2471

bb.r:                                             ; preds = %bb.q
  %i.cb = icmp slt i16 %i.by, -4
  store i16 %i.bx, ptr %0, align 2, !tbaa !565
  br i1 %i.cb, label %bb.s, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb1EEEbRT_h.exit

bb.s:                                             ; preds = %bb.r
  %i.cc = add nsw i16 %i.bx, -1
  store i16 %i.cc, ptr %0, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb1EEEbRT_h.exit

bb.t:                                             ; preds = %.lr.ph, %bb.x
  %i.cd = phi i16 [ %.promoted60, %.lr.ph ], [ %i.co, %bb.x ] ; 3 uses
  %.054 = phi i64 [ 0, %.lr.ph ], [ %i.cp, %bb.x ]
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load i8, ptr %i.bq, align 2, !tbaa !572 ; 2 uses
  %i.cg = zext i8 %i.cf to i32
  %i.ch = load i8, ptr %i.bs, align 2, !tbaa !566
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub nsw i32 %i.ci, %i.bt
  %i.ck = icmp eq i32 %i.cj, %i.cg
  br i1 %i.ck, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb1EEEbRT_h.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = add i8 %i.cf, 1
  store i8 %i.cl, ptr %i.bq, align 2, !tbaa !572
  %i.cm = icmp slt i16 %i.cd, -3276
  br i1 %i.cm, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb1EEEbRT_h.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = mul i16 %i.cd, 10                       ; 2 uses
  store i16 %i.cn, ptr %0, align 2, !tbaa !565
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.co = phi i16 [ %i.cn, %bb.w ], [ 0, %bb.t ]
  %i.cp = add nuw nsw i64 %.054, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.br
  br i1 %exitcond.not, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb1EEEbRT_h.exit, label %bb.t, !llvm.loop !2472

_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb1EEEbRT_h.exit: ; preds = %bb.v, %bb.u, %bb.x, %.preheader50, %bb.r, %bb.s, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit
  %.139 = phi i1 [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit ], [ true, %bb.r ], [ true, %bb.s ], [ true, %.preheader50 ], [ false, %bb.u ], [ false, %bb.v ], [ true, %bb.x ]
  ret i1 %.139
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb0EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !571   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !567   ; 9 uses
  %i.e = icmp ule i8 %i.b, %i.d
  %narrow = sub nuw i8 %i.b, %i.d                 ; 2 uses
  %narrow49 = tail call i8 @llvm.usub.sat.i8(i8 %i.b, i8 %i.d) ; 2 uses
  %i.f = zext i8 %narrow49 to i32                 ; 2 uses
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.h, align 1, !tbaa !575
  %i.i = icmp samesign ult i32 %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw i32 %1 to i8
  %i.k = sub i8 %narrow49, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.k, ptr %i.l, align 2, !tbaa !573
  br label %._crit_edge67

bb.d:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i32 %1, %i.f
  br label %._crit_edge67

bb.e:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %1, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br i1 %i.n, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i8, ptr %i.o, align 1, !tbaa !575
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 2, ptr %i.o, align 1, !tbaa !575
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.p = phi i8 [ 2, %bb.f ], [ %.pre, %._crit_edge ] ; 3 uses
  %.not.i = icmp eq i8 %i.p, 1                    ; 3 uses
  %brmerge = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %brmerge, label %._crit_edge67, label %bb.h

._crit_edge67:                                    ; preds = %bb.d, %bb.c, %bb.g
  %.not.i83 = phi i1 [ %.not.i, %bb.g ], [ true, %bb.c ], [ true, %bb.d ]
  %.03781 = phi i32 [ %1, %bb.g ], [ 0, %bb.c ], [ %i.m, %bb.d ]
  %i.q = phi i8 [ %i.p, %bb.g ], [ 1, %bb.c ], [ 1, %bb.d ]
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre69 = load i8, ptr %.phi.trans.insert68, align 2, !tbaa !573
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %narrow, ptr %i.r, align 2, !tbaa !573
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge67, %bb.h
  %.not.i82 = phi i1 [ %.not.i83, %._crit_edge67 ], [ %.not.i, %bb.h ]
  %.03780 = phi i32 [ %.03781, %._crit_edge67 ], [ %1, %bb.h ] ; 4 uses
  %i.s = phi i8 [ %i.q, %._crit_edge67 ], [ %i.p, %bb.h ]
  %i.t = phi i8 [ %.pre69, %._crit_edge67 ], [ %narrow, %bb.h ] ; 4 uses
  %.not22.i = icmp eq i8 %i.t, 0
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = zext i8 %i.t to i64                      ; 2 uses
  %.promoted.i.i = load i16, ptr %0, align 2      ; 2 uses
  %xtraiter = and i64 %i.u, 1
  %i.v = icmp eq i8 %i.t, 1
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %i.u, 254
  br label %.lr.ph.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.w = sdiv i16 %i.ab, 10
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i.unr-lcssa, %bb.j
  %.epil.init = phi i16 [ %.promoted.i.i, %bb.j ], [ %i.ac, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod111 = trunc i8 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.x = sdiv i16 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa108 = phi i16 [ %i.w, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i.unr-lcssa ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.lcssa107 = phi i16 [ %i.ac, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i.unr-lcssa ], [ %i.x, %.lr.ph.i.i.epil.preheader ]
  %i.y = srem i16 %.lcssa108, 10
  %i.z = icmp sgt i16 %i.y, 4
  %or.cond.i.i = select i1 %.not.i82, i1 %i.z, i1 false
  %i.aa = zext i1 %or.cond.i.i to i16
  %spec.select.i = add nsw i16 %.lcssa107, %i.aa
  store i16 %spec.select.i, ptr %0, align 2, !tbaa !565
  store i8 %i.d, ptr %i.a, align 1, !tbaa !571
  br label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %i.ab = phi i16 [ %.promoted.i.i, %.new ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ac = sdiv i16 %i.ab, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !76

bb.k:                                             ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i, %bb.i
  %i.ad = phi i8 [ %i.d, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb0EEEbRT_.exit.i ], [ %i.b, %bb.i ] ; 5 uses
  %i.ae = icmp eq i8 %i.s, 0
  br i1 %i.ae, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !569, !range !169, !noundef !170
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !570, !range !169, !noundef !170
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = load i16, ptr %0, align 2, !tbaa !565
  %i.am = add i16 %i.al, 1
  store i16 %i.am, ptr %0, align 2, !tbaa !565
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.an = icmp ult i8 %i.ad, %i.d
  %.pre.i = load i16, ptr %0, align 2, !tbaa !565 ; 4 uses
  br i1 %i.an, label %iter.check, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb0EEEbRT_.exit

iter.check:                                       ; preds = %bb.o
  %i.ao = xor i8 %i.ad, -1
  %i.ap = add i8 %i.d, %i.ao                      ; 3 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.ap, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check94 = icmp ult i8 %i.ap, 15
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i32 %i.ar, 12
  %n.vec = and i32 %i.ar, 496                     ; 4 uses
  %i.at = trunc i32 %n.vec to i8
  %i.au = add i8 %i.ad, %i.at
  %i.av = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.av, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi95 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ax, %vector.body ]
  %i.aw = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ax = mul <8 x i16> %vec.phi95, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ay = icmp eq i32 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2473

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ax, %i.aw
  %i.az = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !574

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.az, %vec.epilog.iter.check ], [ %.pre.i, %vector.main.loop.iter.check ]
  %n.vec96 = and i32 %i.ar, 508                   ; 3 uses
  %i.ba = trunc i32 %n.vec96 to i8
  %i.bb = add i8 %i.ad, %i.ba
  %i.bc = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ]
  %vec.phi98 = phi <4 x i16> [ %i.bc, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %i.bd = mul <4 x i16> %vec.phi98, splat (i16 10) ; 2 uses
  %index.next99 = add nuw i32 %index97, 4         ; 2 uses
  %i.be = icmp eq i32 %index.next99, %n.vec96
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2474

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bf = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.bd) ; 2 uses
  %cmp.n100 = icmp eq i32 %i.ar, %n.vec96
  br i1 %cmp.n100, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i16 [ %.pre.i, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  %.024.i.ph = phi i8 [ %i.ad, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bg = phi i16 [ %i.bh, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.024.i = phi i8 [ %i.bi, %.lr.ph.i ], [ %.024.i.ph, %.lr.ph.i.preheader ]
  %i.bh = mul i16 %i.bg, 10                       ; 2 uses
  %i.bi = add nuw i8 %.024.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.bi, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2475

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa91 = phi i16 [ %i.bf, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  store i16 %.lcssa91, ptr %0, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb0EEEbRT_.exit

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb0EEEbRT_.exit: ; preds = %bb.o, %._crit_edge.i
  %.promoted60 = phi i16 [ %.lcssa91, %._crit_edge.i ], [ %.pre.i, %bb.o ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !568
  %i.bl = icmp slt i16 %.promoted60, %i.bk
  br i1 %i.bl, label %bb.p, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb0EEEbRT_h.exit

bb.p:                                             ; preds = %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb0EEEbRT_.exit
  %i.bm = icmp slt i32 %.03780, 0
  br i1 %i.bm, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bo = zext nneg i32 %.03780 to i64
  %.not53 = icmp eq i32 %.03780, 0
  br i1 %.not53, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb0EEEbRT_h.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader50
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bq = zext i8 %i.d to i32
  br label %bb.t

.preheader:                                       ; preds = %bb.p
  %i.br = sext i32 %.03780 to i64
  %i.bs = sub nsw i64 0, %i.br
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader
  %i.bt = phi i16 [ %.promoted60, %.preheader ], [ %i.bu, %bb.q ] ; 3 uses
  %.03359 = phi i64 [ 0, %.preheader ], [ %i.bx, %bb.q ]
  %i.bu = sdiv i16 %i.bt, 10                      ; 3 uses
  %i.bv = srem i16 %i.bt, 10
  %2 = add i16 %i.bt, 9
  %i.bw = icmp ult i16 %2, 19
  %i.bx = add nuw i64 %.03359, 1                  ; 2 uses
  %exitcond66.not = icmp eq i64 %i.bx, %i.bs
  %or.cond = select i1 %i.bw, i1 true, i1 %exitcond66.not
  br i1 %or.cond, label %bb.r, label %bb.q, !llvm.loop !2476

bb.r:                                             ; preds = %bb.q
  %i.by = icmp sgt i16 %i.bv, 4
  store i16 %i.bu, ptr %0, align 2, !tbaa !565
  br i1 %i.by, label %bb.s, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb0EEEbRT_h.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = add nsw i16 %i.bu, 1
  store i16 %i.bz, ptr %0, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb0EEEbRT_h.exit

bb.t:                                             ; preds = %.lr.ph, %bb.x
  %i.ca = phi i16 [ %.promoted60, %.lr.ph ], [ %i.cl, %bb.x ] ; 3 uses
  %.054 = phi i64 [ 0, %.lr.ph ], [ %i.cm, %bb.x ]
  %i.cb = icmp eq i16 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = load i8, ptr %i.bn, align 2, !tbaa !572 ; 2 uses
  %i.cd = zext i8 %i.cc to i32
  %i.ce = load i8, ptr %i.bp, align 2, !tbaa !566
  %i.cf = zext i8 %i.ce to i32
  %i.cg = sub nsw i32 %i.cf, %i.bq
  %i.ch = icmp eq i32 %i.cg, %i.cd
  br i1 %i.ch, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb0EEEbRT_h.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = add i8 %i.cc, 1
  store i8 %i.ci, ptr %i.bn, align 2, !tbaa !572
  %i.cj = icmp sgt i16 %i.ca, 3276
  br i1 %i.cj, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb0EEEbRT_h.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = mul i16 %i.ca, 10                       ; 2 uses
  store i16 %i.ck, ptr %0, align 2, !tbaa !565
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.cl = phi i16 [ %i.ck, %bb.w ], [ 0, %bb.t ]
  %i.cm = add nuw nsw i64 %.054, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cm, %i.bo
  br i1 %exitcond.not, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb0EEEbRT_h.exit, label %bb.t, !llvm.loop !2477

_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIsEELb0EEEbRT_h.exit: ; preds = %bb.v, %bb.u, %bb.x, %.preheader50, %bb.r, %bb.s, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb0EEEbRT_.exit
  %.139 = phi i1 [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb0EEEbRT_.exit ], [ true, %bb.r ], [ true, %bb.s ], [ true, %.preheader50 ], [ false, %bb.u ], [ false, %bb.v ], [ true, %bb.x ]
  ret i1 %.139
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKiS9_EEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !253
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !105
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !104  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !107  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !104
  %i.o = load i64, ptr %i.i, align 8, !tbaa !106
  store i64 %i.o, ptr %i.g, align 8, !tbaa !106
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !107
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !107
  store ptr %i.i, ptr %i.f, align 8, !tbaa !104
  store i64 0, ptr %i.q, align 8, !tbaa !107
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !111
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = icmp eq ptr %.pre11, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #29
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIiJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !104  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #29
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIiLc46EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::DecimalCastData.236", align 4 ; 25 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i32 0, ptr %9, align 4, !tbaa !577
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 %4, ptr %i.e, align 4, !tbaa !578
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 5
  store i8 %5, ptr %i.f, align 1, !tbaa !579
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 9 ; 2 uses
  %i.l = zext i8 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.o, ptr %i.p, align 4, !tbaa !580
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %bb.bn

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.s, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.t, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.r = load i8, ptr %.034154.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.r, label %bb.af [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
end_hunk_1
