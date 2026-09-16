Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.07?download=true
inline.NumInlined: 311
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMse_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash8from_hex:bb.a
  %i.dc = load i8, ptr %.sroa.0.271.i202, align 1, !alias.scope !341, !noalias !342, !noundef !5 ; 2 uses
  %i.dd = zext i8 %i.dc to i32                    ; 2 uses
  %i.de = icmp ugt i8 %i.dc, 57
  %i.df = add nsw i32 %i.dd, -65
  %i.dg = and i32 %i.df, -33
  %i.dh = add nuw nsw i32 %i.dg, 10
  %i.di = add nsw i32 %i.dd, -48
  %.sroa.02.0.i55.i205 = select i1 %i.de, i32 %i.dh, i32 %i.di ; 2 uses
  %i.dj = icmp ult i32 %.sroa.02.0.i55.i205, 16
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i201
  %i.dk = shl i64 %.sroa.042.269.i204, 4
  %i.dl = add nsw i64 %.sroa.15.270.i203, -1      ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i202, i64 1
  %i.dn = zext nneg i32 %.sroa.02.0.i55.i205 to i64
  %i.do = or disjoint i64 %i.dk, %i.dn            ; 2 uses
  %.not52.i206 = icmp eq i64 %i.dl, 0
  br i1 %.not52.i206, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit207, label %.lr.ph.i201

bb.p:                                             ; preds = %.lr.ph.i201
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call fastcc void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5errorNtB2_13DataHashError20truncate_for_display(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 64)
  %.sroa.666.0.copyload = load i64, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dq, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.666.0.copyload, ptr %.sroa.4122.0..sroa_idx, align 8
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5123.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.q

_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit207: ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.dr, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bt, ptr %.sroa.3.0..sroa_idx2, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cs, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.do, ptr %.sroa.5.0..sroa_idx6, align 8
  store i64 0, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.p, %_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5errorNtB2_13DataHashError20truncate_for_display.exit216, %_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5errorNtB2_13DataHashError20truncate_for_display.exit213, %_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5errorNtB2_13DataHashError20truncate_for_display.exit210, %_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5errorNtB2_13DataHashError20truncate_for_display.exit, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit207
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash4hmac(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RNvCsavSoWrwY6uL_6blake310keyed_hash(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashINtB5_11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileE3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1928 x i8]) align 8 captures(none) dereferenceable(1928) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1920 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMsd_CsavSoWrwY6uL_6blake3NtB5_6Hasher9new_keyed(ptr noalias nofree noundef nonnull sret([1920 x i8]) align 8 captures(address) dereferenceable(1920) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) @29)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1920) %0, ptr noundef nonnull align 8 dereferenceable(1920) %i.a, i64 1920, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1920
  store i32 %1, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = call noundef i32 @close(i32 noundef %1) #27 ; 0 uses
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashINtB5_11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileE4hashB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1928) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsd_CsavSoWrwY6uL_6blake3NtB5_6Hasher8finalize(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1920) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash17compute_data_hash(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsavSoWrwY6uL_6blake310keyed_hash(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash26compute_internal_node_hash(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsavSoWrwY6uL_6blake310keyed_hash(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg418bg4_split_separate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = lshr i64 %2, 2                           ; 16 uses
  %i.j = and i64 %2, 3                            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = icmp ne i64 %i.j, 0
  %..i = zext i1 %i.k to i64
  %i.l = add nuw nsw i64 %i.i, %..i               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !353
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.l, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !353
  %i.m = load i64, ptr %i.d, align 8, !range !10, !noalias !353, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !11, !noalias !353, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8, !noalias !353
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #30, !noalias !353
  unreachable

bb.c:                                             ; preds = %bb.g, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.g ], [ %i.s, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #25
          to label %bb.af unwind label %bb.ae

bb.d:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.q, align 8, !noalias !353, !nonnull !5, !noundef !5 ; 7 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !353
  store i64 %i.p, ptr %i.h, align 8, !alias.scope !353
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.t, ptr %i.v, align 8, !alias.scope !353
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.l, ptr %i.w, align 8, !alias.scope !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.x = icmp samesign ugt i64 %i.j, 1
  %..i39 = zext i1 %i.x to i64
  %i.y = add nuw nsw i64 %i.i, %..i39             ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !354
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.y, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  %i.z = load i64, ptr %i.c, align 8, !range !10, !noalias !354, !noundef !5
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !11, !noalias !354, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.i, !prof !12

bb.f:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !354
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #30
          to label %.noexc40 unwind label %bb.d

.noexc40:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.af, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #25
          to label %bb.c unwind label %bb.ae

bb.h:                                             ; preds = %bb.j, %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %.noexc
  %i.ag = load ptr, ptr %i.ad, align 8, !noalias !354, !nonnull !5, !noundef !5 ; 6 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !354
  store i64 %i.ac, ptr %i.g, align 8, !alias.scope !354
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !alias.scope !354
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.y, ptr %i.aj, align 8, !alias.scope !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ak = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 2)
  %i.al = add nuw nsw i64 %i.ak, %i.i             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !355
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.al, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc43 unwind label %bb.h

.noexc43:                                         ; preds = %bb.i
  %i.am = load i64, ptr %i.b, align 8, !range !10, !noalias !355, !noundef !5
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !11, !noalias !355, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %.noexc43
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !355
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #30
          to label %.noexc44 unwind label %bb.h

.noexc44:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc43
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !355, !nonnull !5, !noundef !5 ; 5 uses
  %i.at = ptrtoaddr ptr %i.as to i64              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !355
  store i64 %i.ap, ptr %i.f, align 8, !alias.scope !355
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.au, align 8, !alias.scope !355
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.al, ptr %i.av, align 8, !alias.scope !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !356
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc46 unwind label %bb.n

.noexc46:                                         ; preds = %bb.k
  %i.aw = load i64, ptr %i.a, align 8, !range !10, !noalias !356, !noundef !5
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !11, !noalias !356, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.l, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit48, !prof !12

bb.l:                                             ; preds = %.noexc46
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !356
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.bb) #30
          to label %.noexc47 unwind label %bb.n

.noexc47:                                         ; preds = %bb.l
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit48: ; preds = %.noexc46
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !356, !nonnull !5, !noundef !5 ; 4 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !356
  store i64 %i.az, ptr %i.e, align 8, !alias.scope !356
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bc, ptr %i.be, align 8, !alias.scope !356
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.i, ptr %i.bf, align 8, !alias.scope !356
  %.not93 = icmp eq i64 %i.i, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit48
  %i.bg = add nuw i64 %2, 3
  %i.bh = lshr i64 %i.bg, 2                       ; 2 uses
  %i.bi = add nuw i64 %2, 2
  %i.bj = lshr i64 %i.bi, 2                       ; 2 uses
  %i.bk = add nuw i64 %2, 1
  %i.bl = lshr i64 %i.bk, 2                       ; 2 uses
  %i.bm = add nsw i64 %i.i, -1
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.bh)
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bj)
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bl)
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.l)
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.y)
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bm) ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bs, 16
  br i1 %min.iters.check, label %.lr.ph.preheader213, label %vector.memcheck

.lr.ph.preheader213:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.sroa.01.092.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bu = sub i64 %i.u, %i.ah
  %diff.check = icmp ugt i64 %i.bu, -16
  %i.bv = sub i64 %i.u, %i.at
  %diff.check204 = icmp ugt i64 %i.bv, -16
  %conflict.rdx = or i1 %diff.check, %diff.check204
  %i.bw = sub i64 %i.u, %i.bd
  %diff.check205 = icmp ugt i64 %i.bw, -16
  %conflict.rdx206 = or i1 %conflict.rdx, %diff.check205
  %i.bx = sub i64 %i.ah, %i.at
  %diff.check207 = icmp ugt i64 %i.bx, -16
  %conflict.rdx208 = or i1 %conflict.rdx206, %diff.check207
  %i.by = sub i64 %i.ah, %i.bd
  %diff.check209 = icmp ugt i64 %i.by, -16
  %conflict.rdx210 = or i1 %conflict.rdx208, %diff.check209
  %i.bz = sub i64 %i.at, %i.bd
  %diff.check211 = icmp ugt i64 %i.bz, -16
  %conflict.rdx212 = or i1 %conflict.rdx210, %diff.check211
  br i1 %conflict.rdx212, label %.lr.ph.preheader213, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ca = and i64 %i.bt, 15                       ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 16, i64 %i.ca
  %n.vec = sub nsw i64 %i.bt, %i.cc               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 21 uses
  %i.cd = shl nuw nsw i64 %index, 2               ; 4 uses
  %i.ce = shl i64 %index, 2                       ; 4 uses
  %i.cf = shl i64 %index, 2                       ; 4 uses
  %i.cg = shl i64 %index, 2                       ; 4 uses
  %i.ch = shl i64 %index, 2                       ; 4 uses
  %i.ci = shl i64 %index, 2                       ; 4 uses
  %i.cj = shl i64 %index, 2                       ; 4 uses
  %i.ck = shl i64 %index, 2                       ; 4 uses
  %i.cl = shl i64 %index, 2                       ; 4 uses
  %i.cm = shl i64 %index, 2                       ; 4 uses
  %i.cn = shl i64 %index, 2                       ; 4 uses
  %i.co = shl i64 %index, 2                       ; 4 uses
  %i.cp = shl i64 %index, 2                       ; 4 uses
  %i.cq = shl i64 %index, 2                       ; 4 uses
  %i.cr = shl i64 %index, 2                       ; 4 uses
  %i.cs = shl i64 %index, 2                       ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 52
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 60
  %i.dy = load i8, ptr %i.ct, align 1, !noundef !5
  %i.dz = load i8, ptr %i.cv, align 1, !noundef !5
  %i.ea = load i8, ptr %i.cx, align 1, !noundef !5
  %i.eb = load i8, ptr %i.cz, align 1, !noundef !5
  %i.ec = load i8, ptr %i.db, align 1, !noundef !5
  %i.ed = load i8, ptr %i.dd, align 1, !noundef !5
  %i.ee = load i8, ptr %i.df, align 1, !noundef !5
  %i.ef = load i8, ptr %i.dh, align 1, !noundef !5
  %i.eg = load i8, ptr %i.dj, align 1, !noundef !5
  %i.eh = load i8, ptr %i.dl, align 1, !noundef !5
  %i.ei = load i8, ptr %i.dn, align 1, !noundef !5
  %i.ej = load i8, ptr %i.dp, align 1, !noundef !5
  %i.ek = load i8, ptr %i.dr, align 1, !noundef !5
  %i.el = load i8, ptr %i.dt, align 1, !noundef !5
  %i.em = load i8, ptr %i.dv, align 1, !noundef !5
  %i.en = load i8, ptr %i.dx, align 1, !noundef !5
  %i.eo = insertelement <16 x i8> poison, i8 %i.dy, i64 0
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 1
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 2
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 3
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 4
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 5
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 6
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 7
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 8
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 9
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 10
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 11
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 12
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 13
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 14
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.t, i64 %index
  store <16 x i8> %i.fd, ptr %i.fe, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 5
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 9
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 13
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 21
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 25
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 29
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 33
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 37
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 41
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 45
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 49
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 53
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 57
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 61
  %i.gl = load i8, ptr %i.fg, align 1, !noundef !5
  %i.gm = load i8, ptr %i.fi, align 1, !noundef !5
  %i.gn = load i8, ptr %i.fk, align 1, !noundef !5
  %i.go = load i8, ptr %i.fm, align 1, !noundef !5
  %i.gp = load i8, ptr %i.fo, align 1, !noundef !5
  %i.gq = load i8, ptr %i.fq, align 1, !noundef !5
  %i.gr = load i8, ptr %i.fs, align 1, !noundef !5
  %i.gs = load i8, ptr %i.fu, align 1, !noundef !5
  %i.gt = load i8, ptr %i.fw, align 1, !noundef !5
  %i.gu = load i8, ptr %i.fy, align 1, !noundef !5
  %i.gv = load i8, ptr %i.ga, align 1, !noundef !5
  %i.gw = load i8, ptr %i.gc, align 1, !noundef !5
  %i.gx = load i8, ptr %i.ge, align 1, !noundef !5
  %i.gy = load i8, ptr %i.gg, align 1, !noundef !5
  %i.gz = load i8, ptr %i.gi, align 1, !noundef !5
  %i.ha = load i8, ptr %i.gk, align 1, !noundef !5
  %i.hb = insertelement <16 x i8> poison, i8 %i.gl, i64 0
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 1
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 2
  %i.he = insertelement <16 x i8> %i.hd, i8 %i.go, i64 3
  %i.hf = insertelement <16 x i8> %i.he, i8 %i.gp, i64 4
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 5
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 6
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 7
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 8
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 9
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 10
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 11
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 12
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 13
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 14
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 15
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index
  store <16 x i8> %i.hq, ptr %i.hr, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 6
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 10
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 14
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 18
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 22
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
end_hunk_0
