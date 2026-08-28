Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.06?download=true
inline.NumInlined: 1240
inline.NumDeleted: 463
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_sessionNtB2_19FileDownloadSession11from_client:bb.a
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !1167
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientEL_EECsjHtSR7YjKD4_8xet_data.exit

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEECsjHtSR7YjKD4_8xet_data.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientEL_E9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientEL_EECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientEL_EECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEECsjHtSR7YjKD4_8xet_data.exit, %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime4core7context10XetContextECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #25
          to label %.thread50 unwind label %bb.u

bb.y:                                             ; preds = %bb.b, %bb.e
  %.pn.pn.ph = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.l, %bb.b ] ; 2 uses
  %i.bc = icmp eq ptr %3, null
  br i1 %i.bc, label %.noexc40, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !1168
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.aa, label %.noexc40

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #27
          to label %.noexc40 unwind label %bb.u

.thread50:                                        ; preds = %.noexc40, %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientEL_EECsjHtSR7YjKD4_8xet_data.exit, %bb.r
  %.pn.pn48 = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientEL_EECsjHtSR7YjKD4_8xet_data.exit ], [ %.pn.pn.ph, %bb.ab ], [ %.pn.pn.ph, %.noexc40 ]
  resume { ptr, i32 } %.pn.pn48

.noexc40:                                         ; preds = %bb.aa, %bb.y, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.bf = load ptr, ptr %i.i, align 8, !alias.scope !1181, !nonnull !4, !noundef !4
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !1181
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.ab, label %.thread50

bb.ab:                                            ; preds = %.noexc40
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientEL_E9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #27
          to label %.thread50 unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_sessionNtB2_19FileDownloadSession11item_report(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RNvMs0_NtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_typesNtB5_13GroupProgress11item_report(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %i.c, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_sessionNtB2_19FileDownloadSession12item_reports(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RNvMs0_NtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_typesNtB5_13GroupProgress12item_reports(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 8 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_sessionNtB2_19FileDownloadSession19check_not_finalized(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load atomic i8, ptr %i.b acquire, align 8
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 37, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !1004, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !1005, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f, !prof !41

bb.d:                                             ; preds = %bb.f, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #29
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = icmp samesign ugt i64 %i.g, 36
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.j, ptr noundef nonnull align 1 dereferenceable(37) @24, i64 37, i1 false)
  store i64 18, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 37, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_sessionNtB2_19FileDownloadSession19setup_reconstructor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 8 uses
  %.sroa.037 = alloca [48 x i8], align 8          ; 5 uses
  %.sroa.942 = alloca [32 x i8], align 8          ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  %.sroa.935 = alloca [32 x i8], align 8          ; 4 uses
  %.sroa.04 = alloca [48 x i8], align 8           ; 5 uses
  %.sroa.02 = alloca [48 x i8], align 8           ; 5 uses
  %i.c = alloca [144 x i8], align 8               ; 31 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  store ptr %4, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs_NtNtCsjHtSR7YjKD4_8xet_data10processing8xet_fileNtB4_11XetFileInfo11merkle_hash(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.o, %bb.ac, %bb.c
  %.sroa.017.0 = phi i1 [ true, %bb.ac ], [ %.sroa.017.1.ph, %bb.o ], [ true, %bb.c ]
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.o ], [ %i.i, %bb.c ]
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ne ptr %i.g, null
  %or.cond = and i1 %.sroa.017.0, %i.h
  br i1 %or.cond, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19ItemProgressUpdaterEEB1f_.exit

bb.c:                                             ; preds = %bb.h, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !range !1004, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 16, ptr %i.m, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %i.n = load ptr, ptr %i.f, align 8, !alias.scope !1182, !noundef !4 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19ItemProgressUpdaterEEEB1B_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1185
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19ItemProgressUpdaterEEEB1B_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19ItemProgressUpdaterE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19ItemProgressUpdaterEEEB1B_.exit

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor3new(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.i unwind label %bb.c

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %3, align 8, !range !1004, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %.not26.a = icmp eq i64 %i.v, -1
  br i1 %.not26.a, label %bb.p, label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.w = load i64, ptr %2, align 8, !range !1004, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = trunc nuw i64 %i.w to i1
  br i1 %5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not25 = icmp eq ptr %i.y, null
  br i1 %.not25, label %.thread, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.k, %bb.s, %bb.p
  %.pr = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not28.a = icmp eq ptr %.pr, null
  br i1 %.not28.a, label %.thread, label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  invoke void @_RNvMs7_NtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_typesNtB5_19ItemProgressUpdater16update_item_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aa, i64 noundef %i.z, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.ac

bb.o:                                             ; preds = %bb.aa, %bb.v
  %.sroa.017.1.ph = phi i1 [ false, %bb.v ], [ %.not2848, %bb.aa ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.p:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.04.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  br label %bb.m

bb.q:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not27 = icmp eq ptr %i.ac, null
  br i1 %.not27, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  %i.af = sub i64 %i.v, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  invoke void @_RNvMs7_NtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_typesNtB5_19ItemProgressUpdater16update_item_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag, i64 noundef %i.af, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.02.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02)
  br label %bb.m

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !alias.scope !1190, !noalias !1193
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.935, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !1190, !noalias !1193
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !1190, !noalias !1193, !noundef !4
  %i.ar = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !1190, !noalias !1193
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1198, !noalias !1193, !noundef !4 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor21with_progress_updater.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !1199
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.v, label %_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor21with_progress_updater.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19ItemProgressUpdaterE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #27
          to label %_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor21with_progress_updater.exit unwind label %bb.o

.thread:                                          ; preds = %bb.l, %_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor21with_progress_updater.exit, %bb.m
  %.not2848 = phi i1 [ true, %bb.m ], [ false, %_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor21with_progress_updater.exit ], [ true, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %.not29 = icmp eq ptr %i.ay, null
  br i1 %.not29, label %bb.x, label %bb.w

_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor21with_progress_updater.exit: ; preds = %bb.u, %bb.t, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <2 x ptr> %i.ak, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <2 x ptr> %i.ar, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.935.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.935, i64 32, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %.pr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store <2 x ptr> %i.ao, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr %i.aq, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.935)
  br label %.thread

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.037)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.942)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.ab, label %bb.y

bb.x:                                             ; preds = %_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor16with_chunk_cache.exit, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19ItemProgressUpdaterEEEB1B_.exit

bb.y:                                             ; preds = %bb.w
  %i.bb = load <2 x ptr>, ptr %i.ax, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %.sroa.037.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.037, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.037.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !alias.scope !1204, !noalias !1207
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.942, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.037, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1204, !noalias !1207, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1204, !noalias !1207, !noundef !4
  %i.bl = load <2 x ptr>, ptr %i.bi, align 8, !alias.scope !1204, !noalias !1207
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1213, !noalias !1207, !noundef !4 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor16with_chunk_cache.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !1214
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.aa, label %_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor16with_chunk_cache.exit

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bm) #27
          to label %_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor16with_chunk_cache.exit unwind label %bb.o

bb.ab:                                            ; preds = %bb.w
  call void @llvm.trap()
  unreachable

_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor16with_chunk_cache.exit: ; preds = %bb.z, %bb.y, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.037, i64 48, i1 false)
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <2 x ptr> %i.be, ptr %.sroa.538.0..sroa_idx, align 8
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <2 x ptr> %i.bl, ptr %.sroa.740.0..sroa_idx, align 8
  %.sroa.942.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.942.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.942, i64 32, i1 false)
  %.sroa.1043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %i.bh, ptr %.sroa.1043.0..sroa_idx, align 8
  %.sroa.1144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store <2 x ptr> %i.bb, ptr %.sroa.1144.0..sroa_idx, align 8
  %.sroa.1346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr %i.bk, ptr %.sroa.1346.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.942)
  br label %bb.x

bb.ac:                                            ; preds = %bb.r, %bb.n
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructor17FileReconstructorEBH_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.c) #25
          to label %bb.b unwind label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

end_hunk_0
begin_hunk_1_@_RNvMNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_sessionNtB2_19FileDownloadSession30register_stream_abort_callback:bb.a
  br i1 %i.am, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !40

.noexc:                                           ; preds = %bb.q
  %i.an = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.an, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.aj monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.r, %.noexc, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2a_4SyncEL_EEECsjHtSR7YjKD4_8xet_data.exit
  %i.ao = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4k_4SyncEL_EEEECsjHtSR7YjKD4_8xet_data.exit, !prof !41

bb.s:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4k_4SyncEL_EEEECsjHtSR7YjKD4_8xet_data.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4k_4SyncEL_EEEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.s, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.t:                                             ; preds = %.thread19, %.body10
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread:                                          ; preds = %.body10, %.thread19
  %.pn18 = phi { ptr, i32 } [ %eh.lpad-body11, %.body10 ], [ %eh.lpad-body22, %.thread19 ]
  resume { ptr, i32 } %.pn18

.thread19:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.k, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB1O_4SyncEL_EECsjHtSR7YjKD4_8xet_data(ptr nonnull %2, ptr nonnull %3) #25
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_sessionNtB2_19FileDownloadSession32unregister_stream_abort_callback(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputuNtNtB3f_6marker4SendNtB41_4SyncEL_EEE4lockCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %i.e = load i64, ptr %i.b, align 8, !range !1004, !alias.scope !1236, !noalias !1239, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4q_4SyncEL_EEEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1241
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1236, !noalias !1239, !nonnull !4, !align !5, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !6, !alias.scope !1236, !noalias !1239, !noundef !4
  store ptr %i.h, ptr %i.a, align 8, !noalias !1241
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.j, ptr %i.k, align 8, !noalias !1241
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #29
          to label %bb.d unwind label %bb.c, !noalias !1236

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4D_4SyncEL_EEEEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %common.resume unwind label %bb.e, !noalias !1236

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1236
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4q_4SyncEL_EEEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1236, !noalias !1239, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !6, !alias.scope !1236, !noalias !1239, !noundef !4 ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = invoke { ptr, ptr } @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputuNtNtB2r_6marker4SendNtB3d_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4q_4SyncEL_EEEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.m, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ae, %bb.m ], [ %i.ae, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4k_4SyncEL_EEEECsjHtSR7YjKD4_8xet_data(ptr nonnull %i.o, i8 %i.q) #25
          to label %common.resume unwind label %bb.r

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4q_4SyncEL_EEEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit
  %i.v = extractvalue { ptr, ptr } %i.t, 0        ; 4 uses
  %i.w = extractvalue { ptr, ptr } %i.t, 1        ; 6 uses
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2a_4SyncEL_EEECsjHtSR7YjKD4_8xet_data.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.y = load ptr, ptr %i.w, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.y(ptr noundef nonnull %i.v)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !290, !invariant.load !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2a_4SyncEL_EEECsjHtSR7YjKD4_8xet_data.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !291, !invariant.load !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2a_4SyncEL_EEECsjHtSR7YjKD4_8xet_data.exit

bb.l:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !290, !invariant.load !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !291, !invariant.load !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef range(i64 1, -9223372036854775808) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #28
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2a_4SyncEL_EEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.k, %bb.j, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.r, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2a_4SyncEL_EEECsjHtSR7YjKD4_8xet_data.exit
  %i.al = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.am = and i64 %i.al, 9223372036854775807
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !prof !40

bb.o:                                             ; preds = %bb.n
  %i.ao = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.ak monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2a_4SyncEL_EEECsjHtSR7YjKD4_8xet_data.exit
  %i.ap = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4k_4SyncEL_EEEECsjHtSR7YjKD4_8xet_data.exit, !prof !41

bb.q:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4k_4SyncEL_EEEECsjHtSR7YjKD4_8xet_data.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB4k_4SyncEL_EEEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.q
  ret void

bb.r:                                             ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_sessionNtB2_19FileDownloadSession6report(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RNvMs0_NtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_typesNtB5_13GroupProgress6report(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, 96076792050570582) i64 @_RNvMNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_trackingNtB2_21CompletionTrackerImpl17register_new_file(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = trunc nuw i64 %2 to i1                   ; 2 uses
  %i.d = trunc nuw nsw i64 %2 to i8
  %.14 = select i1 %i.c, i64 %3, i64 0            ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  invoke void @_RNvMs7_NtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_typesNtB5_19ItemProgressUpdater16update_item_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef %.14, i1 noundef zeroext %i.c)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 5 uses
  %i.h = icmp ult i64 %i.g, 96076792050570582
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.q = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.r = load i64, ptr %i.p, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.l, ptr %i.s, align 8
  store ptr %1, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.r, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %.14, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 %i.d, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) @23, i64 32, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.410.0..sroa_idx, align 8
  %i.z = load i64, ptr %0, align 8, !range !290, !alias.scope !1242, !noalias !1245, !noundef !4
  %i.aa = icmp eq i64 %i.g, %i.z
  br i1 %i.aa, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking14FileDependencyE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.h unwind label %bb.e, !noalias !1245

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking14FileDependencyEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #25
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1242, !noalias !1245, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ae, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  %i.ag = add nuw nsw i64 %i.g, 1
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !1242, !noalias !1245
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4
  %i.aj = add i64 %i.ai, %.14
  store i64 %i.aj, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.g

.body:                                            ; preds = %bb.i, %bb.j, %bb.e
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.ak, %bb.j ], [ %i.ak, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body17

bb.i:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !1247
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.j, label %.body

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19ItemProgressUpdaterE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor16with_chunk_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) initializes((0, 144)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load <2 x ptr>, ptr %i.c, align 8
  store <2 x ptr> %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.r, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1252, !noundef !4 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1255
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEECsjHtSR7YjKD4_8xet_data.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEECsjHtSR7YjKD4_8xet_data.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB2_17FileReconstructor21reconstruct_to_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1712 x i8], align 8              ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [136 x i8], align 8               ; 13 uses
  %i.h = alloca [144 x i8], align 8               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = invoke noundef nonnull ptr @_RNvXs1_NtNtCsgYp8RCVvTdY_10tokio_util4sync18cancellation_tokenNtB5_17CancellationTokenNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.i
  %.sroa.0.0 = phi ptr [ %i.x, %bb.i ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1260
  store i64 1, ptr %i.g, align 8, !noalias !1260
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.r, align 8, !noalias !1260
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %i.s, align 8, !noalias !1260
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1260
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i8 0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 4, !noalias !1260
  %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 -1, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !1260
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false)
end_hunk_1
