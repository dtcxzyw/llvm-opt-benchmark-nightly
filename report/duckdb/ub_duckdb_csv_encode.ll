inline.NumInlined: 421
inline.NumDeleted: 213
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6duckdb16EncodingFunction7GetNameB5cxx11Ev:bb.a
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !31
  %i.i = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.i, ptr %i.c, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !27
  store i8 %i.k, ptr %i.j, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !25
  %i.n = load ptr, ptr %0, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #9 align 2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb10CSVEncoder6EncodeERNS_10FileHandleEPcm(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi i64 [ %i.p, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = phi i64 [ %i.m, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !27
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  store i8 %i.l, ptr %i.n, align 1, !tbaa !27
  %i.o = load i64, ptr %i.b, align 8, !tbaa !49
  %i.p = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !49
  %i.q = load i64, ptr %i.d, align 8, !tbaa !21
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.pre107112 = phi i64 [ %i.m, %._crit_edge ], [ 0, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %3, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.y)
  %.pre107.pre = load i64, ptr %i.a, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre107 = phi i64 [ %.pre107.pre, %bb.c ], [ %.pre107112, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.d
  %i.al = phi i64 [ %i.eg, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %.pre107, %bb.d ] ; 3 uses
  %i.am = icmp ult i64 %i.al, %3
  br i1 %i.am, label %bb.f, label %bb.ae

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.s, align 8, !tbaa !57
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !21
  %.not = icmp eq i64 %i.an, %i.ao
  br i1 %.not, label %.loopexit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !58
  %i.as = load i64, ptr %i.u, align 8, !tbaa !21
  %i.at = load i64, ptr %i.s, align 8, !tbaa !57
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = icmp ugt i64 %i.ar, %i.au
  br i1 %i.av, label %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41, label %.loopexit.thread

.preheader._crit_edge:                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.h:                                             ; preds = %.preheader._crit_edge
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.l unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.preheader._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.az) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0.i, label %bb.k, label %.body50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0.i, label %bb.k, label %.body50

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.aw) #17
  br label %.body50

bb.l:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41: ; preds = %bb.g, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
  %i.bc = phi ptr [ %i.bx, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ %i.ap, %bb.g ]
  %.03090 = phi i64 [ %i.bw, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ %i.au, %bb.g ] ; 3 uses
  %.sroa.26.089 = phi ptr [ %.sroa.26.1, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ null, %bb.g ] ; 3 uses
  %.sroa.15.088 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ null, %bb.g ] ; 6 uses
  %.sroa.0.087 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ null, %bb.g ] ; 18 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !58
  %i.bf = icmp ult i64 %.03090, %i.be
  br i1 %i.bf, label %bb.m, label %.loopexit

.loopexit77:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.m:                                             ; preds = %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.03090 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.15.088, %.sroa.26.089
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  store i8 %i.bi, ptr %.sroa.15.088, align 1, !tbaa !27
  br label %_ZNSt6vectorIcSaIcEE9push_backERKc.exit

bb.o:                                             ; preds = %bb.m
  %i.bj = ptrtoint ptr %.sroa.26.089 to i64
  %i.bk = ptrtoint ptr %.sroa.0.087 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 7 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775807
  br i1 %i.bm, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bn = add i64 %.sroa.speculated.i.i.i, %i.bl  ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bl
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 9223372036854775807)
  %i.bq = select i1 %i.bo, i64 9223372036854775807, i64 %i.bp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #15
          to label %.noexc42 unwind label %.loopexit77 ; 4 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bl ; 2 uses
  %i.bt = load i8, ptr %i.bh, align 1, !tbaa !27
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !27
  %i.bu = icmp sgt i64 %i.bl, 0
  br i1 %i.bu, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc42
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %.sroa.0.087, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc42
  %.not.i17.i.i = icmp eq ptr %.sroa.0.087, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.087) #16
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  br label %_ZNSt6vectorIcSaIcEE9push_backERKc.exit

_ZNSt6vectorIcSaIcEE9push_backERKc.exit:          ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, %bb.n
  %.sroa.0.3 = phi ptr [ %i.br, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.sroa.0.087, %bb.n ] ; 4 uses
  %.pn = phi ptr [ %i.bs, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.sroa.15.088, %bb.n ]
  %.sroa.26.1 = phi ptr [ %i.bv, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.sroa.26.089, %bb.n ]
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.bw = add nuw i64 %.03090, 1
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %.not.i49 = icmp eq ptr %i.bx, null
  br i1 %.not.i49, label %.preheader._crit_edge, label %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41, !llvm.loop !59

.loopexit.thread:                                 ; preds = %bb.f, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 16, i1 false)
  br label %._crit_edge96

.loopexit:                                        ; preds = %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 16, i1 false)
  %i.by = ptrtoint ptr %.sroa.15.088 to i64
  %i.bz = ptrtoint ptr %.sroa.0.087 to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %.not98 = icmp eq ptr %.sroa.15.088, %.sroa.0.087
  br i1 %.not98, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.loopexit
  %.sroa.0.087.lcssa169173 = ptrtoaddr ptr %.sroa.0.087 to i64
  %.sroa.15.088.lcssa164168 = ptrtoaddr ptr %.sroa.15.088 to i64
  %xtraiter = and i64 %i.ca, 3                    ; 3 uses
  %i.cb = sub i64 %.sroa.0.087.lcssa169173, %.sroa.15.088.lcssa164168
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %.lr.ph95.epil.preheader, label %.lr.ph95.preheader.new

.lr.ph95.preheader.new:                           ; preds = %.lr.ph95.preheader
  %unroll_iter = and i64 %i.ca, -4
  br label %.lr.ph95

._crit_edge96.loopexit.unr-lcssa:                 ; preds = %.lr.ph95
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge96, label %.lr.ph95.epil.preheader

.lr.ph95.epil.preheader:                          ; preds = %._crit_edge96.loopexit.unr-lcssa, %.lr.ph95.preheader
  %.03193.epil.init = phi i64 [ 0, %.lr.ph95.preheader ], [ %i.de, %._crit_edge96.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph95.epil

.lr.ph95.epil:                                    ; preds = %.lr.ph95.epil, %.lr.ph95.epil.preheader
  %.03193.epil = phi i64 [ %i.ch, %.lr.ph95.epil ], [ %.03193.epil.init, %.lr.ph95.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph95.epil ], [ 0, %.lr.ph95.epil.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %.03193.epil
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !27
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.03193.epil
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !27
  %i.ch = add nuw i64 %.03193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge96, label %.lr.ph95.epil, !llvm.loop !60

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit.unr-lcssa, %.lr.ph95.epil, %.loopexit.thread, %.loopexit
  %i.ci = phi i64 [ 0, %.loopexit.thread ], [ 0, %.loopexit ], [ %i.ca, %.lr.ph95.epil ], [ %i.ca, %._crit_edge96.loopexit.unr-lcssa ] ; 5 uses
  %.sroa.0.1124 = phi ptr [ null, %.loopexit.thread ], [ %.sroa.0.087, %.loopexit ], [ %.sroa.0.087, %.lr.ph95.epil ], [ %.sroa.0.087, %._crit_edge96.loopexit.unr-lcssa ] ; 4 uses
  %i.cj = load i8, ptr %i.af, align 1, !tbaa !62, !range !63, !noundef !64
  %i.ck = trunc nuw i8 %i.cj to i1
  %.pre109 = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 2 uses
  br i1 %i.ck, label %bb.s, label %bb.t

.lr.ph95:                                         ; preds = %.lr.ph95, %.lr.ph95.preheader.new
  %.03193 = phi i64 [ 0, %.lr.ph95.preheader.new ], [ %i.de, %.lr.ph95 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph95.preheader.new ], [ %niter.next.3, %.lr.ph95 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %.03193
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !27
  %i.cn = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.03193
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !27
  %i.cp = or disjoint i64 %.03193, 1              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !27
  %i.cs = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cp
  store i8 %i.cr, ptr %i.ct, align 1, !tbaa !27
  %i.cu = or disjoint i64 %.03193, 2              ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !27
  %i.cx = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu
  store i8 %i.cw, ptr %i.cy, align 1, !tbaa !27
  %i.cz = or disjoint i64 %.03193, 3              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !27
  %i.dc = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cz
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !27
  %i.de = add nuw i64 %.03193, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge96.loopexit.unr-lcssa, label %.lr.ph95, !llvm.loop !65

bb.s:                                             ; preds = %._crit_edge96
  %i.df = load i8, ptr %i.ag, align 8, !tbaa !66
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre109, i64 %i.ci
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !27
  %.pre108 = load ptr, ptr %i.ae, align 8, !tbaa !20
  %.pre110 = load i8, ptr %i.af, align 1, !tbaa !62, !range !63
  %i.dh = zext nneg i8 %.pre110 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge96
  %i.di = phi i64 [ %i.dh, %bb.s ], [ 0, %._crit_edge96 ] ; 2 uses
  %i.dj = phi ptr [ %.pre108, %bb.s ], [ %.pre109, %._crit_edge96 ]
  %.sroa.02.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ci
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  %i.dm = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.dn = add i64 %i.ci, %i.di
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = invoke noundef i64 @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %.sroa.02.0.copyload, ptr noundef %i.dl, i64 noundef %i.do)
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.dq = add i64 %i.dp, %i.ci
  %i.dr = load i8, ptr %i.af, align 1, !tbaa !62, !range !63, !noundef !64
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = add i64 %i.dq, %i.ds
  store i64 %i.dt, ptr %i.u, align 8, !tbaa !21
  %i.du = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.dv = sub i64 %i.du, %i.ci
  %i.dw = icmp ult i64 %i.dp, %i.dv
  br i1 %i.dw, label %.sink.split, label %bb.w

bb.v:                                             ; preds = %bb.z, %bb.aa, %bb.t
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.dy = invoke noundef i64 @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %.sroa.0.0.copyload, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.sink.split, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.sink.split:                                      ; preds = %bb.x, %bb.u
  store i8 1, ptr %i.aj, align 8, !tbaa !68
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x
  %storemerge36 = phi i8 [ 1, %bb.x ], [ 0, %.sink.split ]
  store i8 %storemerge36, ptr %i.af, align 1, !tbaa !62
  invoke void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %bb.z
  %i.eb = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !56
  %i.ee = load ptr, ptr %i.ak, align 8, !tbaa !20
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %3, ptr noundef %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.eb)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %.not38 = icmp eq i64 %i.ef, %i.al
  %.not.i.i.i46 = icmp eq ptr %.sroa.0.1124, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1124) #16
  %.pre = load i64, ptr %i.a, align 8, !tbaa !48
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.ab, %bb.ac
  %i.eg = phi i64 [ %i.ef, %bb.ab ], [ %.pre, %bb.ac ]
  br i1 %.not38, label %bb.ae, label %bb.e, !llvm.loop !69

.body50:                                          ; preds = %.loopexit77, %.loopexit.split-lp, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.v, %bb.y
  %.sroa.0.2 = phi ptr [ %.sroa.0.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0.1124, %bb.v ], [ %.sroa.0.1124, %bb.y ], [ %.sroa.0.3, %bb.k ], [ %.sroa.0.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.sroa.0.087, %.loopexit77 ], [ %.sroa.0.087, %.loopexit.split-lp ] ; 2 uses
  %.pn39 = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dx, %bb.v ], [ %i.ea, %bb.y ], [ %.pn9.i, %bb.k ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.loopexit, %.loopexit77 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i47 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIcSaIcEED2Ev.exit48, label %bb.ad

bb.ad:                                            ; preds = %.body50
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.2) #16
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit48

_ZNSt6vectorIcSaIcEED2Ev.exit48:                  ; preds = %.body50, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn39

bb.ae:                                            ; preds = %bb.e, %_ZNSt6vectorIcSaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.al
}

declare noundef i64 @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm(ptr noundef nonnull align 8 dereferenceable(80), ptr, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g
end_hunk_0
