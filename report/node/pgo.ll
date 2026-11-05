Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/pgo?download=true
inline.NumInlined: 881
inline.NumDeleted: 482
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal4wasm7Decoder17read_leb_slowpathIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE:bb.a
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = or disjoint i32 %i.y, %i.s               ; 2 uses
  %i.aa = icmp sgt i8 %i.v, -1
  br i1 %i.aa, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not = icmp ult ptr %i.ab, %i.b
  br i1 %.not, label %bb.j, label %.thread, !prof !47

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = icmp slt i8 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.k, !prof !52

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ae = phi ptr [ @.str.30, %bb.i ], [ @.str.31, %bb.j ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.ae, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ag = shl i32 %i.af, 28
  %i.ah = or disjoint i32 %i.ag, %i.z
  %i.ai = and i32 %i.af, 120
  %.off.i = add nsw i32 %i.ai, -1
  %switch.i = icmp ult i32 %.off.i, 119
  br i1 %switch.i, label %.thread61, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, !prof !109

.thread61:                                        ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.32)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge17.i10:                                  ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.u, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.l:                                             ; preds = %bb.h
  %i.aj = shl nuw i32 %i.z, 4
  %i.ak = ashr exact i32 %i.aj, 4
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge17.i7:                                   ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.n, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.m:                                             ; preds = %bb.f
  %i.al = shl nuw i32 %i.s, 11
  %i.am = ashr exact i32 %i.al, 11
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge17.i4:                                   ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.n:                                             ; preds = %bb.d
  %i.an = shl nuw i32 %i.l, 18
  %i.ao = ashr exact i32 %i.an, 18
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge17.i:                                    ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.o:                                             ; preds = %bb.b
  %i.ap = shl nuw i32 %i.e, 25
  %i.aq = ashr exact i32 %i.ap, 25
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %bb.n, %.critedge17.i4, %.critedge17.i7, %bb.m, %.thread, %.thread61, %bb.k, %.critedge17.i10, %bb.l, %.critedge17.i, %bb.o
  %.sroa.6.0 = phi i64 [ 4294967296, %bb.o ], [ 0, %.critedge17.i ], [ 8589934592, %bb.n ], [ 0, %.critedge17.i4 ], [ 12884901888, %bb.m ], [ 0, %.critedge17.i7 ], [ 17179869184, %bb.l ], [ 0, %.critedge17.i10 ], [ 0, %.thread ], [ 0, %.thread61 ], [ 21474836480, %bb.k ]
  %.sroa.0.0 = phi i32 [ %i.aq, %bb.o ], [ 0, %.critedge17.i ], [ %i.ao, %bb.n ], [ 0, %.critedge17.i4 ], [ %i.am, %bb.m ], [ 0, %.critedge17.i7 ], [ %i.ak, %bb.l ], [ 0, %.critedge17.i10 ], [ 0, %.thread ], [ 0, %.thread61 ], [ %i.ah, %bb.k ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 comdat align 2 !guid !110 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, %i.f
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 comdat align 2 !guid !111 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7DecoderD0Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 !guid !112 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal4wasm7DecoderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN2v88internal4wasm7DecoderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20, !inline_history !51
  br label %_ZN2v88internal4wasm7DecoderD2Ev.exit

_ZN2v88internal4wasm7DecoderD2Ev.exit:            ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7Decoder12onFirstErrorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 !guid !113 {
bb.a:
  ret void
}

declare void @_ZN2v88internal19AccountingAllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16ProfileGenerator21SerializeTypeFeedbackERNS1_10ZoneBufferE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !guid !117 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 600 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not118 = icmp eq i64 %i.d, 0
  br i1 %.not118, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.c
  %i.f = shl nuw nsw i64 %i.d, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19 ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %.sroa.0101.2 = phi ptr [ %i.g, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.c ] ; 4 uses
  %.sroa.22.2 = phi ptr [ %i.h, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 592 ; 2 uses
  %.sroa.098.0133 = load ptr, ptr %i.i, align 8   ; 2 uses
  %i.j = icmp eq ptr %.sroa.098.0133, null
  br i1 %i.j, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.k = icmp eq ptr %.sroa.0101.1, %.sroa.12.1
  br i1 %i.k, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit.thread, label %.lr.ph153

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit.thread: ; preds = %._crit_edge, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.sroa.22.0.lcssa204 = phi ptr [ %.sroa.22.1, %._crit_edge ], [ %.sroa.22.2, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ]
  %.sroa.12.0.lcssa201 = phi ptr [ %.sroa.12.1, %._crit_edge ], [ %.sroa.0101.2, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ]
  %.sroa.0101.0.lcssa200 = phi ptr [ %.sroa.0101.1, %._crit_edge ], [ %.sroa.0101.2, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ] ; 2 uses
  %.pre168 = ptrtoint ptr %.sroa.12.0.lcssa201 to i64
  %.pre169 = ptrtoint ptr %.sroa.0101.0.lcssa200 to i64 ; 2 uses
  %.pre171 = sub i64 %.pre168, %.pre169
  %i.l = lshr exact i64 %.pre171, 2
  %i.m = trunc i64 %i.l to i32
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.m)
  br label %._crit_edge154

.lr.ph153:                                        ; preds = %._crit_edge
  %i.n = ptrtoint ptr %.sroa.12.1 to i64
  %i.o = ptrtoint ptr %.sroa.0101.1 to i64        ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 2
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.0101.1, ptr %.sroa.12.1, i64 noundef %i.t)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.0101.1, ptr %.sroa.12.1)
  %i.u = lshr exact i64 %i.p, 2
  %i.v = trunc i64 %i.u to i32
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 43 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  br label %bb.k

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.sroa.098.0137 = phi ptr [ %.sroa.098.0, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.098.0133, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ] ; 3 uses
  %.sroa.22.0136 = phi ptr [ %.sroa.22.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.22.2, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ] ; 4 uses
  %.sroa.12.0135 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.0101.2, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ] ; 4 uses
  %.sroa.0101.0134 = phi ptr [ %.sroa.0101.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.0101.2, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.098.0137, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.098.0137, i64 24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.12.0135, %.sroa.22.0136
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.aa, align 8
  store i32 %i.ae, ptr %.sroa.12.0135, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.12.0135, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = ptrtoint ptr %.sroa.22.0136 to i64
  %i.ah = ptrtoint ptr %.sroa.0101.0134 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #18
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ak = ashr exact i64 %i.ai, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 2305843009213693951)
  %i.ao = select i1 %i.am, i64 2305843009213693951, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  %i.as = load i32, ptr %i.aa, align 8
  store i32 %i.as, ptr %i.ar, align 4
  %i.at = icmp sgt i64 %i.ai, 0
  br i1 %i.at, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %.sroa.0101.0134, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0101.0134, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.0134, i64 noundef %i.ai) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.e, %.lr.ph
  %.sroa.0101.1 = phi ptr [ %.sroa.0101.0134, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0101.0134, %bb.e ] ; 8 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0135, %.lr.ph ], [ %i.au, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.af, %bb.e ] ; 7 uses
  %.sroa.22.1 = phi ptr [ %.sroa.22.0136, %.lr.ph ], [ %i.av, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.22.0136, %bb.e ] ; 3 uses
  %.sroa.098.0 = load ptr, ptr %.sroa.098.0137, align 8 ; 2 uses
  %i.aw = icmp eq ptr %.sroa.098.0, null
  br i1 %i.aw, label %._crit_edge, label %.lr.ph

._crit_edge154:                                   ; preds = %._crit_edge151, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit.thread
  %.pre-phi170212 = phi i64 [ %.pre169, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit.thread ], [ %i.o, %._crit_edge151 ]
  %.sroa.0101.0.lcssa199211 = phi ptr [ %.sroa.0101.0.lcssa200, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit.thread ], [ %.sroa.0101.1, %._crit_edge151 ] ; 2 uses
  %.sroa.22.0.lcssa203210 = phi ptr [ %.sroa.22.0.lcssa204, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit.thread ], [ %.sroa.22.1, %._crit_edge151 ]
  %.not.i.i.i47 = icmp eq ptr %.sroa.0101.0.lcssa199211, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge154
  %i.ax = ptrtoint ptr %.sroa.22.0.lcssa203210 to i64
  %i.ay = sub i64 %i.ax, %.pre-phi170212
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.0.lcssa199211, i64 noundef %i.ay) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge154, %bb.j
  ret void

bb.k:                                             ; preds = %.lr.ph153, %._crit_edge151
  %.sroa.094.0152 = phi ptr [ %.sroa.0101.1, %.lr.ph153 ], [ %i.ix, %._crit_edge151 ] ; 2 uses
  %i.az = load i32, ptr %.sroa.094.0152, align 4  ; 5 uses
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.az)
  %i.ba = load i64, ptr %i.c, align 8
  %.not.not.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k, %bb.l
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.l ], [ %i.i, %bb.k ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 4 uses
  %i.bb = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.bb, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.az, %i.bd
  br i1 %i.be, label %_ZNKSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE2atERS9_.exit, label %.preheader, !llvm.loop !0

bb.m:                                             ; preds = %bb.k
  %i.bf = zext i32 %i.az to i64
  %i.bg = load i64, ptr %i.w, align 8             ; 2 uses
  %i.bh = urem i64 %i.bf, %i.bg                   ; 2 uses
  %i.bi = load ptr, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.az, %i.bn
  br i1 %i.bo, label %_ZNKSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE2atERS9_.exit, label %.lr.ph.i.i.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.bp = icmp eq i32 %i.az, %i.bs
  br i1 %i.bp, label %_ZNKSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE2atERS9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %.020.i.i.i.i.i = phi ptr [ %i.bq, %bb.o ], [ %i.bl, %bb.n ]
  %i.bq = load ptr, ptr %.020.i.i.i.i.i, align 8  ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = urem i64 %i.bt, %i.bg
  %.not19.i.i.i.i.i = icmp eq i64 %i.bu, %i.bh
  br i1 %.not19.i.i.i.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.p
  br label %.loopexit.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.m, %.lr.ph.i.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.45) #18
  unreachable

_ZNKSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE2atERS9_.exit: ; preds = %bb.o, %bb.l, %bb.n
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.l ], [ %i.bl, %bb.n ], [ %i.bq, %bb.o ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = trunc i64 %i.bx to i32
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.by)
  %i.bz = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.ca = load i64, ptr %i.bw, align 8            ; 2 uses
  %.idx = shl nuw nsw i64 %i.ca, 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx
  %.not143 = icmp eq i64 %i.ca, 0
  br i1 %.not143, label %._crit_edge146, label %.lr.ph145

._crit_edge146:                                   ; preds = %._crit_edge142, %_ZNKSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE2atERS9_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 40 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = trunc i64 %i.ce to i32
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.cf)
  %i.cg = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ch = load i64, ptr %i.cd, align 8            ; 2 uses
  %.idx155 = shl nuw nsw i64 %i.ch, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx155
  %.not46147 = icmp eq i64 %i.ch, 0
  br i1 %.not46147, label %._crit_edge151, label %.lr.ph150

.lr.ph145:                                        ; preds = %_ZNKSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE2atERS9_.exit, %._crit_edge142
  %.045144 = phi ptr [ %i.ej, %._crit_edge142 ], [ %i.bz, %_ZNKSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE2atERS9_.exit ] ; 7 uses
  %i.cj = load i32, ptr %.045144, align 8         ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph145
  %2 = icmp eq i32 %i.cj, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %.045144, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !range !118
  %i.cn = trunc nuw i8 %i.cm to i1
  %.not1.i = select i1 %2, i1 true, i1 %i.cn
  %3 = sub nsw i32 0, %i.cj
  %spec.select.i = select i1 %.not1.i, i32 0, i32 %3
  br label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit

_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit: ; preds = %.lr.ph145, %bb.q
  %.0.i = phi i32 [ %spec.select.i, %bb.q ], [ 1, %.lr.ph145 ] ; 12 uses
  %i.co = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 5
  %i.cq = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.cr = icmp ugt ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.r, label %.preheader.i.i.a

bb.r:                                             ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit
  %i.cs = load ptr, ptr %i.z, align 8
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = shl nsw i64 %i.cv, 1                    ; 2 uses
  %i.cx = add i64 %i.cw, 5                        ; 2 uses
  %i.cy = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i48 = icmp eq i64 %i.cx, -1
  br i1 %.not.i.i.i48, label %bb.s, label %bb.t, !prof !48

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43) #18
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cz = add i64 %i.cw, 12
  %i.da = and i64 %i.cz, -8                       ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = sub i64 %i.dc, %i.de
  %i.dg = icmp ugt i64 %i.da, %i.df
  br i1 %i.dg, label %bb.u, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i, !prof !48

bb.u:                                             ; preds = %bb.t
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cy, i64 noundef %i.da) #17
  %.pre.i.i.i.i = load i64, ptr %i.dd, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i: ; preds = %bb.u, %bb.t
  %i.dh = phi i64 [ %.pre.i.i.i.i, %bb.u ], [ %i.de, %bb.t ] ; 2 uses
  %i.di = inttoptr i64 %i.dh to ptr               ; 4 uses
  %i.dj = add i64 %i.dh, %i.da
  store i64 %i.dj, ptr %i.dd, align 8
  %i.dk = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.dl = load ptr, ptr %i.x, align 8
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dk, i64 %i.do, i1 false)
  %i.dp = load ptr, ptr %i.x, align 8
  %i.dq = load ptr, ptr %i.z, align 8
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.di, i64 %i.dt ; 2 uses
  store ptr %i.du, ptr %i.x, align 8
  store ptr %i.di, ptr %i.z, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cx
  store ptr %i.dv, ptr %i.y, align 8
  br label %.preheader.i.i.a

.preheader.i.i.a:                                 ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i, %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit
  %i.dw = phi ptr [ %i.du, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i ], [ %i.co, %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit ] ; 2 uses
  %i.dx = icmp samesign ugt i32 %.0.i, 63
  br i1 %i.dx, label %.lr.ph18.i.i, label %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit

.lr.ph18.i.i:                                     ; preds = %.preheader.i.i.a
  %4 = trunc i32 %.0.i to i8
  %5 = or i8 %4, -128
  %6 = load ptr, ptr %i.x, align 8                ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 1
  store ptr %7, ptr %i.x, align 8
  store i8 %5, ptr %6, align 1
  %8 = lshr i32 %.0.i, 7                          ; 2 uses
  %9 = icmp ugt i32 %.0.i, 8191
  br i1 %9, label %.lr.ph18.i.i.1, label %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit.thread

.lr.ph18.i.i.1:                                   ; preds = %.lr.ph18.i.i
  %10 = trunc i32 %8 to i8
  %11 = or i8 %10, -128
  %12 = load ptr, ptr %i.x, align 8               ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 1
  store ptr %13, ptr %i.x, align 8
  store i8 %11, ptr %12, align 1
  %14 = lshr i32 %.0.i, 14                        ; 2 uses
  %15 = icmp ugt i32 %.0.i, 1048575
  br i1 %15, label %.lr.ph18.i.i.a, label %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit.thread

.lr.ph18.i.i.a:                                   ; preds = %.lr.ph18.i.i.1
  %i.dy = trunc i32 %14 to i8
  %i.dz = or i8 %i.dy, -128
  %i.ea = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store ptr %i.eb, ptr %i.x, align 8
  store i8 %i.dz, ptr %i.ea, align 1
  %i.ec = lshr i32 %.0.i, 21                      ; 2 uses
  %i.ed = icmp ugt i32 %.0.i, 134217727
  br i1 %i.ed, label %.lr.ph18.i.i.3, label %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit.thread

.lr.ph18.i.i.3:                                   ; preds = %.lr.ph18.i.i.a
  %16 = trunc i32 %i.ec to i8
  %17 = or i8 %16, -128
  %18 = load ptr, ptr %i.x, align 8               ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 1
  store ptr %19, ptr %i.x, align 8
  store i8 %17, ptr %18, align 1
  %20 = lshr i32 %.0.i, 28
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit.thread

_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit.thread: ; preds = %.lr.ph18.i.i.3, %.lr.ph18.i.i.a, %.lr.ph18.i.i.1, %.lr.ph18.i.i
  %.lcssa = phi i32 [ %8, %.lr.ph18.i.i ], [ %14, %.lr.ph18.i.i.1 ], [ %i.ec, %.lr.ph18.i.i.a ], [ %20, %.lr.ph18.i.i.3 ]
  %.pre = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ee = trunc nuw nsw i32 %.lcssa to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  store ptr %i.ef, ptr %i.x, align 8
  store i8 %i.ee, ptr %.pre, align 1
  br label %.lr.ph141

_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit: ; preds = %.preheader.i.i.a
  %i.eg = trunc nuw nsw i32 %.0.i to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store ptr %i.eh, ptr %i.x, align 8
  store i8 %i.eg, ptr %i.dw, align 1
  %.not225 = icmp eq i32 %.0.i, 0
  br i1 %.not225, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit.thread, %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %.045144, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %.0.i to i64
  br label %bb.v

._crit_edge142:                                   ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit86, %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %.045144, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ej, %i.cb
  br i1 %.not, label %._crit_edge146, label %.lr.ph145

bb.v:                                             ; preds = %.lr.ph141, %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit86
  %indvars.iv = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next, %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit86 ] ; 3 uses
  %i.ek = load i32, ptr %.045144, align 8
  %i.el = load i64, ptr %i.ei, align 8
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv
  %i.eo = icmp slt i32 %i.ek, 0
  %.0.in.i = select i1 %i.eo, ptr %i.en, ptr %.045144
  %.0.i49 = load i32, ptr %.0.in.i, align 4       ; 7 uses
  %i.ep = load ptr, ptr %i.x, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 5
  %i.er = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.es = icmp ugt ptr %i.eq, %i.er
  br i1 %i.es, label %bb.w, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i50

bb.w:                                             ; preds = %bb.v
  %i.et = load ptr, ptr %i.z, align 8
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = shl nsw i64 %i.ew, 1                    ; 2 uses
  %i.ey = add i64 %i.ex, 5                        ; 2 uses
  %i.ez = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i64 = icmp eq i64 %i.ey, -1
  br i1 %.not.i.i.i64, label %bb.x, label %bb.y, !prof !48

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43) #18
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fa = add i64 %i.ex, 12
  %i.fb = and i64 %i.fa, -8                       ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8            ; 2 uses
  %i.fg = sub i64 %i.fd, %i.ff
  %i.fh = icmp ugt i64 %i.fb, %i.fg
  br i1 %i.fh, label %bb.z, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i65, !prof !48

bb.z:                                             ; preds = %bb.y
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ez, i64 noundef %i.fb) #17
  %.pre.i.i.i.i66 = load i64, ptr %i.fe, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i65

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i65: ; preds = %bb.z, %bb.y
  %i.fi = phi i64 [ %.pre.i.i.i.i66, %bb.z ], [ %i.ff, %bb.y ] ; 2 uses
  %i.fj = inttoptr i64 %i.fi to ptr               ; 4 uses
  %i.fk = add i64 %i.fi, %i.fb
  store i64 %i.fk, ptr %i.fe, align 8
  %i.fl = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.fm = load ptr, ptr %i.x, align 8
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.fl, i64 %i.fp, i1 false)
  %i.fq = load ptr, ptr %i.x, align 8
  %i.fr = load ptr, ptr %i.z, align 8
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = getelementptr inbounds i8, ptr %i.fj, i64 %i.fu
  store ptr %i.fv, ptr %i.x, align 8
  store ptr %i.fj, ptr %i.z, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.ey
  store ptr %i.fw, ptr %i.y, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i50

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i50: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i65, %bb.v
  %i.fx = icmp sgt i32 %.0.i49, -1
  br i1 %i.fx, label %.preheader.i.i59, label %.preheader14.i.i51

.preheader14.i.i51:                               ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i50
  %.not15.i.i52 = icmp samesign ugt i32 %.0.i49, -65
  br i1 %.not15.i.i52, label %._crit_edge.i.i56, label %.lr.ph.i.i53

.preheader.i.i59:                                 ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i50
  %i.fy = icmp samesign ugt i32 %.0.i49, 63
  br i1 %i.fy, label %.lr.ph18.i.i62, label %._crit_edge19.i.i60

.lr.ph18.i.i62:                                   ; preds = %.preheader.i.i59, %.lr.ph18.i.i62
  %.017.i.i63 = phi i32 [ %i.gd, %.lr.ph18.i.i62 ], [ %.0.i49, %.preheader.i.i59 ] ; 3 uses
  %i.fz = trunc i32 %.017.i.i63 to i8
  %i.ga = or i8 %i.fz, -128
  %i.gb = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store ptr %i.gc, ptr %i.x, align 8
  store i8 %i.ga, ptr %i.gb, align 1
  %i.gd = lshr i32 %.017.i.i63, 7                 ; 2 uses
  %i.ge = icmp ugt i32 %.017.i.i63, 8191
  br i1 %i.ge, label %.lr.ph18.i.i62, label %._crit_edge19.i.i60, !llvm.loop !114

._crit_edge19.i.i60:                              ; preds = %.lr.ph18.i.i62, %.preheader.i.i59
  %.0.lcssa.i.i61 = phi i32 [ %.0.i49, %.preheader.i.i59 ], [ %i.gd, %.lr.ph18.i.i62 ]
  %i.gf = trunc nuw nsw i32 %.0.lcssa.i.i61 to i8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit67

.lr.ph.i.i53:                                     ; preds = %.preheader14.i.i51, %.lr.ph.i.i53
  %.116.i.i54 = phi i32 [ %i.gk, %.lr.ph.i.i53 ], [ %.0.i49, %.preheader14.i.i51 ] ; 2 uses
  %i.gg = trunc i32 %.116.i.i54 to i8
  %i.gh = or i8 %i.gg, -128
  %i.gi = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store ptr %i.gj, ptr %i.x, align 8
  store i8 %i.gh, ptr %i.gi, align 1
  %i.gk = ashr i32 %.116.i.i54, 7                 ; 3 uses
  %.not.i.i55 = icmp ugt i32 %i.gk, -65
  br i1 %.not.i.i55, label %._crit_edge.i.i56, label %.lr.ph.i.i53, !llvm.loop !115

._crit_edge.i.i56:                                ; preds = %.lr.ph.i.i53, %.preheader14.i.i51
  %.1.lcssa.i.i57 = phi i32 [ %.0.i49, %.preheader14.i.i51 ], [ %i.gk, %.lr.ph.i.i53 ]
  %i.gl = trunc nsw i32 %.1.lcssa.i.i57 to i8
  %i.gm = and i8 %i.gl, 127
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit67

_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit67: ; preds = %._crit_edge19.i.i60, %._crit_edge.i.i56
  %.sink.i.i58 = phi i8 [ %i.gm, %._crit_edge.i.i56 ], [ %i.gf, %._crit_edge19.i.i60 ]
  %i.gn = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  store ptr %i.go, ptr %i.x, align 8
  store i8 %.sink.i.i58, ptr %i.gn, align 1
  %i.gp = load i32, ptr %.045144, align 8
  %i.gq = icmp sgt i32 %i.gp, -1
  %i.gr = load i64, ptr %i.ei, align 8            ; 2 uses
  br i1 %i.gq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit67
  %i.gs = trunc i64 %i.gr to i32
  br label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit

bb.ab:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_i32vEi.exit67
  %i.gt = inttoptr i64 %i.gr to ptr
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4
  br label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit: ; preds = %bb.aa, %bb.ab
  %.0.i68 = phi i32 [ %i.gs, %bb.aa ], [ %i.gw, %bb.ab ] ; 7 uses
  %i.gx = load ptr, ptr %i.x, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 5
  %i.gz = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ha = icmp ugt ptr %i.gy, %i.gz
  br i1 %i.ha, label %bb.ac, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i69

bb.ac:                                            ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit
  %i.hb = load ptr, ptr %i.z, align 8
  %i.hc = ptrtoint ptr %i.gz to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = shl nsw i64 %i.he, 1                    ; 2 uses
  %i.hg = add i64 %i.hf, 5                        ; 2 uses
  %i.hh = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i83 = icmp eq i64 %i.hg, -1
  br i1 %.not.i.i.i83, label %bb.ad, label %bb.ae, !prof !48

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43) #18
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.hi = add i64 %i.hf, 12
  %i.hj = and i64 %i.hi, -8                       ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 3 uses
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = sub i64 %i.hl, %i.hn
  %i.hp = icmp ugt i64 %i.hj, %i.ho
  br i1 %i.hp, label %bb.af, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i84, !prof !48

bb.af:                                            ; preds = %bb.ae
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.hh, i64 noundef %i.hj) #17
  %.pre.i.i.i.i85 = load i64, ptr %i.hm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i84

end_hunk_0
