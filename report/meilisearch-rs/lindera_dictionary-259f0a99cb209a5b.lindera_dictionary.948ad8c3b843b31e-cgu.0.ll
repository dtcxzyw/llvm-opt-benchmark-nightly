Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN18lindera_dictionary18dictionary_builder15user_dictionary21UserDictionaryBuilder5build17h0c4c5c9a5cf6970fE:bb.a
  %.not376 = icmp eq ptr %.sroa.0.0.i526, null
  %.sroa.1095.0 = select i1 %.not376, i64 undef, i64 %.sroa.3.0.i525
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fp, %bb.fl
  %.sroa.1095.1 = phi i64 [ %.sroa.1095.2, %bb.fp ], [ %.sroa.1095.0, %bb.fl ] ; 8 uses
  %.sroa.093.1 = phi ptr [ %i.zk, %bb.fp ], [ %.sroa.0.0.i526, %bb.fl ] ; 2 uses
  %.not379 = icmp eq ptr %.sroa.093.1, null
  br i1 %.not379, label %.thread903, label %bb.fq

bb.fn:                                            ; preds = %bb.fk
  %.not377.not = icmp eq i64 %i.zi, 0
  br i1 %.not377.not, label %bb.fo, label %.thread903

bb.fo:                                            ; preds = %bb.fn
  %i.zj = invoke fastcc { ptr, i64 } @"_ZN91_$LT$csv..byte_record..ByteRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb5effb2d22cacd2E"(ptr noalias noundef align 8 dereferenceable(40) %i.an)
          to label %bb.fp unwind label %.loopexit.split-lp998.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fp:                                            ; preds = %bb.fo
  %i.zk = extractvalue { ptr, i64 } %i.zj, 0      ; 2 uses
  %.not378 = icmp eq ptr %i.zk, null
  %i.zl = extractvalue { ptr, i64 } %i.zj, 1
  %.sroa.1095.2 = select i1 %.not378, i64 undef, i64 %i.zl
  br label %bb.fm

bb.fq:                                            ; preds = %bb.fm
  %i.zm = icmp slt i64 %.sroa.1095.1, 0
  br i1 %i.zm, label %bb.fs, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !12

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.fq
  %i.zn = icmp eq i64 %.sroa.1095.1, 0            ; 2 uses
  br i1 %i.zn, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !3614
  %i.zo = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.1095.1, i64 noundef range(i64 1, 9) 1) #47, !noalias !3614 ; 2 uses
  %i.zp = icmp eq ptr %i.zo, null
  br i1 %i.zp, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.fr ], [ 0, %bb.fq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.1095.1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc530 unwind label %.loopexit.split-lp998.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3615

.noexc530:                                        ; preds = %bb.fs
  unreachable

.thread903:                                       ; preds = %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.gs

bb.ft:                                            ; preds = %bb.fr, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.zo, %bb.fr ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %.sroa.093.1, i64 %.sroa.1095.1, i1 false), !noalias !3616
  %i.zq = load i64, ptr %i.qs, align 8, !alias.scope !3617, !noundef !8 ; 3 uses
  %i.zr = load i64, ptr %i.ao, align 8, !range !16, !alias.scope !3617, !noundef !8
  %i.zs = icmp eq i64 %i.zq, %i.zr
  br i1 %i.zs, label %bb.fu, label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17habcca6f8b95852b3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @135)
          to label %bb.fx unwind label %bb.fv, !noalias !3618

bb.fv:                                            ; preds = %bb.fu
  %i.zt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.zn, label %.body531, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.1095.1, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !3619
  br label %.body531

bb.fx:                                            ; preds = %bb.fu, %bb.ft
  %i.zu = load ptr, ptr %i.qr, align 8, !alias.scope !3617, !nonnull !8, !noundef !8
  %i.zv = getelementptr inbounds nuw [24 x i8], ptr %i.zu, i64 %i.zq ; 3 uses
  store i64 %.sroa.1095.1, ptr %i.zv, align 8
  %.sroa.5723.0..sroa_idx724 = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.5723.0..sroa_idx724, align 8
  %.sroa.6726.0..sroa_idx727 = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  store i64 %.sroa.1095.1, ptr %.sroa.6726.0..sroa_idx727, align 8
  %i.zw = add i64 %i.zq, 1
  store i64 %i.zw, ptr %i.qs, align 8, !alias.scope !3617
  %.pr = load i64, ptr %.sroa.292.0..sroa_idx, align 8
  br label %bb.fd

bb.fy:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.zx = load ptr, ptr %i.qx, align 8, !invariant.load !8, !nonnull !8
  invoke void %i.zx(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noundef nonnull align 1 %i.qu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0349.01393)
          to label %bb.gc unwind label %.loopexit.split-lp1003.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fz:                                            ; preds = %bb.ev
  %i.zy = getelementptr inbounds nuw i8, ptr %i.rd, i64 64
  %i.zz = load ptr, ptr %i.zy, align 8, !nonnull !8, !noundef !8
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.rd, i64 72
  %i.aab = load i64, ptr %i.aaa, align 8, !noundef !8 ; 2 uses
  %.not.i533 = icmp ugt i64 %i.qo, %i.aab
  br i1 %.not.i533, label %.invoke2334, label %bb.ga, !prof !11

bb.ga:                                            ; preds = %bb.fz
  br i1 %.not4.i534, label %bb.gf, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aac = getelementptr [8 x i8], ptr %i.zz, i64 %i.qo
  %i.aad = getelementptr i8, ptr %i.aac, i64 -8
  %i.aae = load i64, ptr %i.aad, align 8, !noundef !8 ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.rd, i64 48
  %i.aag = load i64, ptr %i.aaf, align 8, !noundef !8 ; 2 uses
  %.not5.i535 = icmp ugt i64 %i.aae, %i.aag
  br i1 %.not5.i535, label %.invoke2334, label %bb.gf, !prof !37

.invoke2334:                                      ; preds = %bb.gb, %bb.fz
  %i.aah = phi i64 [ %i.qo, %bb.fz ], [ %i.aae, %bb.gb ]
  %i.aai = phi i64 [ %i.aab, %bb.fz ], [ %i.aag, %bb.gb ]
  %i.aaj = phi ptr [ @278, %bb.fz ], [ @280, %bb.gb ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.aah, i64 noundef %i.aai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aaj) #46
          to label %.cont2335 unwind label %.loopexit.split-lp1003.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont2335:                                        ; preds = %.invoke2334
  unreachable

bb.gc:                                            ; preds = %bb.fy
  %i.aak = load i64, ptr %i.ap, align 8, !range !17, !noundef !8 ; 2 uses
  %i.aal = icmp eq i64 %i.aak, -9223372036854775808
  %i.aam = load ptr, ptr %.sroa.4220.0..sroa_idx, align 8 ; 2 uses
  %i.aan = load i8, ptr %.sroa.5221.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.aal, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aam, ptr %i.aao, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.aan, ptr %i.aap, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit577"

bb.ge:                                            ; preds = %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.688.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6222.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 %i.aak, ptr %i.aq, align 8
  store ptr %i.aam, ptr %.sroa.486.0..sroa_idx, align 8
  store i8 %i.aan, ptr %.sroa.587.0..sroa_idx, align 8
  br label %bb.gs

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit577": ; preds = %bb.hj, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i575", %bb.fb, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.es

bb.gf:                                            ; preds = %bb.gb, %bb.ga
  %.sroa.0.03.i536 = phi i64 [ %i.aae, %bb.gb ], [ 0, %bb.ga ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3620)
  call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3622
  store ptr %.sroa.0349.01393, ptr %i.f, align 8, !alias.scope !3623, !noalias !3624
  store i64 %.sroa.0.03.i536, ptr %.sroa.4716.0..sroa_idx, align 8, !alias.scope !3623, !noalias !3624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5717.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.qo, ptr %.sroa.7719.0..sroa_idx, align 8, !alias.scope !3623, !noalias !3624
  store i64 1, ptr %.sroa.8720.0..sroa_idx, align 8, !alias.scope !3623, !noalias !3624
  call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  call void @llvm.experimental.noalias.scope.decl(metadata !3626)
  call void @llvm.experimental.noalias.scope.decl(metadata !3627)
  call void @llvm.experimental.noalias.scope.decl(metadata !3628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3629
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he19e450f808b21faE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.noexc547 unwind label %.loopexit.split-lp1003.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3630

.noexc547:                                        ; preds = %bb.gf
  %i.aaq = load i64, ptr %i.d, align 8, !range !17, !noalias !3629, !noundef !8 ; 4 uses
  %.not.i.i.i.i540 = icmp eq i64 %i.aaq, -9223372036854775808
  br i1 %.not.i.i.i.i540, label %bb.gg, label %bb.gj

bb.gg:                                            ; preds = %.noexc547
  store i64 0, ptr %i.aq, align 8, !alias.scope !3631
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.486.0..sroa_idx, align 8, !alias.scope !3631
  store i64 0, ptr %.sroa.587.0..sroa_idx, align 8, !alias.scope !3631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3629
  br label %bb.gq

bb.gh:                                            ; preds = %bb.gl
  %i.aar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aas = icmp eq i64 %i.aaq, 0
  br i1 %i.aas, label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit", label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %i.aaq, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !3632
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"

bb.gj:                                            ; preds = %.noexc547
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !3629 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !noalias !3629
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.6718.0..sroa_idx, align 8, !alias.scope !3633, !noalias !3622, !noundef !8
  %.val5.i.i.i.i.i.i = load i64, ptr %.sroa.7719.0..sroa_idx, align 8, !alias.scope !3633, !noalias !3622, !noundef !8
  %i.aat = sub i64 %.val5.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.aau = load i64, ptr %.sroa.8720.0..sroa_idx, align 8, !alias.scope !3633, !noalias !3622, !noundef !8
  %i.aav = call i64 @llvm.usub.sat.i64(i64 %i.aat, i64 %i.aau) ; 2 uses
  %i.aaw = call i64 @llvm.uadd.sat.i64(i64 %i.aav, i64 1)
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.aaw, i64 4) ; 3 uses
  %i.aax = mul i64 %.sroa.0.0.i.i.i.i.i, 24       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.aav, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.gl, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !12

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.gj
  %i.aay = icmp eq i64 %i.aax, 0
  br i1 %i.aay, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !3634
  %i.aaz = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aax, i64 noundef range(i64 1, 9) 8) #47, !noalias !3634 ; 2 uses
  %i.aba = icmp eq ptr %i.aaz, null
  br i1 %i.aba, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.gk ], [ 0, %bb.gj ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.aax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.noexc.i.i.i.i unwind label %bb.gh, !noalias !3629

.noexc.i.i.i.i:                                   ; preds = %bb.gl
  unreachable

bb.gm:                                            ; preds = %bb.gk, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.aaz, %bb.gk ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.gk ] ; 2 uses
  %i.abb = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.abb)
  store i64 %i.aaq, ptr %.sroa.10.0.i.i.i.i.i, align 8, !noalias !3629
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !3629
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !3629
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !3629
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i541, align 8, !noalias !3629
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i542, align 8, !noalias !3629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !3630
  call void @llvm.experimental.noalias.scope.decl(metadata !3635)
  call void @llvm.experimental.noalias.scope.decl(metadata !3636)
  call void @llvm.experimental.noalias.scope.decl(metadata !3637)
  call void @llvm.experimental.noalias.scope.decl(metadata !3638)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3639
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he19e450f808b21faE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3640

.noexc5.i.i.i.i:                                  ; preds = %bb.gm
  %i.abc = load i64, ptr %i.b, align 8, !range !17, !noalias !3639, !noundef !8 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i64 %i.abc, -9223372036854775808
  br i1 %.not12.i.i.i.i.i.i, label %.loopexit12.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc5.i.i.i.i, %.noexc6.i.i.i.i
  %i.abd = phi ptr [ %i.abj, %.noexc6.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i, %.noexc5.i.i.i.i ]
  %i.abe = phi i64 [ %i.abl, %.noexc6.i.i.i.i ], [ 1, %.noexc5.i.i.i.i ] ; 5 uses
  %i.abf = phi i64 [ %i.abm, %.noexc6.i.i.i.i ], [ %i.abc, %.noexc5.i.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3639 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3639
  %i.abg = icmp samesign ult i64 %i.abe, 384307168202282326
  call void @llvm.assume(i1 %i.abg)
  %i.abh = load i64, ptr %i.e, align 8, !range !16, !alias.scope !3641, !noalias !3629, !noundef !8
  %i.abi = icmp eq i64 %i.abe, %i.abh
  br i1 %i.abi, label %bb.gp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.abj = phi ptr [ %.pre.i.i.i.i546, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.abd, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.abk = getelementptr inbounds nuw [24 x i8], ptr %i.abj, i64 %i.abe ; 3 uses
  store i64 %i.abf, ptr %i.abk, align 8, !noalias !3639
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3639
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3639
  %i.abl = add nuw nsw i64 %i.abe, 1              ; 2 uses
  store i64 %i.abl, ptr %.sroa.6.0..sroa_idx.i.i.i.i542, align 8, !alias.scope !3641, !noalias !3629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3639
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he19e450f808b21faE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3640

.noexc6.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i"
  %i.abm = load i64, ptr %i.b, align 8, !range !17, !noalias !3639, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.abm, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %.loopexit12.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i

bb.gn:                                            ; preds = %bb.gp
  %i.abn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abo = icmp eq i64 %i.abf, 0
  br i1 %i.abo, label %.body.i.i.i.i543, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %i.abf, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !3642
  br label %.body.i.i.i.i543

bb.gp:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.qy, align 8, !alias.scope !3643, !noalias !3629, !noundef !8
  %.val.i.i.i.i.i.i.i.i545 = load i64, ptr %i.qz, align 8, !alias.scope !3643, !noalias !3629, !noundef !8
  %i.abp = sub i64 %.val5.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i545
  %i.abq = load i64, ptr %i.ra, align 8, !alias.scope !3643, !noalias !3629, !noundef !8
  %i.abr = call i64 @llvm.usub.sat.i64(i64 %i.abp, i64 %i.abq)
  %i.abs = call i64 @llvm.uadd.sat.i64(i64 %i.abr, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.abe, i64 noundef %i.abs, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.gn, !noalias !3644

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.gp
  %.pre.i.i.i.i546 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i541, align 8, !alias.scope !3641, !noalias !3629
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i", %bb.gm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i543

.body.i.i.i.i543:                                 ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.go, %bb.gn
  %eh.lpad-body.i.i.i.i544 = phi { ptr, i32 } [ %i.abn, %bb.gn ], [ %i.abn, %bb.go ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #48, !noalias !3629
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"

.loopexit12.i.i.i.i.loopexit:                     ; preds = %.noexc6.i.i.i.i
  %.pre1791.pre.pre = load i64, ptr %i.ql, align 8
  %.pre1792.pre.pre = load i64, ptr %i.qn, align 8, !alias.scope !3645
  br label %.loopexit12.i.i.i.i

.loopexit12.i.i.i.i:                              ; preds = %.loopexit12.i.i.i.i.loopexit, %.noexc5.i.i.i.i
  %.pre1792.pre = phi i64 [ %.pre1792.pre.pre, %.loopexit12.i.i.i.i.loopexit ], [ %i.rb, %.noexc5.i.i.i.i ]
  %.pre1791.pre = phi i64 [ %.pre1791.pre.pre, %.loopexit12.i.i.i.i.loopexit ], [ %i.rc, %.noexc5.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3646
  br label %bb.gq

bb.gq:                                            ; preds = %.loopexit12.i.i.i.i, %bb.gg
  %.pre1792 = phi i64 [ %.pre1792.pre, %.loopexit12.i.i.i.i ], [ %i.rb, %bb.gg ]
  %.pre1791 = phi i64 [ %.pre1791.pre, %.loopexit12.i.i.i.i ], [ %i.rc, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3622
  br label %bb.gs

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit": ; preds = %bb.gx, %.loopexit.split-lp1008.loopexit.split-lp, %bb.gr
  %.pn382 = phi { ptr, i32 } [ %i.abt, %bb.gr ], [ %lpad.loopexit.split-lp2742, %.loopexit.split-lp1008.loopexit.split-lp ], [ %lpad.loopexit.split-lp2742, %bb.gx ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E"(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #48
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"

bb.gr:                                            ; preds = %bb.gu, %bb.gt
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit"

bb.gs:                                            ; preds = %.thread903, %bb.ge, %bb.gq
  %i.abu = phi i64 [ %i.rb, %.thread903 ], [ %i.rb, %bb.ge ], [ %.pre1792, %bb.gq ] ; 3 uses
  %i.abv = phi i64 [ %i.rc, %.thread903 ], [ %i.rc, %bb.ge ], [ %.pre1791, %bb.gq ] ; 5 uses
  %i.abw = icmp sgt i64 %i.abv, -1
  call void @llvm.assume(i1 %i.abw)
  %i.abx = trunc i64 %i.abv to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  call void @llvm.experimental.noalias.scope.decl(metadata !3648)
  %i.aby = load i64, ptr %i.ar, align 8, !range !16, !alias.scope !3645, !noundef !8
  %i.abz = sub i64 %i.aby, %i.abu
  %i.aca = icmp ult i64 %i.abz, 4
  br i1 %i.aca, label %bb.gt, label %bb.gu, !prof !18

bb.gt:                                            ; preds = %bb.gs
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %i.abu, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc550 unwind label %bb.gr

.noexc550:                                        ; preds = %bb.gt
  %.pre.i.i = load i64, ptr %i.qn, align 8, !alias.scope !3649
  br label %bb.gu

bb.gu:                                            ; preds = %.noexc550, %bb.gs
  %i.acb = phi i64 [ %i.abu, %bb.gs ], [ %.pre.i.i, %.noexc550 ] ; 3 uses
  %i.acc = icmp sgt i64 %i.acb, -1
  call void @llvm.assume(i1 %i.acc)
  %i.acd = load ptr, ptr %i.qm, align 8, !alias.scope !3649, !nonnull !8, !noundef !8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.acb
  store i32 %i.abx, ptr %i.ace, align 1, !noalias !3649
  %i.acf = add nuw i64 %i.acb, 4                  ; 2 uses
  store i64 %i.acf, ptr %i.qn, align 8, !alias.scope !3649
  %i.acg = load ptr, ptr %.sroa.486.0..sroa_idx, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.ach = load i64, ptr %.sroa.587.0..sroa_idx, align 8, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke fastcc void @_ZN5alloc3str17join_generic_copy17h2606226660a086ceE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.acg, i64 noundef %i.ach)
          to label %bb.gv unwind label %bb.gr

bb.gv:                                            ; preds = %bb.gu
  %.sroa.0735.0.copyload = load i64, ptr %i.ae, align 8 ; 6 uses
  %.sroa.7736.0.copyload = load ptr, ptr %.sroa.7736.0..sroa_idx, align 8 ; 7 uses
  %.sroa.11737.0.copyload = load i64, ptr %.sroa.11737.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.aci = icmp sgt i64 %.sroa.11737.0.copyload, -1
  call void @llvm.assume(i1 %i.aci)
  %i.acj = icmp samesign ugt i64 %.sroa.11737.0.copyload, 4294967295
  br i1 %i.acj, label %bb.gw, label %bb.ha, !prof !18

bb.gw:                                            ; preds = %bb.gv
  %i.ack = invoke fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h296e593591d3ecfcE"()
          to label %bb.gy unwind label %.loopexit.split-lp1008.loopexit.split-lp

.loopexit.split-lp1008.loopexit.split-lp:         ; preds = %bb.hd, %bb.hb, %bb.gw
  %lpad.loopexit.split-lp2742 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acl = icmp eq i64 %.sroa.0735.0.copyload, 0
end_hunk_0
begin_hunk_1_@_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder5build17h0d32ae2e7a24da1aE:bb.a
  %i.agh = zext nneg i16 %i.agg to i64
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 56
  %i.agj = icmp ult i16 %i.agg, 12
  call void @llvm.assume(i1 %i.agj)
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %i.agh
  %i.agl = load ptr, ptr %i.agk, align 8, !noalias !6225, !nonnull !8, !noundef !8 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 54
  %i.agn = load i16, ptr %i.agm, align 2, !noalias !6224, !noundef !8 ; 2 uses
  %i.ago = zext nneg i16 %i.agn to i64
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 56
  %i.agq = icmp ult i16 %i.agn, 12
  call void @llvm.assume(i1 %i.agq)
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %i.ago
  %i.ags = load ptr, ptr %i.agr, align 8, !noalias !6225, !nonnull !8, !noundef !8 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 54
  %i.agu = load i16, ptr %i.agt, align 2, !noalias !6224, !noundef !8 ; 2 uses
  %i.agv = zext nneg i16 %i.agu to i64
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ags, i64 56
  %i.agx = icmp ult i16 %i.agu, 12
  call void @llvm.assume(i1 %i.agx)
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %i.agv
  %i.agz = load ptr, ptr %i.agy, align 8, !noalias !6225, !nonnull !8, !noundef !8 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 54
  %i.ahb = load i16, ptr %i.aha, align 2, !noalias !6224, !noundef !8 ; 2 uses
  %i.ahc = zext nneg i16 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agz, i64 56
  %i.ahe = icmp ult i16 %i.ahb, 12
  call void @llvm.assume(i1 %i.ahe)
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.ahd, i64 %i.ahc
  %i.ahg = load ptr, ptr %i.ahf, align 8, !noalias !6225, !nonnull !8, !noundef !8 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 54
  %i.ahi = load i16, ptr %i.ahh, align 2, !noalias !6224, !noundef !8 ; 2 uses
  %i.ahj = zext nneg i16 %i.ahi to i64
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahg, i64 56
  %i.ahl = icmp ult i16 %i.ahi, 12
  call void @llvm.assume(i1 %i.ahl)
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.ahk, i64 %i.ahj
  %i.ahn = load ptr, ptr %i.ahm, align 8, !noalias !6225, !nonnull !8, !noundef !8 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 54
  %i.ahp = load i16, ptr %i.aho, align 2, !noalias !6224, !noundef !8 ; 2 uses
  %i.ahq = zext nneg i16 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahn, i64 56
  %i.ahs = icmp ult i16 %i.ahp, 12
  call void @llvm.assume(i1 %i.ahs)
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %i.ahr, i64 %i.ahq
  %i.ahu = load ptr, ptr %i.aht, align 8, !noalias !6225, !nonnull !8, !noundef !8 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 54
  %i.ahw = load i16, ptr %i.ahv, align 2, !noalias !6224, !noundef !8 ; 2 uses
  %i.ahx = zext nneg i16 %i.ahw to i64
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahu, i64 56
  %i.ahz = icmp ult i16 %i.ahw, 12
  call void @llvm.assume(i1 %i.ahz)
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.ahy, i64 %i.ahx
  %i.aib = load ptr, ptr %i.aia, align 8, !noalias !6225, !nonnull !8, !noundef !8 ; 2 uses
  %i.aic = add i64 %.sroa.03.06.i34.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.aid = icmp eq i64 %i.aic, 0
  br i1 %i.aid, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i33.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i33.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i33.i.i.i.i.i.i.i, %bb.ft
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.050.0.i.i.i.i.i.i.i, %bb.ft ], [ %.lcssa1922.unr, %.lr.ph.i33.i.i.i.i.i.i.i.prol.loopexit ], [ %i.aib, %.lr.ph.i33.i.i.i.i.i.i.i ]
  %i.aie = add i64 %.sroa.014.248.i.i.i.i.i.i, 1
  br label %.peel.begin.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.fr, %_ZN5alloc11collections5btree3mem7replace17h687ccdf29f6f1fbaE.exit39.i.i.i.i.i.i.i
  %.sroa.05.086.i.i.i.i.i.i.i = phi i64 [ %i.aii, %_ZN5alloc11collections5btree3mem7replace17h687ccdf29f6f1fbaE.exit39.i.i.i.i.i.i.i ], [ 0, %bb.fr ]
  %.sroa.057.085.i.i.i.i.i.i.i = phi ptr [ %i.aif, %_ZN5alloc11collections5btree3mem7replace17h687ccdf29f6f1fbaE.exit39.i.i.i.i.i.i.i ], [ %i.aez, %bb.fr ] ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6226
  %i.aif = call noalias noundef align 8 dereferenceable_or_null(152) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6226 ; 7 uses
  %i.aig = icmp eq ptr %i.aif, null
  br i1 %i.aig, label %bb.fu, label %_ZN5alloc11collections5btree3mem7replace17h687ccdf29f6f1fbaE.exit39.i.i.i.i.i.i.i, !prof !18

bb.fu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 152) #46
          to label %.noexc.i38.i.i.i.i.i.i.i unwind label %bb.fv, !noalias !6226

.noexc.i38.i.i.i.i.i.i.i:                         ; preds = %bb.fu
  unreachable

bb.fv:                                            ; preds = %bb.fu
  %i.aih = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17h687ccdf29f6f1fbaE.exit39.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aii = add nuw i64 %.sroa.05.086.i.i.i.i.i.i.i, 1 ; 2 uses
  store ptr null, ptr %i.aif, align 8, !noalias !6226
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aif, i64 54
  store i16 0, ptr %i.aij, align 2, !noalias !6226
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aif, i64 56
  store ptr %.sroa.057.085.i.i.i.i.i.i.i, ptr %i.aik, align 8, !noalias !6226
  store ptr %i.aif, ptr %.sroa.057.085.i.i.i.i.i.i.i, align 8, !noalias !6227
  %i.ail = getelementptr inbounds nuw i8, ptr %.sroa.057.085.i.i.i.i.i.i.i, i64 52
  store i16 0, ptr %i.ail, align 4, !noalias !6228
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.aii, %i.aey
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.thread.sink.split.i.i.i.i.i.i:                   ; preds = %bb.fw, %bb.fk
  %.pn34.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ain, %bb.fw ], [ %i.ael, %bb.fk ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload25.i.i.i.i) ]
  %i.aim = shl nuw i64 %.sroa.0.0.copyload23.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload25.i.i.i.i, i64 noundef %i.aim, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6204
  br label %.body.i

bb.fw:                                            ; preds = %bb.ff
  %i.ain = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aio = icmp eq i64 %.sroa.0.0.copyload23.i.i.i.i, 0
  br i1 %i.aio, label %.body.i, label %.thread.sink.split.i.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fc
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aip = icmp eq i64 %.sroa.0.0.copyload23.i.i.i.i, 0
  br i1 %i.aip, label %.body.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aiq = shl nuw i64 %.sroa.0.0.copyload23.i.i.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload25.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload25.i.i.i.i, i64 noundef %i.aiq, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6203
  br label %.body.i

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2bfa3338ba88c9ceE.exit.i.i": ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17habd691af0eade339E.exit.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17ha2813afa24f904e3E.exit.i.i.i.i.i.i.i.i", %"_ZN4core3ptr375drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$u32$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$C$alloc..collections..btree..set..BTreeSet$LT$u32$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h8de3abebe0e97875E.exit.i.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator7collect17hff91430a907604deE.exit.thread.i.i
  %.sroa.0.047.i.i = phi ptr [ null, %_ZN4core4iter6traits8iterator8Iterator7collect17hff91430a907604deE.exit.thread.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %"_ZN4core3ptr375drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$u32$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$C$alloc..collections..btree..set..BTreeSet$LT$u32$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h8de3abebe0e97875E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17ha2813afa24f904e3E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node13move_to_slice17habd691af0eade339E.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.046.i.i = phi i64 [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17hff91430a907604deE.exit.thread.i.i ], [ 0, %"_ZN4core3ptr375drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$u32$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$C$alloc..collections..btree..set..BTreeSet$LT$u32$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h8de3abebe0e97875E.exit.i.i.i.i.i.i.i" ], [ %.sroa.8.0.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17ha2813afa24f904e3E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.8.0.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node13move_to_slice17habd691af0eade339E.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sink23.i.i.i = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17hff91430a907604deE.exit.thread.i.i ], [ 1, %"_ZN4core3ptr375drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$u32$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$C$alloc..collections..btree..set..BTreeSet$LT$u32$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h8de3abebe0e97875E.exit.i.i.i.i.i.i.i" ], [ 1, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17ha2813afa24f904e3E.exit.i.i.i.i.i.i.i.i" ], [ 1, %_ZN5alloc11collections5btree4node13move_to_slice17habd691af0eade339E.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17hff91430a907604deE.exit.thread.i.i ], [ %.sroa.014.1.i.i.i.i.i.i, %"_ZN4core3ptr375drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$u32$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$C$alloc..collections..btree..set..BTreeSet$LT$u32$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h8de3abebe0e97875E.exit.i.i.i.i.i.i.i" ], [ %.sroa.014.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17ha2813afa24f904e3E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.014.1.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node13move_to_slice17habd691af0eade339E.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6229)
  call void @llvm.experimental.noalias.scope.decl(metadata !6230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6231
  store i64 %.sink23.i.i.i, ptr %i.n, align 8, !alias.scope !6232, !noalias !6233
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !alias.scope !6232, !noalias !6233
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.0.047.i.i, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !alias.scope !6232, !noalias !6233
  %.sroa.634.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.5.046.i.i, ptr %.sroa.634.0..sroa_idx.i.i, align 8, !alias.scope !6232, !noalias !6233
  %.sroa.735.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sink23.i.i.i, ptr %.sroa.735.0..sroa_idx.i.i, align 8, !alias.scope !6232, !noalias !6233
  %.sroa.836.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr null, ptr %.sroa.836.0..sroa_idx.i.i, align 8, !alias.scope !6232, !noalias !6233
  %.sroa.937.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %.sroa.0.047.i.i, ptr %.sroa.937.0..sroa_idx.i.i, align 8, !alias.scope !6232, !noalias !6233
  %.sroa.1038.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %.sroa.5.046.i.i, ptr %.sroa.1038.0..sroa_idx.i.i, align 8, !alias.scope !6232, !noalias !6233
  %.sroa.1139.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i.i.i, ptr %.sroa.1139.0..sroa_idx.i.i, align 8, !alias.scope !6232, !noalias !6233
  call void @llvm.experimental.noalias.scope.decl(metadata !6234)
  call void @llvm.experimental.noalias.scope.decl(metadata !6235)
  call void @llvm.experimental.noalias.scope.decl(metadata !6236)
  call void @llvm.experimental.noalias.scope.decl(metadata !6237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6239
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %.noexc.i.i.i.i11.i.i unwind label %bb.gk, !noalias !6240

.noexc.i.i.i.i11.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2bfa3338ba88c9ceE.exit.i.i"
  %i.air = load ptr, ptr %i.k, align 8, !noalias !6239, !noundef !8 ; 2 uses
  %.not.i.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.air, null
  br i1 %.not.i.not.i.not.i.i.i.i.i.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %.noexc.i.i.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6239
  store i64 0, ptr %i.r, align 8, !alias.scope !6241, !noalias !6242
  %i.ais = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ais, align 8, !alias.scope !6241, !noalias !6242
  %i.ait = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.ait, align 8, !alias.scope !6241, !noalias !6242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6243
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6240

.noexc14.i:                                       ; preds = %bb.fz
  %i.aiu = load ptr, ptr %i.j, align 8, !noalias !6243, !noundef !8
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aiu, null
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc14.i, %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6243
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6240

.noexc15.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aiv = load ptr, ptr %i.j, align 8, !noalias !6243, !noundef !8
  %.not.i.i.i.i.i.i.i14.i.i = icmp eq ptr %i.aiv, null
  br i1 %.not.i.i.i.i.i.i.i14.i.i, label %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i.i": ; preds = %.noexc15.i, %.noexc14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6243
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i

bb.ga:                                            ; preds = %.noexc.i.i.i.i11.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6239
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i
  %i.aiy = load i32, ptr %i.aix, align 4, !noalias !6244, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6239
  %.val8.i.i.i.i.i.i = load i64, ptr %.sroa.1139.0..sroa_idx.i.i, align 8, !alias.scope !6245, !noalias !6231, !noundef !8 ; 2 uses
  %i.aiz = call i64 @llvm.uadd.sat.i64(i64 %.val8.i.i.i.i.i.i, i64 1)
  %.sroa.0.0.i9.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.aiz, i64 4) ; 3 uses
  %i.aja = shl i64 %.sroa.0.0.i9.i.i.i.i.i.i, 2   ; 4 uses
  %i.ajb = icmp ugt i64 %.val8.i.i.i.i.i.i, 4611686018427387902
  %i.ajc = icmp ugt i64 %i.aja, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ajb, %i.ajc
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.gb, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !12

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ga
  %6 = icmp eq i64 %i.aja, 0
  br i1 %6, label %bb.gc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6246
  %i.ajd = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aja, i64 noundef range(i64 1, 9) 4) #47, !noalias !6246 ; 2 uses
  %i.aje = icmp eq ptr %i.ajd, null
  br i1 %i.aje, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, %bb.ga
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a ], [ 0, %bb.ga ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.aja, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.noexc10.i.i.i.i.i.i106 unwind label %bb.gk, !noalias !6247

.noexc10.i.i.i.i.i.i106:                          ; preds = %bb.gb
  unreachable

bb.gc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ajd, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i9.i.i.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a ] ; 2 uses
  %7 = icmp ule i64 %.sroa.0.0.i9.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %7)
  store i32 %i.aiy, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 4, !noalias !6247
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.m, align 8, !noalias !6238
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i96 = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i96, align 8, !noalias !6238
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !6248
  call void @llvm.experimental.noalias.scope.decl(metadata !6249)
  call void @llvm.experimental.noalias.scope.decl(metadata !6250)
  call void @llvm.experimental.noalias.scope.decl(metadata !6251)
  call void @llvm.experimental.noalias.scope.decl(metadata !6252)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  br label %bb.gd

bb.gd:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i", %bb.gc
  %i.ajg = phi ptr [ %i.ajr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.gc ]
  %i.ajh = phi i64 [ %i.ajt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.gc ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6253
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc.i.i.i.i.i.i12.i.i unwind label %bb.gg, !noalias !6254

.noexc.i.i.i.i.i.i12.i.i:                         ; preds = %bb.gd
  %i.aji = load ptr, ptr %i.i, align 8, !noalias !6253, !noundef !8 ; 2 uses
  %.not.i.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aji, null
  br i1 %.not.i.not.i.not.i.i.i.i.i.i.i.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %.noexc.i.i.i.i.i.i12.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6253
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ajj, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.ajl = load i32, ptr %i.ajk, align 4, !noalias !6255, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6253
  %i.ajm = icmp samesign ult i64 %i.ajh, 2305843009213693952
  call void @llvm.assume(i1 %i.ajm)
  %i.ajn = load i64, ptr %i.m, align 8, !range !16, !alias.scope !6256, !noalias !6238, !noundef !8
  %i.ajo = icmp eq i64 %i.ajh, %i.ajn
  br i1 %i.ajo, label %bb.gh, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i"

bb.gf:                                            ; preds = %.noexc.i.i.i.i.i.i12.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6257
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc11.i.i.i.i.i.i100 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6254

.noexc11.i.i.i.i.i.i100:                          ; preds = %bb.gf
  %i.ajp = load ptr, ptr %i.h, align 8, !noalias !6257, !noundef !8
  %.not3.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajp, null
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc11.i.i.i.i.i.i100, %.noexc12.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6257
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc12.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6254

.noexc12.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ajq = load ptr, ptr %i.h, align 8, !noalias !6257, !noundef !8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ge
  %i.ajr = phi ptr [ %.pre.i.i.i.i.i.i99, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.ajg, %bb.ge ] ; 2 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.ajh
  store i32 %i.ajl, ptr %i.ajs, align 4, !noalias !6258
  %i.ajt = add nuw nsw i64 %i.ajh, 1              ; 2 uses
  store i64 %i.ajt, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6256, !noalias !6238
  br label %bb.gd

bb.gg:                                            ; preds = %bb.gh, %bb.gd
  %i.aju = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l) #48
          to label %.body.i.i.i.i.i.i97 unwind label %bb.gi, !noalias !6254

bb.gh:                                            ; preds = %bb.ge
  %.val.i.i.i.i.i.i13.i.i = load i64, ptr %i.ajf, align 8, !alias.scope !6259, !noalias !6238, !noundef !8
  %i.ajv = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i13.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.ajh, i64 noundef range(i64 1, 0) %i.ajv, i64 noundef 4, i64 noundef 4)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.gg, !noalias !6260

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.gh
  %.pre.i.i.i.i.i.i99 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i96, align 8, !alias.scope !6256, !noalias !6238
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i"

bb.gi:                                            ; preds = %bb.gg
  %i.ajw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #49, !noalias !6258
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.gf
  %lpad.loopexit.split-lp1904.a = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i97

.body.i.i.i.i.i.i97:                              ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gg
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aju, %bb.gg ], [ %lpad.loopexit.split-lp1904.a, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val.i.i.i.i.i.i98 = load i64, ptr %i.m, align 8, !noalias !6238 ; 2 uses
  %i.ajx = icmp eq i64 %.val.i.i.i.i.i.i98, 0
  br i1 %i.ajx, label %.body.i, label %bb.gj

bb.gj:                                            ; preds = %.body.i.i.i.i.i.i97
  %.val7.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i96, align 8, !noalias !6238, !nonnull !8, !noundef !8
  %i.ajy = shl nuw i64 %.val.i.i.i.i.i.i98, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i.i, i64 noundef %i.ajy, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6247
  br label %.body.i

.loopexit9.i.i.i.i.i.i:                           ; preds = %.noexc12.i.i.i.i.i.i, %.noexc11.i.i.i.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !6261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6238
  %.phi.trans.insert.i.i101 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i.i102 = load ptr, ptr %.phi.trans.insert.i.i101, align 8, !alias.scope !6262, !noalias !6242
  %.phi.trans.insert176.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.pre177.i.i = load i64, ptr %.phi.trans.insert176.i.i, align 8, !alias.scope !6262, !noalias !6242
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i95, %bb.gk
  %lpad.loopexit.split-lp1902 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #49, !noalias !6247
  unreachable

bb.gk:                                            ; preds = %bb.gb, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2bfa3338ba88c9ceE.exit.i.i"
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6263
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6240

.noexc.i.i.i.i.i:                                 ; preds = %bb.gk
  %i.aka = load ptr, ptr %i.g, align 8, !noalias !6263, !noundef !8
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %i.aka, null
  br i1 %.not3.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i95

.lr.ph.i.i.i.i.i.i.i.i95:                         ; preds = %.noexc.i.i.i.i.i, %.noexc1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6263
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %.noexc1.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6240

.noexc1.i.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i95
  %i.akb = load ptr, ptr %i.g, align 8, !noalias !6263, !noundef !8
  %.not.i.i.i.i.i.i10.i.i = icmp eq ptr %i.akb, null
  br i1 %.not.i.i.i.i.i.i10.i.i, label %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i95

"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i, %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6263
  br label %.body.i

_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i: ; preds = %.loopexit9.i.i.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i.i"
  %i.akc = phi i64 [ 0, %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i.i" ], [ %.pre177.i.i, %.loopexit9.i.i.i.i.i.i ] ; 7 uses
  %i.akd = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i.i" ], [ %.pre.i.i102, %.loopexit9.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6242
  store ptr %1, ptr %i.q, align 8, !noalias !6242
  call void @llvm.experimental.noalias.scope.decl(metadata !6264)
  call void @llvm.experimental.noalias.scope.decl(metadata !6262)
  %i.ake = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.akf = and i64 %i.akc, -16                    ; 3 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akf ; 2 uses
  %i.akh = icmp eq i64 %i.akf, 0
  br i1 %i.akh, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1905dc5b9df07901E.exit.i.i.i.i"

bb.gl:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1905dc5b9df07901E.exit.i.i.i.i"
  %i.aki = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i1868, i64 64
  %i.akj = add i64 %.sroa.5.0.i.i.i.i1867, -16    ; 2 uses
  %i.akk = icmp eq i64 %i.akj, 0
  br i1 %i.akk, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1905dc5b9df07901E.exit.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1905dc5b9df07901E.exit.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i, %bb.gl
  %.sroa.0.03.i.i.i.i1868 = phi ptr [ %i.aki, %bb.gl ], [ %i.akd, %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i.i1867 = phi i64 [ %i.akj, %bb.gl ], [ %i.akf, %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i ]
  %i.akl = load <16 x i32>, ptr %.sroa.0.03.i.i.i.i1868, align 4, !alias.scope !6265, !noalias !6266
  %i.akm = icmp eq <16 x i32> %i.akl, zeroinitializer
  %i.akn = bitcast <16 x i1> %i.akm to i16
  %.not = icmp eq i16 %i.akn, 0
  br i1 %.not, label %bb.gl, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.thread.i.i.i"

._crit_edge:                                      ; preds = %bb.gl, %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i
  %i.ako = shl i64 %i.akc, 2
  %.idx = and i64 %i.ako, 60                      ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akg, i64 %.idx
  %.not.not.not.i.not.not.i.i.i.i1869 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i1869, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i", label %.lr.ph1871

bb.gm:                                            ; preds = %.lr.ph1871
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akr, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i = icmp eq ptr %i.akq, %i.akp
  br i1 %.not.not.not.i.not.not.i.i.i.i, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i", label %.lr.ph1871

.lr.ph1871:                                       ; preds = %._crit_edge, %bb.gm
  %i.akr = phi ptr [ %i.akq, %bb.gm ], [ %i.akg, %._crit_edge ] ; 2 uses
  %.val4.i.i.i.i.i = load i32, ptr %i.akr, align 4, !alias.scope !6265, !noalias !6267, !noundef !8
  %i.aks = icmp eq i32 %.val4.i.i.i.i.i, 0
  br i1 %i.aks, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.thread.i.i.i", label %bb.gm

bb.gn:                                            ; preds = %.body.i.i.i, %bb.gp
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body9.i.i.i, %.body.i.i.i ], [ %i.akv, %bb.gp ] ; 2 uses
  %.val6.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !6262, !noalias !6242 ; 2 uses
  %i.akt = icmp eq i64 %.val6.i.i.i, 0
  br i1 %i.akt, label %.body.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.val7.i.i.i = load ptr, ptr %i.ake, align 8, !alias.scope !6262, !noalias !6242, !nonnull !8, !noundef !8
  %i.aku = shl nuw i64 %.val6.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i, i64 noundef %i.aku, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6266
  br label %.body.i

bb.gp:                                            ; preds = %bb.gs, %bb.gq
  %i.akv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i": ; preds = %bb.gm, %._crit_edge
end_hunk_1
begin_hunk_2_@_ZN4core4iter6traits8iterator8Iterator3nth17h162c338b0ae2ad79E:bb.a
  %i.v = load i64, ptr %i.u, align 8, !noalias !9085, !noundef !8 ; 2 uses
  %i.w = icmp ult i64 %i.s, %i.g
  %.not5.i.i.i.i.i = icmp ugt i64 %i.s, %i.v
  %or.cond.i.i.i.i.i = or i1 %i.w, %.not5.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.h, label %bb.i, !prof !11

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.h, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46, !noalias !9085
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.g, i64 noundef %i.s, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #46, !noalias !9085
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.x = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit.thread, label %bb.b

_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit: ; preds = %bb.b
  %i.z = sub i64 0, %.promoted.i.i.i
  %.not = icmp eq i64 %i.f, %i.z
  br i1 %.not, label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit", label %bb.q

_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit.thread: ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9090)
  %i.aa = icmp eq i64 %i.t, %i.c
  br i1 %i.aa, label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit", label %bb.j

bb.j:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit.thread
  %i.ab = load ptr, ptr %i.e, align 8, !noalias !9091, !nonnull !8, !align !10, !noundef !8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !9091, !noundef !8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !9091, !nonnull !8, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !9091, !noundef !8 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ad, %i.ah
  br i1 %.not.i.i, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46, !noalias !9091
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp ult i64 %i.t, %i.ad
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.t
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !9091, !noundef !8 ; 5 uses
  %i.al = add nuw i64 %i.h, 2
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !9091
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !9091
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.an = load i64, ptr %i.am, align 8, !noalias !9091, !noundef !8 ; 2 uses
  %i.ao = icmp ult i64 %i.ak, %i.s
  %.not5.i.i = icmp ugt i64 %i.ak, %i.an
  %or.cond.i.i = or i1 %i.ao, %.not5.i.i
  br i1 %or.cond.i.i, label %bb.o, label %bb.p, !prof !11

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46, !noalias !9091
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.s, i64 noundef %i.ak, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #46, !noalias !9091
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !9091, !nonnull !8, !noundef !8
  %i.ar = sub nuw i64 %i.ak, %i.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.s
  br label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit"

"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit, %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit.thread, %bb.p
  %.sroa.3.0.i.i = phi i64 [ %i.ar, %bb.p ], [ undef, %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit.thread ], [ undef, %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit ]
  %.sroa.0.0.i.i = phi ptr [ %i.as, %bb.p ], [ null, %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit.thread ], [ null, %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  %.sroa.3.0.i = select i1 %.not.i, i64 undef, i64 %.sroa.3.0.i.i
  br label %bb.q

bb.q:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit, %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit"
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.i, %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit" ], [ undef, %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i.i, %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit" ], [ null, %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha396631a74e90061E.exit ]
  %i.at = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.au
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h043e906ace416aecE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9130 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !9133, !noalias !9131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9139)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9140, !noalias !9132, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.j, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9142)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !9143, !noalias !9132, !noundef !8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !9143, !noalias !9132, !noundef !8
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !9143, !noalias !9132, !noundef !8 ; 4 uses
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !9143, !noalias !9132, !nonnull !8, !align !10, !noundef !8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !9144, !nonnull !8, !align !10, !noundef !8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load i64, ptr %i.o, align 8, !noalias !9144, !noundef !8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !noalias !9144, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.t = load i64, ptr %i.s, align 8, !noalias !9144, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.p, %i.t
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.p, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46, !noalias !9144
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = icmp ult i64 %i.g, %i.p
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.g
  %i.w = load i64, ptr %i.v, align 8, !noalias !9144, !noundef !8 ; 5 uses
  %i.x = add nuw i64 %i.g, 1
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !9143, !noalias !9132
  store i64 %i.w, ptr %i.k, align 8, !alias.scope !9143, !noalias !9132
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.z = load i64, ptr %i.y, align 8, !noalias !9144, !noundef !8 ; 2 uses
  %i.aa = icmp ult i64 %i.w, %i.l
  %.not5.i.i.i.i.i.i = icmp ugt i64 %i.w, %i.z
  %or.cond.i.i.i.i.i.i = or i1 %i.aa, %.not5.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !11

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.g, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46, !noalias !9144
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.l, i64 noundef %i.w, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #46, !noalias !9144
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !9144, !nonnull !8, !noundef !8
  %i.ad = sub nuw i64 %i.w, %i.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.l
  br label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i"

"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i": ; preds = %bb.i, %bb.b
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.i ], [ undef, %bb.b ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ null, %bb.b ] ; 2 uses
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i.i.i, 0
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  %.sroa.3.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 undef, i64 %.sroa.3.0.i.i.i.i.i.i
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.3.0.i.i.i.i.i, 1
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i"

bb.j:                                             ; preds = %bb.a
  store i64 0, ptr %i.d, align 8, !alias.scope !9140, !noalias !9132
  %i.ah = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator3nth17h162c338b0ae2ad79E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef %i.e), !noalias !9145
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i"

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i": ; preds = %bb.j, %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i"
  %.pn.i.i.i.i = phi { ptr, i64 } [ %i.ah, %bb.j ], [ %i.ag, %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i" ] ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %.pn.i.i.i.i, 0 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %.pn.i.i.i.i, 1
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.k

bb.k:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i"
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !9146, !noalias !9132, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val5.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !9146, !noalias !9132, !noundef !8
  %i.am = sub i64 %.val5.i.i.i.i, %.val.i.i.i.i
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !9146, !noalias !9132, !noundef !8
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 %i.an) ; 2 uses
  %i.ap = tail call i64 @llvm.uadd.sat.i64(i64 %i.ao, i64 1)
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 4) ; 3 uses
  %i.aq = shl i64 %.sroa.0.0.i.i.i.i, 4           ; 4 uses
  %i.ar = icmp ugt i64 %i.ao, 1152921504606846974
  %i.as = icmp ugt i64 %i.aq, 9223372036854775800
  %or.cond.i.i.i10.i.i.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i.i10.i.i.i, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !12

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.k
  %2 = icmp eq i64 %i.aq, 0
  br i1 %2, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9147
  %i.at = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aq, i64 noundef range(i64 1, 9) 8) #47, !noalias !9147 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.l, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i"

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, %bb.k
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ], [ 0, %bb.k ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46, !noalias !9138
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.at, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ] ; 4 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ] ; 2 uses
  %3 = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %3)
  store ptr %i.ai, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !9138
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store i64 %i.aj, ptr %i.av, align 8, !noalias !9138
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.b, align 8, !noalias !9138
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !9138
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !9138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !9145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9151)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.noexc16.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i"
  %i.ba = phi ptr [ %i.cq, %.noexc16.i.i.i ], [ %.sroa.10.0.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i" ]
  %i.bb = phi i64 [ %i.ct, %.noexc16.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i" ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9152)
  %i.bc = load i64, ptr %i.aw, align 8, !alias.scope !9153, !noalias !9138, !noundef !8 ; 2 uses
  %.not.i.i.i11.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i11.i.i.i, label %bb.n, label %bb.t, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9155)
  %i.bd = load i64, ptr %i.ax, align 8, !alias.scope !9156, !noalias !9138, !noundef !8 ; 5 uses
  %i.be = load i64, ptr %i.ay, align 8, !alias.scope !9156, !noalias !9138, !noundef !8
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i64, ptr %i.az, align 8, !alias.scope !9156, !noalias !9138, !noundef !8 ; 4 uses
  %i.bh = load ptr, ptr %i.a, align 8, !alias.scope !9156, !noalias !9138, !nonnull !8, !align !10, !noundef !8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !9157, !nonnull !8, !align !10, !noundef !8 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !9157, !noundef !8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !9157, !nonnull !8, !noundef !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !9157, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i.i.i.i.i.i.i, label %.invoke.i.i.i, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp ult i64 %i.bd, %i.bk
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bd
  %i.br = load i64, ptr %i.bq, align 8, !noalias !9157, !noundef !8 ; 5 uses
  %i.bs = add nuw i64 %i.bd, 1
  store i64 %i.bs, ptr %i.ax, align 8, !alias.scope !9156, !noalias !9138
  store i64 %i.br, ptr %i.az, align 8, !alias.scope !9156, !noalias !9138
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !9157, !noundef !8 ; 2 uses
  %i.bv = icmp ult i64 %i.br, %i.bg
  %.not5.i.i.i.i.i.i.i.i = icmp ugt i64 %i.br, %i.bu
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.bv, %.not5.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.invoke.i.i.i, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bd, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9157

.noexc13.i.i.i:                                   ; preds = %bb.r
  unreachable

.invoke.i.i.i:                                    ; preds = %bb.q, %bb.o
  %i.bw = phi i64 [ 0, %bb.o ], [ %i.bg, %bb.q ]
  %i.bx = phi i64 [ %i.bk, %bb.o ], [ %i.br, %bb.q ]
  %i.by = phi i64 [ %i.bo, %bb.o ], [ %i.bu, %bb.q ]
  %i.bz = phi ptr [ @278, %bb.o ], [ @666, %bb.q ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bw, i64 noundef %i.bx, i64 noundef %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz) #46
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9157

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !9157, !nonnull !8, !noundef !8
  %i.cc = sub nuw i64 %i.br, %i.bg
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bg
  br label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i.i.i"

"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i.i.i": ; preds = %bb.s, %bb.n
  %.sroa.3.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.s ], [ undef, %bb.n ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.s ], [ null, %bb.n ] ; 2 uses
  %i.ce = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, 0
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i, null
  %.sroa.3.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 undef, i64 %.sroa.3.0.i.i.i.i.i.i.i.i
  %i.cf = insertvalue { ptr, i64 } %i.ce, i64 %.sroa.3.0.i.i.i.i.i.i.i, 1
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i.i.i"

bb.t:                                             ; preds = %bb.m
  store i64 0, ptr %i.aw, align 8, !alias.scope !9153, !noalias !9138
  %i.cg = invoke fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator3nth17h162c338b0ae2ad79E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.bc)
          to label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9158

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i.i.i": ; preds = %bb.t, %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i.i.i"
  %.pn.i.i.i.i.i.i = phi { ptr, i64 } [ %i.cf, %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i.i.i.i.i.i" ], [ %i.cg, %bb.t ] ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i, 1
  %.not.i.i12.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i12.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc35b31ae420177a7E.exit.i.i.i", label %bb.u

bb.u:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i.i.i"
  %i.cj = icmp samesign ult i64 %i.bb, 576460752303423488
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = load i64, ptr %i.b, align 8, !range !16, !alias.scope !9159, !noalias !9138, !noundef !8
  %i.cl = icmp eq i64 %i.bb, %i.ck
  br i1 %i.cl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i", label %.noexc16.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i": ; preds = %bb.u
  %.val.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !9160, !noalias !9138, !noundef !8
  %.val5.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !9160, !noalias !9138, !noundef !8
  %i.cm = sub i64 %.val5.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.cn = load i64, ptr %i.aw, align 8, !alias.scope !9160, !noalias !9138, !noundef !8
  %i.co = tail call i64 @llvm.usub.sat.i64(i64 %i.cm, i64 %i.cn)
  %i.cp = tail call i64 @llvm.uadd.sat.i64(i64 %i.co, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bb, i64 noundef range(i64 1, 0) %i.cp, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc16_crit_edge.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9161

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc16_crit_edge.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i"
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !9159, !noalias !9138
  br label %.noexc16.i.i.i

.noexc16.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc16_crit_edge.i.i.i", %bb.u
  %i.cq = phi ptr [ %.pre.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc16_crit_edge.i.i.i" ], [ %i.ba, %bb.u ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.bb ; 2 uses
  store ptr %i.ch, ptr %i.cr, align 8, !noalias !9162
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.ci, ptr %i.cs, align 8, !noalias !9162
  %i.ct = add nuw nsw i64 %i.bb, 1                ; 2 uses
  store i64 %i.ct, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !9159, !noalias !9138
  br label %bb.m

bb.v:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i"
  store i64 0, ptr %0, align 8, !alias.scope !9163
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cu, align 8, !alias.scope !9163
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cv, align 8, !alias.scope !9163
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h0f23c6a347a39fd4E.exit"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i", %bb.t, %.invoke.i.i.i, %bb.r
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load i64, ptr %i.b, align 8, !noalias !9138 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cw, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val9.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !9138, !nonnull !8, !noundef !8
  %i.cx = shl nuw i64 %.val.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9138
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc35b31ae420177a7E.exit.i.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !9164
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h0f23c6a347a39fd4E.exit"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit.i.i.i": ; preds = %bb.w, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp31

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h0f23c6a347a39fd4E.exit": ; preds = %bb.v, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc35b31ae420177a7E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9132
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h946800fb2149df5bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9199 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !9202, !noalias !9200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9207
  call fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3e5866cbd5c792bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e), !noalias !9208
  %i.f = load i64, ptr %i.c, align 8, !range !17, !noalias !9207, !noundef !8 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !9209
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !9209
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !9209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9207
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17heb266c3d4d74a49dE.exit"

bb.c:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9210
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i"

bb.e:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !9207 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !9207
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !9211, !noalias !9201, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val5.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !9211, !noalias !9201, !noundef !8
  %i.m = sub i64 %.val5.i.i.i.i.i, %.val.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !9211, !noalias !9201, !noundef !8
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = tail call i64 @llvm.uadd.sat.i64(i64 %i.p, i64 1)
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.q, i64 4) ; 3 uses
  %i.r = mul i64 %.sroa.0.0.i.i.i.i, 24           ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.p, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !12

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9212
  %i.t = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 8) #47, !noalias !9212 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !9207

.noexc.i.i.i:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.t, %bb.f ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.f ] ; 2 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.v)
  store i64 %i.f, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !9207
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !9207
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !9207
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.d, align 8, !noalias !9207
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !9207
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !9207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !9208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9217
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3e5866cbd5c792bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9218

.noexc5.i.i.i:                                    ; preds = %bb.h
  %i.w = load i64, ptr %i.a, align 8, !range !17, !noalias !9217, !noundef !8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i64 %i.w, -9223372036854775808
  br i1 %.not12.i.i.i.i.i, label %.loopexit12.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc5.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.i

bb.i:                                             ; preds = %.noexc6.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aa = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc6.i.i.i ]
  %i.ab = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ %i.ai, %.noexc6.i.i.i ] ; 5 uses
  %i.ac = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.aj, %.noexc6.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9217 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9217
  %i.ad = icmp samesign ult i64 %i.ab, 384307168202282326
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = load i64, ptr %i.d, align 8, !range !16, !alias.scope !9219, !noalias !9207, !noundef !8
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i", %bb.i
  %i.ag = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i" ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ab ; 3 uses
  store i64 %i.ac, ptr %i.ah, align 8, !noalias !9217
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9217
  %.sroa.510.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9217
  %i.ai = add nuw nsw i64 %i.ab, 1                ; 2 uses
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !9219, !noalias !9207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9217
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3e5866cbd5c792bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9218

.noexc6.i.i.i:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i"
  %i.aj = load i64, ptr %i.a, align 8, !range !17, !noalias !9217, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %.loopexit12.i.i.i, label %bb.i

bb.j:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = icmp eq i64 %i.ac, 0
  br i1 %i.al, label %.body.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9220
  br label %.body.i.i.i

bb.l:                                             ; preds = %bb.i
  %.val5.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !9221, !noalias !9207, !noundef !8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !9221, !noalias !9207, !noundef !8
  %i.am = sub i64 %.val5.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %i.an = load i64, ptr %i.z, align 8, !alias.scope !9221, !noalias !9207, !noundef !8
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 %i.an)
  %i.ap = tail call i64 @llvm.uadd.sat.i64(i64 %i.ao, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ab, i64 noundef %i.ap, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i" unwind label %bb.j, !noalias !9222

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i": ; preds = %bb.l
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !9219, !noalias !9207
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i", %bb.h
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %lpad.loopexit.split-lp24, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #48, !noalias !9207
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i"

.loopexit12.i.i.i:                                ; preds = %.noexc6.i.i.i, %.noexc5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !9223
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17heb266c3d4d74a49dE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i": ; preds = %.body.i.i.i, %bb.d, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %.pn.i.i.i

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17heb266c3d4d74a49dE.exit": ; preds = %bb.b, %.loopexit12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9201
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_ZN4core4iter6traits8iterator8Iterator8try_fold17h5192b4e5534a99c4E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9228 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !9229, !noundef !8 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !alias.scope !9229 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !8, !align !10
  %.promoted31 = load i64, ptr %i.d, align 8
  %i.f = add i64 %.promoted, %1
  %i.g = sub i64 %i.f, %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.h = phi i64 [ %.promoted31, %bb.a ], [ %i.t, %bb.i ] ; 2 uses
  %i.i = phi i64 [ %.promoted, %bb.a ], [ %i.u, %bb.i ] ; 5 uses
  %.sroa.01.0 = phi i64 [ %1, %bb.a ], [ %i.y, %bb.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9231)
  %i.j = icmp eq i64 %i.i, %i.c
  br i1 %i.j, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !noalias !9229, !nonnull !8, !align !10, !noundef !8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load i64, ptr %i.l, align 8, !noalias !9229, !noundef !8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !noalias !9229, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.q = load i64, ptr %i.p, align 8, !noalias !9229, !noundef !8 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.m, %i.q
  br i1 %.not.i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46, !noalias !9229
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = icmp ult i64 %i.i, %i.m
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !9229, !noundef !8 ; 5 uses
  %i.u = add nuw i64 %i.i, 1                      ; 2 uses
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !9229
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !9229
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noalias !9229, !noundef !8 ; 2 uses
  %i.x = icmp ult i64 %i.t, %i.h
  %.not5.i.i = icmp ugt i64 %i.t, %i.w
  %or.cond.i.i = or i1 %i.x, %.not5.i.i
  br i1 %or.cond.i.i, label %bb.h, label %bb.i, !prof !11

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.i, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46, !noalias !9229
  unreachable
end_hunk_2
