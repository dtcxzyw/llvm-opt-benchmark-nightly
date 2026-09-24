Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN15index_scheduler9scheduler23process_index_operation49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$21apply_index_operation17h8d89136bacbc4572E":bb.a
          to label %.thread2912 unwind label %bb.s

.thread2879:                                      ; preds = %.thread2912, %.thread2891
  %.pn1415.pn.pn2883 = phi { ptr, i32 } [ %lpad.thr_comm2889, %.thread2891 ], [ %.pn1415.pn, %.thread2912 ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$milli..update..settings..Settings$GT$17h755f842cd0e76afbE"(ptr noalias noundef align 8 dereferenceable(880) %i.cm) #81
          to label %.thread2884 unwind label %bb.s

.thread2903:                                      ; preds = %.body.i1971, %bb.ww, %bb.xq, %bb.xa
  %.pn3058 = phi { ptr, i32 } [ %.pn1415.pn.pn.pn, %bb.xa ], [ %.pn1415.pn.pn.pn, %bb.xq ], [ %i.bjm, %bb.ww ], [ %i.bjm, %.body.i1971 ] ; 2 uses
  %.sroa.0839.112909 = phi i8 [ %.sroa.0839.8, %bb.xa ], [ %.sroa.0839.8, %bb.xq ], [ 0, %bb.ww ], [ 0, %.body.i1971 ] ; 2 uses
  %.sroa.178.552910 = extractvalue { ptr, i32 } %.pn3058, 1 ; 2 uses
  %.sroa.01391.552911 = extractvalue { ptr, i32 } %.pn3058, 0 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69052)
  call void @llvm.experimental.noalias.scope.decl(metadata !69053)
  %.val.i.i1988 = load i64, ptr %i.cp, align 8, !range !56, !alias.scope !69054, !noundef !57 ; 2 uses
  %i.bkk = icmp eq i64 %.val.i.i1988, 0
  br i1 %i.bkk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit", label %bb.xp

bb.xp:                                            ; preds = %.thread2903
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.val1.i.i1989 = load ptr, ptr %i.bkl, align 8, !alias.scope !69054, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1989, i64 noundef %.val.i.i1988, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !69054
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"

bb.xq:                                            ; preds = %bb.xa
  invoke void @"_ZN4core3ptr142drop_in_place$LT$alloc..vec..Vec$LT$$LP$bool$C$meilisearch_types..settings..Settings$LT$meilisearch_types..settings..Unchecked$GT$$RP$$GT$$GT$17hf59770cf4b24fd10E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.co) #81
          to label %.thread2903 unwind label %bb.s

bb.xr:                                            ; preds = %bb.ae
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkm, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkn, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  store i64 23, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %i.bko = load ptr, ptr %i.je, align 8, !nonnull !57, !noundef !57
  %i.bkp = atomicrmw add ptr %i.bko, i64 1 monotonic, align 8
  %i.bkq = icmp slt i64 %i.bkp, 0
  br i1 %i.bkq, label %bb.xt, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.bkr = load ptr, ptr %i.je, align 8, !nonnull !57, !noundef !57
  %i.bks = load ptr, ptr %i.jd, align 8, !nonnull !57, !align !61, !noundef !57
  invoke fastcc void @"_ZN15index_scheduler9scheduler23process_index_operation49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$21apply_index_operation17h8d89136bacbc4572E"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %1, ptr noalias noundef align 8 dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %3, ptr noalias noundef align 8 captures(address) dereferenceable(808) %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %5, ptr noundef nonnull %i.bkr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bks)
          to label %bb.xu unwind label %bb.zr

bb.xt:                                            ; preds = %bb.xr
  call void @llvm.trap()
  unreachable

bb.xu:                                            ; preds = %bb.xs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.bkt = load i64, ptr %i.bz, align 8, !range !80, !noundef !57 ; 2 uses
  %.not1398 = icmp eq i64 %i.bkt, 152
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7794, ptr noundef nonnull align 8 dereferenceable(48) %i.bku, i64 48, i1 false)
  br i1 %.not1398, label %bb.xv, label %bb.yu

bb.xv:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7794, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7794)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkv, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkw, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkx, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  store i64 24, ptr %i.bv, align 8
  %i.bky = load ptr, ptr %i.je, align 8, !nonnull !57, !noundef !57
  %i.bkz = load ptr, ptr %i.jd, align 8, !nonnull !57, !align !61, !noundef !57
  invoke fastcc void @"_ZN15index_scheduler9scheduler23process_index_operation49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$21apply_index_operation17h8d89136bacbc4572E"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %1, ptr noalias noundef align 8 dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %3, ptr noalias noundef align 8 captures(address) dereferenceable(808) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %5, ptr noundef nonnull %i.bky, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bkz)
          to label %bb.xy unwind label %bb.xx

bb.xw:                                            ; preds = %bb.yi, %bb.xx
  %.pn = phi { ptr, i32 } [ %i.bmc, %bb.yi ], [ %i.bla, %bb.xx ]
  invoke void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca) #81
          to label %.thread3035 unwind label %bb.s

bb.xx:                                            ; preds = %bb.xv
  %i.bla = landingpad { ptr, i32 }
          cleanup
  br label %bb.xw

bb.xy:                                            ; preds = %bb.xv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.blb = load i64, ptr %i.bw, align 8, !range !80, !noundef !57 ; 2 uses
  %.not1400 = icmp eq i64 %i.blb, 152
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7803, ptr noundef nonnull align 8 dereferenceable(48) %i.blc, i64 48, i1 false)
  br i1 %.not1400, label %bb.yg, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  %.sroa.51352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %.sroa.31355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.31355.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.51352.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %.sroa.21354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21354.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7803, i64 48, i1 false)
  store i64 %i.blb, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7803)
  call void @llvm.experimental.noalias.scope.decl(metadata !69055)
  %i.bld = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.val.i1991 = load ptr, ptr %i.bld, align 8, !alias.scope !69055, !nonnull !57, !noundef !57 ; 4 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.val1.i1992 = load i64, ptr %i.ble, align 8, !alias.scope !69055, !noundef !57 ; 4 uses
  %i.blf = icmp eq i64 %.val1.i1992, 0
  br i1 %i.blf, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i1998", label %.lr.ph3717

bb.ya:                                            ; preds = %.lr.ph3717
  %i.blg = icmp eq i64 %i.bli, %.val1.i1992
  br i1 %i.blg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i1998", label %.lr.ph3717

.lr.ph3717:                                       ; preds = %bb.xz, %bb.ya
  %.sroa.0.0.i.i.i19933715 = phi i64 [ %i.bli, %bb.ya ], [ 0, %bb.xz ] ; 2 uses
  %i.blh = getelementptr inbounds nuw [784 x i8], ptr %.val.i1991, i64 %.sroa.0.0.i.i.i19933715
  %i.bli = add i64 %.sroa.0.0.i.i.i19933715, 1    ; 4 uses
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.blh)
          to label %bb.ya unwind label %bb.yc, !noalias !69055

bb.yb:                                            ; preds = %.lr.ph3720
  %i.blj = add i64 %.sroa.0.1.i.i.i19943718, 1    ; 2 uses
  %i.blk = icmp eq i64 %i.blj, %.val1.i1992
  br i1 %i.blk, label %.body.i1995, label %.lr.ph3720

bb.yc:                                            ; preds = %.lr.ph3717
  %i.bll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.blm = icmp eq i64 %i.bli, %.val1.i1992
  br i1 %i.blm, label %.body.i1995, label %.lr.ph3720

.lr.ph3720:                                       ; preds = %bb.yc, %bb.yb
  %.sroa.0.1.i.i.i19943718 = phi i64 [ %i.blj, %bb.yb ], [ %i.bli, %bb.yc ] ; 2 uses
  %i.bln = getelementptr inbounds nuw [784 x i8], ptr %.val.i1991, i64 %.sroa.0.1.i.i.i19943718
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.bln) #81
          to label %bb.yb unwind label %bb.yd, !noalias !69055

bb.yd:                                            ; preds = %.lr.ph3720
  %i.blo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !69055
  unreachable

.body.i1995:                                      ; preds = %bb.yb, %bb.yc
  %.val4.i1996 = load i64, ptr %i.ca, align 8, !range !56, !alias.scope !69055, !noundef !57 ; 2 uses
  %i.blp = icmp eq i64 %.val4.i1996, 0
  br i1 %i.blp, label %.thread3035, label %bb.ye

bb.ye:                                            ; preds = %.body.i1995
  %i.blq = mul nuw i64 %.val4.i1996, 784
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1991, i64 noundef %i.blq, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69055
  br label %.thread3035

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i1998": ; preds = %bb.ya, %bb.xz
  %.val2.i1999 = load i64, ptr %i.ca, align 8, !range !56, !alias.scope !69055, !noundef !57 ; 2 uses
  %i.blr = icmp eq i64 %.val2.i1999, 0
  br i1 %i.blr, label %bb.zb, label %bb.yf

bb.yf:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i1998"
  %i.bls = mul nuw i64 %.val2.i1999, 784
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1991, i64 noundef %i.bls, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69055
  br label %bb.zb

bb.yg:                                            ; preds = %bb.xy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7803, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7803)
  call void @llvm.experimental.noalias.scope.decl(metadata !69056)
  call void @llvm.experimental.noalias.scope.decl(metadata !69057)
  %i.blt = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.blu = load ptr, ptr %i.blt, align 8, !alias.scope !69057, !noalias !69056, !nonnull !57, !noundef !57 ; 2 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.blw = load i64, ptr %i.blv, align 8, !alias.scope !69057, !noalias !69056, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69058)
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  %i.bly = load i64, ptr %i.blx, align 8, !alias.scope !69059, !noalias !69057, !noundef !57 ; 3 uses
  %i.blz = load i64, ptr %i.bu, align 8, !range !56, !alias.scope !69059, !noalias !69057, !noundef !57
  %i.bma = sub i64 %i.blz, %i.bly
  %i.bmb = icmp ugt i64 %i.blw, %i.bma
  br i1 %i.bmb, label %bb.yh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011", !prof !60

bb.yh:                                            ; preds = %bb.yg
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu, i64 noundef %i.bly, i64 noundef %i.blw, i64 noundef 8, i64 noundef 784)
          to label %.noexc2003 unwind label %bb.yi

.noexc2003:                                       ; preds = %bb.yh
  %.pre.i.i = load i64, ptr %i.blx, align 8, !alias.scope !69060, !noalias !69057
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011"

bb.yi:                                            ; preds = %bb.yh
  %i.bmc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu) #81
          to label %bb.xw unwind label %bb.s

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011": ; preds = %.noexc2003, %bb.yg
  %i.bmd = phi i64 [ %i.bly, %bb.yg ], [ %.pre.i.i, %.noexc2003 ] ; 3 uses
  %i.bme = icmp ult i64 %i.bmd, 11764505149049459
  call void @llvm.assume(i1 %i.bme)
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bmg = load ptr, ptr %i.bmf, align 8, !alias.scope !69060, !noalias !69057, !nonnull !57, !noundef !57
  %i.bmh = getelementptr inbounds nuw [784 x i8], ptr %i.bmg, i64 %i.bmd
  %i.bmi = mul i64 %i.blw, 784
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bmh, ptr nonnull readonly align 8 %i.blu, i64 %i.bmi, i1 false), !noalias !69061
  %i.bmj = add i64 %i.bmd, %i.blw
  store i64 %i.bmj, ptr %i.blx, align 8, !alias.scope !69060, !noalias !69057
  %i.bmk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmk, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %.sroa.4813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.4813.0..sroa_idx, align 8
  store i64 152, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.experimental.noalias.scope.decl(metadata !69062)
  %.val2.i2012 = load i64, ptr %i.ca, align 8, !range !56, !alias.scope !69062, !noundef !57 ; 2 uses
  %i.bml = icmp eq i64 %.val2.i2012, 0
  br i1 %i.bml, label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E.exit2017", label %bb.yj

bb.yj:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011"
  %i.bmm = mul nuw i64 %.val2.i2012, 784
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.blu, i64 noundef %i.bmm, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69062
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E.exit2017"

"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E.exit2017": ; preds = %bb.yj, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i2011"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.dr

"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit1686": ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ip)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %.val1645 = load ptr, ptr %i.bmn, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.bmo = icmp eq ptr %.val1645, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.bmo, label %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit", label %.lr.ph.i.i2018

.lr.ph.i.i2018:                                   ; preds = %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit1686", %.lr.ph.i.i2018
  %.sroa.0.01.i.i = phi ptr [ %i.bmq, %.lr.ph.i.i2018 ], [ %.val1645, %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit1686" ] ; 4 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 24
  %i.bmq = load ptr, ptr %i.bmp, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.bmr = load ptr, ptr %.sroa.0.01.i.i, align 16, !nonnull !57, !noundef !57
  %i.bms = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 8
  %i.bmt = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16
  %i.bmu = load i64, ptr %i.bmt, align 16, !noundef !57
  %i.bmv = load i64, ptr %i.bms, align 8, !range !109, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bmr, i64 noundef %i.bmu, i64 noundef %i.bmv) #79
  %i.bmw = icmp eq ptr %i.bmq, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.bmw, label %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit", label %.lr.ph.i.i2018

"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit": ; preds = %.lr.ph.i.i2018, %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit1686"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ir)
  %i.bmx = trunc nuw i8 %.sroa.0833.2 to i1
  br i1 %i.bmx, label %bb.yk, label %bb.yo

bb.yk:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !69063)
  %i.bmy = load i64, ptr %i.jc, align 8, !range !72, !alias.scope !69063, !noalias !69064, !noundef !57
  %.not.i.i2019 = icmp eq i64 %i.bmy, 2
  br i1 %.not.i.i2019, label %.noexc2020, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bmz)
          to label %.noexc2020 unwind label %.thread.thread

.noexc2020:                                       ; preds = %bb.yl, %bb.yk
  %i.bna = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !69064
  %i.bnb = icmp eq i8 %i.bna, 0
  br i1 %i.bnb, label %bb.ym, label %.thread2944

bb.ym:                                            ; preds = %.noexc2020
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.bnd = load ptr, ptr %i.bnc, align 8, !alias.scope !69063, !noalias !69064, !align !61, !noundef !57 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.bnd, null
  br i1 %.not4.i.i, label %.thread2944, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !69065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !69065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !69065
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 16
  %i.bnf = load ptr, ptr %i.bne, align 8, !noalias !69064, !nonnull !57, !align !64, !noundef !57
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnd, i64 24
  %i.bnh = load i64, ptr %i.bng, align 8, !noalias !69064, !noundef !57
  store ptr %i.bnf, ptr %i.e, align 8, !noalias !69065
  %i.bni = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bnh, ptr %i.bni, align 8, !noalias !69065
  store ptr %i.e, ptr %i.f, align 8, !noalias !69065
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !69065
  store ptr @4685, ptr %i.g, align 8, !noalias !69065
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.bnj, align 8, !noalias !69065
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bnk, align 8, !noalias !69065
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.bnl, align 8, !noalias !69065
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %i.bnm, align 8, !noalias !69065
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.jc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.g)
          to label %.noexc2021 unwind label %.thread.thread

.noexc2021:                                       ; preds = %bb.yn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !69065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !69065
  br label %.thread2944

.thread:                                          ; preds = %bb.zu, %bb.b
  %i.bnn = trunc nuw i8 %.sroa.0836.0 to i1
  br i1 %i.bnn, label %bb.zv, label %bb.yp

.thread.thread:                                   ; preds = %bb.yn, %bb.zn, %bb.yl, %bb.zl
  %.sroa.0839.15 = phi i8 [ %.sroa.0839.7, %bb.zn ], [ %.sroa.0839.6, %bb.yn ], [ %.sroa.0839.6, %bb.yl ], [ %.sroa.0839.7, %bb.zl ]
  %.sroa.0905.8 = phi i8 [ %.sroa.0905.6, %bb.zn ], [ %.sroa.0905.5, %bb.yn ], [ %.sroa.0905.5, %bb.yl ], [ %.sroa.0905.6, %bb.zl ]
  %.sroa.0909.9 = phi i8 [ %.sroa.0909.7, %bb.zn ], [ %.sroa.0909.6, %bb.yn ], [ %.sroa.0909.6, %bb.yl ], [ %.sroa.0909.7, %bb.zl ]
  %.sroa.0911.9 = phi i8 [ %.sroa.0911.7, %bb.zn ], [ %.sroa.0911.6, %bb.yn ], [ %.sroa.0911.6, %bb.yl ], [ %.sroa.0911.7, %bb.zl ]
  %.sroa.0913.9 = phi i8 [ %.sroa.0913.7, %bb.zn ], [ %.sroa.0913.6, %bb.yn ], [ %.sroa.0913.6, %bb.yl ], [ %.sroa.0913.7, %bb.zl ]
  %.sroa.0916.9 = phi i8 [ %.sroa.0916.7, %bb.zn ], [ %.sroa.0916.6, %bb.yn ], [ %.sroa.0916.6, %bb.yl ], [ %.sroa.0916.7, %bb.zl ]
  %.sroa.0920.9 = phi i8 [ %.sroa.0920.7, %bb.zn ], [ %.sroa.0920.6, %bb.yn ], [ %.sroa.0920.6, %bb.yl ], [ %.sroa.0920.7, %bb.zl ]
  %i.bno = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bnp = extractvalue { ptr, i32 } %i.bno, 0
  %i.bnq = extractvalue { ptr, i32 } %i.bno, 1
  br label %bb.zv

bb.yo:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17h97a5df3a57b36b27E.exit", %.thread2944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  %i.bnr = trunc nuw i8 %.sroa.0839.6 to i1
  br i1 %i.bnr, label %bb.yr, label %"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit"

.thread2944:                                      ; preds = %.noexc2020, %bb.ym, %.noexc2021
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.jc)
          to label %bb.yo unwind label %bb.yq

bb.yp:                                            ; preds = %bb.zv, %bb.yq, %.thread
  %.sroa.0839.16 = phi i8 [ %.sroa.0839.17, %bb.yq ], [ %.sroa.0839.142955, %bb.zv ], [ %.sroa.0839.0, %.thread ]
  %.sroa.0905.9 = phi i8 [ %.sroa.0905.10, %bb.yq ], [ %.sroa.0905.72956, %bb.zv ], [ %.sroa.0905.0, %.thread ] ; 2 uses
  %.sroa.0909.10 = phi i8 [ %.sroa.0909.11, %bb.yq ], [ %.sroa.0909.82957, %bb.zv ], [ %.sroa.0909.0, %.thread ] ; 2 uses
  %.sroa.0911.10 = phi i8 [ %.sroa.0911.11, %bb.yq ], [ %.sroa.0911.82958, %bb.zv ], [ %.sroa.0911.0, %.thread ] ; 2 uses
  %.sroa.0913.10 = phi i8 [ %.sroa.0913.11, %bb.yq ], [ %.sroa.0913.82959, %bb.zv ], [ %.sroa.0913.0, %.thread ] ; 2 uses
  %.sroa.0916.10 = phi i8 [ %.sroa.0916.11, %bb.yq ], [ %.sroa.0916.82960, %bb.zv ], [ %.sroa.0916.0, %.thread ] ; 2 uses
  %.sroa.0920.10 = phi i8 [ %.sroa.0920.11, %bb.yq ], [ %.sroa.0920.82961, %bb.zv ], [ %.sroa.0920.0, %.thread ] ; 2 uses
  %.sroa.01391.61 = phi ptr [ %i.bnu, %bb.yq ], [ %.sroa.01391.602962, %bb.zv ], [ %.sroa.01391.0, %.thread ] ; 2 uses
  %.sroa.178.61 = phi i32 [ %i.bnv, %bb.yq ], [ %.sroa.178.602963, %bb.zv ], [ %.sroa.178.0, %.thread ] ; 2 uses
  %i.bns = trunc nuw i8 %.sroa.0839.16 to i1
  br i1 %i.bns, label %.thread2975, label %"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit2062"

bb.yq:                                            ; preds = %.thread3020, %.thread2944
  %.sroa.0839.17 = phi i8 [ %.sroa.0839.7, %.thread3020 ], [ %.sroa.0839.6, %.thread2944 ]
  %.sroa.0905.10 = phi i8 [ %.sroa.0905.6, %.thread3020 ], [ %.sroa.0905.5, %.thread2944 ]
  %.sroa.0909.11 = phi i8 [ %.sroa.0909.7, %.thread3020 ], [ %.sroa.0909.6, %.thread2944 ]
  %.sroa.0911.11 = phi i8 [ %.sroa.0911.7, %.thread3020 ], [ %.sroa.0911.6, %.thread2944 ]
  %.sroa.0913.11 = phi i8 [ %.sroa.0913.7, %.thread3020 ], [ %.sroa.0913.6, %.thread2944 ]
  %.sroa.0916.11 = phi i8 [ %.sroa.0916.7, %.thread3020 ], [ %.sroa.0916.6, %.thread2944 ]
  %.sroa.0920.11 = phi i8 [ %.sroa.0920.7, %.thread3020 ], [ %.sroa.0920.6, %.thread2944 ]
  %i.bnt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bnu = extractvalue { ptr, i32 } %i.bnt, 0
  %i.bnv = extractvalue { ptr, i32 } %i.bnt, 1
  br label %bb.yp

"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit": ; preds = %bb.zp, %bb.zq, %bb.yr, %bb.ys, %bb.zo, %bb.yo
  ret void

bb.yr:                                            ; preds = %bb.yo
  call void @llvm.experimental.noalias.scope.decl(metadata !69066)
  call void @llvm.experimental.noalias.scope.decl(metadata !69067)
  %i.bnw = load ptr, ptr %i.je, align 8, !alias.scope !69068, !nonnull !57, !noundef !57
  %i.bnx = atomicrmw sub ptr %i.bnw, i64 1 release, align 8, !noalias !69068
  %i.bny = icmp eq i64 %i.bnx, 1
  br i1 %i.bny, label %bb.ys, label %"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit"

bb.ys:                                            ; preds = %bb.yr
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcd13572e96294f40E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.je)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit" unwind label %bb.yt

"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$milli..progress..EmbedderStats$GT$$GT$17hbe42359e238bcc7eE.exit2062": ; preds = %.thread2975, %bb.zw, %bb.yt, %bb.yp
  %.sroa.0905.11 = phi i8 [ %.sroa.0905.12, %bb.yt ], [ %.sroa.0905.9, %bb.yp ], [ %.sroa.0905.92985, %bb.zw ], [ %.sroa.0905.92985, %.thread2975 ]
  %.sroa.0909.12 = phi i8 [ %.sroa.0909.13, %bb.yt ], [ %.sroa.0909.10, %bb.yp ], [ %.sroa.0909.102986, %bb.zw ], [ %.sroa.0909.102986, %.thread2975 ]
  %.sroa.0911.12 = phi i8 [ %.sroa.0911.13, %bb.yt ], [ %.sroa.0911.10, %bb.yp ], [ %.sroa.0911.102987, %bb.zw ], [ %.sroa.0911.102987, %.thread2975 ]
  %.sroa.0913.12 = phi i8 [ %.sroa.0913.13, %bb.yt ], [ %.sroa.0913.10, %bb.yp ], [ %.sroa.0913.102988, %bb.zw ], [ %.sroa.0913.102988, %.thread2975 ]
  %.sroa.0916.12 = phi i8 [ %.sroa.0916.13, %bb.yt ], [ %.sroa.0916.10, %bb.yp ], [ %.sroa.0916.102989, %bb.zw ], [ %.sroa.0916.102989, %.thread2975 ]
  %.sroa.0920.12 = phi i8 [ %.sroa.0920.13, %bb.yt ], [ %.sroa.0920.10, %bb.yp ], [ %.sroa.0920.102990, %bb.zw ], [ %.sroa.0920.102990, %.thread2975 ]
  %.sroa.01391.62 = phi ptr [ %i.bof, %bb.yt ], [ %.sroa.01391.61, %bb.yp ], [ %.sroa.01391.612991, %bb.zw ], [ %.sroa.01391.612991, %.thread2975 ]
  %.sroa.178.62 = phi i32 [ %i.bog, %bb.yt ], [ %.sroa.178.61, %bb.yp ], [ %.sroa.178.612992, %bb.zw ], [ %.sroa.178.612992, %.thread2975 ]
  %i.bnz = load i64, ptr %4, align 8, !range !176, !noundef !57 ; 3 uses
  %i.boa = icmp ne i64 %i.bnz, 21
  call void @llvm.assume(i1 %i.boa)
  %i.bob = add nsw i64 %i.bnz, -20
  %i.boc = icmp samesign ugt i64 %i.bnz, 19
  %i.bod = select i1 %i.boc, i64 %i.bob, i64 1
  switch i64 %i.bod, label %bb.zx [
end_hunk_0
