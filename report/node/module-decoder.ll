inline.NumInlined: 6143
inline.NumDeleted: 2639
begin_hunk_0_@_ZN2v88internal4wasm17ModuleDecoderImpl13DecodeSectionENS1_11SectionCodeENS_4base6VectorIKhEEj:bb.a
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = and i32 %i.bq, 512
  %.not28 = icmp eq i32 %i.br, 0
  br i1 %.not28, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2v88internal4wasm17ModuleDecoderImpl32DecodeCompilationPrioritySectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = load ptr, ptr %i.d, align 8
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bu, %i.bz
  %i.cb = trunc i64 %i.ca to i32
  %.not.i13 = icmp ugt i32 %i.bx, %i.cb
  br i1 %.not.i13, label %bb.ai, label %bb.ah, !prof !22

bb.ah:                                            ; preds = %bb.ag
  %i.cc = and i64 %i.bw, 4294967295
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cc
  br label %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit15

bb.ai:                                            ; preds = %bb.ag
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.by, ptr noundef nonnull @.str.1136, i32 noundef %i.bx)
  %i.ce = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit15

_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit15: ; preds = %bb.ah, %bb.ai
  %storemerge.i14 = phi ptr [ %i.ce, %bb.ai ], [ %i.cd, %bb.ah ]
  store ptr %storemerge.i14, ptr %i.e, align 8
  br label %bb.aq

bb.aj:                                            ; preds = %bb.b
  call void @_ZN2v88internal4wasm17ModuleDecoderImpl24DecodeDescriptorsSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  br label %bb.aq

bb.ak:                                            ; preds = %bb.b
  call void @_ZN2v88internal4wasm17ModuleDecoderImpl22DecodeDataCountSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  br label %bb.aq

bb.al:                                            ; preds = %bb.b
  call void @_ZN2v88internal4wasm17ModuleDecoderImpl16DecodeTagSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  br label %bb.aq

bb.am:                                            ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = and i32 %i.cg, 1024
  %.not27 = icmp eq i32 %i.ch, 0
  br i1 %.not27, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN2v88internal4wasm17ModuleDecoderImpl22DecodeStringRefSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ci = load ptr, ptr %i.e, align 8
  %i.cj = call noundef ptr @_ZN2v88internal4wasm11SectionNameENS1_11SectionCodeE(i8 noundef signext 14)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ci, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.cj)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.b
  %i.ck = load ptr, ptr %i.e, align 8
  %i.cl = call noundef ptr @_ZN2v88internal4wasm11SectionNameENS1_11SectionCodeE(i8 noundef signext %1)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ck, ptr noundef nonnull @.str.94, ptr noundef nonnull %i.cl)
  br label %bb.as

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.af, %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit15, %bb.aa, %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit12, %bb.v, %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit9, %bb.al, %bb.ak, %bb.aj, %bb.t, %bb.s, %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.cm = load ptr, ptr %i.e, align 8             ; 4 uses
  %.not = icmp eq ptr %i.cm, %i.c
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cn = icmp ult ptr %i.cm, %i.c
  %i.co = select i1 %i.cn, ptr @.str.78, ptr @.str.79
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = ptrtoint ptr %2 to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcmmEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.cm, ptr noundef nonnull @.str.95, ptr noundef nonnull %i.co, i64 noundef %3, i64 noundef %i.cr)
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %bb.a, %bb.ar, %bb.aq, %bb.ap
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm13ModuleDecoder18DecodeFunctionBodyEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = zext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0.insert.ext.i = zext i32 %2 to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %3 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.h, align 8
  %i.i = icmp ult i32 %2, 50
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 100
  %i.l = atomicrmw add ptr %i.k, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN2v88internal4wasm17ModuleDecoderImpl18DecodeFunctionBodyEjjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sub i32 %i.x, %3
  %i.z = add i32 %i.y, %i.v
  %i.aa = zext i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.p, i64 %i.ab
  %i.ad = load ptr, ptr %i.n, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.g, ptr noundef %i.ac) #25, !inline_history !37
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl18DecodeFunctionBodyEjjj.exit

_ZN2v88internal4wasm17ModuleDecoderImpl18DecodeFunctionBodyEjjj.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm13ModuleDecoder16StartCodeSectionENS1_12WireBytesRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp ugt i8 %i.c, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef %i.f, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.9)
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl17CheckSectionOrderENS1_11SectionCodeE.exit.i

bb.c:                                             ; preds = %bb.a
  store i8 11, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl17CheckSectionOrderENS1_11SectionCodeE.exit.i

_ZN2v88internal4wasm17ModuleDecoderImpl17CheckSectionOrderENS1_11SectionCodeE.exit.i: ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZN2v88internal4wasm17ModuleDecoderImpl16StartCodeSectionENS1_12WireBytesRefE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm17ModuleDecoderImpl17CheckSectionOrderENS1_11SectionCodeE.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 68 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN2v88internal4wasm17ModuleDecoderImpl16StartCodeSectionENS1_12WireBytesRefE.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not29.i.i = icmp eq i32 %i.q, 0
  br i1 %.not29.i.i, label %.lr.ph.i.i, label %_ZN2v88internal4wasm17ModuleDecoderImpl16StartCodeSectionENS1_12WireBytesRefE.exit

._crit_edge.i.i:                                  ; preds = %bb.i
  store i32 %.1.i1.i, ptr %i.n, align 4
  store i32 %.126.i.i, ptr %i.p, align 8
  %.pre.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl16StartCodeSectionENS1_12WireBytesRefE.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.i
  %.036.i.i = phi i32 [ %.1.i1.i, %bb.i ], [ 0, %bb.e ] ; 3 uses
  %.02535.i.i = phi i32 [ %.126.i.i, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.02734.i.i = phi i32 [ %.128.i.i, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.sroa.030.033.i.i = phi ptr [ %i.an, %bb.i ], [ %i.j, %bb.e ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i.i, i64 4
  %i.s = load i8, ptr %i.r, align 4, !range !38, !noundef !39
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %2, label %bb.g

2:                                                ; preds = %.lr.ph.i.i
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i.i, i64 21
  %4 = load i8, ptr %3, align 1, !range !38, !noundef !39
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %2
  %i.u = add i32 %.02734.i.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i.i, i64 16
  store i32 %.02734.i.i, ptr %i.v, align 8
  br label %bb.i

bb.g:                                             ; preds = %2, %.lr.ph.i.i
  %i.w = load i32, ptr %.sroa.030.033.i.i, align 4 ; 2 uses
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %bb.h, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i.i, i64 16
  store i32 %.02535.i.i, ptr %i.y, align 8
  %i.z = add i32 %.02535.i.i, 1
  br label %bb.i

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i.i: ; preds = %bb.g
  %i.aa = lshr i32 %i.w, 8
  %i.ab = add nuw nsw i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32                    ; 3 uses
  %i.ah = add i32 %.036.i.i, -1
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = sub nsw i32 0, %i.ag
  %i.ak = and i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i.i, i64 16
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = add i32 %i.ak, %i.ag
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i.i, %bb.h, %bb.f
  %.128.i.i = phi i32 [ %i.u, %bb.f ], [ %.02734.i.i, %bb.h ], [ %.02734.i.i, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i.i ]
  %.126.i.i = phi i32 [ %.02535.i.i, %bb.f ], [ %i.z, %bb.h ], [ %.02535.i.i, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i.i ] ; 2 uses
  %.1.i1.i = phi i32 [ %.036.i.i, %bb.f ], [ %.036.i.i, %bb.h ], [ %i.am, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i.i, i64 24 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN2v88internal4wasm17ModuleDecoderImpl16StartCodeSectionENS1_12WireBytesRefE.exit: ; preds = %_ZN2v88internal4wasm17ModuleDecoderImpl17CheckSectionOrderENS1_11SectionCodeE.exit.i, %bb.d, %bb.e, %._crit_edge.i.i
  %i.ap = phi ptr [ %i.h, %_ZN2v88internal4wasm17ModuleDecoderImpl17CheckSectionOrderENS1_11SectionCodeE.exit.i ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %.pre.i, %._crit_edge.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store i64 %1, ptr %i.aq, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm13ModuleDecoder19CheckFunctionsCountEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq i32 %1, %i.e                  ; 2 uses
  br i1 %.not.i, label %_ZN2v88internal4wasm17ModuleDecoderImpl19CheckFunctionsCountEjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(264) %i.a, i32 noundef %2, ptr noundef nonnull @.str.1129, i32 noundef %1, i32 noundef %i.e)
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl19CheckFunctionsCountEjj.exit

_ZN2v88internal4wasm17ModuleDecoderImpl19CheckFunctionsCountEjj.exit: ; preds = %bb.a, %bb.b
  ret i1 %.not.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm13ModuleDecoder14FinishDecodingEv(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::wasm::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  tail call void @_ZN2v88internal4wasm17ModuleDecoderImpl14FinishDecodingEv(ptr dead_on_unwind writable sret(%"class.v8::internal::wasm::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ModuleDecoderImpl14FinishDecodingEv(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::wasm::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(264) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8              ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not.i1 = icmp eq i32 %i.f, 0
  br i1 %.not.i1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 4
  %.not2.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef %i.p, ptr noundef nonnull @.str.1130, i32 noundef %i.f)
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 4096
  %.not4.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not4.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, %i.y
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef %i.af, ptr noundef nonnull @.str.1080, i32 noundef %i.y, i32 noundef %i.ad)
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %.not.i2 = icmp eq i32 %i.am, 0
  br i1 %.not.i2, label %bb.j, label %_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %.not29.i = icmp eq i32 %i.ao, 0
  br i1 %.not29.i, label %.lr.ph.i, label %_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit

._crit_edge.i:                                    ; preds = %bb.n
  store i32 %.1.i, ptr %i.al, align 4
  store i32 %.126.i, ptr %i.an, align 8
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit

.lr.ph.i:                                         ; preds = %bb.j, %bb.n
  %.036.i = phi i32 [ %.1.i, %bb.n ], [ 0, %bb.j ] ; 3 uses
  %.02535.i = phi i32 [ %.126.i, %bb.n ], [ 0, %bb.j ] ; 4 uses
  %.02734.i = phi i32 [ %.128.i, %bb.n ], [ 0, %bb.j ] ; 4 uses
  %.sroa.030.033.i = phi ptr [ %i.bl, %bb.n ], [ %i.ah, %bb.j ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 4
  %i.aq = load i8, ptr %i.ap, align 4, !range !38, !noundef !39
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %2, label %bb.l

2:                                                ; preds = %.lr.ph.i
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 21
  %4 = load i8, ptr %3, align 1, !range !38, !noundef !39
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %2
  %i.as = add i32 %.02734.i, 1
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 16
  store i32 %.02734.i, ptr %i.at, align 8
  br label %bb.n

bb.l:                                             ; preds = %2, %.lr.ph.i
  %i.au = load i32, ptr %.sroa.030.033.i, align 4 ; 2 uses
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %bb.m, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 16
  store i32 %.02535.i, ptr %i.aw, align 8
  %i.ax = add i32 %.02535.i, 1
  br label %bb.n

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i: ; preds = %bb.l
  %i.ay = lshr i32 %i.au, 8
  %i.az = add nuw nsw i32 %i.ay, 2
  %i.ba = and i32 %i.az, 7
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32                    ; 3 uses
  %i.bf = add i32 %.036.i, -1
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = sub nsw i32 0, %i.be
  %i.bi = and i32 %i.bg, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 16
  store i32 %i.bi, ptr %i.bj, align 8
  %i.bk = add i32 %i.bi, %i.be
  br label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i, %bb.m, %bb.k
  %.128.i = phi i32 [ %i.as, %bb.k ], [ %.02734.i, %bb.m ], [ %.02734.i, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i ]
  %.126.i = phi i32 [ %.02535.i, %bb.k ], [ %i.ax, %bb.m ], [ %.02535.i, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %.036.i, %bb.k ], [ %.036.i, %bb.m ], [ %i.bk, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 24 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aj
  br i1 %i.bm, label %._crit_edge.i, label %.lr.ph.i

_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit: ; preds = %._crit_edge.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 146
  %i.bq = load i8, ptr %i.bp, align 2, !range !38, !noundef !39
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = or i64 %i.bu, 16
  store i64 %i.bv, ptr %i.bt, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2v88internal4wasm17ModuleDecoderImpl21CheckMismatchedCountsEv.exit
  tail call void @_ZN2v88internal4wasm7Decoder8toResultIKSt10shared_ptrINS1_10WasmModuleEES6_EENS1_6ResultIT0_EEOT_(ptr dead_on_unwind writable sret(%"class.v8::internal::wasm::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal4wasm13ModuleDecoder22IdentifyUnknownSectionEPS2_NS_4base6VectorIKhEEjPNS1_11SectionCodeE(ptr nofree noundef readonly captures(none) %0, ptr %1, i64 %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::wasm::WasmError", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store i32 -1, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.not21.i.i.i.i = icmp eq ptr %5, %i.b
  br i1 %.not21.i.i.i.i, label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i, !prof !22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.m, align 1
  %.pre.i.i.i.i = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit.i.i

_ZN2v88internal4wasm9WasmErroraSEOS2_.exit.i.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.o = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  store i64 0, ptr %i.k, align 8
  store i8 0, ptr %i.o, align 1
  %i.p = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZN2v88internal4wasm7Decoder5ResetENS_4base6VectorIKhEEj.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit.i.i
  %i.r = load i64, ptr %i.j, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZN2v88internal4wasm7Decoder5ResetENS_4base6VectorIKhEEj.exit

_ZN2v88internal4wasm7Decoder5ResetENS_4base6VectorIKhEEj.exit: ; preds = %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.t = load ptr, ptr %0, align 8
  %i.u = call noundef signext i8 @_ZN2v88internal4wasm30IdentifyUnknownSectionInternalEPNS1_7DecoderEPNS1_7ITracerE(ptr noundef %i.t, ptr noundef null)
  store i8 %i.u, ptr %4, align 1
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = sub i64 %i.y, %i.z
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN2v88internal4wasm7Decoder5ResetENS_4base6VectorIKhEEj.exit
  %.0 = phi i64 [ %i.aa, %_ZN2v88internal4wasm7Decoder5ResetENS_4base6VectorIKhEEj.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal4wasm13ModuleDecoder2okEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8
  %.not.i = icmp eq i32 %i.c, -1
  ret i1 %.not.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef signext i8 @_ZN2v88internal4wasm30IdentifyUnknownSectionInternalEPNS1_7DecoderEPNS1_7ITracerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call i64 @_ZN2v88internal4wasm14consume_stringEPNS1_7DecoderEN7unibrow11Utf8VariantEPKcPNS1_7ITracerE(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull @.str.32, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8
  %.not35 = icmp eq i32 %i.c, -1
  br i1 %.not35, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.fr = freeze i64 %i.a                          ; 2 uses
  %.sroa.424.0.extract.shift = lshr i64 %.fr, 32  ; 2 uses
  %.sroa.023.0.extract.trunc = trunc i64 %.fr to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sub i32 %.sroa.023.0.extract.trunc, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i ; 14 uses
  %trunc = trunc nuw i64 %.sroa.424.0.extract.shift to i32
  switch i32 %trunc, label %.loopexit [
    i32 8, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.7
    i32 4, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit
    i32 16, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.1
    i32 24, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.2
    i32 25, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.3
    i32 34, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.4
    i32 11, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.5
    i32 19, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.6
  ]

_ZNK2v84base6VectorIKcEeqERKS3_.exit:             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 1
  %i.l = icmp ne i32 %i.k, 1701667182
  %i.m = zext i1 %i.l to i32
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.thread, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.thread30.4

_ZNK2v84base6VectorIKcEeqERKS3_.exit.thread:      ; preds = %_ZNK2v84base6VectorIKcEeqERKS3_.exit, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.1, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.2, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.3, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.4, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.5, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.6, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.7, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.8
  %.020.idx37.lcssa = phi i64 [ 0, %_ZNK2v84base6VectorIKcEeqERKS3_.exit ], [ 24, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.1 ], [ 48, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.2 ], [ 72, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.3 ], [ 96, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.4 ], [ 120, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.5 ], [ 144, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.6 ], [ 168, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.7 ], [ 192, %_ZNK2v84base6VectorIKcEeqERKS3_.exit.8 ]
  %i.n = getelementptr inbounds nuw i8, ptr @_ZZN2v88internal4wasm30IdentifyUnknownSectionInternalEPNS1_7DecoderEPNS1_7ITracerEE16kSpecialSections, i64 %.020.idx37.lcssa
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.o, align 8
  br label %.loopexit

_ZNK2v84base6VectorIKcEeqERKS3_.exit.1:           ; preds = %bb.b
  %i.q = load i128, ptr %i.j, align 1
  %i.r = icmp ne i128 %i.q, 101448828221541330836941927883174408051
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i.i.i.1 = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i.i.i.i.1, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.thread, label %_ZNK2v84base6VectorIKcEeqERKS3_.exit.thread30.4

_ZNK2v84base6VectorIKcEeqERKS3_.exit.2:           ; preds = %bb.b
  %i.t = load i128, ptr %i.j, align 1
  %i.u = xor i128 %i.t, 152135238979039791551447247966770062701
  %i.v = getelementptr i8, ptr %i.j, i64 16
  %i.w = load i64, ptr %i.v, align 1
  %i.x = zext i64 %i.w to i128
  %i.y = xor i128 %i.x, 8391171929572467553
  %i.z = or i128 %i.u, %i.y
  %i.aa = icmp ne i128 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv:bb.a
  br label %split

_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit: ; preds = %bb.ao
  %i.gz = load i32, ptr %.03086, align 4
  %i.ha = sub i32 %i.gz, %i.gt
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hb
  %i.hd = load i32, ptr %.sroa.056.087, align 4
  %i.he = sub i32 %i.hd, %i.gt
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hf
  %i.hh = zext i32 %i.gv to i64
  %i.hi = call i32 @memcmp(ptr noundef %i.hc, ptr noundef %i.hg, i64 noundef %i.hh) #30
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.ar, label %split

split:                                            ; preds = %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit, %._crit_edge93
  %.pre-phi97 = phi i64 [ %.pre96, %._crit_edge93 ], [ %i.hf, %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.pre-phi97 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.hk, ptr %1, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %i.gx, i32 50) ; 2 uses
  store i32 %.sroa.speculated.i.i, ptr %i.hl, align 8
  %i.hm = icmp ugt i32 %i.gx, 50
  br i1 %i.hm, label %bb.aq, label %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit

bb.aq:                                            ; preds = %split
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(47) %i.hn, ptr noundef nonnull align 1 dereferenceable(47) %i.hk, i64 47, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ho, i8 46, i64 3, i1 false)
  store ptr %i.hn, ptr %1, align 8
  br label %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit

_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit: ; preds = %split, %bb.aq
  %i.hp = phi ptr [ %i.hk, %split ], [ %i.hn, %bb.aq ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.03086, i64 8
  %i.hr = load i8, ptr %i.hq, align 4             ; 2 uses
  %i.hs = icmp ult i8 %i.hr, 5
  br i1 %i.hs, label %switch.lookup148, label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51

switch.lookup148:                                 ; preds = %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit
  %i.ht = zext nneg i8 %i.hr to i64
  %switch.gep149 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.15, i64 %i.ht
  %switch.load150 = load ptr, ptr %switch.gep149, align 8
  br label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51

_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51: ; preds = %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit, %switch.lookup148
  %.0.i50 = phi ptr [ %switch.load150, %switch.lookup148 ], [ @.str.133, %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.03086, i64 12
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.03086, i64 24
  %i.hx = load i8, ptr %i.hw, align 4             ; 2 uses
  %i.hy = icmp ult i8 %i.hx, 5
  br i1 %i.hy, label %switch.lookup151, label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53

switch.lookup151:                                 ; preds = %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51
  %i.hz = zext nneg i8 %i.hx to i64
  %switch.gep152 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.15, i64 %i.hz
  %switch.load153 = load ptr, ptr %switch.gep152, align 8
  br label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53

_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53: ; preds = %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51, %switch.lookup151
  %.0.i52 = phi ptr [ %switch.load153, %switch.lookup151 ], [ @.str.133, %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.03086, i64 28
  %i.ib = load i32, ptr %i.ia, align 4
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJiPKcS5_jS5_jEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.hk, ptr noundef nonnull @.str.1050, i32 noundef %.sroa.speculated.i.i, ptr noundef %i.hp, ptr noundef nonnull %.0.i50, i32 noundef %i.hv, ptr noundef nonnull %.0.i52, i32 noundef %i.ib)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.loopexit

bb.ar:                                            ; preds = %bb.ap, %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit
  %.sroa.056.0 = getelementptr inbounds nuw i8, ptr %.sroa.056.087, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %.sroa.056.0, %.0.lcssa.i.i.i.i.i.ptr126
  br i1 %i.ic, label %.loopexit, label %bb.ao, !llvm.loop !183

.loopexit:                                        ; preds = %bb.ar, %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53
  %.not.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit, %.loopexit
  %i.id = phi ptr [ %i.gp, %.loopexit ], [ %i.gl, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit ]
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.gi) #28
  br label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit: ; preds = %.loopexit.thread, %.loopexit, %bb.ak, %bb.aj, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ModuleDecoderImpl18DecodeStartSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, %i.k
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.n) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.w = call noundef i32 @_ZN2v88internal4wasm17ModuleDecoderImpl13consume_indexINS1_12WasmFunctionEEEjPKcPSt6vectorIT_SaIS8_EEPPS8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.v, ptr noundef nonnull %i.a)
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 %i.w, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not4 = icmp eq ptr %i.z, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not5 = icmp eq ptr %i.ad, null
  br i1 %.not5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %.not6 = icmp eq i64 %i.ag, 0
  br i1 %.not6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.ae, align 8
  %.not7 = icmp eq i64 %i.ah, 0
  br i1 %.not7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.s, ptr noundef nonnull @.str.1052)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ModuleDecoderImpl17DecodeCodeSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::vector.91", align 8    ; 12 uses
  %2 = alloca %"struct.std::pair.434", align 4    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not29.i = icmp eq i32 %i.k, 0
  br i1 %.not29.i, label %.lr.ph.i, label %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit

._crit_edge.i:                                    ; preds = %bb.g
  store i32 %.1.i, ptr %i.h, align 4
  store i32 %.126.i, ptr %i.j, align 8
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.036.i = phi i32 [ %.1.i, %bb.g ], [ 0, %bb.c ] ; 3 uses
  %.02535.i = phi i32 [ %.126.i, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.02734.i = phi i32 [ %.128.i, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.sroa.030.033.i = phi ptr [ %i.ah, %bb.g ], [ %i.d, %bb.c ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 4
  %i.m = load i8, ptr %i.l, align 4, !range !38, !noundef !39
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %3, label %bb.e

3:                                                ; preds = %.lr.ph.i
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 21
  %5 = load i8, ptr %4, align 1, !range !38, !noundef !39
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %3
  %i.o = add i32 %.02734.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 16
  store i32 %.02734.i, ptr %i.p, align 8
  br label %bb.g

bb.e:                                             ; preds = %3, %.lr.ph.i
  %i.q = load i32, ptr %.sroa.030.033.i, align 4  ; 2 uses
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %bb.f, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 16
  store i32 %.02535.i, ptr %i.s, align 8
  %i.t = add i32 %.02535.i, 1
  br label %bb.g

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i: ; preds = %bb.e
  %i.u = lshr i32 %i.q, 8
  %i.v = add nuw nsw i32 %i.u, 2
  %i.w = and i32 %i.v, 7
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32                     ; 3 uses
  %i.ab = add i32 %.036.i, -1
  %i.ac = add i32 %i.ab, %i.aa
  %i.ad = sub nsw i32 0, %i.aa
  %i.ae = and i32 %i.ac, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 16
  store i32 %i.ae, ptr %i.af, align 8
  %i.ag = add i32 %i.ae, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i, %bb.f, %bb.d
  %.128.i = phi i32 [ %i.o, %bb.d ], [ %.02734.i, %bb.f ], [ %.02734.i, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i ]
  %.126.i = phi i32 [ %.02535.i, %bb.d ], [ %i.t, %bb.f ], [ %.02535.i, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %.036.i, %bb.d ], [ %.036.i, %bb.f ], [ %i.ag, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 24 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.f
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i

_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit: ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add i32 %i.as, %i.aq                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp ult ptr %i.ak, %i.ax
  br i1 %i.ay, label %bb.h, label %.critedge.i.i, !prof !12

bb.h:                                             ; preds = %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit
  %i.az = load i8, ptr %i.ak, align 1             ; 2 uses
  %.not.i.i = icmp sgt i8 %i.az, -1
  br i1 %.not.i.i, label %bb.i, label %.critedge.i.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.ba = zext nneg i8 %i.az to i64
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i:                                    ; preds = %bb.h, %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit
  %i.bb = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ak, ptr noundef nonnull @.str.19) ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 25769803776
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = lshr i64 %i.bb, 32
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %.pre15.pre.i = load ptr, ptr %i.aj, align 8
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %.critedge.i.i, %bb.i
  %.pre15.i = phi ptr [ %i.ak, %bb.i ], [ %.pre15.pre.i, %.critedge.i.i ] ; 2 uses
  %.sroa.014.0.i = phi i64 [ %i.ba, %bb.i ], [ %i.bb, %.critedge.i.i ]
  %.sroa.5.0.i = phi i32 [ 1, %bb.i ], [ %i.be, %.critedge.i.i ] ; 2 uses
  %.not.i31 = icmp eq ptr %i.av, null
  br i1 %.not.i31, label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.bf = load ptr, ptr %i.av, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %.pre15.i, i32 noundef %.sroa.5.0.i) #25, !inline_history !110
  %i.bi = load ptr, ptr %i.av, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.19) #25, !inline_history !110
  %.pre.i = load ptr, ptr %i.aj, align 8
  br label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit

_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit: ; preds = %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i, %bb.j
  %i.bl = phi ptr [ %.pre.i, %bb.j ], [ %.pre15.i, %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.014.0.i to i32 ; 5 uses
  %i.bm = zext nneg i32 %.sroa.5.0.i to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store ptr %i.bn, ptr %i.aj, align 8
  %i.bo = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 noundef %.sroa.0.0.extract.trunc.i) #25
  %i.bs = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 160
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %.not.i32 = icmp eq i32 %i.by, %.sroa.0.0.extract.trunc.i
  br i1 %.not.i32, label %_ZN2v88internal4wasm17ModuleDecoderImpl19CheckFunctionsCountEjj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %i.at, ptr noundef nonnull @.str.1129, i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef %i.by)
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl19CheckFunctionsCountEjj.exit

_ZN2v88internal4wasm17ModuleDecoderImpl19CheckFunctionsCountEjj.exit: ; preds = %bb.l, %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ca = load ptr, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8
  %.not.i3393 = icmp eq i32 %i.cc, -1
  %i.cd = icmp ne i32 %.sroa.0.0.extract.trunc.i, 0
  %i.ce = select i1 %.not.i3393, i1 %i.cd, i1 false
  br i1 %i.ce, label %.lr.ph96, label %.critedge30

.lr.ph96:                                         ; preds = %_ZN2v88internal4wasm17ModuleDecoderImpl19CheckFunctionsCountEjj.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph96, %._crit_edge
  %.095 = phi i32 [ 0, %.lr.ph96 ], [ %i.hk, %._crit_edge ] ; 3 uses
  %.sroa.064.094 = phi ptr [ %i.ca, %.lr.ph96 ], [ %.sroa.064.1.lcssa, %._crit_edge ] ; 4 uses
  %i.ci = load ptr, ptr %i.a, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 84
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = add i32 %i.ck, %.095                    ; 2 uses
  %i.cm = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not27 = icmp eq ptr %i.cm, null
  br i1 %.not27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.1053) #25
  %i.cq = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 200
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i32 noundef %i.cl) #25
  %i.cu = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 160
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) #25
  %.pr = load ptr, ptr %i.au, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cy = phi ptr [ %.pr, %bb.o ], [ null, %bb.n ] ; 5 uses
  %i.cz = load ptr, ptr %i.aj, align 8            ; 5 uses
  %i.da = load ptr, ptr %i.aw, align 8
  %i.db = icmp ult ptr %i.cz, %i.da
  br i1 %i.db, label %bb.q, label %.critedge.i.i34, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.dc = load i8, ptr %i.cz, align 1             ; 2 uses
  %.not.i.i43 = icmp sgt i8 %i.dc, -1
  br i1 %.not.i.i43, label %bb.r, label %.critedge.i.i34, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.dd = zext nneg i8 %i.dc to i64
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i36

.critedge.i.i34:                                  ; preds = %bb.q, %bb.p
  %i.de = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.cz, ptr noundef nonnull @.str.1054) ; 3 uses
  %i.df = icmp ult i64 %i.de, 25769803776
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = lshr i64 %i.de, 32
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %.pre15.pre.i35 = load ptr, ptr %i.aj, align 8
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i36

_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i36: ; preds = %.critedge.i.i34, %bb.r
  %.pre15.i37 = phi ptr [ %i.cz, %bb.r ], [ %.pre15.pre.i35, %.critedge.i.i34 ] ; 2 uses
  %.sroa.014.0.i38 = phi i64 [ %i.dd, %bb.r ], [ %i.de, %.critedge.i.i34 ] ; 3 uses
  %.sroa.5.0.i39 = phi i32 [ 1, %bb.r ], [ %i.dh, %.critedge.i.i34 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE8DecodeGCEPS7_NS1_10WasmOpcodeE:bb.a
  br i1 %.not, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_10WasmOpcodeEEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull @.str.1017, i32 noundef %1)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = or i64 %i.z, 1024
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE21DecodeStringRefOpcodeENS1_10WasmOpcodeEj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %.sroa.02.0.extract.trunc, i32 noundef %.sroa.5.0.i.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.h:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = or i64 %i.ae, 33554432
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %.sroa.02.0.extract.trunc, i32 noundef %.sroa.5.0.i.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.thread, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.ab, %bb.g ], [ 0, %bb.f ], [ %i.ag, %bb.h ], [ 0, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ 0, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.thread ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE10DecodeSimdEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 1048576
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call noundef zeroext i1 @_ZN2v88internal4wasm25CheckHardwareSupportsSimdEv() #25
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !38, !noundef !39
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.144) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKc(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull @.str.145)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeSimdImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.critedge.i.i.i, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.j, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.n, -1
  br i1 %.not.i.i.i, label %bb.g, label %.critedge.i.i.i, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i8 %i.n to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %i.p = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.991) ; 3 uses
  %i.q = icmp ult i64 %i.p, 25769803776
  tail call void @llvm.assume(i1 %i.q)
  %i.r = lshr i64 %i.p, 32
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = add nuw nsw i32 %i.s, 1
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %.critedge.i.i.i, %bb.g
  %.sroa.05.0.i.i = phi i64 [ %i.o, %bb.g ], [ %i.p, %.critedge.i.i.i ] ; 3 uses
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.g ], [ %i.t, %.critedge.i.i.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32 ; 3 uses
  %i.u = icmp ugt i32 %.sroa.0.0.extract.trunc.i, 4095
  br i1 %i.u, label %bb.h, label %bb.i, !prof !22

bb.h:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.992, i32 noundef %.sroa.0.0.extract.trunc.i)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.i:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.v = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i, 255
  %i.w = load i8, ptr %i.i, align 1
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = shl nuw nsw i64 %i.x, 12
  %i.z = or disjoint i64 %i.y, %.sroa.05.0.i.i
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = shl nuw nsw i64 %i.x, 8
  %i.ab = or disjoint i64 %i.aa, %.sroa.05.0.i.i
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.018.0.i = phi i64 [ 0, %bb.h ], [ %i.z, %bb.j ], [ %i.ab, %bb.k ]
  %.sroa.4.0.i = phi i32 [ 0, %bb.h ], [ %.sroa.5.0.i.i, %bb.j ], [ %.sroa.5.0.i.i, %bb.k ]
  %.sroa.02.0.extract.trunc = trunc i64 %.sroa.018.0.i to i32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8
  %.not.i = icmp eq i32 %i.ad, -1
  br i1 %.not.i, label %bb.l, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeSimdImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !12

bb.l:                                             ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %i.ae = add i32 %.sroa.02.0.extract.trunc, -1036576
  %or.cond.i = icmp ult i32 %i.ae, 3
  %i.af = add i32 %.sroa.02.0.extract.trunc, -1036592
  %i.ag = icmp ult i32 %i.af, 32
  %i.ah = or i1 %or.cond.i, %i.ag
  br i1 %i.ah, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = and i32 %.sroa.02.0.extract.trunc, 1048320
  %i.aj = icmp eq i32 %i.ai, 1036544
  br i1 %i.aj, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink9 = phi i64 [ 32, %bb.l ], [ 16777216, %bb.m ]
  %i.ak = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = or i64 %i.al, %.sink9
  store i64 %i.am, ptr %i.ak, align 8
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %i.an = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16DecodeSimdOpcodeENS1_10WasmOpcodeEj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %.sroa.02.0.extract.trunc, i32 noundef %.sroa.4.0.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeSimdImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeSimdImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.n, %bb.d
  %.1.i = phi i32 [ 0, %bb.d ], [ %i.an, %bb.n ], [ 0, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE10PopControlEv(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not.i = icmp eq i32 %i.d, -1
  br i1 %.not.i, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 184
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -359
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.220) #27
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.r = load i8, ptr %i.q, align 1, !range !38, !noundef !39
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 -148
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = icmp ult i32 %i.u, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %i.ag = phi ptr [ %i.x, %.lr.ph.i ], [ %i.am, %bb.g ]
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  store ptr %i.ah, ptr %i.w, align 8
  %i.aj = load ptr, ptr %i.af, align 8
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.al, align 1
  %i.am = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 2
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp ult i32 %i.u, %i.as
  br i1 %i.at, label %bb.g, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit, !llvm.loop !295

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit: ; preds = %bb.g, %bb.e, %bb.f
  %1 = getelementptr inbounds i8, ptr %i.b, i64 -175
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit..critedge_crit_edge, label %bb.h

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit..critedge_crit_edge: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit
  %.pre = load ptr, ptr %i.a, align 8
  br label %.critedge

bb.h:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit
  %i.au = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.av = load i8, ptr %i.au, align 8, !range !38, !noundef !39
  %i.aw = trunc nuw i8 %i.av to i1
  %.pre12 = load ptr, ptr %i.a, align 8           ; 3 uses
  br i1 %i.aw, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i8, ptr %i.p, align 8
  %i.ay = icmp eq i8 %i.ax, 0
  %scevgep.i = getelementptr i8, ptr %.pre12, i64 -184
  store ptr %scevgep.i, ptr %i.a, align 8
  br i1 %i.ay, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr i8, ptr %.pre12, i64 -359 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.az, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.bc, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

.critedge:                                        ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit..critedge_crit_edge, %bb.h
  %4 = phi ptr [ %.pre, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit..critedge_crit_edge ], [ %.pre12, %bb.h ]
  %scevgep.i10 = getelementptr i8, ptr %4, i64 -184
  store ptr %scevgep.i10, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit: ; preds = %bb.k, %bb.j, %.critedge, %bb.i
  %i.bd = load i32, ptr %i.c, align 8
  %.not.i11 = icmp eq i32 %i.bd, -1
  br i1 %.not.i11, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -175
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 0
  %i.bi = zext i1 %i.bh to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit
  %i.bj = phi i8 [ 0, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit ], [ %i.bi, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 %i.bj, ptr %i.bk, align 8
  ret void
}

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface8DoReturnEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEj(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc noundef zeroext i1 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE31TypeCheckStackAgainstMerge_SlowILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 48
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -152
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sub i32 %i.j, %i.n                       ; 2 uses
  %.not = icmp eq i32 %i.o, %i.a
  br i1 %.not, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.999, i32 noundef %i.a, ptr noundef nonnull @.str.998, i32 noundef %i.o)
  br label %.critedge31

bb.c:                                             ; preds = %bb.a
  %i.p = zext i32 %i.a to i64                     ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.q
  %.not29.not43.not = icmp eq i32 %i.a, 0
  br i1 %.not29.not43.not, label %.critedge31, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = icmp eq i32 %i.v, 1
  %i.x = load ptr, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = select i1 %i.w, ptr %i.s, ptr %i.y       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.02.0.copyload = load i32, ptr %i.aa, align 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.ab, align 8 ; 2 uses
  %i.ac = icmp eq i32 %.sroa.02.0.copyload, %.sroa.0.0.copyload
  br i1 %i.ac, label %.critedge, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, !prof !12

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %bb.d
  %i.ad = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ae = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.02.0.copyload, i32 %.sroa.0.0.copyload, ptr noundef %i.ad, ptr noundef %i.ad) #25
  br i1 %i.ae, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.ag) #25
  %i.ai = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.af) #25
  %i.aj = load ptr, ptr %3, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1000, ptr noundef nonnull @.str.998, i32 noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.aj)
  %i.ak = load ptr, ptr %3, align 8               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ap = load ptr, ptr %2, align 8               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.critedge31

.critedge:                                        ; preds = %bb.d, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %.critedge31, label %bb.d, !llvm.loop !296

.critedge31:                                      ; preds = %.critedge, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.b
  %.4 = phi i1 [ false, %bb.b ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ true, %bb.c ], [ true, %.critedge ]
  ret i1 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc noundef zeroext i1 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE31TypeCheckStackAgainstMerge_SlowILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE1ELNS7_9MergeTypeE2ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 48
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = load ptr, ptr %i.k, align 8
end_hunk_2
