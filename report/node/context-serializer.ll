inline.NumInlined: 1374
inline.NumDeleted: 729
begin_hunk_0_@_ZN2v88internal17ContextSerializer19SerializeObjectImplENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE:bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bo, i64 560 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bo, i64 568
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = icmp eq ptr %i.fs, %i.fu
  br i1 %i.fv, label %bb.ah, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !16

bb.ah:                                            ; preds = %bb.ag
  %i.fw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bo) #14
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.ag, %bb.ah
  %.0.i = phi ptr [ %i.fw, %bb.ah ], [ %i.fs, %bb.ag ] ; 2 uses
  %i.fx = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.fy = add i64 %i.fx, 8
  %i.fz = inttoptr i64 %i.fy to ptr
  store ptr %i.fz, ptr %i.fr, align 8
  store i64 %.sroa.014.0.copyload, ptr %.0.i, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.sroa.09.0.copyload = load ptr, ptr %i.ga, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_ZN2v88internal17ContextSerializer33SerializeObjectWithEmbedderFieldsINS0_17EmbedderDataArrayEPFNS_11StartupDataEibNS_28SerializeContextDataCallbackENS_5LocalINS_7ContextEEEES5_S8_EEvNS0_6HandleIT_EEiT0_T1_T2_(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr nonnull %1, i32 noundef %i.fo, ptr noundef nonnull @_ZN2v88internal27ContextDataSerializeWrapperEibNS_28SerializeContextDataCallbackENS_5LocalINS_7ContextEEE, ptr %.sroa.09.0.copyload, ptr %.sroa.4.0.copyload, i64 %i.fx)
  br label %.thread

.critedge:                                        ; preds = %_ZNSt14_Optional_baseISt8functionIFvN2v88internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES5_EELb0ELb0EED2Ev.exit, %bb.ac, %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.thread, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread, %bb.af, %bb.ae, %bb.ad, %bb.q
  %i.gb = load i64, ptr %1, align 8               ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 8, !range !13, !noundef !14
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.ai, label %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit

bb.ai:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 %i.gb, ptr %3, align 8
  %i.gf = call noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.gf, label %bb.aj, label %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i64 %i.gb, ptr %4, align 8
  %i.gg = call noundef zeroext i1 @_ZNK2v88internal10HeapObject13CanBeRehashedENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %i.gg, label %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.gc, align 8
  br label %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %.critedge, %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr %14, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gi = load ptr, ptr %i.bn, align 8
  store ptr %i.gi, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %0, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %1, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.f, ptr %i.gl, align 8
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
  %9 = alloca %"class.std::vector.660", align 8   ; 12 uses
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

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.040167 = phi i32 [ 0, %bb.c ], [ %i.cw, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 3 uses
  %.sroa.0108.0166 = phi ptr [ null, %bb.c ], [ %.sroa.0108.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 5 uses
  %.sroa.7111.0165 = phi ptr [ null, %bb.c ], [ %.sroa.7111.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 4 uses
  %.sroa.11.0164 = phi ptr [ null, %bb.c ], [ %.sroa.11.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %.sroa.099.0163 = phi ptr [ null, %bb.c ], [ %.sroa.099.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 10 uses
  %.sroa.9.0162 = phi ptr [ null, %bb.c ], [ %.sroa.9.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 10 uses
  %.sroa.17.0161 = phi ptr [ null, %bb.c ], [ %.sroa.17.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 4 uses
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
  %i.x = shl nsw i32 %.040167, 3
  %i.y = add nsw i32 %i.w, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %i.k, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.sroa.7111.0165, %.sroa.11.0164
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit
  store i64 %i.ac, ptr %.sroa.7111.0165, align 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit

bb.g:                                             ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit
  %i.ad = ptrtoint ptr %.sroa.7111.0165 to i64
  %i.ae = ptrtoint ptr %.sroa.0108.0166 to i64
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
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %.sroa.0108.0166, i64 %i.af, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0108.0166, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0166, i64 noundef %i.af) #15
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.sroa.11.1 = phi ptr [ %i.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.11.0164, %bb.f ] ; 2 uses
  %.pn = phi ptr [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.7111.0165, %bb.f ]
  %.sroa.0108.1 = phi ptr [ %i.an, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0108.0166, %bb.f ] ; 5 uses
  %.sroa.7111.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ar = load atomic volatile i64, ptr %i.ab monotonic, align 8 ; 2 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit
  %.not.i.i = icmp eq ptr %.sroa.9.0162, %.sroa.17.0161
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %.sroa.9.0162, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0162, i64 8
  store i32 0, ptr %.sroa.590.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.at = ptrtoint ptr %.sroa.9.0162 to i64
  %i.au = ptrtoint ptr %.sroa.099.0163 to i64
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
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %.sroa.099.0163, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.099.0163, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0163, i64 noundef %i.av) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.l, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.17.2 = phi ptr [ %i.bg, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.0161, %bb.l ] ; 2 uses
  %.pn148 = phi ptr [ %i.be, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.9.0162, %bb.l ]
  %.sroa.099.2 = phi ptr [ %i.bd, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.099.0163, %bb.l ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn148, i64 16 ; 2 uses
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
  %i.bs = call { ptr, i32 } %3(i32 noundef %.040167, i1 noundef zeroext %i.br, ptr %4, ptr %5, ptr %i.a) #14 ; 2 uses
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i32 } %i.bs, 1      ; 3 uses
  %.not.i47 = icmp eq ptr %.sroa.9.0162, %.sroa.17.0161
  br i1 %.not.i47, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.bt, ptr %.sroa.9.0162, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0162, i64 8
  store i32 %i.bu, ptr %.sroa.583.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.bv = ptrtoint ptr %.sroa.9.0162 to i64
  %i.bw = ptrtoint ptr %.sroa.099.0163 to i64
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
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %.sroa.099.0163, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i50 = icmp eq ptr %.sroa.099.0163, null
  br i1 %.not.i17.i.i50, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0163, i64 noundef %i.bx) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cd
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.u, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.17.3 = phi ptr [ %i.ci, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.17.0161, %bb.u ] ; 3 uses
  %.pn147 = phi ptr [ %i.cg, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9.0162, %bb.u ]
  %.sroa.099.3 = phi ptr [ %i.cf, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.099.0163, %bb.u ] ; 3 uses
  %.sroa.9.3 = getelementptr inbounds nuw i8, ptr %.pn147, i64 16 ; 3 uses
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
  %.sroa.17.1 = phi ptr [ %.sroa.17.2, %bb.s ], [ %.sroa.17.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.17.3, %bb.ab ], [ %.sroa.17.3, %bb.ac ], [ %.sroa.17.3, %bb.ad ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.2, %bb.s ], [ %.sroa.9.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.9.3, %bb.ab ], [ %.sroa.9.3, %bb.ac ], [ %.sroa.9.3, %bb.ad ]
  %.sroa.099.1 = phi ptr [ %.sroa.099.2, %bb.s ], [ %.sroa.099.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.099.3, %bb.ab ], [ %.sroa.099.3, %bb.ac ], [ %.sroa.099.3, %bb.ad ] ; 4 uses
  %i.cw = add nuw nsw i32 %.040167, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, %2
  br i1 %exitcond.not, label %.lr.ph.a, label %bb.d, !llvm.loop !17

.lr.ph171:                                        ; preds = %bb.ag
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
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.aj

.lr.ph.a:                                         ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.ag
  %.041168 = phi i32 [ %i.ej, %bb.ag ], [ 0, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 4 uses
  %11 = load ptr, ptr %9, align 8
  %i.dm = lshr i32 %.041168, 6
  %.zext = zext nneg i32 %i.dm to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %.zext
  %i.do = and i32 %.041168, 63
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = load i64, ptr %i.dn, align 8
  %i.ds = and i64 %i.dr, %i.dq
  %.not146 = icmp eq i64 %i.ds, 0
  br i1 %.not146, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.a
  %i.dt = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.du = add i64 %i.dt, 11
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i16, ptr %i.dv monotonic, align 2 ; 2 uses
  %i.dx = icmp eq i16 %i.dw, 1057
  br i1 %i.dx, label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit57, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = add i64 %i.dt, 13
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load atomic volatile i8, ptr %i.dz monotonic, align 1
  %i.eb = icmp slt i8 %i.ea, 0
  %i.ec = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.dw, i1 noundef zeroext %i.eb) #14
  br label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit57

_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit57: ; preds = %bb.ae, %bb.af
  %i.ed = phi i32 [ %i.ec, %bb.af ], [ 24, %bb.ae ]
  %i.ee = shl nsw i32 %.041168, 3
  %i.ef = add nsw i32 %i.ed, %i.ee
  %i.eg = sext i32 %i.ef to i64
  %i.eh = add i64 %i.k, %i.eg
  %i.ei = inttoptr i64 %i.eh to ptr
  store atomic volatile i64 0, ptr %i.ei monotonic, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.a, %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit57
  %i.ej = add nuw nsw i32 %.041168, 1             ; 2 uses
  %exitcond177.not = icmp eq i32 %i.ej, %2
  br i1 %exitcond177.not, label %.lr.ph171, label %.lr.ph.a, !llvm.loop !18

._crit_edge172:                                   ; preds = %bb.at
  %i.ek = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i58, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge172
  %i.el = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 2 uses
  %i.ep = ashr exact i64 %i.eo, 3
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.eq
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eo) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit: ; preds = %._crit_edge172, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.es = ptrtoint ptr %.sroa.17.1 to i64
  %i.et = ptrtoint ptr %.sroa.099.1 to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.1, i64 noundef %i.eu) #15
  %.not.i.i.i60 = icmp eq ptr %.sroa.0108.1, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit
  %i.ev = ptrtoint ptr %.sroa.11.1 to i64
  %i.ew = ptrtoint ptr %.sroa.0108.1 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.1, i64 noundef %i.ex) #15
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit, %bb.ai
  call void @_ZN2v88internal19DisallowCompilationD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void

bb.aj:                                            ; preds = %.lr.ph171, %bb.at
  %indvars.iv = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next, %bb.at ] ; 7 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %.sroa.099.1, i64 %indvars.iv ; 2 uses
  %.sroa.072.0.copyload = load ptr, ptr %i.ey, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.ez = load ptr, ptr %9, align 8
  %i.fa = trunc nuw nsw i64 %indvars.iv to i32
  %i.fb = lshr i64 %indvars.iv, 6
  %.zext145 = and i64 %i.fb, 67108863
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.zext145
  %i.fd = and i64 %indvars.iv, 63
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = load i64, ptr %i.fc, align 8
  %i.fg = and i64 %i.ff, %i.fe
  %.not = icmp eq i64 %i.fg, 0
  br i1 %.not, label %bb.at, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = load atomic volatile i64, ptr %i.di monotonic, align 8 ; 2 uses
  %i.fi = add i64 %i.fh, 11
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load atomic volatile i16, ptr %i.fj monotonic, align 2 ; 2 uses
  %i.fl = icmp eq i16 %i.fk, 1057
  br i1 %i.fl, label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = add i64 %i.fh, 13
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load atomic volatile i8, ptr %i.fn monotonic, align 1
  %i.fp = icmp slt i8 %i.fo, 0
  %i.fq = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.fk, i1 noundef zeroext %i.fp) #14
  %i.fr = sext i32 %i.fq to i64
  br label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66

_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66: ; preds = %bb.ak, %bb.al
  %i.fs = phi i64 [ %i.fr, %bb.al ], [ 24, %bb.ak ]
  %i.ft = shl nsw i64 %indvars.iv, 3
  %i.fu = add nsw i64 %i.fs, %i.ft
  %i.fv = add i64 %i.dh, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.1, i64 %indvars.iv
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = inttoptr i64 %i.fv to ptr
  store atomic volatile i64 %i.fx, ptr %i.fy monotonic, align 8
  %i.fz = icmp eq i32 %.sroa.5.0.copyload, 0
  br i1 %i.fz, label %bb.at, label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66
  %i.ga = load ptr, ptr %i.dk, align 8            ; 3 uses
  %i.gb = load ptr, ptr %i.dl, align 8
  %.not.i.i67 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not.i.i67, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %i.ga, align 1
  %i.gc = load ptr, ptr %i.dk, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  store ptr %i.gd, ptr %i.dk, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

bb.ao:                                            ; preds = %bb.am
  %i.ge = load ptr, ptr %i.dj, align 8            ; 4 uses
  %i.gf = ptrtoint ptr %i.ga to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 8 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775807
  br i1 %i.gi, label %bb.ap, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %.sroa.speculated.i.i.i.i68 = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gj = add i64 %.sroa.speculated.i.i.i.i68, %i.gh ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.gh
  %i.gl = call i64 @llvm.umin.i64(i64 %i.gj, i64 9223372036854775807)
  %i.gm = select i1 %i.gk, i64 9223372036854775807, i64 %i.gl ; 3 uses
  %.not.i.i.i.i69 = icmp ne i64 %i.gm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i69)
  %i.gn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #17 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gh ; 2 uses
  store i8 0, ptr %i.go, align 1
  %i.gp = icmp sgt i64 %i.gh, 0
  br i1 %i.gp, label %bb.aq, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.aq:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr align 1 %i.ge, i64 %i.gh, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aq, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %.not.i17.i.i.i70 = icmp eq ptr %i.ge, null
  br i1 %.not.i17.i.i.i70, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gh) #15
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.ar, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.gn, ptr %i.dj, align 8
  store ptr %i.gq, ptr %i.dk, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm
  store ptr %i.gr, ptr %i.dl, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit:  ; preds = %bb.an, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.gs = load i32, ptr %i.dg, align 4
  %i.gt = lshr i32 %i.gs, 2
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i32 noundef %i.gt, ptr noundef nonnull @.str.6) #14
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i32 noundef %i.fa, ptr noundef nonnull @.str.20) #14
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i32 noundef %.sroa.5.0.copyload, ptr noundef nonnull @.str.21) #14
  call void @_ZN2v88internal16SnapshotByteSink6PutRawEPKhiPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef %.sroa.072.0.copyload, i32 noundef %.sroa.5.0.copyload, ptr noundef nonnull @.str.1) #14
  %i.gu = icmp eq ptr %.sroa.072.0.copyload, null
  br i1 %i.gu, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.072.0.copyload) #15
  br label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit, %bb.as, %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit66, %bb.aj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond179.not, label %._crit_edge172, label %bb.aj, !llvm.loop !19
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
end_hunk_0
begin_hunk_1_@_ZNK2v88internal10JSFunction11is_compiledENS0_17IsolateForSandboxE:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18SharedFunctionInfo17FlushBaselineCodeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = add i64 %i.c, 51
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i32, ptr %i.e monotonic, align 4
  %i.g = and i32 %i.f, 15
  %i.h = icmp eq i32 %i.g, 10
  br i1 %i.h, label %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14) #16
  unreachable

_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit: ; preds = %bb.a
  %i.i = add i64 %i.c, 7
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 5 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 8
  %i.l = add i64 %.sroa.01.0.copyload.i.i, 7
  %i.m = inttoptr i64 %i.l to ptr
  store atomic volatile i64 %i.k, ptr %i.m release, align 8
  %.sroa.05.0.copyload.i = load i64, ptr %0, align 8
  %i.n = add i64 %.sroa.05.0.copyload.i, 15
  %i.o = inttoptr i64 %i.n to ptr
  store atomic volatile i64 -4294967296, ptr %i.o release, align 8
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.p = add i64 %.sroa.02.0.copyload.i, 7        ; 2 uses
  %i.q = trunc i64 %i.k to i1
  br i1 %i.q, label %bb.c, label %_ZN2v88internal18SharedFunctionInfo14SetTrustedDataENS0_6TaggedINS0_20ExposedTrustedObjectEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit
  %i.r = and i64 %.sroa.02.0.copyload.i, -262144
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 262144         ; 2 uses
  %i.u = and i64 %i.t, 32
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = and i64 %i.t, 25
  %.not38.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not38.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = and i64 %i.k, -262144
  %i.x = inttoptr i64 %i.w to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.x, align 262144
  %i.y = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not39.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i, i64 noundef %i.p, i64 %i.k) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN2v88internal18SharedFunctionInfo14SetTrustedDataENS0_6TaggedINS0_20ExposedTrustedObjectEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i, i64 %i.p, i64 %i.k) #14
  br label %_ZN2v88internal18SharedFunctionInfo14SetTrustedDataENS0_6TaggedINS0_20ExposedTrustedObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal18SharedFunctionInfo14SetTrustedDataENS0_6TaggedINS0_20ExposedTrustedObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit, %bb.f, %bb.g
  ret void
}

declare i64 @_ZNK2v88internal18SharedFunctionInfo7GetCodeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10688
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i32, ptr %i.e monotonic, align 4
  %i.g = lshr i32 %i.f, 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = icmp ugt i64 %i.k, -281474976710657
  br i1 %i.l, label %bb.b, label %_ZN2v88internal15JSDispatchTable7GetCodeENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #16
  unreachable

_ZN2v88internal15JSDispatchTable7GetCodeENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, 1
  ret i64 %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10JSFunction10UpdateCodeEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = add i64 %2, 51
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 15
  %i.f = add nsw i8 %i.e, -11
  %i.g = icmp ult i8 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8                ; 3 uses
  %i.i = add i64 %i.h, 23
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load atomic volatile i32, ptr %i.j monotonic, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %i.h, 47
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 15
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  store atomic volatile i32 %i.r, ptr %i.j monotonic, align 4
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i64 %.sroa.01.0.copyload.i.i, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 262144
  %i.w = and i64 %i.v, 32
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE(i64 %.sroa.01.0.copyload.i.i, i32 %i.r) #14
  %.pre = load i64, ptr %0, align 8
  br label %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = phi i64 [ %.pre, %bb.f ], [ %.sroa.01.0.copyload.i.i, %bb.e ], [ %.sroa.01.0.copyload.i.i, %bb.d ], [ %i.h, %bb.c ]
  %i.y = add i64 %i.x, 23
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10688
  %i.ad = add i64 %2, 39
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  tail call void @_ZN2v88internal15JSDispatchTable34SetCodeAndEntrypointNoWriteBarrierENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_6TaggedINS0_4CodeEEEm(ptr noundef nonnull align 8 dereferenceable(44) %i.ac, i32 %i.aa, i64 %2, i64 noundef %i.af)
  %.sroa.01.0.copyload.i11.i = load i64, ptr %0, align 8 ; 2 uses
  %i.ag = icmp eq i32 %3, 0
  br i1 %i.ag, label %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i
  %i.ah = and i64 %.sroa.01.0.copyload.i11.i, -262144
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 262144
  %i.ak = and i64 %i.aj, 32
  %.not.i.i.i12.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i12.i, label %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE(i64 %.sroa.01.0.copyload.i11.i, i32 %i.aa) #14
  br label %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.h, %bb.g, %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1842), align 2, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %_ZN2v88internal10JSFunction14UpdateCodeImplEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeEb.exit, !prof !16

bb.i:                                             ; preds = %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i
  %i.an = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10688
  %i.ap = load i64, ptr %0, align 8
  %i.aq = add i64 %i.ap, 23
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  tail call void @_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(44) %i.ao, i32 %i.as, i32 noundef 111, ptr noundef %1)
  br label %_ZN2v88internal10JSFunction14UpdateCodeImplEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeEb.exit

_ZN2v88internal10JSFunction14UpdateCodeImplEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeEb.exit: ; preds = %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17ContextSerializer33SerializeObjectWithEmbedderFieldsINS0_17EmbedderDataArrayEPFNS_11StartupDataEibNS_28SerializeContextDataCallbackENS_5LocalINS_7ContextEEEES5_S8_EEvNS0_6HandleIT_EEiT0_T1_T2_(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr %1, i32 noundef %2, ptr noundef %3, ptr %4, ptr %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::DisallowCompilation", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.660", align 8   ; 12 uses
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
  %i.f = load i64, ptr %1, align 8                ; 2 uses
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
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %invariant.op = add i64 %i.f, 15
  br label %bb.d

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %invariant.op187 = add i64 %i.f, 15
  br label %bb.ad

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 3 uses
  %.sroa.0104.0150 = phi ptr [ null, %bb.c ], [ %.sroa.0104.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 5 uses
  %.sroa.7107.0149 = phi ptr [ null, %bb.c ], [ %.sroa.7107.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 4 uses
  %.sroa.11.0148 = phi ptr [ null, %bb.c ], [ %.sroa.11.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %.sroa.095.0147 = phi ptr [ null, %bb.c ], [ %.sroa.095.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 10 uses
  %.sroa.9.0146 = phi ptr [ null, %bb.c ], [ %.sroa.9.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 10 uses
  %.sroa.17.0145 = phi ptr [ null, %bb.c ], [ %.sroa.17.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 4 uses
  %i.k = shl nsw i64 %indvars.iv, 3
  %.reass = add i64 %i.k, %invariant.op
  %i.l = inttoptr i64 %.reass to ptr              ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %.sroa.7107.0149, %.sroa.11.0148
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.m, ptr %.sroa.7107.0149, align 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %.sroa.7107.0149 to i64
  %i.o = ptrtoint ptr %.sroa.0104.0150 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.g, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store i64 %i.m, ptr %i.y, align 8
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %.sroa.0104.0150, i64 %i.p, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0104.0150, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0150, i64 noundef %i.p) #15
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.sroa.11.1 = phi ptr [ %i.aa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.11.0148, %bb.e ] ; 2 uses
  %.pn = phi ptr [ %i.y, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.7107.0149, %bb.e ]
  %.sroa.0104.1 = phi ptr [ %i.x, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0104.0150, %bb.e ] ; 5 uses
  %.sroa.7107.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ab = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.s

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit
  %.not.i.i = icmp eq ptr %.sroa.9.0146, %.sroa.17.0145
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %.sroa.9.0146, align 8
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0146, i64 8
  store i32 0, ptr %.sroa.586.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = ptrtoint ptr %.sroa.9.0146 to i64
  %i.ae = ptrtoint ptr %.sroa.095.0147 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %bb.m, label %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 3 uses
  store ptr null, ptr %i.ao, align 8
  %.sroa.586.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 0, ptr %.sroa.586.0..sroa_idx87, align 8
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.n, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %.sroa.095.0147, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.095.0147, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0147, i64 noundef %i.af) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.k, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.17.2 = phi ptr [ %i.aq, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.0145, %bb.k ] ; 2 uses
  %.pn132 = phi ptr [ %i.ao, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.9.0146, %bb.k ]
  %.sroa.095.2 = phi ptr [ %i.an, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.095.0147, %bb.k ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn132, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.as = load ptr, ptr %i.j, align 8
  %.not.i46 = icmp eq ptr %i.ar, %i.as
  %.sroa.2.0.copyload.i11.i = load i32, ptr %i.i, align 8 ; 4 uses
  br i1 %.not.i46, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit
  %i.at = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.at, ptr %i.i, align 8
  %i.au = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.au, label %bb.q, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.h, align 8
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.q, %bb.p
  %i.aw = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = xor i64 %i.ax, -1
  %i.az = load i64, ptr %i.ar, align 8
  %i.ba = and i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.ar, align 8
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.r:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr %i.ar, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit
  %i.bb = icmp eq i64 %i.ab, 0
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = call { ptr, i32 } %3(i32 noundef %i.bc, i1 noundef zeroext %i.bb, ptr %4, ptr %5, ptr %i.a) #14 ; 2 uses
  %i.be = extractvalue { ptr, i32 } %i.bd, 0      ; 2 uses
  %i.bf = extractvalue { ptr, i32 } %i.bd, 1      ; 3 uses
  %.not.i47 = icmp eq ptr %.sroa.9.0146, %.sroa.17.0145
  br i1 %.not.i47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.be, ptr %.sroa.9.0146, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0146, i64 8
  store i32 %i.bf, ptr %.sroa.579.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit

bb.u:                                             ; preds = %bb.s
  %i.bg = ptrtoint ptr %.sroa.9.0146 to i64
  %i.bh = ptrtoint ptr %.sroa.095.0147 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 6 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775792
  br i1 %i.bj, label %bb.v, label %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.bk = ashr exact i64 %i.bi, 4                 ; 3 uses
  %.sroa.speculated.i.i.i48 = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i48, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 576460752303423487)
  %i.bo = select i1 %i.bm, i64 576460752303423487, i64 %i.bn ; 3 uses
  %.not.i.i.i49 = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i49)
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #17 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 3 uses
  store ptr %i.be, ptr %i.br, align 8
  %.sroa.579.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bf, ptr %.sroa.579.0..sroa_idx80, align 8
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.w, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %.sroa.095.0147, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.w, %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i50 = icmp eq ptr %.sroa.095.0147, null
  br i1 %.not.i17.i.i50, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0147, i64 noundef %i.bi) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bo
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.t, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.17.3 = phi ptr [ %i.bt, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.17.0145, %bb.t ] ; 3 uses
  %.pn131 = phi ptr [ %i.br, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9.0146, %bb.t ]
  %.sroa.095.3 = phi ptr [ %i.bq, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.095.0147, %bb.t ] ; 3 uses
  %.sroa.9.3 = getelementptr inbounds nuw i8, ptr %.pn131, i64 16 ; 3 uses
  %i.bu = icmp ne i32 %i.bf, 0                    ; 2 uses
  %i.bv = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %.not.i51 = icmp eq ptr %i.bv, %i.bw
  %.sroa.2.0.copyload.i11.i53 = load i32, ptr %i.i, align 8 ; 4 uses
  br i1 %.not.i51, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit
  %i.bx = add i32 %.sroa.2.0.copyload.i11.i53, 1
  store i32 %i.bx, ptr %i.i, align 8
  %i.by = icmp eq i32 %.sroa.2.0.copyload.i11.i53, 63
  br i1 %i.by, label %bb.z, label %_ZNSt13_Bit_iteratorppEi.exit.i54

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bz, ptr %i.h, align 8
  br label %_ZNSt13_Bit_iteratorppEi.exit.i54

_ZNSt13_Bit_iteratorppEi.exit.i54:                ; preds = %bb.z, %bb.y
  %i.ca = zext nneg i32 %.sroa.2.0.copyload.i11.i53 to i64
  %i.cb = shl nuw i64 1, %i.ca                    ; 2 uses
  br i1 %i.bu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i54
  %i.cc = load i64, ptr %i.bv, align 8
  %i.cd = or i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.bv, align 8
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ab:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i54
  %i.ce = xor i64 %i.cb, -1
  %i.cf = load i64, ptr %i.bv, align 8
  %i.cg = and i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.bv, align 8
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ac:                                            ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr %i.bv, i32 %.sroa.2.0.copyload.i11.i53, i1 noundef zeroext %i.bu)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.r, %_ZNSt13_Bit_iteratorppEi.exit.i
  %.sroa.17.1 = phi ptr [ %.sroa.17.2, %bb.r ], [ %.sroa.17.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.17.3, %bb.aa ], [ %.sroa.17.3, %bb.ab ], [ %.sroa.17.3, %bb.ac ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.2, %bb.r ], [ %.sroa.9.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.9.3, %bb.aa ], [ %.sroa.9.3, %bb.ab ], [ %.sroa.9.3, %bb.ac ]
  %.sroa.095.1 = phi ptr [ %.sroa.095.2, %bb.r ], [ %.sroa.095.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.095.3, %bb.aa ], [ %.sroa.095.3, %bb.ab ], [ %.sroa.095.3, %bb.ac ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph, label %bb.d, !llvm.loop !21

.lr.ph155:                                        ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr %10, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cj = load ptr, ptr %i.c, align 8
  store ptr %i.cj, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %0, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.ch, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %i.cn, align 8
  call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %10, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.co = load i64, ptr %1, align 8               ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cq = call noundef ptr @_ZNK2v88internal15IdentityMapBase9FindEntryEm(ptr noundef nonnull align 8 dereferenceable(132) %i.cp, i64 noundef %i.co) #14
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %wide.trip.count170 = zext nneg i32 %2 to i64
  %invariant.op189 = add i64 %i.co, 15
  br label %bb.ai

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv162 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next163, %bb.af ] ; 4 uses
  %11 = load ptr, ptr %9, align 8
  %i.cu = lshr i64 %indvars.iv162, 6
  %.zext = and i64 %i.cu, 67108863
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %.zext
  %i.cw = and i64 %indvars.iv162, 63
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = load i64, ptr %i.cv, align 8
  %i.cz = and i64 %i.cy, %i.cx
  %.not130 = icmp eq i64 %i.cz, 0
  br i1 %.not130, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = shl nsw i64 %indvars.iv162, 3
  %.reass188 = add i64 %i.da, %invariant.op187
  %i.db = inttoptr i64 %.reass188 to ptr
  store atomic volatile i64 0, ptr %i.db monotonic, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count
  br i1 %exitcond166.not, label %.lr.ph155, label %bb.ad, !llvm.loop !22

._crit_edge156:                                   ; preds = %bb.ar
  %i.dc = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i56, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge156
  %i.dd = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.di
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dg) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit: ; preds = %._crit_edge156, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.dk = ptrtoint ptr %.sroa.17.1 to i64
  %i.dl = ptrtoint ptr %.sroa.095.1 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.1, i64 noundef %i.dm) #15
  %.not.i.i.i58 = icmp eq ptr %.sroa.0104.1, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit
  %i.dn = ptrtoint ptr %.sroa.11.1 to i64
  %i.do = ptrtoint ptr %.sroa.0104.1 to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.1, i64 noundef %i.dp) #15
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit, %bb.ah
  call void @_ZN2v88internal19DisallowCompilationD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void

bb.ai:                                            ; preds = %.lr.ph155, %bb.ar
  %indvars.iv167 = phi i64 [ 0, %.lr.ph155 ], [ %indvars.iv.next168, %bb.ar ] ; 7 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.1, i64 %indvars.iv167 ; 2 uses
  %.sroa.068.0.copyload = load ptr, ptr %i.dq, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.dr = load ptr, ptr %9, align 8
  %i.ds = trunc nuw nsw i64 %indvars.iv167 to i32
  %i.dt = lshr i64 %indvars.iv167, 6
  %.zext129 = and i64 %i.dt, 67108863
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.zext129
  %i.dv = and i64 %indvars.iv167, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = load i64, ptr %i.du, align 8
  %i.dy = and i64 %i.dx, %i.dw
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = shl nsw i64 %indvars.iv167, 3
  %.reass190 = add i64 %i.dz, %invariant.op189
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0104.1, i64 %indvars.iv167
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = inttoptr i64 %.reass190 to ptr
  store atomic volatile i64 %i.eb, ptr %i.ec monotonic, align 8
  %i.ed = icmp eq i32 %.sroa.5.0.copyload, 0
  br i1 %i.ed, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = load ptr, ptr %i.cs, align 8            ; 3 uses
  %i.ef = load ptr, ptr %i.ct, align 8
  %.not.i.i63 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i63, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.ee, align 1
  %i.eg = load ptr, ptr %i.cs, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store ptr %i.eh, ptr %i.cs, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

bb.am:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %i.cr, align 8            ; 4 uses
  %i.ej = ptrtoint ptr %i.ee to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 8 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775807
  br i1 %i.em, label %bb.an, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %.sroa.speculated.i.i.i.i64 = call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.en = add i64 %.sroa.speculated.i.i.i.i64, %i.el ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.el
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 9223372036854775807)
  %i.eq = select i1 %i.eo, i64 9223372036854775807, i64 %i.ep ; 3 uses
  %.not.i.i.i.i65 = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i65)
  %i.er = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #17 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.el ; 2 uses
  store i8 0, ptr %i.es, align 1
  %i.et = icmp sgt i64 %i.el, 0
  br i1 %i.et, label %bb.ao, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.ao:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.er, ptr align 1 %i.ei, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ao, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %.not.i17.i.i.i66 = icmp eq ptr %i.ei, null
  br i1 %.not.i17.i.i.i66, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.el) #15
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.er, ptr %i.cr, align 8
  store ptr %i.eu, ptr %i.cs, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store ptr %i.ev, ptr %i.ct, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit:  ; preds = %bb.al, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.ew = load i32, ptr %i.cq, align 4
  %i.ex = lshr i32 %i.ew, 2
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i32 noundef %i.ex, ptr noundef nonnull @.str.6) #14
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i32 noundef %i.ds, ptr noundef nonnull @.str.20) #14
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i32 noundef %.sroa.5.0.copyload, ptr noundef nonnull @.str.21) #14
  call void @_ZN2v88internal16SnapshotByteSink6PutRawEPKhiPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef %.sroa.068.0.copyload, i32 noundef %.sroa.5.0.copyload, ptr noundef nonnull @.str.1) #14
  %i.ey = icmp eq ptr %.sroa.068.0.copyload, null
  br i1 %i.ey, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.068.0.copyload) #15
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit, %bb.aq, %bb.aj, %bb.ai
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge156, label %bb.ai, !llvm.loop !23
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(720) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.60", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.60", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 %1, ptr %2, align 8
  %i.d = call noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 %1, ptr %3, align 8
  %i.e = call noundef zeroext i1 @_ZNK2v88internal10HeapObject13CanBeRehashedENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret void
}

declare void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17ContextSerializer30ShouldBeInTheSharedObjectCacheENS0_6TaggedINS0_10HeapObjectEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(720) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = and i16 %i.f, -96
  %i.h = icmp eq i16 %i.g, 0
  ret i1 %i.h
}

declare void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) local_unnamed_addr #2

end_hunk_1
