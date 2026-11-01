Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.02?download=true
inline.NumInlined: 3993
inline.NumDeleted: 1601
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB15_11TaskRuntime11bridge_syncNtNtB17_22download_stream_handle26XetUnorderedDownloadStreamNCNvMs1_NtB17_21download_stream_groupNtB3t_22XetDownloadStreamGroup34download_unordered_stream_blocking0E00ENtNtB7_6future6Future4pollB19_:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionEECsQbU2fm3lSD_3xet.exit.i.i unwind label %bb.ck, !noalias !7979

bb.ch:                                            ; preds = %bb.ci, %bb.cc, %.body.i.i
  %.pn13.pn.i.i = phi { ptr, i32 } [ %.pn11.i.i, %bb.cc ], [ %i.ee, %bb.ci ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.ec = load i8, ptr %i.ae, align 1, !range !33, !noalias !7978, !noundef !10
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.cp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionEECsQbU2fm3lSD_3xet.exit31.i.i

bb.ci:                                            ; preds = %bb.br, %bb.bp
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cj:                                            ; preds = %bb.br
  store i8 2, ptr %i.au, align 8, !alias.scope !8002, !noalias !7978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8001
  br label %bb.cf

bb.ck:                                            ; preds = %bb.cg
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ab) #24
          to label %bb.cl unwind label %bb.ca, !noalias !7979

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionEECsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.cg, %bb.cf
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ab)
          to label %bb.co unwind label %bb.cn, !noalias !7979

bb.cl:                                            ; preds = %bb.cn, %bb.ck
  %.pn16.i.i = phi { ptr, i32 } [ %i.ej, %bb.cn ], [ %i.ef, %bb.ck ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8022)
  call void @llvm.experimental.noalias.scope.decl(metadata !8023)
  %i.eg = load ptr, ptr %i.as, align 8, !alias.scope !8024, !noalias !7978, !nonnull !10, !noundef !10
  %i.eh = atomicrmw add ptr %i.eg, i64 -1 release, align 8, !noalias !8025
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %bb.cm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeEEB1f_.exit.i.i

bb.cm:                                            ; preds = %bb.cl
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeEEB1f_.exit.i.i unwind label %bb.ca, !noalias !7979

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionEECsQbU2fm3lSD_3xet.exit.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.co:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionEECsQbU2fm3lSD_3xet.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8026)
  call void @llvm.experimental.noalias.scope.decl(metadata !8027)
  %i.ek = load ptr, ptr %i.as, align 8, !alias.scope !8028, !noalias !7978, !nonnull !10, !noundef !10
  %i.el = atomicrmw add ptr %i.ek, i64 -1 release, align 8, !noalias !8029
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %.invoke.i.i, label %_RNCNvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupNtB7_22XetDownloadStreamGroup34download_unordered_stream_blocking0Bb_.exit.i

.invoke.i.i:                                      ; preds = %bb.co, %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #21
          to label %_RNCNvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupNtB7_22XetDownloadStreamGroup34download_unordered_stream_blocking0Bb_.exit.i unwind label %bb.bz, !noalias !7979

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionEECsQbU2fm3lSD_3xet.exit31.i.i: ; preds = %bb.cq, %bb.cp, %bb.ch
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ab) #24
          to label %bb.cr unwind label %bb.ca, !noalias !7979

bb.cp:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !8030)
  call void @llvm.experimental.noalias.scope.decl(metadata !8031)
  %i.en = load ptr, ptr %i.af, align 8, !alias.scope !8032, !noalias !7978, !nonnull !10, !noundef !10
  %i.eo = atomicrmw add ptr %i.en, i64 -1 release, align 8, !noalias !8033
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.cq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionEECsQbU2fm3lSD_3xet.exit31.i.i

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionE9drop_slowCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionEECsQbU2fm3lSD_3xet.exit31.i.i unwind label %bb.ca, !noalias !7979

bb.cr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_session19FileDownloadSessionEECsQbU2fm3lSD_3xet.exit31.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8034)
  call void @llvm.experimental.noalias.scope.decl(metadata !8035)
  %i.eq = load ptr, ptr %i.as, align 8, !alias.scope !8036, !noalias !7978, !nonnull !10, !noundef !10
  %i.er = atomicrmw add ptr %i.eq, i64 -1 release, align 8, !noalias !8037
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeEEB1f_.exit.i.i

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeEEB1f_.exit.i.i unwind label %bb.ca, !noalias !7979

_RNCNvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupNtB7_22XetDownloadStreamGroup34download_unordered_stream_blocking0Bb_.exit.i: ; preds = %.invoke.i.i, %bb.co, %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !8038
  %.sroa.5.0.copyload2.i = load i8, ptr %i.au, align 8, !noalias !8038 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3.i, i64 7, i1 false), !noalias !8038
  store i8 1, ptr %i.ac, align 8, !noalias !7978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7977
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %i.et = icmp eq i8 %.sroa.5.0.copyload2.i, -1
  br i1 %i.et, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_RNCNvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupNtB7_22XetDownloadStreamGroup34download_unordered_stream_blocking0Bb_.exit.i, %_RNCNvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupNtB7_22XetDownloadStreamGroup34download_unordered_stream_blocking0Bb_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.k

bb.cu:                                            ; preds = %_RNCNvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupNtB7_22XetDownloadStreamGroup34download_unordered_stream_blocking0Bb_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, i64 56, i1 false), !noalias !8039
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i, i64 7, i1 false), !noalias !8039
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.eu = load i8, ptr %.val, align 1, !noalias !7977, !noundef !10
  %i.ev = or i8 %i.eu, 2
  store i8 %i.ev, ptr %.val, align 1, !noalias !7977
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.5.0.copyload2.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7976
  br label %_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime11bridge_syncNtNtBc_22download_stream_handle26XetUnorderedDownloadStreamNCNvMs1_NtBc_21download_stream_groupNtB2w_22XetDownloadStreamGroup34download_unordered_stream_blocking0E00Be_.exit

_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime11bridge_syncNtNtBc_22download_stream_handle26XetUnorderedDownloadStreamNCNvMs1_NtBc_21download_stream_groupNtB2w_22XetDownloadStreamGroup34download_unordered_stream_blocking0E00Be_.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.j, %bb.cu
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB15_11TaskRuntime22bridge_sync_finalizingINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtB17_20file_download_handle17XetDownloadReportENCNvMs_NtB17_19file_download_groupNtB5j_20XetFileDownloadGroup15finish_blocking0E00ENtNtB7_6future6Future4pollB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.10.sroa.5.i.i.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 16               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 16               ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 16               ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.6.sroa.3.i.i.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 6 uses
  %i.p = alloca [136 x i8], align 8               ; 10 uses
  %i.q = alloca [320 x i8], align 8               ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 7 uses
  %i.u = alloca [152 x i8], align 8               ; 8 uses
  %.sroa.6.i.i.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 16               ; 6 uses
  %.sroa.3.sroa.3.i.i.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 5 uses
  %i.x = alloca [136 x i8], align 8               ; 10 uses
  %i.y = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.4.i.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [4 x i8], align 4                ; 5 uses
  %i.ab = alloca [24 x i8], align 16              ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [152 x i8], align 8              ; 13 uses
  %.sroa.352.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %.sroa.553.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 5 uses
  %.sroa.850.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 6 uses
  %i.ae = alloca [136 x i8], align 8              ; 9 uses
  %.sroa.10.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 10 uses
  %.sroa.10.i.i.i.i.i = alloca [24 x i8], align 8 ; 11 uses
  %.sroa.14.i.i.i.i.i = alloca [96 x i8], align 8 ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [448 x i8], align 8              ; 5 uses
  %i.am = alloca [136 x i8], align 8              ; 15 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [144 x i8], align 8              ; 6 uses
  %i.ap = alloca [496 x i8], align 8              ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 8 uses
  %i.ar = alloca [48 x i8], align 8               ; 4 uses
  %i.as = alloca [48 x i8], align 8               ; 10 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 5 uses
  %i.av = alloca [16 x i8], align 16              ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 10 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [32 x i8], align 8               ; 9 uses
  %i.az = alloca [136 x i8], align 8              ; 6 uses
  %i.ba = alloca [136 x i8], align 8              ; 8 uses
  %.sroa.3.sroa.3.i.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.4.i.i.i = alloca [96 x i8], align 8      ; 6 uses
  %.sroa.996.i.i.i = alloca [24 x i8], align 8    ; 8 uses
  %.sroa.1097.i.i.i = alloca [96 x i8], align 8   ; 8 uses
  %i.bb = alloca [64 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 9 uses
  %i.be = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.6.i = alloca [48 x i8], align 8          ; 5 uses
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.bf, align 8           ; 69 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8193)
  %i.bg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load i8, ptr %i.bh, align 8, !range !22, !noalias !8194, !noundef !10
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i, !prof !26

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.a
  %i.bk = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.bg), !noalias !8193 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i: ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.bk, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i ], [ %i.bg, %bb.a ] ; 2 uses
  %i.bm = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %.val.i.i = load i8, ptr %i.bm, align 1, !range !33, !noalias !8193, !noundef !10
  %i.bn = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 69
  %.val5.i.i = load i8, ptr %i.bn, align 1, !noalias !8193
  %i.bo = trunc nuw i8 %.val.i.i to i1
  %i.bp = tail call noundef zeroext i1 @_RNvMNtNtCsUrhh0HcRih_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.bo, i8 %.val5.i.i), !noalias !8193
  br i1 %i.bp, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i
  tail call void @_RNvNtNtCsUrhh0HcRih_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !8193
  br label %_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime22bridge_sync_finalizingINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtBc_20file_download_handle17XetDownloadReportENCNvMs_NtBc_19file_download_groupNtB4m_20XetFileDownloadGroup15finish_blocking0E00Be_.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i
  %i.bq = tail call noundef i32 @_RNvNtNtCsUrhh0HcRih_5tokio6macros7support12thread_rng_n(i32 noundef 2), !noalias !8193
  %i.br = getelementptr inbounds nuw i8, ptr %.val1, i64 72 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 800 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 794 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1, i64 80 ; 9 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 585 ; 5 uses
  %.phi.trans.insert15.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 576 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 784 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1, i64 793 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1, i64 792 ; 7 uses
  %.sink.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sink1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1, i64 688 ; 5 uses
  %.sroa.4.0..sroa_idx.i50.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 720
  %.sroa.5.0..sroa_idx.i51.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 728
  %i.by = getelementptr inbounds nuw i8, ptr %.val1, i64 656 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1, i64 592 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1, i64 752 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1, i64 760
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1, i64 776 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1, i64 736 ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val1, i64 768
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1, i64 744 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1, i64 584 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1, i64 569 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1, i64 568 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1, i64 560 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1, i64 528 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1, i64 536 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1, i64 570
  %.sroa.8.0..sroa_idx52.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1, i64 544 ; 3 uses
  %i.co = getelementptr i8, ptr %.val1, i64 552   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1, i64 522 ; 4 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 289 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1, i64 112 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 499 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1, i64 296 ; 12 uses
  %.phi.trans.insert71.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 488 ; 2 uses
  %.phi.trans.insert73.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 312 ; 4 uses
  %.phi.trans.insert75.i.i.i.i.i.i = getelementptr i8, ptr %.val1, i64 320 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 280 ; 2 uses
  %.phi.trans.insert93.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 120 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1, i64 521 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1, i64 520 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1, i64 504 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1, i64 88
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1, i64 512 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1, i64 96 ; 2 uses
  %i.cy = getelementptr i8, ptr %.val1, i64 104
  %.sroa.929.sroa.8.0..sroa.929.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 144
  %.sroa.929.sroa.10.0..sroa.929.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 160
  %.sroa.929.sroa.11.0..sroa.929.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 168
  %.sroa.929.sroa.13.0..sroa.929.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 264
  %.sroa.929.sroa.15.0..sroa.929.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 274
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1, i64 288 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %.sroa.8.0..sroa_idx40.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx40.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.544.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.546.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.680.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1, i64 442 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1, i64 441 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val1, i64 440
  %i.df = getelementptr inbounds nuw i8, ptr %.val1, i64 432 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1, <2 x i64> <i64 440, i64 344>
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1, i64 344 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val1, i64 416
  %i.dj = getelementptr inbounds nuw i8, ptr %.val1, i64 304 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.3.sroa.2.i.sroa.5.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %.val1, i64 328 ; 3 uses
  %.sroa.530.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.56.i.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1, i64 498 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1, i64 497 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1, i64 496 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 313
  %i.dq = getelementptr inbounds nuw i8, ptr %.val1, i64 480 ; 8 uses
  %.sroa.4.0..sroa_idx.i31.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.6.sroa.2.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.6.sroa.3.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.5107.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx94.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5103.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5105.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx95.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.0..sroa_idx98.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5101.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx96.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %.sroa.548.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.749.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.548.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.749.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 5 uses
  %.sroa.557.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %.sroa.860.0..sroa_idx61.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i42.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.872.0..sroa_idx73.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.866.0..sroa_idx67.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.4.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %.sroa.3.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %.sroa.8102.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.9103.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.10104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.i
  %. = select i1 %.sroa.0.1.i, i64 -1, i64 2
  br label %_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime22bridge_sync_finalizingINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtBc_20file_download_handle17XetDownloadReportENCNvMs_NtBc_19file_download_groupNtB4m_20XetFileDownloadGroup15finish_blocking0E00Be_.exit

bb.d:                                             ; preds = %bb.i, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i
  %.sroa.0.0654.i = phi i1 [ false, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i ], [ %.sroa.0.1.i, %bb.i ] ; 2 uses
  %i.ec = phi i1 [ true, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i ], [ false, %bb.i ]
  %.sroa.09.0653.i = phi i32 [ 0, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i ], [ 1, %bb.i ]
  %i.ed = add i32 %.sroa.09.0653.i, %i.bq
  %trunc.i = trunc i32 %i.ed to i1
  %i.ee = load i8, ptr %.val, align 1, !noalias !8194, !noundef !10 ; 2 uses
  br i1 %trunc.i, label %bb.f, label %bb.e, !prof !60

bb.e:                                             ; preds = %bb.d
  %i.ef = and i8 %i.ee, 1
  %.not11.i = icmp eq i8 %i.ef, 0
  br i1 %.not11.i, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.eg = and i8 %i.ee, 2
  %.not.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.eh = call noundef zeroext i1 @_RNvXs6_NtNtCsgYp8RCVvTdY_10tokio_util4sync18cancellation_tokenNtB5_25WaitForCancellationFutureNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !8193
  br i1 %i.eh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ei = load i8, ptr %.val, align 1, !noalias !8194, !noundef !10
  %i.ej = or i8 %i.ei, 1
  store i8 %i.ej, ptr %.val, align 1, !noalias !8194
  br label %_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime22bridge_sync_finalizingINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtBc_20file_download_handle17XetDownloadReportENCNvMs_NtBc_19file_download_groupNtB4m_20XetFileDownloadGroup15finish_blocking0E00Be_.exit

bb.i:                                             ; preds = %bb.jk, %bb.g, %bb.f, %bb.e
  %.sroa.0.1.i = phi i1 [ %.sroa.0.0654.i, %bb.e ], [ true, %bb.jk ], [ %.sroa.0.0654.i, %bb.f ], [ true, %bb.g ] ; 2 uses
  br i1 %i.ec, label %bb.d, label %bb.c

bb.j:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ek = load i8, ptr %i.bs, align 8, !range !12, !noalias !8195, !noundef !10
  switch i8 %i.ek, label %default.unreachable [
    i8 0, label %.thread.i.i
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.dl, %bb.cf, %bb.bj, %bb.bf, %bb.as, %bb.ai, %bb.o, %bb.j
  unreachable

.thread.i.i:                                      ; preds = %bb.j
  store ptr %i.br, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !8195
  store i8 0, ptr %.phi.trans.insert.i.i, align 2, !noalias !8195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8195
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  br label %bb.p

bb.k:                                             ; preds = %bb.jf, %.body.i.i
  %.pn4.i.i = phi { ptr, i32 } [ %i.pe, %bb.jf ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8196)
  call void @llvm.experimental.noalias.scope.decl(metadata !8197)
  %i.el = load ptr, ptr %i.br, align 8, !alias.scope !8198, !noalias !8195, !nonnull !10, !noundef !10
  %i.em = atomicrmw add ptr %i.el, i64 -1 release, align 8, !noalias !8199
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session19file_download_group25XetFileDownloadGroupInnerEEB1f_.exit.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session19file_download_group25XetFileDownloadGroupInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.br) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session19file_download_group25XetFileDownloadGroupInnerEEB1f_.exit.i.i unwind label %bb.jj, !noalias !8200

bb.m:                                             ; preds = %bb.j
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #25, !noalias !8200
  unreachable

bb.n:                                             ; preds = %bb.j
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #25, !noalias !8200
  unreachable

bb.o:                                             ; preds = %bb.j
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 2, !range !12, !noalias !8201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8195
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  switch i8 %.pre.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB15_11TaskRuntime22bridge_sync_finalizingINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtB17_20file_download_handle17XetDownloadReportENCNvMs_NtB17_19file_download_groupNtB5j_20XetFileDownloadGroup15finish_blocking0E00ENtNtB7_6future6Future4pollB19_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.996.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1097.i.i.i)
  %i.ns = icmp eq i64 %.sroa.076.2.i.i107.i.i.i, 2
  br i1 %i.ns, label %bb.ij, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !8201
  store i64 %.sroa.076.2.i.i107.i.i.i, ptr %i.ba, align 8, !noalias !8201
  store i64 %.sroa.6.2.i.i108.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !8201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.3.i.i.i, i64 24, i1 false), !noalias !8201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx3.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.i.i.i, i64 96, i1 false), !noalias !8201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !8201
  %i.nt = load i64, ptr %i.cc, align 8, !noalias !8201, !noundef !10
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertB1P_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bx, i64 noundef %i.nt, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.ba)
          to label %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportE6insertB24_.exit.i.i.i unwind label %bb.ic, !noalias !8202

_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportE6insertB24_.exit.i.i.i: ; preds = %bb.ia
  %i.nu = load i64, ptr %i.az, align 8, !range !18, !alias.scope !8280, !noalias !8201, !noundef !10
  %i.nv = icmp eq i64 %i.nu, 2
  br i1 %i.nv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB13_.exit.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportE6insertB24_.exit.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB13_.exit.i.i.i unwind label %bb.ic, !noalias !8202

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.nw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !8201
  br label %.body63.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB13_.exit.i.i.i: ; preds = %bb.ib, %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportE6insertB24_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !8201
  br label %bb.id

bb.id:                                            ; preds = %bb.is, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB13_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8281)
  call void @llvm.experimental.noalias.scope.decl(metadata !8282)
  call void @llvm.experimental.noalias.scope.decl(metadata !8283)
  %i.nx = load ptr, ptr %i.cd, align 8, !alias.scope !8284, !noalias !8201, !nonnull !10, !noundef !10
  %i.ny = atomicrmw add ptr %i.nx, i64 -1 release, align 8, !noalias !8285
  %i.nz = icmp eq i64 %i.ny, 1
  br i1 %i.nz, label %bb.ie, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle20XetFileDownloadInnerEEB1f_.exit.i68.i.i.i

bb.ie:                                            ; preds = %bb.id
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle20XetFileDownloadInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cd) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle20XetFileDownloadInnerEEB1f_.exit.i68.i.i.i unwind label %bb.if, !noalias !8202

bb.if:                                            ; preds = %bb.ie
  %i.oa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8286)
  call void @llvm.experimental.noalias.scope.decl(metadata !8287)
  %i.ob = load ptr, ptr %i.ce, align 8, !alias.scope !8288, !noalias !8201, !nonnull !10, !noundef !10
  %i.oc = atomicrmw add ptr %i.ob, i64 -1 release, align 8, !noalias !8289
  %i.od = icmp eq i64 %i.oc, 1
  br i1 %i.od, label %bb.ig, label %.body70.i.i.i

bb.ig:                                            ; preds = %bb.if
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ce) #21
          to label %.body70.i.i.i unwind label %bb.ii, !noalias !8202

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle20XetFileDownloadInnerEEB1f_.exit.i68.i.i.i: ; preds = %bb.ie, %bb.id
  call void @llvm.experimental.noalias.scope.decl(metadata !8290)
  call void @llvm.experimental.noalias.scope.decl(metadata !8291)
  %i.oe = load ptr, ptr %i.ce, align 8, !alias.scope !8292, !noalias !8201, !nonnull !10, !noundef !10
  %i.of = atomicrmw add ptr %i.oe, i64 -1 release, align 8, !noalias !8293
  %i.og = icmp eq i64 %i.of, 1
  br i1 %i.og, label %bb.ih, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEBH_.exit.i.i.i

bb.ih:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle20XetFileDownloadInnerEEB1f_.exit.i68.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ce) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEBH_.exit.i.i.i unwind label %bb.iw, !noalias !8202

bb.ii:                                            ; preds = %bb.ig
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !8202
  unreachable

bb.ij:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !8201
  store i64 %.sroa.6.2.i.i108.i.i.i, ptr %i.ay, align 8, !noalias !8201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.3.i.i.i, i64 24, i1 false), !noalias !8201
  %.val41.i.i.i = load i64, ptr %i.by, align 8, !range !41, !noalias !8201, !noundef !10
  %.not.i65.i.i.i = icmp eq i64 %.val41.i.i.i, -1
  br i1 %.not.i65.i.i.i, label %.critedge.i.i.i, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.ij
  %i.oi = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !8201
  %i.oj = icmp eq i64 %i.oi, 5
  br i1 %i.oj, label %bb.it, label %bb.ik

bb.ik:                                            ; preds = %.noexc.i.i.i
  %i.ok = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB9_25XetFileDownloadGroupInner13handle_finish010___CALLSITE, i64 16) monotonic, align 8, !noalias !8201 ; 2 uses
  %i.ol = icmp ult i8 %i.ok, 3
  br i1 %i.ol, label %bb.im, label %bb.il, !prof !53

bb.il:                                            ; preds = %bb.ik
  %i.om = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB9_25XetFileDownloadGroupInner13handle_finish010___CALLSITE) #21
          to label %bb.im unwind label %bb.in, !noalias !8202

bb.im:                                            ; preds = %bb.il, %bb.ik
  %.sroa.0.0.i74.i.i.i = phi i8 [ %i.ok, %bb.ik ], [ %i.om, %bb.il ] ; 2 uses
  %i.on = icmp eq i8 %.sroa.0.0.i74.i.i.i, 0
  br i1 %i.on, label %bb.it, label %bb.io

bb.in:                                            ; preds = %bb.io, %bb.il
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.io:                                            ; preds = %bb.im
  %i.op = load ptr, ptr @_RNvNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB9_25XetFileDownloadGroupInner13handle_finish010___CALLSITE, align 8, !noalias !8201, !nonnull !10, !align !14, !noundef !10
  %i.oq = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.op, i8 noundef %.sroa.0.0.i74.i.i.i)
          to label %bb.ip unwind label %bb.in, !noalias !8202

bb.ip:                                            ; preds = %bb.io
  br i1 %i.oq, label %bb.iq, label %bb.it

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !8201
  %i.or = load ptr, ptr @_RNvNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB9_25XetFileDownloadGroupInner13handle_finish010___CALLSITE, align 8, !noalias !8201, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !8201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !8201
  store <2 x ptr> <ptr @154, ptr inttoptr (i64 41 to ptr)>, ptr %i.av, align 16, !noalias !8201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !8201
  store ptr %i.cc, ptr %i.au, align 8, !noalias !8201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !8201
  store ptr %i.ay, ptr %i.at, align 8, !noalias !8201
  store ptr %i.av, ptr %i.aw, align 8, !noalias !8201
  store ptr @20, ptr %i.dx, align 8, !noalias !8201
  store ptr %i.au, ptr %i.dy, align 8, !noalias !8201
  store ptr @155, ptr %i.dz, align 8, !noalias !8201
  store ptr %i.at, ptr %i.ea, align 8, !noalias !8201
  store ptr @156, ptr %i.eb, align 8, !noalias !8201
  store i64 1, ptr %i.ax, align 8, !noalias !8201
  store ptr %i.aw, ptr %.sroa.8102.0..sroa_idx.i.i.i, align 8, !noalias !8201
  store i64 3, ptr %.sroa.9103.0..sroa_idx.i.i.i, align 8, !noalias !8201
  store ptr %i.os, ptr %.sroa.10104.0..sroa_idx.i.i.i, align 8, !noalias !8201
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.or, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax)
          to label %_RNCNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB9_25XetFileDownloadGroupInner13handle_finish00Bd_.exit.i.i.i unwind label %bb.ir, !noalias !8202

bb.ir:                                            ; preds = %bb.iq
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !8201
  br label %bb.ja

_RNCNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB9_25XetFileDownloadGroupInner13handle_finish00Bd_.exit.i.i.i: ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !8201
  br label %bb.it

.critedge.i.i.i:                                  ; preds = %bb.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false), !noalias !8201
  br label %bb.is

bb.is:                                            ; preds = %bb.it, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !8201
  br label %bb.id

bb.it:                                            ; preds = %_RNCNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB9_25XetFileDownloadGroupInner13handle_finish00Bd_.exit.i.i.i, %bb.ip, %bb.im, %.noexc.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsQbU2fm3lSD_3xet5error8XetErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ay)
          to label %bb.is unwind label %bb.iv, !noalias !8202

bb.iu:                                            ; preds = %bb.ja, %bb.iv
  %.pn26.i.i.i = phi { ptr, i32 } [ %i.ou, %bb.iv ], [ %.pn24.ph.i.i.i, %bb.ja ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !8201
  br label %.body63.i.i.i

bb.iv:                                            ; preds = %bb.it
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

.body70.i.i.i:                                    ; preds = %bb.iw, %bb.ig, %bb.if, %.body63.i.i.i
  %.pn29.i.i.i = phi { ptr, i32 } [ %.pn26.pn.i.i.i, %.body63.i.i.i ], [ %i.ov, %bb.iw ], [ %i.oa, %bb.ig ], [ %i.oa, %bb.if ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2y_.exit.i.i.i unwind label %bb.ad, !noalias !8202

bb.iw:                                            ; preds = %bb.ih, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEBH_.exit.i.i.i
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body70.i.i.i

_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB25_.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEBH_.exit.i.i.i
  %i.ow = load ptr, ptr %i.cb, align 8, !noalias !8201, !noundef !10 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i, label %bb.ix, label %.thread141.i.i.i

bb.ix:                                            ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB25_.exit.i.i.i
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2y_.exit81.i.i.i unwind label %.loopexit.split-lp7.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8202

.loopexit.split-lp7.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.ix
  %lpad.loopexit.split-lp164 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2y_.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2y_.exit81.i.i.i: ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !8201
  %i.ox = load i64, ptr %i.by, align 8, !range !41, !noalias !8201, !noundef !10
  %.not11.i.i.i = icmp eq i64 %i.ox, -1
  br i1 %.not11.i.i.i, label %.thread142.i.i.i, label %bb.iy

.thread142.i.i.i:                                 ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2y_.exit81.i.i.i
  store i8 0, ptr %i.bv, align 8, !noalias !8201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.bx, i64 48, i1 false), !noalias !8201
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB2x_.exit.i.i.i

bb.iy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2y_.exit81.i.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oy, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false), !noalias !8201
  store ptr null, ptr %i.as, align 8, !noalias !8201
  %.pre122.i.i.i = load i8, ptr %i.bv, align 8, !range !33, !noalias !8201
  %i.oz = trunc nuw i8 %.pre122.i.i.i to i1
  br i1 %i.oz, label %bb.iz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB2x_.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB2x_.exit.i.i.i: ; preds = %bb.iz, %bb.iy, %.thread142.i.i.i
  store i8 0, ptr %i.bv, align 8, !noalias !8201
  br label %bb.je

bb.iz:                                            ; preds = %bb.iy
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB2x_.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8202

.thread141.i.i.i:                                 ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB25_.exit.i.i.i
  %i.pa = load i64, ptr %i.ca, align 8, !noalias !8201, !noundef !10
  store i64 %i.pa, ptr %i.cc, align 8, !noalias !8201
  %4 = load ptr, ptr %3, align 8, !noalias !8201, !nonnull !10, !noundef !10
  store ptr %i.ow, ptr %i.cd, align 8, !noalias !8201
  store ptr %4, ptr %i.ce, align 8, !noalias !8201
  store ptr %i.cd, ptr %.phi.trans.insert15.i.i, align 8, !noalias !8201
  store i8 0, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !8201
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.996.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1097.i.i.i)
  br label %bb.aj

bb.ja:                                            ; preds = %bb.ir, %bb.in
  %.pn24.ph.i.i.i = phi { ptr, i32 } [ %i.ot, %bb.ir ], [ %i.oo, %bb.in ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsQbU2fm3lSD_3xet5error8XetErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ay) #24
          to label %bb.iu unwind label %bb.ad, !noalias !8202

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsQbU2fm3lSD_3xet5error8XetErrorEEB11_.exit.i.i.i: ; preds = %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2y_.exit.i.i.i
  %i.pb = load i8, ptr %i.bv, align 8, !range !33, !noalias !8201, !noundef !10
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.jb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB2x_.exit84.i.i.i

bb.jb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsQbU2fm3lSD_3xet5error8XetErrorEEB11_.exit.i.i.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB2x_.exit84.i.i.i unwind label %bb.ad, !noalias !8202

bb.jc:                                            ; preds = %bb.ac
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.be)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2x_.exit.i.i.i unwind label %bb.ad, !noalias !8202

bb.jd:                                            ; preds = %bb.ah, %bb.ag
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.jd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2x_.exit.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.pd, %bb.jd ], [ %.pn34.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadEEB2x_.exit.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtBJ_25XetFileDownloadGroupInner13handle_finish0EBN_(ptr noundef nonnull align 8 %i.bt) #24
          to label %bb.k unwind label %bb.jj, !noalias !8200

bb.je:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportEEB2x_.exit.i.i.i, %bb.af
  store i8 0, ptr %i.bu, align 1, !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !8201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false), !noalias !8294
  store i8 1, ptr %.phi.trans.insert.i.i, align 2, !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8195
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtBJ_25XetFileDownloadGroupInner13handle_finish0EBN_(ptr noundef nonnull align 8 %i.bt)
          to label %bb.jg unwind label %bb.jf, !noalias !8200

bb.jf:                                            ; preds = %bb.je
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.jg:                                            ; preds = %bb.je
  call void @llvm.experimental.noalias.scope.decl(metadata !8295)
  call void @llvm.experimental.noalias.scope.decl(metadata !8296)
  %i.pf = load ptr, ptr %i.br, align 8, !alias.scope !8297, !noalias !8195, !nonnull !10, !noundef !10
  %i.pg = atomicrmw add ptr %i.pf, i64 -1 release, align 8, !noalias !8298
  %i.ph = icmp eq i64 %i.pg, 1
  br i1 %i.ph, label %bb.jh, label %bb.jl

bb.jh:                                            ; preds = %bb.jg
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session19file_download_group25XetFileDownloadGroupInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.br) #21
          to label %bb.jl unwind label %bb.ji, !noalias !8200

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session19file_download_group25XetFileDownloadGroupInnerEEB1f_.exit.i.i: ; preds = %bb.ji, %bb.l, %bb.k
  %.pn6.i.i = phi { ptr, i32 } [ %i.pi, %bb.ji ], [ %.pn4.i.i, %bb.l ], [ %.pn4.i.i, %bb.k ]
  store i8 2, ptr %i.bs, align 8, !noalias !8195
  resume { ptr, i32 } %.pn6.i.i

bb.ji:                                            ; preds = %bb.jh
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session19file_download_group25XetFileDownloadGroupInnerEEB1f_.exit.i.i

bb.jj:                                            ; preds = %.body.i.i, %bb.l
  %i.pj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !8200
  unreachable

bb.jk:                                            ; preds = %bb.hu, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8214
  store i8 3, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !8214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.996.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1097.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !8201
  store i8 3, ptr %.phi.trans.insert.i.i, align 2, !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8195
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  store i8 3, ptr %i.bs, align 8, !noalias !8195
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.i

bb.jl:                                            ; preds = %bb.jh, %bb.jg
  store i8 1, ptr %i.bs, align 8, !noalias !8195
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, i64 48, i1 false), !noalias !8299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.pk = load i8, ptr %.val, align 1, !noalias !8194, !noundef !10
  %i.pl = or i8 %i.pk, 2
  store i8 %i.pl, ptr %.val, align 1, !noalias !8194
  br label %_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime22bridge_sync_finalizingINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtBc_20file_download_handle17XetDownloadReportENCNvMs_NtBc_19file_download_groupNtB4m_20XetFileDownloadGroup15finish_blocking0E00Be_.exit

_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime22bridge_sync_finalizingINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtBc_20file_download_handle17XetDownloadReportENCNvMs_NtBc_19file_download_groupNtB4m_20XetFileDownloadGroup15finish_blocking0E00Be_.exit: ; preds = %bb.c, %bb.b, %bb.h, %bb.jl
  %.sink = phi i64 [ -1, %bb.b ], [ %., %bb.c ], [ 1, %bb.jl ], [ 0, %bb.h ]
  store i64 %.sink, ptr %0, align 8, !alias.scope !8193
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB15_11TaskRuntime22bridge_sync_finalizingNtNtB17_13upload_commit15XetCommitReportNCNvMs1_B2A_NtB2A_15XetUploadCommit15commit_blocking0E00ENtNtB7_6future6Future4pollB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 6 uses
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8314)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i8, ptr %i.d, align 8, !range !22, !noalias !8315, !noundef !10
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i, !prof !26

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.c), !noalias !8315 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i: ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.g, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %.val.i.i = load i8, ptr %i.i, align 1, !range !33, !noalias !8315, !noundef !10
  %i.j = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 69
  %.val5.i.i = load i8, ptr %i.j, align 1, !noalias !8315
  %i.k = trunc nuw i8 %.val.i.i to i1
  %i.l = tail call noundef zeroext i1 @_RNvMNtNtCsUrhh0HcRih_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.k, i8 %.val5.i.i), !noalias !8315
  br i1 %i.l, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i
  tail call void @_RNvNtNtCsUrhh0HcRih_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !8314
  store i64 -1, ptr %0, align 8, !alias.scope !8314
  br label %_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime22bridge_sync_finalizingNtNtBc_13upload_commit15XetCommitReportNCNvMs1_B1E_NtB1E_15XetUploadCommit15commit_blocking0E00Be_.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.i, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i
  %i.m = tail call noundef i32 @_RNvNtNtCsUrhh0HcRih_5tokio6macros7support12thread_rng_n(i32 noundef 2), !noalias !8315
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 72 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 1952 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 216
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 226
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 80 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.k
  br i1 %.sroa.0.1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.k, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i
  %.sroa.0.022.i = phi i1 [ false, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i ], [ %.sroa.0.1.i, %bb.k ] ; 2 uses
  %i.q = phi i1 [ true, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i ], [ false, %bb.k ]
  %.sroa.07.021.i = phi i32 [ 0, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECsQbU2fm3lSD_3xet.exit.thread.i ], [ 1, %bb.k ]
  %i.r = add i32 %.sroa.07.021.i, %i.m
  %trunc.i = trunc i32 %i.r to i1
  %i.s = load i8, ptr %.val, align 1, !noalias !8315, !noundef !10 ; 2 uses
  br i1 %trunc.i, label %bb.h, label %bb.g, !prof !60

bb.e:                                             ; preds = %bb.c
  store i64 5, ptr %0, align 8, !alias.scope !8314
  br label %_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime22bridge_sync_finalizingNtNtBc_13upload_commit15XetCommitReportNCNvMs1_B1E_NtB1E_15XetUploadCommit15commit_blocking0E00Be_.exit

bb.f:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !8314
  br label %_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime22bridge_sync_finalizingNtNtBc_13upload_commit15XetCommitReportNCNvMs1_B1E_NtB1E_15XetUploadCommit15commit_blocking0E00Be_.exit

bb.g:                                             ; preds = %bb.d
  %i.t = and i8 %i.s, 1
  %.not9.i = icmp eq i8 %i.t, 0
  br i1 %.not9.i, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.u = and i8 %i.s, 2
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.v = tail call noundef zeroext i1 @_RNvXs6_NtNtCsgYp8RCVvTdY_10tokio_util4sync18cancellation_tokenNtB5_25WaitForCancellationFutureNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !8314
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %.val, align 1, !noalias !8315, !noundef !10
  %i.x = or i8 %i.w, 1
  store i8 %i.x, ptr %.val, align 1, !noalias !8315
  store i64 3, ptr %0, align 8, !alias.scope !8314
  br label %_RNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBa_11TaskRuntime22bridge_sync_finalizingNtNtBc_13upload_commit15XetCommitReportNCNvMs1_B1E_NtB1E_15XetUploadCommit15commit_blocking0E00Be_.exit

bb.k:                                             ; preds = %bb.aa, %bb.i, %bb.h, %bb.g
  %.sroa.0.1.i = phi i1 [ %.sroa.0.022.i, %bb.g ], [ true, %bb.aa ], [ %.sroa.0.022.i, %bb.h ], [ true, %bb.i ] ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.c

end_hunk_1
