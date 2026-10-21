Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-b763c3982f933b22.xtask.67f4837adcdb5ddd-cgu.0?download=true
inline.NumInlined: 1754
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5xtask4main17hb2a19bbcbf99ae36E:bb.a

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2952
  br label %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit259.i"

bb.la:                                            ; preds = %bb.kx
  %.sroa.5265.0.copyload.i = load ptr, ptr %i.aqi, align 8, !alias.scope !2960, !noalias !2952
  %.sroa.8266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i49, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8266.0..sroa_idx.i, i64 24, i1 false), !noalias !2952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2952
  store ptr %i.aqg, ptr %i.af, align 8, !noalias !2952
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  store ptr %.sroa.5265.0.copyload.i, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2952
  invoke void @_ZN3std3sys7process4unix6common7Command3new17h32f380f7324f3eb9E(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 3)
          to label %_ZN3std7process7Command3new17h2f4a22ac4feaf262E.exit.i unwind label %bb.lb, !noalias !2952

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57d535e9657c666bE.exit250.i": ; preds = %bb.od, %.thread358.i, %bb.lh, %bb.lc, %bb.lb
  %.sroa.066.0.i = phi i1 [ true, %bb.lb ], [ true, %bb.lc ], [ true, %bb.lh ], [ %.sroa.066.2356.i, %.thread358.i ], [ %.sroa.066.2356.i, %bb.od ]
  %.pn140.i = phi { ptr, i32 } [ %i.aqk, %bb.lb ], [ %i.aql, %bb.lc ], [ %i.aqr, %bb.lh ], [ %.pn137.pn357.i, %.thread358.i ], [ %.pn137.pn357.i, %bb.od ] ; 2 uses
  invoke void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ecab61e92e8d70fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i" unwind label %bb.mx, !noalias !2952

bb.lb:                                            ; preds = %bb.ok, %bb.og, %bb.lg, %bb.lf, %bb.la
  %i.aqk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57d535e9657c666bE.exit250.i"

_ZN3std7process7Command3new17h2f4a22ac4feaf262E.exit.i: ; preds = %bb.la
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 5)
          to label %_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit.i unwind label %bb.lc, !noalias !2952

bb.lc:                                            ; preds = %bb.le, %_ZN3std7process7Command6stdout17h4f318eedb403281fE.exit.i, %_ZN3std7process7Command6stderr17h341d30532994d7f4E.exit.i, %_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit172.i, %_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit.i, %_ZN3std7process7Command3new17h2f4a22ac4feaf262E.exit.i
  %i.aql = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h6febe175de8157c8E"(ptr noalias noundef align 8 dereferenceable(200) %i.ac) #30
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57d535e9657c666bE.exit250.i" unwind label %bb.mx, !noalias !2952

_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit.i: ; preds = %_ZN3std7process7Command3new17h2f4a22ac4feaf262E.exit.i
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @83, i64 noundef 6)
          to label %_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit172.i unwind label %bb.lc, !noalias !2952

_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit172.i: ; preds = %_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit.i
  invoke void @_ZN3std3sys7process4unix6common7Command6stderr17hd7052753016cfca5E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ac, i32 noundef 1, i32 undef)
          to label %_ZN3std7process7Command6stderr17h341d30532994d7f4E.exit.i unwind label %bb.lc, !noalias !2952

_ZN3std7process7Command6stderr17h341d30532994d7f4E.exit.i: ; preds = %_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit172.i
  invoke void @_ZN3std3sys7process4unix6common7Command6stdout17h63af7acfe2898a32E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ac, i32 noundef 1, i32 undef)
          to label %_ZN3std7process7Command6stdout17h4f318eedb403281fE.exit.i unwind label %bb.lc, !noalias !2952

_ZN3std7process7Command6stdout17h4f318eedb403281fE.exit.i: ; preds = %_ZN3std7process7Command6stderr17h341d30532994d7f4E.exit.i
  invoke void @_ZN3std7process7Command6status17h723e776ba6341907E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ac)
          to label %bb.ld unwind label %bb.lc, !noalias !2952

bb.ld:                                            ; preds = %_ZN3std7process7Command6stdout17h4f318eedb403281fE.exit.i
  %i.aqm = load i32, ptr %i.ad, align 8, !range !2961, !noalias !2952, !noundef !9
  %i.aqn = trunc nuw i32 %i.aqm to i1
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aqp = load ptr, ptr %i.aqo, align 8, !noalias !2952, !nonnull !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2952
  br i1 %i.aqn, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  %i.aqq = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17he94eaa1a3d29d204E"(ptr noundef nonnull %i.aqp)
          to label %bb.ok unwind label %bb.lc, !noalias !2952

bb.lf:                                            ; preds = %bb.ld
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h6febe175de8157c8E"(ptr noalias noundef align 8 dereferenceable(200) %i.ac)
          to label %bb.lg unwind label %bb.lb, !noalias !2952

bb.lg:                                            ; preds = %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2952
  invoke void @_ZN3std3sys7process4unix6common7Command3new17h32f380f7324f3eb9E(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 3)
          to label %_ZN3std7process7Command3new17h2f4a22ac4feaf262E.exit176.i unwind label %bb.lb, !noalias !2952

_ZN3std7process7Command3new17h2f4a22ac4feaf262E.exit176.i: ; preds = %bb.lg
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 3)
          to label %_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit178.i unwind label %bb.lh, !noalias !2952

bb.lh:                                            ; preds = %bb.lj, %_ZN3std7process7Command6stderr17h341d30532994d7f4E.exit182.i, %_ZN3std7process7Command4args17h81538fb641f01e51E.exit.i, %.noexc179.i, %_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit178.i, %_ZN3std7process7Command3new17h2f4a22ac4feaf262E.exit176.i
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h6febe175de8157c8E"(ptr noalias noundef align 8 dereferenceable(200) %i.aa) #30
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57d535e9657c666bE.exit250.i" unwind label %bb.mx, !noalias !2952

_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit178.i: ; preds = %_ZN3std7process7Command3new17h2f4a22ac4feaf262E.exit176.i
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @85, i64 noundef 6)
          to label %.noexc179.i unwind label %bb.lh, !noalias !2952

.noexc179.i:                                      ; preds = %_ZN3std7process7Command3arg17h5a7d389f93e6946eE.exit178.i
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 12)
          to label %_ZN3std7process7Command4args17h81538fb641f01e51E.exit.i unwind label %bb.lh, !noalias !2952

_ZN3std7process7Command4args17h81538fb641f01e51E.exit.i: ; preds = %.noexc179.i
  invoke void @_ZN3std3sys7process4unix6common7Command6stderr17hd7052753016cfca5E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aa, i32 noundef 0, i32 undef)
          to label %_ZN3std7process7Command6stderr17h341d30532994d7f4E.exit182.i unwind label %bb.lh, !noalias !2952

_ZN3std7process7Command6stderr17h341d30532994d7f4E.exit182.i: ; preds = %_ZN3std7process7Command4args17h81538fb641f01e51E.exit.i
  invoke void @_ZN3std7process7Command6output17h43c2bcdedd19a7a1E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aa)
          to label %bb.li unwind label %bb.lh, !noalias !2952

bb.li:                                            ; preds = %_ZN3std7process7Command6stderr17h341d30532994d7f4E.exit182.i
  %i.aqs = load i64, ptr %i.ab, align 8, !range !21, !noalias !2952, !noundef !9 ; 4 uses
  %i.aqt = icmp eq i64 %i.aqs, -9223372036854775808
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aqv = load ptr, ptr %i.aqu, align 8, !noalias !2952 ; 4 uses
  br i1 %i.aqt, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2952
  %i.aqw = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17he94eaa1a3d29d204E"(ptr noundef nonnull %i.aqv)
          to label %bb.og unwind label %bb.lh, !noalias !2952

bb.lk:                                            ; preds = %bb.li
  %.sroa.572.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.572.sroa.0.0.copyload.i = load i64, ptr %.sroa.572.0..sroa_idx.i, align 8, !noalias !2952
  %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.572.sroa.4.0.copyload.i = load i64, ptr %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx.i, align 8, !noalias !2952 ; 6 uses
  %.sroa.572.sroa.5.0..sroa.572.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.572.sroa.5.0.copyload.i = load ptr, ptr %.sroa.572.sroa.5.0..sroa.572.0..sroa_idx.sroa_idx.i, align 8, !noalias !2952 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2952
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h6febe175de8157c8E"(ptr noalias noundef align 8 dereferenceable(200) %i.aa)
          to label %bb.ll unwind label %bb.oe, !noalias !2952

.thread365.i:                                     ; preds = %"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17hbc7a9aedeff4faddE.exit.i.i", %bb.ll
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread358.i

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2952
  store i64 %i.aqs, ptr %i.y, align 8, !noalias !2952
  %.sroa.6268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.aqv, ptr %.sroa.6268.0..sroa_idx.i, align 8, !noalias !2952
  %.sroa.8269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sroa.572.sroa.0.0.copyload.i, ptr %.sroa.8269.0..sroa_idx.i, align 8, !noalias !2952
  invoke void @"_ZN97_$LT$alloc..string..String$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$8try_from17he31f0cdc17d8d2c7E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.lm unwind label %.thread365.i, !noalias !2952

bb.lm:                                            ; preds = %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2952
  call void @llvm.experimental.noalias.scope.decl(metadata !2962)
  call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  %i.aqx = load i64, ptr %i.z, align 8, !range !21, !alias.scope !2963, !noalias !2952, !noundef !9 ; 4 uses
  %.not.i183.i = icmp eq i64 %i.aqx, -9223372036854775808
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %.not.i183.i, label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h22d137fdcb7b7aa8E.exit.i", label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %.sroa.3.0.copyload.i.i = load ptr, ptr %i.aqy, align 8, !alias.scope !2963, !noalias !2952 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2965
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g)
          to label %"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17hbc7a9aedeff4faddE.exit.i.i" unwind label %bb.lo, !noalias !2965

bb.lo:                                            ; preds = %bb.ln
  %i.aqz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ara = icmp eq i64 %i.aqx, 0
  br i1 %i.ara, label %.thread358.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i, i64 noundef %i.aqx, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2966
  br label %.thread358.i

"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17hbc7a9aedeff4faddE.exit.i.i": ; preds = %bb.ln
  %.sroa.4.0..sroa_idx.i184.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !2965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2965
  store ptr @87, ptr %i.f, align 8, !noalias !2967
  %i.arb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 43, ptr %i.arb, align 8, !noalias !2967
  %i.arc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.aqx, ptr %i.arc, align 8, !noalias !2968
  %.sroa.3.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.3.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx2.i.i, align 8, !noalias !2968
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx4.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i184.i, i64 24, i1 false), !noalias !2969
  %i.ard = invoke fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h3a206eb4ee591346E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h22d137fdcb7b7aa8E.exit.thread.i" unwind label %.thread365.i, !noalias !2952

"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h22d137fdcb7b7aa8E.exit.thread.i": ; preds = %"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17hbc7a9aedeff4faddE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2952
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit193.i"

"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h22d137fdcb7b7aa8E.exit.i": ; preds = %bb.lm
  %.sroa.0278.0.copyload.i = load i64, ptr %i.aqy, align 8, !alias.scope !2970, !noalias !2952 ; 7 uses
  %.sroa.5279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5279.0.copyload.i = load ptr, ptr %.sroa.5279.0..sroa_idx.i, align 8, !alias.scope !2970, !noalias !2952 ; 10 uses
  %.sroa.8280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.8280.0.copyload.i = load i64, ptr %.sroa.8280.0..sroa_idx.i, align 8, !alias.scope !2970, !noalias !2952 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2952
  %i.are = icmp eq i64 %.sroa.0278.0.copyload.i, -9223372036854775808
  br i1 %i.are, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit193.i", label %.lr.ph.lr.ph.i

.body236.i:                                       ; preds = %.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ob, %bb.ny, %.body221.i, %bb.mt, %bb.mr, %bb.mq, %bb.mj, %bb.mi
  %.sroa.066.4.i = phi i1 [ true, %bb.mi ], [ true, %.body221.i ], [ true, %bb.mj ], [ true, %bb.ob ], [ false, %bb.mr ], [ true, %bb.ny ], [ false, %bb.mt ], [ false, %bb.mq ], [ true, %.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn137.i = phi { ptr, i32 } [ %i.ats, %bb.mi ], [ %.pn135.i, %.body221.i ], [ %i.ats, %bb.mj ], [ %i.awh, %bb.ob ], [ %i.aul, %bb.mr ], [ %i.awf, %bb.ny ], [ %i.aum, %bb.mt ], [ %i.aub, %bb.mq ], [ %lpad.loopexit.split-lp660, %.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.arf = icmp eq i64 %.sroa.0278.0.copyload.i, 0
  br i1 %i.arf, label %.thread358.i, label %bb.lq

bb.lq:                                            ; preds = %.body236.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5279.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5279.0.copyload.i, i64 noundef %.sroa.0278.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2971
  br label %.thread358.i

.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i243.i", %bb.na, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i, %"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i234.i", %.noexc191.i, %bb.mg, %bb.mf, %bb.mc, %bb.mb
  %lpad.loopexit.split-lp660 = landingpad { ptr, i32 }
          cleanup
  br label %.body236.i

.lr.ph.lr.ph.i:                                   ; preds = %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h22d137fdcb7b7aa8E.exit.i"
  %.not131.i = icmp eq ptr %.sroa.5279.0.copyload.i, null
  %i.arg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.arh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ari = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.arj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ark = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.arl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.arm = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit238.i", %.lr.ph.lr.ph.i
  %.lcssa472499.lcssa515557.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %.lcssa472499746.i, %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit238.i" ]
  %.sroa.031.0.ph551.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.031.1.i, %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit238.i" ] ; 6 uses
  %.sroa.733.0.ph550.i = phi i32 [ undef, %.lr.ph.lr.ph.i ], [ %.sroa.733.1.i, %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit238.i" ] ; 7 uses
  %.lcssa474.lcssa480524548.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %.lcssa474748.i, %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit238.i" ]
  br label %bb.lr

bb.lr:                                            ; preds = %.thread404.i, %.lr.ph.i
  %.sroa.597.0..sroa_idx.promoted522.i = phi i1 [ false, %.lr.ph.i ], [ %.sroa.597.0..sroa_idx.promoted521745.i, %.thread404.i ]
  %.lcssa472501.i = phi i64 [ %.lcssa472499.lcssa515557.i, %.lr.ph.i ], [ %.lcssa472499746.i, %.thread404.i ] ; 3 uses
  %.lcssa475482.i = phi i64 [ %.lcssa474.lcssa480524548.i, %.lr.ph.i ], [ %.lcssa474748.i, %.thread404.i ] ; 5 uses
  %i.aro = icmp ult i64 %.sroa.8280.0.copyload.i, %.lcssa472501.i
  br i1 %i.aro, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i", label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.lr, %bb.lt
  %i.arp = phi i64 [ %i.asc, %bb.lt ], [ %.lcssa472501.i, %bb.lr ] ; 5 uses
  %i.arq = sub nuw i64 %.sroa.8280.0.copyload.i, %i.arp ; 3 uses
  %i.arr = getelementptr i8, ptr %.sroa.5279.0.copyload.i, i64 %i.arp ; 3 uses
  %i.ars = icmp ult i64 %i.arq, 16
  br i1 %i.ars, label %.preheader.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i56 = icmp eq i64 %.sroa.8280.0.copyload.i, %i.arp
  br i1 %.not.i.i.i.i56, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i", label %.lr.ph.i.i.i187.i

.lr.ph.i.i.i187.i:                                ; preds = %.preheader.i.i.i.i, %bb.ls
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.arw, %bb.ls ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.arr, i64 %.sroa.01.05.i.i.i.i
  %i.aru = load i8, ptr %i.art, align 1, !alias.scope !2972, !noalias !2973, !noundef !9
  %i.arv = icmp eq i8 %i.aru, 10
  br i1 %i.arv, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %bb.ls

bb.ls:                                            ; preds = %.lr.ph.i.i.i187.i
  %i.arw = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.arw, %i.arq
  br i1 %exitcond.not.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i", label %.lr.ph.i.i.i187.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.arx = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.arr, i64 noundef %i.arq)
          to label %.noexc188.i unwind label %.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2952 ; 2 uses

.noexc188.i:                                      ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %i.ary = extractvalue { i64, i64 } %i.arx, 0
  %i.arz = extractvalue { i64, i64 } %i.arx, 1
  %i.asa = trunc nuw i64 %i.ary to i1
  br i1 %i.asa, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i: ; preds = %.lr.ph.i.i.i187.i, %.noexc188.i
  %.sroa.4.0.i27.i.i.i = phi i64 [ %i.arz, %.noexc188.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i187.i ] ; 3 uses
  %i.asb = add i64 %i.arp, 1
  %i.asc = add i64 %i.asb, %.sroa.4.0.i27.i.i.i   ; 6 uses
  %.not21.i.i.i = icmp ugt i64 %i.asc, %.sroa.8280.0.copyload.i
  %i.asd = add i64 %.sroa.4.0.i27.i.i.i, %i.arp
  %or.cond.i.i.not.i = icmp ult i64 %i.asd, %.sroa.8280.0.copyload.i
  br i1 %or.cond.i.i.not.i, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %bb.lu, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  br i1 %.not21.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i", label %.lr.ph.split.i.i.i

bb.lu:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  %i.ase = getelementptr i8, ptr %i.arr, i64 %.sroa.4.0.i27.i.i.i
  %lhsc.i = load i8, ptr %i.ase, align 1, !noalias !2952
  %i.asf = icmp eq i8 %lhsc.i, 10
  br i1 %i.asf, label %select.unfold.thread.i, label %bb.lt

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i": ; preds = %bb.lt, %.noexc188.i, %.preheader.i.i.i.i, %bb.ls, %bb.lr
  %.lcssa472500.i = phi i64 [ %.sroa.8280.0.copyload.i, %bb.ls ], [ %.lcssa472501.i, %bb.lr ], [ %.sroa.8280.0.copyload.i, %.preheader.i.i.i.i ], [ %.sroa.8280.0.copyload.i, %.noexc188.i ], [ %i.asc, %bb.lt ]
  %.not.i3.i.not.i = icmp eq i64 %.sroa.8280.0.copyload.i, %.lcssa475482.i ; 3 uses
  %brmerge = select i1 %.not.i3.i.not.i, i1 true, i1 %.not131.i
  br i1 %brmerge, label %.thread392.i.loopexit.split.loop.exit179, label %select.unfold.thread.i

select.unfold.thread.i:                           ; preds = %bb.lu, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i"
  %.pn750.i = phi i64 [ %.sroa.8280.0.copyload.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i" ], [ %i.asc, %bb.lu ] ; 2 uses
  %i.asg = phi i1 [ true, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i" ], [ false, %bb.lu ]
  %.lcssa474748.i = phi i64 [ %.lcssa475482.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i" ], [ %i.asc, %bb.lu ] ; 2 uses
  %.lcssa472499746.i = phi i64 [ %.lcssa472500.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i" ], [ %i.asc, %bb.lu ] ; 2 uses
  %.sroa.597.0..sroa_idx.promoted521745.i = phi i1 [ true, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i" ], [ %.sroa.597.0..sroa_idx.promoted522.i, %bb.lu ] ; 2 uses
  %.sroa.4.1.i751.i = sub nuw i64 %.pn750.i, %.lcssa475482.i ; 3 uses
  %.sroa.0.1.i752.i = getelementptr inbounds nuw i8, ptr %.sroa.5279.0.copyload.i, i64 %.lcssa475482.i ; 4 uses
  %.pn.i51 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i752.i, 0
  %i.ash = insertvalue { ptr, i64 } %.pn.i51, i64 %.sroa.4.1.i751.i, 1 ; 3 uses
  %.not.i.i.i189.i = icmp eq i64 %.pn750.i, %.lcssa475482.i
  %.pre.i.i190.i = add i64 %.sroa.4.1.i751.i, -1  ; 3 uses
  br i1 %.not.i.i.i189.i, label %bb.lw, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6d779029ca69da35E.exit.i.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6d779029ca69da35E.exit.i.i.i": ; preds = %select.unfold.thread.i
  %i.asi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i752.i, i64 %.pre.i.i190.i
  %rhsc.i.i = load i8, ptr %i.asi, align 1, !alias.scope !2974, !noalias !2952
  %rhsc.fr.i.i = freeze i8 %rhsc.i.i
  %i.asj = icmp eq i8 %rhsc.fr.i.i, 10
  br i1 %i.asj, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6d779029ca69da35E.exit.i.i.i"
  %i.ask = insertvalue { ptr, i64 } %i.ash, i64 %.pre.i.i190.i, 1
  %.not.i.i10.i.i = icmp eq i64 %.pre.i.i190.i, 0
  %.pre.i11.i.i = add i64 %.sroa.4.1.i751.i, -2   ; 2 uses
  br i1 %.not.i.i10.i.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6d779029ca69da35E.exit.i12.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6d779029ca69da35E.exit.i12.i.i": ; preds = %bb.lv
  %i.asl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i752.i, i64 %.pre.i11.i.i
  %rhsc4.i.i = load i8, ptr %i.asl, align 1, !alias.scope !2974, !noalias !2952
  %rhsc4.fr.i.i = freeze i8 %rhsc4.i.i
  %i.asm = icmp eq i8 %rhsc4.fr.i.i, 13
  %spec.select.i15.i.i = select i1 %i.asm, ptr %.sroa.0.1.i752.i, ptr null
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6d779029ca69da35E.exit.i12.i.i", %bb.lv
  %i.asn = phi ptr [ %spec.select.i15.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6d779029ca69da35E.exit.i12.i.i" ], [ null, %bb.lv ] ; 2 uses
  %i.aso = insertvalue { ptr, i64 } poison, ptr %i.asn, 0
  %i.asp = insertvalue { ptr, i64 } %i.aso, i64 %.pre.i11.i.i, 1
  %.not9.i.i = icmp eq ptr %i.asn, null
  %..i.i = select i1 %.not9.i.i, { ptr, i64 } %i.ask, { ptr, i64 } %i.asp
  br label %bb.lw

bb.lw:                                            ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6d779029ca69da35E.exit.i.i.i", %select.unfold.thread.i
  %.merged.i.i = phi { ptr, i64 } [ %..i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i" ], [ %i.ash, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6d779029ca69da35E.exit.i.i.i" ], [ %i.ash, %select.unfold.thread.i ] ; 2 uses
  %i.asq = extractvalue { ptr, i64 } %.merged.i.i, 0 ; 4 uses
  %i.asr = extractvalue { ptr, i64 } %.merged.i.i, 1 ; 2 uses
  %.not132.i = icmp eq ptr %i.asq, null
  br i1 %.not132.i, label %.thread392.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.ass = icmp ugt i64 %i.asr, 10
  br i1 %i.ass, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h987f1cb0bc55e6aeE.exit.i.i", label %.thread404.i

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h987f1cb0bc55e6aeE.exit.i.i": ; preds = %bb.lx
  %i.ast = load i64, ptr %i.asq, align 1
  %i.asu = xor i64 8104637026473570928, %i.ast
  %i.asv = getelementptr i8, ptr %i.asq, i64 3
  %i.asw = load i64, ptr %i.asv, align 1
  %i.asx = xor i64 8515574004175892340, %i.asw
  %i.asy = or i64 %i.asu, %i.asx
  %i.asz = icmp ne i64 %i.asy, 0
  %i.ata = zext i1 %i.asz to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.ata
  %i.atb = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  br i1 %i.atb, label %bb.na, label %.thread404.i

.thread392.i.loopexit.split.loop.exit179:         ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hedfb204892c3ce9cE.exit.i.i"
  %.sroa.733.0.ph550.i.mux.le = select i1 %.not.i3.i.not.i, i32 %.sroa.733.0.ph550.i, i32 undef
  %.sroa.031.0.ph551.i.mux.le = select i1 %.not.i3.i.not.i, i32 %.sroa.031.0.ph551.i, i32 0
  br label %.thread392.i

.thread392.i:                                     ; preds = %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit238.i", %.thread404.i, %bb.lw, %.thread392.i.loopexit.split.loop.exit179
  %.sroa.733.0.ph.lcssa453.i = phi i32 [ %.sroa.733.0.ph550.i, %.thread404.i ], [ %.sroa.733.0.ph550.i.mux.le, %.thread392.i.loopexit.split.loop.exit179 ], [ %.sroa.733.0.ph550.i, %bb.lw ], [ %.sroa.733.1.i, %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit238.i" ] ; 3 uses
  %.sroa.031.0.ph.lcssa441.i = phi i32 [ %.sroa.031.0.ph551.i, %.thread404.i ], [ %.sroa.031.0.ph551.i.mux.le, %.thread392.i.loopexit.split.loop.exit179 ], [ %.sroa.031.0.ph551.i, %bb.lw ], [ %.sroa.031.1.i, %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit238.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2952
  %i.atc = trunc nuw i32 %.sroa.031.0.ph.lcssa441.i to i1 ; 2 uses
  br i1 %i.ams, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %.thread392.i
  br i1 %i.atc, label %bb.ma, label %bb.mc, !prof !16

bb.lz:                                            ; preds = %.thread392.i
  br i1 %i.atc, label %bb.mg, label %bb.mf, !prof !14

bb.ma:                                            ; preds = %bb.ly
  %.not.i = icmp eq i32 %.sroa.733.0.ph.lcssa453.i, -1
  br i1 %.not.i, label %bb.mb, label %"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$7context17h10ab6b8ff70696f1E.exit.i"

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2975
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e)
          to label %.noexc191.i unwind label %.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2952

.noexc191.i:                                      ; preds = %bb.mb
  %i.atd = invoke fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h1bea08085c8ad238E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$7context17h10ab6b8ff70696f1E.exit.thread.i" unwind label %.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$7context17h10ab6b8ff70696f1E.exit.thread.i": ; preds = %.noexc191.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2975
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit199.i"

bb.mc:                                            ; preds = %bb.ly
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2952
  store ptr %i.ah, ptr %i.o, align 8, !noalias !2952
  %.sroa.4106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4106.0..sroa_idx.i, align 8, !noalias !2952
  store ptr @90, ptr %i.p, align 8, !noalias !2952
  %i.ate = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 2, ptr %i.ate, align 8, !noalias !2952
  %i.atf = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %i.atf, align 8, !noalias !2952
  %i.atg = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.o, ptr %i.atg, align 8, !noalias !2952
  %i.ath = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 1, ptr %i.ath, align 8, !noalias !2952
  %i.ati = invoke fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17h7fa6d8de0a0b5309E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.p)
          to label %bb.md unwind label %.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2952

bb.md:                                            ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2952
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit199.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit199.i": ; preds = %bb.my, %bb.mn, %bb.mm, %bb.md, %"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$7context17h10ab6b8ff70696f1E.exit.thread.i"
  %.sroa.0.1.i = phi ptr [ %i.atr, %bb.my ], [ %i.atd, %"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$7context17h10ab6b8ff70696f1E.exit.thread.i" ], [ %i.ati, %bb.md ], [ %i.atx, %bb.mn ], [ %i.atx, %bb.mm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2952
  %i.atj = icmp eq i64 %.sroa.0278.0.copyload.i, 0
  br i1 %i.atj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit193.i", label %bb.me

bb.me:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit199.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5279.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5279.0.copyload.i, i64 noundef %.sroa.0278.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2976
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit193.i"

"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$7context17h10ab6b8ff70696f1E.exit.i": ; preds = %bb.ma
  %i.atk = add nuw i32 %.sroa.733.0.ph.lcssa453.i, 1
  br label %bb.mf

bb.mf:                                            ; preds = %"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$7context17h10ab6b8ff70696f1E.exit.i", %bb.lz
  %storemerge.i = phi i32 [ %i.atk, %"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$7context17h10ab6b8ff70696f1E.exit.i" ], [ 0, %bb.lz ]
  store i32 %storemerge.i, ptr %i.t, align 4, !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2952
  store ptr %i.ah, ptr %i.l, align 8, !noalias !2952
  %.sroa.4118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4118.0..sroa_idx.i, align 8, !noalias !2952
  %i.atl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.t, ptr %i.atl, align 8, !noalias !2952
  %.sroa.4122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E", ptr %.sroa.4122.0..sroa_idx.i, align 8, !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2977
  store ptr @93, ptr %i.d, align 8, !noalias !2978
  %.sroa.4292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4292.0..sroa_idx.i, align 8, !noalias !2978
  %.sroa.5293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %.sroa.5293.0..sroa_idx.i, align 8, !noalias !2978
  %.sroa.6294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 2, ptr %.sroa.6294.0..sroa_idx.i, align 8, !noalias !2978
  %.sroa.7295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7295.0..sroa_idx.i, align 8, !noalias !2978
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.mh unwind label %.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2952

bb.mg:                                            ; preds = %bb.lz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2952
  store i32 %.sroa.733.0.ph.lcssa453.i, ptr %i.s, align 4, !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2952
  store ptr %i.ah, ptr %i.q, align 8, !noalias !2952
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !2952
  %i.atm = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.atm, align 8, !noalias !2952
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E", ptr %.sroa.4114.0..sroa_idx.i, align 8, !noalias !2952
  store ptr @100, ptr %i.r, align 8, !noalias !2952
  %i.atn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 3, ptr %i.atn, align 8, !noalias !2952
  %i.ato = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %i.ato, align 8, !noalias !2952
  %i.atp = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.q, ptr %i.atp, align 8, !noalias !2952
  %i.atq = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 2, ptr %i.atq, align 8, !noalias !2952
  %i.atr = invoke fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17h7fa6d8de0a0b5309E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.r)
          to label %bb.my unwind label %.loopexit.split-lp413.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2952

bb.mh:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2952
  %.sroa.0288.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !2952 ; 6 uses
  %.sroa.7289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7289.0.copyload.i = load ptr, ptr %.sroa.7289.0..sroa_idx.i, align 8, !noalias !2952, !nonnull !9, !noundef !9 ; 4 uses
  %.sroa.11290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.11290.0.copyload.i = load i64, ptr %.sroa.11290.0..sroa_idx.i, align 8, !noalias !2952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2952
  invoke void @"_ZN6semver5parse75_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$semver..Prerelease$GT$8from_str17haac758dba99898fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7289.0.copyload.i, i64 noundef %.sroa.11290.0.copyload.i)
          to label %bb.mk unwind label %bb.mi, !noalias !2952

end_hunk_0
