Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN5xtask4test3run28_$u7b$$u7b$closure$u7d$$u7d$17hbb04f121be65d0c4E":bb.a
  %i.jd = phi ptr [ %.sroa.9.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert553.i, %._crit_edge ] ; 2 uses
  %i.je = phi ptr [ %i.iy, %.thread.i ], [ %i.iz, %._crit_edge ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.jc, ptr %i.jf, align 8, !noalias !25658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !25658
  %i.jg = getelementptr i8, ptr %i.jc, i64 8
  %.val.i.i.i = load ptr, ptr %i.jg, align 8, !noalias !25660, !nonnull !24, !noundef !24
  %i.jh = getelementptr i8, ptr %i.jc, i64 16
  %.val1.i.i161.i = load i64, ptr %i.jh, align 8, !noalias !25660, !noundef !24
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i161.i)
          to label %.thread36.i.i unwind label %bb.bp, !noalias !25660

bb.bp:                                            ; preds = %bb.bo
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.thread36.i.i:                                    ; preds = %bb.bo
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !noalias !25658
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !25658
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bn
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #54
          to label %.noexc162.i unwind label %bb.ea

.noexc162.i:                                      ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bn
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #54
          to label %.noexc163.i unwind label %bb.ea

.noexc163.i:                                      ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !25658
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !90, !noalias !25661
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25662)
  switch i8 %.pre.i.i, label %default.unreachable184 [
    i8 0, label %bb.bt
    i8 1, label %bb.cz
    i8 2, label %bb.da
    i8 3, label %bb.cw
  ]

bb.bt:                                            ; preds = %bb.bs, %.thread36.i.i
  %i.jl = phi ptr [ %i.ja, %.thread36.i.i ], [ %i.dj, %bb.bs ] ; 5 uses
  %i.jm = phi ptr [ %i.jb, %.thread36.i.i ], [ %i.di, %bb.bs ] ; 5 uses
  %i.jn = phi ptr [ %i.jd, %.thread36.i.i ], [ %.phi.trans.insert553.i, %bb.bs ] ; 5 uses
  %i.jo = phi ptr [ %i.je, %.thread36.i.i ], [ %i.iz, %bb.bs ] ; 5 uses
  %i.jp = phi ptr [ %.sroa.7.0..sroa_idx.i.i, %.thread36.i.i ], [ %.phi.trans.insert.i.i, %bb.bs ] ; 5 uses
  %i.jq = phi ptr [ %i.jj, %.thread36.i.i ], [ %i.jk, %bb.bs ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.jq, align 8, !noalias !25661 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !25661 ; 3 uses
  %.sroa.5.0..sroa_idx29.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.5.0.copyload30.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx29.i.i.i, align 8, !noalias !25661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !25661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !25663
  %i.jr = invoke { i64, ptr } @_ZN5tokio7runtime6handle6Handle7current17ha5cc63873ba306f0E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
          to label %bb.bu unwind label %bb.cu, !noalias !25664 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.js = extractvalue { i64, ptr } %i.jr, 0      ; 2 uses
  %i.jt = extractvalue { i64, ptr } %i.jr, 1      ; 4 uses
  store i64 %i.js, ptr %i.ce, align 8, !noalias !25663
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 5 uses
  store ptr %i.jt, ptr %i.ju, align 8, !noalias !25663
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %i.jv = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !25665 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bv, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jw = trunc nuw i64 %i.js to i1
  %.sroa.01.0.v.i.i.i.i = select i1 %i.jw, i64 488, i64 568
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.sroa.01.0.v.i.i.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 528 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !25666, !noundef !24 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 536
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %bb.bx

.thread.i.i.i.i.i.i:                              ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !25667
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.ka = atomicrmw add ptr %i.jy, i64 1 monotonic, align 8, !noalias !25666
  %i.kb = icmp slt i64 %i.ka, 0
  br i1 %i.kb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @llvm.trap()
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.kc = load ptr, ptr %i.jx, align 8, !noalias !25666, !nonnull !24, !noundef !24 ; 2 uses
  %i.kd = load ptr, ptr %i.jz, align 8, !noalias !25666, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !25668
  %i.ke = atomicrmw add ptr %i.kc, i64 1 monotonic, align 8, !noalias !25669
  %i.kf = icmp slt i64 %i.ke, 0
  br i1 %i.kf, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.trap()
  unreachable

bb.cb:                                            ; preds = %bb.bz, %.thread.i.i.i.i.i.i
  %.sroa.0.0.i15.i.i.i.i.i.i = phi ptr [ null, %.thread.i.i.i.i.i.i ], [ %i.kc, %bb.bz ] ; 2 uses
  %.sroa.5.0.i14.i.i.i.i.i.i = phi ptr [ undef, %.thread.i.i.i.i.i.i ], [ %i.kd, %bb.bz ] ; 2 uses
  store i64 204, ptr %i.ca, align 128, !noalias !25668
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25668
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr @734, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !25668
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25668
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %.sroa.0.0.i15.i.i.i.i.i.i, ptr %i.kg, align 32, !noalias !25668
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store ptr %.sroa.5.0.i14.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25668
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  store i64 %i.jv, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !25668
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25668
  %.sroa.413.i.i.sroa.3.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.413.i.i.sroa.3.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 64, !noalias !25668
  %.sroa.413.i.i.sroa.4.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  store ptr %.sroa.3.0.copyload.i.i.i, ptr %.sroa.413.i.i.sroa.4.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !25668
  %.sroa.413.i.i.sroa.5.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store i64 %.sroa.5.0.copyload30.i.i.i, ptr %.sroa.413.i.i.sroa.5.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 16, !noalias !25668
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %i.kh, i8 0, i64 24, i1 false), !noalias !25668
  store ptr %.sroa.0.0.i15.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 128, !noalias !25668
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 136
  store ptr %.sroa.5.0.i14.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25668
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !25670
  %i.ki = call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 128) #47, !noalias !25670 ; 9 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.cc, label %bb.cf, !prof !37

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 256) #54
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cd, !noalias !25669

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr297drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h9d7ec87cad404388E"(ptr noundef nonnull align 128 dereferenceable(256) %i.ca) #55
          to label %.body.i.i.i.i unwind label %bb.ce, !noalias !25669

bb.ce:                                            ; preds = %bb.cd
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !25669
  unreachable

bb.cf:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.ki, ptr noundef nonnull align 128 dereferenceable(256) %i.ca, i64 256, i1 false), !noalias !25669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !25668
  %i.km = invoke { i64, ptr } @_ZN5tokio7runtime8blocking4pool7Spawner10spawn_task17h14133993b20e50b6E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i.i, ptr noundef nonnull %i.ki, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce)
          to label %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17hf8bd7aea96802850E.exit.i.i.i.i.i unwind label %bb.cg, !noalias !25671 ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ko = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.ki)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ci, !noalias !25671

.noexc.i.i.i.i.i.i:                               ; preds = %bb.cg
  br i1 %i.ko, label %bb.ch, label %.body.i.i.i.i

bb.ch:                                            ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.ki)
          to label %.body.i.i.i.i unwind label %bb.ci, !noalias !25671

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !25671
  unreachable

_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17hf8bd7aea96802850E.exit.i.i.i.i.i: ; preds = %bb.cf
  %i.kq = extractvalue { i64, ptr } %i.km, 0
  %i.kr = extractvalue { i64, ptr } %i.km, 1      ; 2 uses
  %i.ks = trunc nuw i64 %i.kq to i1
  %.not.i.i.i.i.i = icmp ne ptr %i.kr, null
  %or.cond.not.i.i.i.i.i = select i1 %i.ks, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.cj, label %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17hffbf23a1fbee65cdE.exit.i.i.i.i, !prof !62

bb.cj:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17hf8bd7aea96802850E.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !25672
  store ptr %i.kr, ptr %i.cd, align 8, !noalias !25672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !25672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !25672
  store ptr %i.cd, ptr %i.cb, align 8, !noalias !25672
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.410.0..sroa_idx.i.i.i.i.i, align 8, !noalias !25672
  store ptr @765, ptr %i.cc, align 8, !noalias !25672
  %i.kt = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 1, ptr %i.kt, align 8, !noalias !25672
  %i.ku = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store ptr null, ptr %i.ku, align 8, !noalias !25672
  %i.kv = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.cb, ptr %i.kv, align 8, !noalias !25672
  %i.kw = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i64 1, ptr %i.kw, align 8, !noalias !25672
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709) #54
          to label %bb.cl unwind label %bb.ck, !noalias !25673

bb.ck:                                            ; preds = %bb.cj
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cd) #55
          to label %bb.cn unwind label %bb.cm, !noalias !25673

bb.cl:                                            ; preds = %bb.cj
  unreachable

bb.cm:                                            ; preds = %bb.co, %bb.cn, %bb.ck
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !25673
  unreachable

bb.cn:                                            ; preds = %bb.ck
  %i.kz = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.ki)
          to label %.noexc.i.i.i.i.i unwind label %bb.cm, !noalias !25673

.noexc.i.i.i.i.i:                                 ; preds = %bb.cn
  br i1 %i.kz, label %bb.co, label %.body.i.i.i.i

bb.co:                                            ; preds = %.noexc.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.ki)
          to label %.body.i.i.i.i unwind label %bb.cm, !noalias !25673

.body.i.i.i.i:                                    ; preds = %bb.co, %.noexc.i.i.i.i.i, %bb.ch, %.noexc.i.i.i.i.i.i, %bb.cd
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.kx, %bb.co ], [ %i.kk, %bb.cd ], [ %i.kn, %bb.ch ], [ %i.kn, %.noexc.i.i.i.i.i.i ], [ %i.kx, %.noexc.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17he33bc1d548cbbb28E"(ptr noalias noundef align 8 dereferenceable(16) %i.ce) #55
          to label %.body.i.i.i unwind label %bb.ct, !noalias !25664

_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17hffbf23a1fbee65cdE.exit.i.i.i.i: ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17hf8bd7aea96802850E.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !25674)
  call void @llvm.experimental.noalias.scope.decl(metadata !25675)
  %i.la = load i64, ptr %i.ce, align 8, !range !36, !alias.scope !25676, !noalias !25663, !noundef !24
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17hffbf23a1fbee65cdE.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !25677)
  call void @llvm.experimental.noalias.scope.decl(metadata !25678)
  %i.lc = load ptr, ptr %i.ju, align 8, !alias.scope !25679, !noalias !25663, !nonnull !24, !noundef !24
  %i.ld = atomicrmw sub ptr %i.lc, i64 1 release, align 8, !noalias !25680
  %i.le = icmp eq i64 %i.ld, 1
  br i1 %i.le, label %bb.cq, label %bb.cy

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ju)
          to label %bb.cy unwind label %bb.cx, !noalias !25681

bb.cr:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17hffbf23a1fbee65cdE.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !25682)
  call void @llvm.experimental.noalias.scope.decl(metadata !25683)
  %i.lf = load ptr, ptr %i.ju, align 8, !alias.scope !25684, !noalias !25663, !nonnull !24, !noundef !24
  %i.lg = atomicrmw sub ptr %i.lf, i64 1 release, align 8, !noalias !25685
  %i.lh = icmp eq i64 %i.lg, 1
  br i1 %i.lh, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf5f3293d72219e9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ju)
          to label %bb.cy unwind label %bb.cx, !noalias !25681

bb.ct:                                            ; preds = %.body.i.i.i.i
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !25664
  unreachable

bb.cu:                                            ; preds = %bb.bt
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.lj, label %.body.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !25664
  br label %.body.i.i.i

bb.cw:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !25661
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val14.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !25661
  br label %bb.db

bb.cx:                                            ; preds = %bb.cs, %bb.cq
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.cy:                                            ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !25663
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.ki, ptr %i.ll, align 8, !noalias !25661
  br label %bb.db

.body.i.i.i:                                      ; preds = %bb.dv, %.noexc26.i.i.i, %bb.dt, %bb.dq, %bb.cx, %bb.cv, %bb.cu, %.body.i.i.i.i
  %i.lm = phi ptr [ %i.ls, %bb.dq ], [ %i.jl, %bb.cu ], [ %i.ls, %bb.dt ], [ %i.jl, %.body.i.i.i.i ], [ %i.jl, %bb.cx ], [ %i.jl, %bb.cv ], [ %i.ls, %bb.dv ], [ %i.ls, %.noexc26.i.i.i ]
  %i.ln = phi ptr [ %i.lt, %bb.dq ], [ %i.jm, %bb.cu ], [ %i.lt, %bb.dt ], [ %i.jm, %.body.i.i.i.i ], [ %i.jm, %bb.cx ], [ %i.jm, %bb.cv ], [ %i.lt, %bb.dv ], [ %i.lt, %.noexc26.i.i.i ]
  %i.lo = phi ptr [ %i.lu, %bb.dq ], [ %i.jn, %bb.cu ], [ %i.lu, %bb.dt ], [ %i.jn, %.body.i.i.i.i ], [ %i.jn, %bb.cx ], [ %i.jn, %bb.cv ], [ %i.lu, %bb.dv ], [ %i.lu, %.noexc26.i.i.i ]
  %i.lp = phi ptr [ %i.lv, %bb.dq ], [ %i.jo, %bb.cu ], [ %i.lv, %bb.dt ], [ %i.jo, %.body.i.i.i.i ], [ %i.jo, %bb.cx ], [ %i.jo, %bb.cv ], [ %i.lv, %bb.dv ], [ %i.lv, %.noexc26.i.i.i ]
  %i.lq = phi ptr [ %i.lw, %bb.dq ], [ %i.jp, %bb.cu ], [ %i.lw, %bb.dt ], [ %i.jp, %.body.i.i.i.i ], [ %i.jp, %bb.cx ], [ %i.jp, %bb.cv ], [ %i.lw, %bb.dv ], [ %i.lw, %.noexc26.i.i.i ]
  %i.lr = phi ptr [ %i.lx, %bb.dq ], [ %i.jq, %bb.cu ], [ %i.lx, %bb.dt ], [ %i.jq, %.body.i.i.i.i ], [ %i.jq, %bb.cx ], [ %i.jq, %bb.cv ], [ %i.lx, %bb.dv ], [ %i.lx, %.noexc26.i.i.i ]
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.mv, %bb.dq ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.cu ], [ %i.mz, %bb.dt ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.lk, %bb.cx ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.cv ], [ %.pn.i.i.i, %bb.dv ], [ %.pn.i.i.i, %.noexc26.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !25661
  store i8 2, ptr %i.lq, align 8, !noalias !25661
  br label %.body.i.i

bb.cz:                                            ; preds = %bb.bs
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @710) #54
          to label %.noexc.i160.i unwind label %bb.dw, !noalias !25660

.noexc.i160.i:                                    ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.bs
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @710) #54
          to label %.noexc12.i.i unwind label %bb.dw, !noalias !25660

.noexc12.i.i:                                     ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.cy, %bb.cw
  %i.ls = phi ptr [ %i.dj, %bb.cw ], [ %i.jl, %bb.cy ] ; 14 uses
  %i.lt = phi ptr [ %i.di, %bb.cw ], [ %i.jm, %bb.cy ] ; 14 uses
  %i.lu = phi ptr [ %.phi.trans.insert553.i, %bb.cw ], [ %i.jn, %bb.cy ] ; 7 uses
  %i.lv = phi ptr [ %i.iz, %bb.cw ], [ %i.jo, %bb.cy ] ; 7 uses
  %i.lw = phi ptr [ %.phi.trans.insert.i.i, %bb.cw ], [ %i.jp, %bb.cy ] ; 7 uses
  %i.lx = phi ptr [ %i.jk, %bb.cw ], [ %i.jq, %bb.cy ] ; 4 uses
  %.val14.i.i.i = phi ptr [ %.val14.pre.i.i.i, %bb.cw ], [ %i.ki, %bb.cy ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25686)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !25687
  store i64 2, ptr %i.bz, align 8, !noalias !25687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !25687
  %i.lz = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 72 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 8, !range !35, !noalias !25688, !noundef !24
  switch i8 %i.mb, label %default.unreachable184 [
    i8 0, label %.noexc.i.i.i.i
    i8 1, label %bb.dc
    i8 2, label %.thread8.i.i.i.i
  ], !prof !91

.noexc.i.i.i.i:                                   ; preds = %bb.db
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.lz, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h6b03244abd963f7fE)
          to label %.noexc18.i.i.i unwind label %bb.dm, !noalias !25681

.noexc18.i.i.i:                                   ; preds = %.noexc.i.i.i.i
  store i8 1, ptr %i.ma, align 8, !noalias !25688
  br label %bb.dc

bb.dc:                                            ; preds = %.noexc18.i.i.i, %bb.db
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 68
  %i.md = load i8, ptr %i.mc, align 4, !range !38, !noalias !25689, !noundef !24 ; 2 uses
  %i.me = trunc nuw i8 %i.md to i1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 69 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !noalias !25689 ; 4 uses
  br i1 %i.me, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %.not.i.i.i.i17.i.i.i = icmp eq i8 %i.mg, 0
  br i1 %.not.i.i.i.i17.i.i.i, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN5tokio4task4coop14register_waker17hc1a950aa71c31494E(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc19.i.i.i unwind label %bb.dm, !noalias !25690

bb.df:                                            ; preds = %bb.dd
  %i.mh = add i8 %i.mg, -1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.dc
  %.sroa.5.0.i.i.i.i.i.i.i = phi i8 [ %i.mh, %bb.df ], [ %i.mg, %bb.dc ]
  store i8 %.sroa.5.0.i.i.i.i.i.i.i, ptr %i.mf, align 1, !noalias !25689
end_hunk_0
begin_hunk_1_@"_ZN5xtask6common7process11start_meili28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h071c5e2f07bcd2c3E":bb.a
bb.dg:                                            ; preds = %.thread392, %bb.df
  %i.lc = phi ptr [ %i.ku, %.thread392 ], [ %i.lb, %bb.df ] ; 2 uses
  %i.ld = phi ptr [ %i.kt, %.thread392 ], [ %i.la, %bb.df ] ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.lf = load ptr, ptr %i.ld, align 8, !noalias !36155, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  store ptr %i.lf, ptr %i.le, align 8, !noalias !36155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !36155
  %i.lg = getelementptr i8, ptr %i.lf, i64 8
  %.val.i.i117 = load ptr, ptr %i.lg, align 8, !noalias !36157, !nonnull !24, !noundef !24
  %i.lh = getelementptr i8, ptr %i.lf, i64 16
  %.val1.i.i = load i64, ptr %i.lh, align 8, !noalias !36157, !noundef !24
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i117, i64 noundef %.val1.i.i)
          to label %.thread.i unwind label %bb.dh, !noalias !36157

bb.dh:                                            ; preds = %bb.dg
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.thread.i:                                        ; preds = %bb.dg
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !36155
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !36155
  br label %bb.dl

bb.di:                                            ; preds = %bb.df
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @713) #54
          to label %.noexc118 unwind label %bb.fx

.noexc118:                                        ; preds = %bb.di
  unreachable

bb.dj:                                            ; preds = %bb.df
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @713) #54
          to label %.noexc119 unwind label %bb.fx

.noexc119:                                        ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !36155
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !90, !noalias !36158
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36159)
  switch i8 %.pre.i, label %default.unreachable391 [
    i8 0, label %bb.dl
    i8 1, label %bb.er
    i8 2, label %bb.es
    i8 3, label %bb.eo
  ]

bb.dl:                                            ; preds = %bb.dk, %.thread.i
  %i.ll = phi ptr [ %i.lc, %.thread.i ], [ %i.lb, %bb.dk ] ; 5 uses
  %i.lm = phi ptr [ %i.ld, %.thread.i ], [ %i.la, %bb.dk ] ; 5 uses
  %i.ln = phi ptr [ %.sroa.7.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %bb.dk ] ; 5 uses
  %i.lo = phi ptr [ %i.lj, %.thread.i ], [ %i.lk, %bb.dk ] ; 6 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.lo, align 8, !noalias !36158 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !36158 ; 3 uses
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.528.0.copyload.i.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !36158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !36158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !36160
  %i.lp = invoke { i64, ptr } @_ZN5tokio7runtime6handle6Handle7current17ha5cc63873ba306f0E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
          to label %bb.dm unwind label %bb.em, !noalias !36161 ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %i.lq = extractvalue { i64, ptr } %i.lp, 0      ; 2 uses
  %i.lr = extractvalue { i64, ptr } %i.lp, 1      ; 4 uses
  store i64 %i.lq, ptr %i.bi, align 8, !noalias !36160
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 5 uses
  store ptr %i.lr, ptr %i.ls, align 8, !noalias !36160
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %bb.dm
  %i.lt = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !36162 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.lt, 0
  br i1 %.not.i.i.i.i.i, label %bb.dn, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lu = trunc nuw i64 %i.lq to i1
  %.sroa.01.0.v.i.i.i = select i1 %i.lu, i64 488, i64 568
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.sroa.01.0.v.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 528 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !36163, !noundef !24 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 536
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.dp

.thread.i.i.i.i.i:                                ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !36164
  br label %bb.dt

bb.dp:                                            ; preds = %bb.do
  %i.ly = atomicrmw add ptr %i.lw, i64 1 monotonic, align 8, !noalias !36163
  %i.lz = icmp slt i64 %i.ly, 0
  br i1 %i.lz, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.trap()
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.ma = load ptr, ptr %i.lv, align 8, !noalias !36163, !nonnull !24, !noundef !24 ; 2 uses
  %i.mb = load ptr, ptr %i.lx, align 8, !noalias !36163, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !36165
  %i.mc = atomicrmw add ptr %i.ma, i64 1 monotonic, align 8, !noalias !36166
  %i.md = icmp slt i64 %i.mc, 0
  br i1 %i.md, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.trap()
  unreachable

bb.dt:                                            ; preds = %bb.dr, %.thread.i.i.i.i.i
  %.sroa.0.0.i15.i.i.i.i.i = phi ptr [ null, %.thread.i.i.i.i.i ], [ %i.ma, %bb.dr ] ; 2 uses
  %.sroa.5.0.i14.i.i.i.i.i = phi ptr [ undef, %.thread.i.i.i.i.i ], [ %i.mb, %bb.dr ] ; 2 uses
  store i64 204, ptr %i.be, align 128, !noalias !36165
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36165
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr @739, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !36165
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36165
  %i.me = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %.sroa.0.0.i15.i.i.i.i.i, ptr %i.me, align 32, !noalias !36165
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %.sroa.5.0.i14.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36165
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i64 %i.lt, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !36165
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36165
  %.sroa.413.i.i.sroa.3.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.413.i.i.sroa.3.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 64, !noalias !36165
  %.sroa.413.i.i.sroa.4.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  store ptr %.sroa.3.0.copyload.i.i, ptr %.sroa.413.i.i.sroa.4.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !36165
  %.sroa.413.i.i.sroa.5.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store i64 %.sroa.528.0.copyload.i.i, ptr %.sroa.413.i.i.sroa.5.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 16, !noalias !36165
  %i.mf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.mf, i8 0, i64 24, i1 false), !noalias !36165
  store ptr %.sroa.0.0.i15.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !36165
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 280
  store ptr %.sroa.5.0.i14.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36165
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !36167
  %i.mg = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 128) #47, !noalias !36167 ; 9 uses
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %bb.du, label %bb.dx, !prof !37

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 384) #54
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.dv, !noalias !36166

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.du
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.mi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr285drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..metadata..metadata$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h7d20a8d09280fd1bE"(ptr noundef nonnull align 128 dereferenceable(384) %i.be) #55
          to label %.body.i.i.i unwind label %bb.dw, !noalias !36166

bb.dw:                                            ; preds = %bb.dv
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36166
  unreachable

bb.dx:                                            ; preds = %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.mg, ptr noundef nonnull align 128 dereferenceable(384) %i.be, i64 384, i1 false), !noalias !36166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !36165
  %i.mk = invoke { i64, ptr } @_ZN5tokio7runtime8blocking4pool7Spawner10spawn_task17h14133993b20e50b6E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, ptr noundef nonnull %i.mg, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bi)
          to label %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17ha67b2a850c6d2bb8E.exit.i.i.i.i unwind label %bb.dy, !noalias !36168 ; 2 uses

bb.dy:                                            ; preds = %bb.dx
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mm = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.mg)
          to label %.noexc.i.i.i.i.i unwind label %bb.ea, !noalias !36168

.noexc.i.i.i.i.i:                                 ; preds = %bb.dy
  br i1 %i.mm, label %bb.dz, label %.body.i.i.i

bb.dz:                                            ; preds = %.noexc.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.mg)
          to label %.body.i.i.i unwind label %bb.ea, !noalias !36168

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36168
  unreachable

_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17ha67b2a850c6d2bb8E.exit.i.i.i.i: ; preds = %bb.dx
  %i.mo = extractvalue { i64, ptr } %i.mk, 0
  %i.mp = extractvalue { i64, ptr } %i.mk, 1      ; 2 uses
  %i.mq = trunc nuw i64 %i.mo to i1
  %.not.i.i.i.i116 = icmp ne ptr %i.mp, null
  %or.cond.not.i.i.i.i = select i1 %i.mq, i1 %.not.i.i.i.i116, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.eb, label %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17he8119a84bb67ece3E.exit.i.i.i, !prof !62

bb.eb:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17ha67b2a850c6d2bb8E.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !36169
  store ptr %i.mp, ptr %i.bh, align 8, !noalias !36169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !36169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !36169
  store ptr %i.bh, ptr %i.bf, align 8, !noalias !36169
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !36169
  store ptr @765, ptr %i.bg, align 8, !noalias !36169
  %i.mr = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 1, ptr %i.mr, align 8, !noalias !36169
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr null, ptr %i.ms, align 8, !noalias !36169
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.bf, ptr %i.mt, align 8, !noalias !36169
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 1, ptr %i.mu, align 8, !noalias !36169
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709) #54
          to label %bb.ed unwind label %bb.ec, !noalias !36170

bb.ec:                                            ; preds = %bb.eb
  %i.mv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh) #55
          to label %bb.ef unwind label %bb.ee, !noalias !36170

bb.ed:                                            ; preds = %bb.eb
  unreachable

bb.ee:                                            ; preds = %bb.eg, %bb.ef, %bb.ec
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36170
  unreachable

bb.ef:                                            ; preds = %bb.ec
  %i.mx = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.mg)
          to label %.noexc.i.i.i.i unwind label %bb.ee, !noalias !36170

.noexc.i.i.i.i:                                   ; preds = %bb.ef
  br i1 %i.mx, label %bb.eg, label %.body.i.i.i

bb.eg:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.mg)
          to label %.body.i.i.i unwind label %bb.ee, !noalias !36170

.body.i.i.i:                                      ; preds = %bb.eg, %.noexc.i.i.i.i, %bb.dz, %.noexc.i.i.i.i.i, %bb.dv
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.mv, %bb.eg ], [ %i.mi, %bb.dv ], [ %i.ml, %bb.dz ], [ %i.ml, %.noexc.i.i.i.i.i ], [ %i.mv, %.noexc.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17he33bc1d548cbbb28E"(ptr noalias noundef align 8 dereferenceable(16) %i.bi) #55
          to label %.body.i.i unwind label %bb.el, !noalias !36161

_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17he8119a84bb67ece3E.exit.i.i.i: ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17ha67b2a850c6d2bb8E.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36171)
  call void @llvm.experimental.noalias.scope.decl(metadata !36172)
  %i.my = load i64, ptr %i.bi, align 8, !range !36, !alias.scope !36173, !noalias !36160, !noundef !24
  %i.mz = icmp eq i64 %i.my, 0
  br i1 %i.mz, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17he8119a84bb67ece3E.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36174)
  call void @llvm.experimental.noalias.scope.decl(metadata !36175)
  %i.na = load ptr, ptr %i.ls, align 8, !alias.scope !36176, !noalias !36160, !nonnull !24, !noundef !24
  %i.nb = atomicrmw sub ptr %i.na, i64 1 release, align 8, !noalias !36177
  %i.nc = icmp eq i64 %i.nb, 1
  br i1 %i.nc, label %bb.ei, label %bb.eq

bb.ei:                                            ; preds = %bb.eh
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ls)
          to label %bb.eq unwind label %bb.ep, !noalias !36178

bb.ej:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17he8119a84bb67ece3E.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36179)
  call void @llvm.experimental.noalias.scope.decl(metadata !36180)
  %i.nd = load ptr, ptr %i.ls, align 8, !alias.scope !36181, !noalias !36160, !nonnull !24, !noundef !24
  %i.ne = atomicrmw sub ptr %i.nd, i64 1 release, align 8, !noalias !36182
  %i.nf = icmp eq i64 %i.ne, 1
  br i1 %i.nf, label %bb.ek, label %bb.eq

bb.ek:                                            ; preds = %bb.ej
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf5f3293d72219e9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ls)
          to label %bb.eq unwind label %bb.ep, !noalias !36178

bb.el:                                            ; preds = %.body.i.i.i
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36161
  unreachable

bb.em:                                            ; preds = %bb.dl
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nh = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.nh, label %.body.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !36161
  br label %.body.i.i

bb.eo:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !36158
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.val13.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !36158
  br label %bb.et

bb.ep:                                            ; preds = %bb.ek, %bb.ei
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.eq:                                            ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !36160
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %i.mg, ptr %i.nj, align 8, !noalias !36158
  br label %bb.et

.body.i.i:                                        ; preds = %bb.ft, %.noexc25.i.i, %bb.fr, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.fq, %bb.fk, %bb.ep, %bb.en, %bb.em, %.body.i.i.i
  %i.nk = phi ptr [ %i.ll, %bb.em ], [ %i.no, %bb.fk ], [ %i.no, %bb.fr ], [ %i.no, %bb.fq ], [ %i.ll, %bb.ep ], [ %i.ll, %bb.en ], [ %i.ll, %.body.i.i.i ], [ %i.no, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.no, %bb.ft ], [ %i.no, %.noexc25.i.i ]
  %i.nl = phi ptr [ %i.lm, %bb.em ], [ %i.np, %bb.fk ], [ %i.np, %bb.fr ], [ %i.np, %bb.fq ], [ %i.lm, %bb.ep ], [ %i.lm, %bb.en ], [ %i.lm, %.body.i.i.i ], [ %i.np, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.np, %bb.ft ], [ %i.np, %.noexc25.i.i ]
  %i.nm = phi ptr [ %i.ln, %bb.em ], [ %i.nq, %bb.fk ], [ %i.nq, %bb.fr ], [ %i.nq, %bb.fq ], [ %i.ln, %bb.ep ], [ %i.ln, %bb.en ], [ %i.ln, %.body.i.i.i ], [ %i.nq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.nq, %bb.ft ], [ %i.nq, %.noexc25.i.i ]
  %i.nn = phi ptr [ %i.lo, %bb.em ], [ %i.nr, %bb.fk ], [ %i.nr, %bb.fr ], [ %i.nr, %bb.fq ], [ %i.lo, %bb.ep ], [ %i.lo, %bb.en ], [ %i.lo, %.body.i.i.i ], [ %i.nr, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.nr, %bb.ft ], [ %i.nr, %.noexc25.i.i ]
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %bb.em ], [ %i.oo, %bb.fk ], [ %i.pi, %bb.fr ], [ %i.pb, %bb.fq ], [ %i.ni, %bb.ep ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.en ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.pb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %.pn.i.i, %bb.ft ], [ %.pn.i.i, %.noexc25.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !36158
  store i8 2, ptr %i.nm, align 8, !noalias !36158
  br label %.body.i113

bb.er:                                            ; preds = %bb.dk
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @710) #54
          to label %.noexc.i unwind label %bb.fu, !noalias !36157

.noexc.i:                                         ; preds = %bb.er
  unreachable

bb.es:                                            ; preds = %bb.dk
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @710) #54
          to label %.noexc12.i unwind label %bb.fu, !noalias !36157

.noexc12.i:                                       ; preds = %bb.es
  unreachable

bb.et:                                            ; preds = %bb.eq, %bb.eo
  %i.no = phi ptr [ %i.lb, %bb.eo ], [ %i.ll, %bb.eq ] ; 9 uses
  %i.np = phi ptr [ %i.la, %bb.eo ], [ %i.lm, %bb.eq ] ; 7 uses
  %i.nq = phi ptr [ %.phi.trans.insert.i, %bb.eo ], [ %i.ln, %bb.eq ] ; 9 uses
  %i.nr = phi ptr [ %i.lk, %bb.eo ], [ %i.lo, %bb.eq ] ; 6 uses
  %.val13.i.i = phi ptr [ %.val13.pre.i.i, %bb.eo ], [ %i.mg, %bb.eq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !36184
  store i64 4, ptr %i.bd, align 8, !noalias !36184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !36184
  %i.nt = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 72 ; 2 uses
  %i.nv = load i8, ptr %i.nu, align 8, !range !35, !noalias !36185, !noundef !24
  switch i8 %i.nv, label %default.unreachable391 [
    i8 0, label %bb.eu
    i8 1, label %bb.ev
    i8 2, label %.thread8.i.i.i
  ], !prof !91

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.nt, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h6b03244abd963f7fE)
          to label %.noexc.i.i.i unwind label %.thread5.i.i.i, !noalias !36186

.noexc.i.i.i:                                     ; preds = %bb.eu
  store i8 1, ptr %i.nu, align 8, !noalias !36185
  br label %bb.ev

bb.ev:                                            ; preds = %.noexc.i.i.i, %bb.et
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 68
  %i.nx = load i8, ptr %i.nw, align 4, !range !38, !noalias !36187, !noundef !24 ; 2 uses
  %i.ny = trunc nuw i8 %i.nx to i1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 69 ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 1, !noalias !36187 ; 4 uses
  br i1 %i.ny, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  %.not.i.i.i.i16.i.i = icmp eq i8 %i.oa, 0
  br i1 %.not.i.i.i.i16.i.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZN5tokio4task4coop14register_waker17hc1a950aa71c31494E(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.fa unwind label %.thread5.i.i.i, !noalias !36188

bb.ey:                                            ; preds = %bb.ew
  %i.ob = add i8 %i.oa, -1
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ev
  %.sroa.5.0.i.i.i.i.i.i = phi i8 [ %i.ob, %bb.ey ], [ %i.oa, %bb.ev ]
  store i8 %.sroa.5.0.i.i.i.i.i.i, ptr %i.nz, align 1, !noalias !36187
  br label %bb.fa

.thread5.i.i.i:                                   ; preds = %bb.fa, %bb.ex, %bb.eu
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@"_ZN5xtask6common7process11start_meili28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h071c5e2f07bcd2c3E":bb.a
  store ptr %i.qw, ptr %i.qv, align 8, !noalias !36209
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.qy = load i32, ptr %i.qx, align 8, !noalias !36209, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !36209
  %i.qz = getelementptr i8, ptr %i.qw, i64 8
  %.val.i.i175 = load ptr, ptr %i.qz, align 8, !nonnull !24, !noundef !24
  %i.ra = getelementptr i8, ptr %i.qw, i64 16
  %.val1.i.i176 = load i64, ptr %i.ra, align 8, !noundef !24
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i175, i64 noundef %.val1.i.i176)
          to label %.thread.i177 unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

.thread.i177:                                     ; preds = %bb.gp
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rc, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !36209
  %.sroa.023.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i32 %i.qy, ptr %.sroa.023.sroa.7.0..sroa_idx.i, align 8, !noalias !36209
  %.sroa.7.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx.i178, align 8, !noalias !36209
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.gu

bb.gr:                                            ; preds = %bb.go
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @707) #54
          to label %.noexc179 unwind label %bb.iv

.noexc179:                                        ; preds = %bb.gr
  unreachable

bb.gs:                                            ; preds = %bb.go
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @707) #54
          to label %.noexc180 unwind label %bb.iv

.noexc180:                                        ; preds = %bb.gs
  unreachable

bb.gt:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !36209
  %.phi.trans.insert.i132 = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  %.pre.i133 = load i8, ptr %.phi.trans.insert.i132, align 8, !range !90, !noalias !36210
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  switch i8 %.pre.i133, label %default.unreachable391 [
    i8 0, label %bb.gu
    i8 1, label %bb.ia
    i8 2, label %bb.ib
    i8 3, label %bb.hx
  ]

bb.gu:                                            ; preds = %bb.gt, %.thread.i177
  %i.re = phi ptr [ %i.qt, %.thread.i177 ], [ %i.qs, %bb.gt ] ; 5 uses
  %i.rf = phi ptr [ %i.qu, %.thread.i177 ], [ %i.qr, %bb.gt ] ; 5 uses
  %i.rg = phi ptr [ %.sroa.7.0..sroa_idx.i178, %.thread.i177 ], [ %.phi.trans.insert.i132, %bb.gt ] ; 5 uses
  %i.rh = phi ptr [ %i.rc, %.thread.i177 ], [ %i.rd, %bb.gt ] ; 6 uses
  %.sroa.0.0.copyload.i.i146 = load i64, ptr %i.rh, align 8, !noalias !36210 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.3.0.copyload.i.i148 = load ptr, ptr %.sroa.3.0..sroa_idx.i.i147, align 8, !noalias !36210 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %1, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i149, i64 16, i1 false), !noalias !36210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !36210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !36211
  %i.ri = invoke { i64, ptr } @_ZN5tokio7runtime6handle6Handle7current17ha5cc63873ba306f0E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
          to label %bb.gv unwind label %bb.hv, !noalias !36212 ; 2 uses

bb.gv:                                            ; preds = %bb.gu
  %i.rj = extractvalue { i64, ptr } %i.ri, 0      ; 2 uses
  %i.rk = extractvalue { i64, ptr } %i.ri, 1      ; 4 uses
  store i64 %i.rj, ptr %i.ap, align 8, !noalias !36211
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 5 uses
  store ptr %i.rk, ptr %i.rl, align 8, !noalias !36211
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gw, %bb.gv
  %i.rm = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !36213 ; 2 uses
  %.not.i.i.i.i.i151 = icmp eq i64 %i.rm, 0
  br i1 %.not.i.i.i.i.i151, label %bb.gw, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.rn = trunc nuw i64 %i.rj to i1
  %.sroa.01.0.v.i.i.i152 = select i1 %i.rn, i64 488, i64 568
  %.sroa.01.0.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.sroa.01.0.v.i.i.i152
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 528 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !noalias !36214, !noundef !24 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 536
  %.not.i.i.i.i.i.i154 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i.i.i.i154, label %.thread.i.i.i.i.i174, label %bb.gy

.thread.i.i.i.i.i174:                             ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !36215
  br label %bb.hc

bb.gy:                                            ; preds = %bb.gx
  %i.rr = atomicrmw add ptr %i.rp, i64 1 monotonic, align 8, !noalias !36214
  %i.rs = icmp slt i64 %i.rr, 0
  br i1 %i.rs, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.trap()
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.rt = load ptr, ptr %i.ro, align 8, !noalias !36214, !nonnull !24, !noundef !24 ; 2 uses
  %i.ru = load ptr, ptr %i.rq, align 8, !noalias !36214, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !36216
  %i.rv = atomicrmw add ptr %i.rt, i64 1 monotonic, align 8, !noalias !36217
  %i.rw = icmp slt i64 %i.rv, 0
  br i1 %i.rw, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.trap()
  unreachable

bb.hc:                                            ; preds = %bb.ha, %.thread.i.i.i.i.i174
  %.sroa.0.0.i14.i.i.i.i.i = phi ptr [ null, %.thread.i.i.i.i.i174 ], [ %i.rt, %bb.ha ] ; 2 uses
  %.sroa.5.0.i13.i.i.i.i.i = phi ptr [ undef, %.thread.i.i.i.i.i174 ], [ %i.ru, %bb.ha ] ; 2 uses
  %.sroa.413.i.i.sroa.5.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i155 = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.413.i.i.sroa.5.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i155, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !36210
  store i64 204, ptr %i.al, align 128, !noalias !36216
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i156 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i156, align 8, !noalias !36216
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i157 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr @750, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i157, align 16, !noalias !36216
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i158 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i158, align 8, !noalias !36216
  %i.rx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %.sroa.0.0.i14.i.i.i.i.i, ptr %i.rx, align 32, !noalias !36216
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i159 = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %.sroa.5.0.i13.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i159, align 8, !noalias !36216
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i160 = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %i.rm, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i160, align 16, !noalias !36216
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i161 = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i161, align 8, !noalias !36216
  %.sroa.413.i.i.sroa.3.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i162 = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 %.sroa.0.0.copyload.i.i146, ptr %.sroa.413.i.i.sroa.3.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i162, align 64, !noalias !36216
  %.sroa.413.i.i.sroa.4.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i163 = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store ptr %.sroa.3.0.copyload.i.i148, ptr %.sroa.413.i.i.sroa.4.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i163, align 8, !noalias !36216
  %i.ry = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %i.ry, i8 0, i64 24, i1 false), !noalias !36216
  store ptr %.sroa.0.0.i14.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i164, align 128, !noalias !36216
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  store ptr %.sroa.5.0.i13.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i165, align 8, !noalias !36216
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !36218
  %i.rz = call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 128) #47, !noalias !36218 ; 9 uses
  %i.sa = icmp eq ptr %i.rz, null
  br i1 %i.sa, label %bb.hd, label %bb.hg, !prof !37

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 256) #54
          to label %.noexc.i.i.i.i.i.i.i173 unwind label %bb.he, !noalias !36217

.noexc.i.i.i.i.i.i.i173:                          ; preds = %bb.hd
  unreachable

bb.he:                                            ; preds = %bb.hd
  %i.sb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr299drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..set_permissions..set_permissions$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h92bfc881cc601b04E"(ptr noundef nonnull align 128 dereferenceable(256) %i.al) #55
          to label %.body.i.i.i167 unwind label %bb.hf, !noalias !36217

bb.hf:                                            ; preds = %bb.he
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36217
  unreachable

bb.hg:                                            ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.rz, ptr noundef nonnull align 128 dereferenceable(256) %i.al, i64 256, i1 false), !noalias !36217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !36216
  %i.sd = invoke { i64, ptr } @_ZN5tokio7runtime8blocking4pool7Spawner10spawn_task17h14133993b20e50b6E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i153, ptr noundef nonnull %i.rz, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap)
          to label %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17hd78285a52d2bf0cdE.exit.i.i.i.i unwind label %bb.hh, !noalias !36219 ; 2 uses

bb.hh:                                            ; preds = %bb.hg
  %i.se = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sf = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.rz)
          to label %.noexc.i.i.i.i.i166 unwind label %bb.hj, !noalias !36219

.noexc.i.i.i.i.i166:                              ; preds = %bb.hh
  br i1 %i.sf, label %bb.hi, label %.body.i.i.i167

bb.hi:                                            ; preds = %.noexc.i.i.i.i.i166
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.rz)
          to label %.body.i.i.i167 unwind label %bb.hj, !noalias !36219

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.sg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36219
  unreachable

_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17hd78285a52d2bf0cdE.exit.i.i.i.i: ; preds = %bb.hg
  %i.sh = extractvalue { i64, ptr } %i.sd, 0
  %i.si = extractvalue { i64, ptr } %i.sd, 1      ; 2 uses
  %i.sj = trunc nuw i64 %i.sh to i1
  %.not.i.i.i.i169 = icmp ne ptr %i.si, null
  %or.cond.not.i.i.i.i170 = select i1 %i.sj, i1 %.not.i.i.i.i169, i1 false
  br i1 %or.cond.not.i.i.i.i170, label %bb.hk, label %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17hadefcc03d6c47828E.exit.i.i.i, !prof !62

bb.hk:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17hd78285a52d2bf0cdE.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !36220
  store ptr %i.si, ptr %i.ao, align 8, !noalias !36220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !36220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !36220
  store ptr %i.ao, ptr %i.am, align 8, !noalias !36220
  %.sroa.410.0..sroa_idx.i.i.i.i171 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.410.0..sroa_idx.i.i.i.i171, align 8, !noalias !36220
  store ptr @765, ptr %i.an, align 8, !noalias !36220
  %i.sk = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %i.sk, align 8, !noalias !36220
  %i.sl = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr null, ptr %i.sl, align 8, !noalias !36220
  %i.sm = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.am, ptr %i.sm, align 8, !noalias !36220
  %i.sn = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 1, ptr %i.sn, align 8, !noalias !36220
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709) #54
          to label %bb.hm unwind label %bb.hl, !noalias !36221

bb.hl:                                            ; preds = %bb.hk
  %i.so = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao) #55
          to label %bb.ho unwind label %bb.hn, !noalias !36221

bb.hm:                                            ; preds = %bb.hk
  unreachable

bb.hn:                                            ; preds = %bb.hp, %bb.ho, %bb.hl
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36221
  unreachable

bb.ho:                                            ; preds = %bb.hl
  %i.sq = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.rz)
          to label %.noexc.i.i.i.i172 unwind label %bb.hn, !noalias !36221

.noexc.i.i.i.i172:                                ; preds = %bb.ho
  br i1 %i.sq, label %bb.hp, label %.body.i.i.i167

bb.hp:                                            ; preds = %.noexc.i.i.i.i172
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.rz)
          to label %.body.i.i.i167 unwind label %bb.hn, !noalias !36221

.body.i.i.i167:                                   ; preds = %bb.hp, %.noexc.i.i.i.i172, %bb.hi, %.noexc.i.i.i.i.i166, %bb.he
  %eh.lpad-body.i.i.i168 = phi { ptr, i32 } [ %i.so, %bb.hp ], [ %i.sb, %bb.he ], [ %i.se, %bb.hi ], [ %i.se, %.noexc.i.i.i.i.i166 ], [ %i.so, %.noexc.i.i.i.i172 ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17he33bc1d548cbbb28E"(ptr noalias noundef align 8 dereferenceable(16) %i.ap) #55
          to label %.body.i.i135 unwind label %bb.hu, !noalias !36212

_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17hadefcc03d6c47828E.exit.i.i.i: ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17hd78285a52d2bf0cdE.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36222)
  call void @llvm.experimental.noalias.scope.decl(metadata !36223)
  %i.sr = load i64, ptr %i.ap, align 8, !range !36, !alias.scope !36224, !noalias !36211, !noundef !24
  %i.ss = icmp eq i64 %i.sr, 0
  br i1 %i.ss, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17hadefcc03d6c47828E.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36225)
  call void @llvm.experimental.noalias.scope.decl(metadata !36226)
  %i.st = load ptr, ptr %i.rl, align 8, !alias.scope !36227, !noalias !36211, !nonnull !24, !noundef !24
  %i.su = atomicrmw sub ptr %i.st, i64 1 release, align 8, !noalias !36228
  %i.sv = icmp eq i64 %i.su, 1
  br i1 %i.sv, label %bb.hr, label %bb.hz

bb.hr:                                            ; preds = %bb.hq
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rl)
          to label %bb.hz unwind label %bb.hy, !noalias !36229

bb.hs:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17hadefcc03d6c47828E.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36230)
  call void @llvm.experimental.noalias.scope.decl(metadata !36231)
  %i.sw = load ptr, ptr %i.rl, align 8, !alias.scope !36232, !noalias !36211, !nonnull !24, !noundef !24
  %i.sx = atomicrmw sub ptr %i.sw, i64 1 release, align 8, !noalias !36233
  %i.sy = icmp eq i64 %i.sx, 1
  br i1 %i.sy, label %bb.ht, label %bb.hz

bb.ht:                                            ; preds = %bb.hs
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf5f3293d72219e9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rl)
          to label %bb.hz unwind label %bb.hy, !noalias !36229

bb.hu:                                            ; preds = %.body.i.i.i167
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36212
  unreachable

bb.hv:                                            ; preds = %bb.gu
  %lpad.thr_comm.split-lp.i.i.i150 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ta = icmp eq i64 %.sroa.0.0.copyload.i.i146, 0
  br i1 %i.ta, label %.body.i.i135, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i148) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i148, i64 noundef %.sroa.0.0.copyload.i.i146, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !36212
  br label %.body.i.i135

bb.hx:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !36210
  %.phi.trans.insert.i.i134 = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val11.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i134, align 8, !noalias !36210
  br label %bb.ic

bb.hy:                                            ; preds = %bb.ht, %bb.hr
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i135

bb.hz:                                            ; preds = %bb.ht, %bb.hs, %bb.hr, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !36211
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %i.rz, ptr %i.tc, align 8, !noalias !36210
  br label %bb.ic

.body.i.i135:                                     ; preds = %bb.iq, %.noexc18.i.i, %bb.io, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i140", %bb.in, %bb.ih, %bb.hy, %bb.hw, %bb.hv, %.body.i.i.i167
  %i.td = phi ptr [ %i.re, %bb.hv ], [ %i.th, %bb.ih ], [ %i.th, %bb.io ], [ %i.th, %bb.in ], [ %i.re, %bb.hy ], [ %i.re, %bb.hw ], [ %i.re, %.body.i.i.i167 ], [ %i.th, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i140" ], [ %i.th, %bb.iq ], [ %i.th, %.noexc18.i.i ]
  %i.te = phi ptr [ %i.rf, %bb.hv ], [ %i.ti, %bb.ih ], [ %i.ti, %bb.io ], [ %i.ti, %bb.in ], [ %i.rf, %bb.hy ], [ %i.rf, %bb.hw ], [ %i.rf, %.body.i.i.i167 ], [ %i.ti, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i140" ], [ %i.ti, %bb.iq ], [ %i.ti, %.noexc18.i.i ]
  %i.tf = phi ptr [ %i.rg, %bb.hv ], [ %i.tj, %bb.ih ], [ %i.tj, %bb.io ], [ %i.tj, %bb.in ], [ %i.rg, %bb.hy ], [ %i.rg, %bb.hw ], [ %i.rg, %.body.i.i.i167 ], [ %i.tj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i140" ], [ %i.tj, %bb.iq ], [ %i.tj, %.noexc18.i.i ]
  %i.tg = phi ptr [ %i.rh, %bb.hv ], [ %i.tk, %bb.ih ], [ %i.tk, %bb.io ], [ %i.tk, %bb.in ], [ %i.rh, %bb.hy ], [ %i.rh, %bb.hw ], [ %i.rh, %.body.i.i.i167 ], [ %i.tk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i140" ], [ %i.tk, %bb.iq ], [ %i.tk, %.noexc18.i.i ]
  %.pn8.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i150, %bb.hv ], [ %i.ts, %bb.ih ], [ %i.um, %bb.io ], [ %i.uf, %bb.in ], [ %i.tb, %bb.hy ], [ %lpad.thr_comm.split-lp.i.i.i150, %bb.hw ], [ %eh.lpad-body.i.i.i168, %.body.i.i.i167 ], [ %i.uf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i140" ], [ %i.tm, %bb.iq ], [ %i.tm, %.noexc18.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !36210
  store i8 2, ptr %i.tf, align 8, !noalias !36210
  br label %.body.i136

bb.ia:                                            ; preds = %bb.gt
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @710) #54
          to label %.noexc.i145 unwind label %bb.ir

.noexc.i145:                                      ; preds = %bb.ia
  unreachable

bb.ib:                                            ; preds = %bb.gt
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @710) #54
          to label %.noexc19.i unwind label %bb.ir

.noexc19.i:                                       ; preds = %bb.ib
  unreachable

bb.ic:                                            ; preds = %bb.hz, %bb.hx
  %i.th = phi ptr [ %i.qs, %bb.hx ], [ %i.re, %bb.hz ] ; 9 uses
  %i.ti = phi ptr [ %i.qr, %bb.hx ], [ %i.rf, %bb.hz ] ; 6 uses
  %i.tj = phi ptr [ %.phi.trans.insert.i132, %bb.hx ], [ %i.rg, %bb.hz ] ; 9 uses
  %i.tk = phi ptr [ %i.rd, %bb.hx ], [ %i.rh, %bb.hz ] ; 6 uses
  %.val11.i.i = phi ptr [ %.val11.pre.i.i, %bb.hx ], [ %i.rz, %bb.hz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !36210
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  invoke fastcc void @"_ZN96_$LT$tokio..runtime..task..join..JoinHandle$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hf3dc9014abf7d3afE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aq, ptr %.val11.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ie unwind label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.tm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !36210
  %.val.i18.i = load ptr, ptr %i.tl, align 8, !noalias !36210, !nonnull !24, !noundef !24 ; 2 uses
  %i.tn = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.val.i18.i)
          to label %.noexc18.i.i unwind label %bb.ip

bb.ie:                                            ; preds = %bb.ic
  %i.to = load i64, ptr %i.aq, align 8, !range !36, !noalias !36210, !noundef !24
  %i.tp = trunc nuw i64 %i.to to i1
  br i1 %i.tp, label %bb.is, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.tq = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.tq, i64 24, i1 false), !noalias !36210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !36210
  %.val10.i.i = load ptr, ptr %i.tl, align 8, !noalias !36210, !nonnull !24, !noundef !24 ; 2 uses
  %i.tr = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.val10.i.i)
          to label %.noexc13.i.i unwind label %bb.ih

.noexc13.i.i:                                     ; preds = %bb.if
  br i1 %i.tr, label %bb.ig, label %"_ZN4core3ptr127drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h12638feecdf5db5dE.exit.i.i"

bb.ig:                                            ; preds = %.noexc13.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.val10.i.i)
          to label %"_ZN4core3ptr127drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h12638feecdf5db5dE.exit.i.i" unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i135

"_ZN4core3ptr127drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h12638feecdf5db5dE.exit.i.i": ; preds = %bb.ig, %.noexc13.i.i
  %i.tt = load i64, ptr %i.ar, align 8, !noalias !36210, !noundef !24
  %.not.i.i = icmp eq i64 %i.tt, 0
  br i1 %.not.i.i, label %.thread327, label %bb.ii

bb.ii:                                            ; preds = %"_ZN4core3ptr127drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h12638feecdf5db5dE.exit.i.i"
  %i.tu = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @711, i64 noundef 22)
          to label %bb.ij unwind label %bb.io

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.experimental.noalias.scope.decl(metadata !36234)
  call void @llvm.experimental.noalias.scope.decl(metadata !36235)
end_hunk_2
begin_hunk_3_@"_ZN5xtask6common7process9delete_db28_$u7b$$u7b$closure$u7d$$u7d$17hfc75d13a91ca0edaE":bb.a
    i8 3, label %bb.j
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.n = phi ptr [ %i.l, %.thread ], [ %i.m, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %0, align 8, !noalias !36357, !nonnull !24, !align !42, !noundef !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !36357, !noundef !24 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !noalias !36357
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %i.s, align 8, !noalias !36357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36357
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %.thread.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.thread.i:                                        ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !36357
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !36357
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @705) #54
          to label %.noexc unwind label %bb.bk

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @705) #54
          to label %.noexc9 unwind label %bb.bk

.noexc9:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36357
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !90, !noalias !36358
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  switch i8 %.pre.i, label %default.unreachable36 [
    i8 0, label %bb.k
    i8 1, label %bb.aq
    i8 2, label %bb.ar
    i8 3, label %bb.an
  ]

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.w = phi ptr [ %i.n, %.thread.i ], [ %i.m, %bb.j ] ; 5 uses
  %i.x = phi ptr [ %.sroa.7.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %bb.j ] ; 5 uses
  %i.y = phi ptr [ %i.u, %.thread.i ], [ %i.v, %bb.j ] ; 6 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !noalias !36358 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !36358 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !36358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36359
  %i.z = invoke { i64, ptr } @_ZN5tokio7runtime6handle6Handle7current17ha5cc63873ba306f0E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
          to label %bb.l unwind label %bb.al, !noalias !36360 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.aa = extractvalue { i64, ptr } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 4 uses
  store i64 %i.aa, ptr %i.e, align 8, !noalias !36359
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.ab, ptr %i.ac, align 8, !noalias !36359
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.ad = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !36361 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = trunc nuw i64 %i.aa to i1
  %.sroa.01.0.v.i.i.i = select i1 %i.ae, i64 488, i64 568
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.01.0.v.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 528 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !36362, !noundef !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 536
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36363
  br label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ai = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !36362
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.af, align 8, !noalias !36362, !nonnull !24, !noundef !24 ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !noalias !36362, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36364
  %i.am = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !noalias !36365
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.q, %.thread.i.i.i.i.i
  %.sroa.0.0.i15.i.i.i.i.i = phi ptr [ null, %.thread.i.i.i.i.i ], [ %i.ak, %bb.q ] ; 2 uses
  %.sroa.5.0.i14.i.i.i.i.i = phi ptr [ undef, %.thread.i.i.i.i.i ], [ %i.al, %bb.q ] ; 2 uses
  store i64 204, ptr %i.a, align 128, !noalias !36364
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36364
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @735, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !36364
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36364
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.0.0.i15.i.i.i.i.i, ptr %i.ao, align 32, !noalias !36364
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.5.0.i14.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36364
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.ad, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !36364
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36364
  %.sroa.413.i.i.sroa.3.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.413.i.i.sroa.3.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 64, !noalias !36364
  %.sroa.413.i.i.sroa.4.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.3.0.copyload.i.i, ptr %.sroa.413.i.i.sroa.4.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !36364
  %.sroa.413.i.i.sroa.5.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.413.i.i.sroa.5.0..sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 16, !noalias !36364
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false), !noalias !36364
  store ptr %.sroa.0.0.i15.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36364
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %.sroa.5.0.i14.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 128, !noalias !36364
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !36366
  %i.aq = call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 128) #47, !noalias !36366 ; 9 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.t, label %bb.w, !prof !37

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 256) #54
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.u, !noalias !36365

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr282drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..remove_dir_all..remove_dir_all$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h67ac86fec3659696E"(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #55
          to label %.body.i.i.i unwind label %bb.v, !noalias !36365

bb.v:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36365
  unreachable

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.aq, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false), !noalias !36365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36364
  %i.au = invoke { i64, ptr } @_ZN5tokio7runtime8blocking4pool7Spawner10spawn_task17h14133993b20e50b6E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, ptr noundef nonnull %i.aq, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17h6b1e5debebf3e72bE.exit.i.i.i.i unwind label %bb.x, !noalias !36367 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.aq)
          to label %.noexc.i.i.i.i.i unwind label %bb.z, !noalias !36367

.noexc.i.i.i.i.i:                                 ; preds = %bb.x
  br i1 %i.aw, label %bb.y, label %.body.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.aq)
          to label %.body.i.i.i unwind label %bb.z, !noalias !36367

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36367
  unreachable

_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17h6b1e5debebf3e72bE.exit.i.i.i.i: ; preds = %bb.w
  %i.ay = extractvalue { i64, ptr } %i.au, 0
  %i.az = extractvalue { i64, ptr } %i.au, 1      ; 2 uses
  %i.ba = trunc nuw i64 %i.ay to i1
  %.not.i.i.i.i = icmp ne ptr %i.az, null
  %or.cond.not.i.i.i.i = select i1 %i.ba, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.aa, label %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17he8b8bd303e448ae1E.exit.i.i.i, !prof !62

bb.aa:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17h6b1e5debebf3e72bE.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36368
  store ptr %i.az, ptr %i.d, align 8, !noalias !36368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36368
  store ptr %i.d, ptr %i.b, align 8, !noalias !36368
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !36368
  store ptr @765, ptr %i.c, align 8, !noalias !36368
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.bb, align 8, !noalias !36368
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.bc, align 8, !noalias !36368
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.bd, align 8, !noalias !36368
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.be, align 8, !noalias !36368
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709) #54
          to label %bb.ac unwind label %bb.ab, !noalias !36369

bb.ab:                                            ; preds = %bb.aa
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #55
          to label %bb.ae unwind label %bb.ad, !noalias !36369

bb.ac:                                            ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36369
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.bh = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.aq)
          to label %.noexc.i.i.i.i unwind label %bb.ad, !noalias !36369

.noexc.i.i.i.i:                                   ; preds = %bb.ae
  br i1 %i.bh, label %bb.af, label %.body.i.i.i

bb.af:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.aq)
          to label %.body.i.i.i unwind label %bb.ad, !noalias !36369

.body.i.i.i:                                      ; preds = %bb.af, %.noexc.i.i.i.i, %bb.y, %.noexc.i.i.i.i.i, %bb.u
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.as, %bb.u ], [ %i.av, %bb.y ], [ %i.av, %.noexc.i.i.i.i.i ], [ %i.bf, %.noexc.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17he33bc1d548cbbb28E"(ptr noalias noundef align 8 dereferenceable(16) %i.e) #55
          to label %.body.i.i unwind label %bb.ak, !noalias !36360

_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17he8b8bd303e448ae1E.exit.i.i.i: ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner20spawn_blocking_inner17h6b1e5debebf3e72bE.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36370)
  call void @llvm.experimental.noalias.scope.decl(metadata !36371)
  %i.bi = load i64, ptr %i.e, align 8, !range !36, !alias.scope !36372, !noalias !36359, !noundef !24
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17he8b8bd303e448ae1E.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36373)
  call void @llvm.experimental.noalias.scope.decl(metadata !36374)
  %i.bk = load ptr, ptr %i.ac, align 8, !alias.scope !36375, !noalias !36359, !nonnull !24, !noundef !24
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !36376
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.ap unwind label %bb.ao, !noalias !36377

bb.ai:                                            ; preds = %_ZN5tokio7runtime8blocking4pool7Spawner14spawn_blocking17he8b8bd303e448ae1E.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36378)
  call void @llvm.experimental.noalias.scope.decl(metadata !36379)
  %i.bn = load ptr, ptr %i.ac, align 8, !alias.scope !36380, !noalias !36359, !nonnull !24, !noundef !24
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !36381
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf5f3293d72219e9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.ap unwind label %bb.ao, !noalias !36377

bb.ak:                                            ; preds = %.body.i.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36360
  unreachable

bb.al:                                            ; preds = %bb.k
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.br, label %.body.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !36360
  br label %.body.i.i

bb.an:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36358
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val11.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !36358
  br label %bb.as

bb.ao:                                            ; preds = %bb.aj, %bb.ah
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ap:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36359
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aq, ptr %i.bt, align 8, !noalias !36358
  br label %bb.as

.body.i.i:                                        ; preds = %bb.bg, %.noexc18.i.i, %bb.be, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.bd, %bb.ax, %bb.ao, %bb.am, %bb.al, %.body.i.i.i
  %i.bu = phi ptr [ %i.w, %bb.al ], [ %i.bx, %bb.ax ], [ %i.bx, %bb.be ], [ %i.bx, %bb.bd ], [ %i.w, %bb.ao ], [ %i.w, %bb.am ], [ %i.w, %.body.i.i.i ], [ %i.bx, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.bx, %bb.bg ], [ %i.bx, %.noexc18.i.i ]
  %i.bv = phi ptr [ %i.x, %bb.al ], [ %i.by, %bb.ax ], [ %i.by, %bb.be ], [ %i.by, %bb.bd ], [ %i.x, %bb.ao ], [ %i.x, %bb.am ], [ %i.x, %.body.i.i.i ], [ %i.by, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.by, %bb.bg ], [ %i.by, %.noexc18.i.i ]
  %i.bw = phi ptr [ %i.y, %bb.al ], [ %i.bz, %bb.ax ], [ %i.bz, %bb.be ], [ %i.bz, %bb.bd ], [ %i.y, %bb.ao ], [ %i.y, %bb.am ], [ %i.y, %.body.i.i.i ], [ %i.bz, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.bz, %bb.bg ], [ %i.bz, %.noexc18.i.i ]
  %.pn8.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %bb.al ], [ %i.ch, %bb.ax ], [ %i.db, %bb.be ], [ %i.cu, %bb.bd ], [ %i.bs, %bb.ao ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.am ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.cu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.cb, %bb.bg ], [ %i.cb, %.noexc18.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36358
  store i8 2, ptr %i.bv, align 8, !noalias !36358
  br label %.body.i

bb.aq:                                            ; preds = %bb.j
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @710) #54
          to label %.noexc.i unwind label %bb.bh

.noexc.i:                                         ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.j
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @710) #54
          to label %.noexc19.i unwind label %bb.bh

.noexc19.i:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ap, %bb.an
  %i.bx = phi ptr [ %i.m, %bb.an ], [ %i.w, %bb.ap ] ; 9 uses
  %i.by = phi ptr [ %.phi.trans.insert.i, %bb.an ], [ %i.x, %bb.ap ] ; 9 uses
  %i.bz = phi ptr [ %i.v, %bb.an ], [ %i.y, %bb.ap ] ; 6 uses
  %.val11.i.i = phi ptr [ %.val11.pre.i.i, %bb.an ], [ %i.aq, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36358
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke fastcc void @"_ZN96_$LT$tokio..runtime..task..join..JoinHandle$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hf3dc9014abf7d3afE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, ptr %.val11.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36358
  %.val.i.i = load ptr, ptr %i.ca, align 8, !noalias !36358, !nonnull !24, !noundef !24 ; 2 uses
  %i.cc = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.val.i.i)
          to label %.noexc18.i.i unwind label %bb.bf

bb.au:                                            ; preds = %bb.as
  %i.cd = load i64, ptr %i.f, align 8, !range !36, !noalias !36358, !noundef !24
  %i.ce = trunc nuw i64 %i.cd to i1               ; 2 uses
  br i1 %i.ce, label %"_ZN5tokio2fs8asyncify28_$u7b$$u7b$closure$u7d$$u7d$17ha67874e86850bd59E.exit.i", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !noalias !36358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36358
  %.val10.i.i = load ptr, ptr %i.ca, align 8, !noalias !36358, !nonnull !24, !noundef !24 ; 2 uses
  %i.cg = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.val10.i.i)
          to label %.noexc13.i.i unwind label %bb.ax

.noexc13.i.i:                                     ; preds = %bb.av
  br i1 %i.cg, label %bb.aw, label %"_ZN4core3ptr127drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h12638feecdf5db5dE.exit.i.i"

bb.aw:                                            ; preds = %.noexc13.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.val10.i.i)
          to label %"_ZN4core3ptr127drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h12638feecdf5db5dE.exit.i.i" unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

"_ZN4core3ptr127drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h12638feecdf5db5dE.exit.i.i": ; preds = %bb.aw, %.noexc13.i.i
  %i.ci = load i64, ptr %i.g, align 8, !noalias !36358, !noundef !24
  %.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i, label %"_ZN5tokio2fs8asyncify28_$u7b$$u7b$closure$u7d$$u7d$17ha67874e86850bd59E.exit.i.thread", label %bb.ay

bb.ay:                                            ; preds = %"_ZN4core3ptr127drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h12638feecdf5db5dE.exit.i.i"
  %i.cj = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @711, i64 noundef 22)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !36382)
  call void @llvm.experimental.noalias.scope.decl(metadata !36383)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !36384, !noalias !36358, !align !42, !noundef !24 ; 4 uses
end_hunk_3
