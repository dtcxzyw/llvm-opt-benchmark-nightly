Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.13?download=true
inline.NumInlined: 1140
inline.NumDeleted: 613
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB11_17FileReconstructor8run_impl0s1_0ENtNtB7_6future6Future4pollB15_:bb.a
  %i.pj = load ptr, ptr %i.pi, align 8, !alias.scope !1511, !noalias !1473, !nonnull !7, !noundef !7
  %i.pk = sub i64 %i.oy, %i.ph
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pm = atomicrmw add ptr %i.pl, i64 %i.pk release, align 8, !noalias !1512 ; 0 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.ej, %bb.el, %bb.eh, %bb.eg
  %i.pn = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1470
  %.off295.i.i = add i64 %i.pn, -3
  %switch296.i.i = icmp ult i64 %.off295.i.i, 3
  br i1 %switch296.i.i, label %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i, label %bb.em

bb.em:                                            ; preds = %.noexc.i.i
  %i.po = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !1470 ; 2 uses
  %i.pp = icmp ult i8 %i.po, 3
  br i1 %i.pp, label %bb.eo, label %bb.en, !prof !35

bb.en:                                            ; preds = %bb.em
  %i.pq = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s0_10___CALLSITE) #32
          to label %bb.eo unwind label %bb.ep, !noalias !1473

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sroa.0.0.i161.i.i = phi i8 [ %i.po, %bb.em ], [ %i.pq, %bb.en ] ; 2 uses
  %i.pr = icmp eq i8 %.sroa.0.0.i161.i.i, 0
  br i1 %i.pr, label %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i, label %bb.eq

bb.ep:                                            ; preds = %bb.eq, %bb.en
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.eq:                                            ; preds = %bb.eo
  %i.pt = load ptr, ptr @_RNvNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s0_10___CALLSITE, align 8, !noalias !1470, !nonnull !7, !align !13, !noundef !7
  %i.pu = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pt, i8 noundef %.sroa.0.0.i161.i.i)
          to label %bb.er unwind label %bb.ep, !noalias !1473

bb.er:                                            ; preds = %bb.eq
  br i1 %i.pu, label %bb.es, label %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1470
  %i.pv = load ptr, ptr @_RNvNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s0_10___CALLSITE, align 8, !noalias !1470, !nonnull !7, !align !13, !noundef !7 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1470
  store ptr @49, ptr %i.aa, align 8, !noalias !1470
  %i.px = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr inttoptr (i64 93 to ptr), ptr %i.px, align 8, !noalias !1470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1470
  %i.py = load ptr, ptr %i.bf, align 8, !noalias !1470, !nonnull !7, !align !13, !noundef !7 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 160
  store ptr %i.pz, ptr %i.z, align 8, !noalias !1470
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 208
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !1470
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @26, ptr %i.qb, align 8, !noalias !1470
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.z, ptr %i.qc, align 8, !noalias !1470
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @27, ptr %i.qd, align 8, !noalias !1470
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.qa, ptr %i.qe, align 8, !noalias !1470
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr @39, ptr %i.qf, align 8, !noalias !1470
  store i64 1, ptr %i.ac, align 8, !noalias !1470
  %.sroa.8231.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %.sroa.8231.0..sroa_idx.i.i, align 8, !noalias !1470
  %.sroa.9232.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 3, ptr %.sroa.9232.0..sroa_idx.i.i, align 8, !noalias !1470
  %.sroa.10233.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.pw, ptr %.sroa.10233.0..sroa_idx.i.i, align 8, !noalias !1470
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %_RNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s5_0Bc_.exit.i.i unwind label %bb.et, !noalias !1473

bb.et:                                            ; preds = %bb.es
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1470
  br label %bb.ef

_RNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s5_0Bc_.exit.i.i: ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1470
  br label %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEyyEENtNtB2T_5error23FileReconstructionErrorEEEB2V_.exit.i.i: ; preds = %bb.eu, %bb.ef, %bb.cf, %bb.ce, %bb.bz, %bb.bx, %bb.bu
  %.pn60.pn.i.i = phi { ptr, i32 } [ %.pn57.pn.i.i, %bb.ef ], [ %.pn57.pn.i.i, %bb.eu ], [ %i.is, %bb.bu ], [ %i.iw, %bb.bx ], [ %i.jg, %bb.ce ], [ %i.jg, %bb.cf ], [ %i.ix, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1470
  %i.qh = load i8, ptr %i.bi, align 8, !range !8, !noalias !1470, !noundef !7
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %bb.ew, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEyyEENtNtB2T_5error23FileReconstructionErrorEEEB2V_.exit168.i.i

bb.eu:                                            ; preds = %bb.ef
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEyyEENtNtB2T_5error23FileReconstructionErrorEEEB2V_.exit.i.i unwind label %bb.bs, !noalias !1473

bb.ev:                                            ; preds = %bb.cd, %bb.cc, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1484
  br label %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEyyEENtNtB2T_5error23FileReconstructionErrorEEEB2V_.exit168.i.i: ; preds = %bb.ew, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEyyEENtNtB2T_5error23FileReconstructionErrorEEEB2V_.exit.i.i
  store i8 0, ptr %i.bi, align 8, !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1470
  br label %.body.i.i

bb.ew:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEyyEENtNtB2T_5error23FileReconstructionErrorEEEB2V_.exit.i.i
  invoke void @_RNvXs5_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtB19_6option6OptionTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEyyEENtNtB2H_5error23FileReconstructionErrorEENtNtNtB19_3ops4drop4Drop4dropB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEyyEENtNtB2T_5error23FileReconstructionErrorEEEB2V_.exit168.i.i unwind label %bb.bs, !noalias !1473

_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i: ; preds = %bb.ev, %_RNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s5_0Bc_.exit.i.i, %bb.er, %bb.eo, %.noexc.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsjHtSR7YjKD4_8xet_data.exit.i.i
  %.sroa.13239.sroa.4.0.ph.i.ph.i = phi i64 [ %.sroa.4.i.sroa.4.sroa.4.0.copyload.i.i, %bb.ev ], [ undef, %bb.er ], [ undef, %_RNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s5_0Bc_.exit.i.i ], [ undef, %bb.eo ], [ undef, %.noexc.i.i ], [ %.sroa.4251.sroa.4.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsjHtSR7YjKD4_8xet_data.exit.i.i ]
  %.sroa.0234.0.ph.i.ph.i = phi i64 [ 6, %bb.ev ], [ -1, %bb.er ], [ -1, %_RNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s5_0Bc_.exit.i.i ], [ -1, %bb.eo ], [ -1, %.noexc.i.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsjHtSR7YjKD4_8xet_data.exit.i.i ]
  %i.qj = phi <2 x i64> [ %i.iy, %bb.ev ], [ <i64 -1, i64 undef>, %bb.er ], [ <i64 -1, i64 undef>, %_RNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB6_25ReconstructionTermManager15next_file_terms0s5_0Bc_.exit.i.i ], [ <i64 -1, i64 undef>, %bb.eo ], [ <i64 -1, i64 undef>, %.noexc.i.i ], [ %i.mp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsjHtSR7YjKD4_8xet_data.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1470
  store i8 0, ptr %i.bi, align 8, !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1470
  br label %.loopexit35.sink.split.i

_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEyyEENtNtB2T_5error23FileReconstructionErrorEEEB2V_.exit111.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1470
  store i8 0, ptr %i.bi, align 8, !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1470
  store i8 1, ptr %i.bg, align 1, !noalias !1470
  %i.qk = icmp eq i64 %.sroa.3209.0.copyload.i.i, -2
  br i1 %i.qk, label %.thread.i, label %.loopexit35.i

.loopexit35.sink.split.i:                         ; preds = %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i, %bb.bq
  %.sroa.0.0419.ph.i = phi i64 [ %.sroa.0234.0.ph.i.ph.i, %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i ], [ -1, %bb.bq ]
  %.sroa.9.016.ph.i = phi i64 [ %.sroa.13239.sroa.4.0.ph.i.ph.i, %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i ], [ undef, %bb.bq ]
  %i.ql = phi <2 x i64> [ %i.qj, %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.thread20.i ], [ <i64 -1, i64 undef>, %bb.bq ]
  store i8 1, ptr %i.bg, align 1, !noalias !1470
  br label %.loopexit35.i

.loopexit35.i:                                    ; preds = %.loopexit35.sink.split.i, %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.i
  %.sroa.0.0419.i = phi i64 [ %.sroa.3209.0.copyload.i.i, %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.i ], [ %.sroa.0.0419.ph.i, %.loopexit35.sink.split.i ]
  %.sroa.9.016.i = phi i64 [ %.sroa.5210.sroa.3.sroa.3.0.copyload.i.i, %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.i ], [ %.sroa.9.016.ph.i, %.loopexit35.sink.split.i ]
  %i.qm = phi <2 x i64> [ %i.iv, %_RNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB4_25ReconstructionTermManager15next_file_terms0Ba_.exit.i ], [ %i.ql, %.loopexit35.sink.split.i ]
  %i.qn = load i8, ptr %.val, align 1, !noalias !1469, !noundef !7
  %i.qo = or i8 %i.qn, 2
  store i8 %i.qo, ptr %.val, align 1, !noalias !1469
  store i64 %.sroa.0.0419.i, ptr %0, align 8, !alias.scope !1468
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.qm, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1468
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.016.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1468
  br label %_RNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB6_17FileReconstructor8run_impl0s1_0Ba_.exit

_RNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB6_17FileReconstructor8run_impl0s1_0Ba_.exit: ; preds = %bb.b, %bb.c, %.thread.i, %bb.e, %.loopexit35.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB11_17FileReconstructor8run_impl0s4_0ENtNtB7_6future6Future4pollB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i8, ptr %i.c, align 8, !range !10, !noalias !1532, !noundef !7
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i, !prof !14

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i: ; preds = %bb.a
  %i.f = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 8 %i.b), !noalias !1531 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.f, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %.val.i.i = load i8, ptr %i.h, align 1, !range !8, !noalias !1531, !noundef !7
  %i.i = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 69
  %.val5.i.i = load i8, ptr %i.i, align 1, !noalias !1531
  %i.j = trunc nuw i8 %.val.i.i to i1
  %i.k = tail call noundef zeroext i1 @_RNvMNtNtCsUrhh0HcRih_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.j, i8 %.val5.i.i), !noalias !1531
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i
  tail call void @_RNvNtNtCsUrhh0HcRih_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !1531
  store i64 -1, ptr %0, align 8, !alias.scope !1531
  br label %_RNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB6_17FileReconstructor8run_impl0s4_0Ba_.exit

bb.c:                                             ; preds = %.critedge.i.thread
  store i64 2, ptr %0, align 8, !alias.scope !1531
  br label %_RNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB6_17FileReconstructor8run_impl0s4_0Ba_.exit

.critedge.1.i:                                    ; preds = %.critedge.i, %.critedge.1.thread.i
  store i64 -1, ptr %0, align 8, !alias.scope !1531
  br label %_RNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB6_17FileReconstructor8run_impl0s4_0Ba_.exit

bb.d:                                             ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 212 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 200 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 112 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 208 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 192 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 120 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 196 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 128 ; 4 uses
  %.sroa.815.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 136 ; 3 uses
  %i.u = getelementptr i8, ptr %.val1, i64 152
  %.sroa.1017.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 168
  %.sroa.1118.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 176
  %.sroa.1219.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 184
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.v = load i8, ptr %.val, align 1, !noalias !1532, !noundef !7 ; 2 uses
  %i.w = and i8 %i.v, 1
  %.not11.i = icmp eq i8 %i.w, 0
  br i1 %.not11.i, label %bb.e, label %.critedge.i.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.x = tail call fastcc noundef zeroext i1 @_RNCNvMs_NtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction9run_stateNtB6_8RunState9cancelled0Ba_(ptr noundef nonnull align 8 %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #38, !noalias !1531
  %i.y = load i8, ptr %.val, align 1, !noalias !1532 ; 2 uses
  br i1 %i.x, label %.critedge.i, label %._crit_edge55.i

._crit_edge55.i:                                  ; preds = %bb.e
  %i.z = or i8 %i.y, 1
  store i8 %i.z, ptr %.val, align 1, !noalias !1532
  store i64 0, ptr %0, align 8, !alias.scope !1531
  br label %_RNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB6_17FileReconstructor8run_impl0s4_0Ba_.exit

.critedge.i:                                      ; preds = %bb.e
  %i.aa = and i8 %i.y, 2
  %.not.1.i = icmp eq i8 %i.aa, 0
  br i1 %.not.1.i, label %bb.f, label %.critedge.1.i

.critedge.i.thread:                               ; preds = %bb.d
  %i.ab = and i8 %i.v, 2
  %.not.1.i2 = icmp eq i8 %i.ab, 0
  br i1 %.not.1.i2, label %bb.f, label %bb.c

bb.f:                                             ; preds = %.critedge.i.thread, %.critedge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ac = load i8, ptr %i.l, align 4, !range !23, !noalias !1533, !noundef !7
  switch i8 %i.ac, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %.pre.i.1.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !23, !noalias !1534
  switch i8 %.pre.i.1.i, label %default.unreachable [
    i8 0, label %._crit_edge56.i
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.k
  ]

._crit_edge56.i:                                  ; preds = %bb.g
  %.pre57.i = load ptr, ptr %i.m, align 8, !noalias !1534
  %.pre58.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1534
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.n, align 8, !noalias !1533, !nonnull !7, !align !13, !noundef !7 ; 2 uses
  store ptr %i.ad, ptr %i.o, align 8, !noalias !1533, !captures !33
  %i.ae = load i64, ptr %i.p, align 8, !noalias !1533, !noundef !7
  %.val12.i.1.i = load ptr, ptr %i.ad, align 8, !noalias !1535, !nonnull !7, !noundef !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val12.i.1.i, i64 16
  %i.ag = invoke noundef i32 @_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore19to_physical_acquire(ptr noundef nonnull align 8 %i.af, i64 noundef %i.ae)
          to label %bb.i unwind label %.loopexit.split-lp.i, !noalias !1535

bb.i:                                             ; preds = %bb.h
  store i32 %i.ag, ptr %i.q, align 8, !noalias !1533
  %i.ah = load ptr, ptr %i.o, align 8, !noalias !1533, !nonnull !7, !align !13, !noundef !7
  %.val.i12.1.i = load ptr, ptr %i.ah, align 8, !noalias !1535, !nonnull !7, !noundef !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i12.1.i, i64 16
  %.val13.i.1.i = load ptr, ptr %i.ai, align 8, !noalias !1535, !nonnull !7, !noundef !7 ; 3 uses
  %i.aj = atomicrmw add ptr %.val13.i.1.i, i64 1 monotonic, align 8, !noalias !1535
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %.thread.i.1.i

.thread.i.1.i:                                    ; preds = %bb.i
  %i.al = load i32, ptr %i.q, align 8, !noalias !1533, !noundef !7 ; 2 uses
  store ptr %.val13.i.1.i, ptr %i.m, align 8, !noalias !1533
  store i32 %i.al, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1533
  store i8 0, ptr %.phi.trans.insert.i.i, align 8, !noalias !1533
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.1.i, %._crit_edge56.i
  %i.am = phi i32 [ %.pre58.i, %._crit_edge56.i ], [ %i.al, %.thread.i.1.i ] ; 2 uses
  %i.an = phi ptr [ %.pre57.i, %._crit_edge56.i ], [ %.val13.i.1.i, %.thread.i.1.i ] ; 2 uses
  store ptr %i.an, ptr %i.r, align 8, !noalias !1534
  store i32 %i.am, ptr %i.s, align 4, !noalias !1534
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = zext i32 %i.am to i64                   ; 2 uses
  store ptr %i.ao, ptr %i.t, align 8, !noalias !1534
  store ptr null, ptr %.sroa.815.0..sroa_idx.i.i.i, align 8, !noalias !1534
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !noalias !1534
  store i64 %i.ap, ptr %.sroa.1017.0..sroa_idx.i.i.i, align 8, !noalias !1534
  store i64 %i.ap, ptr %.sroa.1118.0..sroa_idx.i.i.i, align 8, !noalias !1534
  store i8 0, ptr %.sroa.1219.0..sroa_idx.i.i.i, align 8, !noalias !1534
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.aq = invoke noundef i8 @_RNvXs1_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.t, !noalias !1536 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %.critedge.1.thread.i, label %bb.u

.critedge.1.thread.i:                             ; preds = %bb.l
  store i8 3, ptr %.phi.trans.insert.i.i, align 8, !noalias !1534
  store i8 3, ptr %i.l, align 4, !noalias !1533
  br label %.critedge.1.i

default.unreachable:                              ; preds = %bb.g, %bb.f
  unreachable

.loopexit.split-lp.i:                             ; preds = %bb.ah, %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %.body.i.i, %.loopexit.split-lp.i
  %.pn9.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i8 2, ptr %i.l, align 4, !noalias !1533
  resume { ptr, i32 } %.pn9.pn.i.i

bb.o:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #37, !noalias !1535
  unreachable

bb.p:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #37, !noalias !1535
  unreachable

.body.i.i.i:                                      ; preds = %bb.ab, %bb.w, %bb.v, %bb.t
  %.pn6.i.i.i = phi { ptr, i32 } [ %i.av, %bb.t ], [ %i.bh, %bb.ab ], [ %i.aw, %bb.w ], [ %i.aw, %bb.v ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %i.as = load ptr, ptr %i.r, align 8, !alias.scope !1539, !noalias !1534, !nonnull !7, !noundef !7
  %i.at = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !1540
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsjHtSR7YjKD4_8xet_data.exit.i.i.i

bb.q:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsjHtSR7YjKD4_8xet_data.exit.i.i.i unwind label %bb.af, !noalias !1536

bb.r:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #37
          to label %.noexc.i.i unwind label %bb.ag, !noalias !1535

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #37
          to label %.noexc15.i.i unwind label %bb.ag, !noalias !1535

.noexc15.i.i:                                     ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 8 %i.t) #36
          to label %.body.i.i.i unwind label %bb.af, !noalias !1536

bb.u:                                             ; preds = %bb.l
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.t)
          to label %bb.x unwind label %bb.v, !noalias !1536

bb.v:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %.sroa.815.0..sroa_idx.i.i.i, align 8, !noalias !1534, !align !13, !noundef !7 ; 2 uses
  %i.ax = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.ax, label %.body.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr i8, ptr %.val1, i64 144
  %.val3.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !1534
  %i.az = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1536, !nonnull !7, !noundef !7
  invoke void %i.ba(ptr noundef %.val3.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.z, !noalias !1536, !inline_history !0

bb.x:                                             ; preds = %bb.u
  %.val.i.i.i.i = load ptr, ptr %.sroa.815.0..sroa_idx.i.i.i, align 8, !noalias !1534, !align !13, !noundef !7 ; 2 uses
  %i.bb = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.bb, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = getelementptr i8, ptr %.val1, i64 144
  %.val1.i.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !1534
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1536, !nonnull !7, !noundef !7
  invoke void %i.be(ptr noundef %.val1.i.i.i.i)
          to label %bb.aa unwind label %bb.ab, !noalias !1536, !inline_history !25

bb.z:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1536
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.bg = trunc nuw i8 %i.aq to i1
  br i1 %i.bg, label %bb.ac, label %3

3:                                                ; preds = %bb.aa
  %4 = load ptr, ptr %i.r, align 8, !noalias !1534, !nonnull !7, !noundef !7
  %5 = load i32, ptr %i.s, align 4, !noalias !1534, !noundef !7
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ac:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  %i.bi = load ptr, ptr %i.r, align 8, !alias.scope !1543, !noalias !1534, !nonnull !7, !noundef !7
  %i.bj = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !1544
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #32
          to label %bb.ah unwind label %bb.ae, !noalias !1536

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsjHtSR7YjKD4_8xet_data.exit.i.i.i: ; preds = %bb.ae, %bb.q, %.body.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.bl, %bb.ae ], [ %.pn6.i.i.i, %bb.q ], [ %.pn6.i.i.i, %.body.i.i.i ]
  store i8 2, ptr %.phi.trans.insert.i.i, align 8, !noalias !1534
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsjHtSR7YjKD4_8xet_data.exit.i.i.i

bb.af:                                            ; preds = %bb.t, %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1536
  unreachable

bb.ag:                                            ; preds = %bb.s, %bb.r
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bn, %bb.ag ], [ %.pn9.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsjHtSR7YjKD4_8xet_data.exit.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore18acquire_many_owned0ECsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 8 %i.m) #36
          to label %bb.n unwind label %bb.ak, !noalias !1545

bb.ah:                                            ; preds = %bb.ad, %bb.ac, %3
  %.sroa.823.0.ph.i.i = phi i32 [ undef, %bb.ac ], [ undef, %bb.ad ], [ %5, %3 ]
  %.sroa.622.0.ph.i.i = phi ptr [ null, %bb.ac ], [ null, %bb.ad ], [ %4, %3 ] ; 2 uses
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !noalias !1534
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore18acquire_many_owned0ECsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 8 %i.m)
          to label %6 unwind label %.loopexit.split-lp.i, !noalias !1545

6:                                                ; preds = %bb.ah
  %7 = icmp eq ptr %.sroa.622.0.ph.i.i, null
  br i1 %7, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %6
  %i.bo = load i32, ptr %i.q, align 8, !noalias !1533, !noundef !7
  %i.bp = load ptr, ptr %i.o, align 8, !noalias !1533, !nonnull !7, !align !13, !noundef !7
  %.val14.i.i = load ptr, ptr %i.bp, align 8, !noalias !1545, !nonnull !7, !noundef !7 ; 2 uses
  %i.bq = atomicrmw add ptr %.val14.i.i, i64 1 monotonic, align 8, !noalias !1545
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %.body.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1545
  unreachable

bb.al:                                            ; preds = %bb.ai, %6
  %.sroa.91.0.ph.i = phi i32 [ %i.bo, %bb.ai ], [ undef, %6 ]
  %.sroa.5.0.ph.i = phi ptr [ %.val14.i.i, %bb.ai ], [ null, %6 ]
  store i8 1, ptr %i.l, align 4, !noalias !1533
  %i.bt = load i8, ptr %.val, align 1, !noalias !1532, !noundef !7
  %i.bu = or i8 %i.bt, 2
  store i8 %i.bu, ptr %.val, align 1, !noalias !1532
  store i64 1, ptr %0, align 8, !alias.scope !1531
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.ph.i, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !1531
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.622.0.ph.i.i, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1531
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.823.0.ph.i.i, ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1531
  %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.91.0.ph.i, ptr %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1531
  br label %_RNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB6_17FileReconstructor8run_impl0s4_0Ba_.exit

_RNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtB6_17FileReconstructor8run_impl0s4_0Ba_.exit: ; preds = %bb.b, %bb.c, %.critedge.1.i, %._crit_edge55.i, %bb.al
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMs1_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc9unboundedINtB14_17UnboundedReceiverINtNtB9_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB2F_5error23FileReconstructionErrorEE4recv00ENtNtB7_6future6Future4pollB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  tail call void @_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB1A_5error23FileReconstructionErrorENtNtB7_9unbounded9SemaphoreE4recvB1C_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMs1_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc9unboundedINtB14_17UnboundedReceiverNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE4recv00ENtNtB7_6future6Future4pollB2l_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  tail call void @_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB7_9unbounded9SemaphoreE4recvB10_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB13_7JoinSetINtNtB9_6result6ResultTjNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEINtNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils13ParutilsErrorNtNtB2n_5error9DataErrorEEE9join_next00ENtNtB7_6future6Future4pollB2n_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  tail call void @_RNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB4_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultTjNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEINtNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils13ParutilsErrorNtNtB1D_5error9DataErrorEEE14poll_join_nextB1D_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB13_7JoinSetINtNtB9_6result6ResultTjTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEINtNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils13ParutilsErrorNtNtB2o_5error9DataErrorEEE9join_next00ENtNtB7_6future6Future4pollB2o_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  tail call void @_RNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB4_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultTjTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEINtNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils13ParutilsErrorNtNtB1E_5error9DataErrorEEE14poll_join_nextB1E_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB13_7JoinSetINtNtB9_6result6ResultbNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEE9join_next00ENtNtB7_6future6Future4pollB2k_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  tail call void @_RNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB4_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEE14poll_join_nextB1A_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB13_7JoinSetINtNtB9_6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEE9join_next00ENtNtB7_6future6Future4pollB2k_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  tail call void @_RNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB4_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEE14poll_join_nextB1A_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB13_7JoinSetINtNtB9_6result6ResultyNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction5error23FileReconstructionErrorEE9join_next00ENtNtB7_6future6Future4pollB2m_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  tail call void @_RNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB4_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction5error23FileReconstructionErrorEE14poll_join_nextB1C_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNvNtCsUrhh0HcRih_5tokio5trace10trace_leafENtNtB7_6future6Future4pollCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #12 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_typesNtB5_13GroupProgressNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 3 uses
  %.sroa.513 = alloca [131 x i8], align 1         ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @89) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  store i32 0, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @91, i64 32, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.d, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.e, ptr %.sroa.518.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513)
  invoke void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking13speed_trackerNtB2_12SpeedTracker3new(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, i64 noundef 10, i32 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types12ItemProgressEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types12ItemProgressEEEEB3F_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i32 4, ptr %i.i, align 4
  %.sroa.513.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.513, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %.sroa.513.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.k, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %.sroa.412.0..sroa_idx, align 4
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(131) %.sroa.513.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(131) %.sroa.513, i64 131, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types12ItemProgressEEEEB3F_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB5_16SequentialWriterNtNtB7_11data_writer10DataWriter25set_next_term_data_source(ptr noalias nofree noundef align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %5, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.g, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !1548
  %i.h = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 305) 80, i64 noundef range(i64 4, 9) 8) #33, !noalias !1548 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtBM_16SequentialWriterNtNtBO_11data_writer10DataWriter25set_next_term_data_source0E3newBS_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs1_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtBJ_16SequentialWriterNtNtBL_11data_writer10DataWriter25set_next_term_data_source0EBP_(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #36
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtBM_16SequentialWriterNtNtBO_11data_writer10DataWriter25set_next_term_data_source0E3newBS_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @113, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB5_16SequentialWriterNtNtB7_11data_writer10DataWriter6finish(ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 0, ptr %i.c, align 1
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !1551
  %i.d = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 305) 56, i64 noundef range(i64 4, 9) 8) #33, !noalias !1551 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtBM_16SequentialWriterNtNtBO_11data_writer10DataWriter6finish0E3newBS_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable
end_hunk_0
