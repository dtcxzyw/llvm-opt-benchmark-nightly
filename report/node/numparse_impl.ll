Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/numparse_impl?download=true
inline.NumInlined: 427
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_788numparse4impl16NumberParserImplUt_C2Ev:bb.a
  store i16 2, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4352
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4360
  store i16 2, ptr %i.cm, align 8
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4424
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.i.i, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4432
  store i16 2, ptr %i.cn, align 8
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4488
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1.i.i, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4496
  store i16 2, ptr %i.co, align 8
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4552
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2.i.i, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4560
  store i16 2, ptr %i.cp, align 8
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3.i.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4624
  store i16 2, ptr %i.cq, align 8
  %.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4680
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4.i.i, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4688
  store i16 2, ptr %i.cr, align 8
  %.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4744
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5.i.i, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4752
  store i16 2, ptr %i.cs, align 8
  %.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4808
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6.i.i, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4816
  store i16 2, ptr %i.ct, align 8
  %.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4872
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.7.i.i, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4880
  store i16 2, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4936
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4944
  store i16 2, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5000
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 5008
  store i16 2, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 5077 ; 2 uses
  store ptr %i.da, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 5072
  store i32 40, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 5076
  store i8 0, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 5120
  store i32 0, ptr %i.dd, align 8
  store i8 0, ptr %i.da, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 5128
  store i32 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 5136
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 5152
  store ptr %i.dg, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 5144
  store i32 8, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 5148
  store i8 0, ptr %i.di, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788numparse4impl16NumberParserImplD2Ev(ptr noundef nonnull align 8 dead_on_return(5408) dereferenceable(5408) initializes((0, 8), (12, 16), (5376, 5384)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788numparse4impl16NumberParserImplE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5376
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl22MultiplierParseHandlerE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5384
  tail call void @_ZN6icu_786number5ScaleD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN6icu_788numparse4impl16NumberParserImplUt_D2Ev(ptr noundef nonnull align 8 dead_on_return(5216) dereferenceable(5216) %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i8, ptr %i.e, align 4
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @uprv_free_78(ptr noundef %i.h) #15
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EED2Ev.exit

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_788numparse4impl16NumberParserImplUt_D2Ev(ptr noundef nonnull align 8 dead_on_return(5216) dereferenceable(5216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3840
  tail call void @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouseD2Ev(ptr noundef nonnull align 8 dead_on_return(1376) dereferenceable(1376) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2296
  tail call void @_ZN6icu_788numparse4impl21AffixMatcherWarehouseD2Ev(ptr noundef nonnull align 8 dead_on_return(1544) dereferenceable(1544) %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1440
  tail call void @_ZN6icu_788numparse4impl23CombinedCurrencyMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(856) dereferenceable(856) %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl17ScientificMatcherE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1376
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1240
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.h) #15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @_ZN6icu_788numparse4impl14DecimalMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 960
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.j) #15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 744
  tail call void @_ZN6icu_788numparse4impl14DecimalMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.m) #15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.o) #15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.q) #15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.s) #15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.u) #15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.w) #15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.y) #15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aa) #15
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ab) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788numparse4impl16NumberParserImplD0Ev(ptr noundef nonnull align 8 dereferenceable(5408) initializes((0, 8), (12, 16), (5376, 5384)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788numparse4impl16NumberParserImplE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5376
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl22MultiplierParseHandlerE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5384
  tail call void @_ZN6icu_786number5ScaleD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.c) #15, !inline_history !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN6icu_788numparse4impl16NumberParserImplUt_D2Ev(ptr noundef nonnull align 8 dead_on_return(5216) dereferenceable(5216) %i.d) #15, !inline_history !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i8, ptr %i.e, align 4
  %.not.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN6icu_788numparse4impl16NumberParserImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @uprv_free_78(ptr noundef %i.h) #15, !inline_history !17
  br label %_ZN6icu_788numparse4impl16NumberParserImplD2Ev.exit

_ZN6icu_788numparse4impl16NumberParserImplD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788numparse4impl16NumberParserImpl10addMatcherERNS1_18NumberParseMatcherE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5408) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp slt i32 %i.b, %i.e
  br i1 %.not, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EE6resizeEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i32 %i.b, 1                  ; 2 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %bb.c, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EE6resizeEii.exit

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #16 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EE6resizeEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 8
  %.1.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.k)
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.m = sext i32 %.1.i to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.l, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EE12releaseArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef %i.l) #15
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EE12releaseArrayEv.exit.i

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EE12releaseArrayEv.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %i.c, align 8
  store i32 %i.f, ptr %i.d, align 8
  store i8 1, ptr %i.o, align 4
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EE6resizeEii.exit

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EE6resizeEii.exit: ; preds = %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi10EE12releaseArrayEv.exit.i, %bb.c, %bb.b, %bb.a
  %i.q = load i32, ptr %i.a, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.r
  store ptr %1, ptr %i.t, align 8
  %i.u = load i32, ptr %i.a, align 4
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK6icu_788numparse4impl16NumberParserImpl13getParseFlagsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5408) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_788numparse4impl16NumberParserImpl5parseERKNS_13UnicodeStringEbRNS1_12ParsedNumberER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNK6icu_788numparse4impl16NumberParserImpl5parseERKNS_13UnicodeStringEibRNS1_12ParsedNumberER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(5408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_788numparse4impl16NumberParserImpl5parseERKNS_13UnicodeStringEibRNS1_12ParsedNumberER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::StringSegment", align 8 ; 10 uses
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i32 %i.d to i1
  call void @_ZN6icu_7813StringSegmentC1ERKNS_13UnicodeStringEb(ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %i.e) #15
  call void @_ZN6icu_7813StringSegment12adjustOffsetEi(ptr noundef nonnull align 8 dereferenceable(17) %6, i32 noundef %2) #15
  br i1 %3, label %bb.c, label %_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %.01621.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %bb.i ] ; 3 uses
  %i.j = call noundef i32 @_ZNK6icu_7813StringSegment6lengthEv(ptr noundef nonnull align 8 dereferenceable(17) %6) #15
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = sext i32 %.01621.i to i64
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(17) %6) #15, !inline_history !19
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %.01621.i, 1
  br label %bb.i, !llvm.loop !0

bb.g:                                             ; preds = %bb.e
  %i.u = call noundef i32 @_ZNK6icu_7813StringSegment9getOffsetEv(ptr noundef nonnull align 8 dereferenceable(17) %6) #15
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #15, !inline_history !19 ; 0 uses
  %i.z = load i32, ptr %5, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = call noundef i32 @_ZNK6icu_7813StringSegment9getOffsetEv(ptr noundef nonnull align 8 dereferenceable(17) %6) #15
  %.not18.i = icmp eq i32 %i.ab, %i.u
  %i.ac = add nsw i32 %.01621.i, 1
  %spec.select.i = select i1 %.not18.i, i32 %i.ac, i32 0
  br label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.h, %bb.f
  %.2.i = phi i32 [ %i.t, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ad = load i32, ptr %i.f, align 4
  %i.ae = icmp slt i32 %.2.i, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit

_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit.sink.split: ; preds = %bb.b
  %i.af = load i32, ptr %i.c, align 8
  %i.ag = and i32 %i.af, 16384
  %.not15 = icmp eq i32 %i.ag, 0
  %. = select i1 %.not15, i32 -100, i32 1
  call void @_ZNK6icu_788numparse4impl16NumberParserImpl21parseLongestRecursiveERNS_13StringSegmentERNS1_12ParsedNumberEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(5408) %0, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(216) %4, i32 noundef %., ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit

_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit: ; preds = %bb.i, %bb.g, %bb.d, %_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit.sink.split, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode.exit
  call void @_ZN6icu_788numparse4impl12ParsedNumber11postProcessEv(ptr noundef nonnull align 8 dereferenceable(216) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(216) %4) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.ah, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.j, label %._crit_edge, !llvm.loop !18

bb.k:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @_ZN6icu_7813StringSegmentC1ERKNS_13UnicodeStringEb(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(64), i1 noundef zeroext) unnamed_addr #5

declare void @_ZN6icu_7813StringSegment12adjustOffsetEi(ptr noundef nonnull align 8 dereferenceable(17), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_788numparse4impl16NumberParserImpl11parseGreedyERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5408) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.01621 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.g ] ; 3 uses
  %i.e = tail call noundef i32 @_ZNK6icu_7813StringSegment6lengthEv(ptr noundef nonnull align 8 dereferenceable(17) %1) #15
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %.01621 to i64
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(17) %1) #15
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %.01621, 1
  br label %bb.g, !llvm.loop !0

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef i32 @_ZNK6icu_7813StringSegment9getOffsetEv(ptr noundef nonnull align 8 dereferenceable(17) %1) #15
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
end_hunk_0
