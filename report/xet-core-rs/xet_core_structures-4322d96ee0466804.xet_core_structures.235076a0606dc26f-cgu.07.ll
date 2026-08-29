Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.07?download=true
inline.NumInlined: 311
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMse_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash8from_hex:bb.a
  br label %bb.q

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit125: ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !322, !noundef !4 ; 2 uses
  %i.cf = icmp sgt i8 %i.ce, -65
  br i1 %i.cf, label %.preheader.i173, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit125.thread, !prof !311

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit125.thread: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit125
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 64, i64 noundef 32, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #29
  unreachable

.preheader.i173:                                  ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit125
  %cond.i158 = icmp eq i8 %i.bf, 43               ; 2 uses
  %.sroa.15.0.i159 = select i1 %cond.i158, i64 15, i64 16
  %.sroa.0.0.idx.i160 = zext i1 %cond.i158 to i64
  %.sroa.0.0.i161 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.0.0.idx.i160
  br label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %.preheader.i173, %bb.l
  %.sroa.0.271.i176 = phi ptr [ %i.cq, %bb.l ], [ %.sroa.0.0.i161, %.preheader.i173 ] ; 2 uses
  %.sroa.15.270.i177 = phi i64 [ %i.cp, %bb.l ], [ %.sroa.15.0.i159, %.preheader.i173 ]
  %.sroa.042.269.i178 = phi i64 [ %i.cs, %bb.l ], [ 0, %.preheader.i173 ]
  %i.cg = load i8, ptr %.sroa.0.271.i176, align 1, !alias.scope !325, !noalias !328, !noundef !4 ; 2 uses
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = icmp ugt i8 %i.cg, 57
  %i.cj = add nsw i32 %i.ch, -65
  %i.ck = and i32 %i.cj, -33
  %i.cl = add nuw nsw i32 %i.ck, 10
  %i.cm = add nsw i32 %i.ch, -48
  %.sroa.02.0.i55.i179 = select i1 %i.ci, i32 %i.cl, i32 %i.cm ; 2 uses
  %i.cn = icmp ult i32 %.sroa.02.0.i55.i179, 16
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i175
  %i.co = shl i64 %.sroa.042.269.i178, 4
  %i.cp = add nsw i64 %.sroa.15.270.i177, -1      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i176, i64 1
  %i.cr = zext nneg i32 %.sroa.02.0.i55.i179 to i64
  %i.cs = or disjoint i64 %i.co, %i.cr            ; 2 uses
  %.not52.i180 = icmp eq i64 %i.cp, 0
  br i1 %.not52.i180, label %.preheader.i199, label %.lr.ph.i175

bb.m:                                             ; preds = %.lr.ph.i175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !330
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 64, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !330
  %i.ct = load i64, ptr %i.a, align 8, !range !120, !noalias !330, !noundef !4
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !121, !noalias !330, !noundef !4 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cu, label %bb.n, label %_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5errorNtB2_13DataHashError20truncate_for_display.exit216, !prof !122

bb.n:                                             ; preds = %bb.m
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !330
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cw, i64 %i.cy) #30, !noalias !330
  unreachable

_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5errorNtB2_13DataHashError20truncate_for_display.exit216: ; preds = %bb.m
  %i.cz = load ptr, ptr %i.cx, align 8, !noalias !330, !nonnull !4, !noundef !4 ; 2 uses
  %i.da = icmp samesign ugt i64 %i.cw, 63
  tail call void @llvm.assume(i1 %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !330
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cz, ptr noundef nonnull readonly align 1 dereferenceable(64) %1, i64 64, i1 false), !noalias !334
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.db, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cw, ptr %.sroa.4111.0..sroa_idx, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cz, ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.5112.sroa.4.0..sroa.5112.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 64, ptr %.sroa.5112.sroa.4.0..sroa.5112.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

.preheader.i199:                                  ; preds = %bb.l
  %cond.i184 = icmp eq i8 %i.ce, 43               ; 2 uses
  %.sroa.15.0.i185 = select i1 %cond.i184, i64 15, i64 16
  %.sroa.0.0.idx.i186 = zext i1 %cond.i184 to i64
  %.sroa.0.0.i187 = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.0.0.idx.i186
  br label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %.preheader.i199, %bb.o
  %.sroa.0.271.i202 = phi ptr [ %i.dm, %bb.o ], [ %.sroa.0.0.i187, %.preheader.i199 ] ; 2 uses
  %.sroa.15.270.i203 = phi i64 [ %i.dl, %bb.o ], [ %.sroa.15.0.i185, %.preheader.i199 ]
  %.sroa.042.269.i204 = phi i64 [ %i.do, %bb.o ], [ 0, %.preheader.i199 ]
  %i.dc = load i8, ptr %.sroa.0.271.i202, align 1, !alias.scope !335, !noalias !338, !noundef !4 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !340
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.l, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !340
  %i.m = load i64, ptr %i.d, align 8, !range !120, !noalias !340, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !121, !noalias !340, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.e, !prof !122

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8, !noalias !340
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #30, !noalias !340
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
  %i.t = load ptr, ptr %i.q, align 8, !noalias !340, !nonnull !4, !noundef !4 ; 7 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !340
  store i64 %i.p, ptr %i.h, align 8, !alias.scope !340
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.t, ptr %i.v, align 8, !alias.scope !340
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.l, ptr %i.w, align 8, !alias.scope !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.x = icmp samesign ugt i64 %i.j, 1
  %..i39 = zext i1 %i.x to i64
  %i.y = add nuw nsw i64 %i.i, %..i39             ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !343
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.y, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  %i.z = load i64, ptr %i.c, align 8, !range !120, !noalias !343, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !121, !noalias !343, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.i, !prof !122

bb.f:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !343
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
  %i.ag = load ptr, ptr %i.ad, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 6 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !343
  store i64 %i.ac, ptr %i.g, align 8, !alias.scope !343
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !alias.scope !343
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.y, ptr %i.aj, align 8, !alias.scope !343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ak = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 2)
  %i.al = add nuw nsw i64 %i.ak, %i.i             ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !346
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.al, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc43 unwind label %bb.h

.noexc43:                                         ; preds = %bb.i
  %i.am = load i64, ptr %i.b, align 8, !range !120, !noalias !346, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !121, !noalias !346, !noundef !4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.k, !prof !122

bb.j:                                             ; preds = %.noexc43
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !346
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #30
          to label %.noexc44 unwind label %bb.h

.noexc44:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc43
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !346, !nonnull !4, !noundef !4 ; 5 uses
  %i.at = ptrtoaddr ptr %i.as to i64              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !346
  store i64 %i.ap, ptr %i.f, align 8, !alias.scope !346
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.au, align 8, !alias.scope !346
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.al, ptr %i.av, align 8, !alias.scope !346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !349
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc46 unwind label %bb.n

.noexc46:                                         ; preds = %bb.k
  %i.aw = load i64, ptr %i.a, align 8, !range !120, !noalias !349, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !121, !noalias !349, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.l, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit48, !prof !122

bb.l:                                             ; preds = %.noexc46
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !349
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.bb) #30
          to label %.noexc47 unwind label %bb.n

.noexc47:                                         ; preds = %bb.l
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit48: ; preds = %.noexc46
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !349, !nonnull !4, !noundef !4 ; 4 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !349
  store i64 %i.az, ptr %i.e, align 8, !alias.scope !349
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bc, ptr %i.be, align 8, !alias.scope !349
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.i, ptr %i.bf, align 8, !alias.scope !349
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
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.al)
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.l)
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.y)
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bm) ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bt, 16
  br i1 %min.iters.check, label %.lr.ph.preheader214, label %vector.memcheck

.lr.ph.preheader214:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.sroa.01.092.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bv = sub i64 %i.u, %i.ah
  %diff.check = icmp ugt i64 %i.bv, -16
  %i.bw = sub i64 %i.u, %i.at
  %diff.check205.a = icmp ugt i64 %i.bw, -16
  %conflict.rdx = or i1 %diff.check, %diff.check205.a
  %i.bx = sub i64 %i.u, %i.bd
  %diff.check206 = icmp ugt i64 %i.bx, -16
  %conflict.rdx207 = or i1 %conflict.rdx, %diff.check206
  %i.by = sub i64 %i.ah, %i.at
  %diff.check208 = icmp ugt i64 %i.by, -16
  %conflict.rdx209 = or i1 %conflict.rdx207, %diff.check208
  %i.bz = sub i64 %i.ah, %i.bd
  %diff.check210 = icmp ugt i64 %i.bz, -16
  %conflict.rdx211 = or i1 %conflict.rdx209, %diff.check210
  %i.ca = sub i64 %i.at, %i.bd
  %diff.check212 = icmp ugt i64 %i.ca, -16
  %conflict.rdx213 = or i1 %conflict.rdx211, %diff.check212
  br i1 %conflict.rdx213, label %.lr.ph.preheader214, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cb = and i64 %i.bu, 15                       ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 16, i64 %i.cb
  %n.vec = sub nsw i64 %i.bu, %i.cd               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 21 uses
  %i.ce = shl nuw nsw i64 %index, 2               ; 4 uses
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
  %i.ct = shl i64 %index, 2                       ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 44
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 52
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %i.ct
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 60
  %i.dz = load i8, ptr %i.cu, align 1, !noundef !4
  %i.ea = load i8, ptr %i.cw, align 1, !noundef !4
  %i.eb = load i8, ptr %i.cy, align 1, !noundef !4
  %i.ec = load i8, ptr %i.da, align 1, !noundef !4
  %i.ed = load i8, ptr %i.dc, align 1, !noundef !4
  %i.ee = load i8, ptr %i.de, align 1, !noundef !4
  %i.ef = load i8, ptr %i.dg, align 1, !noundef !4
  %i.eg = load i8, ptr %i.di, align 1, !noundef !4
  %i.eh = load i8, ptr %i.dk, align 1, !noundef !4
  %i.ei = load i8, ptr %i.dm, align 1, !noundef !4
  %i.ej = load i8, ptr %i.do, align 1, !noundef !4
  %i.ek = load i8, ptr %i.dq, align 1, !noundef !4
  %i.el = load i8, ptr %i.ds, align 1, !noundef !4
  %i.em = load i8, ptr %i.du, align 1, !noundef !4
  %i.en = load i8, ptr %i.dw, align 1, !noundef !4
  %i.eo = load i8, ptr %i.dy, align 1, !noundef !4
  %i.ep = insertelement <16 x i8> poison, i8 %i.dz, i64 0
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 1
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 2
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 3
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 4
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 5
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 6
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 7
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 8
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 9
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 10
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 11
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 12
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 13
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 14
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 15
  %i.ff = getelementptr inbounds nuw i8, ptr %i.t, i64 %index
  store <16 x i8> %i.fe, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 5
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 9
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 13
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 17
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 21
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 25
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 29
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 33
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 37
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 41
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 45
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 49
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 53
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 57
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 %i.ct
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 61
  %i.gm = load i8, ptr %i.fh, align 1, !noundef !4
  %i.gn = load i8, ptr %i.fj, align 1, !noundef !4
  %i.go = load i8, ptr %i.fl, align 1, !noundef !4
  %i.gp = load i8, ptr %i.fn, align 1, !noundef !4
  %i.gq = load i8, ptr %i.fp, align 1, !noundef !4
  %i.gr = load i8, ptr %i.fr, align 1, !noundef !4
  %i.gs = load i8, ptr %i.ft, align 1, !noundef !4
  %i.gt = load i8, ptr %i.fv, align 1, !noundef !4
  %i.gu = load i8, ptr %i.fx, align 1, !noundef !4
  %i.gv = load i8, ptr %i.fz, align 1, !noundef !4
  %i.gw = load i8, ptr %i.gb, align 1, !noundef !4
  %i.gx = load i8, ptr %i.gd, align 1, !noundef !4
  %i.gy = load i8, ptr %i.gf, align 1, !noundef !4
  %i.gz = load i8, ptr %i.gh, align 1, !noundef !4
  %i.ha = load i8, ptr %i.gj, align 1, !noundef !4
  %i.hb = load i8, ptr %i.gl, align 1, !noundef !4
  %i.hc = insertelement <16 x i8> poison, i8 %i.gm, i64 0
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 1
  %i.he = insertelement <16 x i8> %i.hd, i8 %i.go, i64 2
  %i.hf = insertelement <16 x i8> %i.he, i8 %i.gp, i64 3
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 4
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 5
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 6
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 7
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 8
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 9
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 10
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 11
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 12
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 13
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 14
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 15
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index
  store <16 x i8> %i.hr, ptr %i.hs, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 6
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 10
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 14
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 18
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 22
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg418bg4_split_separate:bb.a
  %i.jz = insertelement <16 x i8> %i.jy, i8 %i.jj, i64 10
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 11
  %i.kb = insertelement <16 x i8> %i.ka, i8 %i.jl, i64 12
  %i.kc = insertelement <16 x i8> %i.kb, i8 %i.jm, i64 13
  %i.kd = insertelement <16 x i8> %i.kc, i8 %i.jn, i64 14
  %i.ke = insertelement <16 x i8> %i.kd, i8 %i.jo, i64 15
  %i.kf = getelementptr inbounds nuw i8, ptr %i.as, i64 %index
  store <16 x i8> %i.ke, ptr %i.kf, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 3
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 7
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 11
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 15
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 19
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 23
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 27
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 31
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 35
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 39
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 43
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 47
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 51
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 55
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 59
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 %i.ct
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 63
  %i.lm = load i8, ptr %i.kh, align 1, !noundef !4
  %i.ln = load i8, ptr %i.kj, align 1, !noundef !4
  %i.lo = load i8, ptr %i.kl, align 1, !noundef !4
  %i.lp = load i8, ptr %i.kn, align 1, !noundef !4
  %i.lq = load i8, ptr %i.kp, align 1, !noundef !4
  %i.lr = load i8, ptr %i.kr, align 1, !noundef !4
  %i.ls = load i8, ptr %i.kt, align 1, !noundef !4
  %i.lt = load i8, ptr %i.kv, align 1, !noundef !4
  %i.lu = load i8, ptr %i.kx, align 1, !noundef !4
  %i.lv = load i8, ptr %i.kz, align 1, !noundef !4
  %i.lw = load i8, ptr %i.lb, align 1, !noundef !4
  %i.lx = load i8, ptr %i.ld, align 1, !noundef !4
  %i.ly = load i8, ptr %i.lf, align 1, !noundef !4
  %i.lz = load i8, ptr %i.lh, align 1, !noundef !4
  %i.ma = load i8, ptr %i.lj, align 1, !noundef !4
  %i.mb = load i8, ptr %i.ll, align 1, !noundef !4
  %i.mc = insertelement <16 x i8> poison, i8 %i.lm, i64 0
  %i.md = insertelement <16 x i8> %i.mc, i8 %i.ln, i64 1
  %i.me = insertelement <16 x i8> %i.md, i8 %i.lo, i64 2
  %i.mf = insertelement <16 x i8> %i.me, i8 %i.lp, i64 3
  %i.mg = insertelement <16 x i8> %i.mf, i8 %i.lq, i64 4
  %i.mh = insertelement <16 x i8> %i.mg, i8 %i.lr, i64 5
  %i.mi = insertelement <16 x i8> %i.mh, i8 %i.ls, i64 6
  %i.mj = insertelement <16 x i8> %i.mi, i8 %i.lt, i64 7
  %i.mk = insertelement <16 x i8> %i.mj, i8 %i.lu, i64 8
  %i.ml = insertelement <16 x i8> %i.mk, i8 %i.lv, i64 9
  %i.mm = insertelement <16 x i8> %i.ml, i8 %i.lw, i64 10
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 11
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 12
  %i.mp = insertelement <16 x i8> %i.mo, i8 %i.lz, i64 13
  %i.mq = insertelement <16 x i8> %i.mp, i8 %i.ma, i64 14
  %i.mr = insertelement <16 x i8> %i.mq, i8 %i.mb, i64 15
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index
  store <16 x i8> %i.mr, ptr %i.ms, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mt = icmp eq i64 %index.next, %n.vec
  br i1 %i.mt, label %.lr.ph.preheader214, label %vector.body, !llvm.loop !352

bb.m:                                             ; preds = %bb.s, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ng, %bb.s ], [ %i.mu, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #25
          to label %bb.g unwind label %bb.ae

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

._crit_edge:                                      ; preds = %bb.ad, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit48
  switch i64 %i.j, label %default.unreachable167 [
    i64 1, label %bb.p
    i64 2, label %bb.q
    i64 3, label %bb.r
    i64 0, label %bb.o
  ]

.lr.ph:                                           ; preds = %.lr.ph.preheader214, %bb.ad
  %.sroa.01.092 = phi i64 [ %i.mv, %bb.ad ], [ %.sroa.01.092.ph, %.lr.ph.preheader214 ] ; 18 uses
  %i.mv = add nuw nsw i64 %.sroa.01.092, 1        ; 2 uses
  %i.mw = shl nuw nsw i64 %.sroa.01.092, 2        ; 5 uses
  %exitcond.not = icmp eq i64 %.sroa.01.092, %i.bh
  br i1 %exitcond.not, label %.invoke, label %bb.w

default.unreachable167:                           ; preds = %._crit_edge
  unreachable

.sink.split:                                      ; preds = %bb.v, %bb.t, %bb.p
  %.sink = phi i64 [ %i.nk, %bb.t ], [ %i.nd, %bb.p ], [ %i.nu, %bb.v ]
  %.sink201 = phi ptr [ %i.ag, %bb.t ], [ %i.t, %bb.p ], [ %i.as, %bb.v ]
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.my = load i8, ptr %i.mx, align 1, !noundef !4
  %i.mz = getelementptr inbounds nuw i8, ptr %.sink201, i64 %i.i
  store i8 %i.my, ptr %i.mz, align 1
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.na, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nb, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nc, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.p:                                             ; preds = %._crit_edge
  %i.nd = and i64 %2, 9223372036854775804         ; 2 uses
  %.not35 = icmp eq i64 %i.nd, %2
  br i1 %.not35, label %.invoke, label %.sink.split

bb.q:                                             ; preds = %._crit_edge
  %i.ne = and i64 %2, 9223372036854775804         ; 3 uses
  %.not34 = icmp eq i64 %i.ne, %2
  br i1 %.not34, label %.invoke, label %bb.t

bb.r:                                             ; preds = %._crit_edge
  %i.nf = and i64 %2, 9223372036854775804         ; 4 uses
  %.not = icmp eq i64 %i.nf, %2
  br i1 %.not, label %.invoke, label %bb.u

bb.s:                                             ; preds = %.invoke
  %i.ng = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #25
          to label %bb.m unwind label %bb.ae

bb.t:                                             ; preds = %bb.q
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ne
  %i.ni = load i8, ptr %i.nh, align 1, !noundef !4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.i
  store i8 %i.ni, ptr %i.nj, align 1
  %i.nk = or disjoint i64 %i.ne, 1                ; 3 uses
  %i.nl = icmp samesign ult i64 %i.nk, %2
  br i1 %i.nl, label %.sink.split, label %.invoke

bb.u:                                             ; preds = %bb.r
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 %i.nf
  %i.nn = load i8, ptr %i.nm, align 1, !noundef !4
  %i.no = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.i
  store i8 %i.nn, ptr %i.no, align 1
  %i.np = or disjoint i64 %i.nf, 1                ; 3 uses
  %i.nq = icmp samesign ult i64 %i.np, %2
  br i1 %i.nq, label %bb.v, label %.invoke

bb.v:                                             ; preds = %bb.u
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 %i.np
  %i.ns = load i8, ptr %i.nr, align 1, !noundef !4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.i
  store i8 %i.ns, ptr %i.nt, align 1
  %i.nu = or disjoint i64 %i.nf, 2                ; 3 uses
  %i.nv = icmp samesign ult i64 %i.nu, %2
  br i1 %i.nv, label %.sink.split, label %.invoke

bb.w:                                             ; preds = %.lr.ph
  %i.nw = icmp samesign ult i64 %.sroa.01.092, %i.l
  br i1 %i.nw, label %bb.x, label %.invoke

bb.x:                                             ; preds = %bb.w
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 %i.mw
  %i.ny = load i8, ptr %i.nx, align 1, !noundef !4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.092
  store i8 %i.ny, ptr %i.nz, align 1
  %i.oa = or disjoint i64 %i.mw, 1                ; 2 uses
  %exitcond145.not = icmp eq i64 %.sroa.01.092, %i.bj
  br i1 %exitcond145.not, label %.invoke, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ob = icmp samesign ult i64 %.sroa.01.092, %i.y
  br i1 %i.ob, label %bb.z, label %.invoke

bb.z:                                             ; preds = %bb.y
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 %i.oa
  %i.od = load i8, ptr %i.oc, align 1, !noundef !4
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.092
  store i8 %i.od, ptr %i.oe, align 1
  %i.of = or disjoint i64 %i.mw, 2                ; 2 uses
  %exitcond147.not.a = icmp eq i64 %.sroa.01.092, %i.bl
  br i1 %exitcond147.not.a, label %.invoke, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.og = icmp samesign ult i64 %.sroa.01.092, %i.al
  br i1 %i.og, label %bb.ab, label %.invoke

bb.ab:                                            ; preds = %bb.aa
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 %i.of
  %i.oi = load i8, ptr %i.oh, align 1, !noundef !4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.092
  store i8 %i.oi, ptr %i.oj, align 1
  %i.ok = or disjoint i64 %i.mw, 3                ; 2 uses
  %exitcond149.not = icmp eq i64 %.sroa.01.092, %i.i
  br i1 %exitcond149.not, label %.invoke, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ol = icmp samesign ult i64 %.sroa.01.092, %i.i
  br i1 %i.ol, label %bb.ad, label %.invoke

bb.ad:                                            ; preds = %bb.ac
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 %i.ok
  %i.on = load i8, ptr %i.om, align 1, !noundef !4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.01.092
  store i8 %i.on, ptr %i.oo, align 1
  %exitcond150.not = icmp eq i64 %i.mv, %i.i
  br i1 %exitcond150.not, label %._crit_edge, label %.lr.ph, !llvm.loop !353

.invoke:                                          ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.lr.ph, %bb.p, %bb.v, %bb.u, %bb.r, %bb.t, %bb.q
  %i.op = phi i64 [ %2, %bb.p ], [ %i.nu, %bb.v ], [ %i.np, %bb.u ], [ %2, %bb.r ], [ %i.nk, %bb.t ], [ %2, %bb.q ], [ %i.ok, %bb.ab ], [ %.sroa.01.092, %bb.aa ], [ %i.of, %bb.z ], [ %.sroa.01.092, %bb.y ], [ %i.oa, %bb.x ], [ %.sroa.01.092, %bb.w ], [ %i.mw, %.lr.ph ], [ %.sroa.01.092, %bb.ac ]
  %i.oq = phi i64 [ %2, %bb.p ], [ %2, %bb.v ], [ %2, %bb.u ], [ %2, %bb.r ], [ %2, %bb.t ], [ %2, %bb.q ], [ %2, %bb.ab ], [ %i.al, %bb.aa ], [ %2, %bb.z ], [ %i.y, %bb.y ], [ %2, %bb.x ], [ %i.l, %bb.w ], [ %2, %.lr.ph ], [ %i.i, %bb.ac ]
  %i.or = phi ptr [ @34, %bb.p ], [ @39, %bb.v ], [ @38, %bb.u ], [ @37, %bb.r ], [ @36, %bb.t ], [ @35, %bb.q ], [ @46, %bb.ab ], [ @45, %bb.aa ], [ @44, %bb.z ], [ @43, %bb.y ], [ @42, %bb.x ], [ @41, %bb.w ], [ @40, %.lr.ph ], [ @47, %bb.ac ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.op, i64 noundef %i.oq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.or) #30
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

bb.ae:                                            ; preds = %bb.s, %bb.m, %bb.g, %bb.c
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.af:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg418bg4_split_together(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = lshr i64 %2, 2                           ; 5 uses
  %i.c = and i64 %2, 3                            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !354
  %i.d = load i64, ptr %i.a, align 8, !range !120, !noalias !354, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !121, !noalias !354, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !122

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !354
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #30, !noalias !354
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !354, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !354
  %i.k = icmp ne i64 %i.c, 0
  %..i = zext i1 %i.k to i64
  %i.l = getelementptr i8, ptr %i.j, i64 %i.b     ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %..i     ; 2 uses
  %i.n = icmp samesign ugt i64 %i.c, 1
  %..i5 = zext i1 %i.n to i64
  %i.o = getelementptr i8, ptr %i.m, i64 %i.b     ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 %..i5    ; 2 uses
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 2)
  %i.r = getelementptr i8, ptr %i.p, i64 %i.b     ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  switch i64 %i.c, label %default.unreachable8 [
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 0, label %bb.d
  ]

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.01.07 = phi i64 [ %i.t, %.lr.ph ], [ 0, %bb.c ] ; 6 uses
  %i.t = add nuw nsw i64 %.sroa.01.07, 1          ; 2 uses
  %i.u = shl nuw nsw i64 %.sroa.01.07, 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 4 uses
  %i.w = load i8, ptr %i.v, align 1, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.07
  store i8 %i.w, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.z = load i8, ptr %i.y, align 1, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.07
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.07
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.07
  store i8 %i.af, ptr %i.ag, align 1
  %exitcond.not = icmp eq i64 %i.t, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

default.unreachable8:                             ; preds = %._crit_edge
  unreachable

bb.d:                                             ; preds = %._crit_edge, %bb.g, %bb.f, %bb.e
  store i64 %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.ah = and i64 %2, 9223372036854775804
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  store i8 %i.aj, ptr %i.l, align 1
  br label %bb.d

bb.f:                                             ; preds = %._crit_edge
  %i.ak = and i64 %2, 9223372036854775804
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !noundef !4
  store i8 %i.am, ptr %i.l, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !noundef !4
  store i8 %i.ao, ptr %i.o, align 1
  br label %bb.d

bb.g:                                             ; preds = %._crit_edge
  %i.ap = and i64 %2, 9223372036854775804
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !4
  store i8 %i.ar, ptr %i.l, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = load i8, ptr %i.as, align 1, !noundef !4
  store i8 %i.at, ptr %i.o, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.av = load i8, ptr %i.au, align 1, !noundef !4
  store i8 %i.av, ptr %i.r, align 1
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg420bg4_regroup_separate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBQ_jjNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg420bg4_regroup_separate0NCINvXsK_NtB1u_5accumjNtB4B_3Sum3sumINtB2g_3MapBF_B2Q_EE0E0EB30_.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.d = icmp samesign ult i64 %2, 4
  br i1 %i.d, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %2, 576460752303423484
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.u, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val.i = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %.val.i, %.sroa.02.0.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %.val.i.1 = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.k = icmp sgt i64 %.val.i.1, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i64 %.val.i.1, %i.h
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 64
  %.val.i.2 = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.o = icmp sgt i64 %.val.i.2, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %.val.i.2, %i.l
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.r = getelementptr i8, ptr %i.q, i64 88
  %.val.i.3 = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.s = icmp sgt i64 %.val.i.3, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %.val.i.3, %i.p                  ; 3 uses
  %i.u = add nuw nsw i64 %.sroa.04.0.i, 4         ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBQ_jjNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg420bg4_regroup_separate0NCINvXsK_NtB1u_5accumjNtB4B_3Sum3sumINtB2g_3MapBF_B2Q_EE0E0EB30_.exit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBQ_jjNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg420bg4_regroup_separate0NCINvXsK_NtB1u_5accumjNtB4B_3Sum3sumINtB2g_3MapBF_B2Q_EE0E0EB30_.exit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBQ_jjNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg420bg4_regroup_separate0NCINvXsK_NtB1u_5accumjNtB4B_3Sum3sumINtB2g_3MapBF_B2Q_EE0E0EB30_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBQ_jjNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg420bg4_regroup_separate0NCINvXsK_NtB1u_5accumjNtB4B_3Sum3sumINtB2g_3MapBF_B2Q_EE0E0EB30_.exit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.u, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBQ_jjNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping3bg420bg4_regroup_separate0NCINvXsK_NtB1u_5accumjNtB4B_3Sum3sumINtB2g_3MapBF_B2Q_EE0E0EB30_.exit.unr-lcssa ]
end_hunk_1
begin_hunk_2_@_RNvNtNtCsG258MDvU3F_3std3sys2fs11remove_file

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtCsG258MDvU3F_3std3sys2fs6rename(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std3sys2fs8metadata(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std3sys2fs8read_dir(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsG258MDvU3F_3std3sys4path4unix8absolute(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEINtNtB8_3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(184), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEINtNtB8_3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(184), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB11_6cursor6CursorRINtNtB8_3vec3VechEEEB1Y_ECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEINtNtB8_3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtNtCs3g1xDapxWLs_6base646engine6Engine6decode5innerNtNtB6_15general_purpose14GeneralPurposeECs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(323), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtNtCs3g1xDapxWLs_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(323), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSmENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBz_E9from_iterINtNtNtBS_8adapters3map3MapINtNtNtBU_5slice4iter4IterhENCNvMNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5errorNtB2X_13DataHashError12format_bytes0EEB31_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex5frameNtB4_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBP_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 9) i8 @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB2_9BlockSize15from_buf_length(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB4_9FrameInfo5write(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB2_9BlockSize8get_size(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare { i64, i64 } @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress17compress_internalNtNtB4_9hashtable11HashTable4KKb0_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare { i64, i64 } @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress17compress_internalNtNtB4_9hashtable11HashTable4KKb1_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB5_9BlockInfo5write(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE16into_boxed_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCsavSoWrwY6uL_6blake310keyed_hash(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsd_CsavSoWrwY6uL_6blake3NtB5_6Hasher9new_keyed(ptr dead_on_unwind noalias nofree noundef writable sret([1920 x i8]) align 8 captures(address) dereferenceable(1920), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsd_CsavSoWrwY6uL_6blake3NtB5_6Hasher8finalize(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1920)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs19_NtCsG258MDvU3F_3std4pathNtB6_4PathNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1u_2eqB3_E0ECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsd_CsavSoWrwY6uL_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef align 8 dereferenceable(1920), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsc_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io4seek4Seek4seek(ptr noalias nofree noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { inlinehint }
attributes #29 = { noinline noreturn }
attributes #30 = { noreturn }
attributes #31 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 0, i64 3}
!6 = !{i8 0, i8 3}
!7 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!10 = distinct !{!10, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!13 = distinct !{!13, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECs31YAwBA1AlL_19xet_core_structures"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECs31YAwBA1AlL_19xet_core_structures: argument 1"}
!16 = !{!12, !17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!15, !20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!25}
!25 = distinct !{!25, !13, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECs31YAwBA1AlL_19xet_core_structures: argument 0:It1"}
!26 = !{!27}
!27 = distinct !{!27, !13, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECs31YAwBA1AlL_19xet_core_structures: argument 1:It1"}
!28 = distinct !{!28, !22}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RNvXs1_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash18passthrough_hasherINtB5_15U64DirectHasherNtNtB7_9data_hash8DataHashENtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64B9_: argument 0"}
!31 = distinct !{!31, !"_RNvXs1_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash18passthrough_hasherINtB5_15U64DirectHasherNtNtB7_9data_hash8DataHashENtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64B9_"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!34 = distinct !{!34, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!37 = distinct !{!37, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!40 = distinct !{!40, !"_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures"}
!41 = !{!42, !43, !36}
!42 = distinct !{!42, !40, !"_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures: argument 1"}
!43 = distinct !{!43, !44, !"_RINvXs11_NtCsG258MDvU3F_3std4pathNtB7_7PathBufNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!44 = distinct !{!44, !"_RINvXs11_NtCsG258MDvU3F_3std4pathNtB7_7PathBufNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures"}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.peeled.count", i32 2}
!47 = !{!48, !39, !42, !43, !36}
!48 = distinct !{!48, !49, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!49 = distinct !{!49, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs31YAwBA1AlL_19xet_core_structures"}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!52 = distinct !{!52, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs31YAwBA1AlL_19xet_core_structures"}
!53 = distinct !{!53, !54, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!54 = distinct !{!54, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!57 = distinct !{!57, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!60 = distinct !{!60, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures"}
!61 = !{!62, !64, !65, !67, !68, !59}
!62 = distinct !{!62, !63, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!63 = distinct !{!63, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs31YAwBA1AlL_19xet_core_structures"}
!64 = distinct !{!64, !63, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs31YAwBA1AlL_19xet_core_structures: argument 1"}
!65 = distinct !{!65, !66, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 0"}
!66 = distinct !{!66, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str"}
!67 = distinct !{!67, !66, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 1"}
!68 = distinct !{!68, !69, !"_RINvXss_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!69 = distinct !{!69, !"_RINvXss_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures"}
!70 = !{!64, !67}
!71 = !{!72, !74}
!72 = distinct !{!72, !73, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!73 = distinct !{!73, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs31YAwBA1AlL_19xet_core_structures"}
!74 = distinct !{!74, !75, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!75 = distinct !{!75, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!78 = distinct !{!78, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEBL_: argument 0"}
!81 = distinct !{!81, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEBL_"}
!82 = !{!83, !85, !80}
!83 = distinct !{!83, !84, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!84 = distinct !{!84, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Cs31YAwBA1AlL_19xet_core_structures"}
!85 = distinct !{!85, !86, !"_RINvXsj_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB6_8DataHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEBa_: argument 0"}
!86 = distinct !{!86, !"_RINvXsj_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB6_8DataHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEBa_"}
!87 = !{!88, !90}
!88 = distinct !{!88, !89, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!89 = distinct !{!89, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs31YAwBA1AlL_19xet_core_structures"}
!90 = distinct !{!90, !91, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!91 = distinct !{!91, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!94 = distinct !{!94, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!95 = !{!96, !98, !99, !101, !102, !104, !105}
!96 = distinct !{!96, !97, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!97 = distinct !{!97, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs31YAwBA1AlL_19xet_core_structures"}
!98 = distinct !{!98, !97, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs31YAwBA1AlL_19xet_core_structures: argument 1"}
!99 = distinct !{!99, !100, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 0"}
!100 = distinct !{!100, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str"}
!101 = distinct !{!101, !100, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 1"}
!102 = distinct !{!102, !103, !"_RINvXs0_NtNtCskKLDkoKarTP_4core4hash5implseNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!103 = distinct !{!103, !"_RINvXs0_NtNtCskKLDkoKarTP_4core4hash5implseNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures"}
!104 = distinct !{!104, !103, !"_RINvXs0_NtNtCskKLDkoKarTP_4core4hash5implseNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures: argument 1"}
!105 = distinct !{!105, !106, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!106 = distinct !{!106, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs31YAwBA1AlL_19xet_core_structures"}
!107 = !{!98, !101, !102}
!108 = !{!109, !111}
!109 = distinct !{!109, !110, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!110 = distinct !{!110, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs31YAwBA1AlL_19xet_core_structures"}
!111 = distinct !{!111, !112, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!112 = distinct !{!112, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary: argument 0"}
!115 = distinct !{!115, !"_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!118 = distinct !{!118, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!119 = !{!"branch_weights", !"expected", i32 4292820, i32 2143190828}
!120 = !{i64 0, i64 2}
!121 = !{i64 0, i64 -9223372036854775807}
!122 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!125 = distinct !{!125, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs31YAwBA1AlL_19xet_core_structures"}
!126 = !{i8 0, i8 9}
!127 = !{i8 0, i8 2}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4initCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!130 = distinct !{!130, !"_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4initCs31YAwBA1AlL_19xet_core_structures"}
!131 = !{i64 0, i64 -9223372036854775808}
!132 = !{i64 -1, i64 20}
!133 = !{!"branch_weights", i32 4000000, i32 4001}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RNvXs4_NtNtCskKLDkoKarTP_4core5slice10specializeSmINtB5_8SpecFillmE9spec_fill: argument 0"}
!136 = distinct !{!136, !"_RNvXs4_NtNtCskKLDkoKarTP_4core5slice10specializeSmINtB5_8SpecFillmE9spec_fill"}
!137 = distinct !{!137, !22, !23}
!138 = !{!"branch_weights", i32 4001, i32 4000000}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_RNvNtCs6f1wo00zwKs_8lz4_flex4sink24vec_sink_for_compression: argument 0"}
!141 = distinct !{!141, !"_RNvNtCs6f1wo00zwKs_8lz4_flex4sink24vec_sink_for_compression"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_RNvNtCs6f1wo00zwKs_8lz4_flex4sink24vec_sink_for_compression: argument 1"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_RNvNtCs6f1wo00zwKs_8lz4_flex4sink24vec_sink_for_compression: argument 0"}
!146 = distinct !{!146, !"_RNvNtCs6f1wo00zwKs_8lz4_flex4sink24vec_sink_for_compression"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_RNvNtCs6f1wo00zwKs_8lz4_flex4sink24vec_sink_for_compression: argument 1"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_RNvMs1_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_12Accumulators10write_many: argument 1"}
!151 = distinct !{!151, !"_RNvMs1_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_12Accumulators10write_many"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"_RNvMs1_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_12Accumulators10write_many: argument 0"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher11finish_with: argument 1"}
!156 = distinct !{!156, !"_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher11finish_with"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher11finish_with: argument 0"}
!159 = distinct !{!159, !160}
!160 = !{!"llvm.loop.unroll.disable"}
!161 = distinct !{!161, !160}
end_hunk_2
