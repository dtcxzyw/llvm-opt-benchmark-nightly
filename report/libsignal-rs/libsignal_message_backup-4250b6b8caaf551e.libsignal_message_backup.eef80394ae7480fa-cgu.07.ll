Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.07?download=true
inline.NumInlined: 297
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartNtB6_7Display3fmtBA_:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NvNtCskw1zp9IbpTW_24libsignal_message_backup7unknown1__NtB7_8PathPartNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCskw1zp9IbpTW_24libsignal_message_backup5frameNtB5_17HmacMismatchErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 1                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 1                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 1                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [64 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 1 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvCsiDBhRLMtIBd_3hex15encode_to_sliceAhj20_ECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull %i.o, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.p = load i32, ptr %i.n, align 8, !range !359, !alias.scope !358, !noalias !360, !noundef !4
  %.not.i = icmp eq i32 %i.p, -1
  br i1 %.not.i, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.n, i64 16, i1 false), !noalias !360
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 14, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #30, !noalias !358
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtNtCsgxBkk5gSRhY_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 64)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.q = load i64, ptr %i.k, align 8, !range !13, !alias.scope !362, !noalias !363, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.c, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit, !prof !5

bb.c:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !364
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !363
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #30, !noalias !362
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !362, !noalias !363, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !362, !noalias !363, !noundef !4
  store ptr %i.u, ptr %i.l, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.w, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @_RINvCsiDBhRLMtIBd_3hex15encode_to_sliceAhj20_ECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull %i.j, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.z = load i32, ptr %i.i, align 8, !range !359, !alias.scope !365, !noalias !366, !noundef !4
  %.not.i19 = icmp eq i32 %i.z, -1
  br i1 %.not.i19, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit20, label %bb.d, !prof !9

bb.d:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !366
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #30, !noalias !365
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit20: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtNtCsgxBkk5gSRhY_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 64)
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.aa = load i64, ptr %i.f, align 8, !range !13, !alias.scope !368, !noalias !369, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit21, !prof !5

bb.e:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !370
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !noalias !369
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #30, !noalias !368
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit21: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !368, !noalias !369, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !368, !noalias !369, !noundef !4
  store ptr %i.ae, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup, ptr %.sroa.43.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.ai, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup, ptr %.sroa.47.0..sroa_idx, align 8
  %i.aj = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !align !11, !noundef !4
  %i.am = call noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noundef nonnull @50, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret i1 %i.am
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4timeINtNtCsgxBkk5gSRhY_4core4cell7RefCellNtB5_23UnusualTimestampTrackerENtB5_22ReportUnusualTimestamp6report(ptr noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i8 noundef range(i8 0, 3) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvMs5_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4timeNtB5_23UnusualTimestampTracker6report(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i8 noundef %4)
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core4cell22panic_already_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 8, !noundef !4
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %0, align 8, !noundef !4
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBV_11StickerPackNtNtBX_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #26
  br label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBP_11StickerPackNtNtBR_6method5StoreENtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12IntoIterator9into_iterBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 4 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.val3.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload, align 16, !noalias !376
  %i.a = icmp eq i64 %.sroa.43.0.copyload, 0
  br i1 %i.a, label %_RNvXsh_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBR_11StickerPackNtNtBT_6method5StoreEEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12IntoIterator9into_iterBV_.exit, label %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.b = mul i64 %.sroa.43.0.copyload, -48
  %2 = mul i64 %.sroa.43.0.copyload, 49
  %i.c = add i64 %2, 65
  %3 = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %i.b
  %i.d = getelementptr i8, ptr %3, i64 -48
  br label %_RNvXsh_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBR_11StickerPackNtNtBT_6method5StoreEEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12IntoIterator9into_iterBV_.exit

_RNvXsh_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBR_11StickerPackNtNtBT_6method5StoreEEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12IntoIterator9into_iterBV_.exit: ; preds = %bb.a, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.514.0.i = phi ptr [ undef, %bb.a ], [ %i.d, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sroa.413.0.i = phi i64 [ undef, %bb.a ], [ %i.c, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.f = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.g = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload
  %i.h = getelementptr i8, ptr %i.g, i64 1
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.f, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.0.copyload, ptr %.sroa.101.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBV_11StickerPackNtNtBX_6method5StoreEEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([49 x i8]) align 1 captures(none) dereferenceable(49) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !379, !noundef !4 ; 2 uses
  %.not11.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !379 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBX_11StickerPackNtNtBZ_6method5StoreEEE9next_implKb0_EB11_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.g, align 8, !alias.scope !379
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !379
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !379
  br label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBX_11StickerPackNtNtBZ_6method5StoreEEE9next_implKb0_EB11_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val9.i = load <16 x i8>, ptr %i.h, align 16, !noalias !379
  %i.j = icmp sgt <16 x i8> %.val9.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBX_11StickerPackNtNtBZ_6method5StoreEEE9next_implKb0_EB11_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !379
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.v, ptr noundef nonnull align 1 dereferenceable(48) %i.u, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBX_11StickerPackNtNtBZ_6method5StoreEEE9next_implKb0_EB11_.exit
  %.sink = phi i8 [ 1, %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBX_11StickerPackNtNtBZ_6method5StoreEEE9next_implKb0_EB11_.exit ], [ 0, %bb.a ]
  store i8 %.sink, ptr %0, align 1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsgxBkk5gSRhY_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !382, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !382, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !382, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !382
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  tail call void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !388
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !389, !noalias !388, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !389, !noalias !388, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !389, !noalias !388
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !389, !noalias !388
  ret i1 false
end_hunk_0
begin_hunk_1_@_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtB10_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_
; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtB10_9recipient17FullRecipientDataEE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRTNtNtNtBU_5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEEB2l_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptoui.sat.i32.f64(double) #17

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #19

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskw1zp9IbpTW_24libsignal_message_backup(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtCsgxBkk5gSRhY_4core3fmtcNtB5_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRjNtB6_5Debug3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtB1P_9recipient17FullRecipientDataEENCNvXs_NtB1P_9serializeNtB3A_6BackupINtNtBc_7convert4FromINtB1P_15CompletedBackupNtNtB1P_6method5StoreEE4froms0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2Q_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2Q_E0INtNtBc_6result6ResultB60_zEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRjNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup15ValidationErrorNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup15CompletionErrorNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtCsh1373Z0TDxr_8protobuf5error5ErrorNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRmNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRyNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRlNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRbNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_5Debug3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCsiDBhRLMtIBd_3hex15encode_to_sliceAhj20_ECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4timeNtB5_23UnusualTimestampTracker6report(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_9DebugList7entriesRNtCskw1zp9IbpTW_24libsignal_message_backup17FoundUnknownFieldRINtNtCs6i54tJFfzR_5alloc3vec3VecB14_EEB16_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRlNtB6_5Debug3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRmNtB6_5Debug3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsgxBkk5gSRhY_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noinline noreturn }
attributes #26 = { nounwind }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noinline }
attributes #30 = { noreturn }
attributes #31 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 2002, i32 2000}
!7 = !{!"branch_weights", i32 1, i32 1999}
!8 = !{!"branch_weights", i32 0, i32 1}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{i64 8}
!12 = !{i64 0, i64 -9223372036854775806}
!13 = !{i64 0, i64 2}
!14 = !{i64 0, i64 -9223372036854775807}
!15 = !{i32 0, i32 2}
!16 = !{i64 4}
!17 = distinct !{!17, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup"}
!18 = distinct !{!18, !17, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!19 = distinct !{!19, !17, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup: argument 1"}
!20 = distinct !{!20, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup"}
!21 = distinct !{!21, !20, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!22 = distinct !{!22, !20, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup: argument 1"}
!23 = distinct !{!23, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup"}
!24 = distinct !{!24, !23, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!25 = distinct !{!25, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup"}
!26 = distinct !{!26, !25, !"_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!27 = distinct !{!27, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECskw1zp9IbpTW_24libsignal_message_backup"}
!28 = distinct !{!28, !27, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!29 = distinct !{!29, !"_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!30 = distinct !{!30, !29, !"_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!31 = distinct !{!31, !"_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsgxBkk5gSRhY_4core5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEhEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_hNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1O_"}
!32 = distinct !{!32, !31, !"_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsgxBkk5gSRhY_4core5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEhEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_hNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1O_: argument 1"}
!33 = distinct !{!33, !31, !"_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsgxBkk5gSRhY_4core5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEhEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_hNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1O_: argument 0"}
!34 = distinct !{!34, !"_RNvNtNtNtCsgxBkk5gSRhY_4core9core_arch3x864sse215__mm_loadu_si128"}
!35 = distinct !{!35, !34, !"_RNvNtNtNtCsgxBkk5gSRhY_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!36 = distinct !{!36, !"_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!37 = distinct !{!37, !36, !"_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!38 = distinct !{!38, !"_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsgxBkk5gSRhY_4core5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEhEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_hNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1O_"}
!39 = distinct !{!39, !38, !"_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsgxBkk5gSRhY_4core5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEhEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_hNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1O_: argument 1"}
!40 = distinct !{!40, !38, !"_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsgxBkk5gSRhY_4core5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEhEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_hNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1O_: argument 0"}
!41 = distinct !{!41, !"_RNvNtNtNtCsgxBkk5gSRhY_4core9core_arch3x864sse215__mm_loadu_si128"}
!42 = distinct !{!42, !41, !"_RNvNtNtNtCsgxBkk5gSRhY_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!43 = !{!18}
!44 = !{!19}
!45 = !{!18, !19}
!46 = !{!21}
!47 = !{!21, !22, !18, !19}
!48 = !{!26, !24}
!49 = !{!24}
!50 = !{!21, !18}
!51 = !{!22, !19}
!52 = !{!28}
!53 = !{!30}
!54 = !{!30, !28}
!55 = !{!32}
!56 = !{!33}
!57 = !{!35}
!58 = !{!37}
!59 = !{!39, !37}
!60 = !{!40}
!61 = !{!42}
!62 = distinct !{!62, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!63 = distinct !{!63, !62, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!64 = distinct !{!64, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!65 = distinct !{!65, !64, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!66 = distinct !{!66, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!67 = distinct !{!67, !66, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!68 = !{!63}
!69 = !{!65}
!70 = !{!67}
!71 = distinct !{!71, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!72 = distinct !{!72, !71, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!73 = distinct !{!73, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!74 = distinct !{!74, !73, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!75 = distinct !{!75, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!76 = distinct !{!76, !75, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!77 = !{!72}
!78 = !{!74}
!79 = !{!76}
!80 = distinct !{!80, !"_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!81 = distinct !{!81, !80, !"_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!82 = !{!81}
!83 = distinct !{!83, !"_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!84 = distinct !{!84, !83, !"_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!85 = distinct !{null, null}
!86 = !{!84}
!87 = distinct !{!87, !"_RNvXs0_NtNtCs6i54tJFfzR_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtB1m_9recipient17FullRecipientDataEB2n_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1o_"}
!88 = distinct !{!88, !87, !"_RNvXs0_NtNtCs6i54tJFfzR_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtB1m_9recipient17FullRecipientDataEB2n_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1o_: argument 0"}
!89 = distinct !{!89, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_"}
!90 = distinct !{!90, !89, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_: argument 0"}
!91 = distinct !{!91, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtB1b_11DestinationNtB1b_17FullRecipientDataEEEEB1f_"}
!92 = distinct !{!92, !91, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtB1b_11DestinationNtB1b_17FullRecipientDataEEEEB1f_: argument 0"}
!93 = distinct !{!93, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_"}
!94 = distinct !{!94, !93, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_: argument 0"}
!95 = distinct !{!95, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBI_"}
!96 = distinct !{!96, !95, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBI_: argument 0"}
!97 = distinct !{!97, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_"}
!98 = distinct !{!98, !97, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_: argument 0"}
!99 = distinct !{!99, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtB1b_11DestinationNtB1b_17FullRecipientDataEEEEB1f_"}
!100 = distinct !{!100, !99, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtB1b_11DestinationNtB1b_17FullRecipientDataEEEEB1f_: argument 0"}
!101 = distinct !{!101, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_"}
!102 = distinct !{!102, !101, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_: argument 0"}
!103 = distinct !{!103, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_"}
!104 = distinct !{!104, !103, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_: argument 0"}
!105 = distinct !{!105, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_"}
!106 = distinct !{!106, !105, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_: argument 0"}
!107 = !{!88}
!108 = !{!90}
!109 = !{!92}
!110 = !{!94}
!111 = !{!94, !92, !90, !96}
!112 = !{!94, !92, !90, !88}
!113 = !{!98}
!114 = !{!100}
!115 = !{!102}
!116 = !{!102, !100, !98, !96}
!117 = !{!102, !100, !98, !88}
!118 = !{!104, !88}
!119 = !{!106, !88}
!120 = distinct !{!120, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup"}
!121 = distinct !{!121, !120, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!122 = distinct !{!122, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!123 = distinct !{!123, !122, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!124 = distinct !{!124, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!125 = distinct !{!125, !124, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!126 = distinct !{!126, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!127 = distinct !{!127, !126, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!128 = !{!123, !121}
!129 = !{!121}
!130 = !{!125}
!131 = !{!127}
!132 = distinct !{!132, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup"}
!133 = distinct !{!133, !132, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!134 = distinct !{!134, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup"}
!135 = distinct !{!135, !134, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!136 = distinct !{!136, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!137 = distinct !{!137, !136, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!138 = distinct !{!138, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!139 = distinct !{!139, !138, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!140 = distinct !{!140, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!141 = distinct !{!141, !140, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!142 = distinct !{!142, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup"}
!143 = distinct !{!143, !142, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!144 = distinct !{!144, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup"}
!145 = distinct !{!145, !144, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!146 = distinct !{!146, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!147 = distinct !{!147, !146, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!148 = distinct !{!148, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup"}
!149 = distinct !{!149, !148, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!150 = distinct !{!150, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup"}
!151 = distinct !{!151, !150, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!152 = distinct !{!152, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!153 = distinct !{!153, !152, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!154 = distinct !{!154, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup"}
!155 = distinct !{!155, !154, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!156 = distinct !{!156, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup"}
!157 = distinct !{!157, !156, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!158 = distinct !{!158, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup"}
!159 = distinct !{!159, !158, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!160 = !{!137, !135, !133}
!161 = !{!135, !133}
!162 = !{!139}
!163 = !{!141}
!164 = !{!147, !145, !143}
!165 = !{!153, !151, !149}
!166 = !{!159, !157, !155}
!167 = distinct !{!167, !"_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskw1zp9IbpTW_24libsignal_message_backup"}
!168 = distinct !{!168, !167, !"_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!169 = !{!168}
!170 = distinct !{!170, !"_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsgxBkk5gSRhY_4core5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEhEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_hNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE11rustc_entry0EB1M_"}
!171 = distinct !{!171, !170, !"_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsgxBkk5gSRhY_4core5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEhEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_hNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE11rustc_entry0EB1M_: argument 0"}
!172 = distinct !{!172, !170, !"_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsgxBkk5gSRhY_4core5panic8location8LocationReNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampIssueEhEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_hNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE11rustc_entry0EB1M_: argument 1"}
end_hunk_1
