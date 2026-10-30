Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.12?download=true
inline.NumInlined: 730
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !19, !noundef !5
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.e
    i32 1, label %bb.g
    i32 2, label %bb.j
    i32 3, label %bb.l
    i32 4, label %bb.n
    i32 5, label %bb.p
    i32 6, label %bb.r
    i32 7, label %bb.b
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.c = load i64, ptr %i.b, align 8, !range !9, !alias.scope !405, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !408, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !408, !noundef !5
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !noalias !408
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !411, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !411, !noundef !5
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !411
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.p = load i64, ptr %i.o, align 8, !range !9, !alias.scope !414, !noundef !5
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !417, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !417, !noundef !5
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !noalias !417
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.j:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !420, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !420, !noundef !5
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !noalias !420
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vcomp5VCompE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.l:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !423, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !423, !noundef !5
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !noalias !423
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vlist5VListE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.n:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !426, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !426, !noundef !5
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  store i64 %i.aj, ptr %i.ah, align 8, !noalias !426
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom7vportal7VPortalE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.p:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i32, ptr %i.al, align 4, !noundef !5 ; 2 uses
  %i.am = icmp ugt i32 %.val, 1027
  br i1 %i.am, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val) #31
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.r:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !429, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !429, !noundef !5
  %i.aq = add i64 %i.ap, -1                       ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !noalias !429
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom9vsuspense9VSuspenseE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners9ListenersECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  %i.b = icmp eq i64 %.8.val, 0
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtB4_6option6OptionINtNtBG_2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %.lr.ph.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtB4_6option6OptionINtNtBG_2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, %bb.a
  ret void

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !445, !noundef !5 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !noalias !446, !noundef !5
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.e, align 8, !noalias !446
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.d, %.8.val
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.d, %.8.val
  br i1 %i.l, label %.loopexit.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit8.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !448, !noundef !5 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit8.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph12.i.i
  %i.q = load i64, ptr %i.o, align 8, !noalias !449, !noundef !5
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.o, align 8, !noalias !449
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit8.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit8.i.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit8.i.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i.i
  %i.t = icmp eq i64 %i.n, %.8.val
  br i1 %i.t, label %.loopexit.i, label %.lr.ph12.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i
  %i.v = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef 8) #31
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtB4_6option6OptionINtNtBG_2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

.loopexit.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit8.i.i, %bb.d
  %i.w = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 8) #31
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers6models9wordlevel16WordLevelBuilderECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !454, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit4.i unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %bb.f, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %eh.lpad-body.i, %.body.i ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) #27
          to label %common.resume.i unwind label %bb.i

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit4.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers6models9wordlevel6ConfigECsfh9HxMbthk9_27candle_wasm_example_whisper.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit4.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
          to label %common.resume.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume.i:                                  ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.g ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, %.body.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers6models9wordlevel6ConfigECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit4.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %.body4 unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body4 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i3: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit6 unwind label %bb.g

.body4:                                           ; preds = %bb.g, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.g ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i3
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit6: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit6
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body4, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn, %.body4 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit6
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.j:                                             ; preds = %.body4, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !461, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !461, !noundef !5
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !461
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle12UpdateRunnerECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !468, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !468, !noundef !5
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !noalias !468
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBI_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEE9drop_slowB1I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCs9OLX912zl7o_3yew4html8listener6events7onclick7WrapperECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !478, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !478, !noundef !5
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !noalias !478
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9OLX912zl7o_3yew8callback8CallbackNtNtNtCsey8dOKI5XLb_7web_sys8features14gen_MouseEvent10MouseEventEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTNtNtNtCsey8dOKI5XLb_7web_sys8features14gen_MouseEvent10MouseEventEEp6OutputuEL_E9drop_slowCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9OLX912zl7o_3yew8callback8CallbackNtNtNtCsey8dOKI5XLb_7web_sys8features14gen_MouseEvent10MouseEventEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9OLX912zl7o_3yew8callback8CallbackNtNtNtCsey8dOKI5XLb_7web_sys8features14gen_MouseEvent10MouseEventEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  %.sroa.0.07 = phi i64 [ %i.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.07 ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.0.07, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.d = load i64, ptr %i.b, align 8, !range !15, !alias.scope !489, !noundef !5 ; 5 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.f = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.d, -2
  %i.h = icmp samesign ugt i64 %i.d, 1
  %i.i = select i1 %i.h, i64 %i.g, i64 1
  switch i64 %i.i, label %bb.c [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load i32, ptr %i.j, align 8, !alias.scope !491, !noundef !5 ; 2 uses
  %i.k = icmp ugt i32 %.val.i.i, 1027
  br i1 %i.k, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val.i.i) #31, !noalias !491
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.l = icmp eq i64 %i.d, 0
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !495, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !495, !noundef !5
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !noalias !495
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.g, %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.r = icmp eq i64 %i.c, %1
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, %bb.a
  ret void

bb.h:                                             ; preds = %.lr.ph15
  %i.s = add nuw nsw i64 %.sroa.0.113, 1          ; 2 uses
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %._crit_edge16, label %.lr.ph15

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.c, %1
  br i1 %i.v, label %._crit_edge16, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.113 = phi i64 [ %i.s, %bb.h ], [ %i.c, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.113
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #27
          to label %bb.h unwind label %bb.j

._crit_edge16:                                    ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.u

bb.j:                                             ; preds = %.lr.ph15
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCslUjavNzuXCV_15spm_precompileds_1__NtB5_11PrecompiledNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeINtNtNtNtCsiOg657KYfD4_5serde7private2de7content22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB3b_23PrecompiledDeserializerNtB22_11Deserialize11deserialize9___VisitorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @12, i64 noundef 1)
  %i.d = load i64, ptr %i.c, align 8, !range !7, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXCslUjavNzuXCV_15spm_precompiledNtB2_11PrecompiledINtNtCsf3Ta7LF998c_4core7convert7TryFromNtB2_23PrecompiledDeserializerE8try_from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  %i.i = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !20, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = call noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customNtCslUjavNzuXCV_15spm_precompiled16PrecompiledErrorECsfh9HxMbthk9_27candle_wasm_example_whisper(i1 noundef zeroext %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCslUjavNzuXCV_15spm_precompileds_1__NtB5_11PrecompiledNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB1Z_4read7StrReadEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB2s_23PrecompiledDeserializerNtB1j_11Deserialize11deserialize9___VisitorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @12, i64 noundef 1)
  %i.d = load i64, ptr %i.c, align 8, !range !7, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXCslUjavNzuXCV_15spm_precompiledNtB2_11PrecompiledINtNtCsf3Ta7LF998c_4core7convert7TryFromNtB2_23PrecompiledDeserializerE8try_from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  %i.i = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !20, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = call noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customNtCslUjavNzuXCV_15spm_precompiled16PrecompiledErrorECsfh9HxMbthk9_27candle_wasm_example_whisper(i1 noundef zeroext %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 2, 4) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.d = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !13, !noundef !5 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #30
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %2
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, %bb.e
  %.sroa.012.021 = phi ptr [ %1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %i.r, %bb.e ] ; 3 uses
  %.sroa.7.020 = phi i64 [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %i.q, %bb.e ] ; 3 uses
  %.sroa.10.019 = phi i64 [ %i.g, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %i.o, %bb.e ]
  %i.o = add i64 %.sroa.10.019, -1                ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.021, %i.n
end_hunk_0
begin_hunk_1_@_RNvXNtCsfh9HxMbthk9_27candle_wasm_example_whisper3appNtB2_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component6create:bb.a
  ret void

bb.u:                                             ; preds = %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.v:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsfh9HxMbthk9_27candle_wasm_example_whisper3appNtB2_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component6update(ptr noalias nofree noundef align 8 dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [208 x i8], align 8               ; 5 uses
  %i.c = alloca [200 x i8], align 8               ; 4 uses
  %i.d = alloca [200 x i8], align 8               ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [200 x i8], align 8               ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [152 x i8], align 8               ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 3 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [152 x i8], align 8               ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [152 x i8], align 8               ; 4 uses
  %i.z = load i64, ptr %2, align 8, !range !1485, !noundef !5
  switch i64 %i.z, label %default.unreachable173 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
  ]

default.unreachable173:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ac = icmp ult i64 %i.ab, 6
  br i1 %i.ac, label %bb.i, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit unwind label %bb.ar

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.y, ptr noundef nonnull align 8 dereferenceable(152) %i.ah, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.as unwind label %.thread161

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull align 8 dereferenceable(152) %i.ai, i64 152, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !6, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !5, !nonnull !5
  call void %i.ao(ptr noundef nonnull %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.k) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aq

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false)
  %i.aq = load i64, ptr %0, align 8, !range !16, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.aq, 2
  br i1 %.not, label %bb.bh, label %bb.bg

bb.i:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr @112, i64 %i.ab
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  store ptr %i.as, ptr %i.v, align 8, !captures !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store i64 22, ptr %i.at, align 8
  %i.au = load i64, ptr %0, align 8, !range !16, !noundef !5
  %.not82 = icmp eq i64 %i.au, 2
  br i1 %.not82, label %.split, label %bb.m

bb.j:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #28
  unreachable

.split:                                           ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = tail call fastcc { i64, double } @_RNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app15performance_now() ; 2 uses
  %i.ax = extractvalue { i64, double } %i.aw, 0
  %i.ay = extractvalue { i64, double } %i.aw, 1
  store i64 %i.ax, ptr %0, align 8
  store double %i.ay, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @132, ptr noundef nonnull %i.t), !noalias !1486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i93 unwind label %bb.k

bb.k:                                             ; preds = %.split
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body94 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i93: ; preds = %.split
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit96 unwind label %bb.n

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 42, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bc = load i64, ptr %i.i, align 8, !range !9, !noundef !5
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !13, !noundef !5 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.al, label %bb.am, !prof !8

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i93
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.body94:                                          ; preds = %bb.k, %bb.n
  %eh.lpad-body95 = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.ba, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit96: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.bk, align 8
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentEBG_.exit, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %i.bn = icmp eq i64 %i.bp, %i.bl
  br i1 %i.bn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit96, %bb.o
  %.sroa.0.0.i193 = phi i64 [ %i.bp, %bb.o ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit96 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %i.bj, i64 %.sroa.0.0.i193
  %i.bp = add nuw nsw i64 %.sroa.0.0.i193, 1      ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bo)
          to label %bb.o unwind label %bb.q

bb.p:                                             ; preds = %.lr.ph195
  %i.bq = add nuw nsw i64 %.sroa.0.1.i194, 1      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bl
  br i1 %i.br, label %common.resume, label %.lr.ph195

bb.q:                                             ; preds = %.lr.ph
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = icmp eq i64 %i.bp, %i.bl
  br i1 %i.bt, label %common.resume, label %.lr.ph195

.lr.ph195:                                        ; preds = %bb.q, %bb.p
  %.sroa.0.1.i194 = phi i64 [ %i.bq, %bb.p ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [96 x i8], ptr %i.bj, i64 %.sroa.0.1.i194
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bu) #27
          to label %bb.p unwind label %bb.r

common.resume:                                    ; preds = %bb.p, %bb.q, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentEEB1j_.exit.i, %bb.ce, %bb.cq, %bb.cl, %.body94, %.body99, %.body, %.thread157, %.body141.thread, %bb.cs, %bb.ct, %bb.cu, %bb.af, %bb.ag, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.aj ], [ %i.fg, %bb.cu ], [ %i.dd, %bb.ag ], [ %i.dd, %bb.af ], [ %eh.lpad-body100, %.body99 ], [ %eh.lpad-body95, %.body94 ], [ %eh.lpad-body, %.body ], [ %.pn80156, %.thread157 ], [ %i.fg, %bb.cs ], [ %.pn78177, %bb.ct ], [ %.pn78177, %.body141.thread ], [ %.pn.ph, %bb.ce ], [ %.pn76, %bb.cl ], [ %i.hd, %bb.cq ], [ %eh.lpad-body126, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentEEB1j_.exit.i ], [ %i.bs, %bb.q ], [ %i.bs, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %.lr.ph195
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentEBG_.exit: ; preds = %bb.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper.exit96
  %i.bw = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.bx = load i64, ptr %i.at, align 8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  %i.by = load ptr, ptr %1, align 8, !alias.scope !1489, !nonnull !5, !noundef !5 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !noalias !1490, !noundef !5 ; 2 uses
  %i.ca = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.cb, ptr %i.by, align 8, !noalias !1490
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.s, label %bb.t, !prof !8

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentEBG_.exit
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentEBG_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !1489, !noundef !5 ; 4 uses
  %.not.i3.i = icmp eq ptr %i.ce, null
  br i1 %.not.i3.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !1490, !noundef !5 ; 2 uses
  %i.cg = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add i64 %i.cf, 1                        ; 2 uses
  store i64 %i.ch, ptr %i.ce, align 8, !noalias !1490
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !1489, !nonnull !5, !noundef !5 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !1490, !noundef !5 ; 2 uses
  %i.cm = icmp ne i64 %i.cl, 0
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add i64 %i.cl, 1                        ; 2 uses
  store i64 %i.cn, ptr %i.ck, align 8, !noalias !1490
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.x, label %bb.y, !prof !8

bb.w:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !1489, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1491
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.bw, ptr %i.cr, align 8, !noalias !1487
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %i.bx, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1487
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i8 0, ptr %.sroa.5147.0..sroa_idx, align 8, !noalias !1487
  store ptr %i.by, ptr %i.f, align 8, !noalias !1491
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ck, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1491
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.ce, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1491
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.cq, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1491
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store i8 0, ptr %i.cs, align 8, !noalias !1491
  %i.ct = invoke noundef ptr @_RNvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB5_11LocalHandle11try_current()
          to label %bb.z unwind label %bb.aj, !noalias !1492 ; 5 uses

bb.z:                                             ; preds = %bb.y
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %.noexc6.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1492
  store ptr %i.ct, ptr %i.e, align 8, !noalias !1492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.d, ptr noundef nonnull align 8 dereferenceable(200) %i.f, i64 200, i1 false), !noalias !1491
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !1493
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cx = atomicrmw add ptr %i.cw, i64 1 acq_rel, align 8, !noalias !1493 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1493
  store ptr %i.ct, ptr %i.b, align 8, !noalias !1493
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.cy, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.d, i64 200, i1 false), !noalias !1491
  %i.cz = invoke noundef nonnull ptr @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsdIJosCPXwkf_5tokio4task5local8LocalSetE4withNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1T_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3f_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB4d_B4b_NtB3h_9Component6update0NtB4d_3MsgE0E0INtNtNtNtB10_7runtime4task4join10JoinHandleuEEB4f_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.b)
          to label %.noexc.i unwind label %bb.af, !noalias !1491 ; 2 uses

.noexc.i:                                         ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1493
  %i.da = invoke noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.cz)
          to label %.noexc4.i unwind label %bb.af, !noalias !1491

.noexc4.i:                                        ; preds = %.noexc.i
  br i1 %i.da, label %bb.ac, label %_RINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB6_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1r_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB2p_B2n_NtB1t_9Component6update0NtB2p_3MsgE0EB2r_.exit.i

bb.ac:                                            ; preds = %.noexc4.i
  invoke void @_RNvMs_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.cz)
          to label %_RINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB6_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1r_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB2p_B2n_NtB1t_9Component6update0NtB2p_3MsgE0EB2r_.exit.i unwind label %bb.af, !noalias !1491

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

.noexc6.i:                                        ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %i.f, i64 200, i1 false), !noalias !1491
  %i.db = call noundef nonnull ptr @_RINvNtNtCsdIJosCPXwkf_5tokio4task5local11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtBX_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB1U_B1S_NtBZ_9Component6update0NtB1U_3MsgE0EB1W_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(200) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !1492 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1492
  %i.dc = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.db), !noalias !1491
  br i1 %i.dc, label %bb.ae, label %_RINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB6_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB13_B11_NtB8_9Component6update0NtB13_3MsgEB15_.exit

bb.ae:                                            ; preds = %.noexc6.i
  call void @_RNvMs_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.db), !noalias !1491
  br label %_RINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB6_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB13_B11_NtB8_9Component6update0NtB13_3MsgEB15_.exit

bb.af:                                            ; preds = %bb.ac, %.noexc.i, %bb.ab
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  call void @llvm.experimental.noalias.scope.decl(metadata !1495), !noalias !1496
  call void @llvm.experimental.noalias.scope.decl(metadata !1497), !noalias !1496
  %i.de = load ptr, ptr %i.e, align 8, !alias.scope !1498, !noalias !1492, !nonnull !5, !noundef !5
  %i.df = atomicrmw add ptr %i.de, i64 -1 release, align 8, !noalias !1499
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ag, label %common.resume

bb.ag:                                            ; preds = %bb.af
  fence acquire, !noalias !1496
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicjEE9drop_slowCshKUX2qKI1Vd_6tokise(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #32
          to label %common.resume unwind label %bb.ai, !noalias !1491

_RINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB6_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1r_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB2p_B2n_NtB1t_9Component6update0NtB2p_3MsgE0EB2r_.exit.i: ; preds = %bb.ac, %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501), !noalias !1496
  call void @llvm.experimental.noalias.scope.decl(metadata !1502), !noalias !1496
  %i.dh = load ptr, ptr %i.e, align 8, !alias.scope !1503, !noalias !1492, !nonnull !5, !noundef !5
  %i.di = atomicrmw add ptr %i.dh, i64 -1 release, align 8, !noalias !1504
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker11LocalHandleECsfh9HxMbthk9_27candle_wasm_example_whisper.exit10.i

bb.ah:                                            ; preds = %_RINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB6_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1r_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB2p_B2n_NtB1t_9Component6update0NtB2p_3MsgE0EB2r_.exit.i
  fence acquire, !noalias !1496
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicjEE9drop_slowCshKUX2qKI1Vd_6tokise(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #32, !noalias !1491
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker11LocalHandleECsfh9HxMbthk9_27candle_wasm_example_whisper.exit10.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker11LocalHandleECsfh9HxMbthk9_27candle_wasm_example_whisper.exit10.i: ; preds = %bb.ah, %_RINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB6_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1r_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB2p_B2n_NtB1t_9Component6update0NtB2p_3MsgE0EB2r_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1492
  br label %_RINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB6_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB13_B11_NtB8_9Component6update0NtB13_3MsgEB15_.exit

bb.ai:                                            ; preds = %bb.aj, %bb.ag
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1491
  unreachable

bb.aj:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtBK_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB1H_B1F_NtBM_9Component6update0NtB1H_3MsgE0EB1J_(ptr noundef nonnull align 8 dereferenceable(200) %i.f) #27
          to label %common.resume unwind label %bb.ai, !noalias !1491

_RINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB6_5ScopeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3AppE11send_futureNCNvXB13_B11_NtB8_9Component6update0NtB13_3MsgEB15_.exit: ; preds = %.noexc6.i, %bb.ae, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker11LocalHandleECsfh9HxMbthk9_27candle_wasm_example_whisper.exit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1491
  br label %bb.ak
end_hunk_1
