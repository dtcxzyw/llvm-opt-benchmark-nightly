Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_url_pattern?download=true
inline.NumInlined: 4558
inline.NumDeleted: 1922
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4node11url_pattern10URLPattern8PathnameEv:bb.a
  %i.ad = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.f) #24
  br label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit

_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit: ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.y, align 8
  store i64 %i.v, ptr %.0.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit
  %.sroa.09.1 = phi ptr [ %.0.i.i, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit ], [ %i.q, %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit ], [ null, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread ], [ null, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4node11url_pattern10URLPattern6SearchEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(952) %0) local_unnamed_addr #0 align 2 !guid !300 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #24 ; 2 uses
  %i.o = icmp ugt i64 %i.m, 536870887
  br i1 %i.o, label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread, label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit, !prof !168

_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread: ; preds = %bb.b
  tail call void @_ZN4node21ThrowErrStringTooLongEPN2v87IsolateE(ptr noundef %i.n) #24
  br label %bb.g

_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit: ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %i.m to i32
  %i.q = tail call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.n, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.p) #24 ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.r) #24
  store ptr null, ptr %i.g, align 8
  br label %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit

_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit: ; preds = %bb.c, %bb.d
  %i.t = load i64, ptr %i.q, align 8
  %i.u = tail call noundef ptr @_ZN2v812api_internal18GlobalizeReferenceEPNS_8internal7IsolateEm(ptr noundef %i.f, i64 noundef %i.t) #24
  store ptr %i.u, ptr %i.g, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.h, align 8
  %i.w = ptrtoint ptr %i.f to i64
  %i.x = add i64 %i.w, 560
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit, !prof !168

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.f) #24
  br label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit

_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit: ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.y, align 8
  store i64 %i.v, ptr %.0.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit
  %.sroa.09.1 = phi ptr [ %.0.i.i, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit ], [ %i.q, %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit ], [ null, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread ], [ null, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4node11url_pattern10URLPattern4HashEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(952) %0) local_unnamed_addr #0 align 2 !guid !301 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #24 ; 2 uses
  %i.o = icmp ugt i64 %i.m, 536870887
  br i1 %i.o, label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread, label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit, !prof !168

_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread: ; preds = %bb.b
  tail call void @_ZN4node21ThrowErrStringTooLongEPN2v87IsolateE(ptr noundef %i.n) #24
  br label %bb.g

_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit: ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %i.m to i32
  %i.q = tail call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.n, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.p) #24 ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.r) #24
  store ptr null, ptr %i.g, align 8
  br label %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit

_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit: ; preds = %bb.c, %bb.d
  %i.t = load i64, ptr %i.q, align 8
  %i.u = tail call noundef ptr @_ZN2v812api_internal18GlobalizeReferenceEPNS_8internal7IsolateEm(ptr noundef %i.f, i64 noundef %i.t) #24
  store ptr %i.u, ptr %i.g, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.h, align 8
  %i.w = ptrtoint ptr %i.f to i64
  %i.x = add i64 %i.w, 560
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit, !prof !168

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.f) #24
  br label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit

_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit: ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.y, align 8
  store i64 %i.v, ptr %.0.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit
  %.sroa.09.1 = phi ptr [ %.0.i.i, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit ], [ %i.q, %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit ], [ null, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread ], [ null, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4node11url_pattern10URLPattern15HasRegExpGroupsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(952) %0) local_unnamed_addr #9 align 2 !guid !302 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i8, ptr %i.a, align 8, !range !170, !noundef !173
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load i8, ptr %i.d, align 8, !range !170
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i = select i1 %i.c, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load i8, ptr %i.g, align 8, !range !170
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.k = load i8, ptr %i.j, align 8, !range !170
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond8.i = select i1 %or.cond5.i, i1 true, i1 %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.n = load i8, ptr %i.m, align 8, !range !170
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond11.i = select i1 %or.cond8.i, i1 true, i1 %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.q = load i8, ptr %i.p, align 8, !range !170
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond14.i = select i1 %or.cond11.i, i1 true, i1 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 768
  %1 = load i8, ptr %i.s, align 8, !range !170
  %2 = trunc nuw i8 %1 to i1
  %or.cond17.i = select i1 %or.cond14.i, i1 true, i1 %2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.t = load i8, ptr %3, align 8, !range !170
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = select i1 %or.cond17.i, i1 true, i1 %i.u
  ret i1 %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4node11url_pattern10URLPattern4ExecEPNS_11EnvironmentERKSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEEN3ada16url_pattern_initEEERSt8optionalIS8_E(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(361) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 !guid !303 {
bb.a:
  %4 = alloca %"class.tl::expected.500", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !170, !noundef !173
  %i.d = trunc nuw i8 %i.c to i1
  %spec.select = select i1 %i.d, ptr %3, ptr null
  call void @_ZN3ada11url_patternIN4node11url_pattern23URLPatternRegexProviderEE5matchERKSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENS_16url_pattern_initEEEPKS9_(ptr dead_on_unwind nonnull writable sret(%"class.tl::expected.500") align 8 %4, ptr noundef nonnull align 8 dereferenceable(833) %i.a, ptr noundef nonnull align 8 dereferenceable(361) %2, ptr noundef %spec.select)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 736 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !170, !noundef !173
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN2tl6detail21expected_storage_baseISt8optionalIN3ada18url_pattern_resultEENS3_6errorsELb0ELb1EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 728
  %i.i = load i8, ptr %i.h, align 8, !range !170, !noundef !173
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, 664
  %i.o = inttoptr i64 %i.n to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = call ptr @_ZN4node11url_pattern10URLPattern16URLPatternResult9ToJSValueEPNS_11EnvironmentERKN3ada18url_pattern_resultE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(728) %4) ; 2 uses
  %.pre = load i8, ptr %i.e, align 8, !range !170
  %i.q = trunc nuw i8 %.pre to i1
  br i1 %i.q, label %bb.d, label %_ZN2tl6detail21expected_storage_baseISt8optionalIN3ada18url_pattern_resultEENS3_6errorsELb0ELb1EED2Ev.exit

bb.d:                                             ; preds = %.thread, %bb.c
  %spec.select1013 = phi ptr [ %i.o, %.thread ], [ %i.p, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 728 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !170, !noundef !173
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %_ZN2tl6detail21expected_storage_baseISt8optionalIN3ada18url_pattern_resultEENS3_6errorsELb0ELb1EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.r, align 8
  call void @_ZN3ada18url_pattern_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(728) dereferenceable(737) %4) #24
  br label %_ZN2tl6detail21expected_storage_baseISt8optionalIN3ada18url_pattern_resultEENS3_6errorsELb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseISt8optionalIN3ada18url_pattern_resultEENS3_6errorsELb0ELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %spec.select1012 = phi ptr [ %i.p, %bb.c ], [ %spec.select1013, %bb.d ], [ %spec.select1013, %bb.e ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret ptr %spec.select1012
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4node11url_pattern10URLPattern4TestEPNS_11EnvironmentERKSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEEN3ada16url_pattern_initEEERSt8optionalIS8_E(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(361) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 !guid !304 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !170, !noundef !173
  %i.d = trunc nuw i8 %i.c to i1
  %spec.select = select i1 %i.d, ptr %3, ptr null
  %i.e = tail call i16 @_ZN3ada11url_patternIN4node11url_pattern23URLPatternRegexProviderEE4testERKSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENS_16url_pattern_initEEEPKS9_(ptr noundef nonnull align 8 dereferenceable(833) %i.a, ptr noundef nonnull align 8 dereferenceable(361) %2, ptr noundef %spec.select) ; 2 uses
  %i.f = and i16 %i.e, 256
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i16 %i.e to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = tail call ptr @_ZN4node20ERR_OPERATION_FAILEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.i, i64 25, ptr nonnull @.str.39)
  %i.k = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr %i.j) #24 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ %i.g, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i16 @_ZN3ada11url_patternIN4node11url_pattern23URLPatternRegexProviderEE4testERKSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENS_16url_pattern_initEEEPKS9_(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(361) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !guid !305 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.tl::expected.732", align 8 ; 21 uses
  %12 = alloca %"class.std::optional.529", align 8 ; 4 uses
  %13 = alloca %"class.std::optional.529", align 8 ; 4 uses
  %14 = alloca %"class.std::optional.529", align 8 ; 4 uses
  %15 = alloca %"class.std::optional.529", align 8 ; 4 uses
  %16 = alloca %"class.std::optional.529", align 8 ; 4 uses
  %17 = alloca %"class.std::optional.529", align 8 ; 4 uses
  %18 = alloca %"class.std::optional.529", align 8 ; 4 uses
  %19 = alloca %"class.std::optional.529", align 8 ; 4 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.tl::expected.860", align 8 ; 15 uses
  %27 = alloca %"class.tl::expected.860", align 8 ; 15 uses
  %28 = alloca %"class.tl::expected.860", align 8 ; 19 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %30 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %31 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %33 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %34 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp eq ptr %2, null
  br i1 %.not17, label %_ZSt3getIN3ada16url_pattern_initEJSt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_RKSt7variantIJDpT0_EE.exit, label %bb.r

_ZSt3getIN3ada16url_pattern_initEJSt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.f, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.h, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.j, ptr %6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8
  store i8 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.l, ptr %7, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.n, ptr %8, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.p, ptr %9, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.r, ptr %10, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i64 0, ptr %12, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.d, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 1, ptr %i.u, align 8
  store i64 0, ptr %13, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.f, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 1, ptr %i.w, align 8
  store i64 0, ptr %14, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.h, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 1, ptr %i.y, align 8
  store i64 0, ptr %15, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.j, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 1, ptr %i.aa, align 8
  store i64 0, ptr %16, align 8
end_hunk_0
begin_hunk_1_@_ZN4node11url_pattern10URLPattern8PathnameERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !171

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #24
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = tail call ptr @_ZN4node11url_pattern10URLPattern8PathnameEv(ptr noundef nonnull align 8 dereferenceable(952) %.0.i.i) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.e, label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.u, align 8
  store i64 %i.x, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11url_pattern10URLPattern6SearchERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 !guid !321 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !171

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #24
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = tail call ptr @_ZN4node11url_pattern10URLPattern6SearchEv(ptr noundef nonnull align 8 dereferenceable(952) %.0.i.i) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.e, label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.u, align 8
  store i64 %i.x, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11url_pattern10URLPattern4HashERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 !guid !322 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !171

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #24
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = tail call ptr @_ZN4node11url_pattern10URLPattern4HashEv(ptr noundef nonnull align 8 dereferenceable(952) %.0.i.i) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.e, label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.u, align 8
  store i64 %i.x, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11url_pattern10URLPattern15HasRegexpGroupsERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 !guid !323 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !171

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #24
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 9 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 144
  %i.x = load i8, ptr %i.w, align 8, !range !170, !noundef !173
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 248
  %i.aa = load i8, ptr %i.z, align 8, !range !170
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i.i = select i1 %i.y, i1 true, i1 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 352
  %i.ad = load i8, ptr %i.ac, align 8, !range !170
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 456
  %i.ag = load i8, ptr %i.af, align 8, !range !170
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 true, i1 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 560
  %i.aj = load i8, ptr %i.ai, align 8, !range !170
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 true, i1 %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 664
  %i.am = load i8, ptr %i.al, align 8, !range !170
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond14.i.i = select i1 %or.cond11.i.i, i1 true, i1 %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 768
  %1 = load i8, ptr %i.ao, align 8, !range !170
  %2 = trunc nuw i8 %1 to i1
  %or.cond17.i.i = select i1 %or.cond14.i.i, i1 true, i1 %2
  %3 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 872
  %i.ap = load i8, ptr %3, align 8, !range !170
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %or.cond17.i.i, i1 true, i1 %i.aq
  %4 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = add i64 %6, 648
  %8 = select i1 %i.ar, i64 24, i64 32
  %9 = add i64 %7, %8
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z21_register_url_patternv() local_unnamed_addr #0 !guid !324 {
bb.a:
  tail call void @node_module_register(ptr noundef nonnull @_ZL7_module) #24
  ret void
}

declare void @node_module_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z40_register_external_reference_url_patternPN4node25ExternalReferenceRegistryE(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 !guid !325 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 37 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 36 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 ptrtoint (ptr @_ZN4node11url_pattern10URLPattern3NewERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  %.pre.i = load ptr, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #26 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node11url_pattern10URLPattern3NewERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #27
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q ; 2 uses
  store ptr %i.z, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit.i

_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit.i: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i.i, %bb.b
  %i.aa = phi ptr [ %.pre.i, %bb.b ], [ %i.z, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.g, %bb.b ], [ %i.v, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i12.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i.i12.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit.i
  store i64 ptrtoint (ptr @_ZN4node11url_pattern10URLPattern8ProtocolERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.b, align 8
  %.pre100.i = load ptr, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit19.i

bb.h:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit.i
  %i.ae = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i13.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i13.i: ; preds = %bb.h
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i14.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i.i.i14.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i.i.i15.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i15.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node11url_pattern10URLPattern8ProtocolERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.aq, align 8
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i16.i

bb.j:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i13.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i16.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i16.i: ; preds = %bb.j, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i13.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i17.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i17.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i18.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i16.i
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.av) #27
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i18.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i18.i: ; preds = %bb.k, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i16.i
  store ptr %i.ap, ptr %i.a, align 8
  store ptr %i.as, ptr %i.b, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an ; 2 uses
  store ptr %i.aw, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit19.i

_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit19.i: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i18.i, %bb.g
  %i.ax = phi ptr [ %.pre100.i, %bb.g ], [ %i.aw, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i18.i ] ; 2 uses
  %i.ay = phi ptr [ %i.ad, %bb.g ], [ %i.as, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i18.i ] ; 2 uses
  %.not.i.i.i.i20.i = icmp eq ptr %i.ay, %i.ax
  br i1 %.not.i.i.i.i20.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit19.i
  store i64 ptrtoint (ptr @_ZN4node11url_pattern10URLPattern8UsernameERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.b, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.b, align 8
  %.pre101.i = load ptr, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit27.i

bb.m:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit19.i
  %i.bb = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 5 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.n, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i21.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i21.i: ; preds = %bb.m
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i22.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i.i.i22.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.i.i23.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i23.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #26 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node11url_pattern10URLPattern8UsernameERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.bn, align 8
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.o, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i24.i

bb.o:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i24.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i24.i: ; preds = %bb.o, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i21.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i25.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i.i.i25.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i26.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i24.i
  %i.bq = load ptr, ptr %i.d, align 8
end_hunk_1
