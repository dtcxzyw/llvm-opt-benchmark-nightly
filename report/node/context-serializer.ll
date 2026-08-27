Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/context-serializer?download=true
inline.NumInlined: 1374
inline.NumDeleted: 729
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal17ContextSerializer19SerializeObjectImplENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE:bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 0, ptr %i.gm, align 8
  call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %14, i32 noundef %2) #14
  %i.gn = add i16 %i.bw, -1058
  %i.go = icmp ult i16 %i.gn, 1005
  %i.gp = add i16 %i.bw, -303
  %i.gq = icmp ult i16 %i.gp, 738
  %or.cond179 = or i1 %i.go, %i.gq
  br i1 %or.cond179, label %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_12InstanceTypeE.exit.thread, label %bb.al

_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_12InstanceTypeE.exit.thread: ; preds = %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit
  call void @_ZN2v88internal17ContextSerializer25SerializeApiWrapperFieldsENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr nonnull %1)
  br label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_12InstanceTypeE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.b, %bb.a, %bb.c, %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_6TaggedINS0_3MapEEE.exit.thread, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.al, %bb.d, %bb.e, %_ZN2v88internal17ContextSerializer31ShouldBeInTheStartupObjectCacheENS0_6TaggedINS0_10HeapObjectEEE.exit.thread
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal10Serializer18SerializeHotObjectENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10Serializer13SerializeRootENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10Serializer22SerializeBackReferenceENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10Serializer32SerializeReadOnlyObjectReferenceENS0_6TaggedINS0_10HeapObjectEEEPNS0_16SnapshotByteSinkE(ptr noundef nonnull align 8 dereferenceable(600), i64, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal17StartupSerializer35SerializeUsingSharedHeapObjectCacheEPNS0_16SnapshotByteSinkENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17ContextSerializer31ShouldBeInTheStartupObjectCacheENS0_6TaggedINS0_10HeapObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(720) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 11 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp ult i16 %i.f, 129
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 165
  br i1 %i.l, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp eq i16 %i.p, 286
  br i1 %i.q, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 130
  br i1 %i.v, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 185
  br i1 %i.aa, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = icmp eq i16 %i.ae, 191
  br i1 %i.af, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 284
  br i1 %i.ak, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp eq i16 %i.ao, 203
  br i1 %i.ap, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = add i16 %i.at, -248
  %i.av = icmp ult i16 %i.au, 3
  br i1 %i.av, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ax = add i64 %i.aw, 11
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i16, ptr %i.ay monotonic, align 2
  %i.ba = icmp eq i16 %i.az, 151
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 736
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp eq i64 %i.bb, %i.bf
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bh = phi i1 [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.bg, %bb.k ]
  ret i1 %i.bh
}

declare void @_ZN2v88internal17StartupSerializer32SerializeUsingStartupObjectCacheEPNS0_16SnapshotByteSinkENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17ContextSerializer33SerializeObjectWithEmbedderFieldsINS0_8JSObjectEPFNS_11StartupDataEibNS_31SerializeInternalFieldsCallbackENS_5LocalINS_6ObjectEEEES5_S8_EEvNS0_6HandleIT_EEiT0_T1_T2_(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr %1, i32 noundef %2, ptr noundef %3, ptr %4, ptr %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::DisallowCompilation", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.660", align 8   ; 13 uses
  %10 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %i.a = inttoptr i64 %6 to ptr
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.e = load ptr, ptr %i.c, align 8
  call void @_ZN2v88internal19DisallowCompilationC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %8, ptr noundef %i.e) #14
  %i.f = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr null, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 7 uses
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  store ptr null, ptr %i.j, align 8
  %i.k = add i64 %i.f, -1                         ; 3 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  br label %bb.d

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.pre183 = load ptr, ptr %9, align 8
  br label %bb.ae

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.040170 = phi i32 [ 0, %bb.c ], [ %i.cw, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 3 uses
  %.sroa.0110.0169 = phi ptr [ null, %bb.c ], [ %.sroa.0110.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 5 uses
  %.sroa.17.0168 = phi ptr [ null, %bb.c ], [ %.sroa.17.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 6 uses
  %.sroa.9.0167 = phi ptr [ null, %bb.c ], [ %.sroa.9.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 8 uses
  %.sroa.099.0166 = phi ptr [ null, %bb.c ], [ %.sroa.099.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 10 uses
  %.sroa.11.0165 = phi ptr [ null, %bb.c ], [ %.sroa.11.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 3 uses
  %.sroa.7113.0164 = phi ptr [ null, %bb.c ], [ %.sroa.7113.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 3 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2 ; 2 uses
  %i.q = icmp eq i16 %i.p, 1057
  br i1 %i.q, label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %i.m, 13
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i8, ptr %i.s monotonic, align 1
  %i.u = icmp slt i8 %i.t, 0
  %i.v = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.p, i1 noundef zeroext %i.u) #14
  br label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit

_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit: ; preds = %bb.d, %bb.e
  %i.w = phi i32 [ %i.v, %bb.e ], [ 24, %bb.d ]
  %i.x = shl nsw i32 %.040170, 3
  %i.y = add nsw i32 %i.w, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %i.k, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.sroa.7113.0164, %.sroa.11.0165
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit
  store i64 %i.ac, ptr %.sroa.7113.0164, align 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit

bb.g:                                             ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit
  %i.ad = ptrtoint ptr %.sroa.11.0165 to i64
  %i.ae = ptrtoint ptr %.sroa.0110.0169 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  store i64 %i.ac, ptr %i.ao, align 8
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %.sroa.0110.0169, i64 %i.af, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0110.0169, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0110.0169, i64 noundef %i.af) #15
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.pn = phi ptr [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.7113.0164, %bb.f ]
  %.sroa.11.1 = phi ptr [ %i.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.11.0165, %bb.f ] ; 2 uses
  %.sroa.0110.1 = phi ptr [ %i.an, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0110.0169, %bb.f ] ; 5 uses
  %.sroa.7113.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ar = load atomic volatile i64, ptr %i.ab monotonic, align 8 ; 2 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit
  %.not.i.i = icmp eq ptr %.sroa.9.0167, %.sroa.17.0168
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %.sroa.9.0167, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0167, i64 8
  store i32 0, ptr %.sroa.590.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.at = ptrtoint ptr %.sroa.17.0168 to i64
  %i.au = ptrtoint ptr %.sroa.099.0166 to i64
  %i.av = sub i64 %i.at, %i.au                    ; 6 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775792
  br i1 %i.aw, label %bb.n, label %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ax = ashr exact i64 %i.av, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 576460752303423487)
  %i.bb = select i1 %i.az, i64 576460752303423487, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #17 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 3 uses
  store ptr null, ptr %i.be, align 8
  %.sroa.590.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 0, ptr %.sroa.590.0..sroa_idx91, align 8
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.o, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %.sroa.099.0166, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.099.0166, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0166, i64 noundef %i.av) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.l, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.099.2 = phi ptr [ %i.bd, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.099.0166, %bb.l ] ; 2 uses
  %.pn151 = phi ptr [ %i.be, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.9.0167, %bb.l ]
  %.sroa.17.2 = phi ptr [ %i.bg, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.0168, %bb.l ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn151, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.bi = load ptr, ptr %i.j, align 8
  %.not.i46 = icmp eq ptr %i.bh, %i.bi
  %.sroa.2.0.copyload.i11.i = load i32, ptr %i.i, align 8 ; 4 uses
  br i1 %.not.i46, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit
  %i.bj = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.bj, ptr %i.i, align 8
  %i.bk = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.bk, label %bb.r, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.i, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bl, ptr %i.h, align 8
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.r, %bb.q
  %i.bm = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = xor i64 %i.bn, -1
  %i.bp = load i64, ptr %i.bh, align 8
  %i.bq = and i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %i.bh, align 8
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.s:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr %i.bh, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit
  %i.br = icmp eq i64 %i.ar, 0
  %i.bs = call { ptr, i32 } %3(i32 noundef %.040170, i1 noundef zeroext %i.br, ptr %4, ptr %5, ptr %i.a) #14 ; 2 uses
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i32 } %i.bs, 1      ; 3 uses
  %.not.i47 = icmp eq ptr %.sroa.9.0167, %.sroa.17.0168
  br i1 %.not.i47, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.bt, ptr %.sroa.9.0167, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0167, i64 8
  store i32 %i.bu, ptr %.sroa.583.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.bv = ptrtoint ptr %.sroa.17.0168 to i64
  %i.bw = ptrtoint ptr %.sroa.099.0166 to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775792
  br i1 %i.by, label %bb.w, label %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.bz = ashr exact i64 %i.bx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i48 = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i48, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 576460752303423487)
  %i.cd = select i1 %i.cb, i64 576460752303423487, i64 %i.cc ; 3 uses
  %.not.i.i.i49 = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i49)
  %i.ce = shl nuw nsw i64 %i.cd, 4
  %i.cf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #17 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 3 uses
  store ptr %i.bt, ptr %i.cg, align 8
  %.sroa.583.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %i.bu, ptr %.sroa.583.0..sroa_idx84, align 8
  %i.ch = icmp sgt i64 %i.bx, 0
  br i1 %i.ch, label %bb.x, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %.sroa.099.0166, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i50 = icmp eq ptr %.sroa.099.0166, null
  br i1 %.not.i17.i.i50, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0166, i64 noundef %i.bx) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cd
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.u, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.099.3 = phi ptr [ %i.cf, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.099.0166, %bb.u ] ; 3 uses
  %.pn150 = phi ptr [ %i.cg, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9.0167, %bb.u ]
  %.sroa.17.3 = phi ptr [ %i.ci, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.17.0168, %bb.u ] ; 3 uses
  %.sroa.9.3 = getelementptr inbounds nuw i8, ptr %.pn150, i64 16 ; 3 uses
  %i.cj = icmp ne i32 %i.bu, 0                    ; 2 uses
  %i.ck = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.cl = load ptr, ptr %i.j, align 8
  %.not.i51 = icmp eq ptr %i.ck, %i.cl
  %.sroa.2.0.copyload.i11.i53 = load i32, ptr %i.i, align 8 ; 4 uses
  br i1 %.not.i51, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit
  %i.cm = add i32 %.sroa.2.0.copyload.i11.i53, 1
  store i32 %i.cm, ptr %i.i, align 8
  %i.cn = icmp eq i32 %.sroa.2.0.copyload.i11.i53, 63
  br i1 %i.cn, label %bb.aa, label %_ZNSt13_Bit_iteratorppEi.exit.i54

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.i, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.co, ptr %i.h, align 8
  br label %_ZNSt13_Bit_iteratorppEi.exit.i54

_ZNSt13_Bit_iteratorppEi.exit.i54:                ; preds = %bb.aa, %bb.z
  %i.cp = zext nneg i32 %.sroa.2.0.copyload.i11.i53 to i64
  %i.cq = shl nuw i64 1, %i.cp                    ; 2 uses
  br i1 %i.cj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i54
  %i.cr = load i64, ptr %i.ck, align 8
  %i.cs = or i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.ck, align 8
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ac:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i54
  %i.ct = xor i64 %i.cq, -1
  %i.cu = load i64, ptr %i.ck, align 8
  %i.cv = and i64 %i.cu, %i.ct
  store i64 %i.cv, ptr %i.ck, align 8
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ad:                                            ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr %i.ck, i32 %.sroa.2.0.copyload.i11.i53, i1 noundef zeroext %i.cj)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.s, %_ZNSt13_Bit_iteratorppEi.exit.i
  %.sroa.099.1 = phi ptr [ %.sroa.099.2, %bb.s ], [ %.sroa.099.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.099.3, %bb.ab ], [ %.sroa.099.3, %bb.ac ], [ %.sroa.099.3, %bb.ad ] ; 4 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.2, %bb.s ], [ %.sroa.9.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.9.3, %bb.ab ], [ %.sroa.9.3, %bb.ac ], [ %.sroa.9.3, %bb.ad ]
  %.sroa.17.1 = phi ptr [ %.sroa.17.2, %bb.s ], [ %.sroa.17.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.17.3, %bb.ab ], [ %.sroa.17.3, %bb.ac ], [ %.sroa.17.3, %bb.ad ] ; 2 uses
  %i.cw = add nuw nsw i32 %.040170, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, %2
  br i1 %exitcond.not, label %.lr.ph, label %bb.d, !llvm.loop !17

.lr.ph174:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr %10, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cz = load ptr, ptr %i.c, align 8
  store ptr %i.cz, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %0, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %1, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.cx, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %i.dd, align 8
  call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %10, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.de = load i64, ptr %1, align 8               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dg = call noundef ptr @_ZNK2v88internal15IdentityMapBase9FindEntryEm(ptr noundef nonnull align 8 dereferenceable(132) %i.df, i64 noundef %i.de) #14
  %i.dh = add i64 %i.de, -1                       ; 2 uses
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.ak

bb.ae:                                            ; preds = %.lr.ph, %bb.ah
  %i.dm = phi ptr [ %.pre183, %.lr.ph ], [ %i.ek, %bb.ah ] ; 2 uses
  %.041171 = phi i32 [ 0, %.lr.ph ], [ %i.el, %bb.ah ] ; 4 uses
  %i.dn = lshr i32 %.041171, 6
  %.zext = zext nneg i32 %i.dn to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.zext
  %i.dp = and i32 %.041171, 63
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = load i64, ptr %i.do, align 8
  %i.dt = and i64 %i.ds, %i.dr
  %.not149 = icmp eq i64 %i.dt, 0
  br i1 %.not149, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.dv = add i64 %i.du, 11
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = load atomic volatile i16, ptr %i.dw monotonic, align 2 ; 2 uses
  %i.dy = icmp eq i16 %i.dx, 1057
  br i1 %i.dy, label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit57, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = add i64 %i.du, 13
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load atomic volatile i8, ptr %i.ea monotonic, align 1
  %i.ec = icmp slt i8 %i.eb, 0
  %i.ed = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.dx, i1 noundef zeroext %i.ec) #14
  br label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit57

_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit57: ; preds = %bb.af, %bb.ag
  %i.ee = phi i32 [ %i.ed, %bb.ag ], [ 24, %bb.af ]
  %i.ef = shl nsw i32 %.041171, 3
  %i.eg = add nsw i32 %i.ee, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = add i64 %i.k, %i.eh
  %i.ej = inttoptr i64 %i.ei to ptr
  store atomic volatile i64 0, ptr %i.ej monotonic, align 8
  %.pre = load ptr, ptr %9, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit57
  %i.ek = phi ptr [ %i.dm, %bb.ae ], [ %.pre, %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit57 ]
  %i.el = add nuw nsw i32 %.041171, 1             ; 2 uses
  %exitcond180.not = icmp eq i32 %i.el, %2
  br i1 %exitcond180.not, label %.lr.ph174, label %bb.ae, !llvm.loop !18

._crit_edge175:                                   ; preds = %bb.au
  %i.em = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.em, null
  br i1 %.not.i.i58, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge175
  %i.en = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 2 uses
  %i.er = ashr exact i64 %i.eq, 3
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.es
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.eq) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit: ; preds = %._crit_edge175, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.eu = ptrtoint ptr %.sroa.17.1 to i64
  %i.ev = ptrtoint ptr %.sroa.099.1 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.1, i64 noundef %i.ew) #15
  %.not.i.i.i60 = icmp eq ptr %.sroa.0110.1, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit
  %i.ex = ptrtoint ptr %.sroa.11.1 to i64
  %i.ey = ptrtoint ptr %.sroa.0110.1 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0110.1, i64 noundef %i.ez) #15
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit, %bb.aj
  call void @_ZN2v88internal19DisallowCompilationD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void

bb.ak:                                            ; preds = %.lr.ph174, %bb.au
  %indvars.iv = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next, %bb.au ] ; 7 uses
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.099.1, i64 %indvars.iv ; 2 uses
  %.sroa.072.0.copyload = load ptr, ptr %i.fa, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.fb = load ptr, ptr %9, align 8
  %i.fc = trunc nuw nsw i64 %indvars.iv to i32
  %i.fd = lshr i64 %indvars.iv, 6
  %.zext148 = and i64 %i.fd, 67108863
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.zext148
  %i.ff = and i64 %indvars.iv, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = load i64, ptr %i.fe, align 8
  %i.fi = and i64 %i.fh, %i.fg
  %.not = icmp eq i64 %i.fi, 0
  br i1 %.not, label %bb.au, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fj = load atomic volatile i64, ptr %i.di monotonic, align 8 ; 2 uses
  %i.fk = add i64 %i.fj, 11
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = load atomic volatile i16, ptr %i.fl monotonic, align 2 ; 2 uses
  %i.fn = icmp eq i16 %i.fm, 1057
  br i1 %i.fn, label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fo = add i64 %i.fj, 13
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = load atomic volatile i8, ptr %i.fp monotonic, align 1
  %i.fr = icmp slt i8 %i.fq, 0
  %i.fs = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.fm, i1 noundef zeroext %i.fr) #14
  %11 = sext i32 %i.fs to i64
  br label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66

_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66: ; preds = %bb.al, %bb.am
  %12 = phi i64 [ %11, %bb.am ], [ 24, %bb.al ]
  %13 = shl nuw nsw i64 %indvars.iv, 3
  %14 = add nsw i64 %12, %13
  %i.ft = add i64 %i.dh, %14
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0110.1, i64 %indvars.iv
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = inttoptr i64 %i.ft to ptr
  store atomic volatile i64 %i.fv, ptr %i.fw monotonic, align 8
  %i.fx = icmp eq i32 %.sroa.5.0.copyload, 0
  br i1 %i.fx, label %bb.au, label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66
  %i.fy = load ptr, ptr %i.dk, align 8            ; 3 uses
  %i.fz = load ptr, ptr %i.dl, align 8
  %.not.i.i67 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not.i.i67, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 0, ptr %i.fy, align 1
  %i.ga = load ptr, ptr %i.dk, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store ptr %i.gb, ptr %i.dk, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

bb.ap:                                            ; preds = %bb.an
  %i.gc = load ptr, ptr %i.dj, align 8            ; 4 uses
  %i.gd = ptrtoint ptr %i.fy to i64
  %i.ge = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 7 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775807
  br i1 %i.gg, label %bb.aq, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ap
  %.sroa.speculated.i.i.i.i68 = call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gh = add i64 %.sroa.speculated.i.i.i.i68, %i.gf ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.gf
  %i.gj = call i64 @llvm.umin.i64(i64 %i.gh, i64 9223372036854775807)
  %i.gk = select i1 %i.gi, i64 9223372036854775807, i64 %i.gj ; 3 uses
  %.not.i.i.i.i69 = icmp ne i64 %i.gk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i69)
  %i.gl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #17 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gf ; 2 uses
  store i8 0, ptr %i.gm, align 1
  %i.gn = icmp sgt i64 %i.gf, 0
  br i1 %i.gn, label %bb.ar, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.ar:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gl, ptr align 1 %i.gc, i64 %i.gf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ar, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %.not.i17.i.i.i70 = icmp eq ptr %i.gc, null
  br i1 %.not.i17.i.i.i70, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.gp = load ptr, ptr %i.dl, align 8
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gr) #15
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.gl, ptr %i.dj, align 8
  store ptr %i.go, ptr %i.dk, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gk
  store ptr %i.gs, ptr %i.dl, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit:  ; preds = %bb.ao, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.gt = load i32, ptr %i.dg, align 4
  %i.gu = lshr i32 %i.gt, 2
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i32 noundef %i.gu, ptr noundef nonnull @.str.6) #14
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i32 noundef %i.fc, ptr noundef nonnull @.str.20) #14
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i32 noundef %.sroa.5.0.copyload, ptr noundef nonnull @.str.21) #14
  call void @_ZN2v88internal16SnapshotByteSink6PutRawEPKhiPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef %.sroa.072.0.copyload, i32 noundef %.sroa.5.0.copyload, ptr noundef nonnull @.str.1) #14
  %i.gv = icmp eq ptr %.sroa.072.0.copyload, null
  br i1 %i.gv, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.072.0.copyload) #15
  br label %bb.au

bb.au:                                            ; preds = %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit, %bb.at, %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66, %bb.ak
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond182.not, label %._crit_edge175, label %bb.ak, !llvm.loop !19
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ContextSerializer25SerializeApiWrapperFieldsENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp eq i64 %i.d, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call { ptr, i32 } %i.f(ptr nonnull %1, ptr noundef %i.i, ptr noundef %i.k) #14 ; 2 uses
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = extractvalue { ptr, i32 } %i.l, 1        ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i64, ptr %1, align 8
  %i.r = tail call noundef ptr @_ZNK2v88internal15IdentityMapBase9FindEntryEm(ptr noundef nonnull align 8 dereferenceable(132) %i.p, i64 noundef %i.q) #14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.u, align 1
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.t, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 7 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775807
  br i1 %i.ad, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ae = add i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 9223372036854775807)
  %i.ah = select i1 %i.af, i64 9223372036854775807, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #17 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac ; 2 uses
  store i8 0, ptr %i.aj, align 1
  %i.ak = icmp sgt i64 %i.ac, 0
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.am = load ptr, ptr %i.v, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ao) #15
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ai, ptr %i.s, align 8
  store ptr %i.al, ptr %i.t, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store ptr %i.ap, ptr %i.v, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit:  ; preds = %bb.d, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.aq = load i32, ptr %i.r, align 4
  %i.ar = lshr i32 %i.aq, 2
  tail call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.ar, ptr noundef nonnull @.str.6) #14
  tail call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.n, ptr noundef nonnull @.str.7) #14
  tail call void @_ZN2v88internal16SnapshotByteSink6PutRawEPKhiPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef %i.m, i32 noundef %i.n, ptr noundef nonnull @.str.8) #14
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit, %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal10JSFunction18SetInterruptBudgetEPNS0_7IsolateENS0_18BudgetModificationESt8optionalINS0_8CodeKindEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef, i16) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10JSFunction18ResetIfCodeFlushedEPNS0_7IsolateESt8optionalISt8functionIFvNS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES8_EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.611", align 8 ; 4 uses
end_hunk_0
