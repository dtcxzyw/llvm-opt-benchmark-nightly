Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messageformat2_evaluation?download=true
inline.NumInlined: 416
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK6icu_788message213InternalValue17checkSelectOptionEv:bb.a
  %.1 = phi i1 [ %.0, %bb.ag ], [ true, %.critedge ], [ true, %.critedge51 ]
  ret i1 %.1

bb.aj:                                            ; preds = %bb.ah, %bb.m
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.ah ], [ %.pn.pn, %bb.m ]
  resume { ptr, i32 } %.pn21.pn.pn
}

declare void @_ZN6icu_788message213DynamicErrors16setSelectorErrorERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_788message213DynamicErrors12setBadOptionERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_788message213DynamicErrors23setRecoverableBadOptionERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788message220FormattedPlaceholderD2Ev(ptr noundef nonnull align 8 dead_on_return(396) dereferenceable(396) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @_ZN6icu_788message215FunctionOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6icu_788message214FormattedValueD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_788message211FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.d) #20
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message213InternalValue15forceFormattingERNS0_13DynamicErrorsER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::FormattedPlaceholder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(29) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::message2::FormattedPlaceholder", align 8 ; 29 uses
  %5 = alloca %"class.icu_78::message2::FormattedPlaceholder", align 8 ; 11 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %7 = alloca %"class.icu_78::message2::FormattedPlaceholder", align 8 ; 12 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !37
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 2, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.k, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 2, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.n, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.o, align 8, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 27, ptr %i.p, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr null, ptr %i.s, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 1, ptr %i.t, align 8, !tbaa !83
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !98
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.z = icmp eq ptr %i.y, null
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %0, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aa, align 8, !tbaa !8
  store i16 2, ptr %i.ab, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.ac, align 8, !tbaa !8
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !11
  store i8 0, ptr %i.ae, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.af, align 8, !tbaa !8
  store i16 2, ptr %i.ag, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.ah, align 8, !tbaa !8
  store i32 0, ptr %i.ai, align 8, !tbaa !75
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aj, align 8, !tbaa !8
  store i16 2, ptr %i.ak, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.al, align 8, !tbaa !8
  store ptr null, ptr %i.am, align 8, !tbaa !81
  store i32 27, ptr %i.an, align 8, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.ao, align 8, !tbaa !8
  store i32 0, ptr %i.ap, align 8, !tbaa !31
  store ptr null, ptr %i.aq, align 8, !tbaa !36
  %i.as = tail call noundef nonnull align 8 dereferenceable(396) ptr @_ZN6icu_788message220FormattedPlaceholderaSEOS1_(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(396) %i.ar) #20 ; 0 uses
  br label %bb.ao

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %3, align 4, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %0, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aa, align 8, !tbaa !8
  store i16 2, ptr %i.ab, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.ac, align 8, !tbaa !8
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !11
  store i8 0, ptr %i.ae, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.af, align 8, !tbaa !8
  store i16 2, ptr %i.ag, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.ah, align 8, !tbaa !8
  store i32 0, ptr %i.ai, align 8, !tbaa !75
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aj, align 8, !tbaa !8
  store i16 2, ptr %i.ak, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.al, align 8, !tbaa !8
  store ptr null, ptr %i.am, align 8, !tbaa !81
  store i32 27, ptr %i.an, align 8, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.ao, align 8, !tbaa !8
  store i32 0, ptr %i.ap, align 8, !tbaa !31
  store ptr null, ptr %i.aq, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 1, ptr %i.at, align 8, !tbaa !83
  br label %bb.ao

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %4, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 2, ptr %i.av, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.aw, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 80
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 192
  store i8 0, ptr %i.ay, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.az, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i16 2, ptr %i.ba, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.bb, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i32 0, ptr %i.bc, align 8, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 280
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.bd, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 288
  store i16 2, ptr %i.be, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 344
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.bf, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 352
  store ptr null, ptr %i.bg, align 8, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 360
  store i32 27, ptr %i.bh, align 8, !tbaa !82
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 368 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.bi, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 384
  store i32 0, ptr %i.bj, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 376
  store ptr null, ptr %i.bk, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 392 ; 2 uses
  store i32 1, ptr %i.bl, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !73
  %i.bp = icmp eq i8 %i.bo, 1
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = call noundef nonnull align 8 dereferenceable(396) ptr @_ZN6icu_788message220FormattedPlaceholderaSEOS1_(ptr noundef nonnull align 8 dereferenceable(396) %4, ptr noundef nonnull align 8 dereferenceable(396) %i.bm) #20 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !86
  invoke void @_ZN6icu_788message213InternalValue15forceFormattingERNS0_13DynamicErrorsER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::message2::FormattedPlaceholder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(520) %i.br, ptr noundef nonnull align 8 dereferenceable(29) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = call noundef nonnull align 8 dereferenceable(396) ptr @_ZN6icu_788message220FormattedPlaceholderaSEOS1_(ptr noundef nonnull align 8 dereferenceable(396) %4, ptr noundef nonnull align 8 dereferenceable(396) %5) #20 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %5, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 368
  call void @_ZN6icu_788message215FunctionOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.bt) #20, !inline_history !102
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 264
  call void @_ZN6icu_788message214FormattedValueD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bu) #20, !inline_history !102
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZN6icu_788message211FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.bv) #20, !inline_history !102
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bw) #20, !inline_history !102
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(396) %5) #20, !inline_history !102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.an

bb.l:                                             ; preds = %bb.j, %bb.h
  %i.by = load i32, ptr %3, align 4, !tbaa !37
  %i.bz = icmp slt i32 %i.by, 1
  br i1 %i.bz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %0, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ca, align 8, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.cc, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 0.000000e+00, ptr %i.cd, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.ce, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cf, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 2, ptr %i.cg, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.ch, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.ci, align 8, !tbaa !75
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cj, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 2, ptr %i.ck, align 8, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.cl, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.cm, align 8, !tbaa !81
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 27, ptr %i.cn, align 8, !tbaa !82
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.co, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.cp, align 8, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr null, ptr %i.cq, align 8, !tbaa !36
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 1, ptr %i.cr, align 8, !tbaa !83
  br label %bb.am

bb.n:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.bl, align 8, !tbaa !83 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %0, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cu, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.cv, align 8, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.cw, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 0.000000e+00, ptr %i.cx, align 8, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.cy, align 8, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cz, align 8, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 2, ptr %i.da, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.db, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.dc, align 8, !tbaa !75
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.dd, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 2, ptr %i.de, align 8, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.df, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.dg, align 8, !tbaa !81
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 27, ptr %i.dh, align 8, !tbaa !82
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.di, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.dj, align 8, !tbaa !31
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr null, ptr %i.dk, align 8, !tbaa !36
  %i.dl = call noundef nonnull align 8 dereferenceable(396) ptr @_ZN6icu_788message220FormattedPlaceholderaSEOS1_(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(396) %4) #20 ; 0 uses
  br label %bb.am

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.dm, align 8, !tbaa !10
  %i.dn = icmp eq i32 %i.cs, 1
  br i1 %i.dn, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.do = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSIA2_DsvEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 2 dereferenceable(4) @.str.3)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.dr = load i16, ptr %i.dq, align 8, !tbaa !10 ; 2 uses
  %i.ds = icmp slt i16 %i.dr, 0
  %i.dt = ashr i16 %i.dr, 5
  %i.du = sext i16 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 452
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = select i1 %i.ds, i32 %i.dw, i32 %i.du
  %i.dy = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.dp, i32 noundef 0, i32 noundef %i.dx)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.t, %bb.q
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.t:                                             ; preds = %bb.p
  %i.ea = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.au)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit unwind label %bb.s ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit:           ; preds = %bb.r, %bb.t
  %i.eb = invoke noundef zeroext i1 @_ZNK6icu_788message213InternalValue17checkSelectOptionEv(ptr noundef nonnull align 8 dereferenceable(520) %1)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ec = load ptr, ptr %i.u, align 8, !tbaa !98  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::message2::FormattedPlaceholder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(396) %4, ptr noundef nonnull align 8 dereferenceable(20) %i.ed, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.eh = load i32, ptr %3, align 4, !tbaa !37    ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %thread-pre-split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = icmp eq i32 %i.eh, -127
  br i1 %i.ej, label %.thread45, label %thread-pre-split.thread

.thread45:                                        ; preds = %bb.w
  store i32 0, ptr %3, align 4, !tbaa !37
  br label %thread-pre-split.thread

bb.x:                                             ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.y:                                             ; preds = %bb.u
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.z:                                             ; preds = %bb.ai, %bb.ah, %bb.ac, %bb.ab, %bb.aa
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.af, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.em, %bb.z ], [ %i.ev, %bb.af ]
  call void @_ZN6icu_788message220FormattedPlaceholderD2Ev(ptr noundef nonnull align 8 dead_on_return(396) dereferenceable(396) %7) #20
  br label %bb.ak

thread-pre-split:                                 ; preds = %bb.v
  store i32 0, ptr %3, align 4, !tbaa !37
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  switch i32 %i.eh, label %bb.ac [
    i32 65822, label %bb.aa
end_hunk_0
