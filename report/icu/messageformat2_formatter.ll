Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messageformat2_formatter?download=true
inline.NumInlined: 94
inline.NumDeleted: 34
begin_hunk_0_@_ZN6icu_788message216MessageFormatterC2ERKNS1_7BuilderER10UErrorCode:bb.a
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message217StandardFunctions14IntegerFactoryE, i64 16), ptr %i.v, align 8, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 2, ptr %i.x, align 8, !tbaa !8
  %i.y = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 8, ptr nonnull @.str)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %4) #11
  br label %.body

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit: ; preds = %bb.n
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder14adoptFormatterERKNS_13UnicodeStringEPNS0_16FormatterFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.p unwind label %bb.be

bb.p:                                             ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.ab, align 8, !tbaa !8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 4, ptr nonnull @.str.1)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit130 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %5) #11
  br label %.body128

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit130: ; preds = %bb.p
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder14adoptFormatterERKNS_13UnicodeStringEPNS0_16FormatterFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.r unwind label %bb.bf

bb.r:                                             ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.af, align 8, !tbaa !8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 4, ptr nonnull @.str.2)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit133 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %6) #11
  br label %.body131

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit133: ; preds = %bb.r
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder14adoptFormatterERKNS_13UnicodeStringEPNS0_16FormatterFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %i.s, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.t unwind label %bb.bg

bb.t:                                             ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.aj, align 8, !tbaa !8
  %i.ak = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 6, ptr nonnull @.str.3)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit136 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %7) #11
  br label %.body134

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit136: ; preds = %bb.t
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder14adoptFormatterERKNS_13UnicodeStringEPNS0_16FormatterFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.v unwind label %bb.bh

bb.v:                                             ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit136
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 2, ptr %i.an, align 8, !tbaa !8
  %i.ao = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %8, i64 7, ptr nonnull @.str.4)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit139 unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %8) #11
  br label %.body137

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit139: ; preds = %bb.v
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder14adoptFormatterERKNS_13UnicodeStringEPNS0_16FormatterFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %i.v, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.x unwind label %bb.bi

bb.x:                                             ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %9, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 2, ptr %i.ar, align 8, !tbaa !8
  %i.as = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %9, i64 13, ptr nonnull @.str.5)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit142 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %9) #11
  br label %.body140

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit142: ; preds = %bb.x
  %i.au = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 8) #11 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit142
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message217StandardFunctions17TestFormatFactoryE, i64 16), ptr %i.au, align 8, !tbaa !35
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit142
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder14adoptFormatterERKNS_13UnicodeStringEPNS0_16FormatterFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef %i.au, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.ab unwind label %bb.bj

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %10, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i16 2, ptr %i.ax, align 8, !tbaa !8
  %i.ay = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %10, i64 11, ptr nonnull @.str.6)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit145 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %10) #11
  br label %.body143

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit145: ; preds = %bb.ab
  %i.ba = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 8) #11 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit145
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message217StandardFunctions17TestFormatFactoryE, i64 16), ptr %i.ba, align 8, !tbaa !35
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit145
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder14adoptFormatterERKNS_13UnicodeStringEPNS0_16FormatterFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.af unwind label %bb.bk

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %11, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i16 2, ptr %i.bd, align 8, !tbaa !8
  %i.be = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %11, i64 6, ptr nonnull @.str.3)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit148 unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %11) #11
  br label %.body146

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit148: ; preds = %bb.af
  %i.bg = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 16) #11 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit148
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message217StandardFunctions13PluralFactoryE, i64 16), ptr %i.bg, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i8 0, ptr %i.bi, align 8, !tbaa !85
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit148
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder13adoptSelectorERKNS_13UnicodeStringEPNS0_15SelectorFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.aj unwind label %bb.bl

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %12, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i16 2, ptr %i.bk, align 8, !tbaa !8
  %i.bl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %12, i64 7, ptr nonnull @.str.4)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit151 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %12) #11
  br label %.body149

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit151: ; preds = %bb.aj
  %i.bn = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 16) #11 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit151
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message217StandardFunctions13PluralFactoryE, i64 16), ptr %i.bn, align 8, !tbaa !35, !alias.scope !91
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 1, ptr %i.bp, align 8, !tbaa !85, !alias.scope !91
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit151
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder13adoptSelectorERKNS_13UnicodeStringEPNS0_15SelectorFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.an unwind label %bb.bm

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %13, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i16 2, ptr %i.br, align 8, !tbaa !8
  %i.bs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %13, i64 6, ptr nonnull @.str.7)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit154 unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %13) #11
  br label %.body152

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit154: ; preds = %bb.an
  %i.bu = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 8) #11 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit154
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message217StandardFunctions11TextFactoryE, i64 16), ptr %i.bu, align 8, !tbaa !35
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit154
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder13adoptSelectorERKNS_13UnicodeStringEPNS0_15SelectorFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.ar unwind label %bb.bn

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %14, align 8, !tbaa !35
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i16 2, ptr %i.bx, align 8, !tbaa !8
  %i.by = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %14, i64 13, ptr nonnull @.str.5)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit157 unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %14) #11
  br label %.body155

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit157: ; preds = %bb.ar
  %i.ca = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 8) #11 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit157
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message217StandardFunctions17TestSelectFactoryE, i64 16), ptr %i.ca, align 8, !tbaa !35
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit157
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder13adoptSelectorERKNS_13UnicodeStringEPNS0_15SelectorFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.av unwind label %bb.bo

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %15, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i16 2, ptr %i.cd, align 8, !tbaa !8
  %i.ce = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %15, i64 11, ptr nonnull @.str.8)
          to label %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit160 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %15) #11
  br label %.body158

_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit160: ; preds = %bb.av
  %i.cg = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 8) #11 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit160
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message217StandardFunctions17TestSelectFactoryE, i64 16), ptr %i.cg, align 8, !tbaa !35
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit160
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_788message218MFFunctionRegistry7Builder13adoptSelectorERKNS_13UnicodeStringEPNS0_15SelectorFactoryER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.az unwind label %bb.bp     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.cj = load i32, ptr %2, align 4, !tbaa !38
  %i.ck = icmp slt i32 %i.cj, 1
  br i1 %i.ck, label %bb.cc, label %_ZN6icu_7812LocalPointerINS_8message212StaticErrorsEED2Ev.exit161

bb.ba:                                            ; preds = %bb.f
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.bb:                                            ; preds = %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.bc:                                            ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.bd:                                            ; preds = %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.be:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bf:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit130
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bg:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit133
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bh:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit136
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bi:                                            ; preds = %_ZN6icu_7813UnicodeStringC2ISt17basic_string_viewIDsSt11char_traitsIDsEEvEERKT_.exit139
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bj:                                            ; preds = %bb.aa
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bk:                                            ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bl:                                            ; preds = %bb.ai
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bm:                                            ; preds = %bb.am
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bn:                                            ; preds = %bb.aq
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bo:                                            ; preds = %bb.au
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.ay
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #11
  br label %.body158

.body158:                                         ; preds = %bb.aw, %bb.bp
  %.pn = phi { ptr, i32 } [ %i.da, %bb.bp ], [ %i.cf, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
end_hunk_0
begin_hunk_1_@_ZNK6icu_788message216MessageFormatter22lookupFormatterFactoryERKNS_13UnicodeStringER10UErrorCode:bb.a

.thread:                                          ; preds = %bb.i, %bb.g, %bb.a, %bb.j, %bb.e, %bb.c
  %.1 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.e ], [ null, %bb.j ], [ null, %bb.i ], [ %i.i, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788message216MessageFormatter29getDefaultFormatterNameByTypeERKNS_13UnicodeStringERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(273) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZNK6icu_788message218MFFunctionRegistry29getDefaultFormatterNameByTypeERKNS_13UnicodeStringERS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.d = icmp ne i8 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef signext i8 @_ZNK6icu_788message218MFFunctionRegistry29getDefaultFormatterNameByTypeERKNS_13UnicodeStringERS2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788message216MessageFormatter17isBuiltInSelectorERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef zeroext i1 @_ZNK6icu_788message218MFFunctionRegistry11hasSelectorERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZNK6icu_788message218MFFunctionRegistry11hasSelectorERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788message216MessageFormatter18isBuiltInFormatterERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef zeroext i1 @_ZNK6icu_788message218MFFunctionRegistry12hasFormatterERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZNK6icu_788message218MFFunctionRegistry12hasFormatterERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef ptr @_ZNK6icu_788message218MFFunctionRegistry11getSelectorERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6icu_788message213DynamicErrors16setSelectorErrorERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZNK6icu_788message218MFFunctionRegistry12getFormatterERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6icu_788message213DynamicErrors18setUnknownFunctionERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788message216MessageFormatter17isCustomFormatterERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(273) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6icu_788message218MFFunctionRegistry12getFormatterERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.d = icmp ne ptr %i.c, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788message216MessageFormatter16isCustomSelectorERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(273) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6icu_788message218MFFunctionRegistry11getSelectorERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.d = icmp ne ptr %i.c, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %i.e
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef ptr @_ZN6icu_788message27unisets3getENS1_3KeyER10UErrorCode(i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_788message212StaticErrorsC1EOS1_(ptr noundef nonnull align 8 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"_ZTSN6icu_787UObjectE"}
!10 = !{!"_ZTSN6icu_7811ReplaceableE", !9, i64 0}
!11 = !{!"_ZTSN6icu_7813UnicodeStringE", !10, i64 0, !4, i64 8}
!12 = !{!"bool", !4, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTSN6icu_788message210data_model11PatternPartE", !13, i64 0}
!15 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_8message210data_model11PatternPartEEE", !14, i64 0}
!16 = !{!"_ZTSN6icu_7810LocalArrayINS_8message210data_model11PatternPartEEE", !15, i64 0}
!17 = !{!"_ZTSN6icu_788message210data_model7PatternE", !9, i64 0, !12, i64 8, !5, i64 12, !16, i64 16}
!18 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !4, i64 0, !4, i64 48}
!19 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !18, i64 0}
!20 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !19, i64 0}
!21 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !20, i64 0}
!22 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !21, i64 0}
!23 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !22, i64 0}
!24 = !{!"_ZTSSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE", !23, i64 0}
!25 = !{!"p1 _ZTSN6icu_788message210data_model7BindingE", !13, i64 0}
!26 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_8message210data_model7BindingEEE", !25, i64 0}
!27 = !{!"_ZTSN6icu_7810LocalArrayINS_8message210data_model7BindingEEE", !26, i64 0}
!28 = !{!"_ZTSN6icu_788message210data_model11MFDataModelE", !17, i64 8, !12, i64 32, !24, i64 40, !27, i64 96, !5, i64 104}
!29 = !{!"p1 _ZTSN6icu_788message212StaticErrorsE", !13, i64 0}
!30 = !{!"_ZTSN6icu_786LocaleE", !9, i64 0, !4, i64 8}
!31 = !{!"p1 _ZTSN6icu_788message218MFFunctionRegistryE", !13, i64 0}
!32 = !{!"_ZTSN6icu_788message216MessageFormatter7BuilderE", !9, i64 0, !11, i64 8, !12, i64 72, !12, i64 73, !28, i64 80, !11, i64 192, !29, i64 256, !30, i64 264, !31, i64 304, !12, i64 312}
!33 = !{!32, !29, i64 256}
!34 = !{!"vtable pointer", !3, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{ptr @_ZN6icu_788message216MessageFormatter7Builder10clearStateEv}
!37 = !{!"_ZTS10UErrorCode", !4, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTSN6icu_7813UnicodeStringE", !13, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!29, !29, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!32, !12, i64 73}
!45 = !{!32, !12, i64 72}
!46 = !{!32, !31, i64 304}
!47 = !{!32, !12, i64 312}
!48 = !{!"p1 _ZTSN6icu_789HashtableE", !13, i64 0}
!49 = !{!"_ZTSN6icu_788message218MFFunctionRegistryE", !9, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!50 = !{!"_ZTSN6icu_788message216MessageFormatterE", !9, i64 0, !30, i64 8, !49, i64 48, !31, i64 80, !28, i64 88, !11, i64 200, !29, i64 264, !12, i64 272}
!51 = !{!50, !31, i64 80}
!52 = !{!50, !29, i64 264}
!53 = !{!50, !12, i64 272}
!54 = !{!"p1 _ZTSN6icu_788message210data_model11MFDataModelE", !13, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{ptr @_ZN6icu_788message216MessageFormatter7cleanupEv}
!57 = !{!"p1 _ZTSN6icu_7810UnicodeSetE", !13, i64 0}
!58 = !{!"_ZTSN6icu_788message26Parser17MessageParseErrorE", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !4, i64 44}
!59 = !{!"p1 _ZTSN6icu_788message210data_model11MFDataModel7BuilderE", !13, i64 0}
!60 = !{!"_ZTSN6icu_788message26ParserE", !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !39, i64 88, !5, i64 96, !58, i64 100, !29, i64 176, !39, i64 184, !59, i64 192}
!61 = !{!60, !57, i64 8}
!62 = !{!60, !57, i64 16}
!63 = !{!60, !57, i64 24}
!64 = !{!60, !57, i64 32}
!65 = !{!60, !57, i64 40}
!66 = !{!60, !57, i64 48}
!67 = !{!60, !57, i64 56}
!68 = !{!60, !57, i64 64}
!69 = !{!60, !57, i64 72}
!70 = !{!60, !57, i64 80}
!71 = !{!60, !5, i64 96}
!72 = !{!59, !59, i64 0}
!73 = !{!"char16_t", !4, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"p1 _ZTSN6icu_787UVectorE", !13, i64 0}
!76 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_7UVectorEEE", !75, i64 0}
!77 = !{!"_ZTSN6icu_7812LocalPointerINS_7UVectorEEE", !76, i64 0}
!78 = !{!"_ZTSN6icu_788message212StaticErrorsE", !9, i64 0, !77, i64 8, !12, i64 16, !12, i64 17, !12, i64 18}
!79 = !{!78, !12, i64 18}
!82 = distinct !{null}
!83 = !{!"_ZTSN6icu_788message215SelectorFactoryE", !9, i64 0}
!84 = !{!"_ZTSN6icu_788message217StandardFunctions13PluralFactoryE", !83, i64 0, !12, i64 8}
!85 = !{!84, !12, i64 8}
!87 = !{!"p1 _ZTSN6icu_788message216MessageFormatterE", !13, i64 0}
!88 = !{!87, !87, i64 0}
!89 = distinct !{!89, i1 false, !"_ZN6icu_788message217StandardFunctions13PluralFactory7integerEv"}
!90 = distinct !{!90, !89, !"_ZN6icu_788message217StandardFunctions13PluralFactory7integerEv: argument 0"}
!91 = !{!90}
end_hunk_1
