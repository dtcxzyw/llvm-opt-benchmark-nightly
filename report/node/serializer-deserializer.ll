inline.NumInlined: 169
inline.NumDeleted: 122
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_118IterateObjectCacheEPNS0_7IsolateEPSt6vectorINS0_6TaggedINS0_6ObjectEEESaIS7_EENS0_4RootEPNS0_11RootVisitorE:bb.a
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader69, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader69 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader69 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !8, !noalias !5
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !5, !noalias !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.h) #13
  br label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.s, ptr %1, align 8
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.al, ptr %i.b, align 8
  br label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d, %bb.b
  %i.am = phi ptr [ %i.s, %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre44, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %i.an = phi ptr [ %i.ak, %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.l, %bb.d ], [ %i.e, %bb.b ]
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %.not.i.i16 = icmp ult i64 %.015, %i.ar
  br i1 %.not.i.i16, label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE2atEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %.015, i64 noundef %i.ar) #11
  unreachable

_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE2atEm.exit: ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.015
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = load ptr, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %2, ptr noundef null, i64 %i.at) #14
  %i.ax = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ay = load ptr, ptr %1, align 8               ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %.not.i.i17 = icmp ult i64 %.015, %i.bc
  br i1 %.not.i.i17, label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE2atEm.exit18, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %.015, i64 noundef %i.bc) #11
  unreachable

_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE2atEm.exit18: ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE2atEm.exit
  %i.bd = load i64, ptr %i.c, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.015
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp eq i64 %i.bf, %i.bd
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE2atEm.exit18
  %i.bh = add nuw i64 %.015, 1
  br label %bb.b, !llvm.loop !15

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE2atEm.exit18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22SerializerDeserializer28IterateSharedHeapObjectCacheEPNS0_7IsolateEPNS0_11RootVisitorE(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.d = load i8, ptr %i.c, align 8, !range !16
  %i.e = trunc nuw i8 %i.d to i1
  %not..i.i = xor i1 %i.b, true
  %i.f = select i1 %not..i.i, i1 true, i1 %i.e
  br i1 %i.f, label %_ZN2v88internal7Isolate24shared_heap_object_cacheEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.h = load i8, ptr %i.g, align 8, !range !16, !noundef !17
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #15
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal7Isolate24shared_heap_object_cacheEv.exit

_ZN2v88internal7Isolate24shared_heap_object_cacheEv.exit: ; preds = %bb.a, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i
  %.pn.i = phi ptr [ %i.k, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i ], [ %0, %bb.a ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 63744
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_118IterateObjectCacheEPNS0_7IsolateEPSt6vectorINS0_6TaggedINS0_6ObjectEEESaIS7_EENS0_4RootEPNS0_11RootVisitorE(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, i32 noundef 15, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal22SerializerDeserializer13CanBeDeferredENS0_6TaggedINS0_10HeapObjectEEENS1_8SlotTypeE(i64 %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %0, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, -96
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp ugt i16 %i.m, 302
  br i1 %i.n, label %bb.d, label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 4 uses
  %i.p = add i64 %i.o, 7
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load atomic volatile i8, ptr %i.q monotonic, align 1 ; 2 uses
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 3
  %i.u = icmp eq i8 %i.r, 0
  br i1 %i.u, label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add i64 %i.o, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2 ; 2 uses
  %i.y = icmp eq i16 %i.x, 1057
  br i1 %i.y, label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add i64 %i.o, 13
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i8, ptr %i.aa monotonic, align 1
  %i.ac = icmp slt i8 %i.ab, 0
  %i.ad = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.x, i1 noundef zeroext %i.ac) #14
  br label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit

_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit: ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %i.ad, %bb.f ], [ 24, %bb.e ]
  %i.af = sub nsw i32 %i.t, %i.ae
  %i.ag = ashr i32 %i.af, 3
  %i.ah = load atomic volatile i8, ptr %i.q monotonic, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i64 %i.o, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i8, ptr %i.ak monotonic, align 1
  %i.am = zext i8 %i.al to i32
  %.neg.i.i = sub nsw i32 %i.ag, %i.ai
  %i.an = add nsw i32 %.neg.i.i, %i.am
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.i, label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread

_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread: ; preds = %bb.d, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit, %bb.c
  %i.ap = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.aq = add i64 %i.ap, 11
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i16, ptr %i.ar monotonic, align 2
  %i.at = icmp eq i16 %i.as, 218
  br i1 %i.at, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread
  %i.au = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2
  %i.ay = icmp eq i16 %i.ax, 267
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = add i64 %0, 7
  %i.ba = inttoptr i64 %i.az to ptr
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %2 = load i32, ptr %.shift.i, align 4
  %i.bb = icmp slt i32 %2, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread, %bb.h, %bb.g, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread ], [ false, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit ], [ false, %bb.b ], [ true, %bb.g ], [ %i.bb, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal22SerializerDeserializer34RestoreExternalReferenceRedirectorEPNS0_7IsolateENS0_6TaggedINS0_12AccessorInfoEEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef readnone captures(none) %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal22SerializerDeserializer34RestoreExternalReferenceRedirectorEPNS0_7IsolateENS0_6TaggedINS0_20FunctionTemplateInfoEEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef readnone captures(none) %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #5 comdat {
bb.a:
  tail call void @abort() #11
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!7 = distinct !{!7, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_EEvPT_PT0_RT1_"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11}
!16 = !{i8 0, i8 2}
!17 = !{}
end_hunk_0
