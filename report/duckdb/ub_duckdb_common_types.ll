Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41209
inline.NumDeleted: 6301
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb4Blob8ToStringB5cxx11ENS_8string_tE:bb.a
  br label %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.1

_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.1: ; preds = %bb.c, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i
  %.sink.i.1 = phi i64 [ 1, %bb.c ], [ 4, %switch.early.test.i.i.1 ], [ 4, %switch.early.test.i.i.1 ], [ 4, %switch.early.test.i.i.1 ], [ 4, %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i ]
  %i.q = add i64 %.sink.i.1, %i.l                 ; 3 uses
  %i.r = add nuw nsw i64 %.09.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit.loopexit.unr-lcssa: ; preds = %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.r, %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit.loopexit.unr-lcssa ]
  %.078.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.q, %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %.09.i.epil.init
  %i.t = load i8, ptr %i.s, align 1, !tbaa !871   ; 2 uses
  %i.u = add i8 %i.t, -32
  %or.cond.i.i.epil = icmp ult i8 %i.u, 95
  br i1 %or.cond.i.i.epil, label %switch.early.test.i.i.epil, label %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.epil

switch.early.test.i.i.epil:                       ; preds = %.lr.ph.i.epil.preheader
  switch i8 %i.t, label %bb.d [
    i8 92, label %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.epil
    i8 39, label %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.epil
    i8 34, label %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.epil
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.epil
  br label %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.epil

_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.epil: ; preds = %bb.d, %switch.early.test.i.i.epil, %switch.early.test.i.i.epil, %switch.early.test.i.i.epil, %.lr.ph.i.epil.preheader
  %.sink.i.epil = phi i64 [ 1, %bb.d ], [ 4, %switch.early.test.i.i.epil ], [ 4, %switch.early.test.i.i.epil ], [ 4, %switch.early.test.i.i.epil ], [ 4, %.lr.ph.i.epil.preheader ]
  %i.v = add i64 %.sink.i.epil, %.078.i.epil.init
  br label %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit

_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit: ; preds = %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.epil, %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit.loopexit.unr-lcssa, %bb.a
  %.07.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.q, %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit.loopexit.unr-lcssa ], [ %i.v, %_ZN6duckdb18IsRegularCharacterEh.exit.thread.i.epil ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.07.lcssa.i) #48, !noalias !1985 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %1, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = select i1 %i.d, ptr %i.y, ptr %2
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit, %bb.f
  %.024.i = phi i64 [ %i.at, %bb.f ], [ 0, %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit ] ; 2 uses
  %.02223.i = phi i64 [ %.1.i, %bb.f ], [ 0, %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.024.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !871 ; 4 uses
  %i.ac = add i8 %i.ab, -32
  %or.cond.i.i11 = icmp ult i8 %i.ac, 95
  br i1 %or.cond.i.i11, label %switch.early.test.i.i13, label %bb.e

switch.early.test.i.i13:                          ; preds = %.lr.ph.i10
  switch i8 %i.ab, label %_ZN6duckdb18IsRegularCharacterEh.exit.i [
    i8 92, label %bb.e
    i8 39, label %bb.e
    i8 34, label %bb.e
  ]

_ZN6duckdb18IsRegularCharacterEh.exit.i:          ; preds = %switch.early.test.i.i13
  %i.ad = add i64 %.02223.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %.02223.i
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !871
  br label %bb.f

bb.e:                                             ; preds = %switch.early.test.i.i13, %switch.early.test.i.i13, %switch.early.test.i.i13, %.lr.ph.i10
  %i.af = zext i8 %i.ab to i32                    ; 2 uses
  %i.ag = lshr i32 %i.af, 4
  %i.ah = and i32 %i.af, 15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %.02223.i ; 4 uses
  store i8 92, ptr %i.ai, align 1, !tbaa !871
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  store i8 120, ptr %i.aj, align 1, !tbaa !871
  %i.ak = zext nneg i32 %i.ag to i64
  %i.al = getelementptr inbounds nuw i8, ptr @.str.12, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !871
  %i.an = getelementptr i8, ptr %i.ai, i64 2
  store i8 %i.am, ptr %i.an, align 1, !tbaa !871
  %i.ao = zext nneg i32 %i.ah to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @.str.12, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !871
  %i.ar = add i64 %.02223.i, 4
  %i.as = getelementptr i8, ptr %i.ai, i64 3
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !871
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6duckdb18IsRegularCharacterEh.exit.i
  %.1.i = phi i64 [ %i.ad, %_ZN6duckdb18IsRegularCharacterEh.exit.i ], [ %i.ar, %bb.e ]
  %i.at = add nuw nsw i64 %.024.i, 1              ; 2 uses
  %exitcond.not.i12 = icmp eq i64 %i.at, %i.g
  br i1 %exitcond.not.i12, label %.loopexit, label %.lr.ph.i10, !llvm.loop !6

.loopexit:                                        ; preds = %bb.f, %_ZN6duckdb4Blob13GetStringSizeENS_8string_tE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %.07.lcssa.i, ptr %i.a, align 8, !tbaa !843
  %i.av = icmp ugt i64 %.07.lcssa.i, 15
  br i1 %i.av, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit18 ; 2 uses

.noexc14:                                         ; preds = %.noexc.i
  store ptr %i.aw, ptr %0, align 8, !tbaa !833
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !843
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !871
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc14, %.loopexit
  %i.ay = phi ptr [ %i.aw, %.noexc14 ], [ %i.au, %.loopexit ] ; 2 uses
  switch i64 %.07.lcssa.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.az = load i8, ptr %i.w, align 1, !tbaa !871
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !871
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr nonnull align 1 %i.w, i64 %.07.lcssa.i, i1 false)
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !843 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !870
  %i.bc = load ptr, ptr %0, align 8, !tbaa !833
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @_ZdaPv(ptr noundef nonnull %i.w) #47
  ret void

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit18: ; preds = %.noexc.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.w) #47
  resume { ptr, i32 } %i.be
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb4Blob14TryGetBlobSizeENS_8string_tERmRNS_14CastParametersE(i64 %0, ptr %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr noundef nonnull align 8 dereferenceable(57) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !2005 {
bb.a:
  %4 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %0, ptr %7, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.g, align 8
  %i.h = trunc i64 %0 to i32                      ; 8 uses
  %i.i = icmp ult i32 %i.h, 13
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.k = select i1 %i.i, ptr %i.j, ptr %1         ; 5 uses
  %i.l = and i64 %0, 4294967295                   ; 8 uses
  store i64 0, ptr %2, align 8, !tbaa !843
  %.not63183 = icmp eq i32 %i.h, 0
  %i.m = lshr i64 %0, 32
  %i.n = trunc i64 %i.m to i8                     ; 3 uses
  br i1 %.not63183, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.al
  %.039185 = phi i64 [ %i.fi, %bb.al ], [ 0, %bb.a ] ; 3 uses
  %storemerge.in182184 = phi i64 [ %storemerge, %bb.al ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.039185 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !871   ; 2 uses
  %i.q = icmp eq i8 %i.p, 92
  br i1 %i.q, label %bb.b, label %bb.z

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.039185, 3              ; 3 uses
  %.not = icmp samesign ult i64 %i.r, %i.l
  br i1 %.not, label %bb.m, label %.noexc.i

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.s, ptr %9, align 8, !tbaa !869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  store i64 120, ptr %i.f, align 8, !tbaa !843
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.t, ptr %9, align 8, !tbaa !833
  %i.u = load i64, ptr %i.f, align 8, !tbaa !843  ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.t, ptr noundef nonnull align 1 dereferenceable(120) @.str.13, i64 120, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !870
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.x, ptr %10, align 8, !tbaa !869, !alias.scope !2006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46, !noalias !2006
  store i64 %i.l, ptr %i.e, align 8, !tbaa !843, !noalias !2006
  %i.y = icmp ugt i32 %i.h, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc66 unwind label %bb.k   ; 2 uses

.noexc66:                                         ; preds = %.noexc.i.i
  store ptr %i.z, ptr %10, align 8, !tbaa !833, !alias.scope !2006
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !843, !noalias !2006
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !871, !alias.scope !2006
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc66, %.noexc
  %i.ab = phi ptr [ %i.z, %.noexc66 ], [ %i.x, %.noexc ] ; 2 uses
  %cond236 = icmp eq i32 %i.h, 1
  br i1 %cond236, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  store i8 %i.n, ptr %i.ab, align 1, !tbaa !871
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.k, i64 %i.l, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !843, !noalias !2006 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !870, !alias.scope !2006
  %i.ae = load ptr, ptr %10, align 8, !tbaa !833, !alias.scope !2006
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46, !noalias !2006
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46, !noalias !2007
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !2007
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.f unwind label %.body

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %6, align 8, !tbaa !848, !noalias !2007 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !849, !noalias !2007 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.ag, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !833 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ak) #47
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %6, align 8, !tbaa !848, !noalias !2007
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.f
  %i.ao = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #47
  br label %bb.h

.body:                                            ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46, !noalias !2007
  %i.aq = load ptr, ptr %10, align 8, !tbaa !833  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.x
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

bb.h:                                             ; preds = %bb.g, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46, !noalias !2007
  %i.as = load ptr, ptr %10, align 8, !tbaa !833  ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.x
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.as) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.au = load ptr, ptr %9, align 8, !tbaa !833   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.s
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.au) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(57) %3)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.aw = load ptr, ptr %8, align 8, !tbaa !833   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aw) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %.critedge

bb.j:                                             ; preds = %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.k:                                             ; preds = %.noexc.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.aq) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.k
  %.pn57 = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.ap, %.body ] ; 2 uses
  %i.bb = load ptr, ptr %9, align 8, !tbaa !833   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.s
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  call void @_ZdlPv(ptr noundef %i.bb) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !833   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.be) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %.pn60 = phi { ptr, i32 } [ %.pn57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.az, %bb.j ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.bd, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %bb.am

bb.m:                                             ; preds = %bb.b
  %i.bh = getelementptr i8, ptr %i.o, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !871
  %.not50 = icmp eq i8 %i.bi, 120
  br i1 %.not50, label %bb.n, label %.noexc.i83

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %i.o, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !871
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb4Blob7HEX_MAPE, i64 %i.bl
end_hunk_0
begin_hunk_1_@_ZN6duckdb4Blob14TryGetBlobSizeENS_8string_tERmRNS_14CastParametersE:bb.a
bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.ex = load ptr, ptr %15, align 8, !tbaa !833  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.ex) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  br label %.critedge

bb.ai:                                            ; preds = %.noexc.i132
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.aj:                                            ; preds = %.noexc.i.i136
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %.body152
  call void @_ZdlPv(ptr noundef %i.er) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %.body152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.fb, %bb.aj ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.eq, %.body152 ] ; 2 uses
  %i.fc = load ptr, ptr %16, align 8, !tbaa !833  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.dt
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  call void @_ZdlPv(ptr noundef %i.fc) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %15, align 8, !tbaa !833  ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.ff) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  %.pn48 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.fa, %bb.ai ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.fe, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  br label %bb.am

bb.al:                                            ; preds = %bb.z, %bb.o
  %.140 = phi i64 [ %i.r, %bb.o ], [ %.039185, %bb.z ]
  %storemerge = add i64 %storemerge.in182184, 1   ; 2 uses
  store i64 %storemerge, ptr %2, align 8, !tbaa !843
  %i.fi = add nuw i64 %.140, 1                    ; 2 uses
  %.not63.not = icmp ult i64 %i.fi, %i.l
  br i1 %.not63.not, label %.lr.ph, label %.critedge, !llvm.loop !2004

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  resume { ptr, i32 } %.pn60.pn

.critedge:                                        ; preds = %bb.al, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %.not63179 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ true, %bb.a ], [ true, %bb.al ]
  ret i1 %.not63179
}

declare void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb4Blob11GetBlobSizeENS_8string_tE(i64 %0, ptr %1) local_unnamed_addr #3 align 2 !guid !2012 {
bb.a:
  %2 = alloca %"struct.duckdb::CastParameters", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store ptr null, ptr %2, align 8, !tbaa !877
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !886
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !887
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 0, ptr %i.d, align 8, !tbaa !888
  %i.e = call noundef i64 @_ZN6duckdb4Blob11GetBlobSizeENS_8string_tERNS_14CastParametersE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(57) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb4Blob11GetBlobSizeENS_8string_tERNS_14CastParametersE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(57) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !2013 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = call noundef zeroext i1 @_ZN6duckdb4Blob14TryGetBlobSizeENS_8string_tERmRNS_14CastParametersE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(57) %2)
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !833    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #46
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %.pn12, %bb.f ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  resume { ptr, i32 } %.pn11

bb.h:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i64 %i.i

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Blob6ToBlobENS_8string_tEPh(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !2015 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  store i64 %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = trunc i64 %0 to i32                      ; 2 uses
  %i.c = icmp ult i32 %i.b, 13
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = select i1 %i.c, ptr %i.d, ptr %1         ; 2 uses
  %i.f = and i64 %0, 4294967295
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.02435 = phi i64 [ %i.af, %bb.j ], [ 0, %bb.a ] ; 3 uses
  %.02634 = phi i64 [ %.127, %bb.j ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.02435 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !871   ; 3 uses
  %i.i = icmp eq i8 %i.h, 92
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.g, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !871
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb4Blob7HEX_MAPE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !165
  %i.o = add nuw nsw i64 %.02435, 3               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !871
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb4Blob7HEX_MAPE, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !165
  %i.u = shl i32 %i.n, 4
  %i.v = add nsw i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i8
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.x = icmp sgt i8 %i.h, -1
  br i1 %i.x, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !833   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ab) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.y) #46
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn32 = phi { ptr, i32 } [ %.pn33, %bb.h ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ %i.w, %bb.b ], [ %i.h, %bb.c ]
  %.125 = phi i64 [ %i.o, %bb.b ], [ %.02435, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.02634
  store i8 %.sink, ptr %i.ae, align 1, !tbaa !871
  %.127 = add i64 %.02634, 1
  %i.af = add i64 %.125, 1                        ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.f
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !2014

bb.k:                                             ; preds = %bb.f
  unreachable
}

declare void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Blob6ToBlobB5cxx11ENS_8string_tE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #3 align 2 !guid !2016 {
bb.a:
  %3 = alloca %"struct.duckdb::CastParameters", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  store ptr null, ptr %3, align 8, !tbaa !877
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !886
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !887
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.d, align 8, !tbaa !888
  call void @_ZN6duckdb4Blob6ToBlobB5cxx11ENS_8string_tERNS_14CastParametersE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(57) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Blob6ToBlobB5cxx11ENS_8string_tERNS_14CastParametersE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(57) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !2019 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @_ZN6duckdb4Blob11GetBlobSizeENS_8string_tERNS_14CastParametersE(i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(57) %3) ; 5 uses
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #48, !noalias !2020 ; 5 uses
  invoke void @_ZN6duckdb4Blob6ToBlobENS_8string_tEPh(i64 %1, ptr %2, ptr noundef nonnull %i.c)
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit13

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.b, ptr %i.a, align 8, !tbaa !843
  %i.e = icmp ugt i64 %i.b, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit13 ; 2 uses

.noexc10:                                         ; preds = %.noexc.i
  store ptr %i.f, ptr %0, align 8, !tbaa !833
  %i.g = load i64, ptr %i.a, align 8, !tbaa !843
  store i64 %i.g, ptr %i.d, align 8, !tbaa !871
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc10, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc10 ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.b, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.c, align 1, !tbaa !871
  store i8 %i.i, ptr %i.h, align 1, !tbaa !871
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.c, i64 %i.b, i1 false)
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !843  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !870
  %i.l = load ptr, ptr %0, align 8, !tbaa !833
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @_ZdaPv(ptr noundef nonnull %i.c) #47
  ret void

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit13: ; preds = %bb.a, %.noexc.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.c) #47
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Blob8ToBase64B5cxx11ENS_8string_tE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !2023 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = and i64 %1, 4294967295                   ; 3 uses
  %i.c = add nuw nsw i64 %i.b, 2
  %i.d = udiv i64 %i.c, 3
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 5 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #48, !noalias !2024 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 0, i64 %i.e, i1 false), !noalias !2024
  tail call void @_ZN6duckdb4Blob8ToBase64ENS_8string_tEPc(i64 %1, ptr %2, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.e, ptr %i.a, align 8, !tbaa !843
  %i.h = icmp samesign ugt i64 %i.b, 9
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit12 ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.i, ptr %0, align 8, !tbaa !833
  %i.j = load i64, ptr %i.a, align 8, !tbaa !843
  store i64 %i.j, ptr %i.g, align 8, !tbaa !871
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %cond = icmp eq i64 %i.b, 0
  br i1 %cond, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.k = phi ptr [ %i.i, %._crit_edge.i.i.thread ], [ %i.g, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.f, i64 %i.e, i1 false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !843
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !833
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

end_hunk_1
begin_hunk_2_@_ZN6duckdb12ValidityMask5WriteERNS_11WriteStreamEm:bb.a
  br i1 %.not38.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i: ; preds = %bb.b
  %i.i = and i64 %2, 63                           ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = lshr i64 -1, %i.j
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i
  %i.l = icmp eq i64 %i.h, 1
  br i1 %i.l, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader
  %unroll_iter = and i64 %i.h, 288230376151711742
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i: ; preds = %.loopexit.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new
  %.02236.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %.2.us.i.1, %.loopexit.us.i.1 ] ; 3 uses
  %.02535.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %i.s, %.loopexit.us.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %niter.next.1, %.loopexit.us.i.1 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.02535.us.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !843  ; 2 uses
  switch i64 %i.n, label %.lr.ph.us.i [
    i64 -1, label %bb.c
    i64 0, label %.loopexit.us.i
  ]

.lr.ph.us.i:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i, %.lr.ph.us.i
  %.134.us.i = phi i64 [ %i.q, %.lr.ph.us.i ], [ %.02236.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ]
  %.12433.us.i = phi i64 [ %i.p, %.lr.ph.us.i ], [ %i.n, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ] ; 2 uses
  %i.o = add i64 %.12433.us.i, -1
  %i.p = and i64 %i.o, %.12433.us.i               ; 2 uses
  %i.q = add i64 %.134.us.i, 1                    ; 2 uses
  %.not29.us.i = icmp eq i64 %i.p, 0
  br i1 %.not29.us.i, label %.loopexit.us.i, label %.lr.ph.us.i, !llvm.loop !3049

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i
  %i.r = add i64 %.02236.us.i, 64
  br label %.loopexit.us.i, !llvm.loop !3050

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i, %bb.c, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i
  %.2.us.i = phi i64 [ %i.r, %bb.c ], [ %.02236.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ], [ %i.q, %.lr.ph.us.i ] ; 3 uses
  %i.s = add nuw nsw i64 %.02535.us.i, 2          ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.02535.us.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !843  ; 2 uses
  switch i64 %i.v, label %.lr.ph.us.i.1 [
    i64 -1, label %bb.d
    i64 0, label %.loopexit.us.i.1
  ]

bb.d:                                             ; preds = %.loopexit.us.i
  %i.w = add i64 %.2.us.i, 64
  br label %.loopexit.us.i.1, !llvm.loop !3050

.lr.ph.us.i.1:                                    ; preds = %.loopexit.us.i, %.lr.ph.us.i.1
  %.134.us.i.1 = phi i64 [ %i.z, %.lr.ph.us.i.1 ], [ %.2.us.i, %.loopexit.us.i ]
  %.12433.us.i.1 = phi i64 [ %i.y, %.lr.ph.us.i.1 ], [ %i.v, %.loopexit.us.i ] ; 2 uses
  %i.x = add i64 %.12433.us.i.1, -1
  %i.y = and i64 %i.x, %.12433.us.i.1             ; 2 uses
  %i.z = add i64 %.134.us.i.1, 1                  ; 2 uses
  %.not29.us.i.1 = icmp eq i64 %i.y, 0
  br i1 %.not29.us.i.1, label %.loopexit.us.i.1, label %.lr.ph.us.i.1, !llvm.loop !3049

.loopexit.us.i.1:                                 ; preds = %.lr.ph.us.i.1, %bb.d, %.loopexit.us.i
  %.2.us.i.1 = phi i64 [ %i.w, %bb.d ], [ %.2.us.i, %.loopexit.us.i ], [ %i.z, %.lr.ph.us.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i, %.loopexit.i
  %.02236.i = phi i64 [ %.2.i, %.loopexit.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i ] ; 3 uses
  %.02535.i = phi i64 [ %i.aa, %.loopexit.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i ] ; 2 uses
  %i.aa = add nuw nsw i64 %.02535.i, 1            ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.02535.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !843 ; 3 uses
  %.not48.i = icmp eq i64 %i.aa, %i.h             ; 2 uses
  br i1 %.not48.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.ad = and i64 %i.ac, %i.k
  br label %bb.h

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.ae = icmp eq i64 %i.ac, -1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = add i64 %.02236.i, 64
  br label %.loopexit.i, !llvm.loop !3050

bb.h:                                             ; preds = %bb.f, %bb.e
  %.023.i = phi i64 [ %i.ad, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %.not2932.i = icmp eq i64 %.023.i, 0
  br i1 %.not2932.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.134.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %.02236.i, %bb.h ]
  %.12433.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.023.i, %bb.h ] ; 2 uses
  %i.ag = add i64 %.12433.i, -1
  %i.ah = and i64 %i.ag, %.12433.i                ; 2 uses
  %i.ai = add i64 %.134.i, 1                      ; 2 uses
  %.not29.i = icmp eq i64 %i.ah, 0
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3049

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.h, %bb.g
  %.2.i = phi i64 [ %i.af, %bb.g ], [ %.02236.i, %bb.h ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  br i1 %.not48.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa: ; preds = %.loopexit.us.i.1
  %i.aj = and i64 %.pre, 64
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader
  %.02236.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader ], [ %.2.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa ] ; 3 uses
  %.02535.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader ], [ %i.s, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod83 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.02535.us.i.epil.init
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !843 ; 2 uses
  switch i64 %i.al, label %.lr.ph.us.i.epil [
    i64 -1, label %bb.i
    i64 0, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit
  ]

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader
  %i.am = add i64 %.02236.us.i.epil.init, 64
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, !llvm.loop !3050

.lr.ph.us.i.epil:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, %.lr.ph.us.i.epil
  %.134.us.i.epil = phi i64 [ %i.ap, %.lr.ph.us.i.epil ], [ %.02236.us.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ]
  %.12433.us.i.epil = phi i64 [ %i.ao, %.lr.ph.us.i.epil ], [ %i.al, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ] ; 2 uses
  %i.an = add i64 %.12433.us.i.epil, -1
  %i.ao = and i64 %i.an, %.12433.us.i.epil        ; 2 uses
  %i.ap = add i64 %.134.us.i.epil, 1              ; 2 uses
  %.not29.us.i.epil = icmp eq i64 %i.ao, 0
  br i1 %.not29.us.i.epil, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.us.i.epil, !llvm.loop !3049

_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit: ; preds = %.loopexit.i, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, %bb.a, %bb.b
  %.0.i = phi i64 [ %i.ap, %.lr.ph.us.i.epil ], [ %2, %bb.a ], [ 0, %bb.b ], [ %.2.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa ], [ %i.am, %bb.i ], [ %.02236.us.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ], [ %.2.i, %.loopexit.i ] ; 3 uses
  %i.aq = sub i64 %2, %.0.i                       ; 2 uses
  %i.ar = lshr i64 %.pre, 3
  %i.as = and i64 %i.ar, 2305843009213693944      ; 3 uses
  %.not = icmp ult i64 %2, 65535                  ; 2 uses
  %i.at = select i1 %.not, i64 1, i64 2           ; 2 uses
  %i.au = shl i64 %.0.i, %i.at
  %i.av = add i64 %i.au, 4                        ; 2 uses
  %i.aw = shl i64 %i.aq, %i.at
  %i.ax = add i64 %i.aw, 4                        ; 2 uses
  %i.ay = icmp ult i64 %i.av, %i.as
  %i.az = icmp ult i64 %i.ax, %i.as
  %or.cond = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit
  %i.ba = icmp ult i64 %i.av, %i.ax
  %.fr = freeze i1 %i.ba                          ; 4 uses
  %i.bb = select i1 %.fr, i8 1, i8 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.bb, ptr %i.e, align 1, !tbaa !1296
  %i.bc = load ptr, ptr %1, align 8, !tbaa !982
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 1), !inline_history !3051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.be = call noundef i64 @llvm.umin.i64(i64 %.0.i, i64 %i.aq)
  %i.bf = call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.bf, ptr %i.d, align 4, !tbaa !165
  %i.bg = load ptr, ptr %1, align 8, !tbaa !982
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 4), !inline_history !3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.g, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.040.us = phi i64 [ %i.bu, %bb.l ], [ 0, %.lr.ph ] ; 4 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !1058  ; 2 uses
  %.not.i36.us = icmp eq ptr %i.bi, null
  br i1 %.not.i36.us, label %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %.lr.ph.split.us
  %i.bj = lshr i64 %.040.us, 6
  %i.bk = and i64 %.040.us, 63
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !843
  %i.bn = shl nuw i64 1, %i.bk
  %i.bo = and i64 %i.bm, %i.bn
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = xor i1 %.fr, %i.bp
  br i1 %i.bq, label %bb.l, label %bb.k

._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge.us: ; preds = %.lr.ph.split.us
  br i1 %.fr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.br = trunc nuw i64 %.040.us to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.br, ptr %i.b, align 2, !tbaa !1072
  %i.bs = load ptr, ptr %1, align 8, !tbaa !982
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 2), !inline_history !3053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.bu = add nuw i64 %.040.us, 1                 ; 2 uses
  %exitcond57.not = icmp eq i64 %i.bu, %2
  br i1 %exitcond57.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !3054

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.fr, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.m
  %.040.us41 = phi i64 [ %i.cf, %bb.m ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !1058  ; 2 uses
  %.not.i36.us42 = icmp eq ptr %i.bv, null
  br i1 %.not.i36.us42, label %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge.us44, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us43

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us43: ; preds = %.lr.ph.split.split.us
  %i.bw = lshr i64 %.040.us41, 6
  %i.bx = and i64 %.040.us41, 63
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !843
  %i.ca = shl nuw i64 1, %i.bx
  %i.cb = and i64 %i.bz, %i.ca
  %.not50 = icmp eq i64 %i.cb, 0
  br i1 %.not50, label %bb.m, label %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge.us44

._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge.us44: ; preds = %.lr.ph.split.split.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us43
  %i.cc = trunc i64 %.040.us41 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.cc, ptr %i.c, align 4, !tbaa !165
  %i.cd = load ptr, ptr %1, align 8, !tbaa !982
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge.us44, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us43
  %i.cf = add nuw i64 %.040.us41, 1               ; 2 uses
  %exitcond56.not = icmp eq i64 %i.cf, %2
  br i1 %exitcond56.not, label %.loopexit, label %.lr.ph.split.split.us, !llvm.loop !3054

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.cg = load ptr, ptr %0, align 8, !tbaa !1058  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.loopexit, label %.lr.ph.split.split.split

.lr.ph.split.split.splitthread-pre-split:         ; preds = %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge
  %.pr = load ptr, ptr %0, align 8, !tbaa !1058
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %.lr.ph.split.split.splitthread-pre-split
  %i.ci = phi ptr [ %.pr, %.lr.ph.split.split.splitthread-pre-split ], [ %i.cg, %.lr.ph.split.split ] ; 2 uses
  %.040 = phi i64 [ %i.cs, %.lr.ph.split.split.splitthread-pre-split ], [ 0, %.lr.ph.split.split ] ; 4 uses
  %.not.i36 = icmp eq ptr %i.ci, null
  br i1 %.not.i36, label %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph.split.split.split
  %i.cj = lshr i64 %.040, 6
  %i.ck = and i64 %.040, 63
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !843
  %i.cn = shl nuw i64 1, %i.ck
  %i.co = and i64 %i.cm, %i.cn
  %.not49 = icmp eq i64 %i.co, 0
  br i1 %.not49, label %bb.n, label %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cp = trunc i64 %.040 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.cp, ptr %i.c, align 4, !tbaa !165
  %i.cq = load ptr, ptr %1, align 8, !tbaa !982
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge

._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge: ; preds = %.lr.ph.split.split.split, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.n
  %i.cs = add nuw i64 %.040, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split.splitthread-pre-split, !llvm.loop !3055

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !1296
  %i.ct = load ptr, ptr %1, align 8, !tbaa !982
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !3051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cv = load ptr, ptr %0, align 8, !tbaa !1058
  %i.cw = load ptr, ptr %1, align 8, !tbaa !982
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cv, i64 noundef %i.as)
  br label %.loopexit

.loopexit:                                        ; preds = %._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit_crit_edge, %bb.m, %bb.l, %.lr.ph.split.split, %bb.j, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12ValidityMask4ReadERNS_10ReadStreamEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #3 align 2 !guid !3061 {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.e = load ptr, ptr %1, align 8, !tbaa !982
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr null, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !3057
  %i.h = load i8, ptr %i.d, align 1, !tbaa !1296  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !1058
  %i.k = add i64 %2, 63
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 2305843009213693944
  %i.n = load ptr, ptr %1, align 8, !tbaa !982
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.j, i64 noundef %i.m)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp ult i64 %2, 65535                  ; 2 uses
  %i.p = icmp eq i8 %i.h, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  %i.q = load ptr, ptr %1, align 8, !tbaa !982
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr null, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !3058
  %i.t = load i32, ptr %i.c, align 4, !tbaa !165  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  br i1 %i.p, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = add i64 %2, 63
  %i.v = lshr i64 %i.u, 6                         ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !1058
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1066
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.y)
  br label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i

_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i: ; preds = %bb.e, %bb.d
  %i.z = icmp eq i64 %2, 0
  br i1 %i.z, label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i
  %i.aa = add nsw i64 %i.v, -1                    ; 2 uses
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %i.v) ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1058
  %i.ad = shl nuw nsw i64 %i.ab, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.ad, i1 false), !tbaa !843
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.f
  %.not.i.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.not.i, label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ae = and i64 %2, 63                          ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = shl nsw i64 -1, %i.ae
  %i.ah = select i1 %i.af, i64 0, i64 %i.ag
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1058
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aa
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !843
  br label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit: ; preds = %bb.g, %._crit_edge.i.i, %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i
  %i.ak = zext i32 %i.t to i64                    ; 2 uses
  %.not22 = icmp eq i32 %i.t, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph.split.us

_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit.thread: ; preds = %bb.c
  %.not2239 = icmp eq i32 %i.t, 0
  br i1 %.not2239, label %.loopexit, label %.lr.ph.thread

.lr.ph.thread:                                    ; preds = %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit.thread
  %i.al = zext i32 %i.t to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split
end_hunk_2
begin_hunk_3_@_ZN6duckdb5Value6BIGNUMERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !979, !noalias !3224
  %i.n = getelementptr inbounds nuw i8, ptr %.pr5.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !980, !noalias !3224
  %i.o = load ptr, ptr %.pr5.i, align 8, !tbaa !982, !noalias !3224
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3224
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr5.i) #46, !noalias !3224, !inline_history !3220
  %i.r = load ptr, ptr %.pr5.i, align 8, !tbaa !982, !noalias !3224
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !3224
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr5.i) #46, !noalias !3224, !inline_history !3220
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !871, !noalias !3224
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !165, !noalias !3224
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4, !noalias !3224
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !829

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr5.i) #46, !noalias !3224
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !977 ; 8 uses
  store <2 x ptr> %i.d, ptr %i.y, align 8, !tbaa !939
  %.not.i.i.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i5, label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ab, align 8, !tbaa !979
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !980
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !982
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #46, !inline_history !60
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !982
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #46, !inline_history !60
  br label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !871
  %.not.i.i.i.i.i6 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !165
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.n ], [ %i.ao, %bb.o ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.p, label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit, !prof !829

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #46
  br label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l, %bb.j
  ret void

bb.q:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #46
  br label %bb.s

bb.r:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #46
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.aq, %bb.q ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Bignum15VarcharToBignumB5cxx11ERKNS_8string_tE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !3230 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !871    ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge.thread.i, label %.thread

.thread:                                          ; preds = %bb.a
  %i.e = icmp ult i32 %i.c, 13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.e, ptr %i.f, ptr %i.h       ; 6 uses
  %i.j = zext i32 %i.c to i64                     ; 11 uses
  %i.k = load i8, ptr %i.i, align 1, !tbaa !871   ; 2 uses
  %i.l = icmp eq i8 %i.k, 45                      ; 3 uses
  %i.m = icmp eq i8 %i.k, 43
  %narrow157 = or i1 %i.l, %i.m                   ; 2 uses
  %i.n = zext i1 %narrow157 to i64                ; 3 uses
  %i.o = icmp samesign ult i64 %i.n, %i.j
  br i1 %i.o, label %.lr.ph.preheader.i, label %.critedge.thread.i

.lr.ph.preheader.i:                               ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !871
  %i.r = icmp eq i8 %i.q, 48
  br i1 %i.r, label %bb.b, label %.preheader53.i

bb.b:                                             ; preds = %.lr.ph.preheader.i
  %i.s = select i1 %narrow157, i64 2, i64 1       ; 4 uses
  %i.t = icmp samesign ult i64 %i.s, %i.j
  br i1 %i.t, label %.lr.ph.i, label %.critedge.i.thread121

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.4 = phi i64 [ %i.x, %bb.c ], [ %i.s, %bb.b ]  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %.4
  %i.v = load i8, ptr %i.u, align 1, !tbaa !871
  %i.w = icmp eq i8 %i.v, 48
  br i1 %i.w, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add nuw nsw i64 %.4, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.j
  br i1 %exitcond.not, label %_ZN6duckdb6Bignum17VarcharFormattingERKNS_8string_tERmS4_RbS5_.exit, label %.lr.ph.i, !llvm.loop !65

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.y = icmp eq i64 %.4, %i.j
  br i1 %i.y, label %_ZN6duckdb6Bignum17VarcharFormattingERKNS_8string_tERmS4_RbS5_.exit, label %.preheader53.i

.critedge.i.thread121:                            ; preds = %bb.b
  %i.z = icmp eq i64 %i.s, %i.j
  br i1 %i.z, label %_ZN6duckdb6Bignum17VarcharFormattingERKNS_8string_tERmS4_RbS5_.exit, label %.preheader53.i

.preheader53.i:                                   ; preds = %.lr.ph.preheader.i, %.critedge.i.thread121, %.critedge.i
  %.2 = phi i64 [ %.4, %.critedge.i ], [ %i.s, %.critedge.i.thread121 ], [ %i.n, %.lr.ph.preheader.i ] ; 4 uses
  %i.aa = icmp ult i64 %.2, %i.j
  br i1 %i.aa, label %.lr.ph65.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit

.lr.ph65.i:                                       ; preds = %.preheader53.i, %bb.d
  %.064.i = phi i64 [ %i.ae, %bb.d ], [ %.2, %.preheader53.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 %.064.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !871 ; 2 uses
  %i.ad = sext i8 %i.ac to i32
  %isdigittmp.i = add nsw i32 %i.ad, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph65.i
  %i.ae = add nuw nsw i64 %.064.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit, label %.lr.ph65.i, !llvm.loop !66

bb.e:                                             ; preds = %.lr.ph65.i
  %i.af = icmp eq i8 %i.ac, 46
  br i1 %i.af, label %.preheader.i.preheader, label %.critedge.thread.i

.preheader.i.preheader:                           ; preds = %bb.e
  %.1.i313 = add nuw nsw i64 %.064.i, 1           ; 2 uses
  %i.ag = icmp ult i64 %.1.i313, %i.j
  br i1 %i.ag, label %.lr.ph315, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit

.preheader.i:                                     ; preds = %.lr.ph315
  %.1.i = add nuw nsw i64 %.1.i314, 1             ; 2 uses
  %i.ah = icmp samesign ult i64 %.1.i, %i.j
  br i1 %i.ah, label %.lr.ph315, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit, !llvm.loop !67

.lr.ph315:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i314 = phi i64 [ %.1.i, %.preheader.i ], [ %.1.i313, %.preheader.i.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %.1.i314
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !871
  %i.ak = sext i8 %i.aj to i32
  %isdigittmp49.i = add nsw i32 %i.ak, -48
  %isdigit50.i = icmp ult i32 %isdigittmp49.i, 10
  br i1 %isdigit50.i, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !67

.critedge.thread.i:                               ; preds = %.lr.ph315, %.thread, %bb.a, %bb.e
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.174, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.f:                                             ; preds = %.critedge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZNK6duckdb8string_t9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb19ConversionExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.al unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %.critedge.thread.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %.042 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !833   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.ao) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.ar = load ptr, ptr %2, align 8, !tbaa !833   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.av = load ptr, ptr %2, align 8, !tbaa !833   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.av) #47
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ar) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.042, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.042, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread
  %.pn.pn134.ph = phi { ptr, i32 } [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn.pn134 = phi { ptr, i32 } [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn.pn134.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.al) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZN6duckdb6Bignum17VarcharFormattingERKNS_8string_tERmS4_RbS5_.exit: ; preds = %bb.c, %.critedge.i, %.critedge.i.thread121
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ay, ptr %0, align 8, !tbaa !869, !alias.scope !3231
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 4, i8 noundef signext 48)
  %i.az = load ptr, ptr %0, align 8, !tbaa !833, !alias.scope !3231 ; 3 uses
  store i8 -128, ptr %i.az, align 1, !tbaa !871
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !871
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 1, ptr %i.bb, align 1, !tbaa !871
  %i.bc = load ptr, ptr %0, align 8, !tbaa !833, !alias.scope !3231
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  store i8 0, ptr %i.bd, align 1, !tbaa !871
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.d, %.preheader.i, %.preheader.i.preheader, %.preheader53.i
  %.0111.ph = phi i64 [ %i.j, %.preheader53.i ], [ %.064.i, %.preheader.i.preheader ], [ %.064.i, %.preheader.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !869
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 3, i8 noundef signext 48)
  %i.bf = sub i64 %.0111.ph, %.2
  %i.bg = uitofp i64 %i.bf to double
  %i.bh = fmul nnan double %i.bg, 6.250000e-02
  %i.bi = tail call double @llvm.ceil.f64(double %i.bh)
  %i.bj = fptoui double %i.bi to i64              ; 2 uses
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %._crit_edge216, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.k

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.bm = icmp eq ptr %.sroa.083.1, %.sroa.16.4
  br i1 %i.bm, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %.preheader
  %i.bn = ptrtoint ptr %.sroa.083.1 to i64        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.ab

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %.lr.ph
  %.040205 = phi i64 [ 0, %.lr.ph ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  %.041204 = phi i64 [ %.0111.ph, %.lr.ph ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 2 uses
  %.sroa.25.0203 = phi ptr [ null, %.lr.ph ], [ %.sroa.25.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 3 uses
  %.sroa.16.0202 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 3 uses
  %.sroa.083.0201 = phi ptr [ null, %.lr.ph ], [ %.sroa.083.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 6 uses
  %i.bp = add i64 %.041204, -16                   ; 2 uses
  %i.bq = call i64 @llvm.smax.i64(i64 %.2, i64 %i.bp) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bq ; 2 uses
  %i.bs = sub i64 %.041204, %i.bq                 ; 4 uses
  store ptr %i.bk, ptr %5, align 8, !tbaa !869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 %i.bs, ptr %i.b, align 8, !tbaa !843
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc57 unwind label %.loopexit ; 2 uses

.noexc57:                                         ; preds = %.noexc.i
  store ptr %i.bu, ptr %5, align 8, !tbaa !833
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !843
  store i64 %i.bv, ptr %i.bk, align 8, !tbaa !871
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc57, %bb.k
  %i.bw = phi ptr [ %i.bu, %.noexc57 ], [ %i.bk, %bb.k ] ; 2 uses
  switch i64 %i.bs, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !871
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !871
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.br, i64 %i.bs, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.by = load i64, ptr %i.b, align 8, !tbaa !843 ; 2 uses
  store i64 %i.by, ptr %i.bl, align 8, !tbaa !870
  %i.bz = load ptr, ptr %5, align 8, !tbaa !833
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %i.cb = load ptr, ptr %5, align 8, !tbaa !833   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.cc = tail call ptr @__errno_location() #52   ; 6 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !165 ; 2 uses
  store i32 0, ptr %i.cc, align 4, !tbaa !165
  %i.ce = call noundef i64 @__isoc23_strtoull(ptr noundef %i.cb, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !1200
  %i.cg = icmp eq ptr %i.cf, %i.cb
  br i1 %i.cg, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.343) #49
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENS0_20basic_format_contextISA_cEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE:bb.a

bb.bc:                                            ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES9_SF_.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES9_SF_.exit: ; preds = %bb.u, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE9write_intIyNS0_18basic_format_specsIcEEEEvT_RKT0_.exit.i, %bb.k, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE9write_intIjNS0_18basic_format_specsIcEEEEvT_RKT0_.exit.i, %bb.bc, %bb.bb, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclEPKv.exit, %bb.as, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclEPKc.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEES9_SF_.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEES9_SF_.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEES9_SF_.exit, %bb.af, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclEb.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclINS5_10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES9_SG_.exit, %bb.v, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES9_SF_.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES9_SF_.exit
  %.sroa.037.0 = phi ptr [ %.sroa.0.0.copyload.i.i.i64, %bb.bc ], [ %.sroa.0.0.copyload.i.i, %bb.bb ], [ %.sroa.0.0.copyload.i.i.i63, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclEPKv.exit ], [ %.sroa.0.0.copyload.i.i.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES9_SF_.exit ], [ %i.eu, %bb.as ], [ %.sroa.0.0.copyload.i.i.i43, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES9_SF_.exit ], [ %.sroa.0.0.copyload.i.i2.pre.i, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE9write_intIjNS0_18basic_format_specsIcEEEEvT_RKT0_.exit.i ], [ %i.ch, %bb.v ], [ %.sroa.0.0.copyload.i.i.i52, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclINS5_10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES9_SG_.exit ], [ %.sroa.0.0.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclEb.exit ], [ %i.dm, %bb.af ], [ %.sroa.0.0.copyload.i.i.i55, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEES9_SF_.exit ], [ %.sroa.0.0.copyload.i.i.i57, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEES9_SF_.exit ], [ %.sroa.0.0.copyload.i.i.i59, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEES9_SF_.exit ], [ %.sroa.0.0.i61, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclEPKc.exit ], [ %i.aq, %bb.k ], [ %i.cg, %bb.u ], [ %.sroa.0.0.copyload.i.i2.pre.i46, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE9write_intIyNS0_18basic_format_specsIcEEEEvT_RKT0_.exit.i ]
  ret ptr %.sroa.037.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclINS5_9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES9_SG_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, i64 %2) local_unnamed_addr #3 comdat align 2 !guid !5694 {
bb.a:
  %3 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %5 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer.1393", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1533 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  store ptr %0, ptr %5, align 8, !tbaa !1557
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !1550
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !1581
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !890  ; 2 uses
  %i.i = icmp slt i64 %2, %i.h
  %i.j = icmp eq i64 %2, %i.h
  %i.k = load i64, ptr %4, align 8, !tbaa !891
  %i.l = icmp ult i64 %1, %i.k
  %i.m = select i1 %i.j, i1 %i.l, i1 false
  %i.n = select i1 %i.i, i1 true, i1 %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 45, ptr %i.o, align 8, !tbaa !871
  store i32 1, ptr %i.f, align 4, !tbaa !1581
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 0)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1126
  %i.r = sub i64 %i.q, %2
  %i.s = load i64, ptr %3, align 8, !tbaa !893    ; 2 uses
  %i.t = sub i64 %i.s, %1
  %i.u = icmp ugt i64 %1, %i.s
  %.neg.i.i.i.i.i.i.i = sext i1 %i.u to i64
  %i.v = add i64 %i.r, %.neg.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  store i64 %i.t, ptr %i.d, align 8, !tbaa !843
  store i64 %i.v, ptr %i.e, align 8, !tbaa !843
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE9write_intINS5_9hugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.x = load i8, ptr %i.w, align 1
  %i.y = lshr i8 %i.x, 4
  %i.z = and i8 %i.y, 7                           ; 2 uses
  %switch.i.i = icmp samesign ult i8 %i.z, 2
  br i1 %switch.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE9write_intINS5_9hugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i8 %i.z, 2
  %i.ab = select i1 %i.aa, i8 43, i8 32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 %i.ab, ptr %i.ac, align 8, !tbaa !871
  store i32 1, ptr %i.f, align 4, !tbaa !1581
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE9write_intINS5_9hugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE9write_intINS5_9hugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10int_writerINS8_9hugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE13write_decimalINS5_9hugeint_tEEEvT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE9write_intINS5_9hugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !5695 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::arg_formatter_base<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::char_spec_handler", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1533 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  store ptr %0, ptr %4, align 8, !tbaa !1574
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %1, ptr %i.c, align 8, !tbaa !1583
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE10write_charEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1)
  br label %_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !1548
  switch i8 %i.e, label %bb.d [
    i8 0, label %bb.e
    i8 99, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE17char_spec_handler6on_intEv(ptr noundef nonnull align 8 dereferenceable(9) %4)
  br label %_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_.exit

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = and i8 %i.g, 15
  %i.i = icmp eq i8 %i.h, 4
  %i.j = icmp ugt i8 %i.g, 15
  %or.cond18.i = or i1 %i.j, %i.i
  br i1 %or.cond18.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.400, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull %2) #49
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !833    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.l) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %i.k

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE10write_charEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1)
  br label %_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_.exit

_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_.exit: ; preds = %bb.b, %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 !guid !5696 {
bb.a:
  %3 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::str_writer", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1533 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !1548
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @_ZN10duckdb_fmt2v68internal22check_string_type_specIcNS1_13error_handlerEEEvT_OT0_(i8 noundef signext %i.d, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1533 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1547 ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = icmp ugt i64 %2, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.0918.i.i = phi i64 [ %i.n, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.01017.i.i = phi i64 [ %.1.i.i, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.0918.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !871
  %.not14.i.i = icmp slt i8 %i.l, -64
  br i1 %.not14.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %.01017.i.i, 1
  %.not.i = icmp ult i64 %.01017.i.i, %i.i
  br i1 %.not.i, label %bb.e, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.m, %bb.d ], [ %.01017.i.i, %.lr.ph.i.i ]
  %i.n = add nuw i64 %.0918.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, %2
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i, !llvm.loop !133

_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit: ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0.i = phi i64 [ %2, %bb.b ], [ %2, %bb.c ], [ %.0918.i.i, %bb.d ], [ %2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  store ptr %1, ptr %3, align 8, !tbaa !1585
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0.i, ptr %i.o, align 8, !tbaa !1586
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 6 uses
  %.not6.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not6.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 3 uses
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !1432
  %.pre5.i.i = load ptr, ptr %i.r, align 8, !tbaa !1433
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %.lr.ph.i.i.i
  %i.s = phi ptr [ %.pre5.i.i, %.lr.ph.i.i.i ], [ %i.al, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.lr.ph.i.i.i ], [ %i.am, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %.07.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i ], [ %i.an, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.u = load i8, ptr %.07.i.i.i, align 1, !tbaa !871 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.u, ptr %i.t, align 1, !tbaa !871
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !1432
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !1432
  %.pre4.i.i = load ptr, ptr %i.r, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1431 ; 4 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ac = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.aa ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 9223372036854775807)
  %i.af = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #48 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa ; 2 uses
  store i8 %i.u, ptr %i.ah, align 1, !tbaa !871
  %i.ai = icmp sgt i64 %i.aa, 0
  br i1 %i.ai, label %bb.k, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.ag, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1431
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !1432
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af ; 2 uses
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.h
  %i.al = phi ptr [ %i.ak, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.pre4.i.i, %bb.h ]
  %i.am = phi ptr [ %i.aj, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.w, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.p
  br i1 %.not.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, label %bb.g, !llvm.loop !134

_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %bb.f
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit ], [ %.sroa.0.0.copyload.i.i.pre, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit ]
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10int_writerIiS4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 !guid !5697 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1359", align 8 ; 9 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1549
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10int_writerIiNS0_18basic_format_specsIcEEE6on_numEv(ptr noundef nonnull align 8 dereferenceable(28) %1)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !1548  ; 2 uses
  switch i8 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 0, label %bb.d
    i8 100, label %bb.d
    i8 120, label %bb.g
    i8 88, label %bb.g
    i8 98, label %bb.h
    i8 66, label %bb.h
    i8 111, label %bb.i
    i8 110, label %bb.j
    i8 108, label %bb.j
    i8 76, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1559 ; 3 uses
  %i.g = or i32 %i.f, 1
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.i = sub nuw nsw i32 32, %i.h
  %i.j = mul nuw nsw i32 %i.i, 1233
  %i.k = lshr i32 %i.j, 12                        ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE23zero_or_powers_of_10_32E, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !165
  %i.o = icmp uge i32 %i.f, %i.n
  %i.p = zext i1 %i.o to i32
  %i.q = add nuw nsw i32 %i.k, %i.p               ; 3 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !1587, !nonnull !825, !align !826
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1560
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1588, !nonnull !825, !align !1589
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.w, i64 20, i1 false)
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.q to i64 ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.2.0.insert.ext.i, %i.u ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.z = load i8, ptr %i.y, align 2, !tbaa !871   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = and i8 %i.ab, 15                        ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 4
  br i1 %i.ad, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %bb.d
  %i.ae = load i32, ptr %3, align 8, !tbaa !1546
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.af)
  %spec.select18.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.af, i64 %i.x)
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10int_writerIiNS0_18basic_format_specsIcEEE6on_decEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1547 ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, %i.q                ; 3 uses
  %i.aj = zext i32 %i.ah to i64
  %i.ak = add nuw nsw i64 %i.aj, %i.u
  %i.al = sub nsw i32 %i.ah, %i.q
  %.113.i.i = select i1 %i.ai, i64 %i.ak, i64 %i.x ; 2 uses
  %.011.i.i = select i1 %i.ai, i8 48, i8 %i.z     ; 2 uses
  %narrow.i.i = select i1 %i.ai, i32 %i.al, i32 0
  %.1.i.i = zext i32 %narrow.i.i to i64           ; 2 uses
  %i.am = icmp eq i8 %i.ac, 0
  br i1 %i.am, label %bb.f, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10int_writerIiNS0_18basic_format_specsIcEEE6on_decEv.exit

bb.f:                                             ; preds = %bb.e
  %i.an = or disjoint i8 %i.ab, 2
  store i8 %i.an, ptr %i.aa, align 1
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10int_writerIiNS0_18basic_format_specsIcEEE6on_decEv.exit

end_hunk_4
begin_hunk_5_@_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRS9_EEvOT_:bb.a

bb.i:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %.pre6.i.i.i, %.lr.ph.i.i.i ], [ %i.bb, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.bc, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ] ; 2 uses
  %.04.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %i.bd, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ]
  %.not.i.i.i.i.i9 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 %i.ag, ptr %i.ak, align 1, !tbaa !871
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !1432
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !1432
  %.pre5.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %.sroa.0.0.copyload.pre, align 8, !tbaa !1431 ; 4 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 7 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775807
  br i1 %i.ar, label %bb.l, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i10

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i10: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.as = add i64 %.sroa.speculated.i.i.i.i.i.i.i11, %i.aq ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.aq
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 9223372036854775807)
  %i.av = select i1 %i.at, i64 9223372036854775807, i64 %i.au ; 3 uses
  %.not.i.i.i.i.i.i.i12 = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i12)
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #48 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq ; 2 uses
  store i8 %i.ag, ptr %i.ax, align 1, !tbaa !871
  %i.ay = icmp sgt i64 %i.aq, 0
  br i1 %i.ay, label %bb.m, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13

bb.m:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13: ; preds = %bb.m, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i.i.i.i14, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13
  store ptr %i.aw, ptr %.sroa.0.0.copyload.pre, align 8, !tbaa !1431
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !1432
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 2 uses
  store ptr %i.ba, ptr %i.ai, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, %bb.j
  %i.bb = phi ptr [ %.pre5.i.i.i, %bb.j ], [ %i.ba, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.am, %bb.j ], [ %i.az, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i ]
  %i.bd = add i64 %.04.i.i.i, -1                  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit, label %bb.i, !llvm.loop !138

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i, %bb.h
  store ptr %.sroa.0.0.copyload.pre, ptr %1, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.be, align 8, !tbaa !843
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !843
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !5959
  %i.bh = tail call ptr @_ZN10duckdb_fmt2v68internal11format_uintILj3EcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEENS4_10uhugeint_tEEET1_SA_T2_ib(ptr %.sroa.0.0.copyload.pre, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef %i.bg, i1 noundef zeroext false)
  store ptr %i.bh, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE13write_decimalINS5_10uhugeint_tEEEvT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #3 comdat align 2 !guid !5960 {
bb.a:
  %i.a = alloca [78 x i8], align 16               ; 5 uses
  %i.b = tail call noundef i32 @_ZN10duckdb_fmt2v68internal12count_digitsEN6duckdb10uhugeint_tE(i64 %1, i64 %2)
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.c = call noundef ptr @_ZN10duckdb_fmt2v68internal14format_decimalIN6duckdb10uhugeint_tEcZNS1_14format_decimalIcSt20back_insert_iteratorINS3_6vectorIcLb1ESaIcEEEES4_EET0_SB_T1_iEUlPcE_EEPSB_SF_T_iSC_(ptr noundef nonnull %i.a, i64 %1, i64 %2, i32 noundef %i.b) ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZN10duckdb_fmt2v68internal14format_decimalIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEENS4_10uhugeint_tEEET0_SA_T1_i.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 3 uses
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !1432
  %.pre5.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !1433
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.f = phi ptr [ %.pre5.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i ] ; 2 uses
  %i.g = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i ] ; 2 uses
  %.07.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %i.aa, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i ] ; 2 uses
  %i.h = load i8, ptr %.07.i.i.i.i, align 1, !tbaa !871 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.h, ptr %i.g, align 1, !tbaa !871
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !1432
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !1432
  %.pre4.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.sroa.01.0.copyload, align 8, !tbaa !1431 ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775807
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.p = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.n ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 9223372036854775807)
  %i.s = select i1 %i.q, i64 9223372036854775807, i64 %i.r ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #48 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 2 uses
  store i8 %i.h, ptr %i.u, align 1, !tbaa !871
  %i.v = icmp sgt i64 %i.n, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  store ptr %i.t, ptr %.sroa.01.0.copyload, align 8, !tbaa !1431
  store ptr %i.w, ptr %i.d, align 8, !tbaa !1432
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %i.e, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.c
  %i.y = phi ptr [ %i.x, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %.pre4.i.i.i, %bb.c ]
  %i.z = phi ptr [ %i.w, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.j, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_fmt2v68internal14format_decimalIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEENS4_10uhugeint_tEEET0_SA_T1_i.exit, label %bb.b, !llvm.loop !139

_ZN10duckdb_fmt2v68internal14format_decimalIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEENS4_10uhugeint_tEEET0_SA_T1_i.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  store ptr %.sroa.01.0.copyload, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE5writeEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !guid !5961 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::str_writer", align 8 ; 5 uses
  %i.a = select i1 %1, ptr @.str.398, ptr @.str.399 ; 3 uses
  %i.b = select i1 %1, i64 4, i64 5               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1533 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.lr.ph.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1547 ; 7 uses
  %i.g = icmp sgt i32 %i.f, -1
  %i.h = zext nneg i32 %i.f to i64
  %i.i = icmp samesign ugt i64 %i.b, %i.h
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = icmp eq i32 %i.f, 0
  br i1 %i.j, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %.not.i.1 = icmp ugt i32 %i.f, 1
  br i1 %.not.i.1, label %.lr.ph.i.i.2, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %.not.i.2 = icmp ugt i32 %i.f, 2
  br i1 %.not.i.2, label %.lr.ph.i.i.3, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %.not.i.3 = icmp ugt i32 %i.f, 3
  %.not.i.3.not = xor i1 %.not.i.3, true          ; 2 uses
  %brmerge = or i1 %.not.i.3.not, %1
  %.mux = select i1 %.not.i.3.not, i64 3, i64 %i.b
  br i1 %brmerge, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %.not.i.4 = icmp ugt i32 %i.f, 4
  %spec.select = select i1 %.not.i.4, i64 %i.b, i64 4
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit: ; preds = %.lr.ph.i.i.4, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %bb.b
  %.0.i = phi i64 [ %i.b, %bb.b ], [ 0, %.lr.ph.i.i ], [ %.mux, %.lr.ph.i.i.3 ], [ 1, %.lr.ph.i.i.1 ], [ %spec.select, %.lr.ph.i.i.4 ], [ 2, %.lr.ph.i.i.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store ptr %i.a, ptr %2, align 8, !tbaa !1585
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i, ptr %i.k, align 8, !tbaa !1586
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 3 uses
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !1432
  %.pre5.i.i = load ptr, ptr %i.n, align 8, !tbaa !1433
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pre5.i.i, %.lr.ph.i.i.i ], [ %i.ah, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.p = phi ptr [ %.pre.i.i, %.lr.ph.i.i.i ], [ %i.ai, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %.07.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.aj, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.q = load i8, ptr %.07.i.i.i, align 1, !tbaa !871 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.q, ptr %i.p, align 1, !tbaa !871
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !1432
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !1432
  %.pre4.i.i = load ptr, ptr %i.n, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1431 ; 4 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775807
  br i1 %i.x, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.y = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.w ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 9223372036854775807)
  %i.ab = select i1 %i.z, i64 9223372036854775807, i64 %i.aa ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #48 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.w ; 2 uses
  store i8 %i.q, ptr %i.ad, align 1, !tbaa !871
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %bb.g, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.t, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.ac, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1431
  store ptr %i.af, ptr %i.m, align 8, !tbaa !1432
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab ; 2 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.d
  %i.ah = phi ptr [ %i.ag, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.pre4.i.i, %bb.d ]
  %i.ai = phi ptr [ %i.af, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.s, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %i.l
  br i1 %.not.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, label %bb.c, !llvm.loop !134

_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 !guid !5964 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !1546   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1586 ; 10 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1585   ; 2 uses
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader209, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.c, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi204 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %wide.load = load <2 x i8>, ptr %i.e, align 1, !tbaa !871
  %wide.load205 = load <2 x i8>, ptr %i.f, align 1, !tbaa !871
  %i.g = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.h = icmp sgt <2 x i8> %wide.load205, splat (i8 -65)
  %i.i = zext <2 x i1> %i.g to <2 x i64>
  %i.j = zext <2 x i1> %i.h to <2 x i64>
  %i.k = add <2 x i64> %vec.phi, %i.i             ; 2 uses
  %i.l = add <2 x i64> %vec.phi204, %i.j          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !5962

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit, label %.lr.ph.i.i.preheader209

.lr.ph.i.i.preheader209:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.069.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader209, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader209 ] ; 2 uses
  %.069.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.069.i.i.ph, %.lr.ph.i.i.preheader209 ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %.010.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !871
  %.not7.i.i = icmp sgt i8 %i.p, -65
  %i.q = zext i1 %.not7.i.i to i64
  %spec.select.i.i = add i64 %.069.i.i, %i.q      ; 2 uses
  %i.r = add nuw i64 %.010.i.i, 1                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, %i.c
  br i1 %.not.i.i, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit, label %.lr.ph.i.i, !llvm.loop !5963

_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.a
  %i.s = phi i64 [ %i.c, %bb.a ], [ %i.n, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.t = zext i32 %i.a to i64                     ; 2 uses
  %.not46 = icmp ult i64 %i.s, %i.t
  br i1 %.not46, label %bb.j, label %bb.c

_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit.thread: ; preds = %bb.b
  %i.u = zext i32 %i.a to i64
  br label %bb.j

bb.c:                                             ; preds = %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !1585   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 6 uses
  %.not6.i.i.i = icmp samesign eq i64 %i.c, 0
  br i1 %.not6.i.i.i, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcEclIRS9_EEvOT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 3 uses
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !1432
  %.pre5.i.i = load ptr, ptr %i.y, align 8, !tbaa !1433
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %.lr.ph.i.i.i
  %i.z = phi ptr [ %.pre5.i.i, %.lr.ph.i.i.i ], [ %i.as, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i.i, %.lr.ph.i.i.i ], [ %i.at, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %.07.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.au, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.ab = load i8, ptr %.07.i.i.i, align 1, !tbaa !871 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !871
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !1432
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !1432
  %.pre4.i.i = load ptr, ptr %i.y, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i
end_hunk_5
begin_hunk_6_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSE_NS0_18basic_format_specsIcEE:bb.a
  %.sroa.014.0.insert.ext15 = and i64 %i.a, 4294967295
  %.sroa.014.0.insert.insert17 = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext15
  %i.cd = invoke noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef %.0, i32 noundef %spec.select82, i64 %.sroa.014.0.insert.insert17, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.w unwind label %bb.y       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.ce = and i32 %.sroa.8.2, 33554432
  %.not76 = icmp eq i32 %i.ce, 0
  br i1 %.not76, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.cf, align 8, !tbaa !939
  %i.cg = invoke noundef signext i8 @_ZN10duckdb_fmt2v68internal18decimal_point_implIcEET_NS1_10locale_refE(ptr %.sroa.03.0.copyload)
          to label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %bb.w
  %i.ci = and i32 %.sroa.8.2, 16711680
  %i.cj = icmp eq i32 %i.ci, 3014656
  %. = select i1 %i.cj, i8 44, i8 46
  br label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit

_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit: ; preds = %bb.x, %bb.z
  %.056 = phi i8 [ %., %bb.z ], [ %i.cg, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.ck = load ptr, ptr %i.bb, align 8, !tbaa !1773
  %i.cl = load i64, ptr %i.bd, align 8, !tbaa !1775
  %i.cm = trunc i64 %i.cl to i32                  ; 2 uses
  %.sroa.014.0.insert.ext = zext i32 %spec.select82 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext
  store ptr %i.ck, ptr %7, align 8, !tbaa !1779
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !1780
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.cd, ptr %i.co, align 4, !tbaa !1781
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.014.0.insert.insert, ptr %i.cp, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 %.056, ptr %i.cq, align 8, !tbaa !1782
  %i.cr = and i32 %.sroa.8.2, 255
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.ct = icmp sgt i32 %spec.select82, 0
  %i.cu = select i1 %i.ct, i32 %spec.select82, i32 16
  %i.cv = add nsw i32 %i.cd, %i.cm                ; 2 uses
  %i.cw = icmp slt i32 %i.cv, -3
  %.not.i = icmp sgt i32 %i.cv, %i.cu
  %or.cond.i = or i1 %i.cw, %.not.i
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cx = or disjoint i32 %i.cc, 1
  store i32 %i.cx, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.cy = invoke i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %7, i64 0)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.da = and i32 %.sroa.8.2, 65280
  %.not10.i = icmp ne i32 %i.da, 0
  %i.db = zext i1 %.not10.i to i64
  %i.dc = add i64 %i.cy, %i.db
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !1783
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !982
  %i.dd = load ptr, ptr %i.bb, align 8, !tbaa !1773 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dd, %i.be
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.dd) #47, !inline_history !1784
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, %bb.e
  ret void

bb.ai:                                            ; preds = %bb.ac, %bb.ad
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.y, %bb.u
  %.pn80 = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.ch, %bb.y ], [ %i.de, %bb.ai ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !982
  %i.df = load ptr, ptr %i.bb, align 8, !tbaa !1773 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.df, %i.be
  br i1 %.not.i.i92, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.df) #47, !inline_history !1784
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  resume { ptr, i32 } %.pn80
}

declare noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE5writeEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !6036 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::str_writer", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.404, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.u unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.010 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !833    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.010, label %bb.f, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.010, label %bb.f, label %bb.t

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #46
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #46 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1533 ; 3 uses
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1547 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.i:                                             ; preds = %bb.h
  %i.m = zext nneg i32 %i.k to i64                ; 2 uses
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.k
  %.0918.i.i = phi i64 [ %i.r, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %.01017.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0918.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !871
  %.not14.i.i = icmp slt i8 %i.p, -64
  br i1 %.not14.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.q = add nuw nsw i64 %.01017.i.i, 1
  %.not.i = icmp ult i64 %.01017.i.i, %i.m
  br i1 %.not.i, label %bb.k, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.q, %bb.j ], [ %.01017.i.i, %.lr.ph.i.i ]
  %i.r = add nuw i64 %.0918.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, %i.g
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i, !llvm.loop !133

_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ %.0918.i.i, %bb.j ], [ %i.g, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store ptr %1, ptr %2, align 8, !tbaa !1585
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i, ptr %i.s, align 8, !tbaa !1586
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.s

bb.l:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 5 uses
  %.not6.i.i.i = icmp samesign eq i64 %i.g, 0
  br i1 %.not6.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 3 uses
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !1432
  %.pre5.i.i = load ptr, ptr %i.v, align 8, !tbaa !1433
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %.lr.ph.i.i.i
  %i.w = phi ptr [ %.pre5.i.i, %.lr.ph.i.i.i ], [ %i.ap, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.x = phi ptr [ %.pre.i.i, %.lr.ph.i.i.i ], [ %i.aq, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %.07.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i ], [ %i.ar, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.y = load i8, ptr %.07.i.i.i, align 1, !tbaa !871 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %i.y, ptr %i.x, align 1, !tbaa !871
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !1432
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !1432
  %.pre4.i.i = load ptr, ptr %i.v, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1431 ; 4 uses
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 7 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775807
  br i1 %i.af, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.ag = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.ae ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 9223372036854775807)
  %i.aj = select i1 %i.ah, i64 9223372036854775807, i64 %i.ai ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #48 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae ; 2 uses
  store i8 %i.y, ptr %i.al, align 1, !tbaa !871
  %i.am = icmp sgt i64 %i.ae, 0
  br i1 %i.am, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.ak, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1431
  store ptr %i.an, ptr %i.u, align 8, !tbaa !1432
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj ; 2 uses
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !1433
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.n
  %i.ap = phi ptr [ %i.ao, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.pre4.i.i, %bb.n ]
  %i.aq = phi ptr [ %i.an, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.aa, %bb.n ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.t
  br i1 %.not.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, label %bb.m, !llvm.loop !134

_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %bb.l
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit
  ret void

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn18 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn19, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn18

bb.u:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal24handle_cstring_type_specIcNS1_18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE20cstring_spec_handlerEEEvT_OT0_(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 !guid !6037 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::pointer_writer", align 8 ; 6 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 4 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  switch i8 %0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 115, label %bb.b
    i8 0, label %bb.b
    i8 112, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !6038, !nonnull !825, !align !826
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1576
  tail call void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE5writeEPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.c)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !6038, !nonnull !825, !align !826 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1576
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1533 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.03.i.i.i.i = phi i64 [ %i.g, %bb.c ], [ %i.k, %bb.d ]
  %.0.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.j, %bb.d ]
  %i.j = add nuw nsw i32 %.0.i.i.i.i, 1           ; 2 uses
  %i.k = lshr i64 %.03.i.i.i.i, 4                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_fmt2v68internal12count_digitsILj4EmEEiT0_.exit.i.i.i, label %bb.d, !llvm.loop !132

_ZN10duckdb_fmt2v68internal12count_digitsILj4EmEEiT0_.exit.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store i64 %i.g, ptr %2, align 8, !tbaa !1578
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.j, ptr %i.l, align 8, !tbaa !1579
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN10duckdb_fmt2v68internal12count_digitsILj4EmEEiT0_.exit.i.i.i
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE14pointer_writerImEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE20cstring_spec_handler10on_pointerEv.exit

bb.f:                                             ; preds = %_ZN10duckdb_fmt2v68internal12count_digitsILj4EmEEiT0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.i, i64 20, i1 false), !tbaa.struct !1572
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = and i8 %i.n, 15
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = or disjoint i8 %i.n, 2
  store i8 %i.q, ptr %i.m, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedIRNSB_14pointer_writerImEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE20cstring_spec_handler10on_pointerEv.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE20cstring_spec_handler10on_pointerEv.exit: ; preds = %bb.e, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !869
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 1, i8 noundef signext %0)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.396, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.405)
          to label %bb.j unwind label %bb.m

end_hunk_6
