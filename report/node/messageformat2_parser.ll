Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/messageformat2_parser?download=true
inline.NumInlined: 677
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6icu_788message26Parser17parseNonEmptyKeysER10UErrorCode:bb.a
  %.not = icmp eq i8 %i.ao, 0
  br i1 %.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.j, align 8, !nonnull !34, !align !35
  %i.aq = load i32, ptr %i.h, align 8
  %i.ar = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i32 noundef %i.aq) #7
  %i.as = load ptr, ptr %i.v, align 8
  %i.at = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.as, i32 noundef %i.ar) #7
  %.not20 = icmp eq i8 %i.at, 0
  br i1 %.not20, label %_ZN6icu_7813UnicodeString8truncateEi.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.k
  %i.au = load ptr, ptr %i.j, align 8, !nonnull !34, !align !35
  %i.av = load i32, ptr %i.h, align 8
  %i.aw = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.au, i32 noundef %i.av) #7
  %i.ax = load ptr, ptr %i.u, align 8
  %i.ay = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ax, i32 noundef %i.aw) #7
  %.not21 = icmp eq i8 %i.ay, 0
  br i1 %.not21, label %bb.l, label %.critedge16

bb.l:                                             ; preds = %.critedge
  %i.az = load ptr, ptr %i.j, align 8, !nonnull !34, !align !35
  %i.ba = load i32, ptr %i.h, align 8
  %i.bb = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.az, i32 noundef %i.ba) #7
  %i.bc = load ptr, ptr %i.v, align 8
  %i.bd = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.bc, i32 noundef %i.bb) #7
  %.not22 = icmp eq i8 %i.bd, 0
  call void @_ZN6icu_788message26Parser23parseRequiredWhitespaceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.pre28 = load i32, ptr %i.h, align 8           ; 2 uses
  br i1 %.not22, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.j, align 8, !nonnull !34, !align !35
  %i.bf = call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.be, i32 noundef %.pre28, i32 noundef 1) #7 ; 2 uses
  store i32 %i.bf, ptr %i.h, align 8
  br label %bb.n

.critedge16:                                      ; preds = %.critedge
  call void @_ZN6icu_788message26Parser23parseRequiredWhitespaceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.pre27 = load i32, ptr %i.h, align 8
  br label %bb.n

bb.n:                                             ; preds = %.critedge16, %bb.m, %bb.l
  %i.bg = phi i32 [ %.pre27, %.critedge16 ], [ %i.bf, %bb.m ], [ %.pre28, %bb.l ] ; 3 uses
  %i.bh = load ptr, ptr %i.j, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i16, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp slt i16 %i.bj, 0
  %i.bl = ashr i16 %i.bj, 5
  %i.bm = sext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = select i1 %i.bk, i32 %i.bo, i32 %i.bm
  %i.bq = icmp slt i32 %i.bg, %i.bp
  br i1 %i.bq, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !34, !align !35 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 18
  %i.bu = load i8, ptr %i.bt, align 2, !range !36, !noundef !34
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN6icu_7813UnicodeString8truncateEi.exit.thread18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = sub i32 %i.bg, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i16 0, ptr %i.cb, align 8
  call void @_ZN6icu_788message212StaticErrors14addSyntaxErrorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit.thread18

_ZN6icu_7813UnicodeString8truncateEi.exit.thread18: ; preds = %bb.o, %bb.p
  call void @_ZN6icu_788message210data_model12SelectorKeysC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %3) #7
  br label %bb.x

bb.q:                                             ; preds = %bb.n
  %i.cc = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bh, i32 noundef %i.bg) #7
  %i.cd = icmp eq i32 %i.cc, 123
  br i1 %i.cd, label %bb.r, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ch = load i16, ptr %i.cg, align 8            ; 5 uses
  %i.ci = icmp slt i16 %i.ch, 0
  %i.cj = ashr i16 %i.ch, 5
  %i.ck = sext i16 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = select i1 %i.ci, i32 %i.cm, i32 %i.ck   ; 3 uses
  %i.co = add nsw i32 %i.cn, -1                   ; 3 uses
  %i.cp = trunc i16 %i.ch to i1
  %i.cq = icmp eq i32 %i.co, 0
  %or.cond.i = and i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cf) #7
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit.thread

bb.t:                                             ; preds = %bb.r
  %.not23 = icmp eq i32 %i.cn, 0
  br i1 %.not23, label %_ZN6icu_7813UnicodeString8truncateEi.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = icmp slt i32 %i.cn, 1025
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = and i16 %i.ch, 31
  %.tr.i.i.i = trunc i32 %i.co to i16
  %i.ct = shl i16 %.tr.i.i.i, 5
  %i.cu = or disjoint i16 %i.ct, %i.cs
  store i16 %i.cu, ptr %i.cg, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.cv = or i16 %i.ch, -32
  store i16 %i.cv, ptr %i.cg, align 8
  store i32 %i.co, ptr %i.cl, align 4
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit.thread

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @_ZN6icu_788message26Parser8parseKeyER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::message2::data_model::Key") align 8 %6, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.cw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_788message210data_model12SelectorKeys7Builder3addEONS1_3KeyER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 ; 0 uses
  call void @_ZN6icu_788message210data_model3KeyD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %.pre = load ptr, ptr %i.j, align 8
  %.pre26 = load i32, ptr %i.h, align 8
  br label %bb.i

_ZN6icu_7813UnicodeString8truncateEi.exit.thread: ; preds = %bb.k, %bb.w, %bb.v, %bb.t, %bb.s
  call void @_ZNK6icu_788message210data_model12SelectorKeys7Builder5buildER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::message2::data_model::SelectorKeys") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  br label %bb.x

bb.x:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit.thread18, %_ZN6icu_7813UnicodeString8truncateEi.exit.thread, %bb.h, %bb.d
  call void @_ZN6icu_788message210data_model12SelectorKeys7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.b
  call void @_ZN6icu_788message210data_model12SelectorKeysD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare void @_ZN6icu_788message210data_model12SelectorKeysC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #4

declare void @_ZN6icu_788message210data_model12SelectorKeys7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_788message210data_model12SelectorKeys7Builder3addEONS1_3KeyER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZNK6icu_788message210data_model12SelectorKeys7Builder5buildER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::message2::data_model::SelectorKeys") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_788message210data_model12SelectorKeys7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_788message210data_model12SelectorKeysD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message26Parser18parseQuotedPatternER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Pattern") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 !guid !108 {
bb.a:
  tail call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef 123, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef 123, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZN6icu_788message26Parser18parseSimpleMessageER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::message2::data_model::Pattern") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef 125, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef 125, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message26Parser18parseSimpleMessageER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Pattern") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 !guid !111 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::Pattern::Builder", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::message2::data_model::Expression", align 8 ; 4 uses
  %5 = alloca %"class.std::variant.35", align 8   ; 11 uses
  %6 = alloca %"class.icu_78::message2::data_model::Expression", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::message2::data_model::Markup", align 8 ; 9 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN6icu_788message210data_model7Pattern7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @_ZN6icu_788message210data_model10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 256 ; 2 uses
  %.sroa.gep.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.gep14.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.gep16.a = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.sroa.gep18.a = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 112
  br label %bb.c

bb.c:                                             ; preds = %bb.n, %bb.b
  %i.k = load i32, ptr %i.d, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i16, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q
  %i.u = icmp slt i32 %i.k, %i.t
  br i1 %i.u, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.v = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i32 noundef %i.k) #7
  switch i32 %i.v, label %bb.k [
    i32 123, label %bb.e
    i32 92, label %bb.j
    i32 125, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @_ZN6icu_788message26Parser16parsePlaceholderER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.35") align 8 %5, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.w = load i8, ptr %i.f, align 8               ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @_ZN6icu_788message210data_model10ExpressionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(256) %6, ptr noundef nonnull align 8 dereferenceable(256) %5) #7
  %i.y = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_788message210data_model7Pattern7Builder3addEONS1_10ExpressionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(256) %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 ; 0 uses
  call void @_ZN6icu_788message210data_model10ExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.z = icmp eq i8 %i.w, 1                       ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %7, align 8
  %spec.select.i.i13.sroa.sel = select i1 %i.z, ptr %i.g, ptr inttoptr (i64 8 to ptr)
  %i.aa = load i32, ptr %spec.select.i.i13.sroa.sel, align 8
  store i32 %i.aa, ptr %.sroa.gep.a, align 8
  %spec.select.i.i13.sroa.sel15 = select i1 %i.z, ptr %i.h, ptr inttoptr (i64 16 to ptr)
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.gep14.a, ptr noundef nonnull align 8 dereferenceable(64) %spec.select.i.i13.sroa.sel15) #7
  %spec.select.i.i13.sroa.sel17 = select i1 %i.z, ptr %i.i, ptr inttoptr (i64 80 to ptr)
  call void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.gep16.a, ptr noundef nonnull align 8 dereferenceable(28) %spec.select.i.i13.sroa.sel17) #7
  %spec.select.i.i13.sroa.sel19 = select i1 %i.z, ptr %i.j, ptr inttoptr (i64 112 to ptr)
  call void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.gep18.a, ptr noundef nonnull align 8 dereferenceable(28) %spec.select.i.i13.sroa.sel19) #7
  %i.ab = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_788message210data_model7Pattern7Builder3addEONS1_6MarkupER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 ; 0 uses
  call void @_ZN6icu_788message210data_model6MarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = load i8, ptr %i.f, align 8
  %.not.i.i = icmp eq i8 %i.ac, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model10ExpressionENS4_6MarkupEEED2Ev.exit, label %bb.i, !prof !112

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %5, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(257) %5) #7, !inline_history !109
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model10ExpressionENS4_6MarkupEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model10ExpressionENS4_6MarkupEEED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @_ZN6icu_788message26Parser19parseEscapeSequenceER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_788message210data_model7Pattern7Builder3addEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZN6icu_788message26Parser13parseTextCharER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ag = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_788message210data_model7Pattern7Builder3addEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.k, %bb.j, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model10ExpressionENS4_6MarkupEEED2Ev.exit
  %i.ah = load ptr, ptr %i.e, align 8, !nonnull !34, !align !35
  %i.ai = load i32, ptr %i.d, align 8
  %i.aj = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i32 noundef %i.ai) #7
  %i.ak = icmp eq i32 %i.aj, 125
  br i1 %i.ak, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 18
  %i.an = load i8, ptr %i.am, align 2, !range !36, !noundef !34
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %2, align 4
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.c, label %bb.o, !llvm.loop !110

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l, %bb.c
  call void @_ZN6icu_788message210data_model10ExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  call void @_ZNK6icu_788message210data_model7Pattern7Builder5buildER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::message2::data_model::Pattern") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  call void @_ZN6icu_788message210data_model7Pattern7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message26Parser11parseMarkupER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Markup") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 !guid !113 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %3 = alloca %"class.icu_78::message2::data_model::Markup::Builder", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %5 = alloca %"class.icu_78::message2::OptionAdder.33", align 8 ; 4 uses
  %6 = alloca %"class.icu_78::message2::AttributeAdder.34", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN6icu_788message210data_model6Markup7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.m, align 8
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 10 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !34, !align !35
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 14 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i32 noundef %i.q, i32 noundef 1) #7
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !34, !align !35
  %i.u = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef 123) #7 ; 0 uses
  call void @_ZN6icu_788message26Parser23parseOptionalWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(200) %1)
  %i.v = load ptr, ptr %i.n, align 8, !nonnull !34, !align !35
  %i.w = load i32, ptr %i.p, align 8
  %i.x = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i32 noundef %i.w) #7
  switch i32 %i.x, label %bb.e [
    i32 35, label %bb.h
    i32 47, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !34, !align !35 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ab = load i8, ptr %i.aa, align 2, !range !36, !noundef !34
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sub i32 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i16 0, ptr %i.aj, align 8
  call void @_ZN6icu_788message212StaticErrors14addSyntaxErrorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.at, align 8
  br label %bb.u

bb.h:                                             ; preds = %bb.c, %bb.d
  %.011 = phi i1 [ true, %bb.d ], [ false, %bb.c ]
  %i.au = load ptr, ptr %i.n, align 8, !nonnull !34, !align !35
  %i.av = load i32, ptr %i.p, align 8
  %i.aw = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.au, i32 noundef %i.av) #7
  %i.ax = load ptr, ptr %i.s, align 8, !nonnull !34, !align !35
  %i.ay = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef %i.aw) #7 ; 0 uses
  %i.az = load ptr, ptr %i.n, align 8, !nonnull !34, !align !35
  %i.ba = load i32, ptr %i.p, align 8
  %i.bb = call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.az, i32 noundef %i.ba, i32 noundef 1) #7
  store i32 %i.bb, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @_ZN6icu_788message26Parser15parseIdentifierER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr noundef nonnull align 8 dereferenceable(64) %4) #7 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.be = load i32, ptr %i.p, align 8             ; 2 uses
  %i.bf = load ptr, ptr %i.n, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i16, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp slt i16 %i.bh, 0
  %i.bj = ashr i16 %i.bh, 5
  %i.bk = sext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = select i1 %i.bi, i32 %i.bm, i32 %i.bk
  %i.bo = icmp slt i32 %i.be, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bp = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i32 noundef %i.be) #7
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.br, i32 noundef %i.bp) #7
  %.not = icmp eq i8 %i.bs, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = load ptr, ptr %i.n, align 8, !nonnull !34, !align !35
  %i.bu = load i32, ptr %i.p, align 8
  %i.bv = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, i32 noundef %i.bu) #7
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.bx, i32 noundef %i.bv) #7
  %.not13 = icmp eq i8 %i.by, 0
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store ptr %3, ptr %5, align 8
  call void @_ZN6icu_788message26Parser12parseOptionsINS0_10data_model6Markup7BuilderEEEvRNS0_11OptionAdderIT_EER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.bz = load i32, ptr %i.p, align 8             ; 2 uses
  %i.ca = load ptr, ptr %i.n, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i16, ptr %i.cb, align 8            ; 2 uses
  %i.cd = icmp slt i16 %i.cc, 0
  %i.ce = ashr i16 %i.cc, 5
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = select i1 %i.cd, i32 %i.ch, i32 %i.cf
  %i.cj = icmp slt i32 %i.bz, %i.ci
  br i1 %i.cj, label %bb.m, label %bb.p

end_hunk_0
begin_hunk_1_@_ZN6icu_788message26Parser14parseSelectorsER10UErrorCode:bb.a
  %i.k = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.j, i32 noundef %i.i) #7
  %.not.peel = icmp eq i8 %i.k, 0
  br i1 %.not.peel, label %bb.b, label %.critedge.peel

bb.b:                                             ; preds = %.peel.begin
  %i.l = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35
  %i.m = load i32, ptr %i.d, align 8
  %i.n = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i32 noundef %i.m) #7
  %i.o = icmp eq i32 %i.n, 36
  br i1 %i.o, label %.critedge.peel, label %.loopexit.thread

.critedge.peel:                                   ; preds = %bb.b, %.peel.begin
  %i.p = load i32, ptr %i.d, align 8
  tail call void @_ZN6icu_788message26Parser23parseRequiredWhitespaceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.q = load i32, ptr %i.d, align 8              ; 3 uses
  %i.r = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i16, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = select i1 %i.u, i32 %i.y, i32 %i.w
  %i.aa = icmp slt i32 %i.q, %i.z
  br i1 %i.aa, label %bb.c, label %.loopexit65

bb.c:                                             ; preds = %.critedge.peel
  %i.ab = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i32 noundef %i.q) #7
  %.not20.peel.not = icmp eq i32 %i.ab, 36        ; 2 uses
  br i1 %.not20.peel.not, label %bb.d, label %.loopexit66

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN6icu_788message26Parser17parseVariableNameER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.ac = load ptr, ptr %i.f, align 8, !nonnull !34, !align !35
  %i.ad = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder11addSelectorEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %1) #7 ; 0 uses
  %i.ae = load i32, ptr %1, align 4
  %i.af = icmp slt i32 %i.ae, 1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br i1 %i.af, label %.peel.next, label %.thread

.peel.next:                                       ; preds = %bb.d, %bb.l
  %i.ag = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35
  %i.ah = load i32, ptr %i.d, align 8
  %i.ai = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i32 noundef %i.ah) #7
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.aj, i32 noundef %i.ai) #7
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.peel.next
  %i.al = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35
  %i.am = load i32, ptr %i.d, align 8
  %i.an = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.al, i32 noundef %i.am) #7
  %i.ao = icmp eq i32 %i.an, 36
  br i1 %i.ao, label %.critedge, label %.loopexit.thread75

.critedge:                                        ; preds = %.peel.next, %bb.e
  %i.ap = load i32, ptr %i.d, align 8
  call void @_ZN6icu_788message26Parser23parseRequiredWhitespaceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.aq = load i32, ptr %i.d, align 8             ; 3 uses
  %i.ar = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i16, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp slt i16 %i.at, 0
  %i.av = ashr i16 %i.at, 5
  %i.aw = sext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = select i1 %i.au, i32 %i.ay, i32 %i.aw
  %i.ba = icmp slt i32 %i.aq, %i.az
  br i1 %i.ba, label %bb.f, label %.loopexit65

.loopexit65:                                      ; preds = %.critedge, %.critedge.peel
  %.lcssa = phi i32 [ %i.q, %.critedge.peel ], [ %i.aq, %.critedge ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !34, !align !35 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 18
  %i.be = load i8, ptr %i.bd, align 2, !range !36, !noundef !34
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.thread, label %.thread.sink.split

bb.f:                                             ; preds = %.critedge
  %i.bg = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i32 noundef %i.aq) #7
  %.not20 = icmp eq i32 %i.bg, 36
  br i1 %.not20, label %bb.l, label %.loopexit66

.loopexit66:                                      ; preds = %bb.f, %bb.c
  %.lcssa62 = phi i32 [ %i.p, %bb.c ], [ %i.ap, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 8            ; 5 uses
  %i.bl = icmp slt i16 %i.bk, 0
  %i.bm = ashr i16 %i.bk, 5
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = select i1 %i.bl, i32 %i.bp, i32 %i.bn   ; 3 uses
  %i.br = add nsw i32 %i.bq, -1                   ; 3 uses
  %i.bs = trunc i16 %i.bk to i1
  %i.bt = icmp eq i32 %i.br, 0
  %or.cond.i = and i1 %i.bt, %i.bs
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit66
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bi) #7
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit66
  %.not28 = icmp eq i32 %i.bq, 0
  br i1 %.not28, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = icmp slt i32 %i.bq, 1025
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = and i16 %i.bk, 31
  %.tr.i.i.i = trunc i32 %i.br to i16
  %i.bw = shl i16 %.tr.i.i.i, 5
  %i.bx = or disjoint i16 %i.bw, %i.bv
  store i16 %i.bx, ptr %i.bj, align 8
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.by = or i16 %i.bk, -32
  store i16 %i.by, ptr %i.bj, align 8
  store i32 %i.br, ptr %i.bo, align 4
  br label %.loopexit

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN6icu_788message26Parser17parseVariableNameER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.bz = load ptr, ptr %i.f, align 8, !nonnull !34, !align !35
  %i.ca = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder11addSelectorEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %1) #7 ; 0 uses
  %i.cb = load i32, ptr %1, align 4
  %i.cc = icmp slt i32 %i.cb, 1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br i1 %i.cc, label %.peel.next, label %.thread, !llvm.loop !125

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  store i32 %.lcssa62, ptr %i.d, align 8
  br i1 %.not20.peel.not, label %.loopexit.thread75, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.b, %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !34, !align !35 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 18
  %i.cg = load i8, ptr %i.cf, align 2, !range !36, !noundef !34
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit.thread
  %i.ci = load i32, ptr %i.d, align 8
  br label %.thread.sink.split

.loopexit.thread75:                               ; preds = %bb.e, %.loopexit
  call void @_ZN6icu_788message26Parser23parseRequiredWhitespaceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.cj = load i32, ptr %i.d, align 8             ; 2 uses
  %i.ck = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i16, ptr %i.cl, align 8            ; 2 uses
  %i.cn = icmp slt i16 %i.cm, 0
  %i.co = ashr i16 %i.cm, 5
  %i.cp = sext i16 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = select i1 %i.cn, i32 %i.cr, i32 %i.cp
  %i.ct = icmp slt i32 %i.cj, %i.cs
  br i1 %i.ct, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit.thread75
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !34, !align !35 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 18
  %i.cx = load i8, ptr %i.cw, align 2, !range !36, !noundef !34
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.thread, label %.thread.sink.split

bb.o:                                             ; preds = %.loopexit.thread75
  call void @_ZN6icu_788message26Parser12parseVariantER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.cz = load i32, ptr %i.d, align 8             ; 2 uses
  %i.da = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i16, ptr %i.db, align 8            ; 2 uses
  %i.dd = icmp slt i16 %i.dc, 0
  %i.de = ashr i16 %i.dc, 5
  %i.df = sext i16 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = select i1 %i.dd, i32 %i.dh, i32 %i.df
  %i.dj = icmp slt i32 %i.cz, %i.di
  br i1 %i.dj, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.v
  %i.do = phi i32 [ %i.cz, %.preheader ], [ %i.es, %bb.v ]
  %i.dp = phi ptr [ %i.da, %.preheader ], [ %i.et, %bb.v ]
  %i.dq = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dp, i32 noundef %i.do) #7
  %i.dr = load ptr, ptr %i.e, align 8
  %i.ds = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.dr, i32 noundef %i.dq) #7
  %.not29 = icmp eq i8 %i.ds, 0
  br i1 %.not29, label %bb.q, label %.critedge2

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35
  %i.du = load i32, ptr %i.d, align 8
  %i.dv = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dt, i32 noundef %i.du) #7
  %i.dw = load ptr, ptr %i.dm, align 8
  %i.dx = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.dw, i32 noundef %i.dv) #7
  %.not30 = icmp eq i8 %i.dx, 0
  br i1 %.not30, label %bb.r, label %.critedge2

bb.r:                                             ; preds = %bb.q
  %i.dy = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35
  %i.dz = load i32, ptr %i.d, align 8
  %i.ea = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dy, i32 noundef %i.dz) #7 ; 4 uses
  switch i32 %i.ea, label %bb.s [
    i32 42, label %.critedge2
    i32 124, label %.critedge2
  ]

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %i.dn, align 8
  %i.ec = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.eb, i32 noundef %i.ea) #7
  %i.ed = icmp ne i8 %i.ec, 0
  %i.ee = icmp eq i32 %i.ea, 45
  %or.cond.i.i = or i1 %i.ee, %i.ed
  br i1 %or.cond.i.i, label %.critedge2, label %_ZNK6icu_788message26Parser10isKeyStartEi.exit

_ZNK6icu_788message26Parser10isKeyStartEi.exit:   ; preds = %bb.s
  %i.ef = load ptr, ptr %i.dk, align 8
  %i.eg = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ef, i32 noundef %i.ea) #7
  %.not31 = icmp eq i8 %i.eg, 0
  br i1 %.not31, label %.thread, label %.critedge2

.critedge2:                                       ; preds = %bb.s, %bb.r, %bb.r, %bb.q, %bb.p, %_ZNK6icu_788message26Parser10isKeyStartEi.exit
  call void @_ZN6icu_788message26Parser23parseOptionalWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.eh = load i32, ptr %i.d, align 8
  %i.ei = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i16, ptr %i.ej, align 8            ; 2 uses
  %i.el = icmp slt i16 %i.ek, 0
  %i.em = ashr i16 %i.ek, 5
  %i.en = sext i16 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = select i1 %i.el, i32 %i.ep, i32 %i.en
  %i.er = icmp slt i32 %i.eh, %i.eq
  br i1 %i.er, label %bb.t, label %.thread

bb.t:                                             ; preds = %.critedge2
  call void @_ZN6icu_788message26Parser12parseVariantER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.es = load i32, ptr %i.d, align 8             ; 2 uses
  %i.et = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i16, ptr %i.eu, align 8            ; 2 uses
  %i.ew = icmp slt i16 %i.ev, 0
  %i.ex = ashr i16 %i.ev, 5
  %i.ey = sext i16 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = select i1 %i.ew, i32 %i.fa, i32 %i.ey
  %i.fc = icmp slt i32 %i.es, %i.fb
  br i1 %i.fc, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.fd = load ptr, ptr %i.dl, align 8, !nonnull !34, !align !35
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 18
  %i.ff = load i8, ptr %i.fe, align 2, !range !36, !noundef !34
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fh = load i32, ptr %1, align 4
  %i.fi = icmp slt i32 %i.fh, 1
  br i1 %i.fi, label %bb.p, label %.thread, !llvm.loop !126

.thread.sink.split:                               ; preds = %bb.n, %.loopexit65, %bb.m
  %.lcssa.sink = phi i32 [ %.lcssa, %.loopexit65 ], [ %i.ci, %bb.m ], [ %i.cj, %bb.n ]
  %.sink = phi ptr [ %i.bc, %.loopexit65 ], [ %i.ce, %bb.m ], [ %i.cv, %bb.n ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = sub i32 %.lcssa.sink, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.fl, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 0, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 0, ptr %i.fo, align 8
  call void @_ZN6icu_788message212StaticErrors14addSyntaxErrorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %.sink, ptr noundef nonnull align 4 dereferenceable(4) %1) #7
  br label %.thread

.thread:                                          ; preds = %bb.l, %.critedge2, %bb.u, %bb.v, %bb.t, %_ZNK6icu_788message26Parser10isKeyStartEi.exit, %.thread.sink.split, %bb.d, %.loopexit65, %.loopexit.thread, %bb.n, %bb.o, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder11addSelectorEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message26Parser12errorPatternER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 !guid !129 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Pattern::Builder", align 8 ; 6 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !34, !align !35
  tail call void @_ZN6icu_788message212StaticErrors14addSyntaxErrorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN6icu_788message210data_model7Pattern7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %1) #7
  %i.c = load i32, ptr %1, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 123) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = load i32, ptr %i.e, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m
  %i.q = icmp slt i32 %i.g, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.r = phi ptr [ %i.y, %.lr.ph ], [ %i.h, %bb.b ]
  %i.s = phi i32 [ %i.x, %.lr.ph ], [ %i.g, %bb.b ]
  %i.t = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i32 noundef %i.s) #7
  %i.u = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.t) #7 ; 0 uses
  %i.v = load ptr, ptr %i.f, align 8, !nonnull !34, !align !35
  %i.w = load i32, ptr %i.e, align 8
  %i.x = call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i32 noundef %i.w, i32 noundef 1) #7 ; 3 uses
  store i32 %i.x, ptr %i.e, align 8
  %i.y = load ptr, ptr %i.f, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i16, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp slt i16 %i.aa, 0
  %i.ac = ashr i16 %i.aa, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = select i1 %i.ab, i32 %i.af, i32 %i.ad
  %i.ah = icmp slt i32 %i.x, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !128

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.ai = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 125) #7 ; 0 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_788message210data_model7Pattern7Builder3addEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #7 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !34, !align !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @_ZNK6icu_788message210data_model7Pattern7Builder5buildER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::message2::data_model::Pattern") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %1) #7
  %i.am = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder10setPatternEONS1_7PatternE(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %4) #7 ; 0 uses
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  call void @_ZN6icu_788message210data_model7Pattern7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder10setPatternEONS1_7PatternE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message26Parser9parseBodyER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 !guid !132 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i16, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp slt i16 %i.h, 0
  %i.j = ashr i16 %i.h, 5
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = select i1 %i.i, i32 %i.m, i32 %i.k
  %i.o = icmp slt i32 %i.d, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_788message26Parser12errorPatternER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i32 noundef %i.d) #7
  switch i32 %i.p, label %bb.g [
    i32 123, label %bb.e
    i32 46, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !34, !align !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  tail call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 123, ptr noundef nonnull align 4 dereferenceable(4) %1), !noalias !133
  tail call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 123, ptr noundef nonnull align 4 dereferenceable(4) %1), !noalias !133
  call void @_ZN6icu_788message26Parser18parseSimpleMessageER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::message2::data_model::Pattern") align 8 %2, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 125, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 125, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.s = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder10setPatternEONS1_7PatternE(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2) #7 ; 0 uses
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN6icu_788message26Parser14parseSelectorsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !34, !align !35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 18
  %i.w = load i8, ptr %i.v, align 2, !range !36, !noundef !34
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 0, ptr %i.ae, align 8
  tail call void @_ZN6icu_788message212StaticErrors14addSyntaxErrorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %1) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN6icu_788message26Parser12errorPatternER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message26Parser5parseER11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 !guid !135 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 5 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader, label %bb.n

end_hunk_1
