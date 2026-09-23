Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.12?download=true
inline.NumInlined: 5045
inline.NumDeleted: 2384
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE21by_index_with_optionsCs7gfv9tzbXmh_6yara_x:bb.a
  %.sroa.39.i.sroa.5.0 = phi i64 [ %.sroa.6.i.sroa.7.0.copyload143, %bb.al ], [ %i.cm, %bb.af ]
  %.sroa.39.i.sroa.6.0 = phi i64 [ %.sroa.6.i.sroa.9.0.copyload145, %bb.al ], [ %i.cm, %bb.af ]
  %.sroa.07.0.i = phi i64 [ %i.dp, %bb.al ], [ 0, %bb.af ]
  %.sroa.4.0.i = phi i64 [ %.sroa.532.0.copyload.i, %bb.al ], [ undef, %bb.af ]
  store i64 %.sroa.07.0.i, ptr %i.n, align 8
  %.sroa.523.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.39.i.sroa.0.0, ptr %.sroa.523.sroa.7.0..sroa_idx, align 8
  %.sroa.523.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.39.i.sroa.5.0, ptr %.sroa.523.sroa.8.0..sroa_idx, align 8
  %.sroa.523.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.39.i.sroa.6.0, ptr %.sroa.523.sroa.9.0..sroa_idx, align 8
  %.sroa.523.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.4.0.i, ptr %.sroa.523.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.z, ptr %i.ds, align 8
  store i64 2, ptr %i.m, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.z, i64 186
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 188
  %i.dy = load i32, ptr %i.dx, align 4, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18224
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18224
  invoke void @_RNvMNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtCsgtXWG2OCnrB_3zip4read12CryptoReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEE13with_capacityCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, i64 noundef 8192, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.n)
          to label %.noexc unwind label %bb.as

.noexc:                                           ; preds = %bb.an
  invoke void @_RNvMs4_NtCsgtXWG2OCnrB_3zip11compressionINtB5_12DecompressorINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderINtNtB7_4read12CryptoReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, i16 noundef range(i16 0, 3) %i.dr, i16 %i.du, i64 noundef %i.dw, i16 noundef 0)
          to label %.noexc54 unwind label %bb.as

.noexc54:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18224
  %i.dz = load i64, ptr %i.c, align 8, !range !10, !noalias !18224, !noundef !8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.63.i.sroa.0.0.copyload148 = load ptr, ptr %i.eb, align 8, !noalias !18224 ; 2 uses
  %.sroa.63.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.i.sroa.6.0..sroa_idx, i64 16, i1 false), !noalias !18224
  br i1 %i.ea, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %.noexc54
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.8.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx5.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.57.0..sroa_idx.i, i64 80, i1 false), !noalias !18224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18224
  store i64 %i.dz, ptr %i.a, align 8, !noalias !18224
  %.sroa.63.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.63.i.sroa.0.0.copyload148, ptr %.sroa.63.0..sroa_idx4.i, align 8, !noalias !18224
  %.sroa.63.i.sroa.6.0..sroa.63.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.i.sroa.6.0..sroa.63.0..sroa_idx4.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.i.sroa.6, i64 16, i1 false), !noalias !18224
  invoke void @_RNvMNtCsgtXWG2OCnrB_3zip5crc32INtB2_11Crc32ReaderINtNtB4_11compression12DecompressorINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderINtNtB4_4read12CryptoReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEEE3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.a, i32 noundef %i.dy, i1 noundef zeroext false)
          to label %.noexc55 unwind label %bb.as

.noexc55:                                         ; preds = %bb.ao
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !18225
  %i.ec = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 136, i64 noundef 8) #38, !noalias !18225 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ap, label %bb.aw, !prof !11

bb.ap:                                            ; preds = %.noexc55
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #39
          to label %.noexc.i unwind label %bb.aq, !noalias !18224

.noexc.i:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgtXWG2OCnrB_3zip5crc3211Crc32ReaderINtNtBG_11compression12DecompressorINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderINtNtBG_4read12CryptoReaderINtNtNtB4_2io6cursor6CursorRShEEEEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d) #34
          to label %.body unwind label %bb.ar, !noalias !18224

bb.ar:                                            ; preds = %bb.aq
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18224
  unreachable

bb.as:                                            ; preds = %bb.ao, %.noexc, %bb.an
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.as
  %eh.lpad-body = phi { ptr, i32 } [ %i.eg, %bb.as ], [ %i.ee, %bb.aq ] ; 2 uses
  %i.eh = load i64, ptr %i.m, align 8, !range !10, !alias.scope !18226, !noundef !8
  %i.ei = icmp eq i64 %i.eh, 2
  br i1 %i.ei, label %common.resume, label %bb.at

bb.at:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.m)
          to label %common.resume unwind label %bb.ax

bb.au:                                            ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.i.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.63.i.sroa.0.0.copyload148, ptr %i.ej, align 8
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  %i.ek = load i64, ptr %i.m, align 8, !range !10, !alias.scope !18227, !noundef !8
  %i.el = icmp eq i64 %i.ek, 2
  br i1 %i.el, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEECs7gfv9tzbXmh_6yara_x.exit57, label %bb.av

bb.av:                                            ; preds = %bb.au
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEECs7gfv9tzbXmh_6yara_x.exit57

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEECs7gfv9tzbXmh_6yara_x.exit57: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.d

bb.aw:                                            ; preds = %.noexc55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ec, ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 136, i1 false), !noalias !18224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.633.sroa.5.0..sroa.633.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.633.sroa.5.0..sroa.633.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %i.m, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 2, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ec, ptr %.sroa.633.0..sroa_idx, align 8
  br label %bb.d

bb.ax:                                            ; preds = %bb.at
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE30by_name_with_optional_passwordCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly captures(address, read_provenance) %4, i64 %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = tail call { i64, i64 } @_RINvMs3_NtCs907JfTDu8Xv_8indexmap3mapINtB6_8IndexMapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE12get_index_ofeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.e, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.j, align 8
  store ptr %4, ptr %i.a, align 8
  store i64 %5, ptr %i.i, align 8
  call void @_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE21by_index_with_optionsCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.a)
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
define hidden void @_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE3newCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [216 x i8], align 8               ; 43 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [46 x i8], align 4                ; 16 uses
  %.sroa.36.i.i.i.i.i = alloca [184 x i8], align 8 ; 5 uses
  %i.t = alloca [216 x i8], align 8               ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [216 x i8], align 8               ; 7 uses
  %.sroa.28.i.i.i.i = alloca [184 x i8], align 8  ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [288 x i8], align 32              ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [288 x i8], align 32              ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0.i.i.i333.i.i.i = alloca [304 x i8], align 32 ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [56 x i8], align 4               ; 15 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [288 x i8], align 32             ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [288 x i8], align 32             ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0.i.i.i.i.i.i = alloca [304 x i8], align 32 ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %i.ar = alloca [20 x i8], align 4               ; 10 uses
  %i.as = alloca [16 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [22 x i8], align 4               ; 11 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [16 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [64 x i8], align 8               ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.6527.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 22 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 33 uses
  %i.bn = alloca [384 x i8], align 32             ; 20 uses
  %i.bo = alloca [120 x i8], align 8              ; 20 uses
  %i.bp = alloca [56 x i8], align 8               ; 9 uses
  %i.bq = alloca [136 x i8], align 8              ; 8 uses
  %i.br = alloca [40 x i8], align 8               ; 10 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [128 x i8], align 8              ; 20 uses
  %i.bu = alloca [24 x i8], align 8               ; 15 uses
  %i.bv = alloca [152 x i8], align 8              ; 10 uses
  %i.bw = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14.sroa.7.i = alloca [104 x i8], align 8 ; 5 uses
  %i.bx = alloca [24 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18490)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18491)
  %i.by = call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef 1, i64 noundef 0), !noalias !18492 ; 2 uses
  %i.bz = extractvalue { i64, ptr } %i.by, 0
  %i.ca = extractvalue { i64, ptr } %i.by, 1      ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cc = trunc nuw i64 %i.bz to i1
  br i1 %i.cc, label %_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE12get_metadataCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !18493
  store i64 -2, ptr %i.bu, align 8, !noalias !18493
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 96 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 104 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 328 ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.4201.0..sroa_idx1844.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.5202.0..sroa_idx1845.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.22.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.30.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %.sroa.429.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %.sroa.11.i.sroa.5.0..sroa.11.5..sroa.429.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.11.i.sroa.6.0..sroa.11.5..sroa.429.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %.sroa.11.i.sroa.7.0..sroa.11.5..sroa.429.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %.sroa.22.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.sroa.17435.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.23.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.17.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.23.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %.sroa.424.0..sroa_idx.i260.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %.sroa.429.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.sroa.9.i.sroa.5.0..sroa.429.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.17.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 15
  %.sroa.5150.0..sroa_idx151.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 9 uses
  %.sroa.6153.0..sroa_idx154.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.611.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 320 ; 4 uses
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 304 ; 5 uses
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 312 ; 5 uses
  %.sroa.813.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 360 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bn, i64 256 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 272 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bn, i64 264 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bn, i64 288 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bn, i64 296 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bn, i64 352 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.46.0..sroa_idx.i.i.i289.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.19.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.26.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.430.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.9.i.sroa.5.0..sroa.430.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.sroa.9.i.sroa.6.0..sroa.430.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %.sroa.19.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  %.sroa.26.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 23
  %.sroa.28.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.30.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.31.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.32.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.sroa.5188.0..sroa_idx189.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 5 uses
  %.sroa.6191.0..sroa_idx192.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 4 uses
  %.sroa.4198.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %.sroa.5199.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %.sroa.4113.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 100
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  %i.ed = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.4166.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.5167.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.6168.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.7169.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  %i.ee = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %.sroa.429.0..sroa_idx.i.i.i.i45.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.11.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  %.sroa.15.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  %.sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 23
  %.sroa.16.sroa.8.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.16.sroa.9.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %.sroa.16.sroa.10.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 30
  %.sroa.16.sroa.11.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.16.sroa.13.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 38
  %.sroa.16.sroa.14.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 42
  %i.ej = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5125.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.538.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5139.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.348.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.549.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.459.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.660.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.fa = getelementptr inbounds nuw i8, ptr %i.i, i64 209
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 202
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 204
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 205
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 206
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 184 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 186 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.i, i64 196
  %.sroa.553.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 198
  %.sroa.654.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 188
  %i.fj = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.fl = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.fn = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.fq = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.fr = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.fs = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ft = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %.sroa.3152.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.fw = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 207
  %i.fy = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.ga = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %.sroa.464.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.565.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.8164.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.31.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.512.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.8.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i50.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.15.8..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.16.8..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.16.sroa.8.0..sroa.16.8..sroa_idx7.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %.sroa.16.sroa.9.0..sroa.16.8..sroa_idx7.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 21
  %.sroa.16.sroa.10.0..sroa.16.8..sroa_idx7.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 23
  %i.gc = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.24.8..sroa_idx50.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.31.8..sroa_idx53.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5151.0..sroa_idx152.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %.sroa.6154.0..sroa_idx155.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  %.sroa.0.i.i.i.i.i.i.288.i.i.i.i.i.i.288.i.i.i.i.i.i.288.i.i.i.i.i.288.i.i.i.i.i.288.i.i.i.i.288.i.i.i.i.288.i.i.i.288.i.i.i.288.i.i.288.i.i.288.i.288.i.288..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i, i64 288
  %.sroa.0.i.i.i333.i.i.i.288.i.i.i333.i.i.i.288.i.i.i333.i.i.i.288.i.i.i333.i.i.288.i.i.i333.i.i.288.i.i.i333.i.288.i.i.i333.i.288.i.i.i333.288.i.i.i333.288.i.i.288.i.i.288.i.288.i.288..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i333.i.i.i, i64 288
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec23CentralDirectoryEndInfoECs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.b
  %.sroa.018.0.i.i = phi i64 [ %i.cb, %bb.b ], [ %.sroa.38.2.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec23CentralDirectoryEndInfoECs7gfv9tzbXmh_6yara_x.exit.i.i ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !18493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !18494
  call void @llvm.experimental.noalias.scope.decl(metadata !18495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !18496
  call void @llvm.experimental.noalias.scope.decl(metadata !18497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !18498
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, i64 noundef 2048, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.critedge32.thread187.loopexit.i.i, !noalias !18492

.noexc.i.i:                                       ; preds = %bb.c
  %i.gd = load i64, ptr %i.bc, align 8, !range !7, !noalias !18498, !noundef !8
  %i.ge = trunc nuw i64 %i.gd to i1
  %i.gf = load i64, ptr %i.cd, align 8, !range !17, !noalias !18498, !noundef !8 ; 2 uses
  br i1 %i.ge, label %bb.d, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i, !prof !11

bb.d:                                             ; preds = %.noexc.i.i
  %i.gg = load i64, ptr %i.ce, align 8, !noalias !18498
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.gf, i64 %i.gg) #39
          to label %.noexc42.i.i unwind label %.critedge32.thread187.loopexit.split-lp.i.i, !noalias !18492

.noexc42.i.i:                                     ; preds = %bb.d
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %.noexc.i.i
  %i.gh = load ptr, ptr %i.ce, align 8, !noalias !18498, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !18498
  store i64 %i.gf, ptr %i.be, align 8, !alias.scope !18497, !noalias !18496
  store ptr %i.gh, ptr %i.cf, align 8, !alias.scope !18497, !noalias !18496
  store i64 2048, ptr %i.cg, align 8, !alias.scope !18497, !noalias !18496
  %i.gi = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.be)
          to label %.noexc43.i.i unwind label %.critedge32.thread187.loopexit.i.i, !noalias !18492 ; 2 uses

.noexc43.i.i:                                     ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  %i.gj = extractvalue { ptr, i64 } %i.gi, 0      ; 12 uses
  %i.gk = extractvalue { ptr, i64 } %i.gi, 1      ; 16 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !18496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !18496
  invoke void @_RNvXs_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB4_9BackwardsNtB4_15FinderDirection3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 4)
          to label %bb.f unwind label %bb.e, !noalias !18499

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder9BackwardsECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.e
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.gm, %bb.e ], [ %i.go, %bb.g ], [ %i.go, %bb.h ], [ %i.go, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %.critedge32.thread.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder9BackwardsECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef %i.gk, i64 noundef 1) #38, !noalias !18499
  br label %.critedge32.thread.i.i

bb.e:                                             ; preds = %.noexc43.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder9BackwardsECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc43.i.i
  %i.gn = invoke noundef i64 @_RNvXs_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB4_9BackwardsNtB4_15FinderDirection12reset_cursor(i64 noundef 0, i64 noundef %.sroa.018.0.i.i, i64 noundef 2048)
          to label %_RNvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB5_11MagicFinderNtB5_9BackwardsE3newCs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.g, !noalias !18499 ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18500)
  call void @llvm.experimental.noalias.scope.decl(metadata !18501)
  call void @llvm.experimental.noalias.scope.decl(metadata !18502)
  call void @llvm.experimental.noalias.scope.decl(metadata !18503)
  %i.gp = load i64, ptr %i.bd, align 8, !range !7, !alias.scope !18504, !noalias !18496, !noundef !8
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder9BackwardsECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.gr, align 8, !alias.scope !18504, !noalias !18496, !noundef !8 ; 2 uses
  %i.gs = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.gs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder9BackwardsECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.gt, align 8, !alias.scope !18504, !noalias !18496, !nonnull !8, !noundef !8
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i, i64 noundef 1) #38, !noalias !18505
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder9BackwardsECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i

_RNvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB5_11MagicFinderNtB5_9BackwardsE3newCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj) ]
  store ptr %i.gj, ptr %i.ch, align 8, !alias.scope !18495, !noalias !18494
  store i64 %i.gk, ptr %i.ci, align 8, !alias.scope !18495, !noalias !18494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bo, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false), !noalias !18494
  store i64 %i.gn, ptr %i.cj, align 8, !alias.scope !18495, !noalias !18494
  store i64 0, ptr %i.ck, align 8, !alias.scope !18495, !noalias !18494
  store i64 0, ptr %i.cl, align 8, !alias.scope !18495, !noalias !18494
  store i64 %.sroa.018.0.i.i, ptr %i.cm, align 8, !alias.scope !18495, !noalias !18494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !18496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !18494
  store i64 2, ptr %i.cn, align 8, !noalias !18494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !18494
  store i64 -2, ptr %i.bm, align 8, !noalias !18494
  %.not.i11901233.i.i.i = icmp ult i64 %i.gn, %.sroa.018.0.i.i
  br i1 %.not.i11901233.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.thread.i.i.i

.loopexit.thread.i.i.i:                           ; preds = %_RNvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB5_11MagicFinderNtB5_9BackwardsE3newCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !18494
  br label %bb.gb

.lr.ph.i.i.i:                                     ; preds = %_RNvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB5_11MagicFinderNtB5_9BackwardsE3newCs7gfv9tzbXmh_6yara_x.exit.i.i.i, %.lr.ph.i.backedge.i.i.i
  %i.gu = phi i1 [ false, %.lr.ph.i.backedge.i.i.i ], [ true, %_RNvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB5_11MagicFinderNtB5_9BackwardsE3newCs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  %i.gv = phi i64 [ %i.iw, %.lr.ph.i.backedge.i.i.i ], [ undef, %_RNvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB5_11MagicFinderNtB5_9BackwardsE3newCs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  %i.gw = phi i64 [ %.lcssa1252.i.i.i, %.lr.ph.i.backedge.i.i.i ], [ %i.gn, %_RNvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB5_11MagicFinderNtB5_9BackwardsE3newCs7gfv9tzbXmh_6yara_x.exit.i.i.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18506)
  %i.gx = call i64 @llvm.uadd.sat.i64(i64 %i.gw, i64 %i.gk) ; 2 uses
  %.not31.i.peel.i.i.i = icmp ugt i64 %i.gx, %i.gw
  br i1 %.not31.i.peel.i.i.i, label %bb.i, label %.loopexit.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %..i.i.peel.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.018.0.i.i, i64 %i.gx)
  %i.gy = sub nuw i64 %..i.i.peel.i.i.i, %i.gw    ; 5 uses
  %.not32.i.peel.i.i.i = icmp ugt i64 %i.gy, %i.gk
  br i1 %.not32.i.peel.i.i.i, label %.loopexit1788.i.i.i, label %bb.j, !prof !24

bb.j:                                             ; preds = %bb.i
  br i1 %i.gu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !18507
  invoke void @_RNvXs_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB4_9BackwardsNtB4_15FinderDirection12scope_window(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gj, i64 noundef %i.gy, i64 noundef %i.gv)
          to label %.noexc237.peel.i.i.i unwind label %.thread540.loopexit.loopexit.split-lp.i.i.i, !noalias !18508

.noexc237.peel.i.i.i:                             ; preds = %bb.k
  %.pre103.i.peel.i.i.i = load ptr, ptr %i.bb, align 8, !noalias !18507
  %.pre104.i.peel.i.i.i = load i64, ptr %i.cp, align 8, !noalias !18507
  %.pre105.i.peel.i.i.i = load i64, ptr %i.cq, align 8, !noalias !18507
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.gz = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef 0, i64 noundef %i.gw)
          to label %.noexc234.peel.i.i.i unwind label %.thread540.loopexit.loopexit.split-lp.i.i.i, !noalias !18508 ; 2 uses

.noexc234.peel.i.i.i:                             ; preds = %bb.l
  %i.ha = extractvalue { i64, ptr } %i.gz, 0
  %i.hb = trunc nuw i64 %i.ha to i1
  br i1 %i.hb, label %.loopexit1791.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc234.peel.i.i.i
  %i.hc = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.gj, i64 noundef %i.gy)
          to label %.noexc235.peel.i.i.i unwind label %.thread540.loopexit.loopexit.split-lp.i.i.i, !noalias !18508 ; 2 uses

.noexc235.peel.i.i.i:                             ; preds = %bb.m
  %.not34.i.peel.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not34.i.peel.i.i.i, label %bb.n, label %.loopexit1792.i.i.i

bb.n:                                             ; preds = %.noexc235.peel.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !18507
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc237.peel.i.i.i
  %i.hd = phi i64 [ %.pre105.i.peel.i.i.i, %.noexc237.peel.i.i.i ], [ 0, %bb.n ]
  %i.he = phi i64 [ %.pre104.i.peel.i.i.i, %.noexc237.peel.i.i.i ], [ %i.gy, %bb.n ]
  %i.hf = phi ptr [ %.pre103.i.peel.i.i.i, %.noexc237.peel.i.i.i ], [ %i.gj, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !18507
  %i.hg = invoke { i64, i64 } @_RNvXs_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB4_9BackwardsNtB4_15FinderDirection4find(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hf, i64 noundef %i.he)
          to label %.noexc238.peel.i.i.i unwind label %.thread540.loopexit.loopexit.split-lp.i.i.i, !noalias !18508 ; 2 uses

.noexc238.peel.i.i.i:                             ; preds = %bb.o
  %i.hh = extractvalue { i64, i64 } %i.hg, 0
  %i.hi = trunc nuw i64 %i.hh to i1
  br i1 %i.hi, label %.loopexit1793.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc238.peel.i.i.i
  store i64 0, ptr %i.ck, align 8, !alias.scope !18506, !noalias !18509
  %i.hj = invoke { i64, i64 } @_RNvXs_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB4_9BackwardsNtB4_15FinderDirection11move_cursor(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, i64 noundef %i.gw, i64 noundef 0, i64 noundef %.sroa.018.0.i.i, i64 noundef %i.gk)
          to label %.noexc240.peel.i.i.i unwind label %.thread540.loopexit.loopexit.split-lp.i.i.i, !noalias !18508 ; 2 uses

.noexc240.peel.i.i.i:                             ; preds = %bb.p
  %i.hk = extractvalue { i64, i64 } %i.hj, 0
  %i.hl = trunc nuw i64 %i.hk to i1
  br i1 %i.hl, label %bb.q, label %.loopexit1794.i.i.i

bb.q:                                             ; preds = %.noexc240.peel.i.i.i
  %i.hm = extractvalue { i64, i64 } %i.hj, 1      ; 3 uses
  store i64 %i.hm, ptr %i.cj, align 8, !alias.scope !18506, !noalias !18509
  %.not.i.peel.i.i.i = icmp ult i64 %i.hm, %.sroa.018.0.i.i
  br i1 %.not.i.peel.i.i.i, label %.peel.next.i.i.i, label %.loopexit.i.i.i
end_hunk_0
begin_hunk_1_@_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE3newCs7gfv9tzbXmh_6yara_x:bb.a
  %i.aax = add i64 %i.aaw, %.sroa.0170.0.copyload.i.i ; 2 uses
  %i.aay = icmp ult i64 %i.aax, %i.aaw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18652
  br i1 %i.aay, label %bb.jq, label %bb.jp, !prof !11

bb.jp:                                            ; preds = %bb.jo
  store i64 -1, ptr %i.g, align 8, !noalias !18652
  store ptr @341, ptr %.sroa.8164.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !18652
  store i64 27, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !18652
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %bb.jr unwind label %bb.jk, !noalias !18653

bb.jq:                                            ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18652
  br label %.loopexit168.i.i.i.i

bb.jr:                                            ; preds = %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18652
  store i64 %i.aax, ptr %i.ft, align 8, !noalias !18652
  %.sroa.046.0.copyload.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !18659 ; 2 uses
  %.sroa.14.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18659 ; 2 uses
  %.sroa.24.0.copyload.i.i.i.i.i = load i64, ptr %i.fu, align 8, !noalias !18659 ; 2 uses
  %.sroa.31.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18659 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.36.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %i.ga, i64 184, i1 false), !noalias !18659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !18652
  %i.aaz = icmp eq i64 %i.yb, 0
  br i1 %i.aaz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit246.i.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i245.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i245.i.i.i.i.i.i: ; preds = %bb.jr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ya, i64 noundef %i.yb, i64 noundef 1) #38, !noalias !18653
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit246.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit246.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i245.i.i.i.i.i.i, %bb.jr
  br i1 %.not191.i.i.i.i.i.i, label %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i247.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i247.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit246.i.i.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xu, i64 noundef %i.xv, i64 noundef 1) #38, !noalias !18653
  br label %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

.loopexit168.i.i.i.i:                             ; preds = %bb.jn, %bb.jq, %bb.jm
  %.sroa.14.1.i.i.i.i.i = phi i64 [ %i.aaq, %bb.jm ], [ -1, %bb.jq ], [ -1, %bb.jn ]
  %.sroa.24.1.i.i.i.i.i = phi i64 [ %.sroa.24.8.copyload51.i.i.i.i.i, %bb.jm ], [ ptrtoint (ptr @341 to i64), %bb.jq ], [ ptrtoint (ptr @340 to i64), %bb.jn ]
  %.sroa.31.1.i.i.i.i.i = phi i64 [ %.sroa.31.8.copyload54.i.i.i.i.i, %bb.jm ], [ 27, %bb.jq ], [ 43, %bb.jn ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(216) %i.i)
          to label %bb.js unwind label %bb.iy, !noalias !18653

bb.js:                                            ; preds = %.loopexit168.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !18652
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit239.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i238.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %i.aba = icmp eq i64 %i.xv, 0
  br i1 %i.aba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i249.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i249.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit239.i.i.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xu, i64 noundef %i.xv, i64 noundef 1) #38, !noalias !18653
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i249.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit239.i.i.i.i.i.i
  %i.abb = icmp eq i64 %i.xp, 0
  %or.cond325.i.i.i.i.i.i = or i1 %i.abb, %.not324.i.i.i.i.i.i
  br i1 %or.cond325.i.i.i.i.i.i, label %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i251.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i: ; preds = %bb.hj, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i, %bb.hn
  %.sroa.14.2.i.i.i.i.i = phi i64 [ %i.xz, %bb.hn ], [ %i.xz, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i ], [ %i.xt, %bb.hj ] ; 2 uses
  %.sroa.24.2.in.i.i.i.i.i = phi ptr [ %i.ya, %bb.hn ], [ %i.ya, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i ], [ %i.xu, %bb.hj ]
  %.sroa.31.2.i.i.i.i.i = phi i64 [ %i.yb, %bb.hn ], [ %i.yb, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i ], [ %i.xv, %bb.hj ] ; 2 uses
  %.sroa.24.2.i.i.i.i.i = ptrtoint ptr %.sroa.24.2.in.i.i.i.i.i to i64 ; 2 uses
  %.old.i.i.i.i.i.i = icmp eq i64 %i.xp, 0
  br i1 %.old.i.i.i.i.i.i, label %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i251.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i251.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i
  %.sroa.14.3.i.i.i.i.i = phi i64 [ %.sroa.14.0.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i ], [ %.sroa.14.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i ]
  %.sroa.24.3.i.i.i.i.i = phi i64 [ %.sroa.24.0.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i ], [ %.sroa.24.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i ]
  %.sroa.31.3.i.i.i.i.i = phi i64 [ %.sroa.31.0.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i ], [ %.sroa.31.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xo, i64 noundef %i.xp, i64 noundef 1) #38, !noalias !18653
  br label %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i.i

bb.jt:                                            ; preds = %bb.jk
  %i.abc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18653
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit244.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i243.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %i.abd = icmp eq i64 %.sroa.10280.3.i.i.i.i.i.i, 0
  br i1 %i.abd, label %.thread307.i.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i253.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i253.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit244.i.i.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0279.3.i.i.i.i.i.i, i64 noundef %.sroa.10280.3.i.i.i.i.i.i, i64 noundef 1) #38, !noalias !18653
  br label %.thread307.i.i.i.i.i.i

.thread307.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i253.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit244.i.i.i.i.i.i, %.thread317.i.i.i.i.i.i
  %.sroa.10280.3.i.i814.i.i.i.i = phi i64 [ %.sroa.10280.3.i.i.i.i.i.i, %.thread317.i.i.i.i.i.i ], [ %.sroa.10280.3.i.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i253.i.i.i.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit244.i.i.i.i.i.i ]
  %.pn312.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i, %.thread317.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i253.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit244.i.i.i.i.i.i ] ; 2 uses
  %.sroa.089.7311.i.i.i.i.i.i = phi i1 [ true, %.thread317.i.i.i.i.i.i ], [ false, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i253.i.i.i.i.i.i ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit244.i.i.i.i.i.i ]
  %i.abe = icmp eq i64 %.sroa.11.0.i.i.i.i.i.i, 0
  br i1 %i.abe, label %.thread313.i.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i255.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i255.i.i.i.i.i.i: ; preds = %.thread307.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0283.0.i.i.i.i.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0283.0.i.i.i.i.i.i, i64 noundef %.sroa.11.0.i.i.i.i.i.i, i64 noundef 1) #38, !noalias !18653
  br label %.thread313.i.i.i.i.i.i

.thread294.i.i.i.i.i.i:                           ; preds = %.thread294.i.i.loopexit.split-lp.i.i.i.i, %.thread294.i.i.loopexit.i.i.i.i, %.thread313.i.i.i.i.i.i
  %.pn.pn302.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn312.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i ], [ %lpad.loopexit160.i.i.i.i, %.thread294.i.i.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp161.i.i.i.i, %.thread294.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0279.1300.i.i.i.i.i.i = phi ptr [ %.sroa.0279.3.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i ], [ %.sroa.0279.2.i.i.ph.i.i.i.i, %.thread294.i.i.loopexit.i.i.i.i ], [ %.sroa.0279.2.i.i.ph159.i.i.i.i, %.thread294.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.10280.1299.i.i.i.i.i.i = phi i64 [ %.sroa.10280.3.i.i814.i.i.i.i, %.thread313.i.i.i.i.i.i ], [ %.sroa.10280.2.i.i.ph.i.i.i.i, %.thread294.i.i.loopexit.i.i.i.i ], [ %.sroa.10280.2.i.i.ph158.i.i.i.i, %.thread294.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.abf = icmp eq i64 %.sroa.10280.1299.i.i.i.i.i.i, 0
  br i1 %i.abf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i257.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i257.i.i.i.i.i.i: ; preds = %.thread294.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0279.1300.i.i.i.i.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0279.1300.i.i.i.i.i.i, i64 noundef %.sroa.10280.1299.i.i.i.i.i.i, i64 noundef 1) #38, !noalias !18653
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i

bb.ju:                                            ; preds = %.thread.i.i.i.i.i.i, %bb.hi
  %.pn200293.i.i.i.i.i.i = phi { ptr, i32 } [ %i.xs, %.thread.i.i.i.i.i.i ], [ %.pn.pn.pn.pn.i.i.i.i.i.i, %bb.hi ] ; 2 uses
  %i.abg = icmp eq i64 %i.xp, 0
  br i1 %i.abg, label %.body.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i259.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i259.i.i.i.i.i.i: ; preds = %bb.ju
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xo, i64 noundef %i.xp, i64 noundef 1) #38, !noalias !18653
  br label %.body.i.i.i.i

_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i251.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i, %bb.hg
  %.sroa.14.4.ph.i.i.i.i.i = phi i64 [ %i.xn, %bb.hg ], [ %.sroa.14.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i ], [ %.sroa.14.3.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i251.i.i.i.i.i.i ], [ %.sroa.14.0.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i ]
  %.sroa.24.4.ph.i.i.i.i.i = phi i64 [ %i.xq, %bb.hg ], [ %.sroa.24.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i ], [ %.sroa.24.3.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i251.i.i.i.i.i.i ], [ %.sroa.24.0.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i ]
  %.sroa.31.4.ph.i.i.i.i.i = phi i64 [ %i.xp, %bb.hg ], [ %.sroa.31.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i ], [ %.sroa.31.3.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i251.i.i.i.i.i.i ], [ %.sroa.31.0.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit250.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18646
  br label %.loopexit169.i.i.i.i

_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i247.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit246.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18646
  %i.abh = icmp eq i64 %.sroa.046.0.copyload.i.i.i.i.i, 2
  br i1 %i.abh, label %.loopexit169.i.i.i.i, label %bb.jw

.loopexit169.i.i.i.i:                             ; preds = %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i.i
  %.sroa.31.4172.i.i.i.i.i = phi i64 [ %.sroa.31.4.ph.i.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i.i ], [ %.sroa.31.0.copyload.i.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.24.4171.i.i.i.i.i = phi i64 [ %.sroa.24.4.ph.i.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i.i ], [ %.sroa.24.0.copyload.i.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  %.sroa.14.4170.i.i.i.i.i = phi i64 [ %.sroa.14.4.ph.i.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i.i ], [ %.sroa.14.0.copyload.i.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i.i.i)
  %.sroa.9.sroa.12.0.extract.shift99.i.i.i.i = and i64 %.sroa.14.4170.i.i.i.i.i, -72057594037927936
  %.sroa.23.sroa.0.0.extract.trunc37.i.i.i.i = trunc i64 %.sroa.31.4172.i.i.i.i.i to i8
  %.sroa.23.sroa.8.0.extract.shift42.i.i.i.i = lshr i64 %.sroa.31.4172.i.i.i.i.i, 8
  %.sroa.23.sroa.8.0.extract.trunc43.i.i.i.i = trunc i64 %.sroa.23.sroa.8.0.extract.shift42.i.i.i.i to i32
  %.sroa.23.sroa.9.0.extract.shift48.i.i.i.i = lshr i64 %.sroa.31.4172.i.i.i.i.i, 40
  %.sroa.23.sroa.9.0.extract.trunc49.i.i.i.i = trunc i64 %.sroa.23.sroa.9.0.extract.shift48.i.i.i.i to i16
  %.sroa.23.sroa.10.0.extract.shift54.i.i.i.i = lshr i64 %.sroa.31.4172.i.i.i.i.i, 56
  %.sroa.23.sroa.10.0.extract.trunc55.i.i.i.i = trunc nuw i64 %.sroa.23.sroa.10.0.extract.shift54.i.i.i.i to i8
  br label %.noexc28.i.i.i.i

bb.jv:                                            ; preds = %bb.jw
  %i.abi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(216) %i.t) #34
          to label %.body.i.i.i.i unwind label %bb.jz, !noalias !18645

bb.jw:                                            ; preds = %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.512.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.36.i.i.i.i.i, i64 184, i1 false), !noalias !18646
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i.i.i)
  store i64 %.sroa.046.0.copyload.i.i.i.i.i, ptr %i.t, align 8, !noalias !18646
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i25.i.i.i.i, align 8, !noalias !18646
  store i64 %.sroa.24.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !18646
  store i64 %.sroa.31.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !18646
  %.val.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !18644, !noalias !18645, !noundef !8
  %i.abj = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef 0, i64 noundef %.val.i.i.i.i.i)
          to label %bb.jx unwind label %bb.jv, !noalias !18645 ; 2 uses

bb.jx:                                            ; preds = %bb.jw
  %i.abk = extractvalue { i64, ptr } %i.abj, 0
  %i.abl = trunc nuw i64 %i.abk to i1
  br i1 %i.abl, label %bb.jy, label %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i

bb.jy:                                            ; preds = %bb.jx
  %i.abm = extractvalue { i64, ptr } %i.abj, 1
  %i.abn = ptrtoint ptr %i.abm to i64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(216) %i.t)
          to label %.noexc28.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !18642

.noexc28.i.i.i.i:                                 ; preds = %bb.jy, %.loopexit169.i.i.i.i
  %.sroa.9.sroa.12.0.i.i.i.i = phi i64 [ %.sroa.9.sroa.12.0.extract.shift99.i.i.i.i, %.loopexit169.i.i.i.i ], [ -9223372036854775808, %bb.jy ]
  %.sroa.9.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.14.4170.i.i.i.i.i, %.loopexit169.i.i.i.i ], [ 0, %bb.jy ]
  %.sroa.18.sroa.10.0.in.in.i.i.i.i = phi i64 [ %.sroa.24.4171.i.i.i.i.i, %.loopexit169.i.i.i.i ], [ %i.abn, %bb.jy ]
  %.sroa.23.sroa.10.0.i.i.i.i = phi i8 [ %.sroa.23.sroa.10.0.extract.trunc55.i.i.i.i, %.loopexit169.i.i.i.i ], [ undef, %bb.jy ]
  %.sroa.23.sroa.9.0.i.i.i.i = phi i16 [ %.sroa.23.sroa.9.0.extract.trunc49.i.i.i.i, %.loopexit169.i.i.i.i ], [ undef, %bb.jy ]
  %.sroa.23.sroa.8.0.i.i.i.i = phi i32 [ %.sroa.23.sroa.8.0.extract.trunc43.i.i.i.i, %.loopexit169.i.i.i.i ], [ undef, %bb.jy ]
  %.sroa.23.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.23.sroa.0.0.extract.trunc37.i.i.i.i, %.loopexit169.i.i.i.i ], [ undef, %bb.jy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !18646
  br label %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i

bb.jz:                                            ; preds = %bb.jv
  %i.abo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18645
  unreachable

_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %bb.jx
  %2 = load <4 x i64>, ptr %i.t, align 8, !noalias !18660 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.28.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.512.0..sroa_idx.i.i.i.i.i, i64 184, i1 false), !noalias !18660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !18646
  %3 = extractelement <4 x i64> %2, i64 0
  %i.abp = icmp eq i64 %3, 2
  br i1 %i.abp, label %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i, label %bb.ka

_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i: ; preds = %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  %i.abq = extractelement <4 x i64> %2, i64 1     ; 2 uses
  %.sroa.9.sroa.12.0.extract.shift.le.i.i.i.i = and i64 %i.abq, -72057594037927936
  %4 = extractelement <4 x i64> %2, i64 3         ; 3 uses
  %.sroa.23.sroa.0.0.extract.trunc.le.i.i.i.i = trunc i64 %4 to i8
  %.sroa.23.sroa.8.0.extract.shift.le.i.i.i.i = lshr i64 %4, 8
  %.sroa.23.sroa.8.0.extract.trunc.le.i.i.i.i = trunc i64 %.sroa.23.sroa.8.0.extract.shift.le.i.i.i.i to i32
  %.sroa.23.sroa.9.0.extract.shift.le.i.i.i.i = lshr i64 %4, 40
  %.sroa.23.sroa.9.0.extract.trunc.le.i.i.i.i = trunc i64 %.sroa.23.sroa.9.0.extract.shift.le.i.i.i.i to i16
  %5 = bitcast <4 x i64> %2 to <32 x i8>
  %.sroa.23.sroa.10.0.extract.trunc.le.i.i.i.i = extractelement <32 x i8> %5, i64 31
  %i.abr = extractelement <4 x i64> %2, i64 2
  br label %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i

_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i: ; preds = %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i, %.noexc28.i.i.i.i, %.loopexit152.i.i.i.i
  %.sroa.23.sroa.0.1151.i.i.i.i = phi i8 [ %.sroa.23.sroa.0.0.i.i.i.i, %.noexc28.i.i.i.i ], [ %.sroa.16.sroa.0.0.ph.i.i.i.i.i, %.loopexit152.i.i.i.i ], [ %.sroa.23.sroa.0.0.extract.trunc.le.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i ]
  %.sroa.23.sroa.8.1150.i.i.i.i = phi i32 [ %.sroa.23.sroa.8.0.i.i.i.i, %.noexc28.i.i.i.i ], [ %.sroa.16.sroa.8.0.ph.i.i.i.i.i, %.loopexit152.i.i.i.i ], [ %.sroa.23.sroa.8.0.extract.trunc.le.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i ]
  %.sroa.23.sroa.9.1149.i.i.i.i = phi i16 [ %.sroa.23.sroa.9.0.i.i.i.i, %.noexc28.i.i.i.i ], [ %.sroa.16.sroa.9.0.ph.i.i.i.i.i, %.loopexit152.i.i.i.i ], [ %.sroa.23.sroa.9.0.extract.trunc.le.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i ]
  %.sroa.23.sroa.10.1148.i.i.i.i = phi i8 [ %.sroa.23.sroa.10.0.i.i.i.i, %.noexc28.i.i.i.i ], [ %.sroa.16.sroa.10.0.ph.i.i.i.i.i, %.loopexit152.i.i.i.i ], [ %.sroa.23.sroa.10.0.extract.trunc.le.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i ]
  %.sroa.18.sroa.0.1147.in.i.i.i.i = phi i64 [ %.sroa.18.sroa.10.0.in.in.i.i.i.i, %.noexc28.i.i.i.i ], [ %i.xi, %.loopexit152.i.i.i.i ], [ %i.abr, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i ]
  %.sroa.9.sroa.11.1141.i.i.i.i = phi i64 [ %.sroa.9.sroa.0.0.i.i.i.i, %.noexc28.i.i.i.i ], [ %.sroa.11.0.ph.i.i.i.i.i, %.loopexit152.i.i.i.i ], [ %i.abq, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i ]
  %.sroa.9.sroa.12.1140.i.i.i.i = phi i64 [ %.sroa.9.sroa.12.0.i.i.i.i, %.noexc28.i.i.i.i ], [ %.sroa.0106.sroa.0.7.extract.shift.i.i.i.i.i, %.loopexit152.i.i.i.i ], [ %.sroa.9.sroa.12.0.extract.shift.le.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.loopexit.i.i.i.i ]
  %.sroa.9.sroa.9.0.insert.insert.i.i.i.i = and i64 %.sroa.9.sroa.11.1141.i.i.i.i, 72057594037927935
  %.sroa.9.sroa.0.0.insert.insert.i.i.i.i = or i64 %.sroa.9.sroa.9.0.insert.insert.i.i.i.i, %.sroa.9.sroa.12.1140.i.i.i.i
  %.sroa.23.sroa.10.0.insert.ext.i.i.i.i = zext i8 %.sroa.23.sroa.10.1148.i.i.i.i to i64
  %.sroa.23.sroa.10.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.23.sroa.10.0.insert.ext.i.i.i.i, 56
  %.sroa.23.sroa.9.0.insert.ext.i.i.i.i = zext i16 %.sroa.23.sroa.9.1149.i.i.i.i to i64
  %.sroa.23.sroa.9.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.23.sroa.9.0.insert.ext.i.i.i.i, 40
  %.sroa.23.sroa.9.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.23.sroa.10.0.insert.shift.i.i.i.i, %.sroa.23.sroa.9.0.insert.shift.i.i.i.i
  %.sroa.23.sroa.8.0.insert.ext.i.i.i.i = zext i32 %.sroa.23.sroa.8.1150.i.i.i.i to i64
  %.sroa.23.sroa.8.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.23.sroa.8.0.insert.ext.i.i.i.i, 8
  %.sroa.23.sroa.8.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.23.sroa.9.0.insert.insert.i.i.i.i, %.sroa.23.sroa.8.0.insert.shift.i.i.i.i
  %.sroa.23.sroa.0.0.insert.ext.i.i.i.i = zext i8 %.sroa.23.sroa.0.1151.i.i.i.i to i64
  %.sroa.23.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.23.sroa.8.0.insert.insert.i.i.i.i, %.sroa.23.sroa.0.0.insert.ext.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i.i.i.i)
  br label %bb.ke

bb.ka:                                            ; preds = %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.8.0..sroa_idx10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.28.i.i.i.i, i64 184, i1 false), !noalias !18641
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i.i.i.i)
  store <4 x i64> %2, ptr %i.v, align 8, !noalias !18641
  %i.abs = load i64, ptr %i.eh, align 8, !alias.scope !18661, !noalias !18662, !noundef !8 ; 3 uses
  %i.abt = load i64, ptr %i.w, align 8, !range !28, !alias.scope !18661, !noalias !18662, !noundef !8
  %i.abu = icmp eq i64 %i.abs, %i.abt
  br i1 %i.abu, label %bb.kb, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i

bb.kb:                                            ; preds = %bb.ka
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i unwind label %bb.kc, !noalias !18663

bb.kc:                                            ; preds = %bb.kb
  %i.abv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.v) #34
          to label %.body.i.i.i.i unwind label %bb.kd, !noalias !18642

bb.kd:                                            ; preds = %bb.kc
  %i.abw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18642
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %bb.kb, %bb.ka
  %i.abx = load ptr, ptr %i.eg, align 8, !alias.scope !18661, !noalias !18662, !nonnull !8, !noundef !8 ; 2 uses
  %i.aby = getelementptr inbounds nuw [216 x i8], ptr %i.abx, i64 %i.abs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.aby, ptr noundef nonnull align 8 dereferenceable(216) %i.v, i64 216, i1 false), !noalias !18642
  %i.abz = add i64 %i.abs, 1                      ; 2 uses
  store i64 %i.abz, ptr %i.eh, align 8, !alias.scope !18661, !noalias !18662
  %exitcond.not.i.i.i.i = icmp eq i64 %i.wk, %.sroa.5172.0.copyload.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i.i

bb.ke:                                            ; preds = %bb.kh, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i
  %.sroa.22.1.i.i = phi i64 [ undef, %bb.kh ], [ %.sroa.23.sroa.0.0.insert.insert.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i ]
  %.sroa.17130.1.i.i = phi i64 [ %i.acd, %bb.kh ], [ %.sroa.18.sroa.0.1147.in.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i ]
  %.sroa.10128.1.i.i = phi i64 [ -9223372036854775808, %bb.kh ], [ %.sroa.9.sroa.0.0.insert.insert.i.i.i.i, %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i unwind label %bb.kf, !noalias !18642

bb.kf:                                            ; preds = %bb.ke
  %i.aca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.critedge.i.i unwind label %bb.kg, !noalias !18642

bb.kg:                                            ; preds = %bb.kf
  %i.acb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18642
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %bb.ke
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc63.i.i unwind label %.loopexit264.i.i, !noalias !18492

.noexc63.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !18641
  br label %.thread240.i.i

bb.kh:                                            ; preds = %bb.gt
  %i.acc = extractvalue { i64, ptr } %i.wh, 1
  %i.acd = ptrtoint ptr %i.acc to i64
  br label %bb.ke

bb.ki:                                            ; preds = %.body.i.i.i.i
  %i.ace = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18642
  unreachable

.thread240.i.i:                                   ; preds = %.noexc63.i.i, %bb.gp, %bb.go
  %.sroa.22.2.ph.i.i = phi i64 [ 27, %bb.gp ], [ %.sroa.22.1.i.i, %.noexc63.i.i ], [ 47, %bb.go ]
  %.sroa.17130.2.ph.i.i = phi i64 [ ptrtoint (ptr @1010 to i64), %bb.gp ], [ %.sroa.17130.1.i.i, %.noexc63.i.i ], [ ptrtoint (ptr @1011 to i64), %bb.go ]
  %.sroa.10128.2.ph.i.i = phi i64 [ -9223372036854775806, %bb.gp ], [ %.sroa.10128.1.i.i, %.noexc63.i.i ], [ -9223372036854775806, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !18639
  br label %bb.kj

bb.kj:                                            ; preds = %.thread240.i.i, %bb.gn
  %.sroa.22.0.i.i = phi i64 [ %.sroa.22.2.ph.i.i, %.thread240.i.i ], [ %.sroa.5172.0.copyload.i.i, %bb.gn ] ; 2 uses
  %.sroa.17130.0.i.i = phi i64 [ %.sroa.17130.2.ph.i.i, %.thread240.i.i ], [ %.sroa.4171.0.copyload.i.i, %bb.gn ] ; 2 uses
  %.sroa.10128.0.i.i = phi i64 [ %.sroa.10128.2.ph.i.i, %.thread240.i.i ], [ %.sroa.0170.0.copyload.i.i, %bb.gn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !18493
  %i.acf = load i64, ptr %i.bu, align 8, !range !18523, !alias.scope !18664, !noalias !18493, !noundef !8
  %i.acg = icmp eq i64 %i.acf, -2
  br i1 %i.acg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.ko, !noalias !18492

.loopexit.loopexit.i.i:                           ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  %i.ach = ptrtoint ptr %i.abx to i64
  br label %.loopexit.i.i

.loopexit.loopexit2473.i.i:                       ; preds = %.preheader.i.i.i.i
  %.sroa.22.16.copyload.pre.i.i = load i64, ptr %i.eg, align 8, !noalias !18665
  %.sroa.25.16.copyload.pre.i.i = load i64, ptr %i.eh, align 8, !noalias !18665
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit2473.i.i, %.loopexit.loopexit.i.i
  %.sroa.25.16.copyload.i.i = phi i64 [ %.sroa.25.16.copyload.pre.i.i, %.loopexit.loopexit2473.i.i ], [ %i.abz, %.loopexit.loopexit.i.i ]
  %.sroa.22.16.copyload.i.i = phi i64 [ %.sroa.22.16.copyload.pre.i.i, %.loopexit.loopexit2473.i.i ], [ %i.ach, %.loopexit.loopexit.i.i ]
  %.sroa.17130.16.copyload.i.i = load i64, ptr %i.w, align 8, !noalias !18665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !18641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !18639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !18493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !18493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !18493
  store i64 0, ptr %i.bp, align 8, !noalias !18493
  %.sroa.5138.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %.sroa.17130.16.copyload.i.i, ptr %.sroa.5138.0..sroa_idx.i.i, align 8, !noalias !18493
  %.sroa.6139.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 %.sroa.22.16.copyload.i.i, ptr %.sroa.6139.0..sroa_idx.i.i, align 8, !noalias !18493
  %.sroa.7140.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i64 %.sroa.25.16.copyload.i.i, ptr %.sroa.7140.0..sroa_idx.i.i, align 8, !noalias !18493
  %.sroa.8141.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store i64 %.sroa.0170.0.copyload.i.i, ptr %.sroa.8141.0..sroa_idx.i.i, align 8, !noalias !18493
  %.sroa.9142.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i64 %.sroa.4171.0.copyload.i.i, ptr %.sroa.9142.0..sroa_idx.i.i, align 8, !noalias !18493
  invoke void @_RNvMNtNtCsgtXWG2OCnrB_3zip4read11zip_archiveNtB2_13SharedBuilder5build(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.bq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.bp, ptr noalias noundef nonnull %.sroa.078.3.i.i, i64 noundef %.sroa.12.3.i.i, ptr noalias noundef %.sroa.41.2.i.i, i64 %.sroa.44.2.i.i)
          to label %bb.kl unwind label %.critedge.thread.i.i, !noalias !18492

bb.kl:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !18493
  %.sroa.0.0.copyload.i = load i64, ptr %i.bq, align 8, !noalias !18666 ; 2 uses
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.812.0.copyload.i = load i64, ptr %.sroa.812.0..sroa_idx.i, align 8, !noalias !18666 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !18666 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.14.sroa.0.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !18666 ; 2 uses
  %.sroa.14.sroa.7.0..sroa.14.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14.sroa.7.0..sroa.14.0..sroa_idx.sroa_idx.i, i64 104, i1 false), !noalias !18666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !18493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !18493
  %i.aci = load i64, ptr %i.bu, align 8, !range !18523, !alias.scope !18667, !noalias !18493, !noundef !8
  %i.acj = icmp eq i64 %i.aci, -2
  br i1 %i.acj, label %_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE12get_metadataCs7gfv9tzbXmh_6yara_x.exit.i, label %bb.km

bb.km:                                            ; preds = %bb.kl
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu), !noalias !18492
  br label %_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE12get_metadataCs7gfv9tzbXmh_6yara_x.exit.i

bb.kn:                                            ; preds = %bb.ks
  %i.ack = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18492
  unreachable

bb.ko:                                            ; preds = %bb.kk
  %i.acl = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.10128.0.i.i, ptr %i.bu, align 8, !noalias !18493
  store i64 %.sroa.17130.0.i.i, ptr %.sroa.5151.0..sroa_idx152.i.i, align 8, !noalias !18493
  store i64 %.sroa.22.0.i.i, ptr %.sroa.6154.0..sroa_idx155.i.i, align 8, !noalias !18493
  br label %.critedge.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.kk, %bb.kj
  store i64 %.sroa.10128.0.i.i, ptr %i.bu, align 8, !noalias !18493
  store i64 %.sroa.17130.0.i.i, ptr %.sroa.5151.0..sroa_idx152.i.i, align 8, !noalias !18493
  store i64 %.sroa.22.0.i.i, ptr %.sroa.6154.0..sroa_idx155.i.i, align 8, !noalias !18493
  %i.acm = icmp eq i64 %.sroa.12.3.i.i, 0
  br i1 %i.acm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgtXWG2OCnrB_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i66.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i66.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.078.3.i.i, i64 noundef %.sroa.12.3.i.i, i64 noundef 1) #38, !noalias !18668
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgtXWG2OCnrB_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECs7gfv9tzbXmh_6yara_x.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgtXWG2OCnrB_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i66.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.acn = icmp eq ptr %.sroa.41.2.i.i, null
  %i.aco = icmp eq i64 %.sroa.44.2.i.i, 0
  %or.cond.i6.i.i.i = or i1 %i.aco, %i.acn
  br i1 %or.cond.i6.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec23CentralDirectoryEndInfoECs7gfv9tzbXmh_6yara_x.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i7.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i7.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgtXWG2OCnrB_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.2.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41.2.i.i, i64 noundef %.sroa.44.2.i.i, i64 noundef 1) #38, !noalias !18668
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec23CentralDirectoryEndInfoECs7gfv9tzbXmh_6yara_x.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec23CentralDirectoryEndInfoECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i7.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgtXWG2OCnrB_3zip4spec15DataAndPositionNtBE_24Zip32CentralDirectoryEndEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !18493
  br label %bb.c

.critedge.i.i:                                    ; preds = %bb.ko, %bb.kf, %.body.i.i.i.i, %.loopexit.split-lp.i.i, %.loopexit264.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.acl, %bb.ko ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.aca, %bb.kf ], [ %lpad.loopexit265.i.i, %.loopexit264.i.i ], [ %lpad.loopexit.split-lp266.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.acp = icmp eq i64 %.sroa.12.3.i.i, 0
  br i1 %i.acp, label %bb.kp, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i67.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i67.i.i: ; preds = %.critedge.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.078.3.i.i, i64 noundef %.sroa.12.3.i.i, i64 noundef 1) #38, !noalias !18492
  br label %bb.kp

bb.kp:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i67.i.i, %.critedge.i.i
  %i.acq = icmp eq ptr %.sroa.41.2.i.i, null
  %i.acr = icmp eq i64 %.sroa.44.2.i.i, 0
  %or.cond.i69.i.i = or i1 %i.acr, %i.acq
  br i1 %or.cond.i69.i.i, label %.critedge32.thread.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i70.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i70.i.i: ; preds = %bb.kp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.2.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41.2.i.i, i64 noundef %.sroa.44.2.i.i, i64 noundef 1) #38, !noalias !18492
  br label %.critedge32.thread.i.i
end_hunk_1
