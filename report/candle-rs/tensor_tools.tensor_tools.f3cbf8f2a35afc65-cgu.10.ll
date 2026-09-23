Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.10?download=true
inline.NumInlined: 385
inline.NumDeleted: 155
begin_hunk_0_@_RNvMs0_NtNtCscWUIX17zZnI_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE21by_index_with_optionsCskVIURZGHVHJ_12tensor_tools:bb.a
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.532.0.copyload.i = load i64, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !232
  %i.bi = inttoptr i64 %.sroa.6.i.sroa.0.0.copyload116 to ptr
  %i.bj = ptrtoint ptr %i.be to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.l, %bb.o, %bb.u, %bb.n
  %.sroa.16.0.ph = phi ptr [ @25, %bb.n ], [ %i.bh, %bb.u ], [ undef, %bb.o ], [ %i.an, %bb.l ]
  %.sroa.19.0.ph = phi i64 [ 71, %bb.n ], [ %.sroa.6.i.sroa.9.0.copyload120, %bb.u ], [ undef, %bb.o ], [ undef, %bb.l ]
  %.sroa.9.0.ph = phi i64 [ -9223372036854775806, %bb.n ], [ %.sroa.6.i.sroa.0.0.copyload116, %bb.u ], [ -9223372036854775804, %bb.o ], [ -9223372036854775803, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0.ph, ptr %i.bk, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.16.0.ph, ptr %.sroa.493.0..sroa_idx, align 8
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.19.0.ph, ptr %.sroa.594.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.x:                                             ; preds = %bb.v, %bb.p
  %.sroa.310.i.sroa.0.0 = phi ptr [ %.sroa.310.i.sroa.0.0.copyload113, %bb.p ], [ %i.bi, %bb.v ]
  %.sroa.310.i.sroa.5.0 = phi i64 [ %.sroa.310.i.sroa.5.0.copyload114, %bb.p ], [ %.sroa.6.i.sroa.7.0.copyload118, %bb.v ]
  %.sroa.310.i.sroa.6.0 = phi i64 [ %.sroa.310.i.sroa.6.0.copyload115, %bb.p ], [ %.sroa.6.i.sroa.9.0.copyload120, %bb.v ]
  %.sroa.08.0.i = phi i64 [ 0, %bb.p ], [ %i.bj, %bb.v ]
  %.sroa.412.0.i = phi i64 [ undef, %bb.p ], [ %.sroa.532.0.copyload.i, %bb.v ]
  store i64 %.sroa.08.0.i, ptr %i.f, align 8
  %.sroa.523.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.310.i.sroa.0.0, ptr %.sroa.523.sroa.7.0..sroa_idx, align 8
  %.sroa.523.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.310.i.sroa.5.0, ptr %.sroa.523.sroa.8.0..sroa_idx, align 8
  %.sroa.523.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.310.i.sroa.6.0, ptr %.sroa.523.sroa.9.0..sroa_idx, align 8
  %.sroa.523.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.412.0.i, ptr %.sroa.523.sroa.10.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.bm = load i8, ptr %i.bl, align 1, !range !12, !noundef !8
  %i.bn = trunc nuw i8 %i.bm to i1                ; 2 uses
  br i1 %i.bn, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 204
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %..i = phi i32 [ %i.bp, %bb.y ], [ 0, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.bq, align 8
  store i64 2, ptr %i.e, align 8
  %i.br = load i16, ptr %i.ai, align 8, !range !22, !noundef !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 202
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = icmp eq i16 %i.br, 0
  br i1 %i.bu, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !236
  invoke void @_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCscWUIX17zZnI_3zip4read7readers12CryptoReaderIBP_NtNtCs5Xr050g3D4S_3std2fs4FileEEE13with_capacityCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, i64 noundef 8192, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.f)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val29.i = load i64, ptr %i.bv, align 8, !noalias !236, !noundef !8 ; 2 uses
  %i.bw = icmp eq i64 %.val29.i, 0
  br i1 %i.bw, label %bb.af, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %.noexc
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !236, !nonnull !8, !noundef !8
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val29.i, i64 noundef 1) #23, !noalias !236
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !236
  invoke void @_RNvMNtCscWUIX17zZnI_3zip5crc32INtB2_11Crc32ReaderINtNtNtB4_4read7readers12CryptoReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE3newCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.f, i32 noundef %..i, i1 noundef zeroext %i.bn)
          to label %.noexc54 unwind label %bb.ad

.noexc54:                                         ; preds = %bb.ab
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !237
  %i.bx = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #23, !noalias !237 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ac, label %bb.ah, !prof !9

bb.ac:                                            ; preds = %.noexc54
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #25
          to label %.noexc55 unwind label %bb.ad

.noexc55:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load i64, ptr %i.e, align 8, !range !10, !alias.scope !238, !noundef !8
  %i.cb = icmp eq i64 %i.ca, 2
  br i1 %i.cb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.ai

bb.af:                                            ; preds = %.noexc, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !236
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.cc, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.bt, ptr %.sroa.4111.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %i.cd = load i64, ptr %i.e, align 8, !range !10, !alias.scope !239, !noundef !8
  %i.ce = icmp eq i64 %i.cd, 2
  br i1 %i.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit57, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.e)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit57

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit57: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.ah:                                            ; preds = %.noexc54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !236
  %i.cf = ptrtoint ptr %i.bx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %i.e, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 2, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.cf, ptr %.sroa.634.0..sroa_idx, align 8
  br label %bb.d

bb.ai:                                            ; preds = %bb.ae
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.ad, %bb.ae
  resume { ptr, i32 } %i.bz
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCscWUIX17zZnI_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE30by_name_with_optional_passwordCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly captures(address, read_provenance) %4, i64 %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = tail call { i64, i64 } @_RINvMs3_NtCs2upMkKV4wAv_8indexmap3mapINtB6_8IndexMapINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShENtNtCscWUIX17zZnI_3zip5types11ZipFileDataE12get_index_ofB1n_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.d, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %i.j, align 1
  store ptr %4, ptr %i.a, align 8
  store i64 %5, ptr %i.h, align 8
  call fastcc void @_RNvMs0_NtNtCscWUIX17zZnI_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE21by_index_with_optionsCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i64 noundef %i.g, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCscWUIX17zZnI_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE3newCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [232 x i8], align 8               ; 44 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [46 x i8], align 4                ; 17 uses
  %.sroa.670.i.i.i.i.i = alloca [9 x i8], align 2 ; 5 uses
  %.sroa.36.i.i.i.i.i = alloca [200 x i8], align 8 ; 5 uses
  %i.s = alloca [232 x i8], align 8               ; 11 uses
  %i.t = alloca [232 x i8], align 8               ; 9 uses
  %.sroa.31.i.i.i.i = alloca [200 x i8], align 8  ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 13 uses
  %i.v = alloca [1408 x i8], align 32             ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [56 x i8], align 4               ; 13 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [1408 x i8], align 32            ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [20 x i8], align 4               ; 10 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [22 x i8], align 4               ; 12 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.6456.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 22 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 9 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 33 uses
  %i.ay = alloca [1408 x i8], align 32            ; 15 uses
  %i.az = alloca [1128 x i8], align 8             ; 10 uses
  %i.ba = alloca [136 x i8], align 8              ; 8 uses
  %i.bb = alloca [56 x i8], align 8               ; 9 uses
  %i.bc = alloca [40 x i8], align 8               ; 10 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [136 x i8], align 8              ; 26 uses
  %i.bf = alloca [24 x i8], align 8               ; 15 uses
  %i.bg = alloca [152 x i8], align 8              ; 11 uses
  %i.bh = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.14.sroa.7.i = alloca [104 x i8], align 8 ; 5 uses
  %i.bi = alloca [48 x i8], align 8               ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.7.i)
  %i.bj = invoke { i64, ptr } @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seekCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef 1, i64 noundef 0)
          to label %.noexc.i unwind label %bb.ju, !noalias !462 ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.bk = extractvalue { i64, ptr } %i.bj, 0
  %i.bl = extractvalue { i64, ptr } %i.bj, 1      ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = trunc nuw i64 %i.bk to i1
  br i1 %i.bn, label %_RNvMs0_NtNtCscWUIX17zZnI_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE12get_metadataCskVIURZGHVHJ_12tensor_tools.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !464
  store i64 -2, ptr %i.bf, align 8, !noalias !464
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 1336 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.21.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.27.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.sroa.11.1..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.12.1..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %.sroa.12.i.sroa.5.0..sroa.12.1..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.sroa.12.i.sroa.6.0..sroa.12.1..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.21.1..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.sroa.16.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %.sroa.22.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %.sroa.424.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %.sroa.424.sroa.5.0..sroa.424.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.14.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.sroa.16.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5150.0..sroa_idx151.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 9 uses
  %.sroa.6153.0..sroa_idx154.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1376 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1384 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.46.0..sroa_idx.i.i.i257.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.20.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.27.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.8.i.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.8.i.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.20.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 19
  %.sroa.27.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 27
  %.sroa.29.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %.sroa.32.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5188.0..sroa_idx189.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 5 uses
  %.sroa.6191.0..sroa_idx192.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 4 uses
  %.sroa.4198.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.sroa.5199.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4201.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5202.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ay, i64 1280 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 1296 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ay, i64 1288 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 35
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %.sroa.1267.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 67
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 68
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %.sroa.1868.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 108
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 118
  %.sroa.2369.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.4103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.5104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.6105.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.sroa.7106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.81.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.81.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %.sroa.10.1..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %.sroa.14.1..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  %.sroa.15.1..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 27
  %.sroa.15.sroa.8.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %.sroa.15.sroa.9.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 30
  %.sroa.15.sroa.10.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.15.sroa.12.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 38
  %.sroa.15.sroa.13.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 42
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5121.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.538.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5132.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.348.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.549.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 225
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 218
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 220
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 221
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 222
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 200 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 202 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.h, i64 212
  %.sroa.551.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 214
  %.sroa.652.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 204
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %.sroa.3140.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 223
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.ek = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.459.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.560.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.4.0..sroa_idx.i219.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i220.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.1451.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.31.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.512.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx14.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.8.0..sroa_idx15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i33.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.14.8..sroa_idx8.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.15.8..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.15.sroa.8.0..sroa.15.8..sroa_idx12.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %.sroa.15.sroa.9.0..sroa.15.8..sroa_idx12.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 19
  %.sroa.15.sroa.10.0..sroa.15.8..sroa_idx12.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 21
  %.sroa.15.sroa.11.0..sroa.15.8..sroa_idx12.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 23
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.24.8..sroa_idx55.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.31.8..sroa_idx58.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.588.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %.sroa.691.0..sroa_idx92.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  %.sroa.670.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.670.i.i.i.i.i, i64 1
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip4spec23CentralDirectoryEndInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i, %bb.b
  %.sroa.013.0.i.i = phi i64 [ %i.bm, %bb.b ], [ %.sroa.55.2.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip4spec23CentralDirectoryEndInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !465
  invoke void @_RNvMs0_NtNtCscWUIX17zZnI_3zip4read12magic_finderINtB5_11MagicFinderNtB5_9BackwardsE3newCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([1128 x i8]) align 8 captures(none) dereferenceable(1128) %i.az, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) @14, i64 noundef 0, i64 noundef %.sroa.013.0.i.i)
          to label %.noexc.i.i unwind label %.thread120.i.i, !noalias !466

.thread120.i.i:                                   ; preds = %bb.c
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.noexc.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !465
  store i64 2, ptr %i.bo, align 8, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !465
  store i64 -2, ptr %i.ax, align 8, !noalias !465
  br label %.backedge565.i.i.i

.backedge565.i.i.i:                               ; preds = %.backedge565.i.i.i.backedge, %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !465
  invoke void @_RINvMs0_NtNtCscWUIX17zZnI_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(1128) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi)
          to label %bb.e unwind label %.thread466.loopexit.i.i.i, !noalias !466

.thread466.loopexit.i.i.i:                        ; preds = %bb.ev, %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i, %bb.q, %bb.g, %.backedge565.i.i.i
  %lpad.loopexit559.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread462.i.i.i

.thread466.loopexit.split-lp.i.i.i:               ; preds = %bb.w
  %lpad.loopexit.split-lp560.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread462.i.i.i

bb.d:                                             ; preds = %bb.fd
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscWUIX17zZnI_3zip6result8ZipErrorEECskVIURZGHVHJ_12tensor_tools.exit327.i.i.i

bb.e:                                             ; preds = %.backedge565.i.i.i
  %i.eo = load i64, ptr %i.aw, align 8, !range !467, !noalias !465, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.eo, -2
  %i.ep = load i64, ptr %i.bp, align 8, !noalias !465 ; 2 uses
  %i.eq = load i64, ptr %i.bq, align 8, !noalias !465 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !465
  br i1 %.not.i.i.i, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip4spec24Zip32CentralDirectoryEndECskVIURZGHVHJ_12tensor_tools.exit292.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.er = trunc nuw i64 %i.ep to i1
  br i1 %i.er, label %bb.g, label %bb.am

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !469
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.an, i8 0, i64 22, i1 false), !noalias !469
  %i.es = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_4read4Read10read_exactCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noalias nofree noundef nonnull %i.an, i64 noundef 22)
          to label %.noexc.i.i.i unwind label %.thread466.loopexit.i.i.i, !noalias !466 ; 9 uses

.noexc.i.i.i:                                     ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.et = ptrtoint ptr %i.es to i64               ; 4 uses
  %i.eu = and i64 %i.et, 3                        ; 2 uses
  switch i64 %i.eu, label %.unreachabledefault [
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 0, label %bb.k
    i64 1, label %bb.l
  ], !prof !16

.unreachabledefault:                              ; preds = %bb.h
  unreachable

default.unreachable:                              ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i34.i.i, %bb.ga, %bb.et, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i, %bb.ay, %bb.ah, %bb.aa, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i, %bb.cx, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i258.i.i.i, %bb.cc
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ev = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i.i.i unwind label %bb.n, !noalias !470

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  %i.ew = lshr i64 %i.et, 32
  %i.ex = trunc nuw i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !470, !nonnull !8, !noundef !8
  %i.fa = invoke noundef i8 %i.ez(i32 noundef %i.ex)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i unwind label %bb.n, !noalias !470, !inline_history !0

bb.j:                                             ; preds = %bb.h
  %i.fb = lshr i64 %i.et, 32
  %i.fc = icmp ult ptr %i.es, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i.i = trunc i64 %i.fb to i8 ; 2 uses
  %i.fd = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fc)
  call void @llvm.assume(i1 %i.fd)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ff = load i8, ptr %i.fe, align 8, !range !17, !noalias !470, !noundef !8
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.h
  %i.fg = getelementptr i8, ptr %i.es, i64 31
  %i.fh = load i8, ptr %i.fg, align 8, !range !17, !noalias !470, !noundef !8
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i
  %i.fi = load i32, ptr %i.an, align 4, !noalias !469, !noundef !8
  %.not11.i.i.i.i.i = icmp eq i32 %i.fi, 101010256
  br i1 %.not11.i.i.i.i.i, label %bb.t, label %bb.s

bb.n:                                             ; preds = %bb.o, %.noexc.i.i.i.i.i, %bb.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools(ptr nonnull %i.es) #22
          to label %.thread462.i.i.i unwind label %bb.r, !noalias !470

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %.noexc.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.fh, %bb.l ], [ %switch.idx.cast.i.i.i.i.i.i.i.i, %bb.j ], [ %i.ff, %bb.k ], [ %i.fa, %.noexc.i.i.i.i.i ]
  %i.fk = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i, 37
  br i1 %i.fk, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !469
  store ptr @33, ptr %i.al, align 8, !noalias !469, !captures !21
  store i64 24, ptr %i.br, align 8, !noalias !469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !469
  store ptr %i.al, ptr %i.ak, align 8, !noalias !469
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCskVIURZGHVHJ_12tensor_tools, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !469
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @34, ptr noundef nonnull %i.ak)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i unwind label %bb.n, !noalias !470

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !469
  %i.fl = load i64, ptr %i.am, align 8, !noalias !471 ; 3 uses
  %.sroa.21.8.copyload.i.i.i.i = load ptr, ptr %.sroa.21.8..sroa_idx.i.i.i.i, align 8, !noalias !471
  %.sroa.27.8.copyload.i.i.i.i = load i64, ptr %.sroa.27.8..sroa_idx.i.i.i.i, align 8, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !469
  %i.fm = trunc i64 %i.fl to i8
  %i.fn = lshr i64 %i.fl, 8
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = lshr i64 %i.fl, 40
  %i.fq = trunc nuw i64 %i.fp to i24
  switch i64 %i.eu, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i
    i64 1, label %bb.q
  ], !prof !16

bb.p:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i
  %i.fr = icmp ult ptr %i.es, inttoptr (i64 188978561024 to ptr)
  %i.fs = and i64 %i.et, 1095216660480
  %i.ft = icmp ne i64 %i.fs, 1095216660480
  call void @llvm.assume(i1 %i.fr)
  call void @llvm.assume(i1 %i.ft)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i

bb.q:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i
  %i.fu = getelementptr i8, ptr %i.es, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  store ptr %i.fu, ptr %i.bs, align 8, !alias.scope !472, !noalias !469
  store i8 3, ptr %i.aj, align 8, !alias.scope !472, !noalias !469
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i unwind label %.thread466.loopexit.i.i.i, !noalias !466

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !469
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !470
  unreachable

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i, %bb.m
  %.sroa.12.6..sroa.12.6..sroa.12.13..sroa.539.0.copyload71.i.i.i.i = phi i24 [ -8388608, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i ], [ %i.fq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i ], [ -1, %bb.m ]
  %.sroa.12.2..sroa.12.2..sroa.12.9..sroa.438.0.copyload.i.i.i.i = phi i32 [ 0, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i ], [ %i.fo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i ], [ -1, %bb.m ]
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCscWUIX17zZnI_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE3newCskVIURZGHVHJ_12tensor_tools:bb.a
bb.il:                                            ; preds = %bb.ik
  store i64 -1, ptr %i.f, align 8, !alias.scope !574, !noalias !575
  store ptr @12, ptr %.sroa.4.0..sroa_idx.i219.i.i.i.i.i.i, align 8, !alias.scope !574, !noalias !575
  store i64 27, ptr %.sroa.5.0..sroa_idx.i220.i.i.i.i.i.i, align 8, !alias.scope !574, !noalias !575
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip6result8ZipErrorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f)
          to label %bb.im unwind label %bb.ig, !noalias !565

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !564
  store i64 %i.vc, ptr %i.ed, align 8, !noalias !564
  %.sroa.050.0.copyload.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !572 ; 2 uses
  %.sroa.1451.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.1451.0..sroa_idx.i.i.i.i.i, align 8, !noalias !572 ; 2 uses
  %.sroa.24.0.copyload.i.i.i.i.i = load i64, ptr %i.ee, align 8, !noalias !572 ; 2 uses
  %.sroa.31.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 8, !noalias !572 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.36.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %i.ek, i64 200, i1 false), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !564
  %i.ve = icmp eq i64 %i.sl, 0
  br i1 %i.ve, label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i223.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i223.i.i.i.i.i.i: ; preds = %bb.im
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sk, i64 noundef %i.sl, i64 noundef 1) #23, !noalias !565
  br label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i

bb.in:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !564
  br label %.loopexit181.i.i.i.i

.loopexit181.i.i.i.i:                             ; preds = %bb.ij, %bb.in, %bb.ii
  %.sroa.24.2.i.i.i.i.i = phi i64 [ %.sroa.24.8.copyload56.i.i.i.i.i, %bb.ii ], [ ptrtoint (ptr @12 to i64), %bb.in ], [ ptrtoint (ptr @13 to i64), %bb.ij ]
  %.sroa.1451.2.i.i.i.i.i = phi i64 [ %i.uy, %bb.ii ], [ -1, %bb.in ], [ -1, %bb.ij ]
  %.sroa.31.2.i.i.i.i.i = phi i64 [ %.sroa.31.8.copyload59.i.i.i.i.i, %bb.ii ], [ 27, %bb.in ], [ 43, %bb.ij ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(232) %i.h)
          to label %bb.io unwind label %bb.ib, !noalias !565

bb.io:                                            ; preds = %.loopexit181.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !564
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i206.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i
  br i1 %.sroa.085.6.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i, label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i, %bb.gu, %bb.gq
  %.sroa.24.3.i.i.i.i.i = phi i64 [ %.sroa.24.1.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i ], [ %.sroa.24.1.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i ], [ %i.sm, %bb.gu ], [ %i.sm, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i ], [ %i.sg, %bb.gq ] ; 2 uses
  %.sroa.1451.3.i.i.i.i.i = phi i64 [ %.sroa.1451.1.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i ], [ %.sroa.1451.1.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i ], [ %i.sj, %bb.gu ], [ %i.sj, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i ], [ %i.sd, %bb.gq ] ; 2 uses
  %.sroa.31.3.i.i.i.i.i = phi i64 [ %.sroa.31.1.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i ], [ %.sroa.31.1.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i ], [ %i.sl, %bb.gu ], [ %i.sl, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i ], [ %i.sf, %bb.gq ] ; 2 uses
  %i.vf = icmp eq i64 %i.rz, 0
  br i1 %i.vf, label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ry, i64 noundef %i.rz, i64 noundef 1) #23, !noalias !565
  br label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i

bb.ip:                                            ; preds = %bb.ig
  %i.vg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !565
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i216.i.i.i.i.i.i, %bb.ie
  %i.vh = icmp eq i64 %.sroa.11.3.i.i.i.i.i.i, 0
  br i1 %i.vh, label %.thread295.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0255.3.i.i.i.i.i.i, i64 noundef %.sroa.11.3.i.i.i.i.i.i, i64 noundef 1) #23, !noalias !565
  br label %.thread295.i.i.i.i.i.i

.thread295.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i, %.thread306.i.i.i.i.i.i
  %.sroa.11.3.i.i787.i.i.i.i = phi i64 [ %.sroa.11.3.i.i.i.i.i.i, %.thread306.i.i.i.i.i.i ], [ %.sroa.11.3.i.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i ]
  %.pn300.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i, %.thread306.i.i.i.i.i.i ], [ %i.um, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i ], [ %i.um, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i ] ; 2 uses
  %.sroa.085.8299.i.i.i.i.i.i = phi i1 [ true, %.thread306.i.i.i.i.i.i ], [ false, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i ]
  %i.vi = icmp eq i64 %.sroa.11259.0.i.i.i.i.i.i, 0
  br i1 %i.vi, label %.thread301.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i229.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i229.i.i.i.i.i.i: ; preds = %.thread295.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0258.0.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0258.0.i.i.i.i.i.i, i64 noundef %.sroa.11259.0.i.i.i.i.i.i, i64 noundef 1) #23, !noalias !565
  br label %.thread301.i.i.i.i.i.i

.thread282.i.i.i.i.i.i:                           ; preds = %.thread282.i.i.loopexit.split-lp.i.i.i.i, %.thread282.i.i.loopexit.i.i.i.i, %.thread301.i.i.i.i.i.i
  %.pn.pn290.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn300.i.i.i.i.i.i, %.thread301.i.i.i.i.i.i ], [ %lpad.loopexit178.i.i.i.i, %.thread282.i.i.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp179.i.i.i.i, %.thread282.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0255.1288.i.i.i.i.i.i = phi ptr [ %.sroa.0255.3.i.i.i.i.i.i, %.thread301.i.i.i.i.i.i ], [ %.sroa.0255.2.i.i.ph.i.i.i.i, %.thread282.i.i.loopexit.i.i.i.i ], [ %.sroa.0255.2.i.i.ph177.i.i.i.i, %.thread282.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.11.1287.i.i.i.i.i.i = phi i64 [ %.sroa.11.3.i.i787.i.i.i.i, %.thread301.i.i.i.i.i.i ], [ %.sroa.11.2.i.i.ph.i.i.i.i, %.thread282.i.i.loopexit.i.i.i.i ], [ %.sroa.11.2.i.i.ph176.i.i.i.i, %.thread282.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.vj = icmp eq i64 %.sroa.11.1287.i.i.i.i.i.i, 0
  br i1 %i.vj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i231.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i231.i.i.i.i.i.i: ; preds = %.thread282.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0255.1288.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0255.1288.i.i.i.i.i.i, i64 noundef %.sroa.11.1287.i.i.i.i.i.i, i64 noundef 1) #23, !noalias !565
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i

bb.iq:                                            ; preds = %.thread278.i.i.i.i.i.i, %bb.gs
  %.pn170281.i.i.i.i.i.i = phi { ptr, i32 } [ %i.si, %.thread278.i.i.i.i.i.i ], [ %.pn.pn.pn.i.i.i.i.i.i, %bb.gs ] ; 2 uses
  %i.vk = icmp eq i64 %i.sf, 0
  br i1 %i.vk, label %bb.ir, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i: ; preds = %bb.iq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.se, i64 noundef %i.sf, i64 noundef 1) #23, !noalias !565
  br label %bb.ir

bb.ir:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i, %bb.iq, %bb.go
  %.pn172.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.sc, %bb.go ], [ %.pn170281.i.i.i.i.i.i, %bb.iq ], [ %.pn170281.i.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i ] ; 2 uses
  %i.vl = icmp eq i64 %i.rz, 0
  br i1 %i.vl, label %.body.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i235.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i235.i.i.i.i.i.i: ; preds = %bb.ir
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ry, i64 noundef %i.rz, i64 noundef 1) #23, !noalias !565
  br label %.body.i.i.i.i

_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i, %bb.gm
  %.sroa.24.4.ph.i.i.i.i.i = phi i64 [ %i.sa, %bb.gm ], [ %.sroa.24.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i ], [ %.sroa.24.3.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i ], [ %.sroa.24.3.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i ]
  %.sroa.1451.4.ph.i.i.i.i.i = phi i64 [ %i.rx, %bb.gm ], [ %.sroa.1451.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i ], [ %.sroa.1451.3.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i ], [ %.sroa.1451.3.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i ]
  %.sroa.31.4.ph.i.i.i.i.i = phi i64 [ %i.rz, %bb.gm ], [ %.sroa.31.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i ], [ %.sroa.31.3.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i ], [ %.sroa.31.3.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !559
  br label %.loopexit182.i.i.i.i

_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i223.i.i.i.i.i.i, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !559
  %i.vm = icmp eq i64 %.sroa.050.0.copyload.i.i.i.i.i, 2
  br i1 %i.vm, label %.loopexit182.i.i.i.i, label %bb.is

.loopexit182.i.i.i.i:                             ; preds = %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i
  %.sroa.31.4189.i.i.i.i.i = phi i64 [ %.sroa.31.4.ph.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i ], [ %.sroa.31.0.copyload.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.1451.4188.i.i.i.i.i = phi i64 [ %.sroa.1451.4.ph.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i ], [ %.sroa.1451.0.copyload.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.24.4187.i.i.i.i.i = phi i64 [ %.sroa.24.4.ph.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i ], [ %.sroa.24.0.copyload.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i.i.i)
  %.sroa.10.sroa.12.0.extract.shift109.i.i.i.i = and i64 %.sroa.1451.4188.i.i.i.i.i, -1099511627776
  %.sroa.25.sroa.0.0.extract.trunc42.i.i.i.i = trunc i64 %.sroa.31.4189.i.i.i.i.i to i8
  %.sroa.25.sroa.8.0.extract.shift47.i.i.i.i = lshr i64 %.sroa.31.4189.i.i.i.i.i, 8
  %.sroa.25.sroa.8.0.extract.trunc48.i.i.i.i = trunc i64 %.sroa.25.sroa.8.0.extract.shift47.i.i.i.i to i16
  %.sroa.25.sroa.9.0.extract.shift53.i.i.i.i = lshr i64 %.sroa.31.4189.i.i.i.i.i, 24
  %.sroa.25.sroa.9.0.extract.trunc54.i.i.i.i = trunc i64 %.sroa.25.sroa.9.0.extract.shift53.i.i.i.i to i16
  %.sroa.25.sroa.10.0.extract.shift59.i.i.i.i = lshr i64 %.sroa.31.4189.i.i.i.i.i, 40
  %.sroa.25.sroa.10.0.extract.trunc60.i.i.i.i = trunc i64 %.sroa.25.sroa.10.0.extract.shift59.i.i.i.i to i16
  %.sroa.25.sroa.11.0.extract.shift65.i.i.i.i = lshr i64 %.sroa.31.4189.i.i.i.i.i, 56
  %.sroa.25.sroa.11.0.extract.trunc66.i.i.i.i = trunc nuw i64 %.sroa.25.sroa.11.0.extract.shift65.i.i.i.i to i8
  br label %.noexc33.i.i.i.i

bb.is:                                            ; preds = %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.512.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.36.i.i.i.i.i, i64 200, i1 false), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i.i.i)
  store i64 %.sroa.050.0.copyload.i.i.i.i.i, ptr %i.s, align 8, !noalias !559
  store i64 %.sroa.1451.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !559
  store i64 %.sroa.24.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !559
  store i64 %.sroa.31.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !559
  %i.vn = invoke { i64, ptr } @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek15stream_positionCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi)
          to label %bb.iu unwind label %bb.it, !noalias !576 ; 2 uses

bb.it:                                            ; preds = %bb.iv, %bb.is
  %i.vo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(232) %i.s) #22
          to label %.body.i.i.i.i unwind label %bb.iy, !noalias !576

bb.iu:                                            ; preds = %bb.is
  %i.vp = extractvalue { i64, ptr } %i.vn, 0
  %i.vq = extractvalue { i64, ptr } %i.vn, 1      ; 2 uses
  %i.vr = trunc nuw i64 %i.vp to i1
  br i1 %i.vr, label %.loopexit183.i.i.i.i, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = invoke { i64, ptr } @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seekCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef 0, i64 noundef %i.vs)
          to label %bb.iw unwind label %bb.it, !noalias !576 ; 2 uses

bb.iw:                                            ; preds = %bb.iv
  %i.vu = extractvalue { i64, ptr } %i.vt, 0
  %i.vv = trunc nuw i64 %i.vu to i1
  br i1 %i.vv, label %bb.ix, label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i

bb.ix:                                            ; preds = %bb.iw
  %i.vw = extractvalue { i64, ptr } %i.vt, 1
  br label %.loopexit183.i.i.i.i

.loopexit183.i.i.i.i:                             ; preds = %bb.iu, %bb.ix
  %.sink.i29.i.i.i.i = phi ptr [ %i.vw, %bb.ix ], [ %i.vq, %bb.iu ]
  %i.vx = ptrtoint ptr %.sink.i29.i.i.i.i to i64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(232) %i.s)
          to label %.noexc33.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !558

.noexc33.i.i.i.i:                                 ; preds = %.loopexit183.i.i.i.i, %.loopexit182.i.i.i.i
  %.sroa.10.sroa.12.0.i.i40.i.i = phi i64 [ %.sroa.10.sroa.12.0.extract.shift109.i.i.i.i, %.loopexit182.i.i.i.i ], [ -9223372036854775808, %.loopexit183.i.i.i.i ]
  %.sroa.10.sroa.0.0.i.i41.i.i = phi i64 [ %.sroa.1451.4188.i.i.i.i.i, %.loopexit182.i.i.i.i ], [ 0, %.loopexit183.i.i.i.i ]
  %.sroa.19.sroa.11.0.in.in.i.i.i.i = phi i64 [ %.sroa.24.4187.i.i.i.i.i, %.loopexit182.i.i.i.i ], [ %i.vx, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.11.0.i.i.i.i = phi i8 [ %.sroa.25.sroa.11.0.extract.trunc66.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.10.0.i.i.i.i = phi i16 [ %.sroa.25.sroa.10.0.extract.trunc60.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.9.0.i.i.i.i = phi i16 [ %.sroa.25.sroa.9.0.extract.trunc54.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.8.0.i.i.i.i = phi i16 [ %.sroa.25.sroa.8.0.extract.trunc48.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.25.sroa.0.0.extract.trunc42.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !559
  br label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i

bb.iy:                                            ; preds = %bb.it
  %i.vy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !576
  unreachable

_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i: ; preds = %bb.iw
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !577 ; 2 uses
  %2 = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !577 ; 3 uses
  %.sroa.25.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !577 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.31.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.512.0..sroa_idx.i.i.i.i.i, i64 200, i1 false), !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !559
  %i.vz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 2
  br i1 %i.vz, label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i, label %bb.iz

_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i: ; preds = %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i
  %i.wa = extractelement <2 x i64> %2, i64 0      ; 2 uses
  %.sroa.10.sroa.12.0.extract.shift.le.i.i.i.i = and i64 %i.wa, -1099511627776
  %.sroa.25.sroa.0.0.extract.trunc.le.i.i.i.i = trunc i64 %.sroa.25.0.copyload.i.i.i.i to i8
  %.sroa.25.sroa.8.0.extract.shift.le.i.i.i.i = lshr i64 %.sroa.25.0.copyload.i.i.i.i, 8
  %.sroa.25.sroa.8.0.extract.trunc.le.i.i.i.i = trunc i64 %.sroa.25.sroa.8.0.extract.shift.le.i.i.i.i to i16
  %.sroa.25.sroa.9.0.extract.shift.le.i.i.i.i = lshr i64 %.sroa.25.0.copyload.i.i.i.i, 24
  %.sroa.25.sroa.9.0.extract.trunc.le.i.i.i.i = trunc i64 %.sroa.25.sroa.9.0.extract.shift.le.i.i.i.i to i16
  %.sroa.25.sroa.10.0.extract.shift.le.i.i.i.i = lshr i64 %.sroa.25.0.copyload.i.i.i.i, 40
  %.sroa.25.sroa.10.0.extract.trunc.le.i.i.i.i = trunc i64 %.sroa.25.sroa.10.0.extract.shift.le.i.i.i.i to i16
  %.sroa.25.sroa.11.0.extract.shift.le.i.i.i.i = lshr i64 %.sroa.25.0.copyload.i.i.i.i, 56
  %.sroa.25.sroa.11.0.extract.trunc.le.i.i.i.i = trunc nuw i64 %.sroa.25.sroa.11.0.extract.shift.le.i.i.i.i to i8
  %i.wb = extractelement <2 x i64> %2, i64 1
  br label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i

_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i: ; preds = %.noexc.i.i29.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i, %.noexc33.i.i.i.i, %.loopexit170.i.i.i.i
  %.sroa.25.sroa.0.1169.i.i.i.i = phi i8 [ %.sroa.25.sroa.0.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.0.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.0.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.25.sroa.8.1168.i.i.i.i = phi i16 [ %.sroa.25.sroa.8.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.8.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.8.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.25.sroa.9.1167.i.i.i.i = phi i16 [ %.sroa.25.sroa.9.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.9.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.9.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.25.sroa.10.1166.i.i.i.i = phi i16 [ %.sroa.25.sroa.10.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.10.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.10.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.25.sroa.11.1165.i.i.i.i = phi i8 [ %.sroa.25.sroa.11.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.11.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.11.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.19.sroa.0.1164.in.i.i.i.i = phi i64 [ %.sroa.19.sroa.11.0.in.in.i.i.i.i, %.noexc33.i.i.i.i ], [ %i.rn, %.loopexit170.i.i.i.i ], [ %i.wb, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ %i.qn, %.noexc.i.i29.i.i ]
  %.sroa.10.sroa.11.1159.i.i.i.i = phi i64 [ %.sroa.10.sroa.0.0.i.i41.i.i, %.noexc33.i.i.i.i ], [ %.sroa.10.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %i.wa, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.noexc.i.i29.i.i ]
  %.sroa.10.sroa.12.1158.i.i.i.i = phi i64 [ %.sroa.10.sroa.12.0.i.i40.i.i, %.noexc33.i.i.i.i ], [ %.sroa.0117.sroa.0.5.extract.shift.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.10.sroa.12.0.extract.shift.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ -9223372036854775808, %.noexc.i.i29.i.i ]
  %.sroa.10.sroa.10.0.insert.insert.i.i.i.i = and i64 %.sroa.10.sroa.11.1159.i.i.i.i, 1099511627775
  %.sroa.10.sroa.0.0.insert.insert.i.i.i.i = or i64 %.sroa.10.sroa.10.0.insert.insert.i.i.i.i, %.sroa.10.sroa.12.1158.i.i.i.i
  %.sroa.25.sroa.11.0.insert.ext.i.i.i.i = zext i8 %.sroa.25.sroa.11.1165.i.i.i.i to i64
  %.sroa.25.sroa.11.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.25.sroa.11.0.insert.ext.i.i.i.i, 56
  %.sroa.25.sroa.10.0.insert.ext.i.i.i.i = zext i16 %.sroa.25.sroa.10.1166.i.i.i.i to i64
  %.sroa.25.sroa.10.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.25.sroa.10.0.insert.ext.i.i.i.i, 40
  %.sroa.25.sroa.10.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.25.sroa.11.0.insert.shift.i.i.i.i, %.sroa.25.sroa.10.0.insert.shift.i.i.i.i
  %.sroa.25.sroa.9.0.insert.ext.i.i.i.i = zext i16 %.sroa.25.sroa.9.1167.i.i.i.i to i64
  %.sroa.25.sroa.9.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.25.sroa.9.0.insert.ext.i.i.i.i, 24
  %.sroa.25.sroa.9.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.25.sroa.10.0.insert.insert.i.i.i.i, %.sroa.25.sroa.9.0.insert.shift.i.i.i.i
  %.sroa.25.sroa.8.0.insert.ext.i.i.i.i = zext i16 %.sroa.25.sroa.8.1168.i.i.i.i to i64
  %.sroa.25.sroa.8.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.25.sroa.8.0.insert.ext.i.i.i.i, 8
  %.sroa.25.sroa.8.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.25.sroa.9.0.insert.insert.i.i.i.i, %.sroa.25.sroa.8.0.insert.shift.i.i.i.i
  %.sroa.25.sroa.0.0.insert.ext.i.i.i.i = zext i8 %.sroa.25.sroa.0.1169.i.i.i.i to i64
  %.sroa.25.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.25.sroa.8.0.insert.insert.i.i.i.i, %.sroa.25.sroa.0.0.insert.ext.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i.i.i.i)
  br label %bb.jd

bb.iz:                                            ; preds = %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.8.0..sroa_idx15.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.31.i.i.i.i, i64 200, i1 false), !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.t, align 8, !noalias !556
  store <2 x i64> %2, ptr %.sroa.6.0..sroa_idx14.i.i.i.i, align 8, !noalias !556
  store i64 %.sroa.25.0.copyload.i.i.i.i, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx14.sroa_idx.i.i.i.i, align 8, !noalias !556
  %i.wc = load i64, ptr %i.cu, align 8, !alias.scope !578, !noalias !579, !noundef !8 ; 3 uses
  %i.wd = load i64, ptr %i.u, align 8, !range !19, !alias.scope !578, !noalias !579, !noundef !8
  %i.we = icmp eq i64 %i.wc, %i.wd
  br i1 %i.we, label %bb.ja, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8push_mutCskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i

bb.ja:                                            ; preds = %bb.iz
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8grow_oneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8push_mutCskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i unwind label %bb.jb, !noalias !580

bb.jb:                                            ; preds = %bb.ja
  %i.wf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.t) #22
          to label %.body.i.i.i.i unwind label %bb.jc, !noalias !558

bb.jc:                                            ; preds = %bb.jb
  %i.wg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !558
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8push_mutCskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i: ; preds = %bb.ja, %bb.iz
  %i.wh = load ptr, ptr %i.ct, align 8, !alias.scope !578, !noalias !579, !nonnull !8, !noundef !8 ; 2 uses
  %i.wi = getelementptr inbounds nuw [232 x i8], ptr %i.wh, i64 %i.wc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.wi, ptr noundef nonnull align 8 dereferenceable(232) %i.t, i64 232, i1 false), !noalias !558
  %i.wj = add i64 %i.wc, 1                        ; 2 uses
  store i64 %i.wj, ptr %i.cu, align 8, !alias.scope !578, !noalias !579
  %exitcond.not.i.i.i.i = icmp eq i64 %i.qj, %.sroa.5109.0.copyload.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i.i

bb.jd:                                            ; preds = %bb.ji, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i
  %.sroa.1074.1.i.i = phi i64 [ -9223372036854775808, %bb.ji ], [ %.sroa.10.sroa.0.0.insert.insert.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i ]
  %.sroa.1776.1.i.i = phi i64 [ %i.wq, %bb.ji ], [ %.sroa.19.sroa.0.1164.in.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i ]
  %.sroa.2279.1.i.i = phi i64 [ undef, %bb.ji ], [ %.sroa.25.sroa.0.0.insert.insert.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.jg unwind label %bb.je, !noalias !558

bb.je:                                            ; preds = %bb.jd
  %i.wk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !581, !noalias !556 ; 2 uses
  %i.wl = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.wl, label %.thread158.i.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %.val3.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !581, !noalias !556, !nonnull !8, !noundef !8
  %i.wm = mul nuw i64 %.val2.i.i.i.i.i, 232
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.wm, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !558
  br label %.thread158.i.i

bb.jg:                                            ; preds = %bb.jd
  %.val.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !581, !noalias !556 ; 2 uses
  %i.wn = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.wn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %.val1.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !581, !noalias !556, !nonnull !8, !noundef !8
  %i.wo = mul nuw i64 %.val.i.i.i.i.i, 232
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.wo, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !558
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i: ; preds = %bb.jh, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !556
  br label %.thread170.i.i

bb.ji:                                            ; preds = %bb.fy
  %i.wp = extractvalue { i64, ptr } %i.qg, 1
  %i.wq = ptrtoint ptr %i.wp to i64
  br label %bb.jd

bb.jj:                                            ; preds = %.body.i.i.i.i
  %i.wr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !558
  unreachable

.thread170.i.i:                                   ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i, %bb.ft, %bb.fs
  %.sroa.1074.2.ph.i.i = phi i64 [ -9223372036854775806, %bb.ft ], [ %.sroa.1074.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i ], [ -9223372036854775806, %bb.fs ]
  %.sroa.1776.2.ph.i.i = phi i64 [ ptrtoint (ptr @47 to i64), %bb.ft ], [ %.sroa.1776.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i ], [ ptrtoint (ptr @48 to i64), %bb.fs ]
  %.sroa.2279.2.ph.i.i = phi i64 [ 27, %bb.ft ], [ %.sroa.2279.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i ], [ 47, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !555
  br label %bb.jk

bb.jk:                                            ; preds = %.thread170.i.i, %bb.fr
  %.sroa.1074.0.i.i = phi i64 [ %.sroa.1074.2.ph.i.i, %.thread170.i.i ], [ %.sroa.0107.0.copyload.i.i, %bb.fr ] ; 2 uses
  %.sroa.1776.0.i.i = phi i64 [ %.sroa.1776.2.ph.i.i, %.thread170.i.i ], [ %.sroa.4108.0.copyload.i.i, %bb.fr ] ; 2 uses
  %.sroa.2279.0.i.i = phi i64 [ %.sroa.2279.2.ph.i.i, %.thread170.i.i ], [ %.sroa.5109.0.copyload.i.i, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !464
  %i.ws = load i64, ptr %i.bf, align 8, !range !467, !alias.scope !582, !noalias !464, !noundef !8
  %i.wt = icmp eq i64 %i.ws, -2
  br i1 %i.wt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscWUIX17zZnI_3zip6result8ZipErrorEECskVIURZGHVHJ_12tensor_tools.exit.i.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip6result8ZipErrorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscWUIX17zZnI_3zip6result8ZipErrorEECskVIURZGHVHJ_12tensor_tools.exit.i.i unwind label %.thread150.i.i, !noalias !466

.loopexit.loopexit.i.i:                           ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8push_mutCskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i
  %i.wu = ptrtoint ptr %i.wh to i64
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !464
  br label %.loopexit.i.i

.loopexit.loopexit1619.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.wv = inttoptr i64 %.sroa.12.3.i.i to ptr
  %.sroa.2279.16.copyload.pre.i.i = load i64, ptr %i.ct, align 8, !noalias !583
  %.sroa.25.16.copyload.pre.i.i = load i64, ptr %i.cu, align 8, !noalias !583
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit1619.i.i, %.loopexit.loopexit.i.i
  %i.ww = phi ptr [ %i.wv, %.loopexit.loopexit1619.i.i ], [ %.pre.i.i, %.loopexit.loopexit.i.i ]
  %.sroa.25.16.copyload.i.i = phi i64 [ %.sroa.25.16.copyload.pre.i.i, %.loopexit.loopexit1619.i.i ], [ %i.wj, %.loopexit.loopexit.i.i ]
  %.sroa.2279.16.copyload.i.i = phi i64 [ %.sroa.2279.16.copyload.pre.i.i, %.loopexit.loopexit1619.i.i ], [ %i.wu, %.loopexit.loopexit.i.i ]
  %.sroa.1776.16.copyload.i.i = load i64, ptr %i.u, align 8, !noalias !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !464
  store i64 0, ptr %i.bb, align 8, !noalias !464
  %.sroa.1776.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.1776.16.copyload.i.i, ptr %.sroa.1776.0..sroa_idx.i.i, align 8, !noalias !464
  %.sroa.2279.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %.sroa.2279.16.copyload.i.i, ptr %.sroa.2279.0..sroa_idx.i.i, align 8, !noalias !464
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 %.sroa.25.16.copyload.i.i, ptr %.sroa.25.0..sroa_idx.i.i, align 8, !noalias !464
  %.sroa.2582.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i64 %.sroa.0107.0.copyload.i.i, ptr %.sroa.2582.0..sroa_idx.i.i, align 8, !noalias !464
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store i64 %.sroa.4108.0.copyload.i.i, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !noalias !464
  %i.wx = trunc nuw i64 %.sroa.065.3.i.i to i1    ; 3 uses
  %.sroa.3.0.i.i = select i1 %i.wx, i64 %.sroa.18.3.i.i, i64 undef
  %.sroa.018.0.i.i = select i1 %i.wx, ptr %i.ww, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !464
  invoke void @_RNvMNtNtCscWUIX17zZnI_3zip4read11zip_archiveNtB2_13SharedBuilder5build(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.bb, ptr noalias noundef nonnull %.sroa.37.2.i.i, i64 noundef %.sroa.40.2.i.i, ptr noalias noundef %.sroa.018.0.i.i, i64 %.sroa.3.0.i.i)
          to label %bb.jm unwind label %bb.fq, !noalias !466

bb.jm:                                            ; preds = %.loopexit.i.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.ba, align 8, !noalias !584 ; 2 uses
  %.sroa.819.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.819.0.copyload.i = load i64, ptr %.sroa.819.0..sroa_idx.i, align 8, !noalias !584 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !584 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.14.sroa.0.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !584 ; 2 uses
  %.sroa.14.sroa.7.0..sroa.14.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14.sroa.7.0..sroa.14.0..sroa_idx.sroa_idx.i, i64 104, i1 false), !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !464
  %i.wy = load i64, ptr %i.bf, align 8, !range !467, !alias.scope !585, !noalias !464, !noundef !8
  %i.wz = icmp eq i64 %i.wy, -2
  br i1 %i.wz, label %_RNvMs0_NtNtCscWUIX17zZnI_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE12get_metadataCskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip6result8ZipErrorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RNvMs0_NtNtCscWUIX17zZnI_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE12get_metadataCskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.ju, !noalias !462

.thread150.i.i:                                   ; preds = %bb.jl
  %i.xa = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.1074.0.i.i, ptr %i.bf, align 8, !noalias !464
  store i64 %.sroa.1776.0.i.i, ptr %.sroa.588.0..sroa_idx89.i.i, align 8, !noalias !464
  store i64 %.sroa.2279.0.i.i, ptr %.sroa.691.0..sroa_idx92.i.i, align 8, !noalias !464
  br label %.thread158.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscWUIX17zZnI_3zip6result8ZipErrorEECskVIURZGHVHJ_12tensor_tools.exit.i.i: ; preds = %bb.jl, %bb.jk
  store i64 %.sroa.1074.0.i.i, ptr %i.bf, align 8, !noalias !464
  store i64 %.sroa.1776.0.i.i, ptr %.sroa.588.0..sroa_idx89.i.i, align 8, !noalias !464
  store i64 %.sroa.2279.0.i.i, ptr %.sroa.691.0..sroa_idx92.i.i, align 8, !noalias !464
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.xb = icmp eq i64 %.sroa.40.2.i.i, 0
  br i1 %i.xb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscWUIX17zZnI_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i50.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i50.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscWUIX17zZnI_3zip6result8ZipErrorEECskVIURZGHVHJ_12tensor_tools.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.37.2.i.i, i64 noundef %.sroa.40.2.i.i, i64 noundef 1) #23, !noalias !587
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscWUIX17zZnI_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscWUIX17zZnI_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i50.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscWUIX17zZnI_3zip6result8ZipErrorEECskVIURZGHVHJ_12tensor_tools.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.xc = icmp eq i64 %.sroa.065.3.i.i, 0
  br i1 %i.xc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip4spec23CentralDirectoryEndInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i, label %bb.jo

bb.jo:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscWUIX17zZnI_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !589, !noalias !464, !noundef !8 ; 3 uses
  %i.xd = icmp eq ptr %.val.i.i.i.i, null
  %i.xe = icmp eq i64 %.sroa.18.3.i.i, 0
  %or.cond.i.i.i.i.i.i.i = select i1 %i.xd, i1 true, i1 %i.xe
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip4spec23CentralDirectoryEndInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.jo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.sroa.18.3.i.i, i64 noundef 1) #23, !noalias !590
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip4spec23CentralDirectoryEndInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip4spec23CentralDirectoryEndInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.jo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscWUIX17zZnI_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !464
  br label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.thread158.i.i, %bb.fq
  %.sroa.017.0156.i.i = phi i1 [ %.sroa.017.2.i.i, %bb.fq ], [ true, %.thread158.i.i ], [ true, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i ]
  %.pn154.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.fq ], [ %.pn155.i.i, %.thread158.i.i ], [ %.pn155.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i ] ; 3 uses
  %i.xf = icmp ne i64 %.sroa.065.3.i.i, 0
end_hunk_1
