Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN15index_scheduler9scheduler23process_index_operation49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$21apply_index_operation17h8d89136bacbc4572E":bb.a
          to label %.thread2912 unwind label %bb.s

.thread2879:                                      ; preds = %.thread2912, %.thread2891
  %.pn1415.pn.pn2883 = phi { ptr, i32 } [ %lpad.thr_comm2889, %.thread2891 ], [ %.pn1415.pn, %.thread2912 ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$milli..update..settings..Settings$GT$17h755f842cd0e76afbE"(ptr noalias noundef align 8 dereferenceable(880) %i.cl) #81
          to label %.thread2884 unwind label %bb.s

.thread2903:                                      ; preds = %.body.i1971, %bb.wv, %bb.xp, %bb.wz
  %.pn3058 = phi { ptr, i32 } [ %.pn1415.pn.pn.pn, %bb.wz ], [ %.pn1415.pn.pn.pn, %bb.xp ], [ %i.bjj, %bb.wv ], [ %i.bjj, %.body.i1971 ] ; 2 uses
  %.sroa.0839.112909 = phi i8 [ %.sroa.0839.8, %bb.wz ], [ %.sroa.0839.8, %bb.xp ], [ 0, %bb.wv ], [ 0, %.body.i1971 ] ; 2 uses
  %.sroa.178.552910 = extractvalue { ptr, i32 } %.pn3058, 1 ; 2 uses
  %.sroa.01391.552911 = extractvalue { ptr, i32 } %.pn3058, 0 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69034)
  call void @llvm.experimental.noalias.scope.decl(metadata !69035)
  %.val.i.i1988 = load i64, ptr %i.co, align 8, !range !56, !alias.scope !69036, !noundef !57 ; 2 uses
  %i.bkh = icmp eq i64 %.val.i.i1988, 0
  br i1 %i.bkh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit", label %bb.xo

bb.xo:                                            ; preds = %.thread2903
  %i.bki = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.val1.i.i1989 = load ptr, ptr %i.bki, align 8, !alias.scope !69036, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1989, i64 noundef %.val.i.i1988, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !69036
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"

bb.xp:                                            ; preds = %bb.wz
  invoke void @"_ZN4core3ptr142drop_in_place$LT$alloc..vec..Vec$LT$$LP$bool$C$meilisearch_types..settings..Settings$LT$meilisearch_types..settings..Unchecked$GT$$RP$$GT$$GT$17hf59770cf4b24fd10E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn) #81
          to label %.thread2903 unwind label %bb.s

bb.xq:                                            ; preds = %bb.ae
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkj, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkk, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  store i64 23, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %i.bkl = load ptr, ptr %i.jd, align 8, !nonnull !57, !noundef !57
  %i.bkm = atomicrmw add ptr %i.bkl, i64 1 monotonic, align 8
  %i.bkn = icmp slt i64 %i.bkm, 0
  br i1 %i.bkn, label %bb.xs, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.bko = load ptr, ptr %i.jd, align 8, !nonnull !57, !noundef !57
  %i.bkp = load ptr, ptr %i.jc, align 8, !nonnull !57, !align !61, !noundef !57
  invoke fastcc void @"_ZN15index_scheduler9scheduler23process_index_operation49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$21apply_index_operation17h8d89136bacbc4572E"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %1, ptr noalias noundef align 8 dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %3, ptr noalias noundef align 8 captures(address) dereferenceable(808) %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %5, ptr noundef nonnull %i.bko, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bkp)
          to label %bb.xt unwind label %bb.zq

bb.xs:                                            ; preds = %bb.xq
  call void @llvm.trap()
  unreachable

bb.xt:                                            ; preds = %bb.xr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.bkq = load i64, ptr %i.bz, align 8, !range !80, !noundef !57 ; 2 uses
  %.not1398 = icmp eq i64 %i.bkq, 152
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7794, ptr noundef nonnull align 8 dereferenceable(48) %i.bkr, i64 48, i1 false)
  br i1 %.not1398, label %bb.xu, label %bb.yt

bb.xu:                                            ; preds = %bb.xt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7794, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7794)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bks, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkt, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bku, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  store i64 24, ptr %i.bv, align 8
  %i.bkv = load ptr, ptr %i.jd, align 8, !nonnull !57, !noundef !57
  %i.bkw = load ptr, ptr %i.jc, align 8, !nonnull !57, !align !61, !noundef !57
  invoke fastcc void @"_ZN15index_scheduler9scheduler23process_index_operation49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$21apply_index_operation17h8d89136bacbc4572E"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %1, ptr noalias noundef align 8 dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %3, ptr noalias noundef align 8 captures(address) dereferenceable(808) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %5, ptr noundef nonnull %i.bkv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bkw)
          to label %bb.xx unwind label %bb.xw

bb.xv:                                            ; preds = %bb.yh, %bb.xw
  %.pn = phi { ptr, i32 } [ %i.blz, %bb.yh ], [ %i.bkx, %bb.xw ]
  invoke void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca) #81
          to label %.thread3035 unwind label %bb.s

bb.xw:                                            ; preds = %bb.xu
  %i.bkx = landingpad { ptr, i32 }
          cleanup
  br label %bb.xv

bb.xx:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.bky = load i64, ptr %i.bw, align 8, !range !80, !noundef !57 ; 2 uses
  %.not1400 = icmp eq i64 %i.bky, 152
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7803, ptr noundef nonnull align 8 dereferenceable(48) %i.bkz, i64 48, i1 false)
  br i1 %.not1400, label %bb.yf, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %.sroa.51352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %.sroa.31355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.31355.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.51352.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %.sroa.21354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21354.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7803, i64 48, i1 false)
  store i64 %i.bky, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7803)
  call void @llvm.experimental.noalias.scope.decl(metadata !69037)
  %i.bla = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.val.i1991 = load ptr, ptr %i.bla, align 8, !alias.scope !69037, !nonnull !57, !noundef !57 ; 4 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.val1.i1992 = load i64, ptr %i.blb, align 8, !alias.scope !69037, !noundef !57 ; 4 uses
  %i.blc = icmp eq i64 %.val1.i1992, 0
  br i1 %i.blc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i1998", label %.lr.ph3717

bb.xz:                                            ; preds = %.lr.ph3717
  %i.bld = icmp eq i64 %i.blf, %.val1.i1992
  br i1 %i.bld, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i1998", label %.lr.ph3717

.lr.ph3717:                                       ; preds = %bb.xy, %bb.xz
  %.sroa.0.0.i.i.i19933715 = phi i64 [ %i.blf, %bb.xz ], [ 0, %bb.xy ] ; 2 uses
  %i.ble = getelementptr inbounds nuw [784 x i8], ptr %.val.i1991, i64 %.sroa.0.0.i.i.i19933715
  %i.blf = add i64 %.sroa.0.0.i.i.i19933715, 1    ; 4 uses
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef readonly align 8 dereferenceable(784) %i.ble)
          to label %bb.xz unwind label %bb.yb, !noalias !69037

bb.ya:                                            ; preds = %.lr.ph3720
  %i.blg = add i64 %.sroa.0.1.i.i.i19943718, 1    ; 2 uses
  %i.blh = icmp eq i64 %i.blg, %.val1.i1992
  br i1 %i.blh, label %.body.i1995, label %.lr.ph3720

bb.yb:                                            ; preds = %.lr.ph3717
  %i.bli = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.blj = icmp eq i64 %i.blf, %.val1.i1992
  br i1 %i.blj, label %.body.i1995, label %.lr.ph3720

.lr.ph3720:                                       ; preds = %bb.yb, %bb.ya
  %.sroa.0.1.i.i.i19943718 = phi i64 [ %i.blg, %bb.ya ], [ %i.blf, %bb.yb ] ; 2 uses
  %i.blk = getelementptr inbounds nuw [784 x i8], ptr %.val.i1991, i64 %.sroa.0.1.i.i.i19943718
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef readonly align 8 dereferenceable(784) %i.blk) #81
          to label %bb.ya unwind label %bb.yc, !noalias !69037

bb.yc:                                            ; preds = %.lr.ph3720
  %i.bll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !69038
  unreachable

.body.i1995:                                      ; preds = %bb.ya, %bb.yb
  %.val4.i1996 = load i64, ptr %i.ca, align 8, !range !56, !alias.scope !69037, !noundef !57 ; 2 uses
  %i.blm = icmp eq i64 %.val4.i1996, 0
  br i1 %i.blm, label %.thread3035, label %bb.yd

bb.yd:                                            ; preds = %.body.i1995
  %i.bln = mul nuw i64 %.val4.i1996, 784
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1991, i64 noundef %i.bln, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69037
  br label %.thread3035

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i1998": ; preds = %bb.xz, %bb.xy
  %.val2.i1999 = load i64, ptr %i.ca, align 8, !range !56, !alias.scope !69037, !noundef !57 ; 2 uses
  %i.blo = icmp eq i64 %.val2.i1999, 0
  br i1 %i.blo, label %bb.za, label %bb.ye

bb.ye:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i1998"
  %i.blp = mul nuw i64 %.val2.i1999, 784
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1991, i64 noundef %i.blp, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69037
  br label %bb.za

bb.yf:                                            ; preds = %bb.xx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7803, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7803)
  call void @llvm.experimental.noalias.scope.decl(metadata !69039)
  call void @llvm.experimental.noalias.scope.decl(metadata !69040)
  %i.blq = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.blr = load ptr, ptr %i.blq, align 8, !alias.scope !69040, !noalias !69039, !nonnull !57, !noundef !57 ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.blt = load i64, ptr %i.bls, align 8, !alias.scope !69040, !noalias !69039, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69041)
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  %i.blv = load i64, ptr %i.blu, align 8, !alias.scope !69042, !noalias !69040, !noundef !57 ; 3 uses
  %i.blw = load i64, ptr %i.bu, align 8, !range !56, !alias.scope !69042, !noalias !69040, !noundef !57
  %i.blx = sub i64 %i.blw, %i.blv
  %i.bly = icmp ugt i64 %i.blt, %i.blx
  br i1 %i.bly, label %bb.yg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011", !prof !60

bb.yg:                                            ; preds = %bb.yf
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu, i64 noundef %i.blv, i64 noundef %i.blt, i64 noundef 8, i64 noundef 784)
          to label %.noexc2003 unwind label %bb.yh

.noexc2003:                                       ; preds = %bb.yg
  %.pre.i.i = load i64, ptr %i.blu, align 8, !alias.scope !69043, !noalias !69040
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011"

bb.yh:                                            ; preds = %bb.yg
  %i.blz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu) #81
          to label %bb.xv unwind label %bb.s

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011": ; preds = %.noexc2003, %bb.yf
  %i.bma = phi i64 [ %i.blv, %bb.yf ], [ %.pre.i.i, %.noexc2003 ] ; 3 uses
  %i.bmb = icmp ult i64 %i.bma, 11764505149049459
  call void @llvm.assume(i1 %i.bmb)
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bmd = load ptr, ptr %i.bmc, align 8, !alias.scope !69043, !noalias !69040, !nonnull !57, !noundef !57
  %i.bme = getelementptr inbounds nuw [784 x i8], ptr %i.bmd, i64 %i.bma
  %i.bmf = mul i64 %i.blt, 784
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bme, ptr nonnull readonly align 8 %i.blr, i64 %i.bmf, i1 false), !noalias !69044
  %i.bmg = add i64 %i.bma, %i.blt
  store i64 %i.bmg, ptr %i.blu, align 8, !alias.scope !69043, !noalias !69040
  %i.bmh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmh, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %.sroa.4813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.4813.0..sroa_idx, align 8
  store i64 152, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.experimental.noalias.scope.decl(metadata !69045)
  %.val2.i2012 = load i64, ptr %i.ca, align 8, !range !56, !alias.scope !69045, !noundef !57 ; 2 uses
  %i.bmi = icmp eq i64 %.val2.i2012, 0
  br i1 %i.bmi, label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E.exit2017", label %bb.yi

bb.yi:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011"
  %i.bmj = mul nuw i64 %.val2.i2012, 784
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.blr, i64 noundef %i.bmj, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69045
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E.exit2017"

"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E.exit2017": ; preds = %bb.yi, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.dr

"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit1686": ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ip)
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %.val1645 = load ptr, ptr %i.bmk, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.bml = icmp eq ptr %.val1645, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.bml, label %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit", label %.lr.ph.i.i2018

.lr.ph.i.i2018:                                   ; preds = %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit1686", %.lr.ph.i.i2018
  %.sroa.0.01.i.i = phi ptr [ %i.bmn, %.lr.ph.i.i2018 ], [ %.val1645, %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit1686" ] ; 4 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 24
  %i.bmn = load ptr, ptr %i.bmm, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.bmo = load ptr, ptr %.sroa.0.01.i.i, align 16, !nonnull !57, !noundef !57
  %i.bmp = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 8
  %i.bmq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16
  %i.bmr = load i64, ptr %i.bmq, align 16, !noundef !57
  %i.bms = load i64, ptr %i.bmp, align 8, !range !109, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bmo, i64 noundef %i.bmr, i64 noundef %i.bms) #79
  %i.bmt = icmp eq ptr %i.bmn, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.bmt, label %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit", label %.lr.ph.i.i2018

"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit": ; preds = %.lr.ph.i.i2018, %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit1686"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  %i.bmu = trunc nuw i8 %.sroa.0833.2 to i1
  br i1 %i.bmu, label %bb.yj, label %bb.yn

bb.yj:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !69046)
  %i.bmv = load i64, ptr %i.jb, align 8, !range !72, !alias.scope !69046, !noalias !69047, !noundef !57
  %.not.i.i2019 = icmp eq i64 %i.bmv, 2
  br i1 %.not.i.i2019, label %.noexc2020, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.jb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bmw)
          to label %.noexc2020 unwind label %.thread.thread

.noexc2020:                                       ; preds = %bb.yk, %bb.yj
  %i.bmx = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !69047
  %i.bmy = icmp eq i8 %i.bmx, 0
  br i1 %i.bmy, label %bb.yl, label %.thread2944

bb.yl:                                            ; preds = %.noexc2020
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.bna = load ptr, ptr %i.bmz, align 8, !alias.scope !69046, !noalias !69047, !align !61, !noundef !57 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.bna, null
  br i1 %.not4.i.i, label %.thread2944, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !69048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !69048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !69048
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 16
  %i.bnc = load ptr, ptr %i.bnb, align 8, !noalias !69047, !nonnull !57, !align !64, !noundef !57
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bna, i64 24
  %i.bne = load i64, ptr %i.bnd, align 8, !noalias !69047, !noundef !57
  store ptr %i.bnc, ptr %i.e, align 8, !noalias !69048
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bne, ptr %i.bnf, align 8, !noalias !69048
  store ptr %i.e, ptr %i.f, align 8, !noalias !69048
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !69048
  store ptr @4685, ptr %i.g, align 8, !noalias !69048
  %i.bng = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.bng, align 8, !noalias !69048
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bnh, align 8, !noalias !69048
  %i.bni = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.bni, align 8, !noalias !69048
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %i.bnj, align 8, !noalias !69048
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.jb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.g)
          to label %.noexc2021 unwind label %.thread.thread

.noexc2021:                                       ; preds = %bb.ym
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !69048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !69048
  br label %.thread2944

.thread:                                          ; preds = %bb.zt, %bb.b
  %i.bnk = trunc nuw i8 %.sroa.0836.0 to i1
  br i1 %i.bnk, label %bb.zu, label %bb.yo

.thread.thread:                                   ; preds = %bb.ym, %bb.zm, %bb.yk, %bb.zk
  %.sroa.0839.15 = phi i8 [ %.sroa.0839.7, %bb.zm ], [ %.sroa.0839.6, %bb.ym ], [ %.sroa.0839.6, %bb.yk ], [ %.sroa.0839.7, %bb.zk ]
  %.sroa.0905.8 = phi i8 [ %.sroa.0905.6, %bb.zm ], [ %.sroa.0905.5, %bb.ym ], [ %.sroa.0905.5, %bb.yk ], [ %.sroa.0905.6, %bb.zk ]
  %.sroa.0909.9 = phi i8 [ %.sroa.0909.7, %bb.zm ], [ %.sroa.0909.6, %bb.ym ], [ %.sroa.0909.6, %bb.yk ], [ %.sroa.0909.7, %bb.zk ]
  %.sroa.0911.9 = phi i8 [ %.sroa.0911.7, %bb.zm ], [ %.sroa.0911.6, %bb.ym ], [ %.sroa.0911.6, %bb.yk ], [ %.sroa.0911.7, %bb.zk ]
  %.sroa.0913.9 = phi i8 [ %.sroa.0913.7, %bb.zm ], [ %.sroa.0913.6, %bb.ym ], [ %.sroa.0913.6, %bb.yk ], [ %.sroa.0913.7, %bb.zk ]
  %.sroa.0916.9 = phi i8 [ %.sroa.0916.7, %bb.zm ], [ %.sroa.0916.6, %bb.ym ], [ %.sroa.0916.6, %bb.yk ], [ %.sroa.0916.7, %bb.zk ]
  %.sroa.0920.9 = phi i8 [ %.sroa.0920.7, %bb.zm ], [ %.sroa.0920.6, %bb.ym ], [ %.sroa.0920.6, %bb.yk ], [ %.sroa.0920.7, %bb.zk ]
  %i.bnl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bnm = extractvalue { ptr, i32 } %i.bnl, 0
  %i.bnn = extractvalue { ptr, i32 } %i.bnl, 1
  br label %bb.zu

bb.yn:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit", %.thread2944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jb)
  %i.bno = trunc nuw i8 %.sroa.0839.6 to i1
  br i1 %i.bno, label %bb.yq, label %"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit"

.thread2944:                                      ; preds = %.noexc2020, %bb.yl, %.noexc2021
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.jb)
          to label %bb.yn unwind label %bb.yp

bb.yo:                                            ; preds = %bb.zu, %bb.yp, %.thread
  %.sroa.0839.16 = phi i8 [ %.sroa.0839.17, %bb.yp ], [ %.sroa.0839.142955, %bb.zu ], [ %.sroa.0839.0, %.thread ]
  %.sroa.0905.9 = phi i8 [ %.sroa.0905.10, %bb.yp ], [ %.sroa.0905.72956, %bb.zu ], [ %.sroa.0905.0, %.thread ] ; 2 uses
  %.sroa.0909.10 = phi i8 [ %.sroa.0909.11, %bb.yp ], [ %.sroa.0909.82957, %bb.zu ], [ %.sroa.0909.0, %.thread ] ; 2 uses
  %.sroa.0911.10 = phi i8 [ %.sroa.0911.11, %bb.yp ], [ %.sroa.0911.82958, %bb.zu ], [ %.sroa.0911.0, %.thread ] ; 2 uses
  %.sroa.0913.10 = phi i8 [ %.sroa.0913.11, %bb.yp ], [ %.sroa.0913.82959, %bb.zu ], [ %.sroa.0913.0, %.thread ] ; 2 uses
  %.sroa.0916.10 = phi i8 [ %.sroa.0916.11, %bb.yp ], [ %.sroa.0916.82960, %bb.zu ], [ %.sroa.0916.0, %.thread ] ; 2 uses
  %.sroa.0920.10 = phi i8 [ %.sroa.0920.11, %bb.yp ], [ %.sroa.0920.82961, %bb.zu ], [ %.sroa.0920.0, %.thread ] ; 2 uses
  %.sroa.01391.61 = phi ptr [ %i.bnr, %bb.yp ], [ %.sroa.01391.602962, %bb.zu ], [ %.sroa.01391.0, %.thread ] ; 2 uses
  %.sroa.178.61 = phi i32 [ %i.bns, %bb.yp ], [ %.sroa.178.602963, %bb.zu ], [ %.sroa.178.0, %.thread ] ; 2 uses
  %i.bnp = trunc nuw i8 %.sroa.0839.16 to i1
  br i1 %i.bnp, label %.thread2975, label %"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit2062"

bb.yp:                                            ; preds = %.thread3020, %.thread2944
  %.sroa.0839.17 = phi i8 [ %.sroa.0839.7, %.thread3020 ], [ %.sroa.0839.6, %.thread2944 ]
  %.sroa.0905.10 = phi i8 [ %.sroa.0905.6, %.thread3020 ], [ %.sroa.0905.5, %.thread2944 ]
  %.sroa.0909.11 = phi i8 [ %.sroa.0909.7, %.thread3020 ], [ %.sroa.0909.6, %.thread2944 ]
  %.sroa.0911.11 = phi i8 [ %.sroa.0911.7, %.thread3020 ], [ %.sroa.0911.6, %.thread2944 ]
  %.sroa.0913.11 = phi i8 [ %.sroa.0913.7, %.thread3020 ], [ %.sroa.0913.6, %.thread2944 ]
  %.sroa.0916.11 = phi i8 [ %.sroa.0916.7, %.thread3020 ], [ %.sroa.0916.6, %.thread2944 ]
  %.sroa.0920.11 = phi i8 [ %.sroa.0920.7, %.thread3020 ], [ %.sroa.0920.6, %.thread2944 ]
  %i.bnq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bnr = extractvalue { ptr, i32 } %i.bnq, 0
  %i.bns = extractvalue { ptr, i32 } %i.bnq, 1
  br label %bb.yo

"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit": ; preds = %bb.zo, %bb.zp, %bb.yq, %bb.yr, %bb.zn, %bb.yn
  ret void

bb.yq:                                            ; preds = %bb.yn
  call void @llvm.experimental.noalias.scope.decl(metadata !69049)
  call void @llvm.experimental.noalias.scope.decl(metadata !69050)
  %i.bnt = load ptr, ptr %i.jd, align 8, !alias.scope !69051, !nonnull !57, !noundef !57
  %i.bnu = atomicrmw sub ptr %i.bnt, i64 1 release, align 8, !noalias !69051
  %i.bnv = icmp eq i64 %i.bnu, 1
  br i1 %i.bnv, label %bb.yr, label %"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit"

bb.yr:                                            ; preds = %bb.yq
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcd13572e96294f40E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jd)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit" unwind label %bb.ys

"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit2062": ; preds = %.thread2975, %bb.zv, %bb.ys, %bb.yo
  %.sroa.0905.11 = phi i8 [ %.sroa.0905.12, %bb.ys ], [ %.sroa.0905.9, %bb.yo ], [ %.sroa.0905.92985, %bb.zv ], [ %.sroa.0905.92985, %.thread2975 ]
  %.sroa.0909.12 = phi i8 [ %.sroa.0909.13, %bb.ys ], [ %.sroa.0909.10, %bb.yo ], [ %.sroa.0909.102986, %bb.zv ], [ %.sroa.0909.102986, %.thread2975 ]
  %.sroa.0911.12 = phi i8 [ %.sroa.0911.13, %bb.ys ], [ %.sroa.0911.10, %bb.yo ], [ %.sroa.0911.102987, %bb.zv ], [ %.sroa.0911.102987, %.thread2975 ]
  %.sroa.0913.12 = phi i8 [ %.sroa.0913.13, %bb.ys ], [ %.sroa.0913.10, %bb.yo ], [ %.sroa.0913.102988, %bb.zv ], [ %.sroa.0913.102988, %.thread2975 ]
  %.sroa.0916.12 = phi i8 [ %.sroa.0916.13, %bb.ys ], [ %.sroa.0916.10, %bb.yo ], [ %.sroa.0916.102989, %bb.zv ], [ %.sroa.0916.102989, %.thread2975 ]
  %.sroa.0920.12 = phi i8 [ %.sroa.0920.13, %bb.ys ], [ %.sroa.0920.10, %bb.yo ], [ %.sroa.0920.102990, %bb.zv ], [ %.sroa.0920.102990, %.thread2975 ]
  %.sroa.01391.62 = phi ptr [ %i.boc, %bb.ys ], [ %.sroa.01391.61, %bb.yo ], [ %.sroa.01391.612991, %bb.zv ], [ %.sroa.01391.612991, %.thread2975 ]
  %.sroa.178.62 = phi i32 [ %i.bod, %bb.ys ], [ %.sroa.178.61, %bb.yo ], [ %.sroa.178.612992, %bb.zv ], [ %.sroa.178.612992, %.thread2975 ]
  %i.bnw = load i64, ptr %4, align 8, !range !176, !noundef !57 ; 3 uses
  %i.bnx = icmp ne i64 %i.bnw, 21
  call void @llvm.assume(i1 %i.bnx)
  %i.bny = add nsw i64 %i.bnw, -20
  %i.bnz = icmp samesign ugt i64 %i.bnw, 19
  %i.boa = select i1 %i.bnz, i64 %i.bny, i64 1
  switch i64 %i.boa, label %bb.zw [
end_hunk_0
