inline.NumInlined: 1869
inline.NumDeleted: 882
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSO_PFvSO_hmmE:bb.a
bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #25, !srcloc !302 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.062, 16                ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !308

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.052.061 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.062, %i.w                  ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !38
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
  %i.am = and i64 %i.i, %i.al
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e, !prof !268

bb.d:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.al, 15
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = and i64 %i.ap, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.d, %i.ai
  %.not.i = icmp ult i64 %i.ar, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !268

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %i.ai, %i.c                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.as
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !31
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ax) #25, !srcloc !302 ; 2 uses
  %.not26.i = icmp eq i32 %i.ay, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !179

bb.g:                                             ; preds = %bb.f
  %i.az = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 true)
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = add nuw i64 %i.as, %i.ba
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ak, i64 noundef %i.x, i64 noundef %i.ai)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.bb, %bb.g ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ak, ptr %i.bc, align 1, !tbaa !180
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bd, ptr noundef nonnull align 1 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.be = add i32 %.sroa.052.061, -1
  %i.bf = and i32 %i.be, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashImEEmLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !141, !align !284
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = xor i64 %i.c, %1
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr, ptr, ptr, i64, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr nofree readonly captures(none) %0, i64 %1, i32 %2, ptr noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [1 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %5 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint", align 8 ; 4 uses
  %6 = alloca %"class.absl::lts_20260526::FormatSink", align 8 ; 4 uses
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 18                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !prof !311

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 4, !tbaa !90
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val11 = load i32, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %3, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.d = sext i32 %.val to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = sext i32 %.val11 to i64
  %i.g = or i64 %i.e, %i.f
  store i64 %i.g, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.h, align 8, !tbaa !93
  %i.i = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(8) %6, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_10FormatSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.14, i64 2, ptr nonnull %4, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_10FormatSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %1, ptr %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !312    ; 7 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN4absl12lts_2026052619str_format_internal11InvokeFlushINS0_10FormatSinkEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !315
  %i.e = add i64 %i.d, %1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !315
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !318  ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %.not.i.i.i.i = icmp ult i64 %1, %i.k
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !319
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !320
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !321
  store ptr %i.l, ptr %i.g, align 8, !tbaa !318
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !319
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !320
  tail call void %i.r(ptr noundef %i.s, i64 %1, ptr %2), !inline_history !322
  br label %_ZN4absl12lts_2026052619str_format_internal11InvokeFlushINS0_10FormatSinkEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %2, i64 %1, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %1
  store ptr %i.u, ptr %i.g, align 8, !tbaa !318
  br label %_ZN4absl12lts_2026052619str_format_internal11InvokeFlushINS0_10FormatSinkEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal11InvokeFlushINS0_10FormatSinkEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr nofree readonly captures(none) %0, i64 %1, i32 %2, ptr noundef %3) #0 align 2 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = and i64 %1, 255
  %i.c = icmp eq i64 %i.b, 18                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f, !prof !311

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !tbaa !89    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = icmp ugt i64 %.val, 127
  br i1 %i.d, label %.lr.ph.i.i, label %bb.c

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.04.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %.val, %bb.b ] ; 3 uses
  %.083.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.e = trunc i64 %.04.i.i to i8
  %i.f = or i8 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %.083.i.i, i64 1 ; 2 uses
  store i8 %i.f, ptr %.083.i.i, align 1, !tbaa !31
  %i.h = lshr i64 %.04.i.i, 7                     ; 2 uses
  %i.i = icmp ugt i64 %.04.i.i, 16383
  br i1 %i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !323

bb.c:                                             ; preds = %.lr.ph.i.i, %bb.b
  %.08.lcssa.i.i = phi ptr [ %i.a, %bb.b ], [ %i.g, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %.val, %bb.b ], [ %i.h, %.lr.ph.i.i ]
  %4 = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %5 = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i, i64 1
  store i8 %4, ptr %.08.lcssa.i.i, align 1, !tbaa !31
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %i.a to i64
  %8 = sub i64 %6, %7                             ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !315
  %i.l = add i64 %i.k, %8
  store i64 %i.l, ptr %i.j, align 8, !tbaa !315
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !318  ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %.not.i.i.i.i = icmp ult i64 %8, %i.r
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.q, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !319
  %i.x = load ptr, ptr %3, align 8, !tbaa !320
  call void %i.w(ptr noundef %i.x, i64 %i.u, ptr nonnull %i.s), !inline_history !324
  store ptr %i.s, ptr %i.n, align 8, !tbaa !318
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !319
  %i.z = load ptr, ptr %3, align 8, !tbaa !320
  call void %i.y(ptr noundef %i.z, i64 %8, ptr nonnull %i.a), !inline_history !325
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplINS0_18debugging_internal12_GLOBAL__N_16VarintEEENSt9enable_ifIXaaaantsr3std7is_enumIT_EE5valuentsr3std7is_sameIS7_NS0_4CordEEE5valuesr3std7is_voidIDTcl13AbslStringifyclL_ZSt7declvalIRNS0_10FormatSinkEEDTcl9__declvalIS7_ELi0EEEvEEfp_EEEE5valueENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE524288EEEE4typeERKS7_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.a, i64 %8, i1 false)
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !318
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %8
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !318
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplINS0_18debugging_internal12_GLOBAL__N_16VarintEEENSt9enable_ifIXaaaantsr3std7is_enumIT_EE5valuentsr3std7is_sameIS7_NS0_4CordEEE5valuesr3std7is_voidIDTcl13AbslStringifyclL_ZSt7declvalIRNS0_10FormatSinkEEDTcl9__declvalIS7_ELi0EEEvEEfp_EEEE5valueENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE524288EEEE4typeERKS7_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplINS0_18debugging_internal12_GLOBAL__N_16VarintEEENSt9enable_ifIXaaaantsr3std7is_enumIT_EE5valuentsr3std7is_sameIS7_NS0_4CordEEE5valuesr3std7is_voidIDTcl13AbslStringifyclL_ZSt7declvalIRNS0_10FormatSinkEEDTcl9__declvalIS7_ELi0EEEvEEfp_EEEE5valueENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE524288EEEE4typeERKS7_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplINS0_18debugging_internal12_GLOBAL__N_16VarintEEENSt9enable_ifIXaaaantsr3std7is_enumIT_EE5valuentsr3std7is_sameIS7_NS0_4CordEEE5valuesr3std7is_voidIDTcl13AbslStringifyclL_ZSt7declvalIRNS0_10FormatSinkEEDTcl9__declvalIS7_ELi0EEEvEEfp_EEEE5valueENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE524288EEEE4typeERKS7_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %1, ptr %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2)
  ret void
}

declare void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !326    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !84
  %i.s = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !95
  %i.z = load i64, ptr %i.t, align 8, !tbaa !31
  store i64 %i.z, ptr %i.r, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !85
  store ptr %i.t, ptr %2, align 8, !tbaa !95
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.t, align 8, !tbaa !31
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !84, !alias.scope !327, !noalias !330
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !95, !alias.scope !330, !noalias !327 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !85, !alias.scope !330, !noalias !327 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !332
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !95, !alias.scope !327, !noalias !330
  %i.al = load i64, ptr %i.af, align 8, !tbaa !31, !alias.scope !330, !noalias !327
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !31, !alias.scope !327, !noalias !330
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !85, !alias.scope !330, !noalias !327
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !85, !alias.scope !327, !noalias !330
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !95, !alias.scope !330, !noalias !327
  store i64 0, ptr %i.an, align 8, !tbaa !85, !alias.scope !330, !noalias !327
  store i8 0, ptr %i.af, align 8, !tbaa !31, !alias.scope !330, !noalias !327
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !333

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !84, !alias.scope !334, !noalias !337
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !95, !alias.scope !337, !noalias !334 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !85, !alias.scope !337, !noalias !334 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !339
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !95, !alias.scope !334, !noalias !337
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !31, !alias.scope !337, !noalias !334
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !31, !alias.scope !334, !noalias !337
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !85, !alias.scope !337, !noalias !334
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !85, !alias.scope !334, !noalias !337
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !95, !alias.scope !337, !noalias !334
  store i64 0, ptr %i.bc, align 8, !tbaa !85, !alias.scope !337, !noalias !334
  store i8 0, ptr %i.au, align 8, !tbaa !31, !alias.scope !337, !noalias !334
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !333

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !129
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !326
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !129
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
