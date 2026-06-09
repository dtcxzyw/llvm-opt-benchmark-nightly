inline.NumInlined: 1004
inline.NumDeleted: 469
begin_hunk_0_@_ZN3re28Compiler7CaptureENS_4FragEi:bb.a
bb.j:                                             ; preds = %bb.d, %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit, %bb.b
  %.0..0..fca.0.load = phi i64 [ %.0..0..0..0..0..fca.0.load.i20, %bb.d ], [ %.0..0..0..fca.0.load.pre, %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit ], [ %.0..0..0..0..0..fca.0.load.i, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.0..0..fca.0.load, 0
  %.8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.8..8..8..fca.1.load = load i64, ptr %.8..8..8..fca.1.gep.sroa_idx, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.8..8..8..fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

declare void @_ZN3re24Prog4Inst11InitCaptureEij(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN3re28Compiler10BeginRangeEv(ptr noundef nonnull align 8 dereferenceable(204) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = icmp ult i64 %i.b, 128
  tail call void @_ZN4absl12lts_2024011618container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEb(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE18GetPolicyFunctionsEvE5value, i1 noundef zeroext %i.e)
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE5clearEv.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i64 0, ptr %i.g, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3re28Compiler22UncachedRuneByteSuffixEhhbi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(204) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.re2::Frag", align 8        ; 7 uses
  %6 = alloca %"struct.re2::Frag", align 8        ; 8 uses
  %.sroa.05 = alloca <{ i32, %"struct.re2::PatchList", i8 }>, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = tail call noundef i32 @_ZN3re28Compiler9AllocInstEi(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef 1) ; 4 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 8, !tbaa !71
  %.4..4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i64 0, ptr %.4..4..4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %.12..12..12..12..12..12..12..sroa_idx, align 4, !tbaa !72
  %.0..0..0..0..0..0..0..fca.0.load.i.i = load i64, ptr %5, align 8
  %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..8..8..8..8..fca.1.load.i.i = load i64, ptr %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.2.0.extract.trunc.i = trunc i64 %.8..8..8..8..8..8..8..fca.1.load.i.i to i40
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i40 %.sroa.2.0.extract.trunc.i, ptr %.8..8..8..8..8..sroa_idx, align 8
  br label %_ZN3re28Compiler9ByteRangeEiib.exit

bb.c:                                             ; preds = %bb.a
  %i.c = zext i8 %2 to i32
  %i.d = zext i8 %1 to i32
  %i.e = zext nneg i32 %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = zext i1 %3 to i32
  tail call void @_ZN3re24Prog4Inst13InitByteRangeEiiij(ptr noundef nonnull align 4 dereferenceable(8) %i.h, i32 noundef %i.d, i32 noundef %i.c, i32 noundef %i.i, i32 noundef 0)
  %i.j = shl nuw i32 %i.a, 1
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.j to i64
  %.sroa.0.0.insert.insert.i.i = mul nuw i64 %.sroa.2.0.insert.ext.i.i, 4294967297
  store i32 %i.a, ptr %6, align 8, !tbaa !71
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %.4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %.12..12..12..12..12..sroa_idx, align 4, !tbaa !72
  %.0..0..0..0..0..fca.0.load.pre.i = load i64, ptr %6, align 8
  br label %_ZN3re28Compiler9ByteRangeEiib.exit

_ZN3re28Compiler9ByteRangeEiib.exit:              ; preds = %bb.b, %bb.c
  %.0..0..fca.0.load.i = phi i64 [ %.0..0..0..0..0..fca.0.load.pre.i, %bb.c ], [ %.0..0..0..0..0..0..0..fca.0.load.i.i, %bb.b ] ; 2 uses
  %.8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.8..8..8..8..8..fca.1.load.i = load i64, ptr %.8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.0..0..fca.0.load.i, ptr %.sroa.05, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.8..8..8..8..8..fca.1.load.i to i40
  %.sroa.05.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 8
  store i40 %.sroa.2.0.extract.trunc, ptr %.sroa.05.8..sroa_idx, align 8
  %.not = icmp eq i32 %4, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN3re28Compiler9ByteRangeEiib.exit
  %.sroa.05.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 4
  %.sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.03.0.copyload = load i64, ptr %.sroa.05.4..sroa_idx, align 4
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.03.0.copyload to i32 ; 2 uses
  %.not9.i = icmp eq i32 %.sroa.0.0.extract.trunc.i, 0
  br i1 %.not9.i, label %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.m = shl i32 %4, 4
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.010.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.h ] ; 2 uses
  %i.n = lshr i32 %.sroa.0.010.i, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o ; 3 uses
  %i.q = and i32 %.sroa.0.010.i, 1
  %.not8.i = icmp eq i32 %i.q, 0
  br i1 %.not8.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75
  store i32 %4, ptr %i.r, align 4, !tbaa !75
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.p, align 4, !tbaa !73   ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = and i32 %i.t, 15
  %i.w = or disjoint i32 %i.v, %i.m
  store i32 %i.w, ptr %i.p, align 4, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.1.i = phi i32 [ %i.s, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i, label %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit, label %bb.e, !llvm.loop !76

bb.i:                                             ; preds = %_ZN3re28Compiler9ByteRangeEiib.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %i.x, align 4 ; 4 uses
  %.sroa.05.4..sroa_idx22 = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 4
  %.sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.0.0.copyload = load i64, ptr %.sroa.05.4..sroa_idx22, align 4 ; 5 uses
  %.sroa.0.0.extract.trunc.i14 = trunc i64 %.sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.0.0.copyload to i32 ; 3 uses
  %i.y = and i64 %.sroa.01.0.copyload, 4294967295 ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge, label %bb.j

._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge: ; preds = %bb.i
  %.pre = and i64 %.sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.0.0.copyload, 4294967295
  br label %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp eq i32 %.sroa.0.0.extract.trunc.i14, 0
  br i1 %i.aa, label %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = lshr i64 %.sroa.01.0.copyload, 33
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ab ; 3 uses
  %i.ad = and i64 %.sroa.01.0.copyload, 4294967296
  %.not.i15 = icmp eq i64 %i.ad, 0
  br i1 %.not.i15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %.sroa.0.0.extract.trunc.i14, ptr %i.ae, align 4, !tbaa !75
  br label %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = shl i32 %.sroa.0.0.extract.trunc.i14, 4
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.ah = and i32 %i.ag, 15
  %i.ai = or disjoint i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ac, align 4, !tbaa !73
  br label %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit

_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit: ; preds = %._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge, %bb.j, %bb.l, %bb.m
  %.sroa.08.0.insert.ext.i.pre-phi = phi i64 [ %.pre, %._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge ], [ %i.y, %bb.j ], [ %i.y, %bb.l ], [ %i.y, %bb.m ]
  %.sroa.49.0.in.i = phi i64 [ %.sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.0.0.copyload, %._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge ], [ %.sroa.01.0.copyload, %bb.j ], [ %.sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.0.0.copyload, %bb.l ], [ %.sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.05.4..sroa.0.0.copyload, %bb.m ]
  %.sroa.49.0.i = and i64 %.sroa.49.0.in.i, -4294967296
  %.sroa.08.0.insert.insert.i = or disjoint i64 %.sroa.49.0.i, %.sroa.08.0.insert.ext.i.pre-phi
  store i64 %.sroa.08.0.insert.insert.i, ptr %i.x, align 4
  br label %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit

_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit: ; preds = %bb.h, %bb.d, %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit
  %i.aj = trunc i64 %.0..0..fca.0.load.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  ret i32 %i.aj
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3re28Compiler20CachedRuneByteSuffixEhhbi(ptr noundef nonnull align 8 dereferenceable(204) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %4 to i64
  %i.b = shl nsw i64 %i.a, 17
  %i.c = zext i8 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 9
  %i.e = or disjoint i64 %i.b, %i.d
  %i.f = zext i8 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = or disjoint i64 %i.e, %i.g
  %i.i = zext i1 %3 to i64
  %i.j = or disjoint i64 %i.h, %i.i               ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = add i64 %i.j, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw i128 %i.n, 11376068507788127593  ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o                      ; 2 uses
  %i.r = trunc i128 %i.q to i64                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !61, !noalias !80 ; 2 uses
  %i.u = lshr i64 %i.r, 7                         ; 2 uses
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = lshr i64 %i.v, 12
  %i.x = xor i64 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83
  %i.aa = trunc i128 %i.q to i8
  %i.ab = and i8 %i.aa, 127
  %i.ac = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn.i.i = phi i64 [ %i.x, %bb.a ], [ %i.av, %bb.d ]
  %.sroa.12.0.i.i = phi i64 [ 0, %bb.a ], [ %i.au, %bb.d ]
  %.sroa.6.0.i.i = and i64 %.pn.i.i, %i.t         ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !75 ; 3 uses
  %i.ag = icmp eq <16 x i8> %i.ad, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not43.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not43.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.016.044.i.i = phi i16 [ %i.aq, %bb.c ], [ %i.ah, %bb.b ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.044.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.t
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !84
  %i.ao = icmp eq i64 %i.an, %i.j
  br i1 %i.ao, label %bb.e, label %bb.c, !prof !85

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.016.044.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.016.044.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.ar = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.af, <16 x i8> %i.af)
  %i.as = icmp slt <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not41.i.i = icmp eq i16 %i.at, 0
  br i1 %.not41.i.i, label %bb.d, label %bb.f, !prof !60

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.au = add i64 %.sroa.12.0.i.i, 16             ; 2 uses
  %i.av = add i64 %i.au, %.sroa.6.0.i.i
  br label %bb.b, !llvm.loop !86

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !87
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ay = tail call noundef i32 @_ZN3re28Compiler22UncachedRuneByteSuffixEhhbi(ptr noundef nonnull align 8 dereferenceable(204) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) ; 2 uses
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !62, !noalias !89 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 1, i32 1), !noalias !89
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !61, !noalias !94 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = lshr i64 %i.bb, 12
  %i.bd = xor i64 %i.bc, %i.u
  %i.be = load ptr, ptr %i.y, align 8, !noalias !89 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i.i.i.i = phi i64 [ %i.bd, %bb.f ], [ %i.bw, %bb.h ]
  %.sroa.12.0.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.bv, %bb.h ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ba ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.6.0.i.i.i.i
  %i.bg = load <16 x i8>, ptr %i.bf, align 1, !tbaa !75, !noalias !89 ; 3 uses
  %i.bh = icmp eq <16 x i8> %i.ad, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not50.i.i.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not50.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.critedge.i.i.i.i
  %.sroa.019.051.i.i.i.i = phi i16 [ %i.br, %.critedge.i.i.i.i ], [ %i.bi, %bb.g ] ; 3 uses
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i.i.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.6.0.i.i.i.i, %i.bk
  %i.bm = and i64 %i.bl, %i.ba                    ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !84, !noalias !89
  %i.bp = icmp eq i64 %i.bo, %i.j
  br i1 %i.bp, label %_ZN4absl12lts_2024011618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEEixImS4_EEDTclsrT0_5valueclL_ZSt9addressofISC_EPT_RSI_EclL_ZSt7declvalIRSC_EDTcl9__declvalISI_ELi0EEEvEEEEERSB_.exit, label %.critedge.i.i.i.i, !prof !85

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.bq = add i16 %.sroa.019.051.i.i.i.i, -1
  %i.br = and i16 %i.bq, %.sroa.019.051.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.g
  %i.bs = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.bg, <16 x i8> %i.bg)
  %i.bt = icmp slt <16 x i8> %i.bs, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %.not49.i.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not49.i.i.i.i, label %bb.h, label %bb.i, !prof !60

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bv = add i64 %.sroa.12.0.i.i.i.i, 16         ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.6.0.i.i.i.i
  br label %bb.g

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bx = tail call noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.r), !noalias !89 ; 2 uses
  %i.by = load ptr, ptr %i.y, align 8, !tbaa !83, !noalias !89 ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  store i64 %i.j, ptr %i.bz, align 8, !tbaa !97, !noalias !89
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 0, ptr %i.ca, align 8, !tbaa !99, !noalias !89
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEEixImS4_EEDTclsrT0_5valueclL_ZSt9addressofISC_EPT_RSI_EclL_ZSt7declvalIRSC_EDTcl9__declvalISI_ELi0EEEvEEEEERSB_.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEEixImS4_EEDTclsrT0_5valueclL_ZSt9addressofISC_EPT_RSI_EclL_ZSt7declvalIRSC_EDTcl9__declvalISI_ELi0EEEvEEEEERSB_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.i
  %i.cb = phi ptr [ %i.by, %bb.i ], [ %i.be, %.lr.ph.i.i.i.i ]
  %.sroa.031.2.i14.i.i.i = phi i64 [ %i.bx, %bb.i ], [ %i.bm, %.lr.ph.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %.sroa.031.2.i14.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.ay, ptr %i.cd, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEEixImS4_EEDTclsrT0_5valueclL_ZSt9addressofISC_EPT_RSI_EclL_ZSt7declvalIRSC_EDTcl9__declvalISI_ELi0EEEvEEEEERSB_.exit, %bb.e
  %.0 = phi i32 [ %i.ax, %bb.e ], [ %i.ay, %_ZN4absl12lts_2024011618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEEixImS4_EEDTclsrT0_5valueclL_ZSt9addressofISC_EPT_RSI_EclL_ZSt7declvalIRSC_EDTcl9__declvalISI_ELi0EEEvEEEEERSB_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3re28Compiler22IsCachedRuneByteSuffixEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %0, i32 noundef %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.a ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.j = load i16, ptr %i.i, align 2, !tbaa !75
  %i.k = load i32, ptr %i.d, align 4, !tbaa !73
  %i.l = lshr i32 %i.k, 4
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 17
  %i.o = zext i8 %i.f to i64
  %i.p = shl nuw nsw i64 %i.o, 9
  %i.q = or disjoint i64 %i.n, %i.p
  %i.r = zext i8 %i.h to i64
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = or disjoint i64 %i.q, %i.s
  %i.u = and i16 %i.j, 1
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 1, i32 1)
  %i.z = add i64 %i.w, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw i128 %i.aa, 11376068507788127593 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab                   ; 2 uses
  %i.ae = trunc i128 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !61, !noalias !100 ; 2 uses
  %i.ah = lshr i64 %i.ae, 7
  %i.ai = ptrtoint ptr %i.y to i64
  %i.aj = lshr i64 %i.ai, 12
  %i.ak = xor i64 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !83
  %i.an = trunc i128 %i.ad to i8
  %i.ao = and i8 %i.an, 127
  %i.ap = insertelement <16 x i8> poison, i8 %i.ao, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn.i.i = phi i64 [ %i.ak, %bb.a ], [ %i.bi, %bb.d ]
  %.sroa.12.0.i.i = phi i64 [ 0, %bb.a ], [ %i.bh, %bb.d ]
  %.sroa.6.0.i.i = and i64 %.pn.i.i, %i.ag        ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.6.0.i.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !75 ; 3 uses
  %i.at = icmp eq <16 x i8> %i.aq, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not43.i.i = icmp eq i16 %i.au, 0
  br i1 %.not43.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.016.044.i.i = phi i16 [ %i.bd, %bb.c ], [ %i.au, %bb.b ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.044.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.ag
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !84
  %i.bb = icmp eq i64 %i.ba, %i.w
  br i1 %i.bb, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE4findImEENSE_8iteratorERSB_.exit, label %bb.c, !prof !85

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.bc = add i16 %.sroa.016.044.i.i, -1
  %i.bd = and i16 %i.bc, %.sroa.016.044.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.be = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.as, <16 x i8> %i.as)
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %.not41.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not41.i.i, label %bb.d, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE4findImEENSE_8iteratorERSB_.exit, !prof !60

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.bh = add i64 %.sroa.12.0.i.i, 16             ; 2 uses
  %i.bi = add i64 %i.bh, %.sroa.6.0.i.i
  br label %bb.b, !llvm.loop !86

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE4findImEENSE_8iteratorERSB_.exit: ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %.sroa.0.4.ph.i.i = phi i1 [ true, %.lr.ph.i.i ], [ false, %._crit_edge.i.i ]
  ret i1 %.sroa.0.4.ph.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re28Compiler9AddSuffixEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(204) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !48, !range !56, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i32 @_ZN3re28Compiler18AddSuffixRecursiveEii(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef %i.e, i32 noundef %1)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZN3re28Compiler9AllocInstEi(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef 1) ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  %i.q = load i32, ptr %i.d, align 8, !tbaa !79
  tail call void @_ZN3re24Prog4Inst7InitAltEjj(ptr noundef nonnull align 4 dereferenceable(8) %i.p, i32 noundef %i.q, i32 noundef %1)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.b, %bb.d
  %storemerge.sink = phi i32 [ %1, %bb.b ], [ %i.j, %bb.d ], [ %i.k, %bb.f ], [ 0, %bb.e ]
  store i32 %storemerge.sink, ptr %i.d, align 8, !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3re28Compiler18AddSuffixRecursiveEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(204) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZN3re28Compiler13FindByteRangeEii(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef %1, i32 noundef %2)
  %.fca.0.extract = extractvalue { i64, i64 } %i.a, 0 ; 4 uses
  %i.b = and i64 %.fca.0.extract, 4294967295
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN3re28Compiler9AllocInstEi(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef 1) ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  tail call void @_ZN3re24Prog4Inst7InitAltEjj(ptr noundef nonnull align 4 dereferenceable(8) %i.i, i32 noundef %1, i32 noundef %2)
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %.sroa.022.4.extract.shift = lshr i64 %.fca.0.extract, 32 ; 2 uses
  %.sroa.022.4.extract.trunc = trunc nuw i64 %.sroa.022.4.extract.shift to i32 ; 2 uses
  %i.j = icmp eq i64 %.sroa.022.4.extract.shift, 0 ; 2 uses
  br i1 %i.j, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = and i32 %.sroa.022.4.extract.trunc, 1
  %.not = icmp eq i32 %i.k, 0
  %sext75 = shl i64 %.fca.0.extract, 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 3 uses
  %i.n = ashr exact i64 %sext75, 29
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !75
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.o, align 4, !tbaa !73
  %i.s = lshr i32 %i.r, 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f, %bb.g
  %i.t = phi ptr [ %i.m, %bb.g ], [ %i.m, %bb.f ], [ %.pre, %._crit_edge ]
  %.050 = phi i32 [ %i.s, %bb.g ], [ %i.q, %bb.f ], [ %1, %._crit_edge ] ; 2 uses
  %i.u = sext i32 %.050 to i64                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !75
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !73
  %i.ae = lshr i32 %i.ad, 4
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 17
  %i.ah = zext i8 %i.y to i64
  %i.ai = shl nuw nsw i64 %i.ah, 9
  %i.aj = or disjoint i64 %i.ag, %i.ai
  %i.ak = zext i8 %i.aa to i64
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = or disjoint i64 %i.aj, %i.al
  %i.an = and i16 %i.ac, 1
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = or disjoint i64 %i.am, %i.ao            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 1, i32 1)
  %i.as = add i64 %i.ap, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.at = zext i64 %i.as to i128
  %i.au = mul nuw i128 %i.at, 11376068507788127593 ; 2 uses
  %i.av = lshr i128 %i.au, 64
  %i.aw = xor i128 %i.av, %i.au                   ; 2 uses
  %i.ax = trunc i128 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !61, !noalias !103 ; 2 uses
  %i.ba = lshr i64 %i.ax, 7
  %i.bb = ptrtoint ptr %i.ar to i64
  %i.bc = lshr i64 %i.bb, 12
  %i.bd = xor i64 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bg = trunc i128 %i.aw to i8
  %i.bh = and i8 %i.bg, 127
  %i.bi = insertelement <16 x i8> poison, i8 %i.bh, i64 0
  %i.bj = shufflevector <16 x i8> %i.bi, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.cb, %bb.k ]
  %.sroa.12.0.i.i.i = phi i64 [ 0, %bb.h ], [ %i.ca, %bb.k ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i.i.i, %i.az    ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.6.0.i.i.i
  %i.bl = load <16 x i8>, ptr %i.bk, align 1, !tbaa !75 ; 3 uses
  %i.bm = icmp eq <16 x i8> %i.bj, %i.bl
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not43.i.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not43.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.j
  %.sroa.016.044.i.i.i = phi i16 [ %i.bw, %bb.j ], [ %i.bn, %bb.i ] ; 3 uses
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.044.i.i.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.6.0.i.i.i, %i.bp
  %i.br = and i64 %i.bq, %i.az
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !84
  %i.bu = icmp eq i64 %i.bt, %i.ap
  br i1 %i.bu, label %bb.l, label %bb.j, !prof !85

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = add i16 %.sroa.016.044.i.i.i, -1
  %i.bw = and i16 %i.bv, %.sroa.016.044.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.j, %bb.i
  %i.bx = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.bl, <16 x i8> %i.bl)
  %i.by = icmp slt <16 x i8> %i.bx, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16
  %.not41.i.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not41.i.i.i, label %bb.k, label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a, !prof !60

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.ca = add i64 %.sroa.12.0.i.i.i, 16           ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.6.0.i.i.i
  br label %bb.i, !llvm.loop !86

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cc = tail call noundef i32 @_ZN3re28Compiler9AllocInstEi(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef 1) ; 8 uses
  %i.cd = icmp sgt i32 %i.cc, -1
  br i1 %i.cd, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = load ptr, ptr %i.v, align 8, !tbaa !54  ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.u ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !75
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !75
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 6
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !75
  %i.cq = and i16 %i.cp, 1
  %i.cr = zext nneg i16 %i.cq to i32
  %i.cs = load i32, ptr %i.ch, align 4, !tbaa !73
  %i.ct = lshr i32 %i.cs, 4
  tail call void @_ZN3re24Prog4Inst13InitByteRangeEiiij(ptr noundef nonnull align 4 dereferenceable(8) %i.cg, i32 noundef %i.ck, i32 noundef %i.cn, i32 noundef %i.cr, i32 noundef %i.ct)
  br i1 %i.j, label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = and i32 %.sroa.022.4.extract.trunc, 1
  %.not60 = icmp eq i32 %i.cu, 0
  %sext77 = shl i64 %.fca.0.extract, 32
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.cw = ashr exact i64 %sext77, 29
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw ; 3 uses
  br i1 %.not60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.cc, ptr %i.cy, align 4, !tbaa !75
  br label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a

bb.p:                                             ; preds = %bb.n
  %i.cz = shl i32 %i.cc, 4
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !73
  %i.db = and i32 %i.da, 15
  %i.dc = or disjoint i32 %i.db, %i.cz
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !73
  br label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a

_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a: ; preds = %._crit_edge.i.i.i, %bb.m, %bb.o, %bb.p
  %.256 = phi i32 [ %1, %bb.o ], [ %i.cc, %bb.m ], [ %1, %bb.p ], [ %1, %._crit_edge.i.i.i ]
  %.252 = phi i32 [ %i.cc, %bb.o ], [ %i.cc, %bb.m ], [ %i.cc, %bb.p ], [ %.050, %._crit_edge.i.i.i ]
  %i.dd = sext i32 %2 to i64
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !54  ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dd ; 5 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73
  %i.dh = lshr i32 %i.dg, 4                       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !75
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 5
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !75
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !75
  %i.do = zext nneg i32 %i.dh to i64
  %i.dp = shl nuw nsw i64 %i.do, 17
  %i.dq = zext i8 %i.dj to i64
  %i.dr = shl nuw nsw i64 %i.dq, 9
  %i.ds = or disjoint i64 %i.dp, %i.dr
  %i.dt = zext i8 %i.dl to i64
  %i.du = shl nuw nsw i64 %i.dt, 1
  %i.dv = or disjoint i64 %i.ds, %i.du
  %i.dw = and i16 %i.dn, 1
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = or disjoint i64 %i.dv, %i.dx            ; 2 uses
  %i.dz = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.dz, i32 0, i32 1, i32 1)
  %i.ea = add i64 %i.dy, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.eb = zext i64 %i.ea to i128
  %i.ec = mul nuw i128 %i.eb, 11376068507788127593 ; 2 uses
  %i.ed = lshr i128 %i.ec, 64
  %i.ee = xor i128 %i.ed, %i.ec                   ; 2 uses
  %i.ef = trunc i128 %i.ee to i64
  %i.eg = load i64, ptr %i.ay, align 8, !tbaa !61, !noalias !106 ; 2 uses
  %i.eh = lshr i64 %i.ef, 7
  %i.ei = ptrtoint ptr %i.dz to i64
  %i.ej = lshr i64 %i.ei, 12
  %i.ek = xor i64 %i.eh, %i.ej
  %i.el = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.em = trunc i128 %i.ee to i8
  %i.en = and i8 %i.em, 127
  %i.eo = insertelement <16 x i8> poison, i8 %i.en, i64 0
  %i.ep = shufflevector <16 x i8> %i.eo, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a
  %.pn.i.i.i61 = phi i64 [ %i.ek, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a ], [ %i.fh, %bb.s ]
  %.sroa.12.0.i.i.i62 = phi i64 [ 0, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a ], [ %i.fg, %bb.s ]
  %.sroa.6.0.i.i.i63 = and i64 %.pn.i.i.i61, %i.eg ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.6.0.i.i.i63
  %i.er = load <16 x i8>, ptr %i.eq, align 1, !tbaa !75 ; 3 uses
  %i.es = icmp eq <16 x i8> %i.ep, %i.er
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not43.i.i.i64 = icmp eq i16 %i.et, 0
  br i1 %.not43.i.i.i64, label %._crit_edge.i.i.i68, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %bb.q, %bb.r
  %.sroa.016.044.i.i.i66 = phi i16 [ %i.fc, %bb.r ], [ %i.et, %bb.q ] ; 3 uses
  %i.eu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.044.i.i.i66, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  %i.ew = add i64 %.sroa.6.0.i.i.i63, %i.ev
  %i.ex = and i64 %i.ew, %i.eg
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !84
  %i.fa = icmp eq i64 %i.ez, %i.dy
  br i1 %i.fa, label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.thread, label %bb.r, !prof !85

bb.r:                                             ; preds = %.lr.ph.i.i.i65
  %i.fb = add i16 %.sroa.016.044.i.i.i66, -1
  %i.fc = and i16 %i.fb, %.sroa.016.044.i.i.i66   ; 2 uses
  %.not.i.i.i67 = icmp eq i16 %i.fc, 0
  br i1 %.not.i.i.i67, label %._crit_edge.i.i.i68, label %.lr.ph.i.i.i65

._crit_edge.i.i.i68:                              ; preds = %bb.r, %bb.q
  %i.fd = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.er, <16 x i8> %i.er)
  %i.fe = icmp slt <16 x i8> %i.fd, zeroinitializer
  %i.ff = bitcast <16 x i1> %i.fe to i16
  %.not41.i.i.i69 = icmp eq i16 %i.ff, 0
  br i1 %.not41.i.i.i69, label %bb.s, label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.a, !prof !60

bb.s:                                             ; preds = %._crit_edge.i.i.i68
  %i.fg = add i64 %.sroa.12.0.i.i.i62, 16         ; 2 uses
  %i.fh = add i64 %i.fg, %.sroa.6.0.i.i.i63
  br label %bb.q, !llvm.loop !86

_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.a: ; preds = %._crit_edge.i.i.i68
  store i32 0, ptr %i.df, align 4, !tbaa !73
  store i32 0, ptr %i.di, align 4, !tbaa !75
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !51
  %i.fk = add nsw i32 %i.fj, -1
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !51
  %.pre84 = load ptr, ptr %i.v, align 8, !tbaa !54
  br label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.thread

_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.thread: ; preds = %.lr.ph.i.i.i65, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.a
  %i.fl = phi ptr [ %.pre84, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.a ], [ %i.de, %.lr.ph.i.i.i65 ]
  %i.fm = sext i32 %.252 to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !73
  %i.fp = lshr i32 %i.fo, 4
  %i.fq = tail call noundef i32 @_ZN3re28Compiler18AddSuffixRecursiveEii(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef %i.fp, i32 noundef %i.dh) ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %.critedge, label %bb.t

bb.t:                                             ; preds = %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.thread
  %i.fs = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fm ; 2 uses
  %i.fu = shl i32 %i.fq, 4
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !73
  %i.fw = and i32 %i.fv, 15
  %i.fx = or disjoint i32 %i.fw, %i.fu
  store i32 %i.fx, ptr %i.ft, align 4, !tbaa !73
  br label %.critedge

.critedge:                                        ; preds = %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.thread, %bb.t, %bb.l, %bb.c, %bb.b
  %.4 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ], [ 0, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.thread ], [ 0, %bb.l ], [ %.256, %bb.t ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN3re28Compiler13FindByteRangeEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.re2::Frag", align 8        ; 7 uses
  %4 = alloca %"struct.re2::Frag", align 8        ; 7 uses
  %5 = alloca %"struct.re2::Frag", align 8        ; 7 uses
  %6 = alloca %"struct.re2::Frag", align 8        ; 7 uses
  %7 = alloca %"struct.re2::Frag", align 8        ; 19 uses
  %8 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 7 uses
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 8 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.a ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %i.f = and i32 %i.e, 7                          ; 2 uses
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 6 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i8, ptr %i.m, align 8, !range !56
  %.fr101 = freeze i8 %i.n
  %i.o = trunc i8 %.fr101 to i1
  br i1 %i.o, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread.us
  %.0.us = phi i32 [ %i.am, %_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread.us ], [ %1, %.preheader ] ; 4 uses
  %i.p = sext i32 %.0.us to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !73   ; 2 uses
  %i.s = and i32 %i.r, 7
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %.split.us

bb.b:                                             ; preds = %.preheader.split.us
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i8, ptr %i.y, align 4, !tbaa !75
  %i.aa = load i8, ptr %i.j, align 4, !tbaa !75   ; 2 uses
  %i.ab = icmp eq i8 %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread.us

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !75
  %i.ae = load i8, ptr %i.k, align 1, !tbaa !75
  %i.af = icmp eq i8 %i.ad, %i.ae
  br i1 %i.af, label %_ZN3re28Compiler14ByteRangeEqualEii.exit37.us, label %_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread.us

_ZN3re28Compiler14ByteRangeEqualEii.exit37.us:    ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !75
  %i.ai = load i16, ptr %i.l, align 2, !tbaa !75
  %i.aj = xor i16 %i.ai, %i.ah
  %i.ak = and i16 %i.aj, 1
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %.split93.us, label %_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread.us

_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread.us: ; preds = %_ZN3re28Compiler14ByteRangeEqualEii.exit37.us, %bb.c, %bb.b
  %i.am = lshr i32 %i.r, 4                        ; 2 uses
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.aq = and i32 %i.ap, 7
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.preheader.split.us, label %.split95.us

bb.d:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.at = load i8, ptr %i.as, align 4, !tbaa !75
  %i.au = sext i32 %2 to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !75
  %i.ay = icmp eq i8 %i.at, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZN3re28Compiler14ByteRangeEqualEii.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !75
  %i.bd = icmp eq i8 %i.ba, %i.bc
  br i1 %i.bd, label %_ZN3re28Compiler14ByteRangeEqualEii.exit, label %_ZN3re28Compiler14ByteRangeEqualEii.exit.thread

_ZN3re28Compiler14ByteRangeEqualEii.exit:         ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !75
  %i.bi = xor i16 %i.bh, %i.bf
  %i.bj = and i16 %i.bi, 1
  %i.bk = icmp eq i16 %i.bj, 0
  br i1 %i.bk, label %bb.f, label %_ZN3re28Compiler14ByteRangeEqualEii.exit.thread

bb.f:                                             ; preds = %_ZN3re28Compiler14ByteRangeEqualEii.exit
  store i32 %1, ptr %7, align 8, !tbaa !71
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i64 0, ptr %.4..4..4..sroa_idx, align 4
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %.12..12..12..sroa_idx, align 4, !tbaa !72
  br label %.thread

_ZN3re28Compiler14ByteRangeEqualEii.exit.thread:  ; preds = %bb.d, %bb.e, %_ZN3re28Compiler14ByteRangeEqualEii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 0, ptr %6, align 8, !tbaa !71
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i64 0, ptr %.4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %.12..12..12..12..12..sroa_idx, align 4, !tbaa !72
  %.0..0..0..0..0..fca.0.load.i = load i64, ptr %6, align 8
  %.8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.8..8..8..8..8..fca.1.load.i = load i64, ptr %.8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.0..0..0..0..0..fca.0.load.i, ptr %7, align 8
  %.sroa.219.0.extract.trunc = trunc i64 %.8..8..8..8..8..fca.1.load.i to i40
  %.8..8..8..sroa_idx138 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i40 %.sroa.219.0.extract.trunc, ptr %.8..8..8..sroa_idx138, align 8
  br label %.thread

.preheader.split:                                 ; preds = %.preheader
  %i.bl = icmp eq i32 %i.f, 0
  br i1 %i.bl, label %bb.g, label %.split.us

bb.g:                                             ; preds = %.preheader.split
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !75
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !75
  %i.bs = load i8, ptr %i.j, align 4, !tbaa !75
  %i.bt = icmp eq i8 %i.br, %i.bs
  br i1 %i.bt, label %bb.h, label %_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 5
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !75
  %i.bw = load i8, ptr %i.k, align 1, !tbaa !75
  %i.bx = icmp eq i8 %i.bv, %i.bw
  br i1 %i.bx, label %_ZN3re28Compiler14ByteRangeEqualEii.exit37, label %_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread

_ZN3re28Compiler14ByteRangeEqualEii.exit37:       ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !75
  %i.ca = load i16, ptr %i.l, align 2, !tbaa !75
  %i.cb = xor i16 %i.ca, %i.bz
  %i.cc = and i16 %i.cb, 1
  %i.cd = icmp eq i16 %i.cc, 0
  br i1 %i.cd, label %.split93.us, label %_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread

.split93.us:                                      ; preds = %_ZN3re28Compiler14ByteRangeEqualEii.exit37.us, %_ZN3re28Compiler14ByteRangeEqualEii.exit37
  %.us-phi = phi i32 [ %1, %_ZN3re28Compiler14ByteRangeEqualEii.exit37 ], [ %.0.us, %_ZN3re28Compiler14ByteRangeEqualEii.exit37.us ] ; 2 uses
  %i.ce = shl i32 %.us-phi, 1
  %i.cf = or disjoint i32 %i.ce, 1
  %.sroa.2.0.insert.ext.i = zext i32 %i.cf to i64
  %.sroa.0.0.insert.insert.i = mul nuw i64 %.sroa.2.0.insert.ext.i, 4294967297
  store i32 %.us-phi, ptr %7, align 8, !tbaa !71
  %.4..4..4..sroa_idx134 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i64 %.sroa.0.0.insert.insert.i, ptr %.4..4..4..sroa_idx134, align 4
  %.12..12..12..sroa_idx139 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %.12..12..12..sroa_idx139, align 4, !tbaa !72
  br label %.thread

_ZN3re28Compiler14ByteRangeEqualEii.exit37.thread: ; preds = %_ZN3re28Compiler14ByteRangeEqualEii.exit37, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 8, !tbaa !71
  %.4..4..4..4..4..sroa_idx141 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i64 0, ptr %.4..4..4..4..4..sroa_idx141, align 4
end_hunk_0
