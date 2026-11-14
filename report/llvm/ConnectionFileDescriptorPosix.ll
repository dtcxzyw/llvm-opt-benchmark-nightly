Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ConnectionFileDescriptorPosix?download=true
inline.NumInlined: 1704
inline.NumDeleted: 915
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm15format_providerINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvE11consumeUnitERNS_9StringRefERKS5_:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 1
  %i.ap = add i64 %i.b, -1
  store ptr %i.ao, ptr %1, align 8, !tbaa !54
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !50
  %i.aq = load i64, ptr %2, align 8, !tbaa !388
  %i.ar = sdiv i64 %i.aq, 3600000000
  store i64 %i.ar, ptr %0, align 8, !tbaa !390
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.66, ptr %i.as, align 8, !tbaa !53
  br label %bb.i

.thread69:                                        ; preds = %bb.e, %_ZNK4llvm9StringRef11starts_withES0_.exit.i39
  %i.at = load i64, ptr %2, align 8, !tbaa !388
  store i64 %i.at, ptr %0, align 8, !tbaa !390
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @_ZN4llvm6detail4unitISt5ratioILl1ELl1000000EEE5valueE) #18
  store ptr @_ZN4llvm6detail4unitISt5ratioILl1ELl1000000EEE5valueE, ptr %i.au, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %.thread69, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ %i.av, %.thread69 ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 2, %bb.d ], [ 2, %bb.c ], [ 2, %bb.b ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.aw, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15format_providerIlvE6formatERKlRNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 12 uses
  store ptr %2, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %3, ptr %i.c, align 8
  %i.d = call i64 @_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.e = and i64 %i.d, 4294967296
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.034.0.extract.trunc = trunc i64 %i.d to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.f = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #18
  %i.g = load i64, ptr %i.b, align 8
  %spec.select.i = select i1 %i.f, i64 0, i64 %i.g ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.h = call noundef zeroext i1 @_ZN4llvm18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef %.sroa.034.0.extract.trunc) #18
  %i.i = add i64 %spec.select.i, 2
  %.0.i = select i1 %i.h, i64 %i.i, i64 %spec.select.i
  %i.j = load i64, ptr %0, align 8, !tbaa !50
  call void @_ZN4llvm9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.j, i32 noundef %.sroa.034.0.extract.trunc, i64 %.0.i, i8 1) #18
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN4llvm9StringRef13consume_frontES0_.exit26, label %_ZNK4llvm9StringRef11starts_withEc.exit.i

_ZNK4llvm9StringRef11starts_withEc.exit.i:        ; preds = %.critedge
  %i.m = load ptr, ptr %4, align 8, !tbaa !53     ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !33
  %i.o = icmp eq i8 %i.n, 43                      ; 4 uses
  br i1 %i.o, label %_ZN4llvm9StringRef13consume_frontEc.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZN4llvm9StringRef13consume_frontEc.exit:         ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = add i64 %i.k, -1                         ; 3 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !54
  store i64 %i.q, ptr %i.c, align 8, !tbaa !50
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_ZN4llvm9StringRef13consume_frontES0_.exit26, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i, %_ZN4llvm9StringRef13consume_frontEc.exit
  %i.r = phi i64 [ %i.q, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ %i.k, %_ZNK4llvm9StringRef11starts_withEc.exit.i ]
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !53  ; 2 uses
  %lhsc = load i8, ptr %.pre.i, align 1
  %i.s = icmp eq i8 %lhsc, 78
  br i1 %i.s, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i11

_ZNK4llvm9StringRef11starts_withES0_.exit.i11:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i10 = load ptr, ptr %4, align 8, !tbaa !53 ; 2 uses
  %lhsc38 = load i8, ptr %.pre.i10, align 1
  %i.t = icmp eq i8 %lhsc38, 110
  br i1 %i.t, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i17

_ZNK4llvm9StringRef11starts_withES0_.exit.i17:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i11
  %.pre.i16 = load ptr, ptr %4, align 8, !tbaa !53 ; 2 uses
  %lhsc39 = load i8, ptr %.pre.i16, align 1
  %i.u = icmp eq i8 %lhsc39, 68
  br i1 %i.u, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i23

_ZNK4llvm9StringRef11starts_withES0_.exit.i23:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i17
  %.pre.i22 = load ptr, ptr %4, align 8, !tbaa !53 ; 2 uses
  %lhsc40 = load i8, ptr %.pre.i22, align 1
  %i.v = icmp eq i8 %lhsc40, 100
  br i1 %i.v, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZN4llvm9StringRef13consume_frontES0_.exit26

_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i23, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11, %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i22.sink = phi ptr [ %.pre.i16, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ %.pre.i10, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ %.pre.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %.pre.i22, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %.ph = phi i1 [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %.0.ph = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ 1, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ 1, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i22.sink, i64 1
  %i.x = add i64 %i.r, -1
  store ptr %i.w, ptr %4, align 8, !tbaa !54
  store i64 %i.x, ptr %i.c, align 8, !tbaa !50
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit26

_ZN4llvm9StringRef13consume_frontES0_.exit26:     ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, %_ZN4llvm9StringRef13consume_frontEc.exit, %.critedge, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23
  %i.y = phi i1 [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ true, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ false, %.critedge ]
  %.0 = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.0.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ 0, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ 0, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.z = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  %i.aa = load i64, ptr %i.a, align 8
  %spec.select = select i1 %i.z, i64 0, i64 %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ab = load i64, ptr %0, align 8, !tbaa !50
  call void @_ZN4llvm13write_integerERNS_11raw_ostreamElmNS_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.ab, i64 noundef %spec.select, i32 noundef %.0, i1 noundef zeroext %i.y) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm9StringRef13consume_frontES0_.exit26
  ret void
}

declare void @_ZN4llvm13write_integerERNS_11raw_ostreamElmNS_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN12lldb_private6SocketELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN12lldb_private6SocketELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(21) %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN12lldb_private6SocketELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private6SocketELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvRN12lldb_private6SocketEEE11callback_fnIZNS1_24ConnectionFileDescriptor17AcceptNamedSocketENS_9StringRefENS0_IFvS8_EEEPNS1_6StatusEE3$_0EEvlS3_"(i64 noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !54
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !50
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !102
  tail call void %i.c(i64 noundef %i.e, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #18, !inline_history !391
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvRN12lldb_private6SocketEEE11callback_fnIZNS1_24ConnectionFileDescriptor20AcceptAbstractSocketENS_9StringRefENS0_IFvS8_EEEPNS1_6StatusEE3$_0EEvlS3_"(i64 noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !54
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !50
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !102
  tail call void %i.c(i64 noundef %i.e, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #18, !inline_history !392
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvRN12lldb_private6SocketEEE11callback_fnIZNS1_24ConnectionFileDescriptor9AcceptTCPENS_9StringRefENS0_IFvS8_EEEPNS1_6StatusEE3$_0EEvlS3_"(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(21) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = tail call noundef zeroext i16 @_ZNK12lldb_private9TCPSocket18GetLocalPortNumberEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.d = icmp ult i16 %i.b, 10
  br i1 %i.d, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = icmp ult i16 %i.b, 100
  br i1 %i.e, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = icmp ult i16 %i.b, 1000
  br i1 %i.f, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i16 %i.b, 10000
  %..i = select i1 %i.g, i32 4, i32 5
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i, %bb.a
  %.022.i.i.i = phi i32 [ %..i, %bb.c ], [ 3, %bb.b ], [ 2, %.lr.ph.i.i.i ], [ 1, %bb.a ] ; 2 uses
  %i.h = zext nneg i32 %.022.i.i.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !29, !alias.scope !397
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.h, i8 noundef signext 45) #18
  %i.j = load ptr, ptr %2, align 8, !tbaa !46, !alias.scope !397 ; 4 uses
  %i.k = icmp ugt i16 %i.b, 99
  br i1 %i.k, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.l = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %.lr.ph.i11.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.o, %.lr.ph.i11.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %3, %.lr.ph.i11.i.i ], [ %i.l, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.m = urem i32 %.020.i.i.i, 100
  %i.n = shl nuw nsw i32 %i.m, 1
  %i.o = udiv i32 %.020.i.i.i, 100                ; 2 uses
  %i.p = zext nneg i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33, !noalias !397
  %i.t = zext i32 %.01819.i.i.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  store i8 %i.s, ptr %i.u, align 1, !tbaa !33
  %i.v = load i8, ptr %i.q, align 2, !tbaa !33, !noalias !397
  %i.w = add i32 %.01819.i.i.i, -1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1, !tbaa !33
  %3 = add i32 %.01819.i.i.i, -2
  %4 = icmp samesign ugt i32 %.020.i.i.i, 9999
  br i1 %4, label %.lr.ph.i11.i.i, label %._crit_edge.i.i.i, !llvm.loop !395

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i11.i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.c, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i ], [ %i.o, %.lr.ph.i11.i.i ] ; 3 uses
  %i.z = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !33, !noalias !397
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !33
  %i.ag = load i8, ptr %i.ac, align 2, !tbaa !33, !noalias !397
  br label %_ZNSt7__cxx119to_stringEi.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.i

_ZNSt7__cxx119to_stringEi.exit.i:                 ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi i8 [ %i.ai, %bb.e ], [ %i.ag, %bb.d ]
  store i8 %storemerge.i.i.i, ptr %i.j, align 1, !tbaa !33
  %i.aj = load ptr, ptr %2, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !102
  call void %i.am(i64 noundef %i.ao, ptr %i.aj, i64 %i.al) #18, !inline_history !396
  %i.ap = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.i
  br i1 %i.aq, label %"_ZZN12lldb_private24ConnectionFileDescriptor9AcceptTCPEN4llvm9StringRefENS1_12function_refIFvS2_EEEPNS_6StatusEENK3$_0clERNS_6SocketE.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit.i
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !33
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #20
  br label %"_ZZN12lldb_private24ConnectionFileDescriptor9AcceptTCPEN4llvm9StringRefENS1_12function_refIFvS2_EEEPNS_6StatusEENK3$_0clERNS_6SocketE.exit"

"_ZZN12lldb_private24ConnectionFileDescriptor9AcceptTCPEN4llvm9StringRefENS1_12function_refIFvS2_EEEPNS_6StatusEENK3$_0clERNS_6SocketE.exit": ; preds = %_ZNSt7__cxx119to_stringEi.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare noundef zeroext i16 @_ZNK12lldb_private9TCPSocket18GetLocalPortNumberEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private8IOObjectELN9__gnu_cxx12_Lock_policyE2EEC2INS0_9UDPSocketESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !398    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !41
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private9UDPSocketESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private9UDPSocketESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 13 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !398
  store ptr null, ptr %1, align 8, !tbaa !398
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !36
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN12lldb_private9UDPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !399
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private9UDPSocketESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pr.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !36
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !6
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !43

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.d, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private9UDPSocketESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  store i32 0, ptr %i.ab, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !36
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !7
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !7
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i6 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7: ; preds = %bb.n, %bb.m
  %.0.i.i.i8 = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i8, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !43

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private9UDPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private9UDPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !402  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN12lldb_private9UDPSocketEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(152) %i.b) #18, !inline_history !400
  br label %_ZNKSt14default_deleteIN12lldb_private9UDPSocketEEclEPS1_.exit

_ZNKSt14default_deleteIN12lldb_private9UDPSocketEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private9UDPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN12lldb_private9UDPSocketESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN12lldb_private9UDPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

declare noundef zeroext i1 @_ZN4llvm18getAsSignedIntegerENS_9StringRefEjRx(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN12lldb_private9TCPSocketC1Eib(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private8IOObjectELN9__gnu_cxx12_Lock_policyE2EEC2INS0_9TCPSocketESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !41
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private9TCPSocketESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private9TCPSocketESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 13 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !36
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN12lldb_private9TCPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !403
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private9TCPSocketESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pr.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !36
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !6
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !43

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.d, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private9TCPSocketESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  store i32 0, ptr %i.ab, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !36
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !7
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !7
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i6 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7: ; preds = %bb.n, %bb.m
  %.0.i.i.i8 = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i8, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !43

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private9TCPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private9TCPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !406  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN12lldb_private9TCPSocketEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #18, !inline_history !404
  br label %_ZNKSt14default_deleteIN12lldb_private9TCPSocketEEclEPS1_.exit

_ZNKSt14default_deleteIN12lldb_private9TCPSocketEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private9TCPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN12lldb_private9TCPSocketESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN12lldb_private9TCPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private8IOObjectELN9__gnu_cxx12_Lock_policyE2EEC2INS0_10SerialPortESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !407    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !41
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private10SerialPortESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private10SerialPortESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 13 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !407
  store ptr null, ptr %1, align 8, !tbaa !407
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !36
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN12lldb_private10SerialPortESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !408
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private10SerialPortESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pr.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !36
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !6
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !43

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.d, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private10SerialPortESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  store i32 0, ptr %i.ab, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !36
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !7
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !7
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i6 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7: ; preds = %bb.n, %bb.m
  %.0.i.i.i8 = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i8, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !43

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private10SerialPortESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private10SerialPortESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN12lldb_private10SerialPortEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(192) %i.b) #18, !inline_history !409
  br label %_ZNKSt14default_deleteIN12lldb_private10SerialPortEEclEPS1_.exit

_ZNKSt14default_deleteIN12lldb_private10SerialPortEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private10SerialPortESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN12lldb_private10SerialPortESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN12lldb_private10SerialPortESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null, null, null, null, null}
!1 = distinct !{null, null, null, null, null}
!2 = distinct !{null}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null}
!5 = distinct !{null, null}
!6 = distinct !{null, null}
!7 = distinct !{null, null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"short", !12, i64 0}
!19 = !{!"any pointer", !12, i64 0}
!20 = !{!"p1 _ZTS23__pthread_internal_list", !19, i64 0}
!21 = !{!"_ZTS23__pthread_internal_list", !20, i64 0, !20, i64 8}
!22 = !{!"_ZTS17__pthread_mutex_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !18, i64 20, !18, i64 22, !21, i64 24}
!23 = !{!22, !13, i64 16}
!24 = !{!"bool", !12, i64 0}
!25 = !{!"_ZTSSt13__atomic_baseIbE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"p1 omnipotent char", !19, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"long", !12, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !30, i64 8, !12, i64 16}
!32 = !{!31, !30, i64 8}
!33 = !{!12, !12, i64 0}
!34 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 8, !13, i64 12}
!35 = !{!34, !13, i64 8}
!36 = !{!34, !13, i64 12}
!37 = !{!"p1 _ZTSN12lldb_private8IOObjectE", !19, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!40 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!41 = !{!40, !39, i64 0}
!42 = !{!13, !13, i64 0}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!"p1 _ZTSN12lldb_private6SocketE", !19, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!31, !27, i64 0}
!47 = !{!19, !19, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIN12lldb_private8IOObjectELN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0, !40, i64 8}
!49 = !{!48, !37, i64 0}
!50 = !{!30, !30, i64 0}
!51 = !{!"_ZTSN4llvm9StringRefE", !27, i64 0, !30, i64 8}
!52 = !{!51, !30, i64 8}
!53 = !{!51, !27, i64 0}
!54 = !{!27, !27, i64 0}
!55 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !19, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"_ZTSN4llvm5ErrorE", !55, i64 0}
!58 = !{!57, !55, i64 0}
!59 = !{!"p1 _ZTSN12lldb_private9TCPSocketE", !19, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"_ZTSN12lldb_private8IOObject6FDTypeE", !12, i64 0}
!62 = !{!"_ZTSN12lldb_private8IOObjectE", !61, i64 8}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"_ZTSSt22_Optional_payload_baseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE", !12, i64 0, !24, i64 8}
!65 = !{!64, !24, i64 8}
!66 = !{!"p1 _ZTSN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEE", !19, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"_ZTSN4llvm8ArrayRefINS_12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEEEE", !66, i64 0, !30, i64 8}
!69 = !{!"_ZTSN4llvm19formatv_object_baseE", !51, i64 0, !68, i64 16, !24, i64 32}
!70 = !{!69, !24, i64 32}
!71 = !{!"p1 _ZTSN4llvm5ErrorE", !19, i64 0}
!72 = !{!"p1 _ZTSN12lldb_private24ConnectionFileDescriptorE", !19, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!"_ZTSN4lldb16ConnectionStatusE", !12, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"p1 long", !19, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"any p2 pointer", !19, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"p1 _ZTSN12lldb_private7TimeoutISt5ratioILl1ELl1000000EEEE", !19, i64 0}
!83 = !{!"_ZTSSt15_Sp_counted_ptrIPN12lldb_private6SocketELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !44, i64 16}
!84 = !{!83, !44, i64 16}
!85 = !{!"p1 _ZTSSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EE", !19, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!88 = !{!87, !85, i64 8}
!89 = !{!87, !85, i64 16}
!90 = !{!87, !85, i64 0}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!"_ZTSNSt19_Sp_counted_deleterIPN12lldb_private6SocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !44, i64 0}
!94 = !{i64 8}
!95 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !12, i64 0}
!96 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !12, i64 0}
!97 = !{!"_ZTSN4llvm11raw_ostreamE", !95, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !24, i64 40, !96, i64 44}
!98 = !{!97, !27, i64 24}
!99 = !{!97, !27, i64 32}
!100 = !{!"_ZTSN4llvm12function_refIFvNS_9StringRefEEEE", !19, i64 0, !30, i64 8}
!101 = !{!100, !19, i64 0}
!102 = !{!100, !30, i64 8}
!103 = !{!"p1 _ZTSN12lldb_private9UDPSocketE", !19, i64 0}
!104 = !{!"_ZTSNSt19_Sp_counted_deleterIPN12lldb_private9UDPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !103, i64 0}
!105 = !{!"_ZTSNSt19_Sp_counted_deleterIPN12lldb_private9TCPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !59, i64 0}
!106 = !{!"p1 _ZTSN12lldb_private10SerialPortE", !19, i64 0}
!107 = !{!"_ZTSNSt19_Sp_counted_deleterIPN12lldb_private10SerialPortESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !106, i64 0}
!108 = distinct !{!108, i1 true, !"_ZSt11make_sharedIN12lldb_private15NativeFilePosixEJRiNS0_4File11OpenOptionsERbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!109 = distinct !{!109, !108, !"_ZSt11make_sharedIN12lldb_private15NativeFilePosixEJRiNS0_4File11OpenOptionsERbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private15NativeFilePosixESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!111 = distinct !{!111, !110, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private15NativeFilePosixESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!112 = !{!111, !109}
!113 = !{!109}
!114 = distinct !{null, null, null}
!115 = distinct !{!115, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!116 = distinct !{!116, !115, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZNK4llvm9StringRef5splitES0_"}
!118 = distinct !{!118, !117, !"_ZNK4llvm9StringRef5splitES0_: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!120 = distinct !{!120, !119, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!121 = !{!116}
!122 = !{!118}
!123 = !{!120}
!124 = distinct !{!124, i1 true, !"_ZN4llvm8ExpectedISt10unique_ptrIN12lldb_private9UDPSocketESt14default_deleteIS3_EEE9takeErrorEv"}
!125 = distinct !{!125, !124, !"_ZN4llvm8ExpectedISt10unique_ptrIN12lldb_private9UDPSocketESt14default_deleteIS3_EEE9takeErrorEv: argument 0"}
!126 = distinct !{!126, i1 true, !"_ZN4llvm8ExpectedISt10unique_ptrIN12lldb_private9UDPSocketESt14default_deleteIS3_EEE9takeErrorEv"}
!127 = distinct !{!127, !126, !"_ZN4llvm8ExpectedISt10unique_ptrIN12lldb_private9UDPSocketESt14default_deleteIS3_EEE9takeErrorEv: argument 0"}
!128 = distinct !{null, null, null, null, null}
!129 = distinct !{null}
!130 = !{!125}
!131 = !{!127}
!132 = distinct !{!132, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!133 = distinct !{!133, !132, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!134 = distinct !{null, null, null, null}
!135 = distinct !{!135, i1 true, !"_ZSt11make_uniqueIN12lldb_private9TCPSocketEJRibEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!136 = distinct !{!136, !135, !"_ZSt11make_uniqueIN12lldb_private9TCPSocketEJRibEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!137 = distinct !{null, null, null, null, null}
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!195 = !{!183}
!196 = !{!185}
!197 = !{!187}
!198 = distinct !{!198, i1 true, !"_ZN4llvm8ExpectedImE9takeErrorEv"}
!199 = distinct !{!199, !198, !"_ZN4llvm8ExpectedImE9takeErrorEv: argument 0"}
!200 = distinct !{null, null, null, null}
!201 = distinct !{null, null, null}
!202 = !{!199}
!203 = distinct !{!203, i1 true, !"_ZN4llvm8ExpectedImE9takeErrorEv"}
!204 = distinct !{!204, !203, !"_ZN4llvm8ExpectedImE9takeErrorEv: argument 0"}
!205 = distinct !{!205, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRNS_5ErrorEEEEDaPKcDpOT_"}
!206 = distinct !{!206, !205, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRNS_5ErrorEEEEDaPKcDpOT_: argument 0"}
!207 = distinct !{!207, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRNS_5ErrorEEEEDabPKcDpOT_"}
!208 = distinct !{!208, !207, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRNS_5ErrorEEEEDabPKcDpOT_: argument 0"}
!209 = !{!204}
!210 = !{!208, !206}
!211 = !{!71, !71, i64 0}
!212 = distinct !{!212, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRPvRmS6_PKcEEEDaS8_DpOT_"}
!213 = distinct !{!213, !212, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRPvRmS6_PKcEEEDaS8_DpOT_: argument 0"}
!214 = distinct !{!214, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRPvRmS6_PKcEEEDabS8_DpOT_"}
!215 = distinct !{!215, !214, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRPvRmS6_PKcEEEDabS8_DpOT_: argument 0"}
!216 = distinct !{!216, i1 true, !"_ZNK12lldb_private6Status5CloneEv"}
!217 = distinct !{!217, !216, !"_ZNK12lldb_private6Status5CloneEv: argument 0"}
!218 = !{!215, !213}
!219 = !{!217}
!220 = !{!62, !61, i64 8}
!221 = distinct !{!221, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorERKNS1_7TimeoutISt5ratioILl1ELl1000000EEEEEEEDaPKcDpOT_"}
!222 = distinct !{!222, !221, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorERKNS1_7TimeoutISt5ratioILl1ELl1000000EEEEEEEDaPKcDpOT_: argument 0"}
!223 = distinct !{!223, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorERKNS1_7TimeoutISt5ratioILl1ELl1000000EEEEEEEDabPKcDpOT_"}
!224 = distinct !{!224, !223, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorERKNS1_7TimeoutISt5ratioILl1ELl1000000EEEEEEEDabPKcDpOT_: argument 0"}
!225 = distinct !{null}
!226 = distinct !{!226, !63}
!227 = distinct !{!227, !63}
!228 = distinct !{!228, i1 true, !"_ZNK12lldb_private6Status5CloneEv"}
!229 = distinct !{!229, !228, !"_ZNK12lldb_private6Status5CloneEv: argument 0"}
!230 = !{!224, !222}
!231 = !{!82, !82, i64 0}
!232 = !{!229}
!233 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIiN12SelectHelper6FDInfoEEE", !19, i64 0}
!234 = !{!"p1 int", !19, i64 0}
!235 = !{!"_ZTSN4llvm8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEE", !233, i64 0, !234, i64 8, !13, i64 16, !13, i64 20}
!236 = !{!235, !13, i64 20}
!237 = !{!235, !233, i64 0}
!238 = distinct !{!238, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaPKcDpOT_"}
!239 = distinct !{!239, !238, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaPKcDpOT_: argument 0"}
!240 = distinct !{!240, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDabPKcDpOT_"}
!241 = distinct !{!241, !240, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDabPKcDpOT_: argument 0"}
!242 = distinct !{!242, i1 true, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorIPN12lldb_private24ConnectionFileDescriptorEEENS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSI_"}
!243 = distinct !{!243, !242, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorIPN12lldb_private24ConnectionFileDescriptorEEENS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSI_: argument 0:thread"}
!244 = distinct !{!244, i1 true, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorIPN12lldb_private24ConnectionFileDescriptorEEENS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSI_"}
!245 = distinct !{!245, !244, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorIPN12lldb_private24ConnectionFileDescriptorEEENS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSI_: argument 0"}
!246 = !{!239}
!247 = !{!241}
!248 = !{!241, !239}
!249 = !{!243}
!250 = !{!245}
!251 = !{!245, !241, !239}
!252 = distinct !{!252, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRPKvRmS7_PKcEEEDaS9_DpOT_"}
!253 = distinct !{!253, !252, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRPKvRmS7_PKcEEEDaS9_DpOT_: argument 0"}
!254 = distinct !{!254, i1 true, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRPKvRmS7_PKcEEEDabS9_DpOT_"}
!255 = distinct !{!255, !254, !"_ZN4llvm7formatvIJPN12lldb_private24ConnectionFileDescriptorEiRPKvRmS7_PKcEEEDabS9_DpOT_: argument 0"}
!256 = distinct !{!256, i1 true, !"_ZNK12lldb_private6Status5CloneEv"}
!257 = distinct !{!257, !256, !"_ZNK12lldb_private6Status5CloneEv: argument 0"}
!258 = !{!255, !253}
!259 = !{!257}
!260 = distinct !{null}
!261 = distinct !{null, null, null, null}
!262 = distinct !{!262, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!263 = distinct !{!263, !262, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!264 = distinct !{!264, i1 true, !"_ZNK12lldb_private6Status5CloneEv"}
!265 = distinct !{!265, !264, !"_ZNK12lldb_private6Status5CloneEv: argument 0"}
!266 = !{!263}
!267 = !{!265}
!268 = distinct !{!268, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!269 = distinct !{!269, !268, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!270 = distinct !{!270, i1 true, !"_ZNK12lldb_private6Status5CloneEv"}
!271 = distinct !{!271, !270, !"_ZNK12lldb_private6Status5CloneEv: argument 0"}
!272 = !{!269}
!273 = !{!271}
!274 = distinct !{!274, i1 true, !"_ZN4llvm7formatvIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaPKcDpOT_"}
!275 = distinct !{!275, !274, !"_ZN4llvm7formatvIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaPKcDpOT_: argument 0"}
!276 = distinct !{!276, i1 true, !"_ZN4llvm7formatvIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDabPKcDpOT_"}
!277 = distinct !{!277, !276, !"_ZN4llvm7formatvIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDabPKcDpOT_: argument 0"}
!278 = distinct !{!278, i1 true, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSE_"}
!279 = distinct !{!279, !278, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSE_: argument 0:thread"}
!280 = distinct !{!280, i1 true, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSE_"}
!281 = distinct !{!281, !280, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSE_: argument 0"}
!282 = !{!275}
!283 = !{!277}
!284 = !{!277, !275}
!285 = !{!279}
!286 = !{!281}
!287 = !{!281, !277, !275}
!288 = distinct !{null}
!289 = distinct !{!289, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!290 = distinct !{!290, !289, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!291 = distinct !{null}
!292 = distinct !{!292, i1 true, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!293 = distinct !{!293, !292, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!294 = distinct !{null, null, null}
!295 = distinct !{!295, i1 true, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!296 = distinct !{!296, !295, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!297 = distinct !{null, null, null}
!298 = distinct !{!298, i1 true, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!299 = distinct !{!299, !298, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!300 = distinct !{!300, i1 true, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!301 = distinct !{!301, !300, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!302 = distinct !{!302, i1 true, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!303 = distinct !{!303, !302, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!304 = distinct !{!304, i1 true, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!305 = distinct !{!305, !304, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!306 = !{!290}
!307 = !{!293}
!308 = !{!296, !293}
!309 = !{!299, !293}
!310 = !{!301}
!311 = !{!303, !301}
!312 = !{!305, !301}
!313 = distinct !{null}
!314 = distinct !{!314, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!315 = distinct !{!315, !314, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!316 = distinct !{!316, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!317 = distinct !{!317, !316, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!318 = distinct !{!318, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!319 = distinct !{!319, !318, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!320 = distinct !{!320, !318, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!321 = distinct !{!321, !63, !91, !92}
!322 = distinct !{!322, !63, !92, !91}
!323 = distinct !{!323, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!324 = distinct !{!324, !323, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!325 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!326 = distinct !{!326, !63}
!327 = distinct !{null, null, null, null, null, null, null, null}
!328 = distinct !{!328, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!329 = distinct !{!329, !328, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!330 = distinct !{!330, !328, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!331 = distinct !{!331, !63, !91, !92}
!332 = distinct !{!332, !63, !92, !91}
!333 = distinct !{!333, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!334 = distinct !{!334, !333, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!335 = distinct !{!335, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!336 = distinct !{!336, !335, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!337 = distinct !{!337, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!338 = distinct !{!338, !337, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!339 = distinct !{!339, !337, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!340 = !{!315}
!341 = !{!317}
!342 = !{!319}
!343 = !{!320}
!344 = !{!324}
!345 = !{!329}
!346 = !{!330}
!347 = !{!334}
!348 = !{!336}
!349 = !{!338}
!350 = !{!339}
!351 = distinct !{!351, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!352 = distinct !{!352, !351, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!353 = distinct !{!353, !351, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!354 = distinct !{!354, !63, !91, !92}
!355 = distinct !{!355, !63, !92, !91}
!356 = distinct !{!356, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!357 = distinct !{!357, !356, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!358 = distinct !{!358, !356, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!359 = distinct !{!359, i1 false, !"LVerDomain"}
!360 = distinct !{!360, !359}
!361 = distinct !{!361, !359}
!362 = distinct !{!362, !63, !91, !92}
!363 = distinct !{!363, !63, !91}
!364 = !{!352}
!365 = !{!353}
!366 = !{!357}
!367 = !{!358}
!368 = !{!358, !360}
!369 = !{!357, !361}
!370 = !{!360}
!371 = distinct !{null}
!372 = !{!93, !44, i64 0}
!373 = distinct !{null}
!374 = !{!"_ZTSSt19_Sp_counted_deleterIPN12lldb_private6SocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !93, i64 16}
!375 = !{!374, !44, i64 16}
!376 = distinct !{null, null}
!377 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRNS_5ErrorEEE", !71, i64 0}
!378 = !{!377, !71, i64 0}
!379 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRPvEE", !80, i64 0}
!380 = !{!379, !80, i64 0}
!381 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRmEE", !78, i64 0}
!382 = !{!381, !78, i64 0}
!383 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRPKvEE", !80, i64 0}
!384 = !{!383, !80, i64 0}
!385 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRKN12lldb_private7TimeoutISt5ratioILl1ELl1000000EEEEEE", !82, i64 0}
!386 = !{!385, !82, i64 0}
!387 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !30, i64 0}
!388 = !{!387, !30, i64 0}
!389 = !{!"_ZTSSt4pairIlN4llvm9StringRefEE", !30, i64 0, !51, i64 8}
!390 = !{!389, !30, i64 0}
!391 = distinct !{null, null}
!392 = distinct !{null, null}
!393 = distinct !{!393, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!394 = distinct !{!394, !393, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!395 = distinct !{!395, !63}
!396 = distinct !{null, null}
!397 = !{!394}
!398 = !{!103, !103, i64 0}
!399 = !{!104, !103, i64 0}
!400 = distinct !{null}
!401 = !{!"_ZTSSt19_Sp_counted_deleterIPN12lldb_private9UDPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !104, i64 16}
!402 = !{!401, !103, i64 16}
!403 = !{!105, !59, i64 0}
!404 = distinct !{null}
!405 = !{!"_ZTSSt19_Sp_counted_deleterIPN12lldb_private9TCPSocketESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !105, i64 16}
!406 = !{!405, !59, i64 16}
!407 = !{!106, !106, i64 0}
!408 = !{!107, !106, i64 0}
!409 = distinct !{null}
!410 = !{!"_ZTSSt19_Sp_counted_deleterIPN12lldb_private10SerialPortESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !107, i64 16}
!411 = !{!410, !106, i64 16}
end_hunk_1
