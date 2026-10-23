Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.06?download=true
inline.NumInlined: 5464
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecARNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_E8try_growCs6u1mgJOKDyY_13rust_analyzer:bb.a
  ret { i64, i64 } %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCs42rJDHPiiam_15crossbeam_epoch6atomicINtB5_6SharedINtNtCshVaWp8U3tmP_15crossbeam_deque5deque6BufferNtNtCsdtH0xi6p5qe_10rayon_core3job6JobRefEE5derefCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !7
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 1 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i64 6732230515997387111, ptr %i.b, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -2148975778017607884, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -3868444412471362514, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -8552852766154903181, ptr %.sroa.624.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.f = load i8, ptr %i.e, align 8, !range !34, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 249
  %i.h = load i16, ptr %i.g, align 1
  %i.i = zext i16 %i.h to i32
  %i.j = shl nuw i32 %i.i, 16
  %.sroa.426.0.insert.ext = zext nneg i8 %i.f to i32
  %.sroa.426.0.insert.shift = shl nuw nsw i32 %.sroa.426.0.insert.ext, 8
  %.sroa.025.0.insert.ext = zext i1 %2 to i32
  %.sroa.426.0.insert.insert = or disjoint i32 %.sroa.426.0.insert.shift, %.sroa.025.0.insert.ext
  %.sroa.025.0.insert.insert = or disjoint i32 %.sroa.426.0.insert.insert, %i.j
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj4_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %.sroa.025.0.insert.insert)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !26, !noundef !7 ; 2 uses
  %i.n = icmp samesign ugt i8 %i.m, 23
  %i.o = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.p = add nsw i64 %i.o, -23
  %i.q = select i1 %i.n, i64 %i.p, i64 0
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load i64, ptr %i.r, align 8, !noundef !7
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = load i64, ptr %i.t, align 8, !noundef !7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.02.0 = phi i64 [ %i.u, %bb.d ], [ %i.s, %bb.c ], [ %i.o, %bb.a ]
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sroa.02.0)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.v = load i64, ptr %i.k, align 8, !range !16, !noundef !7
  %i.w = icmp ne i64 %i.v, -1                     ; 2 uses
  %i.x = zext i1 %i.w to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.x)
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i64, ptr %i.y, align 8, !noundef !7 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.z)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !noundef !7
  %i.ad = icmp ne i64 %i.ac, -1                   ; 2 uses
  %i.ae = zext i1 %i.ad to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.ae)
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !noundef !7 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  call void @llvm.assume(i1 %i.ah)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.ag)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 251
  %i.aj = load i8, ptr %i.ai, align 1, !range !10400, !noundef !7 ; 3 uses
  %i.ak = icmp samesign ugt i8 %i.aj, 29
  %i.al = zext nneg i8 %i.aj to i64
  %i.am = add nsw i64 %i.al, -29
  %i.an = select i1 %i.ak, i64 %i.am, i64 0
  switch i64 %i.an, label %bb.j [
    i64 0, label %switch.lookup
    i64 1, label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.l:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.m:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.n:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.o:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.p:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

switch.lookup:                                    ; preds = %bb.i
  %i.ao = zext nneg i8 %i.aj to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash, i64 %i.ao
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit: ; preds = %switch.lookup, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sroa.02.0.i = phi ptr [ @157, %bb.i ], [ %switch.load, %switch.lookup ], [ @162, %bb.o ], [ @161, %bb.n ], [ @160, %bb.m ], [ @159, %bb.l ], [ @158, %bb.k ], [ @163, %bb.p ]
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 2)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i, i64 noundef 2)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !range !26, !noundef !7 ; 2 uses
  %i.ar = icmp samesign ugt i8 %i.aq, 23
  %i.as = zext nneg i8 %i.aq to i64               ; 2 uses
  %i.at = add nsw i64 %i.as, -23
  %i.au = select i1 %i.ar, i64 %i.at, i64 0
  switch i64 %i.au, label %bb.b [
    i64 0, label %bb.s
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.q:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aw = load i64, ptr %i.av, align 8, !noundef !7
  br label %bb.s

bb.r:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !7
  br label %bb.s

bb.s:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit, %bb.r, %bb.q
  %.sroa.09.0 = phi i64 [ %i.ay, %bb.r ], [ %i.aw, %bb.q ], [ %i.as, %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit ]
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sroa.09.0)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !noundef !7
  %i.bb = icmp ne i64 %i.ba, -1                   ; 2 uses
  %i.bc = zext i1 %i.bb to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.bc)
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.be = load i64, ptr %i.bd, align 8, !noundef !7 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bf)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.be)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.experimental.noalias.scope.decl(metadata !10401)
  %i.bh = load i16, ptr %i.bg, align 8, !alias.scope !10401
  %i.bi = zext i16 %i.bh to i40
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 155
  %3 = load i16, ptr %i.bj, align 1, !alias.scope !10401
  %4 = zext i16 %3 to i40
  %5 = shl nuw nsw i40 %4, 16
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.bl = load i8, ptr %i.bk, align 1, !range !34, !alias.scope !10401, !noundef !7
  %.sroa.014.3.insert.insert.i = or disjoint i40 %5, %i.bi
  %.sroa.014.4.insert.ext.i = zext nneg i8 %i.bl to i40
  %.sroa.014.4.insert.shift.i = shl nuw nsw i40 %.sroa.014.4.insert.ext.i, 32
  %.sroa.014.4.insert.insert.i = or disjoint i40 %.sroa.014.3.insert.insert.i, %.sroa.014.4.insert.shift.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj5_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i40 %.sroa.014.4.insert.insert.i), !noalias !10401
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.bn = load i8, ptr %i.bm, align 1, !range !14, !alias.scope !10401, !noundef !7 ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.bn, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i8 1, i8 2
  %switch.selectcmp31.i = icmp eq i8 %i.bn, 2
  %switch.select32.i = select i1 %switch.selectcmp31.i, i8 0, i8 %switch.select.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %switch.select32.i), !noalias !10401
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 162
  %i.bp = load i8, ptr %i.bo, align 2, !range !14, !alias.scope !10401, !noundef !7 ; 2 uses
  %i.bq = icmp ne i8 %i.bp, 2                     ; 2 uses
  %i.br = zext i1 %i.bq to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.br), !noalias !10401
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 163
  %i.bt = load i8, ptr %i.bs, align 1, !range !34, !alias.scope !10401, !noundef !7
  %.sroa.420.0.insert.ext.i = zext nneg i8 %i.bp to i16
  %.sroa.420.0.insert.shift.i = shl nuw nsw i16 %.sroa.420.0.insert.ext.i, 8
  %.sroa.019.0.insert.ext.i = zext nneg i8 %i.bt to i16
  %.sroa.019.0.insert.insert.i = or disjoint i16 %.sroa.420.0.insert.shift.i, %.sroa.019.0.insert.ext.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj2_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i16 noundef %.sroa.019.0.insert.insert.i), !noalias !10401
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.bv = load i8, ptr %i.bu, align 4, !range !14, !alias.scope !10401, !noundef !7 ; 2 uses
  %switch.selectcmp33.i = icmp eq i8 %i.bv, 0
  %switch.select34.i = select i1 %switch.selectcmp33.i, i8 1, i8 2
  %switch.selectcmp35.i = icmp eq i8 %i.bv, 2
  %switch.select36.i = select i1 %switch.selectcmp35.i, i8 0, i8 %switch.select34.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %switch.select36.i), !noalias !10401
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 165
  %i.bx = load i8, ptr %i.bw, align 1, !range !14, !alias.scope !10401, !noundef !7 ; 2 uses
  %i.by = icmp ne i8 %i.bx, 2                     ; 2 uses
  %i.bz = zext i1 %i.by to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.bz), !noalias !10401
  br i1 %i.by, label %bb.x, label %_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit

bb.x:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 166
  %i.cb = load i8, ptr %i.ca, align 2, !range !34, !alias.scope !10401, !noundef !7
  %.sroa.426.0.insert.ext.i = zext nneg i8 %i.cb to i16
  %.sroa.426.0.insert.shift.i = shl nuw nsw i16 %.sroa.426.0.insert.ext.i, 8
  %.sroa.025.0.insert.ext.i = zext nneg i8 %i.bx to i16
  %.sroa.025.0.insert.insert.i = or disjoint i16 %.sroa.426.0.insert.shift.i, %.sroa.025.0.insert.ext.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj2_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i16 noundef %.sroa.025.0.insert.insert.i), !noalias !10401
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 167
  %i.cd = load i8, ptr %i.cc, align 1, !range !47, !alias.scope !10401, !noundef !7
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.cd), !noalias !10401
  br label %_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit

_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit: ; preds = %bb.w, %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cf = load i8, ptr %i.ce, align 8, !range !20, !noundef !7 ; 2 uses
  %i.cg = icmp ne i8 %i.cf, -1                    ; 2 uses
  %i.ch = zext i1 %i.cg to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.ch)
  br i1 %i.cg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit, %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !10402, !noundef !7 ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 1                   ; 2 uses
  %i.cm = load ptr, ptr %i.ci, align 8, !alias.scope !10402, !nonnull !7
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !10402
  %.sink10.i = select i1 %i.cl, i64 %i.co, i64 %i.ck ; 3 uses
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sink10.i)
  %.sink11.i.i = select i1 %i.cl, ptr %i.cm, ptr %i.ci ; 2 uses
  %.idx = shl nuw nsw i64 %.sink10.i, 5
  %i.cp = getelementptr inbounds nuw i8, ptr %.sink11.i.i, i64 %.idx
  %i.cq = icmp eq i64 %.sink10.i, 0
  br i1 %i.cq, label %._crit_edge, label %.lr.ph

bb.z:                                             ; preds = %_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 172
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.cf)
  %i.cs = load i32, ptr %i.cr, align 4, !noundef !7
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj4_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.cs)
  br label %bb.y

.lr.ph:                                           ; preds = %bb.y, %.lr.ph
  %.sroa.017.047 = phi ptr [ %i.ct, %.lr.ph ], [ %.sink11.i.i, %bb.y ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.047, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.017.047, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !7 ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, -1
  call void @llvm.assume(i1 %i.cw)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.cv)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.017.047)
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.017.047, i64 24
  %i.cy = load i8, ptr %i.cx, align 8, !range !34, !noundef !7
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.cy)
  %i.cz = icmp eq ptr %i.ct, %i.cp
  br i1 %i.cz, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @_RNvMCsdI2EeOV5l2N_8tenthashNtB2_8TentHash8finalize(ptr noalias nofree noundef nonnull sret([20 x i8]) align 1 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringBN_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBK_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e), !noalias !10411 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val6.i = load ptr, ptr %i.i, align 8, !noalias !10411, !nonnull !7, !noundef !7
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val7.i = load i64, ptr %i.j, align 8, !noalias !10411, !noundef !7 ; 3 uses
  %i.k = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val6.i, i64 noundef %.val7.i), !noalias !10412
  br i1 %i.k, label %.split, label %bb.b

.split:                                           ; preds = %bb.c
  %i.l = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = sub nuw i64 %5, %.val7.i
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %.val7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8, !captures !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8, !captures !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.m, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.47.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.p, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @176, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  br label %bb.e

bb.e:                                             ; preds = %.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto26map_rust_diagnostic_to_lsp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.712.i.i.i.i.i.i = alloca [12 x i8], align 4 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i.i = alloca [12 x i8], align 4 ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [56 x i8], align 8                ; 8 uses
  %i.p = alloca [88 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [208 x i8], align 8               ; 12 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i17.i.i.i.i = alloca [40 x i8], align 8 ; 4 uses
end_hunk_0
