Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.14?download=true
inline.NumInlined: 640
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvXsw_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11UnionHasherNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core:bb.a
  %.not26.i = icmp eq i64 %2, 0
  br i1 %.not26.i, label %.loopexit.i95, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.preheader.i96
  %.val17.i = load i64, ptr %i.ea, align 8, !alias.scope !1920
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val18.i97 = load i32, ptr %i.eg, align 8, !alias.scope !1923, !noundef !6
  %i.eh = and i32 %.val18.i97, 63
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val14.i98 = load i64, ptr %i.ej, align 8, !alias.scope !1920 ; 2 uses
  %.val.i99 = load ptr, ptr %i.dw, align 8, !alias.scope !1920, !nonnull !6
  %i.ek = add nuw i64 %4, 1                       ; 2 uses
  %i.el = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %4, i64 7)
  br label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16.i90 = load i64, ptr %i.em, align 8, !alias.scope !1920, !noundef !6 ; 2 uses
  %i.en = zext i32 %i.ec to i64                   ; 3 uses
  %.not.i91 = icmp ult i64 %.val16.i90, %i.en
  br i1 %.not.i91, label %bb.bq, label %bb.bp, !prof !16

bb.bp:                                            ; preds = %bb.bo
  %i.eo = icmp eq i32 %i.ec, 0
  br i1 %i.eo, label %.loopexit.i95, label %.lr.ph.preheader.i92

.lr.ph.preheader.i92:                             ; preds = %bb.bp
  %.idx.i93 = shl nuw nsw i64 %i.en, 1
  %.val15.i94 = load ptr, ptr %i.dw, align 8, !alias.scope !1920, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %.val15.i94, i8 0, i64 %.idx.i93, i1 false), !noalias !1924
  br label %.loopexit.i95

bb.bq:                                            ; preds = %bb.bo
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.en, i64 noundef %.val16.i90, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #16, !noalias !1924
  unreachable

.loopexit.i95:                                    ; preds = %bb.bv, %.lr.ph.preheader.i92, %bb.bp, %.preheader.i96
  store i32 1, ptr %i.dx, align 8, !alias.scope !1920
  br label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core.exit

bb.br:                                            ; preds = %bb.bv, %.lr.ph25.i
  %.sroa.05.024.i = phi i64 [ 0, %.lr.ph25.i ], [ %i.ep, %bb.bv ] ; 4 uses
  %i.ep = add nuw nsw i64 %.sroa.05.024.i, 1      ; 2 uses
  %exitcond.i100 = icmp eq i64 %.sroa.05.024.i, %i.ek
  br i1 %exitcond.i100, label %bb.bu, label %bb.bs, !prof !10

bb.bs:                                            ; preds = %bb.br
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  %exitcond32.i = icmp eq i64 %.sroa.05.024.i, %i.el
  br i1 %exitcond32.i, label %bb.bt, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i, !prof !10

bb.bt:                                            ; preds = %bb.bs
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !1926
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.bs
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.05.024.i
  %.sroa.0.0.copyload.i.i101 = load i64, ptr %i.eq, align 1, !alias.scope !1927, !noalias !1928
  %i.er = and i64 %.sroa.0.0.copyload.i.i101, %.val17.i
  %i.es = mul i64 %i.er, 2297779722762296275
  %i.et = lshr i64 %i.es, %i.ei
  %i.eu = and i64 %i.et, 4294967295               ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %.val14.i98
  br i1 %i.ev, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.br
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ek, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #16, !noalias !1924
  unreachable

bb.bv:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.val.i99, i64 %i.eu
  store i16 0, ptr %i.ew, align 2, !noalias !1924
  %exitcond33.not.i = icmp eq i64 %i.ep, %2
  br i1 %exitcond33.not.i, label %.loopexit.i95, label %bb.br

bb.bw:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %.val14.i98, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #16, !noalias !1924
  unreachable

bb.bx:                                            ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !alias.scope !1929, !noundef !6
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.by, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core.exit

bb.by:                                            ; preds = %bb.bx
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.fb, align 8, !alias.scope !1929, !noundef !6 ; 2 uses
  %i.fc = icmp eq i64 %.val3.i, 0
  br i1 %i.fc, label %._crit_edge.i, label %.lr.ph.preheader.i102

.lr.ph.preheader.i102:                            ; preds = %bb.by
  %.idx.i103 = shl i64 %.val3.i, 1
  %.val.i104 = load ptr, ptr %i.ex, align 8, !alias.scope !1929, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %.val.i104, i8 0, i64 %.idx.i103, i1 false), !noalias !1929
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i102, %bb.by
  store i32 1, ptr %i.ey, align 8, !alias.scope !1929
  br label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core.exit

bb.bz:                                            ; preds = %bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = tail call noundef zeroext i1 @_RNvXs7_NtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references19hash_to_binary_treeINtB5_3H10NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtB5_10H10BucketsB1q_ENtB5_16H10DefaultParamsENtB7_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.fd, i1 noundef zeroext %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core.exit

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core.exit: ; preds = %._crit_edge.i, %bb.bx, %.loopexit.i95, %bb.bm, %.loopexit.i78, %bb.bc, %.loopexit.i64, %bb.as, %.loopexit.i54, %bb.ai, %.loopexit15.i37, %bb.aa, %.loopexit15.i19, %bb.s, %.loopexit15.i6, %bb.k, %.loopexit15.i, %bb.c, %bb.bz
  %.sroa.0.0.in = phi i1 [ %i.fe, %bb.bz ], [ true, %.loopexit15.i ], [ true, %.loopexit15.i6 ], [ true, %.loopexit15.i19 ], [ true, %.loopexit15.i37 ], [ true, %.loopexit.i54 ], [ true, %.loopexit.i64 ], [ true, %.loopexit.i78 ], [ true, %.loopexit.i95 ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.s ], [ false, %bb.aa ], [ false, %bb.ai ], [ false, %bb.as ], [ false, %bb.bc ], [ false, %bb.bm ], [ false, %bb.bx ], [ true, %._crit_edge.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(920) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 2, ptr %i.b, align 8
  call void @_RNvXs_NtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropyINtB4_17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(920) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.42.0..sroa_idx, align 8
  store i8 2, ptr %i.a, align 8
  call void @_RNvXs_NtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropyINtB4_17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(920) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor18push_rand_literalsCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(920) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 2, ptr %i.b, align 8
  call void @_RNvXs_NtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropyINtB4_17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(920) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %.sroa.42.0..sroa_idx, align 8
  store i8 2, ptr %i.a, align 8
  call void @_RNvXs_NtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropyINtB4_17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(920) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor25push_block_switch_literalCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(920) %0, i8 noundef %1) unnamed_addr #1 {
bb.a:
  %2 = alloca [56 x i8], align 8                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.b, align 2
  store i8 4, ptr %2, align 8
  call void @_RNvXs_NtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropyINtB4_17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(920) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsdYyxaOYRLxS_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare { i64, i8 } @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc12ir_interpret43compute_huffman_table_index_for_context_map(i8 noundef, i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i8 noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter11update_costCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(240), i64 noundef, i64 noundef, i8 noundef, i64 noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter17update_block_typeCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(240), i8 noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment25EmitUncompressedMetaBlock(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass26BrotliStoreMetaBlockHeader(i64 noundef, i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment17EmitLongInsertLen(i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment12EmitLiterals(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment13EmitInsertLen(i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment10UpdateBits(i64 noundef, i32 noundef, i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment30BuildAndStoreCommandPrefixCode(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment4Hash(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment7IsMatch(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11static_dict24FindMatchLengthWithLimit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment12EmitDistance(i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment23EmitCopyLenLastDistance(i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment11EmitCopyLen(i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFastNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef align 4 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references6Hash14(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24TestStaticDictionaryItem(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq36BrotliCreateZopfliBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1x_ENtB2v_16H10DefaultParamsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq38BrotliCreateHqZopfliBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1z_ENtB2x_16H10DefaultParamsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f32(float) #11

; Function Attrs: nonlazybind uwtable
declare noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost14ShannonEntropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i16, i16 } @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy18min_cost_speed_max(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy15get_cm_cdf_high(ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy12compute_cost(ptr noalias nofree noundef align 4 dereferenceable(64), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy18extract_single_cdf(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 2 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy14get_cm_cdf_low(ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), i64 noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy19get_stride_cdf_high(ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), i8 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy21compute_combined_cost(ptr noalias nofree noundef align 4 dereferenceable(64), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef readonly align 2 captures(none) dead_on_return dereferenceable(32), i8 noundef, ptr noalias nofree noundef align 4 dereferenceable(192)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy10update_cdf(ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy18get_stride_cdf_low(ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), i8 noundef, i64 noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy14min_cost_value(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxtENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropy9init_cdfs(ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull, ptr noalias noundef nonnull align 2, i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxmENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull, ptr noalias noundef nonnull align 4, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references19hash_to_binary_treeINtB5_3H10NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtB5_10H10BucketsB1q_ENtB5_16H10DefaultParamsE4freeCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs2awuzAz5vY4_5tokio2io10async_readINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtB2_9AsyncRead9poll_readB1j_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11static_dict28FindMatchLengthWithLimitMin4(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsl_NtCskKLDkoKarTP_4core3fmtPNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core6HeaderNtB5_7Pointer3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!1730 = !{!1589, !1588, !1583, !1578, !1550}
!1731 = !{!1578, !1550}
!1732 = !{!1591}
!1733 = !{!1593}
!1734 = !{!1596, !1595, !1593, !1591}
!1735 = !{!1598}
!1736 = !{!1601, !1600, !1598, !1593, !1591}
!1737 = !{!1604, !1603, !1598, !1593, !1591}
!1738 = !{!1593, !1591}
!1739 = !{!1606}
!1740 = !{!1609, !1608, !1606, !1591}
!1741 = !{!1611}
!1742 = !{!1614, !1613, !1611, !1606, !1591}
!1743 = !{!1617, !1616, !1611, !1606, !1591}
!1744 = !{!1606, !1591}
!1745 = !{!1619}
!1746 = !{!1622, !1621, !1619, !1591}
!1747 = !{!1624}
!1748 = !{!1627, !1626, !1624, !1619, !1591}
!1749 = !{!1630, !1629, !1624, !1619, !1591}
!1750 = !{!1619, !1591}
!1751 = !{!1632}
!1752 = !{!1634}
!1753 = !{!1637, !1636, !1634, !1632}
!1754 = !{!1639}
!1755 = !{!1642, !1641, !1639, !1634, !1632}
!1756 = !{!1645, !1644, !1639, !1634, !1632}
!1757 = !{!1634, !1632}
!1758 = !{!1647}
!1759 = !{!1650, !1649, !1647, !1632}
!1760 = !{!1652}
!1761 = !{!1655, !1654, !1652, !1647, !1632}
!1762 = !{!1658, !1657, !1652, !1647, !1632}
!1763 = !{!1647, !1632}
!1764 = !{!1660}
!1765 = !{!1663, !1662, !1660, !1632}
!1766 = !{!1665}
!1767 = !{!1668, !1667, !1665, !1660, !1632}
!1768 = !{!1671, !1670, !1665, !1660, !1632}
!1769 = !{!1660, !1632}
!1770 = !{!1673}
!1771 = !{!1675}
!1772 = !{!1678, !1677, !1675, !1673}
!1773 = !{!1680}
!1774 = !{!1683, !1682, !1680, !1675, !1673}
!1775 = !{!1686, !1685, !1680, !1675, !1673}
!1776 = !{!1675, !1673}
!1777 = !{!1688}
!1778 = !{!1691, !1690, !1688, !1673}
!1779 = !{!1693}
!1780 = !{!1696, !1695, !1693, !1688, !1673}
!1781 = !{!1699, !1698, !1693, !1688, !1673}
!1782 = !{!1688, !1673}
!1783 = !{!1701}
!1784 = !{!1704, !1703, !1701, !1673}
!1785 = !{!1706}
!1786 = !{!1709, !1708, !1706, !1701, !1673}
!1787 = !{!1712, !1711, !1706, !1701, !1673}
!1788 = !{!1701, !1673}
!1789 = distinct !{!1789, i1 true, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core"}
!1790 = distinct !{!1790, !1789, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 0"}
!1791 = distinct !{!1791, !1789, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 1"}
!1792 = distinct !{!1792, i1 true, !"_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core"}
!1793 = distinct !{!1793, !1792, !"_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core: argument 0"}
!1794 = distinct !{!1794, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core"}
!1795 = distinct !{!1795, !1794, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 1"}
!1796 = distinct !{!1796, !1794, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 0"}
!1797 = distinct !{!1797, i1 true, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core"}
!1798 = distinct !{!1798, !1797, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 1"}
!1799 = distinct !{!1799, !1797, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 0"}
!1800 = distinct !{!1800, i1 true, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core"}
!1801 = distinct !{!1801, !1800, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 0"}
!1802 = distinct !{!1802, !1800, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 1"}
!1803 = distinct !{!1803, i1 true, !"_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core"}
!1804 = distinct !{!1804, !1803, !"_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core: argument 0"}
!1805 = distinct !{!1805, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core"}
!1806 = distinct !{!1806, !1805, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 1"}
!1807 = distinct !{!1807, !1805, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 0"}
!1808 = distinct !{!1808, i1 true, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core"}
!1809 = distinct !{!1809, !1808, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 1"}
!1810 = distinct !{!1810, !1808, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 0"}
!1811 = distinct !{!1811, i1 true, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core"}
!1812 = distinct !{!1812, !1811, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 0"}
!1813 = distinct !{!1813, !1811, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 1"}
!1814 = distinct !{!1814, i1 true, !"_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core"}
!1815 = distinct !{!1815, !1814, !"_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core: argument 0"}
!1816 = distinct !{!1816, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core"}
!1817 = distinct !{!1817, !1816, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 1"}
!1818 = distinct !{!1818, !1816, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 0"}
!1819 = distinct !{!1819, i1 true, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core"}
!1820 = distinct !{!1820, !1819, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 1"}
!1821 = distinct !{!1821, !1819, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 0"}
!1822 = distinct !{!1822, i1 true, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core"}
!1823 = distinct !{!1823, !1822, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 0"}
!1824 = distinct !{!1824, !1822, !"_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 1"}
!1825 = distinct !{!1825, i1 true, !"_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core"}
!1826 = distinct !{!1826, !1825, !"_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core: argument 0"}
!1827 = distinct !{!1827, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core"}
!1828 = distinct !{!1828, !1827, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 1"}
!1829 = distinct !{!1829, !1827, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 0"}
!1830 = distinct !{!1830, i1 true, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core"}
!1831 = distinct !{!1831, !1830, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 1"}
!1832 = distinct !{!1832, !1830, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 0"}
!1833 = distinct !{!1833, i1 true, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core"}
!1834 = distinct !{!1834, !1833, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 0"}
!1835 = distinct !{!1835, !1833, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 1"}
!1836 = distinct !{!1836, i1 true, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core"}
!1837 = distinct !{!1837, !1836, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core: argument 0"}
!1838 = distinct !{!1838, i1 true, !"_RNvXsk_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H5SubNtB5_21AdvHashSpecialization10hash_shift"}
!1839 = distinct !{!1839, !1838, !"_RNvXsk_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H5SubNtB5_21AdvHashSpecialization10hash_shift: argument 0"}
!1840 = distinct !{!1840, i1 true, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core"}
!1841 = distinct !{!1841, !1840, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 0"}
!1842 = distinct !{!1842, !1840, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 1"}
!1843 = distinct !{!1843, i1 true, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core"}
!1844 = distinct !{!1844, !1843, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core: argument 0"}
!1845 = distinct !{!1845, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core"}
!1846 = distinct !{!1846, !1845, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 1"}
!1847 = distinct !{!1847, !1845, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 0"}
!1848 = distinct !{!1848, i1 true, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core"}
!1849 = distinct !{!1849, !1848, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 1"}
!1850 = distinct !{!1850, !1848, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 0"}
!1851 = distinct !{!1851, i1 true, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core"}
!1852 = distinct !{!1852, !1851, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 0"}
!1853 = distinct !{!1853, !1851, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 1"}
!1854 = distinct !{!1854, i1 true, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core"}
!1855 = distinct !{!1855, !1854, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core: argument 0"}
!1856 = distinct !{!1856, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core"}
!1857 = distinct !{!1857, !1856, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 1"}
!1858 = distinct !{!1858, !1856, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 0"}
!1859 = distinct !{!1859, i1 true, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core"}
!1860 = distinct !{!1860, !1859, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 1"}
!1861 = distinct !{!1861, !1859, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 0"}
!1862 = distinct !{!1862, i1 true, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core"}
!1863 = distinct !{!1863, !1862, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 0"}
!1864 = distinct !{!1864, !1862, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 1"}
!1865 = distinct !{!1865, i1 true, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H6SubNtB5_21AdvHashSpecialization11bucket_size"}
!1866 = distinct !{!1866, !1865, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H6SubNtB5_21AdvHashSpecialization11bucket_size: argument 0"}
!1867 = distinct !{!1867, i1 true, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H6SubNtB5_21AdvHashSpecialization10hash_shift"}
!1868 = distinct !{!1868, !1867, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H6SubNtB5_21AdvHashSpecialization10hash_shift: argument 0"}
!1869 = distinct !{!1869, i1 true, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core"}
!1870 = distinct !{!1870, !1869, !"_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core: argument 0"}
!1871 = distinct !{!1871, i1 true, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H6SubNtB5_21AdvHashSpecialization17load_and_mix_word"}
!1872 = distinct !{!1872, !1871, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H6SubNtB5_21AdvHashSpecialization17load_and_mix_word: argument 0"}
!1873 = distinct !{!1873, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core"}
!1874 = distinct !{!1874, !1873, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 1"}
!1875 = distinct !{!1875, !1873, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core: argument 0"}
!1876 = distinct !{!1876, i1 true, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core"}
!1877 = distinct !{!1877, !1876, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 1"}
!1878 = distinct !{!1878, !1876, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core: argument 0"}
!1879 = distinct !{!1879, i1 true, !"_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core"}
!1880 = distinct !{!1880, !1879, !"_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher7PrepareCskeugdADtBsi_12pingora_core: argument 0"}
!1881 = !{!1790}
!1882 = !{!1791}
!1883 = !{!1790, !1791}
!1884 = !{!1793}
!1885 = !{!1796, !1795, !1793, !1790, !1791}
!1886 = !{!1799, !1798, !1793, !1791}
!1887 = !{!1801}
!1888 = !{!1802}
!1889 = !{!1801, !1802}
!1890 = !{!1804}
!1891 = !{!1807, !1806, !1804, !1801, !1802}
!1892 = !{!1810, !1809, !1804, !1802}
!1893 = !{!1812}
!1894 = !{!1813}
!1895 = !{!1812, !1813}
!1896 = !{!1815}
!1897 = !{!1818, !1817, !1815, !1812, !1813}
!1898 = !{!1821, !1820, !1815, !1813}
!1899 = !{!1823}
!1900 = !{!1824}
!1901 = !{!1823, !1824}
!1902 = !{!1826}
!1903 = !{!1829, !1828, !1826, !1823, !1824}
!1904 = !{!1832, !1831, !1826, !1824}
!1905 = !{!1834}
!1906 = !{!1834, !1835}
!1907 = !{!1839, !1837, !1834}
!1908 = !{!1841}
!1909 = !{!1842}
!1910 = !{!1841, !1842}
!1911 = !{!1844}
!1912 = !{!1847, !1846, !1844, !1841, !1842}
!1913 = !{!1850, !1849, !1844, !1842}
!1914 = !{!1852}
!1915 = !{!1853}
!1916 = !{!1852, !1853}
!1917 = !{!1855}
!1918 = !{!1858, !1857, !1855, !1852, !1853}
!1919 = !{!1861, !1860, !1855, !1853}
!1920 = !{!1863}
!1921 = !{!1864}
!1922 = !{!1866, !1863}
!1923 = !{!1868, !1863}
!1924 = !{!1863, !1864}
!1925 = !{!1870}
!1926 = !{!1875, !1874, !1872, !1870, !1863, !1864}
!1927 = !{!1878, !1877, !1870, !1864}
!1928 = !{!1872}
!1929 = !{!1880}
end_hunk_1
