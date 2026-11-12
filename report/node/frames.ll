Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/frames?download=true
inline.NumInlined: 3392
inline.NumDeleted: 1471
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2v88internal20ApiCallbackExitFrame5PrintEPNS0_12StringStreamENS0_10StackFrame9PrintModeEi:bb.a
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = and i64 %i.y, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.13, i64 3, ptr null, i64 0) #25
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ab = shl nuw nsw i64 %indvars.iv, 3
  %i.ac = add nuw nsw i64 %i.ab, 72
  %i.ad = load i64, ptr %i.b, align 8
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i64 %i.ag, ptr %4, align 8
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.10, i64 3, ptr nonnull %4, i64 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !314
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal20ApiAccessorExitFrame5PrintEPNS0_12StringStreamENS0_10StackFrame9PrintModeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 !guid !316 {
bb.a:
  %4 = alloca [3 x %"class.v8::internal::StringStream::FmtElm"], align 16 ; 6 uses
  %5 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %i.a = icmp eq i32 %2, 0                        ; 2 uses
  %i.b = select i1 %i.a, ptr @.str.61, ptr @.str.62
  %i.c = select i1 %i.a, i64 5, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 %3, ptr %5, align 8
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %i.b, i64 %i.c, ptr nonnull %5, i64 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.14, i64 25, ptr null, i64 0) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = add i64 %i.e, 16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.e, 72
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.e, 32
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i64 %i.k, ptr %4, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.h, ptr %i.p, align 16
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.15, i64 30, ptr nonnull %4, i64 3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK2v88internal11CommonFrame20GetExpressionAddressEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #6 align 2 !guid !317 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = shl nsw i32 %1, 3
  %i.d = sext i32 %i.c to i64
  %reass.sub = sub i64 %i.b, %i.d
  %i.e = add i64 %reass.sub, -32
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK2v88internal18UnoptimizedJSFrame20GetExpressionAddressEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #6 align 2 !guid !318 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = shl nsw i32 %1, 3
  %i.d = sext i32 %i.c to i64
  %reass.sub = sub i64 %i.b, %i.d
  %i.e = add i64 %reass.sub, -56
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal11CommonFrame7contextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #7 align 2 !guid !319 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal11CommonFrame8positionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 align 2 !guid !320 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.523", align 8 ; 4 uses
  %i.a = tail call { i64, i32 } @_ZNK2v88internal10StackFrame25GcSafeLookupCodeAndOffsetEv(ptr noundef nonnull readonly align 8 dereferenceable(80) %0) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.a, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.a, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 %.fca.0.extract, ptr %1, align 8
  %i.b = call noundef i32 @_ZNK2v88internal4Code14SourcePositionEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.fca.1.extract) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret i32 %i.b
}

declare noundef i32 @_ZNK2v88internal4Code14SourcePositionEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal11CommonFrame23ComputeExpressionsCountEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 !guid !321 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %.neg2 = add i64 %i.d, 8
  %i.g = sub i64 %.neg2, %i.f
  %i.h = lshr i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal11CommonFrame18ComputeCallerStateEPNS0_10StackFrame5StateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %1) unnamed_addr #0 align 2 !guid !322 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(80) %0) #25, !inline_history !11
  store i64 %i.j, ptr %1, align 8
  %i.k = load i64, ptr %i.a, align 8
  %i.l = add i64 %i.k, 8                          ; 2 uses
  %i.m = load ptr, ptr @_ZN2v88internal10StackFrame33return_address_location_resolver_E, align 8 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2v88internal10StackFrame28ResolveReturnAddressLocationEPm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef i64 %i.m(i64 noundef %i.l) #25, !inline_history !8
  br label %_ZN2v88internal10StackFrame28ResolveReturnAddressLocationEPm.exit

_ZN2v88internal10StackFrame28ResolveReturnAddressLocationEPm.exit: ; preds = %bb.b, %bb.c
  %.0.i.in = phi i64 [ %i.o, %bb.c ], [ %i.l, %bb.b ]
  %.0.i = inttoptr i64 %.0.i.in to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.0.i, ptr %i.p, align 8
  %i.q = load i64, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.q, ptr %i.r, align 8
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.in.i = load ptr, ptr %.0.in.in.i, align 8
  %.0.i8 = load i64, ptr %.0.in.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.0.i8, ptr %i.s, align 8
  %i.t = load i64, ptr %i.a, align 8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.u, ptr %i.v, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal10StackFrame28ResolveReturnAddressLocationEPm.exit
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZNK2v88internal11CommonFrame9SummarizeEv(ptr dead_on_unwind noalias nofree readnone sret(%"struct.v8::internal::FrameSummaries") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #12 align 2 !guid !323 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal9WasmFrame7IterateEPNS0_11RootVisitorE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 align 2 !guid !324 {
bb.a:
  %2 = alloca %"struct.std::pair.524", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = tail call noundef ptr @_ZN2v88internal4wasm18GetWasmCodeManagerEv() #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.in.i = load ptr, ptr %.0.in.in.i, align 8
  %.0.i = load i64, ptr %.0.in.i, align 8
  call void @_ZN2v88internal4wasm15WasmCodeManager22LookupCodeAndSafepointEPNS0_7IsolateEm(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.524") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %i.c, i64 noundef %.0.i) #25
  %i.d = load ptr, ptr %2, align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.042.0.copyload = load i32, ptr %i.e, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.443.0.copyload = load ptr, ptr %.sroa.443.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = and i8 %i.g, -104
  %i.i = icmp eq i8 %i.h, -120                    ; 2 uses
  %.0.neg50 = select i1 %i.i, i32 -24, i32 -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.k = load i32, ptr %i.j, align 8
  %i.l = shl nsw i32 %i.k, 3
  %.neg = add i32 %i.l, -16
  %i.m = add i32 %.neg, %.0.neg50                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %.neg51 = select i1 %i.i, i64 -24, i64 -16
  %i.p = add i64 %.neg51, %i.o                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %.sroa.035.0.copyload = load i64, ptr %i.u, align 8 ; 2 uses
  %i.v = icmp ne i64 %.sroa.035.0.copyload, 0
  %i.w = icmp eq i64 %.sroa.035.0.copyload, %i.o
  %or.cond49 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond49, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.pre = sext i32 %i.m to i64
  %.pre52 = sub i64 %i.p, %.pre
  br label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.x = sext i32 %i.m to i64
  %i.y = sub i64 %i.p, %i.x                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.thread
  %.pre-phi53 = phi i64 [ %.pre52, %._crit_edge ], [ %i.y, %.thread ]
  %i.z = phi i64 [ %.sroa.6.0.copyload, %._crit_edge ], [ %i.y, %.thread ]
  %i.aa = and i8 %i.g, 7                          ; 2 uses
  %.not28 = icmp eq i8 %i.aa, 0
  br i1 %.not28, label %.thread46, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp ne i8 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %or.cond = and i1 %i.ab, %i.ae
  br i1 %or.cond, label %bb.e, label %.thread46

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 18, ptr noundef null, i64 %i.ad, i64 %i.z) #25
  br label %.thread46

.thread46:                                        ; preds = %bb.c, %bb.e, %bb.d
  %.not = icmp eq i32 %.sroa.042.0.copyload, 0
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit, label %bb.f

bb.f:                                             ; preds = %.thread46
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.443.0.copyload, i64 %.sroa.5.0.copyload
  %.not6.i = icmp samesign eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not6.i, label %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit, label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %bb.f, %._crit_edge.i
  %.08.i = phi ptr [ %i.av, %._crit_edge.i ], [ %.sroa.443.0.copyload, %bb.f ] ; 2 uses
  %.sroa.0.07.i = phi i64 [ %i.au, %._crit_edge.i ], [ %.pre-phi53, %bb.f ] ; 2 uses
  %i.aj = load i8, ptr %.08.i, align 1            ; 2 uses
  %.not154.i = icmp eq i8 %i.aj, 0
  br i1 %.not154.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph10.i, %.lr.ph.i
  %.0145.i = phi i8 [ %i.an, %.lr.ph.i ], [ %i.aj, %.lr.ph10.i ] ; 2 uses
  %i.ak = call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %.0145.i, i1 true) ; 2 uses
  %i.al = shl nuw i8 1, %i.ak
  %i.am = xor i8 %i.al, -1
  %i.an = and i8 %.0145.i, %i.am                  ; 2 uses
  %i.ao = shl nuw nsw i8 %i.ak, 3
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = add i64 %.sroa.0.07.i, %i.ap
  %i.ar = load ptr, ptr %1, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 18, ptr noundef null, i64 %i.aq) #25, !inline_history !14
  %.not15.i = icmp eq i8 %i.an, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph10.i
  %i.au = add i64 %.sroa.0.07.i, 64
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit, label %.lr.ph10.i

_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit: ; preds = %._crit_edge.i, %bb.f, %.thread46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, 65535
  %.not29 = icmp eq i32 %i.ay, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(80) %0) #25, !inline_history !11
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 74
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %i.bd = add i64 %6, %i.bc                       ; 2 uses
  %7 = load i32, ptr %i.aw, align 8
  %i.be = shl i32 %7, 3
  %i.bf = and i32 %i.be, 524280
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = add i64 %i.bd, %i.bg
  %i.bi = load ptr, ptr %1, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 18, ptr noundef null, i64 %i.bd, i64 %i.bh) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit
  %i.bl = load ptr, ptr %1, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 18, ptr noundef null, i64 %i.p, i64 %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

declare void @_ZN2v88internal4wasm15WasmCodeManager22LookupCodeAndSafepointEPNS0_7IsolateEm(ptr dead_on_unwind writable sret(%"struct.std::pair.524") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal10TypedFrame37IterateParamsOfGenericWasmToJSWrapperEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !325 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::LinkageLocationAllocator", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  %or.cond = icmp ult i64 %i.f, 2
  br i1 %or.cond, label %bb.f, label %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit

_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit: ; preds = %bb.a
  %i.g = inttoptr i64 %i.e to ptr                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 6, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN2v88internal4wasmL17kGpParamRegistersE, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 6, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN2v88internal4wasmL17kFpParamRegistersE, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.n, align 8
  store i32 1, ptr %i.h, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.idx = shl nuw nsw i64 %i.t, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not79 = icmp eq i64 %i.t, 0
  br i1 %.not79, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread
  %i.v = call noundef i32 @_ZN2v88internal20AlignedSlotAllocator17AllocateUnalignedEi(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i32 noundef 0) #25 ; 0 uses
  br i1 %.144, label %bb.c, label %.loopexit77

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread
  %.04381 = phi i1 [ %.144, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread ], [ false, %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit ]
  %.04580 = phi ptr [ %i.aj, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread ], [ %i.r, %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit ] ; 2 uses
  %i.w = load i32, ptr %.04580, align 4           ; 3 uses
  %i.x = and i32 %i.w, 3
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.z = trunc i32 %i.w to i1
  br i1 %i.z, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit: ; preds = %bb.b
  %i.aa = lshr i32 %i.w, 8
  %i.ab = add nuw nsw i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @__const._ZNK2v88internal4wasm13ValueTypeBase12machine_typeEv.kMachineType, i64 %i.ad
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ae, align 2
  %i.af = trunc i16 %.sroa.0.0.copyload.i.i to i8 ; 2 uses
  %i.ag = add i8 %i.af, -6
  %i.ah = icmp ult i8 %i.ag, 4
  br i1 %i.ah, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70: ; preds = %.lr.ph, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit
  %.sroa.0.0.i.i72 = phi i8 [ %i.af, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit ], [ 0, %.lr.ph ]
  %i.ai = call i64 @_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(52) %2, i8 noundef zeroext %.sroa.0.0.i.i72) ; 0 uses
  br label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread: ; preds = %bb.b, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70
  %.144 = phi i1 [ %.04381, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70 ], [ true, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit ], [ true, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.04580, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.u
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr %i.o, align 8
  %i.al = load i64, ptr %i.g, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.s, align 8             ; 2 uses
  %.idx87 = shl nuw nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx87
  %.not5083 = icmp eq i64 %i.an, 0
  br i1 %.not5083, label %.loopexit77, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.c, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75
  %.04884 = phi ptr [ %i.bs, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75 ], [ %i.am, %bb.c ] ; 2 uses
  %i.ap = load i32, ptr %.04884, align 4          ; 3 uses
  %i.aq = and i32 %i.ap, 3
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75, label %bb.d

bb.d:                                             ; preds = %.lr.ph86
  %i.as = trunc i32 %i.ap to i1
  br i1 %i.as, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55: ; preds = %bb.d
  %i.at = lshr i32 %i.ap, 8
  %i.au = add nuw nsw i32 %i.at, 2
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @__const._ZNK2v88internal4wasm13ValueTypeBase12machine_typeEv.kMachineType, i64 %i.aw
  %.sroa.0.0.copyload.i.i53 = load i16, ptr %i.ax, align 2
  %i.ay = trunc i16 %.sroa.0.0.copyload.i.i53 to i8 ; 2 uses
  %i.az = add i8 %i.ay, -6
  %i.ba = icmp ult i8 %i.az, 4
  br i1 %i.ba, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread: ; preds = %bb.d, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55
  %.sroa.0.0.i.i5474 = phi i8 [ %i.ay, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55 ], [ 9, %bb.d ]
  %i.bb = call i64 @_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(52) %2, i8 noundef zeroext %.sroa.0.0.i.i5474)
  %.sroa.057.0.extract.trunc = trunc i64 %i.bb to i32 ; 3 uses
  %i.bc = and i32 %.sroa.057.0.extract.trunc, 1
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.preheader, label %bb.e

.preheader:                                       ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread
  %switch.tableidx = add i32 %.sroa.057.0.extract.trunc, -2 ; 2 uses
  %i.be = icmp ult i32 %switch.tableidx, 17
  br i1 %i.be, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %.preheader
  %i.bf = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK2v88internal10TypedFrame37IterateParamsOfGenericWasmToJSWrapperEPNS0_11RootVisitorE, i64 %i.bf
  %switch.load = load i8, ptr %switch.gep, align 2
  %switch.ext = zext i8 %switch.load to i64
  br label %.loopexit

.loopexit:                                        ; preds = %switch.lookup, %.preheader
  %.047 = phi i64 [ %switch.ext, %switch.lookup ], [ 24, %.preheader ]
  %i.bg = load i64, ptr %i.a, align 8
  %i.bh = add i64 %.047, %i.bg
  br label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75.sink.split

bb.e:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread
  %i.bi = ashr i32 %.sroa.057.0.extract.trunc, 1
  %i.bj = xor i32 %i.bi, -1
  %i.bk = load i64, ptr %i.a, align 8
  %i.bl = sext i32 %i.bj to i64
  %i.bm = shl nsw i64 %i.bl, 3
  %i.bn = add nsw i64 %i.bm, 112
  %i.bo = add i64 %i.bn, %i.bk
  br label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75.sink.split

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75.sink.split: ; preds = %bb.e, %.loopexit
  %.sink = phi i64 [ %i.bh, %.loopexit ], [ %i.bo, %bb.e ]
  %i.bp = load ptr, ptr %1, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 18, ptr noundef null, i64 %.sink) #25
  br label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75.sink.split, %.lr.ph86, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55
  %i.bs = getelementptr inbounds nuw i8, ptr %.04884, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.bs, %i.ao
  br i1 %.not50, label %.loopexit77, label %.lr.ph86

.critedge:                                        ; preds = %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit
  %i.bt = call noundef i32 @_ZN2v88internal20AlignedSlotAllocator17AllocateUnalignedEi(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i32 noundef 0) #25 ; 0 uses
  br label %.loopexit77

.loopexit77:                                      ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75, %bb.c, %.critedge, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit77
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !guid !326 {
bb.a:
  switch i8 %1, label %bb.r [
    i8 0, label %bb.t
end_hunk_0
