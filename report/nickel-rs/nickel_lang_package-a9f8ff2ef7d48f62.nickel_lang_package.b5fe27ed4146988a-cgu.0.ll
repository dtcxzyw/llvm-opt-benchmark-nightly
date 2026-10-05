Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11075
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN12gix_features8parallel11in_parallel22in_parallel_with_slice28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h52003f5fb60f7a90E":bb.a

bb.jb:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i unwind label %bb.ci, !noalias !9855

bb.jc:                                            ; preds = %bb.jd, %bb.iz, %.body.i.i.i
  %i.yp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !10012
  unreachable

"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i": ; preds = %bb.iw, %bb.iv
  call void @llvm.experimental.noalias.scope.decl(metadata !10042)
  call void @llvm.experimental.noalias.scope.decl(metadata !10043)
  %i.yq = load ptr, ptr %i.ar, align 8, !alias.scope !10044, !noalias !9885, !nonnull !41, !noundef !41
  %i.yr = atomicrmw sub ptr %i.yq, i64 1 release, align 8, !noalias !10045
  %i.ys = icmp eq i64 %i.yr, 1
  br i1 %i.ys, label %bb.jd, label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i"

bb.jd:                                            ; preds = %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i" unwind label %bb.jc, !noalias !10012

_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i: ; preds = %bb.jb, %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !9857
  br label %bb.je

bb.je:                                            ; preds = %.loopexit240.i, %bb.jg, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i, %bb.bp
  %.sroa.19.3.i = phi i64 [ undef, %bb.bp ], [ %.sroa.79.i.sroa.4.1.i.i.i175.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.20156.4.ph.i, %bb.jg ], [ undef, %.loopexit240.i ] ; 3 uses
  %.sroa.17.4.i = phi ptr [ @2591, %bb.bp ], [ %i.wu, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %i.yv, %bb.jg ], [ @2591, %.loopexit240.i ] ; 3 uses
  %.sroa.15107.4.i = phi ptr [ %i.jk, %bb.bp ], [ %i.wv, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.16154.4.ph.i, %bb.jg ], [ %.sroa.15107.3.i, %.loopexit240.i ] ; 3 uses
  %.sroa.14.4.i = phi i8 [ undef, %bb.bp ], [ %.sroa.14.0.copyload99.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.13152.4.ph.i, %bb.jg ], [ %i.abb, %.loopexit240.i ] ; 3 uses
  %.sroa.0.4.i = phi i8 [ 5, %bb.bp ], [ %i.xb, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.9151.1.ph.i, %bb.jg ], [ %.sroa.0.3.i, %.loopexit240.i ] ; 3 uses
  %.sroa.79.i.sroa.4.1.i.i.i174.i = phi i64 [ %.sroa.79.i.sroa.4.1.i.i.i171.i, %bb.bp ], [ %.sroa.79.i.sroa.4.1.i.i.i175.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i171.i, %bb.jg ], [ %.sroa.79.i.sroa.4.1.i.i.i171.i, %.loopexit240.i ] ; 3 uses
  %.sroa.086.4.i.i.i = phi i1 [ true, %bb.bp ], [ false, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ true, %bb.jg ], [ true, %.loopexit240.i ]
  %i.yt = icmp eq i64 %.sroa.0289.0.i.i.i, 0
  br i1 %i.yt, label %bb.bi, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6291.0.i.i.i, i64 noundef %.sroa.0289.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !10046
  br label %bb.bi

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit194.i.i.i": ; preds = %bb.ce, %.thread324.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !9858
  %.pr.i.i.i = load i64, ptr %i.ej, align 8, !noalias !9858 ; 2 uses
  %i.yu = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.yu, label %.thread.i.i.i, label %bb.aq

bb.jg:                                            ; preds = %bb.ca, %bb.bu
  %.sroa.20156.4.ph.i = phi i64 [ %.sroa.20156.3.i, %bb.ca ], [ %.sroa.20156.1.i, %bb.bu ]
  %.sroa.18155.4.ph.i = phi i64 [ %.sroa.18155.3.i, %bb.ca ], [ %.sroa.18155.1.i, %bb.bu ]
  %.sroa.16154.4.ph.i = phi ptr [ %.sroa.16154.3.i, %bb.ca ], [ %i.kr, %bb.bu ]
  %.sroa.13152.4.ph.i = phi i8 [ %.sroa.13152.3.i, %bb.ca ], [ %.sroa.13152.1.i, %bb.bu ]
  %.sroa.9151.1.ph.i = phi i8 [ %.sroa.9151.0.i, %bb.ca ], [ 3, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15153.i, i64 6, i1 false), !noalias !9867
  %i.yv = inttoptr i64 %.sroa.18155.4.ph.i to ptr
  br label %bb.je

bb.jh:                                            ; preds = %.noexc62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !9858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8150.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.443.i.sroa.0.i, i64 6, i1 false), !noalias !9873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15153.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.443.i.sroa.7.i, i64 6, i1 false), !noalias !9877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.7.i)
  store i8 %i.kq, ptr %.sroa.2138.0..sroa_idx.i.i.i, align 1, !noalias !9858
  store i8 %.sroa.443.i.sroa.5.0.copyload.i, ptr %.sroa.9151.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !9858
  store i8 %.sroa.443.i.sroa.6.0.copyload.i, ptr %.sroa.13152.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 1, !noalias !9858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15153.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15153.i, i64 6, i1 false), !noalias !9858
  store ptr %.sroa.443.i.sroa.8.0.copyload.i, ptr %.sroa.16154.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !9858
  store i64 %.sroa.778.0.copyload.i.i, ptr %.sroa.18155.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !9858
  store i64 %.sroa.879.0.copyload.i.i, ptr %.sroa.20156.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !9858
  store i8 %i.ko, ptr %i.bh, align 8, !noalias !9858
  %i.yw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862, !nonnull !41, !noundef !41 ; 4 uses
  %i.yx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862, !noundef !41 ; 8 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.yx ; 2 uses
  %i.yz = icmp samesign eq i64 %i.yx, 0
  br i1 %i.yz, label %.thread335.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.jh, %.lr.ph.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i32 [ %i.zj, %.lr.ph.i.i.i.i ], [ 0, %bb.jh ] ; 2 uses
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.zh, %.lr.ph.i.i.i.i ], [ 0, %bb.jh ]
  %.sroa.04.09.i.i.i.i = phi i64 [ %i.za, %.lr.ph.i.i.i.i ], [ 0, %bb.jh ] ; 2 uses
  %.sroa.07.08.i.i.i.i = phi ptr [ %i.zk, %.lr.ph.i.i.i.i ], [ %i.yw, %bb.jh ] ; 2 uses
  %i.za = add nuw i64 %.sroa.04.09.i.i.i.i, 1     ; 5 uses
  %i.zb = load i8, ptr %.sroa.07.08.i.i.i.i, align 1, !alias.scope !10047, !noalias !9860, !noundef !41 ; 2 uses
  %i.zc = and i8 %i.zb, 127
  %i.zd = zext nneg i8 %i.zc to i64
  %i.ze = and i32 %.sroa.0.011.i.i.i.i, 63
  %i.zf = zext nneg i32 %i.ze to i64
  %i.zg = shl i64 %i.zd, %i.zf
  %i.zh = or i64 %i.zg, %.sroa.02.010.i.i.i.i     ; 3 uses
  %i.zi = icmp sgt i8 %i.zb, -1
  %i.zj = add i32 %.sroa.0.011.i.i.i.i, 7
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i.i.i, i64 1 ; 2 uses
  %i.zl = icmp eq ptr %i.zk, %i.yy
  %or.cond.i.i.i.i = select i1 %i.zi, i1 true, i1 %i.zl
  br i1 %or.cond.i.i.i.i, label %bb.ji, label %.lr.ph.i.i.i.i

bb.ji:                                            ; preds = %.lr.ph.i.i.i.i
  store i64 %.sroa.7294.0.i.i.i, ptr %i.bg, align 8, !noalias !9858
  store i64 %i.zh, ptr %i.bf, align 8, !noalias !9858
  %i.zm = icmp eq i64 %.sroa.7294.0.i.i.i, %i.zh
  br i1 %i.zm, label %bb.jk, label %bb.jj, !prof !48

.thread335.i.i.i:                                 ; preds = %bb.jh
  store i64 %.sroa.7294.0.i.i.i, ptr %i.bg, align 8, !noalias !9858
  store i64 0, ptr %i.bf, align 8, !noalias !9858
  br i1 %i.jz, label %.thread513.i.i.i, label %bb.jj, !prof !48

bb.jj:                                            ; preds = %.thread335.i.i.i, %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !9858
  store ptr @2594, ptr %i.be, align 8, !noalias !9858
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 1, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !noalias !9858
  %.sroa.545.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !noalias !9858
  %.sroa.646.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.646.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !9858
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2595) #73
          to label %bb.bm unwind label %.loopexit.split-lp378.loopexit.split-lp.i.i.i, !noalias !9860

bb.jk:                                            ; preds = %bb.ji
  %.not372.i.i.i = icmp ult i64 %.sroa.04.09.i.i.i.i, %i.yx
  br i1 %.not372.i.i.i, label %.thread339.i.i.i, label %.invoke2125, !prof !99

.thread339.i.i.i:                                 ; preds = %bb.jk
  %i.zn = icmp eq i64 %i.yx, %i.za
  br i1 %i.zn, label %.thread513.i.i.i, label %.lr.ph.i208.preheader.i.i.i

.lr.ph.i208.preheader.i.i.i:                      ; preds = %.thread339.i.i.i
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.za
  br label %.lr.ph.i208.i.i.i

.thread513.i.i.i:                                 ; preds = %.thread339.i.i.i, %.thread335.i.i.i
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10048, !noalias !9862
  br label %bb.jp

.lr.ph.i208.i.i.i:                                ; preds = %.lr.ph.i208.i.i.i, %.lr.ph.i208.preheader.i.i.i
  %.sroa.0.011.i209.i.i.i = phi i32 [ %i.zy, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ] ; 2 uses
  %.sroa.02.010.i210.i.i.i = phi i64 [ %i.zw, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ]
  %.sroa.04.09.i211.i.i.i = phi i64 [ %i.zp, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ]
  %.sroa.07.08.i212.i.i.i = phi ptr [ %i.zz, %.lr.ph.i208.i.i.i ], [ %i.zo, %.lr.ph.i208.preheader.i.i.i ] ; 2 uses
  %i.zp = add nuw i64 %.sroa.04.09.i211.i.i.i, 1  ; 2 uses
  %i.zq = load i8, ptr %.sroa.07.08.i212.i.i.i, align 1, !alias.scope !10049, !noalias !9860, !noundef !41 ; 2 uses
  %i.zr = and i8 %i.zq, 127
  %i.zs = zext nneg i8 %i.zr to i64
  %i.zt = and i32 %.sroa.0.011.i209.i.i.i, 63
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = shl i64 %i.zs, %i.zu
  %i.zw = or i64 %i.zv, %.sroa.02.010.i210.i.i.i  ; 4 uses
  %i.zx = icmp sgt i8 %i.zq, -1
  %i.zy = add i32 %.sroa.0.011.i209.i.i.i, 7
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i212.i.i.i, i64 1 ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, %i.yy
  %or.cond.i213.i.i.i = select i1 %i.zx, i1 true, i1 %i.aaa
  br i1 %or.cond.i213.i.i.i, label %bb.jl, label %.lr.ph.i208.i.i.i

bb.jl:                                            ; preds = %.lr.ph.i208.i.i.i
  %i.aab = add i64 %i.zp, %i.za                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10050)
  %i.aac = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10048, !noalias !9862, !noundef !41 ; 6 uses
  %i.aad = icmp sgt i64 %i.aac, -1
  call void @llvm.assume(i1 %i.aad)
  %i.aae = icmp ugt i64 %i.zw, %i.aac
  br i1 %i.aae, label %bb.jm, label %bb.jo

bb.jm:                                            ; preds = %bb.jl
  %i.aaf = sub nuw i64 %i.zw, %i.aac              ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10051)
  %i.aag = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !range !43, !alias.scope !10052, !noalias !9862, !noundef !41
  %i.aah = sub nsw i64 %i.aag, %i.aac
  %i.aai = icmp ugt i64 %i.aaf, %i.aah
  br i1 %i.aai, label %bb.jn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i", !prof !44

bb.jn:                                            ; preds = %bb.jm
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 noundef %i.aac, i64 noundef %i.aaf, i64 noundef 1, i64 noundef 1)
          to label %.noexc217.i.i.i unwind label %.loopexit377.i.i.loopexit.i, !noalias !9860

.noexc217.i.i.i:                                  ; preds = %bb.jn
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10053, !noalias !9862
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i": ; preds = %.noexc217.i.i.i, %bb.jm
  %i.aaj = phi i64 [ %i.aac, %bb.jm ], [ %.pre.i.i.i.i.i, %.noexc217.i.i.i ] ; 4 uses
  %i.aak = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10053, !noalias !9862, !nonnull !41, !noundef !41 ; 2 uses
  %i.aal = icmp sgt i64 %i.aaj, -1
  call void @llvm.assume(i1 %i.aal)
  %i.aam = getelementptr i8, ptr %i.aak, i64 %i.aaj ; 2 uses
  %i.aan = icmp ugt i64 %i.aaf, 1
  br i1 %i.aan, label %._crit_edge.thread.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"
  %i.aao = add i64 %i.aaf, -1                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.aam, i8 0, i64 range(i64 0, -1) %i.aao, i1 false), !noalias !10054
  %i.aap = add i64 %i.aaj, %i.aao                 ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aak, i64 %i.aap
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.thread.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %i.aam, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  %storemerge.lcssa15.i.i.i.i.i = phi i64 [ %i.aap, %._crit_edge.thread.i.i.i.i.i ], [ %i.aaj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, align 1, !noalias !10054
  %i.aaq = add i64 %storemerge.lcssa15.i.i.i.i.i, 1
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862
  br label %bb.jo

bb.jo:                                            ; preds = %._crit_edge.i.i.i.i.i, %bb.jl
  %i.aar = phi i64 [ %i.yx, %bb.jl ], [ %.pre.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.aas = phi i64 [ %i.zw, %bb.jl ], [ %i.aaq, %._crit_edge.i.i.i.i.i ] ; 2 uses
  store i64 %i.aas, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10048, !noalias !9862
  %i.aat = icmp ugt i64 %i.aab, %i.aar
  br i1 %i.aat, label %.invoke2125, label %._crit_edge.i.i, !prof !100

._crit_edge.i.i:                                  ; preds = %bb.jo
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862
  br label %bb.jp

bb.jp:                                            ; preds = %._crit_edge.i.i, %.thread513.i.i.i
  %i.aau = phi ptr [ %i.yw, %.thread513.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i ]
  %i.aav = phi i64 [ 0, %.thread513.i.i.i ], [ %i.aas, %._crit_edge.i.i ]
  %i.aaw = phi i64 [ %i.yx, %.thread513.i.i.i ], [ %i.aab, %._crit_edge.i.i ] ; 2 uses
  %i.aax = phi i64 [ %i.yx, %.thread513.i.i.i ], [ %i.aar, %._crit_edge.i.i ]
  %i.aay = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862, !nonnull !41, !noundef !41
  %i.aaz = sub nuw i64 %i.aax, %i.aaw
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aaw
  %i.abb = invoke noundef i8 @_ZN8gix_pack4data5delta5apply17h4e78199f7a12413eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6291.0.i.i.i, i64 noundef %.sroa.7294.0.i.i.i, ptr noalias noundef nonnull align 1 %i.aay, i64 noundef %i.aav, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aba, i64 noundef %i.aaz)
          to label %bb.jq unwind label %.loopexit377.i.i.loopexit.i, !noalias !9860 ; 2 uses

.invoke2125:                                      ; preds = %bb.jo, %bb.jk
  %i.abc = phi i64 [ %i.za, %bb.jk ], [ %i.aab, %bb.jo ]
  %i.abd = phi i64 [ %i.yx, %bb.jk ], [ %i.aar, %bb.jo ] ; 2 uses
  %i.abe = phi ptr [ @2598, %bb.jk ], [ @2597, %bb.jo ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.abc, i64 noundef %i.abd, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abe) #73
          to label %.cont2126 unwind label %.loopexit.split-lp378.loopexit.split-lp.i.i.i, !noalias !9860

.cont2126:                                        ; preds = %.invoke2125
  unreachable

bb.jq:                                            ; preds = %bb.jp
  %.not158.i.i.i = icmp eq i8 %i.abb, 3
  br i1 %.not158.i.i.i, label %bb.jr, label %.loopexit240.i

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !9858
  %i.abf = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.abg = load i64, ptr %i.abf, align 8, !noalias !9860, !noundef !41
  %.not160.i.i.i = icmp eq i64 %i.abg, 0
  br i1 %.not160.i.i.i, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.abh = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.abi = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862, !nonnull !41, !noundef !41
  %i.abj = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862, !noundef !41
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.ax, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.abh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abi, i64 noundef %i.abj)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit219.i.i.i" unwind label %.loopexit377.i.i.loopexit.i, !noalias !9860

bb.jt:                                            ; preds = %bb.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !9858
  %i.abk = load i64, ptr %i.kh, align 8, !noalias !9860, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !9858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !noalias !9858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false), !noalias !9862
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !9861, !noalias !9862
  store i64 %i.kk, ptr %i.en, align 8, !noalias !9858
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb9221b1bd280e2bbE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bd, ptr noalias noundef align 8 dereferenceable(24) %i.bb, i64 noundef %i.abk, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bc)
          to label %bb.jy unwind label %.loopexit377.i.i.loopexit.i, !noalias !9860

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit219.i.i.i": ; preds = %bb.js
  %i.abl = load i8, ptr %i.ax, align 1, !range !47, !noalias !9858, !noundef !41
  %i.abm = trunc nuw i8 %i.abl to i1
  br i1 %i.abm, label %bb.ju, label %bb.jw

bb.ju:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit219.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !9860
  %i.abn = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !9860 ; 3 uses
  %i.abo = icmp eq ptr %i.abn, null
  br i1 %i.abo, label %.invoke, label %bb.jv, !prof !49

.invoke:                                          ; preds = %bb.ju, %bb.bo
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 20) #73
          to label %.cont unwind label %.loopexit.split-lp378.loopexit.split-lp.i.i.i, !noalias !9860

.cont:                                            ; preds = %.invoke
  unreachable

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.abn, ptr noundef nonnull align 1 dereferenceable(20) %i.ev, i64 20, i1 false), !noalias !9860
  br label %.loopexit240.i

bb.jw:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit219.i.i.i"
  %i.abp = load ptr, ptr %i.bo, align 8, !noalias !9858, !nonnull !41, !noundef !41
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  %i.abr = atomicrmw add ptr %i.abq, i64 1 monotonic, align 8, !noalias !9860 ; 0 uses
  %i.abs = load ptr, ptr %i.bn, align 8, !noalias !9858, !nonnull !41, !noundef !41
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.abu = atomicrmw add ptr %i.abt, i64 %.sroa.7294.0.i.i.i monotonic, align 8, !noalias !9860 ; 0 uses
  br label %bb.jx

bb.jx:                                            ; preds = %bb.kb, %bb.jw
  %i.abv = phi ptr [ %i.aca, %bb.kb ], [ %i.kb, %bb.jw ]
  %i.abw = phi i64 [ %i.acc, %bb.kb ], [ %i.kc, %bb.jw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !9858
  %i.abx = icmp eq ptr %.sroa.0139.1442.i.i.i, %i.jx ; 2 uses
  %.sroa.0139.1.idx.i.i.i = select i1 %i.abx, i64 0, i64 4
  %.sroa.0139.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0139.1442.i.i.i, i64 %.sroa.0139.1.idx.i.i.i
  br i1 %i.abx, label %.thread320.i.i.i, label %bb.br

.loopexit240.i:                                   ; preds = %bb.jq, %bb.jv
  %.sroa.15107.3.i = phi ptr [ %i.abn, %bb.jv ], [ undef, %bb.jq ]
  %.sroa.0.3.i = phi i8 [ 5, %bb.jv ], [ 9, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !9858
  br label %bb.je

bb.jy:                                            ; preds = %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !9858
  %.val183.i.i.i = load i64, ptr %i.ep, align 8, !range !64, !noalias !9858, !noundef !41 ; 2 uses
  %switch.i.i.i = icmp sgt i64 %.val183.i.i.i, 0
  br i1 %switch.i.i.i, label %bb.jz, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"

bb.jz:                                            ; preds = %bb.jy
  %.val184.i.i.i = load ptr, ptr %i.eq, align 8, !noalias !9858, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val184.i.i.i, i64 noundef %.val183.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !10055
  br label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"

"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i": ; preds = %bb.jz, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !9858
  %i.aby = load i64, ptr %i.ba, align 8, !range !43, !noalias !9858, !noundef !41
  %i.abz = icmp eq i64 %i.kc, %i.aby
  br i1 %i.abz, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h74d004bef66c2479E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2596)
          to label %._crit_edge.i.i.i unwind label %.loopexit377.i.i.loopexit.i, !noalias !9860

._crit_edge.i.i.i:                                ; preds = %bb.ka
  %.pre487.i.i.i = load ptr, ptr %i.ei, align 8, !noalias !9858
  br label %bb.kb

bb.kb:                                            ; preds = %._crit_edge.i.i.i, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"
  %i.aca = phi ptr [ %.pre487.i.i.i, %._crit_edge.i.i.i ], [ %i.kb, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i" ] ; 2 uses
  %i.acb = getelementptr inbounds nuw [24 x i8], ptr %i.aca, i64 %i.kc ; 3 uses
  store i16 %i.ka, ptr %i.acb, align 8, !noalias !10056
  %.sroa.4278.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  store ptr %i.kg, ptr %.sroa.4278.0..sroa_idx.i.i.i, align 8, !noalias !10056
  %.sroa.5279.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  store ptr %.sroa.6106.0.copyload.i.i.i, ptr %.sroa.5279.0..sroa_idx.i.i.i, align 8, !noalias !10056
  %i.acc = add i64 %i.kc, 1                       ; 2 uses
  store i64 %i.acc, ptr %i.ej, align 8, !noalias !9858
  br label %bb.jx

"_ZN4core3ptr152drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$17h00a2763a8fd5becbE.exit225.i.i.i": ; preds = %.thread313.thread.i.i.i, %.thread313.i.i.i, %bb.bi
  %.sroa.19.1.i = phi i64 [ %.sroa.19.0.i, %.thread313.thread.i.i.i ], [ %.sroa.19.3.i, %.thread313.i.i.i ], [ %.sroa.19.3.i, %bb.bi ] ; 4 uses
  %.sroa.17.1.i = phi ptr [ %.sroa.17.0.i, %.thread313.thread.i.i.i ], [ %.sroa.17.4.i, %.thread313.i.i.i ], [ %.sroa.17.4.i, %bb.bi ] ; 4 uses
  %.sroa.15107.1.i = phi ptr [ %.sroa.15107.0.i, %.thread313.thread.i.i.i ], [ %.sroa.15107.4.i, %.thread313.i.i.i ], [ %.sroa.15107.4.i, %bb.bi ] ; 4 uses
  %.sroa.14.1.i = phi i8 [ %.sroa.14.0.i, %.thread313.thread.i.i.i ], [ %.sroa.14.4.i, %.thread313.i.i.i ], [ %.sroa.14.4.i, %bb.bi ] ; 4 uses
  %.sroa.0.1.i = phi i8 [ %.sroa.0.0.i, %.thread313.thread.i.i.i ], [ %.sroa.0.4.i, %.thread313.i.i.i ], [ %.sroa.0.4.i, %bb.bi ] ; 4 uses
  %.sroa.79.i.sroa.4.1.i.i.i173.i = phi i64 [ %.sroa.79.i.sroa.4.1.i.i.i165.i, %.thread313.thread.i.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i174.i, %.thread313.i.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i174.i, %bb.bi ] ; 4 uses
  %i.acd = phi i1 [ true, %.thread313.thread.i.i.i ], [ true, %.thread313.i.i.i ], [ false, %bb.bi ] ; 2 uses
  %cond.i.i.i = phi i1 [ false, %.thread313.thread.i.i.i ], [ false, %.thread313.i.i.i ], [ true, %bb.bi ]
  %.sroa.086.2315.i.i.i = phi i8 [ 1, %.thread313.thread.i.i.i ], [ 1, %.thread313.i.i.i ], [ 0, %bb.bi ] ; 3 uses
  invoke void @"_ZN72_$LT$gix_features..zlib..Decompress$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08252a01564bc750E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bl)
          to label %"_ZN4core3ptr48drop_in_place$LT$gix_features..zlib..Inflate$GT$17h25dce0b86e338063E.exit224.i.i.i" unwind label %bb.al, !noalias !9860

.thread313.i.i.i:                                 ; preds = %bb.bi
  %.val176.pre.i.i.i = load i64, ptr %i.ba, align 8, !noalias !9858 ; 2 uses
  %i.ace = icmp eq i64 %.val176.pre.i.i.i, 0
  br i1 %i.ace, label %"_ZN4core3ptr152drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$17h00a2763a8fd5becbE.exit225.i.i.i", label %.thread313.i..thread313.thread.i_crit_edge.i.i

.thread313.i..thread313.thread.i_crit_edge.i.i:   ; preds = %.thread313.i.i.i
  %.val177.i.pre.i.i = load ptr, ptr %i.ei, align 8, !noalias !9858
  br label %.thread313.thread.i.i.i

.thread313.thread.i.i.i:                          ; preds = %bb.as, %.thread313.i..thread313.thread.i_crit_edge.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i"
  %.sroa.19.0.i = phi i64 [ %.sroa.20.3.ph1597.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.19.3.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ undef, %bb.as ]
  %.sroa.17.0.i = phi ptr [ %i.jf, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.17.4.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ undef, %bb.as ]
  %.sroa.15107.0.i = phi ptr [ %.sroa.16.3.ph1598.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.15107.4.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ undef, %bb.as ]
  %.sroa.14.0.i = phi i8 [ %.sroa.13.3.ph1599.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.14.4.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ undef, %bb.as ]
  %.sroa.0.0.i = phi i8 [ %.sroa.9146.1.ph1600.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.0.4.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ 6, %bb.as ]
  %.sroa.79.i.sroa.4.1.i.i.i165.i = phi i64 [ %.sroa.79.i.sroa.4.1.i.i.i171.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.79.i.sroa.4.1.i.i.i174.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i171.i, %bb.as ]
  %.val177.i.i.i = phi ptr [ %i.ic, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.val177.i.pre.i.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ %i.ic, %bb.as ]
  %.val176515.i.i.i = phi i64 [ %i.ia, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.val176.pre.i.i.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ %i.ia, %bb.as ]
  %i.acf = mul nuw i64 %.val176515.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val177.i.i.i, i64 noundef %i.acf, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !9860
  br label %"_ZN4core3ptr152drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$17h00a2763a8fd5becbE.exit225.i.i.i"

"_ZN4core3ptr48drop_in_place$LT$gix_features..zlib..Inflate$GT$17h25dce0b86e338063E.exit224.i.i.i": ; preds = %"_ZN4core3ptr152drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$17h00a2763a8fd5becbE.exit225.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !9858
  br i1 %i.acd, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %"_ZN4core3ptr138drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h935e1f8fafc01a3aE.exit.i.i.i", %"_ZN4core3ptr48drop_in_place$LT$gix_features..zlib..Inflate$GT$17h25dce0b86e338063E.exit224.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !9858
  br i1 %cond.i.i.i, label %bb.lf, label %bb.kr
end_hunk_0
begin_hunk_1_@"_ZN12gix_features8parallel11in_parallel22in_parallel_with_slice28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd6064f9972f10755E":bb.a

bb.jb:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i unwind label %bb.ci, !noalias !10646

bb.jc:                                            ; preds = %bb.jd, %bb.iz, %.body.i.i.i
  %i.yp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !10803
  unreachable

"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i": ; preds = %bb.iw, %bb.iv
  call void @llvm.experimental.noalias.scope.decl(metadata !10833)
  call void @llvm.experimental.noalias.scope.decl(metadata !10834)
  %i.yq = load ptr, ptr %i.ar, align 8, !alias.scope !10835, !noalias !10676, !nonnull !41, !noundef !41
  %i.yr = atomicrmw sub ptr %i.yq, i64 1 release, align 8, !noalias !10836
  %i.ys = icmp eq i64 %i.yr, 1
  br i1 %i.ys, label %bb.jd, label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i"

bb.jd:                                            ; preds = %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i" unwind label %bb.jc, !noalias !10803

_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i: ; preds = %bb.jb, %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !10648
  br label %bb.je

bb.je:                                            ; preds = %.loopexit239.i, %bb.jg, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i, %bb.bp
  %.sroa.19.3.i = phi i64 [ undef, %bb.bp ], [ %.sroa.79.i.sroa.4.1.i.i.i174.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.20155.4.ph.i, %bb.jg ], [ undef, %.loopexit239.i ] ; 3 uses
  %.sroa.17.4.i = phi ptr [ @2591, %bb.bp ], [ %i.wu, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %i.yv, %bb.jg ], [ @2591, %.loopexit239.i ] ; 3 uses
  %.sroa.15106.4.i = phi ptr [ %i.jk, %bb.bp ], [ %i.wv, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.16153.4.ph.i, %bb.jg ], [ %.sroa.15106.3.i, %.loopexit239.i ] ; 3 uses
  %.sroa.14.4.i = phi i8 [ undef, %bb.bp ], [ %.sroa.14.0.copyload98.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.13151.4.ph.i, %bb.jg ], [ %i.abb, %.loopexit239.i ] ; 3 uses
  %.sroa.0.4.i = phi i8 [ 5, %bb.bp ], [ %i.xb, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.9150.1.ph.i, %bb.jg ], [ %.sroa.0.3.i, %.loopexit239.i ] ; 3 uses
  %.sroa.79.i.sroa.4.1.i.i.i173.i = phi i64 [ %.sroa.79.i.sroa.4.1.i.i.i170.i, %bb.bp ], [ %.sroa.79.i.sroa.4.1.i.i.i174.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i170.i, %bb.jg ], [ %.sroa.79.i.sroa.4.1.i.i.i170.i, %.loopexit239.i ] ; 3 uses
  %.sroa.086.4.i.i.i = phi i1 [ true, %bb.bp ], [ false, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ true, %bb.jg ], [ true, %.loopexit239.i ]
  %i.yt = icmp eq i64 %.sroa.0289.0.i.i.i, 0
  br i1 %i.yt, label %bb.bi, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6291.0.i.i.i, i64 noundef %.sroa.0289.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !10837
  br label %bb.bi

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit194.i.i.i": ; preds = %bb.ce, %.thread324.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !10649
  %.pr.i.i.i = load i64, ptr %i.ej, align 8, !noalias !10649 ; 2 uses
  %i.yu = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.yu, label %.thread.i.i.i, label %bb.aq

bb.jg:                                            ; preds = %bb.ca, %bb.bu
  %.sroa.20155.4.ph.i = phi i64 [ %.sroa.20155.3.i, %bb.ca ], [ %.sroa.20155.1.i, %bb.bu ]
  %.sroa.18154.4.ph.i = phi i64 [ %.sroa.18154.3.i, %bb.ca ], [ %.sroa.18154.1.i, %bb.bu ]
  %.sroa.16153.4.ph.i = phi ptr [ %.sroa.16153.3.i, %bb.ca ], [ %i.kr, %bb.bu ]
  %.sroa.13151.4.ph.i = phi i8 [ %.sroa.13151.3.i, %bb.ca ], [ %.sroa.13151.1.i, %bb.bu ]
  %.sroa.9150.1.ph.i = phi i8 [ %.sroa.9150.0.i, %bb.ca ], [ 3, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15152.i, i64 6, i1 false), !noalias !10658
  %i.yv = inttoptr i64 %.sroa.18154.4.ph.i to ptr
  br label %bb.je

bb.jh:                                            ; preds = %.noexc61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !10649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8149.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.443.i.sroa.0.i, i64 6, i1 false), !noalias !10664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15152.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.443.i.sroa.7.i, i64 6, i1 false), !noalias !10668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10667
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.7.i)
  store i8 %i.kq, ptr %.sroa.2138.0..sroa_idx.i.i.i, align 1, !noalias !10649
  store i8 %.sroa.443.i.sroa.5.0.copyload.i, ptr %.sroa.9150.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !10649
  store i8 %.sroa.443.i.sroa.6.0.copyload.i, ptr %.sroa.13151.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 1, !noalias !10649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15152.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15152.i, i64 6, i1 false), !noalias !10649
  store ptr %.sroa.443.i.sroa.8.0.copyload.i, ptr %.sroa.16153.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !10649
  store i64 %.sroa.778.0.copyload.i.i, ptr %.sroa.18154.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !10649
  store i64 %.sroa.879.0.copyload.i.i, ptr %.sroa.20155.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !10649
  store i8 %i.ko, ptr %i.bh, align 8, !noalias !10649
  %i.yw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653, !nonnull !41, !noundef !41 ; 4 uses
  %i.yx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653, !noundef !41 ; 8 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.yx ; 2 uses
  %i.yz = icmp samesign eq i64 %i.yx, 0
  br i1 %i.yz, label %.thread335.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.jh, %.lr.ph.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i32 [ %i.zj, %.lr.ph.i.i.i.i ], [ 0, %bb.jh ] ; 2 uses
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.zh, %.lr.ph.i.i.i.i ], [ 0, %bb.jh ]
  %.sroa.04.09.i.i.i.i = phi i64 [ %i.za, %.lr.ph.i.i.i.i ], [ 0, %bb.jh ] ; 2 uses
  %.sroa.07.08.i.i.i.i = phi ptr [ %i.zk, %.lr.ph.i.i.i.i ], [ %i.yw, %bb.jh ] ; 2 uses
  %i.za = add nuw i64 %.sroa.04.09.i.i.i.i, 1     ; 5 uses
  %i.zb = load i8, ptr %.sroa.07.08.i.i.i.i, align 1, !alias.scope !10838, !noalias !10651, !noundef !41 ; 2 uses
  %i.zc = and i8 %i.zb, 127
  %i.zd = zext nneg i8 %i.zc to i64
  %i.ze = and i32 %.sroa.0.011.i.i.i.i, 63
  %i.zf = zext nneg i32 %i.ze to i64
  %i.zg = shl i64 %i.zd, %i.zf
  %i.zh = or i64 %i.zg, %.sroa.02.010.i.i.i.i     ; 3 uses
  %i.zi = icmp sgt i8 %i.zb, -1
  %i.zj = add i32 %.sroa.0.011.i.i.i.i, 7
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i.i.i, i64 1 ; 2 uses
  %i.zl = icmp eq ptr %i.zk, %i.yy
  %or.cond.i.i.i.i = select i1 %i.zi, i1 true, i1 %i.zl
  br i1 %or.cond.i.i.i.i, label %bb.ji, label %.lr.ph.i.i.i.i

bb.ji:                                            ; preds = %.lr.ph.i.i.i.i
  store i64 %.sroa.7294.0.i.i.i, ptr %i.bg, align 8, !noalias !10649
  store i64 %i.zh, ptr %i.bf, align 8, !noalias !10649
  %i.zm = icmp eq i64 %.sroa.7294.0.i.i.i, %i.zh
  br i1 %i.zm, label %bb.jk, label %bb.jj, !prof !48

.thread335.i.i.i:                                 ; preds = %bb.jh
  store i64 %.sroa.7294.0.i.i.i, ptr %i.bg, align 8, !noalias !10649
  store i64 0, ptr %i.bf, align 8, !noalias !10649
  br i1 %i.jz, label %.thread513.i.i.i, label %bb.jj, !prof !48

bb.jj:                                            ; preds = %.thread335.i.i.i, %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !10649
  store ptr @2594, ptr %i.be, align 8, !noalias !10649
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 1, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !noalias !10649
  %.sroa.545.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !noalias !10649
  %.sroa.646.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.646.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !10649
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2595) #73
          to label %bb.bm unwind label %.loopexit.split-lp378.loopexit.split-lp.i.i.i, !noalias !10651

bb.jk:                                            ; preds = %bb.ji
  %.not372.i.i.i = icmp ult i64 %.sroa.04.09.i.i.i.i, %i.yx
  br i1 %.not372.i.i.i, label %.thread339.i.i.i, label %.invoke2125, !prof !99

.thread339.i.i.i:                                 ; preds = %bb.jk
  %i.zn = icmp eq i64 %i.yx, %i.za
  br i1 %i.zn, label %.thread513.i.i.i, label %.lr.ph.i208.preheader.i.i.i

.lr.ph.i208.preheader.i.i.i:                      ; preds = %.thread339.i.i.i
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.za
  br label %.lr.ph.i208.i.i.i

.thread513.i.i.i:                                 ; preds = %.thread339.i.i.i, %.thread335.i.i.i
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10839, !noalias !10653
  br label %bb.jp

.lr.ph.i208.i.i.i:                                ; preds = %.lr.ph.i208.i.i.i, %.lr.ph.i208.preheader.i.i.i
  %.sroa.0.011.i209.i.i.i = phi i32 [ %i.zy, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ] ; 2 uses
  %.sroa.02.010.i210.i.i.i = phi i64 [ %i.zw, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ]
  %.sroa.04.09.i211.i.i.i = phi i64 [ %i.zp, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ]
  %.sroa.07.08.i212.i.i.i = phi ptr [ %i.zz, %.lr.ph.i208.i.i.i ], [ %i.zo, %.lr.ph.i208.preheader.i.i.i ] ; 2 uses
  %i.zp = add nuw i64 %.sroa.04.09.i211.i.i.i, 1  ; 2 uses
  %i.zq = load i8, ptr %.sroa.07.08.i212.i.i.i, align 1, !alias.scope !10840, !noalias !10651, !noundef !41 ; 2 uses
  %i.zr = and i8 %i.zq, 127
  %i.zs = zext nneg i8 %i.zr to i64
  %i.zt = and i32 %.sroa.0.011.i209.i.i.i, 63
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = shl i64 %i.zs, %i.zu
  %i.zw = or i64 %i.zv, %.sroa.02.010.i210.i.i.i  ; 4 uses
  %i.zx = icmp sgt i8 %i.zq, -1
  %i.zy = add i32 %.sroa.0.011.i209.i.i.i, 7
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i212.i.i.i, i64 1 ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, %i.yy
  %or.cond.i213.i.i.i = select i1 %i.zx, i1 true, i1 %i.aaa
  br i1 %or.cond.i213.i.i.i, label %bb.jl, label %.lr.ph.i208.i.i.i

bb.jl:                                            ; preds = %.lr.ph.i208.i.i.i
  %i.aab = add i64 %i.zp, %i.za                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10841)
  %i.aac = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10839, !noalias !10653, !noundef !41 ; 6 uses
  %i.aad = icmp sgt i64 %i.aac, -1
  call void @llvm.assume(i1 %i.aad)
  %i.aae = icmp ugt i64 %i.zw, %i.aac
  br i1 %i.aae, label %bb.jm, label %bb.jo

bb.jm:                                            ; preds = %bb.jl
  %i.aaf = sub nuw i64 %i.zw, %i.aac              ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10842)
  %i.aag = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !range !43, !alias.scope !10843, !noalias !10653, !noundef !41
  %i.aah = sub nsw i64 %i.aag, %i.aac
  %i.aai = icmp ugt i64 %i.aaf, %i.aah
  br i1 %i.aai, label %bb.jn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i", !prof !44

bb.jn:                                            ; preds = %bb.jm
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 noundef %i.aac, i64 noundef %i.aaf, i64 noundef 1, i64 noundef 1)
          to label %.noexc217.i.i.i unwind label %.loopexit377.i.i.loopexit.i, !noalias !10651

.noexc217.i.i.i:                                  ; preds = %bb.jn
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10844, !noalias !10653
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i": ; preds = %.noexc217.i.i.i, %bb.jm
  %i.aaj = phi i64 [ %i.aac, %bb.jm ], [ %.pre.i.i.i.i.i, %.noexc217.i.i.i ] ; 4 uses
  %i.aak = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10844, !noalias !10653, !nonnull !41, !noundef !41 ; 2 uses
  %i.aal = icmp sgt i64 %i.aaj, -1
  call void @llvm.assume(i1 %i.aal)
  %i.aam = getelementptr i8, ptr %i.aak, i64 %i.aaj ; 2 uses
  %i.aan = icmp ugt i64 %i.aaf, 1
  br i1 %i.aan, label %._crit_edge.thread.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"
  %i.aao = add i64 %i.aaf, -1                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.aam, i8 0, i64 range(i64 0, -1) %i.aao, i1 false), !noalias !10845
  %i.aap = add i64 %i.aaj, %i.aao                 ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aak, i64 %i.aap
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.thread.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %i.aam, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  %storemerge.lcssa15.i.i.i.i.i = phi i64 [ %i.aap, %._crit_edge.thread.i.i.i.i.i ], [ %i.aaj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, align 1, !noalias !10845
  %i.aaq = add i64 %storemerge.lcssa15.i.i.i.i.i, 1
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653
  br label %bb.jo

bb.jo:                                            ; preds = %._crit_edge.i.i.i.i.i, %bb.jl
  %i.aar = phi i64 [ %i.yx, %bb.jl ], [ %.pre.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.aas = phi i64 [ %i.zw, %bb.jl ], [ %i.aaq, %._crit_edge.i.i.i.i.i ] ; 2 uses
  store i64 %i.aas, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10839, !noalias !10653
  %i.aat = icmp ugt i64 %i.aab, %i.aar
  br i1 %i.aat, label %.invoke2125, label %._crit_edge.i.i, !prof !100

._crit_edge.i.i:                                  ; preds = %bb.jo
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653
  br label %bb.jp

bb.jp:                                            ; preds = %._crit_edge.i.i, %.thread513.i.i.i
  %i.aau = phi ptr [ %i.yw, %.thread513.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i ]
  %i.aav = phi i64 [ 0, %.thread513.i.i.i ], [ %i.aas, %._crit_edge.i.i ]
  %i.aaw = phi i64 [ %i.yx, %.thread513.i.i.i ], [ %i.aab, %._crit_edge.i.i ] ; 2 uses
  %i.aax = phi i64 [ %i.yx, %.thread513.i.i.i ], [ %i.aar, %._crit_edge.i.i ]
  %i.aay = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653, !nonnull !41, !noundef !41
  %i.aaz = sub nuw i64 %i.aax, %i.aaw
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aaw
  %i.abb = invoke noundef i8 @_ZN8gix_pack4data5delta5apply17h4e78199f7a12413eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6291.0.i.i.i, i64 noundef %.sroa.7294.0.i.i.i, ptr noalias noundef nonnull align 1 %i.aay, i64 noundef %i.aav, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aba, i64 noundef %i.aaz)
          to label %bb.jq unwind label %.loopexit377.i.i.loopexit.i, !noalias !10651 ; 2 uses

.invoke2125:                                      ; preds = %bb.jo, %bb.jk
  %i.abc = phi i64 [ %i.za, %bb.jk ], [ %i.aab, %bb.jo ]
  %i.abd = phi i64 [ %i.yx, %bb.jk ], [ %i.aar, %bb.jo ] ; 2 uses
  %i.abe = phi ptr [ @2598, %bb.jk ], [ @2597, %bb.jo ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.abc, i64 noundef %i.abd, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abe) #73
          to label %.cont2126 unwind label %.loopexit.split-lp378.loopexit.split-lp.i.i.i, !noalias !10651

.cont2126:                                        ; preds = %.invoke2125
  unreachable

bb.jq:                                            ; preds = %bb.jp
  %.not158.i.i.i = icmp eq i8 %i.abb, 3
  br i1 %.not158.i.i.i, label %bb.jr, label %.loopexit239.i

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !10649
  %i.abf = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.abg = load i64, ptr %i.abf, align 8, !noalias !10651, !noundef !41
  %.not160.i.i.i = icmp eq i64 %i.abg, 0
  br i1 %.not160.i.i.i, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.abh = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.abi = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653, !nonnull !41, !noundef !41
  %i.abj = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653, !noundef !41
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.ax, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.abh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abi, i64 noundef %i.abj)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit219.i.i.i" unwind label %.loopexit377.i.i.loopexit.i, !noalias !10651

bb.jt:                                            ; preds = %bb.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !10649
  %i.abk = load i64, ptr %i.kh, align 8, !noalias !10651, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !10649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !noalias !10649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false), !noalias !10653
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10652, !noalias !10653
  store i64 %i.kk, ptr %i.en, align 8, !noalias !10649
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb9221b1bd280e2bbE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bd, ptr noalias noundef align 8 dereferenceable(24) %i.bb, i64 noundef %i.abk, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bc)
          to label %bb.jy unwind label %.loopexit377.i.i.loopexit.i, !noalias !10651

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit219.i.i.i": ; preds = %bb.js
  %i.abl = load i8, ptr %i.ax, align 1, !range !47, !noalias !10649, !noundef !41
  %i.abm = trunc nuw i8 %i.abl to i1
  br i1 %i.abm, label %bb.ju, label %bb.jw

bb.ju:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit219.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !10651
  %i.abn = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !10651 ; 3 uses
  %i.abo = icmp eq ptr %i.abn, null
  br i1 %i.abo, label %.invoke, label %bb.jv, !prof !49

.invoke:                                          ; preds = %bb.ju, %bb.bo
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 20) #73
          to label %.cont unwind label %.loopexit.split-lp378.loopexit.split-lp.i.i.i, !noalias !10651

.cont:                                            ; preds = %.invoke
  unreachable

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.abn, ptr noundef nonnull align 1 dereferenceable(20) %i.ev, i64 20, i1 false), !noalias !10651
  br label %.loopexit239.i

bb.jw:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit219.i.i.i"
  %i.abp = load ptr, ptr %i.bo, align 8, !noalias !10649, !nonnull !41, !noundef !41
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  %i.abr = atomicrmw add ptr %i.abq, i64 1 monotonic, align 8, !noalias !10651 ; 0 uses
  %i.abs = load ptr, ptr %i.bn, align 8, !noalias !10649, !nonnull !41, !noundef !41
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.abu = atomicrmw add ptr %i.abt, i64 %.sroa.7294.0.i.i.i monotonic, align 8, !noalias !10651 ; 0 uses
  br label %bb.jx

bb.jx:                                            ; preds = %bb.kb, %bb.jw
  %i.abv = phi ptr [ %i.aca, %bb.kb ], [ %i.kb, %bb.jw ]
  %i.abw = phi i64 [ %i.acc, %bb.kb ], [ %i.kc, %bb.jw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !10649
  %i.abx = icmp eq ptr %.sroa.0139.1442.i.i.i, %i.jx ; 2 uses
  %.sroa.0139.1.idx.i.i.i = select i1 %i.abx, i64 0, i64 4
  %.sroa.0139.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0139.1442.i.i.i, i64 %.sroa.0139.1.idx.i.i.i
  br i1 %i.abx, label %.thread320.i.i.i, label %bb.br

.loopexit239.i:                                   ; preds = %bb.jq, %bb.jv
  %.sroa.15106.3.i = phi ptr [ %i.abn, %bb.jv ], [ undef, %bb.jq ]
  %.sroa.0.3.i = phi i8 [ 5, %bb.jv ], [ 9, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !10649
  br label %bb.je

bb.jy:                                            ; preds = %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !10649
  %.val184.i.i.i = load i64, ptr %i.ep, align 8, !range !64, !noalias !10649, !noundef !41 ; 2 uses
  %switch.i.i.i = icmp sgt i64 %.val184.i.i.i, 0
  br i1 %switch.i.i.i, label %bb.jz, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"

bb.jz:                                            ; preds = %bb.jy
  %.val185.i.i.i = load ptr, ptr %i.eq, align 8, !noalias !10649, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val185.i.i.i, i64 noundef %.val184.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !10846
  br label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"

"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i": ; preds = %bb.jz, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !10649
  %i.aby = load i64, ptr %i.ba, align 8, !range !43, !noalias !10649, !noundef !41
  %i.abz = icmp eq i64 %i.kc, %i.aby
  br i1 %i.abz, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h74d004bef66c2479E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2596)
          to label %._crit_edge.i.i.i unwind label %.loopexit377.i.i.loopexit.i, !noalias !10651

._crit_edge.i.i.i:                                ; preds = %bb.ka
  %.pre487.i.i.i = load ptr, ptr %i.ei, align 8, !noalias !10649
  br label %bb.kb

bb.kb:                                            ; preds = %._crit_edge.i.i.i, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"
  %i.aca = phi ptr [ %.pre487.i.i.i, %._crit_edge.i.i.i ], [ %i.kb, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i" ] ; 2 uses
  %i.acb = getelementptr inbounds nuw [24 x i8], ptr %i.aca, i64 %i.kc ; 3 uses
  store i16 %i.ka, ptr %i.acb, align 8, !noalias !10847
  %.sroa.4278.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  store ptr %i.kg, ptr %.sroa.4278.0..sroa_idx.i.i.i, align 8, !noalias !10847
  %.sroa.5279.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  store ptr %.sroa.6106.0.copyload.i.i.i, ptr %.sroa.5279.0..sroa_idx.i.i.i, align 8, !noalias !10847
  %i.acc = add i64 %i.kc, 1                       ; 2 uses
  store i64 %i.acc, ptr %i.ej, align 8, !noalias !10649
  br label %bb.jx

"_ZN4core3ptr152drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$17h00a2763a8fd5becbE.exit225.i.i.i": ; preds = %.thread313.thread.i.i.i, %.thread313.i.i.i, %bb.bi
  %.sroa.19.1.i = phi i64 [ %.sroa.19.0.i, %.thread313.thread.i.i.i ], [ %.sroa.19.3.i, %.thread313.i.i.i ], [ %.sroa.19.3.i, %bb.bi ] ; 4 uses
  %.sroa.17.1.i = phi ptr [ %.sroa.17.0.i, %.thread313.thread.i.i.i ], [ %.sroa.17.4.i, %.thread313.i.i.i ], [ %.sroa.17.4.i, %bb.bi ] ; 4 uses
  %.sroa.15106.1.i = phi ptr [ %.sroa.15106.0.i, %.thread313.thread.i.i.i ], [ %.sroa.15106.4.i, %.thread313.i.i.i ], [ %.sroa.15106.4.i, %bb.bi ] ; 4 uses
  %.sroa.14.1.i = phi i8 [ %.sroa.14.0.i, %.thread313.thread.i.i.i ], [ %.sroa.14.4.i, %.thread313.i.i.i ], [ %.sroa.14.4.i, %bb.bi ] ; 4 uses
  %.sroa.0.1.i = phi i8 [ %.sroa.0.0.i, %.thread313.thread.i.i.i ], [ %.sroa.0.4.i, %.thread313.i.i.i ], [ %.sroa.0.4.i, %bb.bi ] ; 4 uses
  %.sroa.79.i.sroa.4.1.i.i.i172.i = phi i64 [ %.sroa.79.i.sroa.4.1.i.i.i164.i, %.thread313.thread.i.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i173.i, %.thread313.i.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i173.i, %bb.bi ] ; 4 uses
  %i.acd = phi i1 [ true, %.thread313.thread.i.i.i ], [ true, %.thread313.i.i.i ], [ false, %bb.bi ] ; 2 uses
  %cond.i.i.i = phi i1 [ false, %.thread313.thread.i.i.i ], [ false, %.thread313.i.i.i ], [ true, %bb.bi ]
  %.sroa.086.2315.i.i.i = phi i8 [ 1, %.thread313.thread.i.i.i ], [ 1, %.thread313.i.i.i ], [ 0, %bb.bi ] ; 3 uses
  invoke void @"_ZN72_$LT$gix_features..zlib..Decompress$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08252a01564bc750E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bl)
          to label %"_ZN4core3ptr48drop_in_place$LT$gix_features..zlib..Inflate$GT$17h25dce0b86e338063E.exit224.i.i.i" unwind label %bb.al, !noalias !10651

.thread313.i.i.i:                                 ; preds = %bb.bi
  %.val177.pre.i.i.i = load i64, ptr %i.ba, align 8, !noalias !10649 ; 2 uses
  %i.ace = icmp eq i64 %.val177.pre.i.i.i, 0
  br i1 %i.ace, label %"_ZN4core3ptr152drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$17h00a2763a8fd5becbE.exit225.i.i.i", label %.thread313.i..thread313.thread.i_crit_edge.i.i

.thread313.i..thread313.thread.i_crit_edge.i.i:   ; preds = %.thread313.i.i.i
  %.val178.i.pre.i.i = load ptr, ptr %i.ei, align 8, !noalias !10649
  br label %.thread313.thread.i.i.i

.thread313.thread.i.i.i:                          ; preds = %bb.as, %.thread313.i..thread313.thread.i_crit_edge.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i"
  %.sroa.19.0.i = phi i64 [ %.sroa.20.3.ph1596.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.19.3.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ undef, %bb.as ]
  %.sroa.17.0.i = phi ptr [ %i.jf, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.17.4.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ undef, %bb.as ]
  %.sroa.15106.0.i = phi ptr [ %.sroa.16.3.ph1597.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.15106.4.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ undef, %bb.as ]
  %.sroa.14.0.i = phi i8 [ %.sroa.13.3.ph1598.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.14.4.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ undef, %bb.as ]
  %.sroa.0.0.i = phi i8 [ %.sroa.9145.1.ph1599.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.0.4.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ 6, %bb.as ]
  %.sroa.79.i.sroa.4.1.i.i.i164.i = phi i64 [ %.sroa.79.i.sroa.4.1.i.i.i170.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.sroa.79.i.sroa.4.1.i.i.i173.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i170.i, %bb.as ]
  %.val178.i.i.i = phi ptr [ %i.ic, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.val178.i.pre.i.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ %i.ic, %bb.as ]
  %.val177515.i.i.i = phi i64 [ %i.ia, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit188.i.i.i" ], [ %.val177.pre.i.i.i, %.thread313.i..thread313.thread.i_crit_edge.i.i ], [ %i.ia, %bb.as ]
  %i.acf = mul nuw i64 %.val177515.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val178.i.i.i, i64 noundef %i.acf, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !10651
  br label %"_ZN4core3ptr152drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$17h00a2763a8fd5becbE.exit225.i.i.i"

"_ZN4core3ptr48drop_in_place$LT$gix_features..zlib..Inflate$GT$17h25dce0b86e338063E.exit224.i.i.i": ; preds = %"_ZN4core3ptr152drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$17h00a2763a8fd5becbE.exit225.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !10649
  br i1 %i.acd, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %"_ZN4core3ptr138drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h935e1f8fafc01a3aE.exit.i.i.i", %"_ZN4core3ptr48drop_in_place$LT$gix_features..zlib..Inflate$GT$17h25dce0b86e338063E.exit224.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !10649
  br i1 %cond.i.i.i, label %bb.lf, label %bb.kr
end_hunk_1
begin_hunk_2_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha48248ed44717187E:bb.a
bb.al:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit.i"
  %i.cw = load ptr, ptr %i.ak, align 8, !alias.scope !45522, !noalias !45521, !nonnull !41, !align !42, !noundef !41
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !45521, !nonnull !41, !noundef !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = atomicrmw add ptr %i.cy, i64 1 monotonic, align 8, !noalias !45521 ; 0 uses
  %i.da = load ptr, ptr %i.al, align 8, !alias.scope !45522, !noalias !45521, !nonnull !41, !align !42, !noundef !41
  %i.db = load ptr, ptr %i.da, align 8, !noalias !45521, !nonnull !41, !noundef !41
  %i.dc = icmp sgt i64 %.sroa.7244.0.i, -1
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = atomicrmw add ptr %i.dd, i64 %.sroa.7244.0.i monotonic, align 8, !noalias !45521 ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !45521, !nonnull !41, !noundef !41 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !45521, !noundef !41 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.di, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i
  %i.dk = icmp eq i64 %i.di, 0
  br i1 %i.dk, label %.thread260.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al
  %.sroa.099.1377.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dl = icmp eq i64 %.sroa.7244.0.i, 0
  %i.dm = add i16 %.sroa.063.0.copyload.i, 1
  br label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i", %.lr.ph.i
  %i.dn = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 2 uses
  %i.do = phi ptr [ %.val1.i155.i, %.lr.ph.i ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 3 uses
  %i.dp = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.hh, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 8 uses
  %.sroa.099.1379.i = phi ptr [ %.sroa.099.1377.i, %.lr.ph.i ], [ %.sroa.099.1.i, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 3 uses
  %.sroa.099.0378.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %.sroa.099.1379.i, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ]
  %i.dq = load i32, ptr %.sroa.099.0378.i, align 4, !noalias !45521, !noundef !41
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %.sroa.666.0.copyload.i, align 8, !noalias !45521, !noundef !41 ; 2 uses
  %i.dt = getelementptr inbounds nuw [64 x i8], ptr %i.ds, i64 %i.dr ; 5 uses
  %.not116.i = icmp eq ptr %i.ds, null
  br i1 %.not116.i, label %.thread260.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !noalias !45521, !noundef !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !45521, !noundef !41
  invoke fastcc void @"_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h788bb0b6557cd9bcE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.o, i64 noundef %i.dv, i64 noundef %i.dx, ptr noalias noundef align 8 dereferenceable(24) %i.q)
          to label %bb.ap unwind label %.loopexit.i, !noalias !45521

.thread260.i:                                     ; preds = %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i", %bb.am, %bb.al
  %i.dy = phi ptr [ %i.aq, %bb.al ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.dn, %bb.am ]
  %i.dz = phi ptr [ %.val1.i155.i, %bb.al ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.do, %bb.am ]
  %i.ea = phi i64 [ %i.ar, %bb.al ], [ %i.hh, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.dp, %bb.am ]
  %i.eb = icmp eq i64 %.sroa.0239.0.i, 0
  br i1 %i.eb, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i", label %bb.ao

bb.ao:                                            ; preds = %.thread260.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6241.0.i, i64 noundef %.sroa.0239.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !45537
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i": ; preds = %bb.ao, %.thread260.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !45523
  br label %bb.e

bb.ap:                                            ; preds = %bb.an
  %i.ec = load i8, ptr %i.b, align 8, !range !97, !noalias !45523, !noundef !41 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 6
  br i1 %i.ed, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false), !noalias !45522
  br label %bb.bv

bb.ar:                                            ; preds = %bb.ap
  %.sroa.579.0.copyload.i = load i64, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !45523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !45523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.298.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.478.0..sroa_idx.i, i64 39, i1 false), !noalias !45523
  store i8 %i.ec, ptr %i.k, align 8, !noalias !45523
  %i.ef = load ptr, ptr %i.u, align 8, !noalias !45523, !nonnull !41, !noundef !41 ; 4 uses
  %i.eg = load i64, ptr %i.v, align 8, !noalias !45523, !noundef !41 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = icmp samesign eq i64 %i.eg, 0
  br i1 %i.ei, label %.thread267.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi i32 [ %i.es, %.lr.ph.i.i ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.02.010.i.i = phi i64 [ %i.eq, %.lr.ph.i.i ], [ 0, %bb.ar ]
  %.sroa.04.09.i.i = phi i64 [ %i.ej, %.lr.ph.i.i ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.07.08.i.i = phi ptr [ %i.et, %.lr.ph.i.i ], [ %i.ef, %bb.ar ] ; 2 uses
  %i.ej = add nuw i64 %.sroa.04.09.i.i, 1         ; 5 uses
  %i.ek = load i8, ptr %.sroa.07.08.i.i, align 1, !alias.scope !45538, !noalias !45521, !noundef !41 ; 2 uses
  %i.el = and i8 %i.ek, 127
  %i.em = zext nneg i8 %i.el to i64
  %i.en = and i32 %.sroa.0.011.i.i, 63
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl i64 %i.em, %i.eo
  %i.eq = or i64 %i.ep, %.sroa.02.010.i.i         ; 3 uses
  %i.er = icmp sgt i8 %i.ek, -1
  %i.es = add i32 %.sroa.0.011.i.i, 7
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i, i64 1 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.eh
  %or.cond.i.i = select i1 %i.er, i1 true, i1 %i.eu
  br i1 %or.cond.i.i, label %bb.as, label %.lr.ph.i.i

bb.as:                                            ; preds = %.lr.ph.i.i
  store i64 %.sroa.7244.0.i, ptr %i.j, align 8, !noalias !45523
  store i64 %i.eq, ptr %i.i, align 8, !noalias !45523
  %i.ev = icmp eq i64 %.sroa.7244.0.i, %i.eq
  br i1 %i.ev, label %bb.au, label %bb.at, !prof !48

.thread267.i:                                     ; preds = %bb.ar
  store i64 %.sroa.7244.0.i, ptr %i.j, align 8, !noalias !45523
  store i64 0, ptr %i.i, align 8, !noalias !45523
  br i1 %i.dl, label %.thread475.i, label %bb.at, !prof !48

bb.at:                                            ; preds = %.thread267.i, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !45523
  store ptr @2594, ptr %i.h, align 8, !noalias !45523
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !45523
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !45523
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.642.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !45523
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2606) #73
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45521

bb.au:                                            ; preds = %bb.as
  %.not281.i = icmp ult i64 %.sroa.04.09.i.i, %i.eg
  br i1 %.not281.i, label %.thread271.i, label %.invoke420, !prof !99

.thread271.i:                                     ; preds = %bb.au
  %i.ew = icmp eq i64 %i.eg, %i.ej
  br i1 %i.ew, label %.thread475.i, label %.lr.ph.i177.preheader.i

.lr.ph.i177.preheader.i:                          ; preds = %.thread271.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ej
  br label %.lr.ph.i177.i

.thread475.i:                                     ; preds = %.thread271.i, %.thread267.i
  %i.ey = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.ey)
  store i64 0, ptr %i.t, align 8, !alias.scope !45539, !noalias !45523
  br label %bb.az

.lr.ph.i177.i:                                    ; preds = %.lr.ph.i177.i, %.lr.ph.i177.preheader.i
  %.sroa.0.011.i178.i = phi i32 [ %i.fi, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ] ; 2 uses
  %.sroa.02.010.i179.i = phi i64 [ %i.fg, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ]
  %.sroa.04.09.i180.i = phi i64 [ %i.ez, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ]
  %.sroa.07.08.i181.i = phi ptr [ %i.fj, %.lr.ph.i177.i ], [ %i.ex, %.lr.ph.i177.preheader.i ] ; 2 uses
  %i.ez = add nuw i64 %.sroa.04.09.i180.i, 1      ; 2 uses
  %i.fa = load i8, ptr %.sroa.07.08.i181.i, align 1, !alias.scope !45540, !noalias !45521, !noundef !41 ; 2 uses
  %i.fb = and i8 %i.fa, 127
  %i.fc = zext nneg i8 %i.fb to i64
  %i.fd = and i32 %.sroa.0.011.i178.i, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl i64 %i.fc, %i.fe
  %i.fg = or i64 %i.ff, %.sroa.02.010.i179.i      ; 4 uses
  %i.fh = icmp sgt i8 %i.fa, -1
  %i.fi = add i32 %.sroa.0.011.i178.i, 7
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i181.i, i64 1 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.eh
  %or.cond.i182.i = select i1 %i.fh, i1 true, i1 %i.fk
  br i1 %or.cond.i182.i, label %bb.av, label %.lr.ph.i177.i

bb.av:                                            ; preds = %.lr.ph.i177.i
  %i.fl = add i64 %i.ez, %i.ej                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45539)
  %i.fm = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp ugt i64 %i.fg, %i.dp
  br i1 %i.fn, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fo = sub nuw i64 %i.fg, %i.dp                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45541)
  %i.fp = load i64, ptr %i.r, align 8, !range !43, !alias.scope !45542, !noalias !45523, !noundef !41
  %i.fq = sub nsw i64 %i.fp, %i.dp
  %i.fr = icmp ugt i64 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ax, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i", !prof !44

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.dp, i64 noundef %i.fo, i64 noundef 1, i64 noundef 1)
          to label %.noexc186.i unwind label %.loopexit.i, !noalias !45521

.noexc186.i:                                      ; preds = %bb.ax
  %.pre.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !45543, !noalias !45523
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !45543, !noalias !45523
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i": ; preds = %.noexc186.i, %bb.aw
  %i.fs = phi ptr [ %i.do, %bb.aw ], [ %.pre.i, %.noexc186.i ] ; 2 uses
  %i.ft = phi i64 [ %i.dp, %bb.aw ], [ %.pre.i.i.i, %.noexc186.i ] ; 4 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr i8, ptr %i.fs, i64 %i.ft  ; 2 uses
  %i.fw = icmp ugt i64 %i.fo, 1
  br i1 %i.fw, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"
  %i.fx = add i64 %i.fo, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 range(i64 0, -1) %i.fx, i1 false), !noalias !45544
  %i.fy = add i64 %i.ft, %i.fx                    ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.fs, i64 %i.fy
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.thread.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.fv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i" ]
  %storemerge.lcssa15.i.i.i = phi i64 [ %i.fy, %._crit_edge.thread.i.i.i ], [ %i.ft, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i, align 1, !noalias !45544
  %i.fz = add i64 %storemerge.lcssa15.i.i.i, 1
  %.pre456.i = load i64, ptr %i.v, align 8, !noalias !45523
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i.i, %bb.av
  %i.ga = phi i64 [ %i.eg, %bb.av ], [ %.pre456.i, %._crit_edge.i.i.i ] ; 3 uses
  %storemerge.i.i = phi i64 [ %i.fg, %bb.av ], [ %i.fz, %._crit_edge.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i, ptr %i.t, align 8, !alias.scope !45539, !noalias !45523
  %i.gb = icmp ugt i64 %i.fl, %i.ga
  br i1 %i.gb, label %.invoke420, label %._crit_edge, !prof !100

._crit_edge:                                      ; preds = %bb.ay
  %.pre = load ptr, ptr %i.u, align 8, !noalias !45523
  %.pre201 = load ptr, ptr %i.s, align 8, !noalias !45523
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge, %.thread475.i
  %i.gc = phi ptr [ %i.dn, %.thread475.i ], [ %.pre201, %._crit_edge ] ; 4 uses
  %i.gd = phi ptr [ %i.ef, %.thread475.i ], [ %.pre, %._crit_edge ]
  %storemerge.i477.i = phi i64 [ 0, %.thread475.i ], [ %storemerge.i.i, %._crit_edge ] ; 3 uses
  %i.ge = phi i64 [ %i.eg, %.thread475.i ], [ %i.fl, %._crit_edge ] ; 2 uses
  %i.gf = phi i64 [ %i.eg, %.thread475.i ], [ %i.ga, %._crit_edge ]
  %i.gg = sub nuw i64 %i.gf, %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ge
  %i.gi = invoke noundef i8 @_ZN8gix_pack4data5delta5apply17h4e78199f7a12413eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6241.0.i, i64 noundef %.sroa.7244.0.i, ptr noalias noundef nonnull align 1 %i.gc, i64 noundef %storemerge.i477.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gh, i64 noundef %i.gg)
          to label %bb.ba unwind label %.loopexit.i, !noalias !45521 ; 2 uses

.invoke420:                                       ; preds = %bb.ay, %bb.au
  %i.gj = phi i64 [ %i.ej, %bb.au ], [ %i.fl, %bb.ay ]
  %i.gk = phi i64 [ %i.eg, %bb.au ], [ %i.ga, %bb.ay ] ; 2 uses
  %i.gl = phi ptr [ @2609, %bb.au ], [ @2608, %bb.ay ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.gj, i64 noundef %i.gk, i64 noundef %i.gk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl) #73
          to label %.cont421 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45521

.cont421:                                         ; preds = %.invoke420
  unreachable

bb.ba:                                            ; preds = %bb.az
  %.not117.i = icmp eq i8 %i.gi, 3
  br i1 %.not117.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 9, ptr %0, align 8, !alias.scope !45521, !noalias !45522
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.gi, ptr %.sroa.481.0..sroa_idx.i, align 1, !alias.scope !45521, !noalias !45522
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !45523
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !45521, !noundef !41
  %.not119.i = icmp eq i64 %i.gn, 0
  br i1 %.not119.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.go = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.a, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gc, i64 noundef %storemerge.i477.i)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit188.i" unwind label %.loopexit.i, !noalias !45521

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !45523
  %i.gp = load ptr, ptr %i.ag, align 8, !alias.scope !45522, !noalias !45521, !nonnull !41, !align !42, !noundef !41 ; 7 uses
  %i.gq = cmpxchg weak ptr %i.gp, i8 0, i8 1 acquire monotonic, align 1, !noalias !45521
  %i.gr = extractvalue { i8, i1 } %i.gq, 1
  br i1 %i.gr, label %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i, label %bb.bf, !prof !48

bb.bf:                                            ; preds = %bb.be
  %i.gs = invoke noundef zeroext i1 @_ZN11parking_lot9raw_mutex8RawMutex9lock_slow17haf6e586ab908a0ddE(ptr noundef nonnull align 8 %i.gp, i64 undef, i32 noundef 1000000000)
          to label %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i unwind label %.loopexit.i, !noalias !45521 ; 0 uses

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit188.i": ; preds = %bb.bd
  %i.gt = load i8, ptr %i.a, align 1, !range !47, !noalias !45523, !noundef !41
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit188.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !45521
  %i.gv = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !45521 ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %.invoke, label %bb.bh, !prof !49

.invoke:                                          ; preds = %bb.bg, %bb.aj
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 20) #73
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45521

.cont:                                            ; preds = %.invoke
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.gv, ptr noundef nonnull align 1 dereferenceable(20) %i.gx, i64 20, i1 false), !noalias !45521
  store i8 5, ptr %0, align 8, !alias.scope !45521, !noalias !45522
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gv, ptr %.sroa.488.0..sroa_idx.i, align 8, !alias.scope !45521, !noalias !45522
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @2591, ptr %.sroa.589.0..sroa_idx.i, align 8, !alias.scope !45521, !noalias !45522
  br label %bb.bj

bb.bi:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit188.i"
  %i.gy = load ptr, ptr %i.ak, align 8, !alias.scope !45522, !noalias !45521, !nonnull !41, !align !42, !noundef !41
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !45521, !nonnull !41, !noundef !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = atomicrmw add ptr %i.ha, i64 1 monotonic, align 8, !noalias !45521 ; 0 uses
  %i.hc = load ptr, ptr %i.al, align 8, !alias.scope !45522, !noalias !45521, !nonnull !41, !align !42, !noundef !41
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !45521, !nonnull !41, !noundef !41
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = atomicrmw add ptr %i.he, i64 %.sroa.7244.0.i monotonic, align 8, !noalias !45521 ; 0 uses
  br label %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i"

"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i": ; preds = %bb.bu, %bb.bt, %bb.bi
  %i.hg = phi ptr [ inttoptr (i64 1 to ptr), %bb.bu ], [ inttoptr (i64 1 to ptr), %bb.bt ], [ %i.gc, %bb.bi ] ; 4 uses
  %i.hh = phi i64 [ 0, %bb.bu ], [ 0, %bb.bt ], [ %storemerge.i477.i, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45523
  %i.hi = icmp eq ptr %.sroa.099.1379.i, %i.dj    ; 2 uses
  %.sroa.099.1.idx.i = select i1 %i.hi, i64 0, i64 4
  %.sroa.099.1.i = getelementptr inbounds nuw i8, ptr %.sroa.099.1379.i, i64 %.sroa.099.1.idx.i
  br i1 %i.hi, label %.thread260.i, label %bb.am

bb.bj:                                            ; preds = %bb.bh, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45523
  br label %bb.bv

_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i: ; preds = %bb.bf, %bb.be
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hk = load i64, ptr %i.du, align 8, !noalias !45521, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !45523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !45523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !45523
  store i64 0, ptr %i.r, align 8, !noalias !45523
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !45523
  store i64 0, ptr %i.t, align 8, !noalias !45523
  store i64 %.sroa.579.0.copyload.i, ptr %i.am, align 8, !noalias !45523
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb9221b1bd280e2bbE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef align 8 dereferenceable(24) %i.hj, i64 noundef %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.bm unwind label %bb.bk, !noalias !45521

bb.bk:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = cmpxchg ptr %i.gp, i8 1, i8 0 release monotonic, align 1, !noalias !45521
  %i.hn = extractvalue { i8, i1 } %i.hm, 1
  br i1 %i.hn, label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i", label %bb.bl, !prof !48

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.gp, i1 noundef zeroext false)
          to label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i" unwind label %bb.aa, !noalias !45521

bb.bm:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45523
  %.val140.i = load i64, ptr %i.ao, align 8, !range !64, !noalias !45523, !noundef !41 ; 2 uses
  %switch.i = icmp sgt i64 %.val140.i, 0
  br i1 %switch.i, label %bb.bn, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i"

bb.bn:                                            ; preds = %bb.bm
  %.val141.i = load ptr, ptr %i.ap, align 8, !noalias !45523, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val141.i, i64 noundef %.val140.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !45545
  br label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i"

"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i": ; preds = %bb.bn, %bb.bm
  %i.ho = cmpxchg ptr %i.gp, i8 1, i8 0 release monotonic, align 1, !noalias !45521
  %i.hp = extractvalue { i8, i1 } %i.ho, 1
  br i1 %i.hp, label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i", label %bb.bo, !prof !48

bb.bo:                                            ; preds = %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i"
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.gp, i1 noundef zeroext false)
          to label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i" unwind label %.loopexit.i, !noalias !45521

"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i": ; preds = %bb.bo, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !45523
  %i.hq = load ptr, ptr %i.ae, align 8, !alias.scope !45522, !noalias !45521, !nonnull !41, !align !42, !noundef !41 ; 9 uses
  %i.hr = cmpxchg weak ptr %i.hq, i8 0, i8 1 acquire monotonic, align 1, !noalias !45521
  %i.hs = extractvalue { i8, i1 } %i.hr, 1
  br i1 %i.hs, label %_ZN12gix_features9threading5_impl4lock17h55dd8d3128508b63E.exit198.i, label %bb.bp, !prof !48

bb.bp:                                            ; preds = %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i"
  %i.ht = invoke noundef zeroext i1 @_ZN11parking_lot9raw_mutex8RawMutex9lock_slow17haf6e586ab908a0ddE(ptr noundef nonnull align 8 %i.hq, i64 undef, i32 noundef 1000000000)
          to label %_ZN12gix_features9threading5_impl4lock17h55dd8d3128508b63E.exit198.i unwind label %.loopexit.i, !noalias !45521 ; 0 uses

_ZN12gix_features9threading5_impl4lock17h55dd8d3128508b63E.exit198.i: ; preds = %bb.bp, %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i"
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45546)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !45546, !noalias !45547, !noundef !41 ; 3 uses
  %i.hx = load i64, ptr %i.hu, align 8, !range !43, !alias.scope !45546, !noalias !45547, !noundef !41
  %i.hy = icmp eq i64 %i.hw, %i.hx
  br i1 %i.hy, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17h55dd8d3128508b63E.exit198.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h74d004bef66c2479E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2607)
          to label %bb.bt unwind label %bb.br, !noalias !45521

bb.br:                                            ; preds = %bb.bq
  %i.hz = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hec69e5014cdb67c6E:bb.a
bb.al:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit.i"
  %i.cw = load ptr, ptr %i.ak, align 8, !alias.scope !45602, !noalias !45601, !nonnull !41, !align !42, !noundef !41
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !45601, !nonnull !41, !noundef !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = atomicrmw add ptr %i.cy, i64 1 monotonic, align 8, !noalias !45601 ; 0 uses
  %i.da = load ptr, ptr %i.al, align 8, !alias.scope !45602, !noalias !45601, !nonnull !41, !align !42, !noundef !41
  %i.db = load ptr, ptr %i.da, align 8, !noalias !45601, !nonnull !41, !noundef !41
  %i.dc = icmp sgt i64 %.sroa.7244.0.i, -1
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = atomicrmw add ptr %i.dd, i64 %.sroa.7244.0.i monotonic, align 8, !noalias !45601 ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !45601, !nonnull !41, !noundef !41 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !45601, !noundef !41 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.di, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i
  %i.dk = icmp eq i64 %i.di, 0
  br i1 %i.dk, label %.thread260.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al
  %.sroa.099.1377.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dl = icmp eq i64 %.sroa.7244.0.i, 0
  %i.dm = add i16 %.sroa.063.0.copyload.i, 1
  br label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i", %.lr.ph.i
  %i.dn = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 2 uses
  %i.do = phi ptr [ %.val1.i155.i, %.lr.ph.i ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 3 uses
  %i.dp = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.hh, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 8 uses
  %.sroa.099.1379.i = phi ptr [ %.sroa.099.1377.i, %.lr.ph.i ], [ %.sroa.099.1.i, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 3 uses
  %.sroa.099.0378.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %.sroa.099.1379.i, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ]
  %i.dq = load i32, ptr %.sroa.099.0378.i, align 4, !noalias !45601, !noundef !41
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %.sroa.666.0.copyload.i, align 8, !noalias !45601, !noundef !41 ; 2 uses
  %i.dt = getelementptr inbounds nuw [64 x i8], ptr %i.ds, i64 %i.dr ; 5 uses
  %.not116.i = icmp eq ptr %i.ds, null
  br i1 %.not116.i, label %.thread260.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !noalias !45601, !noundef !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !45601, !noundef !41
  invoke fastcc void @"_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h4951c178e292f169E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.o, i64 noundef %i.dv, i64 noundef %i.dx, ptr noalias noundef align 8 dereferenceable(24) %i.q)
          to label %bb.ap unwind label %.loopexit.i, !noalias !45601

.thread260.i:                                     ; preds = %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i", %bb.am, %bb.al
  %i.dy = phi ptr [ %i.aq, %bb.al ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.dn, %bb.am ]
  %i.dz = phi ptr [ %.val1.i155.i, %bb.al ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.do, %bb.am ]
  %i.ea = phi i64 [ %i.ar, %bb.al ], [ %i.hh, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.dp, %bb.am ]
  %i.eb = icmp eq i64 %.sroa.0239.0.i, 0
  br i1 %i.eb, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i", label %bb.ao

bb.ao:                                            ; preds = %.thread260.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6241.0.i, i64 noundef %.sroa.0239.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !45617
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i": ; preds = %bb.ao, %.thread260.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !45603
  br label %bb.e

bb.ap:                                            ; preds = %bb.an
  %i.ec = load i8, ptr %i.b, align 8, !range !97, !noalias !45603, !noundef !41 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 6
  br i1 %i.ed, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false), !noalias !45602
  br label %bb.bv

bb.ar:                                            ; preds = %bb.ap
  %.sroa.579.0.copyload.i = load i64, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !45603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !45603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.298.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.478.0..sroa_idx.i, i64 39, i1 false), !noalias !45603
  store i8 %i.ec, ptr %i.k, align 8, !noalias !45603
  %i.ef = load ptr, ptr %i.u, align 8, !noalias !45603, !nonnull !41, !noundef !41 ; 4 uses
  %i.eg = load i64, ptr %i.v, align 8, !noalias !45603, !noundef !41 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = icmp samesign eq i64 %i.eg, 0
  br i1 %i.ei, label %.thread267.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi i32 [ %i.es, %.lr.ph.i.i ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.02.010.i.i = phi i64 [ %i.eq, %.lr.ph.i.i ], [ 0, %bb.ar ]
  %.sroa.04.09.i.i = phi i64 [ %i.ej, %.lr.ph.i.i ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.07.08.i.i = phi ptr [ %i.et, %.lr.ph.i.i ], [ %i.ef, %bb.ar ] ; 2 uses
  %i.ej = add nuw i64 %.sroa.04.09.i.i, 1         ; 5 uses
  %i.ek = load i8, ptr %.sroa.07.08.i.i, align 1, !alias.scope !45618, !noalias !45601, !noundef !41 ; 2 uses
  %i.el = and i8 %i.ek, 127
  %i.em = zext nneg i8 %i.el to i64
  %i.en = and i32 %.sroa.0.011.i.i, 63
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl i64 %i.em, %i.eo
  %i.eq = or i64 %i.ep, %.sroa.02.010.i.i         ; 3 uses
  %i.er = icmp sgt i8 %i.ek, -1
  %i.es = add i32 %.sroa.0.011.i.i, 7
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i, i64 1 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.eh
  %or.cond.i.i = select i1 %i.er, i1 true, i1 %i.eu
  br i1 %or.cond.i.i, label %bb.as, label %.lr.ph.i.i

bb.as:                                            ; preds = %.lr.ph.i.i
  store i64 %.sroa.7244.0.i, ptr %i.j, align 8, !noalias !45603
  store i64 %i.eq, ptr %i.i, align 8, !noalias !45603
  %i.ev = icmp eq i64 %.sroa.7244.0.i, %i.eq
  br i1 %i.ev, label %bb.au, label %bb.at, !prof !48

.thread267.i:                                     ; preds = %bb.ar
  store i64 %.sroa.7244.0.i, ptr %i.j, align 8, !noalias !45603
  store i64 0, ptr %i.i, align 8, !noalias !45603
  br i1 %i.dl, label %.thread475.i, label %bb.at, !prof !48

bb.at:                                            ; preds = %.thread267.i, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !45603
  store ptr @2594, ptr %i.h, align 8, !noalias !45603
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !45603
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !45603
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.642.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !45603
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2606) #73
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45601

bb.au:                                            ; preds = %bb.as
  %.not281.i = icmp ult i64 %.sroa.04.09.i.i, %i.eg
  br i1 %.not281.i, label %.thread271.i, label %.invoke420, !prof !99

.thread271.i:                                     ; preds = %bb.au
  %i.ew = icmp eq i64 %i.eg, %i.ej
  br i1 %i.ew, label %.thread475.i, label %.lr.ph.i177.preheader.i

.lr.ph.i177.preheader.i:                          ; preds = %.thread271.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ej
  br label %.lr.ph.i177.i

.thread475.i:                                     ; preds = %.thread271.i, %.thread267.i
  %i.ey = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.ey)
  store i64 0, ptr %i.t, align 8, !alias.scope !45619, !noalias !45603
  br label %bb.az

.lr.ph.i177.i:                                    ; preds = %.lr.ph.i177.i, %.lr.ph.i177.preheader.i
  %.sroa.0.011.i178.i = phi i32 [ %i.fi, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ] ; 2 uses
  %.sroa.02.010.i179.i = phi i64 [ %i.fg, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ]
  %.sroa.04.09.i180.i = phi i64 [ %i.ez, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ]
  %.sroa.07.08.i181.i = phi ptr [ %i.fj, %.lr.ph.i177.i ], [ %i.ex, %.lr.ph.i177.preheader.i ] ; 2 uses
  %i.ez = add nuw i64 %.sroa.04.09.i180.i, 1      ; 2 uses
  %i.fa = load i8, ptr %.sroa.07.08.i181.i, align 1, !alias.scope !45620, !noalias !45601, !noundef !41 ; 2 uses
  %i.fb = and i8 %i.fa, 127
  %i.fc = zext nneg i8 %i.fb to i64
  %i.fd = and i32 %.sroa.0.011.i178.i, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl i64 %i.fc, %i.fe
  %i.fg = or i64 %i.ff, %.sroa.02.010.i179.i      ; 4 uses
  %i.fh = icmp sgt i8 %i.fa, -1
  %i.fi = add i32 %.sroa.0.011.i178.i, 7
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i181.i, i64 1 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.eh
  %or.cond.i182.i = select i1 %i.fh, i1 true, i1 %i.fk
  br i1 %or.cond.i182.i, label %bb.av, label %.lr.ph.i177.i

bb.av:                                            ; preds = %.lr.ph.i177.i
  %i.fl = add i64 %i.ez, %i.ej                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45619)
  %i.fm = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp ugt i64 %i.fg, %i.dp
  br i1 %i.fn, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fo = sub nuw i64 %i.fg, %i.dp                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45621)
  %i.fp = load i64, ptr %i.r, align 8, !range !43, !alias.scope !45622, !noalias !45603, !noundef !41
  %i.fq = sub nsw i64 %i.fp, %i.dp
  %i.fr = icmp ugt i64 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ax, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i", !prof !44

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.dp, i64 noundef %i.fo, i64 noundef 1, i64 noundef 1)
          to label %.noexc186.i unwind label %.loopexit.i, !noalias !45601

.noexc186.i:                                      ; preds = %bb.ax
  %.pre.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !45623, !noalias !45603
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !45623, !noalias !45603
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i": ; preds = %.noexc186.i, %bb.aw
  %i.fs = phi ptr [ %i.do, %bb.aw ], [ %.pre.i, %.noexc186.i ] ; 2 uses
  %i.ft = phi i64 [ %i.dp, %bb.aw ], [ %.pre.i.i.i, %.noexc186.i ] ; 4 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr i8, ptr %i.fs, i64 %i.ft  ; 2 uses
  %i.fw = icmp ugt i64 %i.fo, 1
  br i1 %i.fw, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"
  %i.fx = add i64 %i.fo, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 range(i64 0, -1) %i.fx, i1 false), !noalias !45624
  %i.fy = add i64 %i.ft, %i.fx                    ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.fs, i64 %i.fy
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.thread.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.fv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i" ]
  %storemerge.lcssa15.i.i.i = phi i64 [ %i.fy, %._crit_edge.thread.i.i.i ], [ %i.ft, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i, align 1, !noalias !45624
  %i.fz = add i64 %storemerge.lcssa15.i.i.i, 1
  %.pre456.i = load i64, ptr %i.v, align 8, !noalias !45603
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i.i, %bb.av
  %i.ga = phi i64 [ %i.eg, %bb.av ], [ %.pre456.i, %._crit_edge.i.i.i ] ; 3 uses
  %storemerge.i.i = phi i64 [ %i.fg, %bb.av ], [ %i.fz, %._crit_edge.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i, ptr %i.t, align 8, !alias.scope !45619, !noalias !45603
  %i.gb = icmp ugt i64 %i.fl, %i.ga
  br i1 %i.gb, label %.invoke420, label %._crit_edge, !prof !100

._crit_edge:                                      ; preds = %bb.ay
  %.pre = load ptr, ptr %i.u, align 8, !noalias !45603
  %.pre201 = load ptr, ptr %i.s, align 8, !noalias !45603
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge, %.thread475.i
  %i.gc = phi ptr [ %i.dn, %.thread475.i ], [ %.pre201, %._crit_edge ] ; 4 uses
  %i.gd = phi ptr [ %i.ef, %.thread475.i ], [ %.pre, %._crit_edge ]
  %storemerge.i477.i = phi i64 [ 0, %.thread475.i ], [ %storemerge.i.i, %._crit_edge ] ; 3 uses
  %i.ge = phi i64 [ %i.eg, %.thread475.i ], [ %i.fl, %._crit_edge ] ; 2 uses
  %i.gf = phi i64 [ %i.eg, %.thread475.i ], [ %i.ga, %._crit_edge ]
  %i.gg = sub nuw i64 %i.gf, %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ge
  %i.gi = invoke noundef i8 @_ZN8gix_pack4data5delta5apply17h4e78199f7a12413eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6241.0.i, i64 noundef %.sroa.7244.0.i, ptr noalias noundef nonnull align 1 %i.gc, i64 noundef %storemerge.i477.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gh, i64 noundef %i.gg)
          to label %bb.ba unwind label %.loopexit.i, !noalias !45601 ; 2 uses

.invoke420:                                       ; preds = %bb.ay, %bb.au
  %i.gj = phi i64 [ %i.ej, %bb.au ], [ %i.fl, %bb.ay ]
  %i.gk = phi i64 [ %i.eg, %bb.au ], [ %i.ga, %bb.ay ] ; 2 uses
  %i.gl = phi ptr [ @2609, %bb.au ], [ @2608, %bb.ay ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.gj, i64 noundef %i.gk, i64 noundef %i.gk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl) #73
          to label %.cont421 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45601

.cont421:                                         ; preds = %.invoke420
  unreachable

bb.ba:                                            ; preds = %bb.az
  %.not117.i = icmp eq i8 %i.gi, 3
  br i1 %.not117.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 9, ptr %0, align 8, !alias.scope !45601, !noalias !45602
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.gi, ptr %.sroa.481.0..sroa_idx.i, align 1, !alias.scope !45601, !noalias !45602
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !45603
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !45601, !noundef !41
  %.not119.i = icmp eq i64 %i.gn, 0
  br i1 %.not119.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.go = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.a, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gc, i64 noundef %storemerge.i477.i)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit188.i" unwind label %.loopexit.i, !noalias !45601

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !45603
  %i.gp = load ptr, ptr %i.ag, align 8, !alias.scope !45602, !noalias !45601, !nonnull !41, !align !42, !noundef !41 ; 7 uses
  %i.gq = cmpxchg weak ptr %i.gp, i8 0, i8 1 acquire monotonic, align 1, !noalias !45601
  %i.gr = extractvalue { i8, i1 } %i.gq, 1
  br i1 %i.gr, label %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i, label %bb.bf, !prof !48

bb.bf:                                            ; preds = %bb.be
  %i.gs = invoke noundef zeroext i1 @_ZN11parking_lot9raw_mutex8RawMutex9lock_slow17haf6e586ab908a0ddE(ptr noundef nonnull align 8 %i.gp, i64 undef, i32 noundef 1000000000)
          to label %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i unwind label %.loopexit.i, !noalias !45601 ; 0 uses

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit188.i": ; preds = %bb.bd
  %i.gt = load i8, ptr %i.a, align 1, !range !47, !noalias !45603, !noundef !41
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit188.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !45601
  %i.gv = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !45601 ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %.invoke, label %bb.bh, !prof !49

.invoke:                                          ; preds = %bb.bg, %bb.aj
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 20) #73
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45601

.cont:                                            ; preds = %.invoke
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.gv, ptr noundef nonnull align 1 dereferenceable(20) %i.gx, i64 20, i1 false), !noalias !45601
  store i8 5, ptr %0, align 8, !alias.scope !45601, !noalias !45602
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gv, ptr %.sroa.488.0..sroa_idx.i, align 8, !alias.scope !45601, !noalias !45602
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @2591, ptr %.sroa.589.0..sroa_idx.i, align 8, !alias.scope !45601, !noalias !45602
  br label %bb.bj

bb.bi:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit188.i"
  %i.gy = load ptr, ptr %i.ak, align 8, !alias.scope !45602, !noalias !45601, !nonnull !41, !align !42, !noundef !41
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !45601, !nonnull !41, !noundef !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = atomicrmw add ptr %i.ha, i64 1 monotonic, align 8, !noalias !45601 ; 0 uses
  %i.hc = load ptr, ptr %i.al, align 8, !alias.scope !45602, !noalias !45601, !nonnull !41, !align !42, !noundef !41
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !45601, !nonnull !41, !noundef !41
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = atomicrmw add ptr %i.he, i64 %.sroa.7244.0.i monotonic, align 8, !noalias !45601 ; 0 uses
  br label %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i"

"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i": ; preds = %bb.bu, %bb.bt, %bb.bi
  %i.hg = phi ptr [ inttoptr (i64 1 to ptr), %bb.bu ], [ inttoptr (i64 1 to ptr), %bb.bt ], [ %i.gc, %bb.bi ] ; 4 uses
  %i.hh = phi i64 [ 0, %bb.bu ], [ 0, %bb.bt ], [ %storemerge.i477.i, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45603
  %i.hi = icmp eq ptr %.sroa.099.1379.i, %i.dj    ; 2 uses
  %.sroa.099.1.idx.i = select i1 %i.hi, i64 0, i64 4
  %.sroa.099.1.i = getelementptr inbounds nuw i8, ptr %.sroa.099.1379.i, i64 %.sroa.099.1.idx.i
  br i1 %i.hi, label %.thread260.i, label %bb.am

bb.bj:                                            ; preds = %bb.bh, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45603
  br label %bb.bv

_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i: ; preds = %bb.bf, %bb.be
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hk = load i64, ptr %i.du, align 8, !noalias !45601, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !45603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !45603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !45603
  store i64 0, ptr %i.r, align 8, !noalias !45603
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !45603
  store i64 0, ptr %i.t, align 8, !noalias !45603
  store i64 %.sroa.579.0.copyload.i, ptr %i.am, align 8, !noalias !45603
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb9221b1bd280e2bbE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef align 8 dereferenceable(24) %i.hj, i64 noundef %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.bm unwind label %bb.bk, !noalias !45601

bb.bk:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = cmpxchg ptr %i.gp, i8 1, i8 0 release monotonic, align 1, !noalias !45601
  %i.hn = extractvalue { i8, i1 } %i.hm, 1
  br i1 %i.hn, label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i", label %bb.bl, !prof !48

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.gp, i1 noundef zeroext false)
          to label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i" unwind label %bb.aa, !noalias !45601

bb.bm:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45603
  %.val140.i = load i64, ptr %i.ao, align 8, !range !64, !noalias !45603, !noundef !41 ; 2 uses
  %switch.i = icmp sgt i64 %.val140.i, 0
  br i1 %switch.i, label %bb.bn, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i"

bb.bn:                                            ; preds = %bb.bm
  %.val141.i = load ptr, ptr %i.ap, align 8, !noalias !45603, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val141.i, i64 noundef %.val140.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !45625
  br label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i"

"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i": ; preds = %bb.bn, %bb.bm
  %i.ho = cmpxchg ptr %i.gp, i8 1, i8 0 release monotonic, align 1, !noalias !45601
  %i.hp = extractvalue { i8, i1 } %i.ho, 1
  br i1 %i.hp, label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i", label %bb.bo, !prof !48

bb.bo:                                            ; preds = %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i"
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.gp, i1 noundef zeroext false)
          to label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i" unwind label %.loopexit.i, !noalias !45601

"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i": ; preds = %bb.bo, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !45603
  %i.hq = load ptr, ptr %i.ae, align 8, !alias.scope !45602, !noalias !45601, !nonnull !41, !align !42, !noundef !41 ; 9 uses
  %i.hr = cmpxchg weak ptr %i.hq, i8 0, i8 1 acquire monotonic, align 1, !noalias !45601
  %i.hs = extractvalue { i8, i1 } %i.hr, 1
  br i1 %i.hs, label %_ZN12gix_features9threading5_impl4lock17h55dd8d3128508b63E.exit198.i, label %bb.bp, !prof !48

bb.bp:                                            ; preds = %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i"
  %i.ht = invoke noundef zeroext i1 @_ZN11parking_lot9raw_mutex8RawMutex9lock_slow17haf6e586ab908a0ddE(ptr noundef nonnull align 8 %i.hq, i64 undef, i32 noundef 1000000000)
          to label %_ZN12gix_features9threading5_impl4lock17h55dd8d3128508b63E.exit198.i unwind label %.loopexit.i, !noalias !45601 ; 0 uses

_ZN12gix_features9threading5_impl4lock17h55dd8d3128508b63E.exit198.i: ; preds = %bb.bp, %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit196.i"
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45626)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !45626, !noalias !45627, !noundef !41 ; 3 uses
  %i.hx = load i64, ptr %i.hu, align 8, !range !43, !alias.scope !45626, !noalias !45627, !noundef !41
  %i.hy = icmp eq i64 %i.hw, %i.hx
  br i1 %i.hy, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17h55dd8d3128508b63E.exit198.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h74d004bef66c2479E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2607)
          to label %bb.bt unwind label %bb.br, !noalias !45601

bb.br:                                            ; preds = %bb.bq
  %i.hz = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@"_ZN7gix_odb11store_impls7dynamic4find64_$LT$impl$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$21try_find_cached_inner28_$u7b$$u7b$closure$u7d$$u7d$17h194bc23af0d67cf5E":bb.a
bb.c:                                             ; preds = %bb.a, %bb.e
  %storemerge = phi i8 [ %.sink, %bb.e ], [ 7, %bb.a ]
  store i8 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.47.0..sroa_idx, i64 39, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sink = phi i8 [ %i.i, %bb.d ], [ 7, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7gix_odb11store_impls7dynamic4find64_$LT$impl$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$21try_find_cached_inner28_$u7b$$u7b$closure$u7d$$u7d$17h35210a4a4c33c36fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 4 uses
  %i.b = alloca [20 x i8], align 1                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !80843
  %i.d = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !80843 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4ffbefa10b4c9f43E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$gix_odb..store_impls..dynamic..find..error..Error$GT$17h943a29bea9bc2d3cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %2) #75
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4ffbefa10b4c9f43E.exit": ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = load ptr, ptr %1, align 8, !nonnull !41, !align !46, !noundef !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.b, ptr noundef nonnull align 1 dereferenceable(20) %i.h, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !41, !align !46, !noundef !41
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !41
  invoke void @"_ZN66_$LT$gix_hash..borrowed..oid$u20$as$u20$alloc..borrow..ToOwned$GT$8to_owned17h66f57f04573d76e3E"(ptr noalias noundef nonnull sret([20 x i8]) align 1 captures(address) dereferenceable(20) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4ffbefa10b4c9f43E.exit"
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr95drop_in_place$LT$alloc..boxed..Box$LT$gix_odb..store_impls..dynamic..find..error..Error$GT$$GT$17h378381440f7f700bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #75
          to label %common.resume unwind label %bb.g

bb.f:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4ffbefa10b4c9f43E.exit"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, ptr noundef nonnull align 1 dereferenceable(20) %i.b, i64 20, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.p, ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 20, i1 false)
  store i64 11, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN7gix_odb11store_impls7dynamic4find64_$LT$impl$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$21try_find_cached_inner28_$u7b$$u7b$closure$u7d$$u7d$17hcd162dd00ed1e715E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !41, !align !42, !noundef !41
  %i.c = tail call { i64, i64 } @_ZN7gix_odb11store_impls7dynamic6handle15IntraPackLookup17pack_offset_by_id17h92f866cbb1c7eaccE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !41, !align !42, !noundef !41
  %i.h = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !41, !noundef !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @"_ZN8gix_pack4data4file6decode5entry38_$LT$impl$u20$gix_pack..data..File$GT$5entry17h1d4cb627cdf1b977E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j, i64 noundef %i.h)
  %i.k = load i8, ptr %i.a, align 8, !range !97, !noundef !41 ; 2 uses
  %i.l = icmp eq i8 %i.k, 6
  br i1 %i.l, label %.thread14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.7.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.0..sroa_idx, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !80864)
  call void @llvm.experimental.noalias.scope.decl(metadata !80865)
  store i8 %i.k, ptr %0, align 8, !alias.scope !80866, !noalias !80867
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h988c001e12cb07fdE.exit"

.thread:                                          ; preds = %bb.a, %.thread14
  %.in18 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %.in18, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %.in17 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %.in17, align 8, !nonnull !41, !align !42, !noundef !41 ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %.in, align 8, !nonnull !41, !align !46, !noundef !41
  call void @llvm.experimental.noalias.scope.decl(metadata !80868)
  %.not.i.i = icmp eq i64 %3, 20
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.p = load i128, ptr %2, align 1
  %i.q = load i128, ptr %i.m, align 1
  %i.r = xor i128 %i.p, %i.q
  %i.s = getelementptr i8, ptr %2, i64 16
  %i.t = getelementptr i8, ptr %i.m, i64 16
  %i.u = load i32, ptr %i.s, align 1
  %i.v = load i32, ptr %i.t, align 1
  %i.w = zext i32 %i.u to i128
  %i.x = zext i32 %i.v to i128
  %i.y = xor i128 %i.w, %i.x
  %i.z = or i128 %i.r, %i.y
  %i.aa = icmp ne i128 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  store i8 7, ptr %0, align 8, !alias.scope !80869, !noalias !80870
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h988c001e12cb07fdE.exit"

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !80871, !noundef !41 ; 5 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  call void @llvm.experimental.noalias.scope.decl(metadata !80872)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !80872, !noalias !80871, !noundef !41 ; 6 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ugt i64 %i.ae, %i.ah
  br i1 %i.aj, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i.thread": ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !80871
  store i64 %i.ae, ptr %i.ag, align 8, !alias.scope !80872, !noalias !80871
  br label %"_ZN7gix_odb11store_impls7dynamic4find64_$LT$impl$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$21try_find_cached_inner28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec3a8be742297e54E.exit.i.i"

bb.g:                                             ; preds = %bb.f
  %i.ak = sub nuw nsw i64 %i.ae, %i.ah            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80873)
  %i.al = load i64, ptr %4, align 8, !range !43, !alias.scope !80874, !noalias !80871, !noundef !41
  %i.am = sub nsw i64 %i.al, %i.ah
  %i.an = icmp ugt i64 %i.ak, %i.am
  br i1 %i.an, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i", !prof !44

bb.h:                                             ; preds = %bb.g
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ah, i64 noundef %i.ak, i64 noundef 1, i64 noundef 1), !noalias !80871
  %.pre.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !80875, !noalias !80871
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i": ; preds = %bb.h, %bb.g
  %i.ao = phi i64 [ %i.ah, %bb.g ], [ %.pre.i.i.i.i.i, %bb.h ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !80875, !noalias !80871, !nonnull !41, !noundef !41 ; 3 uses
  %i.ar = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr i8, ptr %i.aq, i64 %i.ao  ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ak, 1
  br i1 %i.at, label %._crit_edge.thread.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i"

._crit_edge.thread.i.i.i.i.i:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"
  %i.au = add nsw i64 %i.ak, -1                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 0, i64 range(i64 0, -1) %i.au, i1 false), !noalias !80876
  %i.av = add nuw i64 %i.ao, %i.au                ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aq, i64 %i.av
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i", %._crit_edge.thread.i.i.i.i.i
  %.sroa.0.0.lcssa16.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %i.as, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  %storemerge.lcssa15.i.i.i.i.i = phi i64 [ %i.av, %._crit_edge.thread.i.i.i.i.i ], [ %i.ao, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, align 1, !noalias !80876
  %i.aw = add nuw i64 %storemerge.lcssa15.i.i.i.i.i, 1 ; 3 uses
  %.pre19 = load i64, ptr %i.ad, align 8, !noalias !80871 ; 3 uses
  store i64 %i.aw, ptr %i.ag, align 8, !alias.scope !80872, !noalias !80871
  call void @llvm.experimental.noalias.scope.decl(metadata !80877)
  call void @llvm.experimental.noalias.scope.decl(metadata !80878)
  %.not.i.i.i.i = icmp eq i64 %i.aw, %.pre19
  br i1 %.not.i.i.i.i, label %"_ZN7gix_odb11store_impls7dynamic4find64_$LT$impl$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$21try_find_cached_inner28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec3a8be742297e54E.exit.i.i", label %bb.i, !prof !86

bb.i:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i"
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17ha00caa1ffae83bbcE"(i64 noundef %i.aw, i64 noundef %.pre19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2215) #73, !noalias !80879
  unreachable

"_ZN7gix_odb11store_impls7dynamic4find64_$LT$impl$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$21try_find_cached_inner28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec3a8be742297e54E.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i"
  %i.ax = phi ptr [ %.pre, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i.thread" ], [ %i.aq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i" ]
  %i.ay = phi i64 [ %i.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i.thread" ], [ %.pre19, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hce7e7173d6d761bcE.exit.i.i.i" ] ; 3 uses
  %.in28 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.az = load ptr, ptr %.in28, align 8, !noalias !80871, !nonnull !41, !noundef !41
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.az, i64 %i.ay, i1 false), !alias.scope !80880, !noalias !80881
  %i.ba = load i8, ptr %i.o, align 1, !range !70, !noalias !80871, !noundef !41
  %i.bb = icmp sgt i64 %i.ay, -1
  call void @llvm.assume(i1 %i.bb)
  store i8 6, ptr %0, align 8, !alias.scope !80869, !noalias !80870
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ay, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !80869, !noalias !80870
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ba, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !80869, !noalias !80870
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h988c001e12cb07fdE.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h988c001e12cb07fdE.exit": ; preds = %bb.c, %bb.e, %"_ZN7gix_odb11store_impls7dynamic4find64_$LT$impl$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$21try_find_cached_inner28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec3a8be742297e54E.exit.i.i"
  ret void

.thread14:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7gix_odb5cache5impls81_$LT$impl$u20$gix_pack..find_traits..Find$u20$for$u20$gix_odb..Cache$LT$S$GT$$GT$15try_find_cached17h4be61854b850ca4aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [20 x i8], align 1                ; 4 uses
  %.sroa.637 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.13 = alloca [24 x i8], align 8           ; 5 uses
  %i.d = alloca [20 x i8], align 1                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !58, !noundef !41
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !41
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.s, label %bb.t, !prof !48

bb.c:                                             ; preds = %bb.a, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load i64, ptr %i.k, align 8, !noalias !80889, !noundef !41
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e, !prof !48

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.k, align 8, !noalias !80889
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !80889, !noundef !41
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g, !prof !48

bb.e:                                             ; preds = %bb.c
  call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2203) #73, !noalias !80889
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 -1, ptr %i.n, align 8, !noalias !80889
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80889
  store ptr null, ptr %i.b, align 8, !noalias !80889
  invoke fastcc void @"_ZN7gix_odb11store_impls7dynamic4find64_$LT$impl$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$21try_find_cached_inner17h6232e61c67d4a0f9E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable(112) %i.r, ptr noundef nonnull align 1 %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %6, ptr noalias noundef align 8 dereferenceable(40) %i.q, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !80890

bb.g:                                             ; preds = %bb.d
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2202) #73
          to label %bb.q unwind label %bb.p, !noalias !80889

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.aa, %bb.l ]
  %i.t = load i64, ptr %i.n, align 8, !noalias !80889, !noundef !41
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.n, align 8, !noalias !80889
  br label %bb.r

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80889
  %i.v = load i64, ptr %i.a, align 8, !range !58, !noalias !80889, !noundef !41
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !80891
  %i.y = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !80891 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %bb.o, !prof !49

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #73
          to label %.noexc.i unwind label %bb.l, !noalias !80890

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$gix_odb..store_impls..dynamic..find..error..Error$GT$17h943a29bea9bc2d3cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.x) #75
          to label %.body.i unwind label %bb.m, !noalias !80890

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !80890
  unreachable

bb.n:                                             ; preds = %bb.i
  %.sroa.067.0.copyload = load ptr, ptr %i.x, align 8, !noalias !80892
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !80892
  %.sroa.1068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1068.0.copyload = load i64, ptr %.sroa.1068.0..sroa_idx, align 8, !noalias !80892
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !80892
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, i64 24, i1 false), !noalias !80892
  br label %"_ZN7gix_odb11store_impls7dynamic4find104_$LT$impl$u20$gix_pack..find_traits..Find$u20$for$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$15try_find_cached17h23e1d4c2d0f4f537E.exit"

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !noalias !80890
  br label %"_ZN7gix_odb11store_impls7dynamic4find104_$LT$impl$u20$gix_pack..find_traits..Find$u20$for$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$15try_find_cached17h23e1d4c2d0f4f537E.exit"

bb.p:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.g
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.ag, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.r ], [ %i.bl, %bb.ag ], [ %i.ak, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.p ], [ %eh.lpad-body.i, %.body.i ]
  %i.ad = load i64, ptr %i.k, align 8, !noalias !80889, !noundef !41
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.k, align 8, !noalias !80889
  br label %common.resume

"_ZN7gix_odb11store_impls7dynamic4find104_$LT$impl$u20$gix_pack..find_traits..Find$u20$for$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$15try_find_cached17h23e1d4c2d0f4f537E.exit": ; preds = %bb.n, %bb.o
  %.sroa.11.0 = phi i64 [ 3, %bb.o ], [ %.sroa.11.0.copyload, %bb.n ] ; 3 uses
  %.sroa.1068.0 = phi i64 [ undef, %bb.o ], [ %.sroa.1068.0.copyload, %bb.n ] ; 2 uses
  %.sroa.7.0 = phi ptr [ @2200, %bb.o ], [ %.sroa.7.0.copyload, %bb.n ] ; 3 uses
  %.sroa.067.0 = phi ptr [ %i.y, %bb.o ], [ %.sroa.067.0.copyload, %bb.n ] ; 4 uses
  %i.af = load i64, ptr %i.n, align 8, !noalias !80889, !noundef !41
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.n, align 8, !noalias !80889
  %i.ah = load i64, ptr %i.k, align 8, !noalias !80889, !noundef !41
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.k, align 8, !noalias !80889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = icmp eq i64 %.sroa.11.0, 3
  br i1 %i.aj, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.b
  store i64 -1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN66_$LT$gix_hash..borrowed..oid$u20$as$u20$alloc..borrow..ToOwned$GT$8to_owned17h66f57f04573d76e3E"(ptr noalias noundef nonnull sret([20 x i8]) align 1 captures(address) dereferenceable(20) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.b
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2219) #73
  unreachable

end_hunk_4
