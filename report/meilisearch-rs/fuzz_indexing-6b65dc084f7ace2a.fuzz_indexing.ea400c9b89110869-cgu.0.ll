Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN5milli6update3new7indexer7extract11extract_all17h8af8b418390ada28E:bb.a
          to label %bb.wu unwind label %.split1533.thread

bb.wu:                                            ; preds = %.thread1588
  br i1 %i.buy, label %bb.wv, label %.thread1592

bb.wv:                                            ; preds = %bb.wu
  %i.buz = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h93c5d965e4053196E, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kn)
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 48
  store i64 1, ptr %i.kn, align 8
  %.sroa.4521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4521.0..sroa_idx, align 8
  %.sroa.5522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store i64 0, ptr %.sroa.5522.0..sroa_idx, align 8
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  store ptr %i.bva, ptr %i.bvb, align 8
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ko, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.buz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kn)
          to label %bb.xe unwind label %.split1533.thread

bb.ww:                                            ; preds = %.thread1592, %bb.wz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ko, ptr noundef nonnull align 8 dereferenceable(40) %i.km, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.km)
  br label %bb.xa

bb.wx:                                            ; preds = %bb.wy
  %i.bvc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.km) #67
          to label %.thread1519 unwind label %bb.p

.thread1592:                                      ; preds = %bb.wr, %bb.wt, %bb.wu, %bb.wq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.km)
  %i.bvd = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h93c5d965e4053196E, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  store i64 2, ptr %i.km, align 8
  %i.bve = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  store ptr %i.bvd, ptr %i.bve, align 8
  %i.bvf = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bvg = icmp eq i8 %i.bvf, 0
  br i1 %i.bvg, label %bb.wy, label %bb.ww

bb.wy:                                            ; preds = %.thread1592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kl)
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvd, i64 48
  store i64 1, ptr %i.kl, align 8
  %.sroa.4526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4526.0..sroa_idx, align 8
  %.sroa.5527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store i64 0, ptr %.sroa.5527.0..sroa_idx, align 8
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  store ptr %i.bvh, ptr %i.bvi, align 8
  %i.bvj = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.km, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kl)
          to label %bb.wz unwind label %bb.wx     ; 0 uses

bb.wz:                                            ; preds = %bb.wy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  br label %bb.ww

bb.xa:                                            ; preds = %bb.xe, %bb.ww
  call void @llvm.experimental.noalias.scope.decl(metadata !36245)
  %i.bvk = load i64, ptr %i.ko, align 8, !range !25, !alias.scope !36245, !noundef !16
  %.not.i907 = icmp eq i64 %i.bvk, 2
  br i1 %.not.i907, label %.noexc911, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ko, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bvl)
          to label %.noexc911 unwind label %bb.xg

.noexc911:                                        ; preds = %bb.xa, %bb.xb
  %i.bvm = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bvn = icmp eq i8 %i.bvm, 0
  br i1 %i.bvn, label %bb.xc, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913

bb.xc:                                            ; preds = %.noexc911
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.bvp = load ptr, ptr %i.bvo, align 8, !alias.scope !36245, !align !21, !noundef !16 ; 3 uses
  %.not4.i908 = icmp eq ptr %i.bvp, null
  br i1 %.not4.i908, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !noalias !36245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb), !noalias !36245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !noalias !36245
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 16
  %i.bvr = load ptr, ptr %i.bvq, align 8, !nonnull !16, !align !22, !noundef !16
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvp, i64 24
  %i.bvt = load i64, ptr %i.bvs, align 8, !noundef !16
  store ptr %i.bvr, ptr %i.ha, align 8, !noalias !36245
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 %i.bvt, ptr %i.bvu, align 8, !noalias !36245
  store ptr %i.ha, ptr %i.hb, align 8, !noalias !36245
  %.sroa.43.0..sroa_idx.i909 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdede6b7140aa9959E", ptr %.sroa.43.0..sroa_idx.i909, align 8, !noalias !36245
  store ptr @1859, ptr %i.hc, align 8, !noalias !36245
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 2, ptr %i.bvv, align 8, !noalias !36245
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr null, ptr %i.bvw, align 8, !noalias !36245
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store ptr %i.hb, ptr %i.bvx, align 8, !noalias !36245
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  store i64 1, ptr %i.bvy, align 8, !noalias !36245
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ko, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1857, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.hc)
          to label %.noexc912 unwind label %bb.xg

.noexc912:                                        ; preds = %bb.xd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !noalias !36245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !36245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !36245
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913

bb.xe:                                            ; preds = %bb.wv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kn)
  br label %bb.xa

bb.xf:                                            ; preds = %bb.xh, %bb.xg
  %.sroa.0318.2 = phi i1 [ %.sroa.0318.3, %bb.xg ], [ %.sroa.0318.4, %bb.xh ]
  %.pn819 = phi { ptr, i32 } [ %i.bvz, %bb.xg ], [ %i.bwa, %bb.xh ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.ko) #67
          to label %bb.re unwind label %bb.p

bb.xg:                                            ; preds = %bb.xd, %bb.xk, %bb.xl, %bb.xb
  %.sroa.0318.3 = phi i1 [ false, %bb.xk ], [ false, %bb.xl ], [ true, %bb.xd ], [ true, %bb.xb ]
  %i.bvz = landingpad { ptr, i32 }
          cleanup
  br label %bb.xf

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913: ; preds = %.noexc912, %bb.xc, %.noexc911
  %.val1037 = load ptr, ptr %.sroa.91389.0.copyload, align 8, !nonnull !16, !noundef !16
  invoke fastcc void @_ZN5milli8progress8Progress15update_progress17h4a9bb812aee568f3E(ptr nonnull %.val1037, i8 noundef 4)
          to label %bb.xi unwind label %bb.xh

bb.xh:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913, %bb.xi
  %.sroa.0318.4 = phi i1 [ false, %bb.xi ], [ true, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913 ]
  %i.bwa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.ko) #67
          to label %bb.xf unwind label %bb.p

bb.xi:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk)
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.on, i64 168
  %i.bwc = load i64, ptr %i.bwb, align 8, !noundef !16
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.on, i64 176
  %i.bwe = load i32, ptr %i.bwd, align 8, !noundef !16
  invoke fastcc void @_ZN5milli6update3new6merger21merge_and_send_docids17hc93c69f6dd0d3bfdE(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.kk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.kj, i64 noundef %i.bwc, i32 noundef %i.bwe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.on, ptr noundef nonnull align 8 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.81388.0.copyload)
          to label %bb.xj unwind label %bb.xh

bb.xj:                                            ; preds = %bb.xi
  %i.bwf = load i64, ptr %i.kk, align 8, !range !40, !noundef !16 ; 2 uses
  %.not752 = icmp eq i64 %i.bwf, 97
  br i1 %.not752, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %.sroa.4531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.2533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.2533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.4531.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk)
  store i64 %i.bwf, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.ko)
          to label %bb.agb unwind label %bb.xg

bb.xl:                                            ; preds = %bb.xj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.ko)
          to label %bb.xm unwind label %bb.xg

bb.xm:                                            ; preds = %bb.xl
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.ko)
          to label %bb.xn unwind label %.thread1804.thread

bb.xn:                                            ; preds = %bb.xm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ko)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ls)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ki)
  invoke void @_ZN5milli5index5Index19proximity_precision17h8e78e56f18548c13E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ki, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.on, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mv)
          to label %bb.xo unwind label %bb.eb

bb.xo:                                            ; preds = %bb.xn
  %i.bwg = load i32, ptr %i.ki, align 8, !range !60, !noundef !16 ; 2 uses
  %.not754 = icmp eq i32 %i.bwg, 5
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.bwi = load i8, ptr %i.bwh, align 4           ; 2 uses
  br i1 %.not754, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 5
  %.sroa.3179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.id)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.3179.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5539.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ki)
  store i32 %i.bwg, ptr %i.id, align 8
  %.sroa.2178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store i8 %i.bwi, ptr %.sroa.2178.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ic, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.id)
          to label %bb.afz unwind label %bb.eb

bb.xq:                                            ; preds = %bb.xo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ki)
  %i.bwj = icmp eq i8 %i.bwi, 1
  br i1 %i.bwj, label %bb.zn, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kh)
  %i.bwk = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.bwl = icmp eq i64 %i.bwk, 0
  br i1 %i.bwl, label %bb.xs, label %.thread1608

bb.xs:                                            ; preds = %bb.xr
  %i.bwm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bwm, label %bb.xt [
    i8 0, label %.thread1608
    i8 1, label %.thread1604
    i8 2, label %.thread1604
  ], !prof !24

bb.xt:                                            ; preds = %bb.xs
  %i.bwn = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E)
          to label %bb.xu unwind label %bb.eb     ; 2 uses

bb.xu:                                            ; preds = %bb.xt
  %.not758 = icmp eq i8 %i.bwn, 0
  br i1 %.not758, label %.thread1608, label %.thread1604

.thread1604:                                      ; preds = %bb.xs, %bb.xs, %bb.xu
  %.sroa.0190.01607 = phi i8 [ %i.bwn, %bb.xu ], [ %i.bwm, %bb.xs ], [ %i.bwm, %bb.xs ]
  %i.bwo = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !16, !align !21, !noundef !16
  %i.bwp = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bwo, i8 noundef %.sroa.0190.01607)
          to label %bb.xv unwind label %bb.eb

bb.xv:                                            ; preds = %.thread1604
  br i1 %i.bwp, label %bb.xw, label %.thread1608

bb.xw:                                            ; preds = %bb.xv
  %i.bwq = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kg)
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 48
  store i64 1, ptr %i.kg, align 8
  %.sroa.4542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4542.0..sroa_idx, align 8
  %.sroa.5543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i64 0, ptr %.sroa.5543.0..sroa_idx, align 8
  %i.bws = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store ptr %i.bwr, ptr %i.bws, align 8
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.kh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bwq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kg)
          to label %bb.yf unwind label %bb.eb

bb.xx:                                            ; preds = %.thread1608, %bb.ya
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kh, ptr noundef nonnull align 8 dereferenceable(40) %i.kf, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  br label %bb.yb

bb.xy:                                            ; preds = %bb.xz
  %i.bwt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.kf) #67
          to label %.thread1453 unwind label %bb.p

.thread1608:                                      ; preds = %bb.xs, %bb.xu, %bb.xv, %bb.xr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kf)
  %i.bwu = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  store i64 2, ptr %i.kf, align 8
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  store ptr %i.bwu, ptr %i.bwv, align 8
  %i.bww = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bwx = icmp eq i8 %i.bww, 0
  br i1 %i.bwx, label %bb.xz, label %bb.xx

bb.xz:                                            ; preds = %.thread1608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ke)
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwu, i64 48
  store i64 1, ptr %i.ke, align 8
  %.sroa.4547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4547.0..sroa_idx, align 8
  %.sroa.5548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store i64 0, ptr %.sroa.5548.0..sroa_idx, align 8
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store ptr %i.bwy, ptr %i.bwz, align 8
  %i.bxa = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ke)
          to label %bb.ya unwind label %bb.xy     ; 0 uses

bb.ya:                                            ; preds = %bb.xz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ke)
  br label %bb.xx

bb.yb:                                            ; preds = %bb.yf, %bb.xx
  call void @llvm.experimental.noalias.scope.decl(metadata !36246)
  %i.bxb = load i64, ptr %i.kh, align 8, !range !25, !alias.scope !36246, !noundef !16
  %.not.i900 = icmp eq i64 %i.bxb, 2
  br i1 %.not.i900, label %.noexc904, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bxc)
          to label %.noexc904 unwind label %bb.yh

.noexc904:                                        ; preds = %bb.yb, %bb.yc
  %i.bxd = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bxe = icmp eq i8 %i.bxd, 0
  br i1 %i.bxe, label %bb.yd, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906

bb.yd:                                            ; preds = %.noexc904
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.bxg = load ptr, ptr %i.bxf, align 8, !alias.scope !36246, !align !21, !noundef !16 ; 3 uses
  %.not4.i901 = icmp eq ptr %i.bxg, null
  br i1 %.not4.i901, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf), !noalias !36246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he), !noalias !36246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd), !noalias !36246
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxg, i64 16
  %i.bxi = load ptr, ptr %i.bxh, align 8, !nonnull !16, !align !22, !noundef !16
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxg, i64 24
  %i.bxk = load i64, ptr %i.bxj, align 8, !noundef !16
  store ptr %i.bxi, ptr %i.hd, align 8, !noalias !36246
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i64 %i.bxk, ptr %i.bxl, align 8, !noalias !36246
  store ptr %i.hd, ptr %i.he, align 8, !noalias !36246
  %.sroa.43.0..sroa_idx.i902 = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdede6b7140aa9959E", ptr %.sroa.43.0..sroa_idx.i902, align 8, !noalias !36246
  store ptr @1859, ptr %i.hf, align 8, !noalias !36246
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 2, ptr %i.bxm, align 8, !noalias !36246
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  store ptr null, ptr %i.bxn, align 8, !noalias !36246
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store ptr %i.he, ptr %i.bxo, align 8, !noalias !36246
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store i64 1, ptr %i.bxp, align 8, !noalias !36246
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1857, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.hf)
          to label %.noexc905 unwind label %bb.yh

.noexc905:                                        ; preds = %bb.ye
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !noalias !36246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !noalias !36246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !noalias !36246
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906

bb.yf:                                            ; preds = %bb.xw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kg)
  br label %bb.yb

bb.yg:                                            ; preds = %bb.yi, %bb.yh
  %.pn759 = phi { ptr, i32 } [ %i.bxr, %bb.yi ], [ %i.bxq, %bb.yh ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.kh) #67
          to label %.thread1453 unwind label %bb.p

bb.yh:                                            ; preds = %bb.ye, %bb.yc
  %i.bxq = landingpad { ptr, i32 }
          cleanup
  br label %bb.yg

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906: ; preds = %.noexc905, %bb.yd, %.noexc904
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd)
  invoke fastcc void @_ZN5milli6update3new7extract10searchable34extract_word_pair_proximity_docids32WordPairProximityDocidsExtractor14run_extraction17h756d1e1ea5fe7316E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.kd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dereferenceable(64) %2, ptr noalias noundef align 8 dereferenceable(512) %6)
          to label %bb.yj unwind label %bb.yi

bb.yi:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906
  %i.bxr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.kh) #67
          to label %bb.yg unwind label %bb.p

bb.yj:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906
  %i.bxs = load i64, ptr %i.kd, align 8, !range !40, !noundef !16 ; 2 uses
  %.not761 = icmp eq i64 %i.bxs, 97
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, ptr noundef nonnull align 8 dereferenceable(24) %i.bxt, i64 24, i1 false)
  br i1 %.not761, label %bb.yl, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %.sroa.5554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %.sroa.3557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.3557.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.5554.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd)
  %.sroa.2556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2556.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, i64 24, i1 false)
  store i64 %i.bxs, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.kh)
          to label %bb.zq unwind label %bb.ym

bb.yl:                                            ; preds = %bb.yj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, i64 24, i1 false)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.kh)
          to label %bb.yn unwind label %bb.ym

bb.ym:                                            ; preds = %bb.yk, %bb.yl
  %i.bxu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.kh) #67
          to label %.thread1453 unwind label %bb.p

bb.yn:                                            ; preds = %bb.yl
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.kh)
          to label %bb.yp unwind label %bb.eb

bb.yo:                                            ; preds = %bb.ze
  br i1 %.sroa.0333.2, label %.thread1614, label %.thread1453
end_hunk_0
