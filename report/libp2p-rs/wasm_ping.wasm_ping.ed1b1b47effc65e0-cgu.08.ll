Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/wasm_ping.wasm_ping.ed1b1b47effc65e0-cgu.08?download=true
inline.NumInlined: 1190
inline.NumDeleted: 670
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvXs3_NtCsdXHxuUs9k1_10tower_http4corsINtB5_14ResponseFutureINtNtNtCs9DIU3UKMbTt_4axum7routing5route11RouteFuturezEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCskm6LeB9lWb4_9wasm_ping:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3223
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.cj, %bb.ci
  %i.iu = load ptr, ptr %i.hs, align 8, !alias.scope !3222, !noalias !3223, !nonnull !13, !noundef !13
  %i.iv = getelementptr inbounds nuw [72 x i8], ptr %i.iu, i64 %i.im ; 9 uses
  store i64 1, ptr %i.iv, align 8, !noalias !3221
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i64 %i.il, ptr %.sroa.4.0..sroa_idx.i9, align 8, !noalias !3221
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i, align 8, !noalias !3221
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store i64 %.sroa.795.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  store ptr %.sroa.10113.sroa.0.0.copyload120.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  store ptr %.sroa.10113.sroa.8.0.copyload124.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  store i64 %.sroa.10113.sroa.9.0.copyload128.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  store ptr %.sroa.10113.sroa.10.0.copyload132.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  store i64 %.sroa.10113.sroa.11.0.copyload136.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !3221
  %i.iw = add nuw nsw i64 %i.im, 1                ; 2 uses
  store i64 %i.iw, ptr %i.hr, align 8, !alias.scope !3222, !noalias !3223
  %.not.i10 = icmp ugt i64 %i.il, %i.im
  br i1 %.not.i10, label %bb.cr, label %bb.cq

bb.cm:                                            ; preds = %bb.ch
  %i.ix = load i64, ptr %i.hr, align 8, !alias.scope !3219, !noalias !3221, !noundef !13 ; 6 uses
  %i.iy = icmp ult i64 %i.ix, 128102389400760776
  call void @llvm.assume(i1 %i.iy), !noalias !3197
  %i.iz = load i64, ptr %i.hq, align 8, !range !17, !alias.scope !3225, !noalias !3226, !noundef !13
  %i.ja = icmp eq i64 %i.ix, %i.iz
  br i1 %i.ja, label %bb.cn, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskm6LeB9lWb4_9wasm_ping.exit9.i

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCsdXHxuUs9k1_10tower_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskm6LeB9lWb4_9wasm_ping.exit9.i unwind label %bb.co, !noalias !3226

bb.co:                                            ; preds = %bb.cn
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10113.sroa.0.0.copyload120.i) ], !noalias !3197
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.10113.sroa.0.0.copyload120.i, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !3227, !nonnull !13, !noundef !13
  invoke void %i.jd(ptr noundef %.sroa.10113.sroa.10.0.copyload132.i, ptr noundef %.sroa.10113.sroa.8.0.copyload124.i, i64 noundef %.sroa.10113.sroa.9.0.copyload128.i)
          to label %.body.thread157.loopexit.split.loop.exit.split-lp.i.body unwind label %bb.cp, !noalias !3226, !inline_history !7

bb.cp:                                            ; preds = %bb.co
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3226
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskm6LeB9lWb4_9wasm_ping.exit9.i: ; preds = %bb.cn, %bb.cm
  %i.jf = load ptr, ptr %i.hs, align 8, !alias.scope !3225, !noalias !3226, !nonnull !13, !noundef !13
  %i.jg = getelementptr inbounds nuw [72 x i8], ptr %i.jf, i64 %i.ix ; 9 uses
  store i64 0, ptr %i.jg, align 8, !noalias !3221
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 %.sroa.795.0.i, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  store i64 %.sroa.795.0.i, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.720.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  store ptr %.sroa.10113.sroa.0.0.copyload120.i, ptr %.sroa.720.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  store ptr %.sroa.10113.sroa.8.0.copyload124.i, ptr %.sroa.921.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.1022.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  store i64 %.sroa.10113.sroa.9.0.copyload128.i, ptr %.sroa.1022.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.1123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  store ptr %.sroa.10113.sroa.10.0.copyload132.i, ptr %.sroa.1123.0..sroa_idx.i, align 8, !noalias !3221
  %.sroa.1224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  store i64 %.sroa.10113.sroa.11.0.copyload136.i, ptr %.sroa.1224.0..sroa_idx.i, align 8, !noalias !3221
  %i.jh = add nuw nsw i64 %i.ix, 1
  store i64 %i.jh, ptr %i.hr, align 8, !alias.scope !3225, !noalias !3226
  store i64 1, ptr %i.ih, align 8, !alias.scope !3218, !noalias !3220
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i64 %i.ix, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !3218, !noalias !3220
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i64 %i.ix, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !3218, !noalias !3220
  br label %_RNvMsO_NtNtCscwxJ8MeEu7n_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCskm6LeB9lWb4_9wasm_ping.exit.i

bb.cq:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskm6LeB9lWb4_9wasm_ping.exit.i
  %i.ji = load ptr, ptr %i.hs, align 8, !alias.scope !3219, !noalias !3221, !nonnull !13, !noundef !13
  %i.jj = getelementptr inbounds nuw [72 x i8], ptr %i.ji, i64 %i.il ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store i64 1, ptr %i.jk, align 8, !noalias !3221
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  store i64 %i.im, ptr %i.jl, align 8, !noalias !3221
  store i64 1, ptr %i.ih, align 8, !alias.scope !3218, !noalias !3220
  store i64 %i.im, ptr %i.ik, align 8, !alias.scope !3218, !noalias !3220
  br label %_RNvMsO_NtNtCscwxJ8MeEu7n_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCskm6LeB9lWb4_9wasm_ping.exit.i

bb.cr:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskm6LeB9lWb4_9wasm_ping.exit.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.il, i64 noundef %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #35
          to label %.noexc12 unwind label %.body.thread157.loopexit.split.loop.exit.split-lp.i

.noexc12:                                         ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %.noexc31.i
  %spec.select.le404.i = select i1 %i.hx, i64 %i.hy, i64 %i.hv
  store i64 %i.hc, ptr %.sroa.417.0..sroa_idx, align 8, !noalias !3195
  store i64 %i.hw, ptr %i.k, align 8, !noalias !3195
  store i64 %spec.select.le404.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !3195
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.795.0.i, i64 noundef %i.hz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #35
          to label %bb.ct unwind label %bb.cu, !noalias !3215

bb.ct:                                            ; preds = %bb.cs
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.jm = landingpad { ptr, i32 }
          cleanup
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.10113.sroa.0.0.copyload120.i, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !3228, !nonnull !13, !noundef !13
  invoke void %i.jo(ptr noundef %.sroa.10113.sroa.10.0.copyload132.i, ptr noundef %.sroa.10113.sroa.8.0.copyload124.i, i64 noundef %.sroa.10113.sroa.9.0.copyload128.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.cv, !noalias !3215, !inline_history !2

bb.cv:                                            ; preds = %bb.cu
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3215
  unreachable

_RNvMsO_NtNtCscwxJ8MeEu7n_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.cq, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskm6LeB9lWb4_9wasm_ping.exit9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3195
  br i1 %i.hx, label %bb.cc, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.br
  %lpad.loopexit179.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.hc, ptr %.sroa.417.0..sroa_idx, align 8, !noalias !3195
  store i64 %.sink.i29223.lcssa231.i, ptr %i.k, align 8, !noalias !3195
  store i64 %.lcssa226238.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !3195
  br label %bb.cw

.loopexit.split-lp.i:                             ; preds = %bb.bt
  %lpad.loopexit.split-lp180.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi181.i = phi { ptr, i32 } [ %lpad.loopexit179.i, %.loopexit.i ], [ %lpad.loopexit.split-lp180.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.0.i) ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !3229, !nonnull !13, !noundef !13
  invoke void %i.jr(ptr noundef %.sroa.9.0.i, ptr noundef %.sroa.7.0.i, i64 noundef %.sroa.8.0.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.bq, !noalias !3197, !inline_history !2

bb.cx:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.aa, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.dd

bb.cy:                                            ; preds = %.body
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cz:                                            ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.dd

bb.da:                                            ; preds = %bb.b
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call fastcc void @_RINvXs7_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMapINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTNtNtB8_4name10HeaderNameNtNtB8_5value11HeaderValueEE6extendINtNtB12_6option6OptionB1M_EECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(96) %i.jt, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.y)
  %i.ju = call { ptr, ptr } @_RNvXs_NtCsf7xb2awyBix_9axum_core4bodyNtB4_4BodyNtNtCskKLDkoKarTP_4core7default7Default7default() ; 2 uses
  %i.jv = extractvalue { ptr, ptr } %i.ju, 0      ; 2 uses
  %i.jw = extractvalue { ptr, ptr } %i.ju, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3230
  invoke void @_RNvMs2_NtCscwxJ8MeEu7n_4http8responseNtB5_5Parts3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.b)
          to label %_RNvMs_NtCscwxJ8MeEu7n_4http8responseINtB4_8ResponseNtNtCsf7xb2awyBix_9axum_core4body4BodyE3newCskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.db, !noalias !3230

bb.db:                                            ; preds = %bb.da
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf7xb2awyBix_9axum_core4body4BodyECskm6LeB9lWb4_9wasm_ping(ptr nonnull %i.jv, ptr nonnull readonly align 8 dereferenceable(48) %i.jw) #37
          to label %common.resume unwind label %bb.dc, !noalias !3231

bb.dc:                                            ; preds = %bb.db
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3230
  unreachable

_RNvMs_NtCscwxJ8MeEu7n_4http8responseINtB4_8ResponseNtNtCsf7xb2awyBix_9axum_core4body4BodyE3newCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.da
  %.sroa.824.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.16.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.20.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.24.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.28.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.1569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1569.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.28.0..sroa_idx45, i64 16, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.jz = load <2 x i64>, ptr %i.b, align 16, !noalias !3232
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kb = load <2 x i64>, ptr %.sroa.824.0..sroa_idx25, align 16, !noalias !3232
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kd = load <2 x i64>, ptr %.sroa.12.0..sroa_idx29, align 16, !noalias !3232
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kf = load <2 x i64>, ptr %.sroa.16.0..sroa_idx33, align 16, !noalias !3232
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kh = load <2 x i64>, ptr %.sroa.20.0..sroa_idx37, align 16, !noalias !3232
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kj = load <2 x i64>, ptr %.sroa.24.0..sroa_idx41, align 16, !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3230
  %i.kk = load <2 x i64>, ptr %i.jt, align 8, !alias.scope !3233, !noalias !13
  store <2 x i64> %i.jz, ptr %i.jt, align 8, !alias.scope !3233, !noalias !13
  store <2 x i64> %i.kk, ptr %0, align 8
  %i.kl = load <2 x i64>, ptr %3, align 8, !alias.scope !3234, !noalias !13
  store <2 x i64> %i.kb, ptr %3, align 8, !alias.scope !3234, !noalias !13
  store <2 x i64> %i.kl, ptr %i.ka, align 8
  %i.km = load <2 x i64>, ptr %4, align 8, !alias.scope !3235, !noalias !13
  store <2 x i64> %i.kd, ptr %4, align 8, !alias.scope !3235, !noalias !13
  store <2 x i64> %i.km, ptr %i.kc, align 8
  %i.kn = load <2 x i64>, ptr %5, align 8, !alias.scope !3236, !noalias !13
  store <2 x i64> %i.kf, ptr %5, align 8, !alias.scope !3236, !noalias !13
  store <2 x i64> %i.kn, ptr %i.ke, align 8
  %i.ko = load <2 x i64>, ptr %6, align 8, !alias.scope !3237, !noalias !13
  store <2 x i64> %i.kh, ptr %6, align 8, !alias.scope !3237, !noalias !13
  store <2 x i64> %i.ko, ptr %i.kg, align 8
  %i.kp = load <2 x i64>, ptr %7, align 8, !alias.scope !3238, !noalias !13
  store <2 x i64> %i.kj, ptr %7, align 8, !alias.scope !3238, !noalias !13
  store <2 x i64> %i.kp, ptr %i.ki, align 8
  %.sroa.1670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.jv, ptr %.sroa.1670.0..sroa_idx, align 8
  %.sroa.1771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.jw, ptr %.sroa.1771.0..sroa_idx, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cz, %bb.bb, %bb.az, %bb.cx, %_RNvMs_NtCscwxJ8MeEu7n_4http8responseINtB4_8ResponseNtNtCsf7xb2awyBix_9axum_core4body4BodyE3newCskm6LeB9lWb4_9wasm_ping.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCskeoOuuhwsQF_12sharded_slab5shardINtB5_5ArrayNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !13 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.preheader, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef range(i64 0, 1152921504606846976) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #38, !noalias !3245
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.sroa.0.04 = phi ptr [ %i.h, %.backedge ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8
  %i.i = load atomic ptr, ptr %.sroa.0.04 acquire, align 8 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.backedge, label %bb.c

._crit_edge:                                      ; preds = %.backedge
  ret void

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3247)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val5.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !3248, !noundef !13 ; 2 uses
  %i.l = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeoOuuhwsQF_12sharded_slab5shard5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEECskm6LeB9lWb4_9wasm_ping.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.c
  %.val4.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3248, !nonnull !13, !noundef !13
  %i.m = shl nuw nsw i64 %.val5.i.i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.m, i64 noundef 8) #28, !noalias !3248
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeoOuuhwsQF_12sharded_slab5shard5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEECskm6LeB9lWb4_9wasm_ping.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeoOuuhwsQF_12sharded_slab5shard5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEECskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !3248, !nonnull !13, !noundef !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val1.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !3248, !noundef !13
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1g_3cfg13DefaultConfigEEECskm6LeB9lWb4_9wasm_ping(ptr nonnull %.val.i.i.i, i64 %.val1.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCskeoOuuhwsQF_12sharded_slab4sync5inner5alloc5TrackINtNtB1j_5shard5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1j_3cfg13DefaultConfigEEEECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeoOuuhwsQF_12sharded_slab5shard5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 40, i64 noundef 8) #28
  resume { ptr, i32 } %i.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCskeoOuuhwsQF_12sharded_slab4sync5inner5alloc5TrackINtNtB1j_5shard5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1j_3cfg13DefaultConfigEEEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeoOuuhwsQF_12sharded_slab5shard5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 40, i64 noundef 8) #28
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCskeoOuuhwsQF_12sharded_slab4sync5inner5alloc5TrackINtNtB1j_5shard5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1j_3cfg13DefaultConfigEEEECskm6LeB9lWb4_9wasm_ping.exit, %.lr.ph
  %i.q = icmp eq ptr %.sroa.0.04, %i.g
  br i1 %i.q, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8), (16, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 2 uses
  %i.b = icmp ult i64 %.sroa.53.0.copyload, 88686269585142076
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [104 x i8], ptr %.sroa.42.0.copyload, i64 %.sroa.53.0.copyload
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.42.0.copyload, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.42.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.01.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val6 = load i64, ptr %i.g, align 8, !noundef !13 ; 2 uses
  %i.h = icmp eq i64 %.val6, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCscwxJ8MeEu7n_4http6header3map3PosEECskm6LeB9lWb4_9wasm_ping.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  %i.j = shl nuw nsw i64 %.val6, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef 2) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCscwxJ8MeEu7n_4http6header3map3PosEECskm6LeB9lWb4_9wasm_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCscwxJ8MeEu7n_4http6header3map3PosEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !3257
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !3257
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !3257, !noundef !13
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !13
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !3258
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !3258
end_hunk_0
