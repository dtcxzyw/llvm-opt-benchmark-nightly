Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/base64-rs/original/base64-2bb5e08323c56fc8.base64.be38770df9fbf2a4-cgu.1?download=true
inline.NumInlined: 38
inline.NumDeleted: 23
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd8standard:bb.a
  %i.f = and i64 %i.a, 32768
  %i.g = icmp ne i64 %i.f, 0
  br label %_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new.exit

_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %..i = zext i1 %.sroa.0.0.in.i.i to i8
  tail call void @_RNvMNtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB2_14GeneralPurpose3new(ptr noalias nofree noundef nonnull sret([324 x i8]) align 1 captures(none) dereferenceable(326) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) @4, i24 %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 0, ptr %i.h, align 1, !alias.scope !16, !noalias !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 325
  store i8 %..i, ptr %i.i, align 1, !alias.scope !16, !noalias !21
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd8url_safe(ptr dead_on_unwind noalias nofree noundef writable sret([326 x i8]) align 1 captures(none) dereferenceable(326) %0, i24 %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.a = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !25 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize(), !noalias !25
  %i.d = and i128 %i.c, 32768
  %i.e = icmp ne i128 %i.d, 0
  br label %_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new.exit

bb.c:                                             ; preds = %bb.a
  %i.f = and i64 %i.a, 32768
  %i.g = icmp ne i64 %i.f, 0
  br label %_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new.exit

_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %..i = zext i1 %.sroa.0.0.in.i.i to i8
  tail call void @_RNvMNtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB2_14GeneralPurpose3new(ptr noalias nofree noundef nonnull sret([324 x i8]) align 1 captures(none) dereferenceable(326) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) @5, i24 %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 1, ptr %i.h, align 1, !alias.scope !22, !noalias !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 325
  store i8 %..i, ptr %i.i, align 1, !alias.scope !22, !noalias !27
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx218standard_unchecked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([325 x i8]) align 1 captures(none) dereferenceable(325) %0, i24 %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMNtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB2_14GeneralPurpose3new(ptr noalias nofree noundef nonnull sret([324 x i8]) align 1 captures(none) dereferenceable(324) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(65) @4, i24 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 0, ptr %i.a, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx218url_safe_unchecked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([325 x i8]) align 1 captures(none) dereferenceable(325) %0, i24 %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMNtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB2_14GeneralPurpose3new(ptr noalias nofree noundef nonnull sret([324 x i8]) align 1 captures(none) dereferenceable(324) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(65) @5, i24 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 1, ptr %i.a, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx28standard(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([325 x i8]) align 1 captures(none) dereferenceable(325) initializes((0, 1)) %0, i24 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [325 x i8], align 1               ; 5 uses
  %i.b = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.split, label %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit, !prof !15

.split:                                           ; preds = %bb.a
  %i.d = tail call noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize()
  %i.e = and i128 %i.d, 32768
  %.not4 = icmp eq i128 %i.e, 0
  br i1 %.not4, label %bb.b, label %bb.c

_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit: ; preds = %bb.a
  %i.f = and i64 %i.b, 32768
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split, %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit
  store i8 2, ptr %0, align 1
  br label %bb.d

bb.c:                                             ; preds = %.split, %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB2_14GeneralPurpose3new(ptr noalias nofree noundef nonnull sret([324 x i8]) align 1 captures(none) dereferenceable(325) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(65) @4, i24 %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  store i8 0, ptr %i.g, align 1, !alias.scope !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(325) %0, ptr noundef nonnull align 1 dereferenceable(325) %i.a, i64 325, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx28url_safe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([325 x i8]) align 1 captures(none) dereferenceable(325) initializes((0, 1)) %0, i24 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [325 x i8], align 1               ; 5 uses
  %i.b = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.split, label %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit, !prof !15

.split:                                           ; preds = %bb.a
  %i.d = tail call noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize()
  %i.e = and i128 %i.d, 32768
  %.not4 = icmp eq i128 %i.e, 0
  br i1 %.not4, label %bb.b, label %bb.c

_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit: ; preds = %bb.a
  %i.f = and i64 %i.b, 32768
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split, %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit
  store i8 2, ptr %0, align 1
  br label %bb.d

bb.c:                                             ; preds = %.split, %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB2_14GeneralPurpose3new(ptr noalias nofree noundef nonnull sret([324 x i8]) align 1 captures(none) dereferenceable(325) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(65) @5, i24 %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  store i8 1, ptr %i.g, align 1, !alias.scope !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(325) %0, ptr noundef nonnull align 1 dereferenceable(325) %i.a, i64 325, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(256) %5, ptr noalias nofree noundef nonnull %6, i64 noundef range(i64 0, -9223372036854775808) %7, i64 noundef %8) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = sub i64 %4, %3
  %i.g = and i64 %i.f, -32                        ; 4 uses
  %i.h = add i64 %i.g, %3                         ; 11 uses
  %i.i = icmp ult i64 %i.h, %3
  %.not = icmp ugt i64 %i.h, %2
  %or.cond = or i1 %i.i, %.not
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %i.h, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i.i1058 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i1058, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bf
  %.sroa.0.01061 = phi ptr [ %i.k, %bb.bf ], [ %i.j, %.lr.ph.preheader ] ; 33 uses
  %.sroa.686.01060 = phi i64 [ %i.l, %bb.bf ], [ %i.g, %.lr.ph.preheader ]
  %.sroa.13.01059 = phi i64 [ %i.m, %bb.bf ], [ 0, %.lr.ph.preheader ] ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 32
  %i.l = add i64 %.sroa.686.01060, -32            ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.13.01059, 1
  %i.n = mul nuw i64 %.sroa.13.01059, 24
  %i.o = add nuw i64 %i.n, %8                     ; 4 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = icmp ugt i64 %i.o, -25
  %.not16 = icmp ugt i64 %i.p, %7
  %or.cond23 = or i1 %i.q, %.not16
  br i1 %or.cond23, label %bb.q, label %bb.r, !prof !34

._crit_edge:                                      ; preds = %bb.bf, %bb.c
  %i.r = lshr exact i64 %i.g, 2
  %i.s = icmp ult i64 %4, %i.h
  %.not12 = icmp ugt i64 %4, %2
  %or.cond21 = or i1 %.not12, %i.s
  br i1 %or.cond21, label %bb.d, label %bb.e, !prof !34

bb.d:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %4, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.t = sub nuw nsw i64 %4, %i.h
  %i.u = and i64 %i.t, -4                         ; 2 uses
  %.not.i.i811069 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i811069, label %._crit_edge1075, label %.lr.ph1074.preheader

.lr.ph1074.preheader:                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  br label %.lr.ph1074

.lr.ph1074:                                       ; preds = %.lr.ph1074.preheader, %bb.p
  %.sroa.0109.01071 = phi ptr [ %i.w, %bb.p ], [ %i.v, %.lr.ph1074.preheader ] ; 5 uses
  %.sroa.6110.01071 = phi i64 [ %i.x, %bb.p ], [ %i.u, %.lr.ph1074.preheader ]
  %.sroa.13114.01069 = phi i64 [ %i.y, %bb.p ], [ 0, %.lr.ph1074.preheader ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0109.01071, i64 4
  %i.x = add i64 %.sroa.6110.01071, -4            ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.13114.01069, 1
  %reass.add = add nuw nsw i64 %.sroa.13114.01069, %i.r
  %reass.mul = mul i64 %reass.add, 3
  %i.z = add i64 %reass.mul, %8                   ; 4 uses
  %i.aa = add i64 %i.z, 3                         ; 2 uses
  %i.ab = icmp ugt i64 %i.z, -4
  %.not14 = icmp ugt i64 %i.aa, %7
  %or.cond22 = or i1 %i.ab, %.not14
  br i1 %or.cond22, label %bb.n, label %bb.g, !prof !34

._crit_edge1075:                                  ; preds = %bb.p, %bb.e
  store i8 -2, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %.loopexit291.a, %.loopexit292.a, %.loopexit293, %bb.o, %._crit_edge1075
  ret void

bb.g:                                             ; preds = %.lr.ph1074
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 %i.z
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.ad = load i8, ptr %.sroa.0109.01071, align 1, !alias.scope !35, !noalias !40, !noundef !4 ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !38, !noalias !43, !noundef !4 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0109.01071, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !35, !noalias !40, !noundef !4 ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !38, !noalias !43, !noundef !4 ; 2 uses
  %i.an = icmp eq i8 %i.am, -1
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = shl i64 %.sroa.13114.01069, 2
  %i.ap = add i64 %i.ao, %i.h
  %i.aq = add i64 %i.ap, 1
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0109.01071, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !35, !noalias !40, !noundef !4 ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !38, !noalias !43, !noundef !4 ; 2 uses
  %i.aw = icmp eq i8 %i.av, -1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = shl i64 %.sroa.13114.01069, 2
  %i.ay = add i64 %i.ax, %i.h
  %i.az = add i64 %i.ay, 2
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0109.01071, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !35, !noalias !40, !noundef !4 ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !38, !noalias !43, !noundef !4 ; 2 uses
  %i.bf = icmp eq i8 %i.be, -1
  br i1 %i.bf, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bg = shl i64 %.sroa.13114.01069, 2
  %i.bh = add i64 %i.bg, %i.h
  %i.bi = add i64 %i.bh, 3
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph1074
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

.loopexit:                                        ; preds = %bb.g
  %i.bj = shl i64 %.sroa.13114.01069, 2
  %i.bk = add i64 %i.bj, %i.h
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.i, %bb.k, %bb.m
  %.sroa.14121.0.ph = phi i64 [ %i.aq, %bb.i ], [ %i.bi, %bb.m ], [ %i.az, %bb.k ], [ %i.bk, %.loopexit ]
  %.sroa.10119.0.ph = phi i8 [ %i.aj, %bb.i ], [ %i.bb, %bb.m ], [ %i.as, %bb.k ], [ %i.ad, %.loopexit ]
  store i8 0, ptr %0, align 8
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.10119.0.ph, ptr %.sroa.4239.0..sroa_idx, align 1
  %.sroa.6241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.14121.0.ph, ptr %.sroa.6241.0..sroa_idx, align 8
  br label %bb.f

bb.p:                                             ; preds = %bb.l
  %i.bl = zext i8 %i.ag to i32
  %i.bm = shl i32 %i.bl, 26
  %i.bn = zext i8 %i.am to i32
  %i.bo = shl nuw nsw i32 %i.bn, 20
  %i.bp = or i32 %i.bo, %i.bm
  %i.bq = zext i8 %i.av to i32
  %i.br = shl nuw nsw i32 %i.bq, 14
  %i.bs = or i32 %i.bp, %i.br
  %i.bt = zext i8 %i.be to i32
  %i.bu = shl nuw nsw i32 %i.bt, 8
  %i.bv = or i32 %i.bs, %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44
  %i.bw = call i32 @llvm.bswap.i32(i32 %i.bv)
  store i32 %i.bw, ptr %i.e, align 4, !noalias !44
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull %i.ac, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44
  %.not.i.i81 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i81, label %._crit_edge1075, label %.lr.ph1074

bb.q:                                             ; preds = %.lr.ph
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.o, i64 noundef %i.p, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

bb.r:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.by = load i8, ptr %.sroa.0.01061, align 1, !alias.scope !46, !noalias !51, !noundef !4 ; 2 uses
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !49, !noalias !54, !noundef !4 ; 2 uses
  %i.cc = icmp eq i8 %i.cb, -1
  br i1 %i.cc, label %.loopexit290.a, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !46, !noalias !51, !noundef !4 ; 2 uses
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !49, !noalias !54, !noundef !4 ; 2 uses
  %i.ci = icmp eq i8 %i.ch, -1
  br i1 %i.ci, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !46, !noalias !51, !noundef !4 ; 2 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !49, !noalias !54, !noundef !4 ; 2 uses
  %i.co = icmp eq i8 %i.cn, -1
  br i1 %i.co, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cp = shl i64 %.sroa.13.01059, 5
  %i.cq = add i64 %i.cp, %3
  %i.cr = add i64 %i.cq, 1
  br label %bb.ag

bb.v:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !46, !noalias !51, !noundef !4 ; 2 uses
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !49, !noalias !54, !noundef !4 ; 2 uses
  %i.cx = icmp eq i8 %i.cw, -1
  br i1 %i.cx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cy = shl i64 %.sroa.13.01059, 5
  %i.cz = add i64 %i.cy, %3
  %i.da = add i64 %i.cz, 2
  br label %bb.ag

bb.x:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 4
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !46, !noalias !51, !noundef !4 ; 2 uses
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !49, !noalias !54, !noundef !4 ; 2 uses
  %i.dg = icmp eq i8 %i.df, -1
  br i1 %i.dg, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.dh = shl i64 %.sroa.13.01059, 5
  %i.di = add i64 %i.dh, %3
  %i.dj = add i64 %i.di, 3
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 5
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !46, !noalias !51, !noundef !4 ; 2 uses
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !49, !noalias !54, !noundef !4 ; 2 uses
  %i.dp = icmp eq i8 %i.do, -1
  br i1 %i.dp, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.dq = shl i64 %.sroa.13.01059, 5
  %i.dr = add i64 %i.dq, %3
  %i.ds = add i64 %i.dr, 4
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !46, !noalias !51, !noundef !4 ; 2 uses
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !49, !noalias !54, !noundef !4 ; 2 uses
  %i.dy = icmp eq i8 %i.dx, -1
  br i1 %i.dy, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.dz = shl i64 %.sroa.13.01059, 5
  %i.ea = add i64 %i.dz, %3
  %i.eb = add i64 %i.ea, 5
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 7
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !46, !noalias !51, !noundef !4 ; 2 uses
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !49, !noalias !54, !noundef !4 ; 2 uses
  %i.eh = icmp eq i8 %i.eg, -1
  br i1 %i.eh, label %bb.af, label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ei = shl i64 %.sroa.13.01059, 5
  %i.ej = add i64 %i.ei, %3
  %i.ek = add i64 %i.ej, 6
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.el = shl i64 %.sroa.13.01059, 5
  %i.em = add i64 %i.el, %3
  %i.en = add i64 %i.em, 7
  br label %bb.ag

.loopexit290.a:                                   ; preds = %bb.r
  %i.eo = shl i64 %.sroa.13.01059, 5
  %i.ep = add i64 %i.eo, %3
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit290.a, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.af
  %.sroa.2291.1.ph = phi i64 [ %i.cr, %bb.u ], [ %i.en, %bb.af ], [ %i.ek, %bb.ae ], [ %i.eb, %bb.ac ], [ %i.ds, %bb.aa ], [ %i.dj, %bb.y ], [ %i.da, %bb.w ], [ %i.ep, %.loopexit290.a ]
  %.sroa.14.1.ph = phi i8 [ %i.ce, %bb.u ], [ %i.ed, %bb.af ], [ %i.du, %bb.ae ], [ %i.dl, %bb.ac ], [ %i.dc, %bb.aa ], [ %i.ct, %bb.y ], [ %i.ck, %bb.w ], [ %i.by, %.loopexit290.a ]
  store i8 0, ptr %0, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.14.1.ph, ptr %.sroa.4143.0..sroa_idx, align 1
  %.sroa.6145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2291.1.ph, ptr %.sroa.6145.0..sroa_idx, align 8
  br label %bb.f

bb.ah:                                            ; preds = %bb.ad
  %i.eq = zext i8 %i.cb to i64
  %i.er = shl i64 %i.eq, 58
  %i.es = zext i8 %i.ch to i64
  %i.et = shl nuw nsw i64 %i.es, 52
  %i.eu = or i64 %i.et, %i.er
  %i.ev = zext i8 %i.cn to i64
  %i.ew = shl nuw nsw i64 %i.ev, 46
  %i.ex = or i64 %i.eu, %i.ew
  %i.ey = zext i8 %i.cw to i64
  %i.ez = shl nuw nsw i64 %i.ey, 40
  %i.fa = or i64 %i.ex, %i.ez
  %i.fb = zext i8 %i.df to i64
  %i.fc = shl nuw nsw i64 %i.fb, 34
  %i.fd = or i64 %i.fa, %i.fc
  %i.fe = zext i8 %i.do to i64
  %i.ff = shl nuw nsw i64 %i.fe, 28
  %i.fg = or i64 %i.fd, %i.ff
  %i.fh = zext i8 %i.dx to i64
  %i.fi = shl nuw nsw i64 %i.fh, 22
  %i.fj = or i64 %i.fg, %i.fi
  %i.fk = zext i8 %i.eg to i64
  %i.fl = shl nuw nsw i64 %i.fk, 16
  %i.fm = or i64 %i.fj, %i.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55
  %i.fn = call i64 @llvm.bswap.i64(i64 %i.fm)
  store i64 %i.fn, ptr %i.a, align 8, !noalias !55
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull %i.bx, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bx, i64 6
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.fq = load i8, ptr %i.fo, align 1, !alias.scope !57, !noalias !62, !noundef !4 ; 2 uses
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !60, !noalias !65, !noundef !4 ; 2 uses
  %i.fu = icmp eq i8 %i.ft, -1
  br i1 %i.fu, label %.loopexit291.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.01061, i64 9
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !57, !noalias !62, !noundef !4 ; 2 uses
end_hunk_0
