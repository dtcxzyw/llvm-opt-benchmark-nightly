Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/non_def_con_class?download=true
inline.NumInlined: 273
inline.NumDeleted: 180
begin_hunk_0_@main:bb.a
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v14zoneD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.05.i.i = phi ptr [ %i.e, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  invoke void %i.f(ptr noundef %i.h)
          to label %.noexc.i unwind label %bb.b, !inline_history !0

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.i
  br i1 %.not.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #21
  unreachable

_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit:    ; preds = %.noexc.i, %bb.a
  %i.l = phi ptr [ %i.d, %bb.a ], [ %i.i, %.noexc.i ]
  tail call void @free(ptr noundef %i.l) #17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %.not5.i = icmp eq ptr %i.n, null
  br i1 %.not5.i, label %_ZN7msgpack2v14zone10chunk_listD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.n, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit ] ; 2 uses
  %i.o = load ptr, ptr %.06.i, align 8, !tbaa !25 ; 2 uses
  tail call void @free(ptr noundef nonnull %.06.i) #17
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN7msgpack2v14zone10chunk_listD2Ev.exit, label %.lr.ph.i, !llvm.loop !2

_ZN7msgpack2v14zone10chunk_listD2Ev.exit:         ; preds = %.lr.ph.i, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v113object_parser5parseINS0_24object_stringize_visitorEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62, %bb.a
  %i.e = phi ptr [ %.0.i38, %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62 ], [ %.pre, %bb.a ] ; 13 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  switch i32 %i.f, label %bb.z [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 10, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 9, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str, i64 noundef 4) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !31, !range !79, !noundef !77
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 4) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.3, i64 noundef 5) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.g:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.p) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.t) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.i:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !31
  %i.y = fptrunc double %i.x to float
  %i.z = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.aa = fpext float %i.y to double
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, double noundef %i.aa) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.j:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !31
  %i.ae = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, double noundef %i.ad) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.k:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !31
  %i.ak = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ai, i32 noundef %i.aj)
  br i1 %i.ak, label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.l:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !31
  %i.an = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.13, i64 noundef 10) ; 0 uses
  %i.ap = zext i32 %i.am to i64
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %i.ap)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.14, i64 noundef 2) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.m:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = zext i32 %i.at to i64
  %i.ax = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.17, i64 noundef 10) ; 0 uses
  %i.az = load i8, ptr %i.av, align 1, !tbaa !31
  %i.ba = sext i8 %i.az to i32
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef %i.ba) ; 2 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.18, i64 noundef 6) ; 0 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %i.aw)
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.14, i64 noundef 2) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.n:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !31
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.bg)
  br i1 %i.bh, label %bb.o, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31 ; 2 uses
  %i.bm = load i32, ptr %i.bj, align 8, !tbaa !31
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !101 ; 8 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !31
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bn, ptr %.sroa.549.0..sroa_idx, align 8, !tbaa !102
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i8 0, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !103
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 17
  store i8 0, ptr %.sroa.755.0..sroa_idx, align 1, !tbaa !103
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.br, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !41  ; 5 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.r, label %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
  unreachable

_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bx = sdiv exact i64 %i.bv, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 384307168202282325)
  %i.cb = select i1 %i.bz, i64 384307168202282325, i64 %i.ca ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cc = mul nuw nsw i64 %i.cb, 24
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #22 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv ; 4 uses
  store ptr %i.bl, ptr %i.ce, align 8, !tbaa !31
  %.sroa.549.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.bn, ptr %.sroa.549.0..sroa_idx50, align 8, !tbaa !102
  %.sroa.652.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i8 0, ptr %.sroa.652.0..sroa_idx53, align 8, !tbaa !103
  %.sroa.755.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.ce, i64 17
  store i8 0, ptr %.sroa.755.0..sroa_idx56, align 1, !tbaa !103
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %i.cd, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %i.bs, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !104, !alias.scope !105
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !97

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cd, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #20
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !41
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !101
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.p, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.cj = load ptr, ptr %0, align 8, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !31
  %i.cm = icmp ne i32 %i.cl, 0
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.t:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !31
  %i.cp = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.co)
  br i1 %i.cp, label %bb.u, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !31 ; 2 uses
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !31
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !101 ; 8 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not.i.i23 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.cv, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !103
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 17
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !103
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.cz, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36

bb.w:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !41  ; 5 uses
  %i.db = ptrtoint ptr %i.cw to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 4 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.x, label %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
  unreachable

_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24: ; preds = %bb.w
  %i.df = sdiv exact i64 %i.dd, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i25 = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i25, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 384307168202282325)
  %i.dj = select i1 %i.dh, i64 384307168202282325, i64 %i.di ; 3 uses
  %.not.i.i.i.i26 = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i26)
  %i.dk = mul nuw nsw i64 %i.dj, 24
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #22 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd ; 4 uses
  store ptr %i.ct, ptr %i.dm, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.cv, ptr %.sroa.5.0..sroa_idx40, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx42, align 8, !tbaa !103
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.dm, i64 17
  store i8 1, ptr %.sroa.7.0..sroa_idx44, align 1, !tbaa !103
  %.not10.i.i.i.i.i.i27 = icmp eq ptr %i.da, %i.cw
  br i1 %.not10.i.i.i.i.i.i27, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24, %.lr.ph.i.i.i.i.i.i28
  %.012.i.i.i.i.i.i29 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i28 ], [ %i.dl, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  %.0911.i.i.i.i.i.i30 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i28 ], [ %i.da, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i30, i64 24, i1 false), !tbaa.struct !104, !alias.scope !106
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i30, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %i.dn, %i.cw
  br i1 %.not.i.i.i.i.i.i31, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28, !llvm.loop !97

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i.i28, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24
  %.0.lcssa.i.i.i.i.i.i33 = phi ptr [ %i.dl, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ], [ %i.do, %.lr.ph.i.i.i.i.i.i28 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i33, i64 24
  %.not.i23.i.i.i34 = icmp eq ptr %i.da, null
  br i1 %.not.i23.i.i.i34, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #20
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35: ; preds = %bb.y, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !41
  store ptr %i.dp, ptr %i.b, align 8, !tbaa !101
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.dq, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36: ; preds = %bb.v, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35
  %i.dr = load ptr, ptr %0, align 8, !tbaa !40
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !31
  %i.du = icmp ne i32 %i.dt, 0
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.z:                                             ; preds = %bb.b
  %i.dv = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.dv, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #19
  unreachable

_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit: ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.k
  %.021.shrunk = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.f ], [ %i.du, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36 ], [ %i.cm, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit ]
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !107 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %bb.aa

bb.aa:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit
  br i1 %.021.shrunk, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit: ; preds = %bb.aa, %bb.ap
  %i.dz = phi ptr [ %i.fz, %bb.ap ], [ %i.dx, %bb.aa ] ; 7 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -16 ; 5 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !109 ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !110, !range !79, !noundef !77
  %i.ef = trunc nuw i8 %i.ee to i1                ; 2 uses
  br i1 %i.ec, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4
  store ptr %i.eh, ptr %i.d, align 8, !tbaa !80
  %i.ei = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  br i1 %i.ef, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ad:                                            ; preds = %bb.ab
  %i.ek = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.23, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ae:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  br i1 %i.ef, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.em = load i8, ptr %i.el, align 1, !tbaa !111, !range !79, !noundef !77
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.ep = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.24, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.eo, align 1, !tbaa !111
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ah:                                            ; preds = %bb.af
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !81
  %i.eu = add i32 %i.et, -1                       ; 2 uses
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !81
  %.not.i.i37 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i37, label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.25, i64 noundef 1) ; 0 uses
  %.pre13.i = load i64, ptr %i.ea, align 8, !tbaa !109
  br label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i

_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i: ; preds = %bb.ai, %bb.ah
  %i.ex = phi i64 [ %.pre13.i, %bb.ai ], [ %i.eb, %bb.ah ]
  %i.ey = add i64 %i.ex, -1                       ; 2 uses
  store i64 %i.ey, ptr %i.ea, align 8, !tbaa !109
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -4
  store ptr %i.fb, ptr %i.d, align 8, !tbaa !80
  %i.fc = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.fe = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.ff = getelementptr inbounds i8, ptr %i.dz, i64 -24 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !31
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !31
  store i8 1, ptr %i.fe, align 1, !tbaa !111
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.al:                                            ; preds = %bb.ae
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !81
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !81
  %.not.i12.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i12.i, label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fm = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.25, i64 noundef 1) ; 0 uses
  %.pre.i = load i64, ptr %i.ea, align 8, !tbaa !109
  br label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i

_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i: ; preds = %bb.am, %bb.al
  %i.fo = phi i64 [ %.pre.i, %bb.am ], [ %i.eb, %bb.al ]
  %i.fp = add i64 %i.fo, -1                       ; 2 uses
  store i64 %i.fp, ptr %i.ea, align 8, !tbaa !109
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4
  store ptr %i.fs, ptr %i.d, align 8, !tbaa !80
  %i.ft = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.fu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull @.str.23, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.fv = getelementptr inbounds i8, ptr %i.dz, i64 -24 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !31
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ap:                                            ; preds = %bb.ad, %bb.aj, %bb.ac, %bb.an
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -24 ; 3 uses
  store ptr %i.fz, ptr %i.b, align 8, !tbaa !101
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.gb = icmp eq ptr %i.ga, %i.fz
  br i1 %i.gb, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62: ; preds = %bb.ak, %bb.ag, %bb.ao, %bb.aa
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !107 ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -24
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -8
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !110, !range !79, !noundef !77
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = load ptr, ptr %i.gd, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.gc, i64 -7
  %i.gj = load i8, ptr %i.gi, align 1, !range !79
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = xor i1 %i.gk, true
  %i.gm = select i1 %i.gg, i1 %i.gl, i1 false
  %.0.idx.i = select i1 %i.gm, i64 24, i64 0
  %.0.i38 = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.0.idx.i ; 2 uses
  store ptr %.0.i38, ptr %0, align 8, !tbaa !40
  br label %bb.b

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64: ; preds = %bb.k, %bb.n, %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit, %bb.t, %bb.ap
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 34, ptr %i.c, align 1, !tbaa !31
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

end_hunk_0
begin_hunk_1_@_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 34, ptr %i.b, align 1, !tbaa !31
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !114
  %.not.i14 = icmp eq i64 %i.s, 0
  br i1 %.not.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

bb.e:                                             ; preds = %._crit_edge
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 true

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !31    ; 6 uses
  switch i8 %i.w, label %bb.n [
    i8 92, label %bb.f
    i8 34, label %bb.g
    i8 47, label %bb.h
    i8 8, label %bb.i
    i8 12, label %bb.j
    i8 10, label %bb.k
    i8 13, label %bb.l
    i8 9, label %bb.m
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.g:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.j:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.8, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %.lr.ph
  %i.ah = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.9, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.l:                                             ; preds = %.lr.ph
  %i.aj = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph
  %i.al = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.11, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %.lr.ph
  %i.an = icmp ult i8 %i.w, 32
  %i.ao = icmp eq i8 %i.w, 127
  %or.cond = or i1 %i.an, %i.ao
  %i.ap = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78 ; 12 uses
  br i1 %or.cond, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !115
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.12, i64 noundef 2) ; 0 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24    ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.ap, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !115
  %i.bd = and i32 %i.bc, -75
  %i.be = or disjoint i32 %i.bd, 8
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !116
  %i.bf = load i64, ptr %i.ay, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.ap, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 4, ptr %i.bh, align 8, !tbaa !114
  %i.bi = load i64, ptr %i.ay, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.ap, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 225 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !117, !range !79, !noundef !77
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !60 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !65
  %.not.i1.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i1.i.i.i.i, label %bb.r, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo)
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef signext i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(570) %i.bo, i8 noundef signext 32), !inline_history !112 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.r, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.bk, align 1, !tbaa !117
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %bb.o, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  store i8 48, ptr %i.bv, align 8, !tbaa !118
  %i.bw = zext nneg i8 %i.w to i64
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef %i.bw) ; 0 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %i.av, ptr %i.cd, align 8, !tbaa !115
  br label %bb.v

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.w, ptr %i.a, align 1, !tbaa !31
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.ap, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !114
  %.not.i17 = icmp eq i64 %i.cj, 0
  br i1 %.not.i17, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

bb.u:                                             ; preds = %bb.s
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef signext %i.w) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !80
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store i32 %1, ptr %i.s, align 4, !tbaa !81
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !44
  store ptr %i.u, ptr %i.b, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !45
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !80
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store i32 %1, ptr %i.s, align 4, !tbaa !81
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !44
  store ptr %i.u, ptr %i.b, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !45
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.21, i64 noundef 1) ; 0 uses
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v110type_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt8bad_cast4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7msgpack2v14type12define_arrayIJKiEE14msgpack_objectEPNS_2v26objectERNS0_4zoneE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  store i32 7, ptr %1, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119  ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 7
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = add i64 %i.h, 24                         ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  br i1 %i.k, label %bb.b, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %2, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.022.i.i = phi i64 [ %i.l, %bb.b ], [ %i.n, %bb.d ] ; 5 uses
  %i.m = icmp ult i64 %.022.i.i, 31
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i.i.not = icmp eq i64 %.022.i.i, 0
  %i.n = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i.not, label %.thread, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ugt i64 %.022.i.i, -9
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %.2.i.i8 = phi i64 [ %.022.i.i, %bb.e ], [ 31, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.2.i.i8, 8
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #18 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.r, null
  br i1 %.not27.i.i, label %bb.g, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.g:                                             ; preds = %.thread
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  store ptr %i.v, ptr %i.r, align 8, !tbaa !25
  store ptr %i.r, ptr %i.u, align 8, !tbaa !23
  %i.w = getelementptr i8, ptr %i.r, i64 15
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, -8                         ; 2 uses
  %i.z = ptrtoint ptr %i.t to i64
  %reass.sub10 = sub i64 %i.y, %i.z
  %i.aa = add i64 %reass.sub10, 24
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.a, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.ab = phi ptr [ %i.t, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.c, %bb.a ]
  %i.ac = phi i64 [ %.2.i.i8, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.j, %bb.a ]
  %.014.i = phi i64 [ %i.aa, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.i, %bb.a ] ; 2 uses
  %.0.in.i = phi i64 [ %i.y, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.f, %bb.a ]
  %.0.i = inttoptr i64 %.0.in.i to ptr            ; 3 uses
  %i.ad = sub i64 %i.ac, %.014.i
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.014.i
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !119
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !31
  store i32 1, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %0, align 8, !tbaa !122, !nonnull !77, !align !123
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !81 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0                   ; 2 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = zext nneg i32 %i.ai to i64
  %.sink6.i.i.i.i.i.i.i = select i1 %i.aj, i32 3, i32 2
  %.sink.i.i.i.i.i.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.al
  store i32 %.sink6.i.i.i.i.i.i.i, ptr %.0.i, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_1
